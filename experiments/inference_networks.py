import pickle
import random

from tqdm import tqdm  # https://github.com/tqdm/tqdm

from beta_inference import perform_inference, perform_point_estimate_inference
from networks.template_utils import replace_unknowns, convert_prob_to_beta

# --- Parameters ---
kc_name = "ddnnf"
nb_iterations = 100
net_template_paths = [
    # (path, name, start_seed)
    # Each iteration will use an increment of the start_seed
    ("../networks/net1.pl", "net1", 1337),
    ("../networks/net2.pl", "net2", 5431),
    ("../networks/net3.pl", "net3", 54321),
    ("../networks/net4.pl", "net4", 13379),
]

results_dir = "./inference_networks_results/"

# The number of samples to use to convert point estimates into beta distribution
conversion_sample_counts = [100, 500, 1000, 5000]
inference_sample_count = 1000


# --- PATH METHODS ---
def get_point_path(net_name, seed, iteration):
    """
    The path to use for the point estimate instance
    :param net_name: The name of the network
    :param seed: The seed that was used
    :param iteration: The iteration number
    """
    return f"{results_dir}data/{net_name}/{net_name}_s{seed}_it{iteration}_prob.pl"


def get_beta_path(net_name, seed, iteration, conv_sample_count):
    """
    The path to use for the beta distribution instance
    :param net_name: The name of the network
    :param seed: The seed that was used
    :param iteration: The iteration number
    :param conv_sample_count: The number of samples used to convert a point_estimate
        instance into a beta distribution instance
    """
    return f"{results_dir}data/{net_name}/{net_name}_s{seed}_it{iteration}_{conv_sample_count}_beta.pl"


def get_inference_results_path(net_name, seed, iteration, conv_sample_count, timings=False):
    """
    The path to use to store the inference results
    :param net_name: The name of the network
    :param seed: The seed that was used
    :param iteration: The iteration number
    :param conv_sample_count: The number of samples used to convert a point_estimate
        instance into a beta distribution instance. Use None for results of point estimate instances.
    :param timings: Whether the timings are stored or the inference samples.
    """
    ending = "time.pickle" if timings else "query.pickle"
    if conv_sample_count is not None:
        return f"{results_dir}data/{net_name}/{net_name}_s{seed}_it{iteration}_{conv_sample_count}_beta_{ending}"
    else:
        return f"{results_dir}data/{net_name}/{net_name}_s{seed}_it{iteration}_prob_{ending}"


def extract_parameters(filename):
    end_index = filename.find("_prob")
    if end_index == -1:
        end_index = filename.find("_beta")
    parts = filename[:end_index].split("_")
    net_name = parts[0]
    seed = int(parts[1][1:])
    iteration = int(parts[2][2:])
    if len(parts) == 3:  #prob
        conv_sample_count = None
    else:  # beta
        assert len(parts) == 4
        conv_sample_count = int(parts[3])
    return net_name, seed, iteration, conv_sample_count


# --- EXPERIMENT METHODS ---
def prepare_all():
    # Given
    # * conversion sample count (point estimate to beta distribution)
    # * a network template
    # * nb_of_iterations (times to repeat the experiment)
    # Convert the template into a ProbLog instance with point estimates
    # Convert the point estimate instance into a beta distribution instance (using conv_sample_count)
    for conv_sample_count in conversion_sample_counts:
        for net_template_path, net_name, net_start_seed in net_template_paths:
            prepare(start_seed=net_start_seed,
                    nb_of_iterations=nb_iterations,
                    net_template_path=net_template_path,
                    net_name=net_name,
                    conv_sample_count=conv_sample_count)


def prepare(start_seed, nb_of_iterations, net_template_path, net_name, conv_sample_count):
    seed = start_seed
    for iteration in range(nb_of_iterations):
        prob_path = get_point_path(net_name, seed, iteration)
        beta_distr_path = get_beta_path(net_name, seed, iteration, conv_sample_count)
        replace_unknowns(net_template_path,
                         prob_path,
                         use_beta=False,
                         prob_bounds=(0.0, 1.0),
                         seed=seed)
        convert_prob_to_beta(prob_path, beta_distr_path,
                             conversion_sample_count=conv_sample_count,
                             seed=None)
        seed += 1 # so each iteration has different seed


def execute(used_seed, iteration, net_name, conv_sample_count, sample_count):
    """
    Execute an inference experiment (first do prepare(...))
    :param used_seed: The seed that was used
    :param iteration: The iteration number
    :param net_name: The name of the network
    :param conv_sample_count: Number of samples used during conversion from point estimate to beta distribution
        problem instance. if None, then the point estimate is executed
    :param sample_count: The number of samples to use during inference. Irrelevant when conv_sample_count is None.
    """
    if conv_sample_count is not None:
        model_path = get_beta_path(net_name, used_seed, iteration, conv_sample_count)
        results, timings = perform_inference(model_path, kc_name, sample_count=sample_count, seed=used_seed)
    else:
        model_path = get_point_path(net_name, used_seed, iteration)
        results, timings = perform_point_estimate_inference(model_path, kc_name)

    timings_path = get_inference_results_path(net_name, used_seed, iteration, conv_sample_count, timings=True)
    with open(timings_path, "wb") as f:
        pickle.dump(timings, f)
    query_path = get_inference_results_path(net_name, used_seed, iteration, conv_sample_count, timings=False)
    with open(query_path, "wb") as f:
        pickle.dump(results, f)


def execute_all():
    # Beta distributions
    print("Inference on beta distributions")
    for conv_sample_count in tqdm(conversion_sample_counts):
        for net_template_path, net_name, net_seed in tqdm(net_template_paths):
            used_seed = net_seed
            for iteration in range(nb_iterations):
                execute(used_seed, iteration, net_name,
                        conv_sample_count=conv_sample_count,
                        sample_count=inference_sample_count)
                used_seed += 1

    # Point estimates
    print("Inference on Point estimates")
    for net_template_path, net_name, net_seed in tqdm(net_template_paths):
        used_seed = net_seed
        for iteration in range(nb_iterations):
            execute(used_seed, iteration, net_name,
                    conv_sample_count=None,
                    sample_count=None)
            used_seed += 1


if __name__ == "__main__":
    print("Preparing files...")
    prepare_all()
    print("Performing inference...")
    execute_all()

