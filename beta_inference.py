import torch
import time
import random

from problog import get_evaluatable
from problog.engine import DefaultEngine
from problog.logic import Term
from problog.program import PrologFile, PrologString
from problog.evaluator import Semiring

from BetaInferenceTransformer import TransformedInferenceProgram


def perform_inference(
    model,
    evaluatable_name="ddnnf",
    sample_count=100,
    seed=None,
    is_file=True,
    device="cuda",
    requires_grad=True,
):
    if seed is not None:
        random.seed(a=seed)
    # Read in model
    if is_file:
        pl = PrologFile(model)
    else:
        pl = PrologString(model)

    # Grounding
    start = time.time()
    engine = DefaultEngine(label_all=True)
    db = prepare_engine(engine, pl, device)
    lf = engine.ground_all(db)
    end = time.time()
    ground_time = end - start

    # Sampling
    start = time.time()
    distributions = db.get_distributions()
    samples = [None] * len(distributions)
    for index, distribution in enumerate(distributions):
        if requires_grad:
            samples[index] = distribution.rsample([sample_count])
        else:
            samples[index] = distribution.sample([sample_count])

    end = time.time()
    sampling_time = end - start

    # Create AD information structure
    ad_info = {
        ad_group: total_prob for (total_prob, ad_group) in db.get_ad_information()
    }

    # KC
    semiring = SemiringBetaDistr(
        sample_count=sample_count, samples=samples, ad_info=ad_info, device=device
    )  # TODO: re-use other implementation semiring
    kc_class = get_evaluatable(name=evaluatable_name, semiring=semiring)
    start = time.time()
    kc = kc_class.create_from(lf)
    end = time.time()
    compilation_time = end - start

    # Evaluate
    start = time.time()
    results = kc.evaluate(semiring=semiring)
    end = time.time()
    evaluation_time = end - start

    # Return results
    timings = {
        "grounding": ground_time,
        "compilation": compilation_time,
        "sampling": sampling_time,
        "evaluation": evaluation_time,
    }
    return results, timings


def perform_point_estimate_inference(model_filename, evaluatable_name):
    # Read in model
    pl = PrologFile(model_filename)

    # Grounding
    start = time.time()
    engine = DefaultEngine(label_all=True)
    db = engine.prepare(pl)
    lf = engine.ground_all(db)
    end = time.time()
    ground_time = end - start

    # KC
    kc_class = get_evaluatable(name=evaluatable_name)
    start = time.time()
    kc = kc_class.create_from(lf)
    end = time.time()
    compilation_time = end - start

    # Evaluate
    start = time.time()
    results = kc.evaluate()
    end = time.time()
    evaluation_time = end - start

    # Return results
    timings = {
        "grounding": ground_time,
        "compilation": compilation_time,
        "evaluation": evaluation_time,
    }
    return results, timings


def prepare_engine(engine, db, device):
    """Convert given logic program to suitable format for the engine.
    Calling this method is optional, but it allows to perform multiple operations on the same \
    database.
    This also executes any directives in the input model.
    :param engine: The engine to prepare
    :param db: logic program to prepare for evaluation
    :return: logic program in a suitable format for this engine
    :rtype: ClauseDB
    """
    result = TransformedInferenceProgram.createFrom(
        db, engine=engine, device=device, builtins=engine.get_builtins()
    )
    # result.device = device
    # result.engine = engine
    engine._process_directives(result)
    return result


class SemiringBetaDistr(Semiring):
    def __init__(self, sample_count, samples, ad_info, device="cuda"):
        """
        Create a semiring which can be used to construct a torch function.
        :param samples: The list to retrieve parameter samples from. First index runs over parameters, second index runs over samples of that parameter.
        :type samples: list[Tensor[Variable]]
        :param ad_info: Annotated disjunction information, mapping each index to the total probability that the AD should sum up to.
        :type ad_info: dict[int, float]
        """
        self.samples = samples
        self.ad_info = ad_info
        self.device = device
        self.one_tensor = torch.ones(
            [sample_count], dtype=torch.float, device=torch.device(self.device)
        )
        self.zero_tensor = torch.zeros(
            [sample_count], dtype=torch.float, device=torch.device(self.device)
        )

    def one(self):
        return self.one_tensor

    def zero(self):
        return self.zero_tensor

    def is_one(self, value):
        """Tests whether the given value is the identity element of the multiplication."""
        return torch.equal(value, self.one())

    def is_zero(self, value):
        """Tests whether the given value is the identity element of the addition."""
        return torch.equal(value, self.zero())

    def plus(self, a, b):
        return a + b

    def times(self, a, b):
        return a * b

    def negate(self, a):
        return self.one_tensor - a

    def value(self, a):
        return torch.tensor([float(a)], device=torch.device(self.device))

    def result(self, a, formula=None):
        return a

    def normalize(self, a, z):
        return a / z

    def pos_value(self, a, key=None):
        if isinstance(a, Term) and a.functor == "samples":
            index = int(a.args[0])  # lfi(a, b, t) -> a
            ad_index = int(a.args[1])  # lfi(a, b, t) -> b
            return self.samples[index][:, ad_index]
        else:
            return self.value(a)

    def neg_value(self, a, key=None):
        if isinstance(a, Term) and a.functor == "samples":
            index = int(a.args[0])  # samples(a, b) -> a
            ad_index = int(a.args[1])  # samples(a, b) -> b
            sample = self.samples[index][:, ad_index]
            ad = self.ad_info.get(index)  # ad[0] = prob, ad[1] = AD indices (list[int])
            if ad is not None:
                # Note: If AD then negative value should be 1.
                return (
                    self.one_tensor
                )
            else:
                return self.one_tensor - sample
        else:
            return self.one_tensor - self.value(a)

    def is_dsp(self):
        return True

    def is_nsp(self):
        return True

    def in_domain(self, a):
        return True  # TODO: Can we do something better?

    def ad_complement(self, ws, key=None):
        s = self.zero()
        for w in ws:
            s = self.plus(s, w)
        return self.negate(s)


if __name__ == "__main__":
    import argparse

    argparser = argparse.ArgumentParser()
    argparser.add_argument("input_path", type=str, help="Path to the input file")
    argparser.add_argument("-s", "--seed", type=int, default=None)
    argparser.add_argument("-nb", "--sample_nb", type=int, default=100)
    args = argparser.parse_args()

    result, timings = perform_inference(
        args.input_path, sample_count=args.sample_nb, seed=args.seed
    )
    print(result)
    print(timings)
