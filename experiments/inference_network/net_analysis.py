

import pickle
import torch

input_folder = f"../../networks/inference_network/"

networks = ["small1", "small2", "small3", "child", "alarm", "win95pts", "andes"]
generation_samples = [10, 50, 100]
inference_samples = [10, 100, 1000]


for network in networks:

    with open(f"{input_folder}{network}.pkl", "rb") as results_file:
        results = pickle.load(results_file)

        for generation_sample in generation_samples:
            for inference_sample in inference_samples:

                mse = 0
                pse = 0
                mt = 0

                for result in results[(generation_sample, inference_sample)]:
                    samples = torch.tensor(result[1][0]["gruntingReport"], dtype=torch.float32)
                    timings = sum(list(result[1][1].values()))

                    actual_mean = result[0]
                    predicted_mean = float(torch.mean(samples))

                    mse += (actual_mean - predicted_mean) ** 2
                    pse += torch.var(samples)
                    mt += timings

                normalization = len(results[(generation_sample, inference_sample)])
                mse /= normalization
                pse /= normalization
                mt /= normalization

                print(f"gen: {generation_sample}, inf: {inference_sample}, te: {mse}, pe: {pse}, mt: {mt}")
