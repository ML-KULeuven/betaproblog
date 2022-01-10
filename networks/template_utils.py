"""
File containing methods to manipulate ProbLog models
"""
import os
import random
import re
import sys
import torch

from numpy.random import binomial, multinomial


def convert_prob_to_unknown(model_filename, output_filename):

    os.makedirs(os.path.dirname(output_filename), exist_ok=True)
    with open(model_filename, "r") as input_f, open(output_filename, "w") as output_f:
        for line in input_f:
            output_f.write(re.sub(r"\d+\.?\d*::", "?::", line))


def replace_unknowns(model_filename, output_filename,
                     use_beta=True,
                     prob_bounds=(0.0, 1.0),
                     alpha_bounds=(1, sys.maxsize),
                     beta_bounds=(1, sys.maxsize),
                     seed=None):
    """
    Given a model, replace all occurrences of '?::' (unknown probability) with either a random beta distribution
    ('beta(a,b)::') or a random probability ('x::'), and write the new model to file.
    Unknowns in Annotated disjunctions are replaced with dirichlets.
    :param model_filename: The path of the model to replace the unknown probabilities in.
    :param output_filename: The path where to write the new generated model to.
    :param use_beta: Whether to replace with beta distributions or with point estimates.
    :param prob_bounds: The boundaries for the probabilities of the point estimate.
    :param alpha_bounds: The boundaries for the first argument of the generated beta distributions.
    :param beta_bounds: The boundaries for the second argument of the generated beta distributions.
    :param seed: A seed to set before sampling random values (None means no seed is set).
    """
    #TODO: In case of AD, we do not yet support a mix of known and unknown params

    # Seed
    if seed is not None:
        random.seed(a=seed)

    # Used to keep values between boundary
    normalise = prob_bounds[1] - prob_bounds[0] if not use_beta else 1

    # Start replacing
    os.makedirs(os.path.dirname(output_filename), exist_ok=True)
    with open(model_filename, "r") as input_f, open(output_filename, "w") as output_f:
        for line in input_f:
            occ_count = line.count("?::")
            new_line = line
            if occ_count == 1:
                if use_beta:
                    alpha = random.uniform(*alpha_bounds)
                    beta = random.uniform(*beta_bounds)
                    new_line = new_line.replace("?::", f"beta({alpha},{beta})::", 1)
                else:
                    prob = prob_bounds[0] + random.random() * normalise
                    new_line = new_line.replace("?::", f"{prob}::", 1)
            elif occ_count > 1:
                if use_beta:
                    dir_params = [random.uniform(*alpha_bounds) for i in range(occ_count)]
                    for param in dir_params:
                        new_line = new_line.replace("?::", f"dir({param})::", 1)
                else:
                    uniform_dir_params = torch.tensor([1] * occ_count, dtype=torch.float32)
                    prob_gen = torch.distributions.Dirichlet(uniform_dir_params)
                    prob_params = prob_gen.sample()

                    assert len(prob_params) == occ_count
                    for prob_param in prob_params:
                        new_line = new_line.replace("?::", f"{prob_param}::", 1)
            output_f.write(new_line)


def convert_prob_to_beta(model_filename, output_filename,
                         conversion_sample_count,
                         seed=None):
    # Seed
    if seed is not None:
        random.seed(a=seed)

    # Start replacing
    with open(model_filename, "r") as input_f, open(output_filename, "w") as output_f:
        for line in input_f:
            curr_probs_str = re.findall(r"(\d\.?\d*)::", line)
            # TODO: Do regex pattern matching
            occ_count = len(curr_probs_str)
            new_line = line
            if occ_count == 1:
                probability = float(curr_probs_str[0])
                count = binomial(n=conversion_sample_count, p=probability)
                new_line = new_line.replace(f"{probability}::", f"beta({count + 1},{conversion_sample_count - count + 1})::", 1)
            elif occ_count > 1:
                probabilities = [float(x) for x in curr_probs_str]
                counts = multinomial(n=conversion_sample_count, pvals=probabilities)
                for count, curr_prob_str in zip(counts, curr_probs_str):
                    new_line = new_line.replace(f"{curr_prob_str}::", f"dir({count + 1})::", 1)
            output_f.write(new_line)


def convert_beta_to_beta2(model_filename, output_filename):
    """
    Convert beta(alpha, beta) to beta(mean, std)
    """
    # Start replacing
    with open(model_filename, "r") as input_f, open(output_filename, "w") as output_f:
        for line in input_f:
            curr_probs_str = re.findall(r"beta\(\d*,\d*\)::", line)
            new_line = line
            for (alpha, beta) in curr_probs_str:
                alpha = int(alpha)
                beta = int(beta)
                mean = alpha / (alpha + beta)
                variance = alpha * beta / (alpha + beta)**3
                #If a previous replacement matches with (alpha, beta) we could be
                #replacing the wrong thing. This won't happen if all counts > 1
                new_line = new_line.replace(f"beta({alpha},{beta})",
                                            f"beta({mean},{variance})", 1)
            output_f.write(new_line)


if __name__ == "__main__":
    import argparse

    argparser = argparse.ArgumentParser()
    argparser.add_argument("input_path", type=str, help="Path to the input file")
    argparser.add_argument("output_path", type=str, help="Path to the ouput file")
    argparser.add_argument("--convert", action="store_true",
                           help="When used, a conversion occurs from probabilistic to dirichlet parameters.")
    argparser.add_argument("-nb", "--nb_of_samples", type=int, default=100,
                           help="When --convert, the number of samples used to determine the dirichlet parameters.")
    argparser.add_argument("--point_estimate", action="store_true",
                           help="Whether to use point estimates instead of beta distributions.")
    argparser.add_argument("-maxa", "--max_alpha", type=int, default=sys.maxsize,
                           help="The maximum value for the first argument of the generated beta distributions.")
    argparser.add_argument("-mina", "--min_alpha", type=int, default=1,
                           help="The minimum value for the first argument of the generated beta distributions.")
    argparser.add_argument("-maxb", "--max_beta", type=int, default=sys.maxsize,
                           help="The maximum value for the second argument of the generated beta distributions.")
    argparser.add_argument("-minb", "--min_beta", type=int, default=1,
                           help="The minimum value for the second argument of the generated beta distributions.")
    argparser.add_argument("-minp", "--min_prob", type=float, default=0.0,
                           help="The minimum probability, only useful while using --point_estimate")
    argparser.add_argument("-maxp", "--max_prob", type=float, default=1.0,
                           help="The minimum probability, only useful while using --point_estimate")

    argparser.add_argument("-s", "--seed", type=int, default=None)
    args = argparser.parse_args()
    # argparser.print_help()
    # print(args)

    assert args.min_alpha <= args.max_alpha
    assert args.min_beta <= args.max_beta
    assert args.min_prob <= args.max_prob
    alpha_bounds = (args.min_alpha, args.max_alpha)
    beta_bounds = (args.min_beta, args.max_beta)
    prob_bounds = (args.min_prob, args.max_prob)
    seed = args.seed
    if not args.convert:
        replace_unknowns(args.input_path, args.output_path,
                         use_beta=not args.point_estimate,
                         prob_bounds=prob_bounds,
                         alpha_bounds=alpha_bounds, beta_bounds=beta_bounds, seed=seed)
    else:
        convert_prob_to_beta(args.input_path, args.output_path,
                             conversion_sample_count=args.nb_of_samples,
                             seed=seed)

