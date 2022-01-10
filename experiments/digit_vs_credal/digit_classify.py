

from beta_inference import perform_inference
from datetime import datetime
import pickle
import re
import os


DIGIT_COUNT = 10
SEGMENT_COUNT = 7


class DigitExperiment:

    def __init__(self, model_file, evidence_file, data_quality=0.9, parameter_quality=10):
        with open(model_file, "r") as model:
            self.model = model.read()
        with open(evidence_file, "r") as evidence:
            self.evidence = evidence.read()

        self.points = None
        self.results = None
        self.data_quality = data_quality
        self.parameter_quality = parameter_quality

    @staticmethod
    def process(point):
        target = [True if f"evidence(need({segment + 1}))." in point else False for segment in range(SEGMENT_COUNT)]
        evidence = re.sub(r"evidence\((\\\+)?need", "query(need", point)
        return evidence, target

    def prepare(self):
        beta = f"beta({self.data_quality * (self.parameter_quality + 2)},{(1 - self.data_quality) * (self.parameter_quality + 2)})" if 0 < self.parameter_quality else f"{self.data_quality}"
        self.points = [self.process(point) for point in self.evidence.split("----------------")]
        self.model = self.model.replace("?", beta)

    def run(self):
        self.results = [perform_inference(self.model + "\n" + point[0], is_file=False) for point in self.points]

    def save(self, save_path):
        with open(save_path, "wb") as save_file:
            pickle.dump(self, save_file)


if __name__ == "__main__":

    now = datetime.now().strftime("%Y-%m-%d-%H-%M-%S")
    os.mkdir(f"./{now}")

    for p, d in zip([0.95, 0.9, 0.8, 0.7, 0.6], ["95", "90", "80", "70", "60"]):
        for n in [10, 15, 20, 50, 100]:
            experiment = DigitExperiment("../../networks/digit_vs_credal/digit_infer.pl", f"../../networks/digit_vs_credal/digit_{d}.ev", data_quality=p, parameter_quality=n)
            experiment.prepare()
            experiment.run()
            experiment.save(f"./{now}/data_{d}_parameter_{n}.pickle")

