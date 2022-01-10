
import torch
import functools
from scipy import stats
from torch.autograd import Variable
from torch.distributions import Dirichlet

from problog.engine import DefaultEngine
from problog.program import PrologString
from problog.logic import Term, Clause, Not, And
from problog import get_evaluatable
from ExampleModule import SemiringTorch, ExampleModule
from LFITransformer import TransformedLearningProgram

from problog.program import PrologFile
from problog.formula import LogicFormula
from problog.ddnnf_formula import DDNNF

log_loss = list()
log_parameters = list()
log_samples_mean = list()
log_samples_variance = list()


class GradLFILearner:

    def __init__(self, modelfile, examples, target_path=None, engine=None, max_epoch=200, sample_count=100, lr=0.1, batch_size=50, device="cuda"):
        """
        Initialise the gradient probability learner.

        :param modelfile: The file containing a ProbLog model with unknown probabilities annotated as e.g. t(_)::a.
        :type modelfile: PrologFile
        :param examples: The list of examples to learn from. Each example is an element of this list and is itself a
        list of positive and/or negative Terms. When a string is given, it is treated as a path to the file containing
        the examples.
        :type examples: (list[list[Term]] | str)
        :param engine: The engine used to ground out the model for each example.
        :param max_epoch: The maximum amount of iterations the learning process can perform.
        :param sample_count: The number of samples that are used for every distribution in one iteration.
        :param lr: The initial learning rate to use in gradient descent.
        :param batch_size: The number of examples to use for gradient calculations in one iteration.
        """
        assert modelfile is not None
        assert examples is not None
        self.examples = examples if not isinstance(examples, str) else list(read_examples(examples))
        self.example_count = len(self.examples)
        
        self.modelfile = modelfile
        self.engine = engine if engine is not None else DefaultEngine(label_all=True, keep_order=True)
        self.query, self.target = read_target(target_path, self.example_count, sample_count, device)

        self.max_epoch = max_epoch
        self.sample_count = sample_count
        self.lr = lr
        self.batch_size = batch_size if 0 < batch_size < self.example_count else self.example_count
        self.batch_index = 0
        self.device = device

        self.transformed_program = None  # type: (TransformedLearningProgram | None)
        self._kc_class = get_evaluatable(name="ddnnf")  # TODO change to user choice
        self._example_functions = None  # type: (list[ExampleModule] | None)
        self.samples = list()  # type: (list[Tensor[float]])
        self.ads = None

        self.distributions = None
        self._concentrations = []
        self._lower_bounds = []

    def prepare(self):
        """
        Prepare the data structures required for the learning process. All examples will be transformed into a circuit.
        """
        # Transform program
        self.transformed_program = TransformedLearningProgram.create_from(self.modelfile, builtins=self.engine.get_builtins())
        
        # Extract weights (list of Variables with start values and ADs summed up to one)
        self.distributions = self._extract_distributions(self.transformed_program)
        self.samples = [None] * len(self.distributions)
        
        # Create AD information structure
        self.ads = self.transformed_program.get_ad_information()
        ad_info = dict()  # type: dict[int, tuple[float, list[int]]]
        for total_prob, ad_group in self.ads:
            ad_info[ad_group] = total_prob
        # Create pytorch semiring
        semiring = SemiringTorch(self.sample_count, self.samples, ad_info)
        
        # For each example, prepare pytorch function (circuit)
        self._example_functions = [
            self._process_example(example, semiring, index, query=query, target=target)
            for index, (example, query, target) in enumerate(zip(self.examples, self.query, self.target))
        ]

    def _extract_distributions(self, transformed_program):
        """
        Extract the weights of the transformed program, and use them as values of torch autograd Variables.
        All AD parameters sum up to the correct value.
        :param transformed_program: The program to extract the weights of.
        :type transformed_program: TransformedLearningProgram
        :return: A list of the weights, each of type variable with a tensor containing converted (conversion_f) values.
        :rtype: list[Variable]
        """
        weights = transformed_program.get_weights().copy()
        distributions = list()
        
        # Set start weights for each AD
        # for total_prob, ad_group in transformed_program.get_ad_information():
        #     ad_weights = [weights[index] for index in ad_group]
        #     none_count = ad_weights.count(None)
        #     none_to_zero = lambda x: x if x is not None else 0
        #     current_sum = sum(map(none_to_zero, ad_weights))
        #
        #     # Calculate start weights
        #     random_weights = [random.random() for _ in range(0, none_count + 1)]
        #     norm_factor = (total_prob - current_sum) / sum(random_weights)
        #     start_weights = (r * norm_factor for r in random_weights)
        #
        #     # set None weights
        #     for index in ad_group:
        #         if weights[index] is None:
        #             weights[index] = next(start_weights)

        # Set all remaining None weights
        for weight in weights:
            # if not isinstance(weight, tuple) # TODO for point estimate support
            weight_values = [w if w is not None else 1.0 for w in weight]
            concentration = Variable(torch.tensor(weight_values, device=torch.device(self.device)), requires_grad=True)

            self._concentrations.append(concentration)
            self._lower_bounds.append(torch.tensor(weight_values, device=torch.device(self.device)))

            distributions.append(Dirichlet(concentration))

        return distributions

    def _resample(self):
        for index, distribution in enumerate(self.distributions):
            self.samples[index] = distribution.rsample([self.sample_count])

        # TODO: rescale samples if ad should sum up to, for example, 0.7 (e.g. 0.3::a ; ?::b ; ?::c).

    def _compute_gradients(self):
        """
        Reset and compute the gradients. After this call, all parameters in self.parameter_list have their gradient
        in parameter.grad.
        """
        # Set gradients to zero
        for distribution in self.distributions:
            if distribution.concentration.grad is not None:
                distribution.concentration.grad.data.zero_()

        # Accumulate gradients
        total_loss = 0
        for _ in range(self.batch_size):
            loss = self._example_functions[self.batch_index].forward(self.samples)
            total_loss += loss
            loss.backward(retain_graph=True)

            # Cycle through batch instances
            self.batch_index = self.batch_index + 1 if self.batch_index + 1 < len(self._example_functions) else 0

        #TODO: Divide gradients by 1/M?
        sample_stats = stats.describe(self.samples[0].cpu().detach().numpy())

        log_loss.append(total_loss)
        log_parameters.append([d.concentration.data.clone() for d in self.distributions])
        log_samples_mean.append(sample_stats.mean)
        log_samples_variance.append(sample_stats.variance)
        print("Total loss %s" % total_loss)
        print("Gradients %s" % [d.concentration.grad for d in self.distributions])
        print("Parameters %s" % [d.concentration for d in self.distributions])
        print("Samples mean %s and variance %s" % (sample_stats.mean, sample_stats.variance))
        print("")

    def learn(self):
        """
        # TODO
        :return:
        """
        if self._example_functions is None:
            self.prepare()

        epoch = 0
        optimizer = torch.optim.Adam(self._concentrations, lr=self.lr)

        while epoch < self.max_epoch:
            print("Starting epoch %s" % epoch)
            # resample
            self._resample()
            
            # Compute forward
            self._compute_gradients()
            optimizer.step()
            with torch.no_grad():
                for concentration, lower_bounds in zip(self._concentrations, self._lower_bounds):
                    upper_bound = sum(lower_bounds)
                    for parameter, lower_bound in zip(concentration, lower_bounds):
                        # parameter.clamp_(lower_bound, )
                        parameter.clamp_(0, self.example_count + upper_bound)
                    concentration.data *= (self.example_count + upper_bound) / torch.sum(concentration.data)

            epoch += 1

    def infer(self):
        """
        # TODO
        :return:
        """
        self._resample()
        for function in self._example_functions:
            yield function.evaluate()

    def _process_example(self, example, semiring, index, query=None, target=None):
        """
        Given an example,
        1) add the example as a rule to an extension of the db,
        2) create a KC for that example,
        3) Create a Module for that kc, querying the head of the added rule if query is None, else query.

        :param example: The example to process into a module representing the loss over the function..
        :type example: list[Term]
        :param semiring: The semiring to use to construct the module.
        :type semiring: SemiringTorch
        :param index: The LFI index such that a unique head can be added.
        :param query: The Term to be queried in the circuit
        :type query: Term
        :param target: The target in the loss function
        :return: The created module which represents the loss of the given example.
        :rtype: ExampleModule
        """
        # Add Example as rule
        example_db = self.transformed_program.extend()
        head = Term("lfi_example({})".format(index))
        body = self._example_to_body(example)
        example_db += Clause(head, body)
        # Create Algebraic Circuit (KC)
        if query is None:
            lf = self.engine.ground_all(example_db, queries={head})
        else:
            lf = self.engine.ground_all(example_db, queries={query}, evidence={head})
        kc = self._kc_class.create_from(lf)
        # Create a module for that kc, querying the head of the added rule
        query = kc.get_node_by_name(head)
        return ExampleModule(kc, query, semiring, target=target)

    @staticmethod
    def _example_to_body(example):
        """
        Convert an example into a single (And) Term.
        :param example:  All observations of the example, represented as a list of (positive/negative) terms.
        :type example: list[Term]
        :return: An And term of all terms in example. When example is only 1 element, that element is returned. When
        example is empty, the True Term is returned.
        :rtype (And | Term)
        """
        example_l = list(example)
        if len(example) == 0:
            return Term("true")
        elif len(example) == 1:
            return example_l[0]
        elif len(example) == 2:
            return And(example_l[1], example_l[0])
        else:
            start = And(example_l[0], example_l[1])
            return functools.reduce(lambda a, b: And(a, b), example_l[2:], start)


def read_examples(*filenames):
    """
    Read in the examples and return a processed list of examples.
    :param filenames: Filenames containing examples
    :type filenames: str
    :return: A list of the processed examples. Each example is an element of this list and will itself be a list
    containing positive and negative Terms.
    :rtype: list[list[Term]]
    """
    for filename in filenames:
        with open(filename) as f:
            example = ""
            for line in f:
                if line.strip().startswith("---"):
                    pl = PrologString(example)
                    atoms = extract_evidence(pl)
                    if len(atoms) > 0:
                        yield atoms
                    example = ""
                else:
                    example += line
            if example != "":
                pl = PrologString(example)
                atoms = extract_evidence(pl)
                if len(atoms) > 0:
                    yield atoms


def extract_evidence(pl):
    """
    Extract all evidence from pl as a list of positive and negative Terms.
    :param pl: The ProbLog String/Program/DB to extract the evidence from.
    :return: A list of all the evidence as positive or negative Terms.
    :rtype list[Term]
    """
    engine = DefaultEngine()
    result = {t[0] for t in (engine.query(pl, Term("evidence", None)))}
    result |= {t[0] for t in (engine.query(pl, Term("observe", None)))}
    result |= {
        term for term, _ in engine.query(pl, Term("evidence", None, Term("true")))
    }
    result |= {
        Not("\\+", term)
        for term, _ in engine.query(pl, Term("evidence", None, Term("false")))
    }
    return result


def read_target(target_path, example_count, sample_count, device):
    if target_path is None:
        return [None] * example_count, [None] * example_count

    import re
    queries = []
    targets = []

    with open(target_path, "r") as file:
        for line in file:
            line = line.strip()
            if re.match(r"\d+(\.\d+)?(\s*::\s*.+)?", line):
                split = re.split(r"\s*::\s*", line)
                targets.append(torch.tensor(float(split[0]), dtype=torch.float, device=torch.device(device)))
                queries.append(Term(split[1]) if 1 < len(split) else None)
    return queries, targets


def beta_inference():
    result_file = open("./networks/results.txt", "w")

    models = ["./networks/alarm_b.pl"]
    evidences = ["./networks/alarm_b.ev"]

    for model, evidence in zip(models, evidences):

        result_file.write("\n--- NETWORK: " + model + " ---\n")

        for prepare_sample_count in [100, 500, 1000, 5000]:
            for perform_sample_count in [10000]:

                result_file.write("- Nins: " + str(prepare_sample_count) + " -\n")

                actual = 0
                predicted = 0
                iterations = 100
                for _ in range(iterations):
                    results = beta_inference_perform(evidence, perform_sample_count)
                    actual += results[0]
                    predicted += results[1]

                actual /= iterations
                predicted /= iterations
                result_file.write("a / p error: " + str(actual) + " / " + str(predicted) + "\n")

    result_file.close()


def beta_inference_perform(query_name, sample_count):
    program = PrologFile("./networks/_prob.pl")
    formula = LogicFormula.create_from(program)
    circuit = DDNNF.create_from(formula)
    probability = list(circuit.evaluate().values())[0]

    program = PrologFile("./networks/_beta.pl")
    examples = list(read_examples(query_name))
    plearner = GradLFILearner(program, examples, max_epoch=1, sample_count=sample_count, lr=1, batch_size=0)
    plearner.prepare()
    samples = next(plearner.infer())

    mse = 0
    for sample in samples:
        mse += (sample - probability) ** 2
    mse /= len(samples) - 1
    mse = torch.sqrt(mse)
    metrics = torch.std_mean(samples)

    return mse.item(), metrics[0].item(), probability, metrics[1].item()

def beta_learning():

    modelfilename = "./networks/net1beta.pl"
    examples_filename = "./networks/net1query.ev"

    program = PrologFile(modelfilename)
    examples = list(read_examples(examples_filename))
    plearner = GradLFILearner(program, examples, max_epoch=5000, sample_count=1000, lr=0.1, batch_size=50)
    plearner.prepare()
    plearner.learn()

    print("Parameter list: %s" % [str(d.concentration) for d in plearner.distributions])
    print("Nb of distributions: %s" % len(plearner.distributions))
    print("ads: %s" % plearner.ads)

    import matplotlib.pyplot as plt
    from scipy.stats import beta
    import numpy as np

    plot_var_index = 0  # TODO: Change to the variable you want to plot (see printed rules and lfi_indices)
    prob_desired = (5 + 1) / (8 + 2)  # TODO: Change to what you need it to be

    # print(plt.rcParams["figure.figsize"])
    plt.rcParams["figure.figsize"] = [6.4, 7]

    fig, ax = plt.subplots(2, 1)
    a = log_parameters[-1][plot_var_index][0]
    b = log_parameters[-1][plot_var_index][1]
    x = np.linspace(beta.ppf(0, a, b), beta.ppf(1, a, b), 100)
    ax[1].plot(x, beta.pdf(x, a, b), label='beta({:.3f},{:.3f})'.format(a, b), color="tab:red")
    ax[1].axvline(x=a / (a + b), color="tab:orange", label="a / (a+b)")  # Plot vertical line
    ax[1].legend(loc='upper center', bbox_to_anchor=(0.5, -0.12))

    # # Probability
    ax1 = ax[0]
    # ax1.plot(range(max_epoch), [prob_desired] * max_epoch, label="expected {:.3f}".format(prob_desired),
    #        color="tab:green")

    probabities = [(x[plot_var_index][0]) / (x[plot_var_index][0] + x[plot_var_index][1]) for x in log_parameters]
    ax1.plot(range(plearner.max_epoch), probabities, label='a / (a+b)', color="tab:orange")
    # Loss
    ax2 = ax1.twinx()
    ax2.plot(range(plearner.max_epoch), log_loss, label='loss', color="tab:blue")
    ax2.tick_params(axis='y', labelcolor="tab:blue")

    ax1.legend(loc='upper center', bbox_to_anchor=(0.3, 1.25))
    ax2.legend(loc='upper center', bbox_to_anchor=(0.7, 1.25))
    fig.tight_layout()
    plt.show()

if __name__ == "__main__":

    modelfilename = "./tests/simple_learning.pl"
    examples_filename = "./tests/simple_learning.ev"
    target_filename = None

    program = PrologFile(modelfilename)
    examples = list(read_examples(examples_filename))

    plearner = GradLFILearner(program, examples, target_path=target_filename, max_epoch=1000, sample_count=100, lr=0.1)
    plearner.prepare()
    plearner.learn()
