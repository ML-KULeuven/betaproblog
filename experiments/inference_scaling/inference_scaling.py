import random
import pickle
import os
import sys
import torch


sys.path.append(os.path.join(os.path.dirname(__file__), "..", ".."))

from problog.errors import InconsistentEvidenceError
from beta_inference import perform_inference
from datetime import datetime


now = datetime.now().strftime("%Y-%m-%d-%H-%M-%S")
input_folder = f"networks/inference_scaling/"
output_folder = f"{input_folder}{now}-experiment/"
os.makedirs(output_folder)

networks = [
    "small1",
    "small2",
    "small3",
    "child",
    "alarm",
    "water",
    "win95pts",
    "hepar2",
]
# networks = ["small1"]
inference_samples = [10, 100, 1000, 10000]
seeds = 5
strength = 50
# device = "cuda:2"
device = "cpu"

torch.set_num_threads(1)


def convert(input_path, output_path):
    with open(input_path, "r") as i_file, open(output_path, "w") as output_file:
        for line in i_file:
            count = line.count("?::")
            if count <= 1:
                line = line.replace(
                    "?::",
                    f"beta({random.randint(1, strength)},{random.randint(1, strength)})::",
                )
            else:
                for _ in range(count):
                    line = line.replace(
                        "?::", f"dir({random.randint(1, strength)})::", 1
                    )
            output_file.write(line)


for network in networks:

    print(f"processing network {network}")
    os.makedirs(f"{output_folder}{network}/")
    results = {}

    for inference_sample in inference_samples:
        seed = 0
        results[inference_sample] = []

        for _ in range(seeds):

            # sometimes the generation leads to an inconsistent evidence error, so we have to retry with the next seed
            trying = True
            while trying:
                try:
                    seed += 1
                    input_file = f"{input_folder}{network}.pl"
                    beta_file = (
                        f"{output_folder}{network}/{inference_sample}-{seed}-beta.pl"
                    )

                    convert(input_file, beta_file)
                    beta_inference = perform_inference(
                        beta_file,
                        sample_count=inference_sample,
                        seed=seed,
                        device=device,
                        requires_grad=False,
                        evaluatable_name="sdd",
                    )

                    # Turning query Terms into strings to save space; and detach tensor, store it as numpy array
                    stored_query, stored_stats = beta_inference
                    stored_query = {
                        str(q): t.cpu().detach().numpy()
                        for (q, t) in stored_query.items()
                    }
                    beta_inference = (stored_query, stored_stats)
                    results[inference_sample].append(beta_inference)
                    trying = False
                except InconsistentEvidenceError:
                    print(f"error encountered in seed {seed}; trying next seed")

    print(f"saving network {network}")
    with open(f"{output_folder}/{network}.pkl", "wb") as results_file:
        pickle.dump(results, results_file)


print("finished")
