import pickle

input_folder = f"../../networks/inference_scaling/2021-08-10-16-08-21-experiment/"
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
inference_samples = [10, 100, 1000, 10000]

with open(f"{input_folder}sdd_cpu_1threads_nograd_analysis.txt", "w+") as analysis_file:
    for network in networks:
        with open(f"{input_folder}{network}.pkl", "rb") as pickle_file:
            results = pickle.load(pickle_file)

        for inference_sample in inference_samples:

            compilation = 0
            evaluation = 0
            total = len(results[inference_sample])

            for result in results[inference_sample]:
                timings = result[1]
                compilation += timings["grounding"] + timings["compilation"]
                evaluation += timings["sampling"] + timings["evaluation"]

            compilation /= total
            evaluation /= total

            analysis_file.write(
                f"net {network}, sample {inference_sample}, compilation: {compilation}\n"
            )
            analysis_file.write(
                f"net {network}, sample {inference_sample}, evaluation: {evaluation}\n"
            )
