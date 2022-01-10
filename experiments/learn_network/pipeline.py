

# manage imports
import time
import pickle
import random
import os
import re

from datetime import datetime
from problog.logic import Term
from problog.program import PrologFile
from problog.engine import DefaultEngine
from problog.ddnnf_formula import DDNNF
from torch.distributions import Dirichlet
from gradlfilearner import GradLFILearner


# experiment class
class Experiment:

    def __init__(self, folder, programs, terms, parameters=[], queries=[], epochs=[], samples=[], lr=[], runs=1, seed=None):
        now = datetime.now().strftime("%Y-%m-%d-%H-%M-%S")
        self.input_folder = folder
        self.output_folder = f"{folder}{now}/"
        self.programs = programs
        self.terms = terms

        self.parameters = parameters
        self.queries = queries
        self.epochs = epochs
        self.samples = samples
        self.lr = lr

        self.runs = runs
        self.seed = seed

    def run(self):
        run = 1
        for program, terms in zip(self.programs, self.terms):
            for parameters in self.parameters:
                for queries in self.queries:
                    for epochs in self.epochs:
                        for samples in self.samples:
                            for lr in self.lr:
                                for _ in range(self.runs):

                                    # set seed and create folder
                                    random.seed(self.seed)
                                    path = f"{self.output_folder}runs/run_{run}/"
                                    meta_path = f"{path}.meta.txt"

                                    os.makedirs(path)
                                    with open(meta_path, "w") as meta_file:
                                        meta_file.write(f"program: {program}\n")
                                        meta_file.write(f"seed: {self.seed}\n")
                                        meta_file.write(f"parameters: {parameters}\n")
                                        meta_file.write(f"queries: {queries}\n")
                                        meta_file.write(f"epochs: {epochs}\n")
                                        meta_file.write(f"samples: {samples}\n")
                                        meta_file.write(f"lr: {lr}\n")

                                    # create model and bound parameters and queries
                                    parameters_max = self.model(program, path)
                                    if parameters_max < parameters:
                                        parameters = parameters_max

                                    queries_max = len(terms)
                                    if queries_max < queries:
                                        queries = queries_max

                                    # sample query targets and learn
                                    self.query(path, terms, queries, queries_max)
                                    self.convert(path, parameters, parameters_max)
                                    self.learn(path, epochs, samples, lr)

                                    self.seed += 1
                                    run += 1

    def model(self, program, path):

        # define paths
        program_path = f"{self.input_folder}{program}.pl"
        model_path = f"{path}model.pl"

        # convert unknowns to parameters
        # TODO: replace with regex
        parameters_max = 0
        with open(program_path, "r") as program_file, open(model_path, "w") as model_file:
            for line in program_file:
                count = line.count("?::")
                if 0 < count:
                    parameters_max += 1
                if count <= 1:
                    # TODO: add argument to specify probability bounds
                    line = line.replace("?::", f"{0.1 + 0.8 * random.random()}::")
                else:
                    for probability in Dirichlet([1] * count).sample():
                        line = line.replace("?::", f"{probability}::", 1)
                model_file.write(line)
        return parameters_max

    def query(self, path, terms, queries, queries_max):

        # define paths
        model_path = f"{path}model.pl"
        evidence_path = f"{path}evidence.ev"
        target_path = f"{path}target.ev"

        # perform inference for query target
        engine = DefaultEngine()
        model = PrologFile(model_path)
        formula = engine.ground_all(model, queries=[Term(term) for term in terms])
        circuit = DDNNF.create_from(formula)
        inference = circuit.evaluate()

        # write query targets
        with open(evidence_path, "w") as evidence_file, open(target_path, "w") as target_file:
            separator = False
            queries_max += 1

            for term, target in inference.items():
                queries_max -= 1
                if queries <= random.randrange(queries_max):
                    continue
                queries -= 1

                if separator:
                    evidence_file.write("\n----------------\n")
                    target_file.write("\n----------------\n")
                else:
                    separator = True
                evidence_file.write(f"evidence({term}).")
                target_file.write(f"{target}")

    def convert(self, path, parameters, parameters_max):

        # define paths
        model_path = f"{path}model.pl"
        beta_path = f"{path}beta.pl"

        # convert parameters to unknown beta
        regex = r"\d\.?\d*\s*::"
        with open(model_path, "r") as model_file, open(beta_path, "w") as beta_file:
            parameters_max += 1
            for line in model_file:
                count = len(re.findall(regex, line))
                if 0 < count:
                    parameters_max -= 1
                    # TODO: find better way to avoid gradient of zero function
                    if random.randrange(parameters_max) < parameters or not re.search(r":-", line):
                        parameters -= 1
                        line = re.sub(regex, "beta_t(_,_)::" if count <= 1 else "dir_t(_)::", line)
                beta_file.write(line)

    def learn(self, path, epochs, samples, lr):

        # define paths
        meta_path = f"{path}.meta.txt"
        beta_path = f"{path}beta.pl"
        evidence_path = f"{path}evidence.ev"
        target_path = f"{path}target.ev"
        learned_path = f"{path}learned.pl"

        # learn and time
        timing = time.time()
        learner = GradLFILearner(
            modelfile=PrologFile(beta_path),
            examples=evidence_path,
            target_path=target_path,
            max_epoch=epochs,
            sample_count=samples,
            lr=lr
        )
        learner.prepare()
        learner.learn()
        timing = time.time() - timing

        # report timing
        with open(meta_path, "a") as meta_file:
            meta_file.write(f"time: {timing}\n")

        # convert unknown beta to learned beta
        # TODO: replace with regex
        # TODO: expand for dirichlet
        concentration = [[float(concentration) for concentration in distribution.concentration] for distribution in learner.distributions]
        with open(beta_path, "r") as beta_file, open(learned_path, "w") as learned_file:
            index = 0
            for line in beta_file:
                if "beta_t(_,_)::" in line:
                    line = line.replace("beta_t(_,_)::", f"beta({concentration[index][0]},{concentration[index][1]})::")
                    index += 1
                learned_file.write(line)

    def analyse(self):

        # define paths
        run_path = f"{self.output_folder}runs/"
        analysis_path = f"{self.output_folder}analysis.txt"

        learned_regex = r"beta\(\d+\.?\d*,\d+\.?\d*\)::"
        model_regex = r"\d+\.?\d*::"
        aggregates = {}

        for run_folder in os.listdir(run_path):

            meta_path = f"{run_path}{run_folder}/.meta.txt"
            model_path = f"{run_path}{run_folder}/model.pl"
            learned_path = f"{run_path}{run_folder}/learned.pl"

            mean_error = 0
            mean_variance = 0
            meta = {}

            # TODO: expand for dirichlet
            with open(model_path, "r") as model_file, open(learned_path, "r") as learned_file:
                total = 0
                for model_line, learned_line in zip(model_file, learned_file):
                    if not re.search(learned_regex, learned_line):
                        continue

                    counts = [float(count) for count in re.findall(learned_regex, learned_line)[0][5:-3].split(",")]
                    strength = sum(counts)
                    probability = float(re.findall(model_regex, model_line)[0][:-2])

                    mean_error += abs(probability - counts[0] / strength)
                    mean_variance += counts[0] * counts[1] / (strength * strength * (strength + 1))
                    total += 1

                mean_error /= total
                mean_variance /= total

            with open(meta_path, "r") as meta_file:
                for line in meta_file:
                    item = line.split(":")
                    if len(item) <= 1:
                        continue
                    meta[item[0].strip()] = item[1].strip()

            if (meta["program"], meta["parameters"], meta["queries"]) not in aggregates:
                aggregates[(meta["program"], meta["parameters"], meta["queries"])] = []
            aggregates[(meta["program"], meta["parameters"], meta["queries"])].append(mean_error)

        with open(analysis_path, "w") as analysis_file:
            for ((program, parameters, queries), errors) in aggregates.items():
                analysis_file.write(f"({program} program, {parameters} parameters, {queries} queries) : {sum(errors) / len(errors)}\n")

    def save(self):

        # define paths
        save_path = f"{self.output_folder}experiment.pkl"

        # pickle experiment
        with open(save_path, "wb") as output_file:
            pickle.dump(self, output_file)


if __name__ == "__main__":

    experiment = Experiment(
        folder="../../networks/learn_network/",
        programs=["small1", "small2", "small3"],
        terms=[
            ["a1", "b1", "c1", "d1", "e1", "f1", "g1", "h1", "l1"],
            ["a2", "b2", "c2", "d2", "e2", "f2", "g2", "h2", "l2"],
            ["a3", "b3", "c3", "d3", "e3", "f3", "g3", "h3", "l3"]
        ],
        parameters=[4, 8, 12],
        queries=[3, 6, 9],
        epochs=[100],
        samples=[50],
        lr=[0.1],
        runs=1,
        seed=1
    )

    experiment.run()
    experiment.save()
    experiment.analyse()
