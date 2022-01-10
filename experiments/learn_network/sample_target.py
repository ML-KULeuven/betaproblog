

import random
from torch.distributions import Dirichlet
from problog.program import PrologString
from problog.engine import DefaultEngine
from problog.ddnnf_formula import DDNNF
from problog.logic import Term


def read_file(file, uncertainty=1):
    probability_string = ""
    beta_string = ""

    with open(file + ".pl", "r") as input_file:
        for line in input_file.readlines():
            count = line.count("?::")
            probability_line = line
            beta_line = line

            if count <= 1:
                probability_line = probability_line.replace("?::", f"{random.random()}::")
                beta_line = beta_line.replace("?::", "beta_t(_,_)::")
            else:
                for probability in Dirichlet([1] * count).sample():
                    probability_line = probability_line.replace("?::", f"{probability}::", 1)
                beta_line = beta_line.replace("?::", "dir_t(_)::")

            probability_string += probability_line
            beta_string += beta_line if random.random() < uncertainty or ":-" not in line else probability_line

    return probability_string, beta_string


def perform_inference(probability_string, terms):
    engine = DefaultEngine()
    program = PrologString(probability_string)
    formula = engine.ground_all(program, queries=[Term(term) for term in terms])
    circuit = DDNNF.create_from(formula)
    return circuit.evaluate()


def write_program(file, probability_string, beta_string):
    with open(file + "_probability.pl", "w") as probability_file:
        probability_file.write(probability_string)
    with open(file + "_beta.pl", "w") as beta_file:
        beta_file.write(beta_string)


def write_evidence(file, evidence, missing=0):
    with open(file + "_evidence.ev", "w") as evidence_file, open(file + "_target.ev", "w") as target_file:
        separate = False
        for term, probability in evidence.items():
            if random.random() < missing:
                continue
            if separate:
                evidence_file.write("\n----------------\n")
                target_file.write("\n----------------\n")
            else:
                separate = True
            evidence_file.write(f"evidence({term}).")
            target_file.write(f"{probability}")


def sample(file, terms, uncertainty=1, missing=0, seed=None):
    random.seed(seed)
    probability_string, beta_string = read_file(file, uncertainty)
    evidence = perform_inference(probability_string, terms)
    write_program(file, probability_string, beta_string)
    write_evidence(file, evidence, missing)


def data(u, m):

    # network 1
    sample(file="../../networks/learn_network/small1",
           terms=["a1", "b1", "c1", "d1", "e1", "f1", "g1", "h1", "l1"],
           uncertainty=u,
           missing=m,
           seed=None)

    # network 2
    sample(file="../../networks/learn_network/small2",
           terms=["a2", "b2", "c2", "d2", "e2", "f2", "g2", "h2", "l2"],
           uncertainty=u,
           missing=m,
           seed=None)

    # network 3
    sample(file="../../networks/learn_network/small3",
           terms=["a3", "b3", "c3", "d3", "e3", "f3", "g3", "h3", "l3"],
           uncertainty=u,
           missing=m,
           seed=None)



