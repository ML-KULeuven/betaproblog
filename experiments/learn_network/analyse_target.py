

import os
import torch
from beta_inference import perform_inference


def compare(file):
    with open(file + "_result.pl", "r") as result_file, open(file + "_evidence.ev", "r") as evidence_file, open(file + "_target.ev", "r") as target_file:
        model = result_file.read()
        duration = float(model.splitlines()[0][8:])
        comparison = []
        for evidence, target in zip(evidence_file.readlines(), target_file.readlines()):
            if "evidence" not in evidence:
                continue
            inference = perform_inference(model + "\n" + evidence.replace("evidence", "query"), sample_count=1000, is_file=False)
            mean = torch.mean(list(inference[0].values())[0])
            error = abs(float(mean) - float(target))
            comparison.append(error)
    return duration, comparison


def write_analysis(file, duration, comparison, u, m):
    if not os.path.exists(file + "/"):
        os.makedirs(file + "/")
    with open(file + f"/analysis_{u}_{m}.txt", "w") as analysis_file:
        analysis_file.write("mean & min & max & time\n")
        analysis_file.write(f"{sum(comparison) / len(comparison)} & ")
        analysis_file.write(f"{min(comparison)} & ")
        analysis_file.write(f"{max(comparison)} & ")
        analysis_file.write(f"{duration}")


def analyse(file, u, m):
    duration, comparison = compare(file)
    write_analysis(file, duration, comparison, u, m)


def data(u, m):
    analyse("../../networks/learn_network/small1", u, m)
    analyse("../../networks/learn_network/small2", u, m)
    analyse("../../networks/learn_network/small3", u, m)
