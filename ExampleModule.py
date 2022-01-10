
import math
import torch

from torch.autograd import Variable
from problog.evaluator import Semiring
from problog.logic import Term, Not, Constant

LFI_TERM_NAME = "lfi"


class ExampleModule(torch.nn.Module):

    def __init__(self, formula, query_node, semiring, loss_func=torch.nn.MSELoss(), target=None, device="cuda"):
        """

        :param formula: The compiled LogicFormula where query_node is queryable.
        :param query_node:
        :param semiring: The semiring used to construct, combine and return torch tensors
        :type semiring: SemiringTorch
        :param loss_func: The loss function to use
        """
        super(ExampleModule, self).__init__()
        self.device = device
        self.to(torch.device(self.device))
        self.formula = formula
        self.query_node = query_node
        self.semiring = semiring
        self.loss_func = loss_func
        self.target = target

    def evaluate(self):
        return self.formula.evaluate(semiring=self.semiring, index=self.query_node)

    def forward(self, x):
        # for index, weight in enumerate(x):
        #    parameter = self.semiring.samples[index]
        #    parameter.data = weight
        
        input_val = self.formula.evaluate(semiring=self.semiring, index=self.query_node)
        input_val = torch.mean(input_val)
        # input_val = torch.log(input_val)
        if self.target is None:
            self.target = torch.ones(input_val.size(), dtype=torch.float, device=torch.device(self.device))
        return self.loss_func(input=input_val, target=self.target)

    # def backward(self):
    #    self.result.backward()

    # def get_gradients(self, x):
    #    self.forward(x)
    #    self.backward()
    #    return {key: p.grad for key, p in self.semiring.samples}


class SemiringTorch(Semiring):

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
        self.one_tensor = torch.ones([sample_count], dtype=torch.float, device=torch.device(self.device))
        self.zero_tensor = torch.zeros([sample_count], dtype=torch.float, device=torch.device(self.device))

    def one(self):
        return self.one_tensor

    def zero(self):
        return self.zero_tensor

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
        return a / z  # TODO Do we want to do this?

    def is_one(self, value):
        """Tests whether the given value is the identity element of the multiplication."""
        return torch.equal(value, self.one())

    def is_zero(self, value):
        """Tests whether the given value is the identity element of the addition."""
        return torch.equal(value, self.zero())

    def pos_value(self, a, key=None):
        if isinstance(a, Term) and a.functor == LFI_TERM_NAME:
            index = int(a.args[0])  # lfi(a, b, t) -> a
            ad_index = int(a.args[1])  # lfi(a, b, t) -> b
            return self.samples[index][:, ad_index]
        else:
            return self.value(a)

    def neg_value(self, a, key=None):
        if isinstance(a, Term) and a.functor == LFI_TERM_NAME:
            index = int(a.args[0])  # lfi(a, b, t) -> a
            ad_index = int(a.args[1])  # lfi(a, b, t) -> b
            sample = self.samples[index][:, ad_index]
            ad = self.ad_info.get(index)  # ad[0] = prob, ad[1] = AD indices (list[int])
            if ad is not None:
                # Note: If AD then negative value should be 1.
                #ad_prob, ad_group = ad
                #def to_sig(ad_index): return torch.sigmoid(self.samples[ad_index])
                return self.one_tensor #- torch.sigmoid(sample) * ad_prob / sum(map(to_sig, ad_group))
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
