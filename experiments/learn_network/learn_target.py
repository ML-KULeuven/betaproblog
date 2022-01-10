

import time
from gradlfilearner import GradLFILearner
from problog.program import PrologFile


def read_file(file):
    model_file = file + "_beta.pl"
    evidence_file = file + "_evidence.ev"
    target_file = file + "_target.ev"
    return GradLFILearner(PrologFile(model_file), evidence_file, target_path=target_file, max_epoch=300, sample_count=100, lr=0.1)


def write_results(file, results, duration):
    with open(file + "_beta.pl", "r") as model_file, open(file + "_result.pl", "w") as result_file:
        result_file.write(f"% time: {duration}\n")
        index = 0
        for line in model_file:
            if "beta_t(_,_)::" in line:
                line = line.replace("beta_t(_,_)::", f"beta({results[index][0]},{results[index][1]})::")
                index += 1
            result_file.write(line)


def learn(file):

    start = time.time()
    learner = read_file(file)
    learner.prepare()
    learner.learn()
    stop = time.time()

    results = [[float(concentration) for concentration in distribution.concentration] for distribution in learner.distributions]
    write_results(file, results, stop - start)


def data():
    learn("../../networks/learn_network/small1")
    learn("../../networks/learn_network/small2")
    learn("../../networks/learn_network/small3")

data()