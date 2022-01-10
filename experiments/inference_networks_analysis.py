"""

Procedure:
First run:
    ./inference_networks.py
before running this analysis file.
"""
import math
import pickle
import sys

from scipy.stats import describe

# --- DATA PARAMETERS ---
from experiments.inference_networks import net_template_paths, nb_iterations, \
    results_dir, conversion_sample_counts, inference_sample_count, \
    get_inference_results_path

print_to_file = False
log_path = "./inference_networks_results/analysis-log.txt"


# --- COLLECT DATA ---
class ExperimentResults:
    def __init__(self, query, timings):
        self.timings_ = timings
        self.query = query


# Beta distributions
beta_results = dict()  # type: dict[(str, int, int), ExperimentResults]
for conversion_sample_count in conversion_sample_counts:
    for (net_path, net_name, start_seed) in net_template_paths:
        used_seed = start_seed
        for iteration in range(nb_iterations):
            query_path = get_inference_results_path(net_name,
                                                    used_seed,
                                                    iteration,
                                                    conv_sample_count=conversion_sample_count,
                                                    timings=False)
            timings_path = get_inference_results_path(net_name,
                                                      used_seed,
                                                      iteration,
                                                      conv_sample_count=conversion_sample_count,
                                                      timings=True)
            with open(query_path, "rb") as f:
                query_data = pickle.load(f)
                assert len(query_data) == 1, "There must be exactly one query present"
                query_term, query_prob = next((v for v in query_data.items()))
                query_prob = query_prob.detach().numpy()
            with open(timings_path, "rb") as f:
                timing_data = pickle.load(f)
            key = (net_name, iteration, conversion_sample_count)
            beta_results[key] = ExperimentResults(query_prob, timing_data)
            used_seed += 1

# Point estimates
point_results = dict()  # type: dict[(str, int), ExperimentResults]
for (net_path, net_name, start_seed) in net_template_paths:
    used_seed = start_seed
    for iteration in range(nb_iterations):
        query_path = get_inference_results_path(net_name,
                                                used_seed,
                                                iteration,
                                                conv_sample_count=None,
                                                timings=False)
        timings_path = get_inference_results_path(net_name,
                                                  used_seed,
                                                  iteration,
                                                  conv_sample_count=None,
                                                  timings=True)
        with open(query_path, "rb") as f:
            query_data = pickle.load(f)
            assert len(query_data) == 1, "There must be exactly one query present"
            query_term, query_prob = next((v for v in query_data.items()))
        with open(timings_path, "rb") as f:
            timing_data = pickle.load(f)
        key = (net_name, iteration)
        point_results[key] = ExperimentResults(query_prob, timing_data)
        used_seed += 1


# --- ANALYSE DATA ---
def get_rmse(samples, point_estimate):
    mse = sum((samples - point_estimate) ** 2) / (len(samples) - 1)
    return math.sqrt(mse)


def get_std(samples):
    return math.sqrt(describe(samples).variance)


def print_results():
    print(f"Parameter inference sample_count: {inference_sample_count}")
    print(f"Parameter iterations: {nb_iterations}")
    for (net_path, net_name, start_seed) in net_template_paths:
        print(f"--- NETWORK: {net_name} ---")
        # a / p
        acc_ground_time = 0
        acc_compilation_time = 0
        acc_evaluation_time = 0
        acc_point_ground_time = 0
        acc_point_compilation_time = 0
        acc_point_evaluation_time = 0
        for conversion_sample_count in conversion_sample_counts:
            print(f"- Nins: {conversion_sample_count} -")
            actual = 0
            predicted = 0
            for iteration in range(nb_iterations):
                beta_data = beta_results[(net_name, iteration, conversion_sample_count)]
                point_data = point_results[(net_name, iteration)]
                # inference
                actual += get_rmse(beta_data.query, point_data.query)
                predicted += get_std(beta_data.query)
                # times
                acc_ground_time += beta_data.timings_['grounding']
                acc_compilation_time += beta_data.timings_['compilation']
                acc_evaluation_time += beta_data.timings_['evaluation']
                acc_point_ground_time += point_data.timings_['grounding']
                acc_point_compilation_time += point_data.timings_['compilation']
                acc_point_evaluation_time += point_data.timings_['evaluation']

            actual /= nb_iterations
            predicted /= nb_iterations
            print(f"a / p error: {actual} / {predicted}")
        nb_conversions = len(conversion_sample_counts)
        print(f"avg. beta grounding:\t{acc_ground_time / (nb_iterations * nb_conversions):.3f}s "
              f"avg. point grounding:\t{acc_point_ground_time / (nb_iterations * nb_conversions):.3f}s ")
        print(f"avg. beta compilation:\t{acc_compilation_time / (nb_iterations * nb_conversions):.3f}s "
              f"avg. point compilation:\t{acc_point_compilation_time / (nb_iterations * nb_conversions):.3f}s ")
        print(f"avg. beta evaluation:\t{acc_evaluation_time / (nb_iterations * nb_conversions):.3f}s "
              f"avg. point evaluation:\t{acc_point_evaluation_time / (nb_iterations * nb_conversions):.3f}s ")

# PERFORM ANALYSIS
if print_to_file:
    orig_stdout = sys.stdout
    orig_stderr = sys.stderr
    with open(log_path, "w") as log_f:
        # Set std (print and error) output to the file
        sys.stdout = log_f
        sys.stderr = log_f

        # analysis
        print_results()

        # Restore std's
        sys.stdout = orig_stdout
        sys.stderr = orig_stderr
else:
    print_results()
