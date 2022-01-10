from problog.errors import InconsistentEvidenceError, InvalidValue
from problog.program import PrologFile
from problog.formula import LogicFormula, LogicDAG
from problog.cnf_formula import CNF
from problog.ddnnf_formula import DDNNF, DSharpError

from networks.template_utils import replace_unknowns, convert_prob_to_beta
from beta_inference import perform_inference
from datetime import datetime

import pickle
import os


now = datetime.now().strftime("%Y-%m-%d-%H-%M-%S")
input_folder = f"../../networks/inference_network/"
output_folder = f"{input_folder}{now}-experiment/"
os.makedirs(output_folder)

networks = ["small1", "small2", "small3", "child", "alarm", "win95pts", "andes"]
generation_samples = [10, 50, 100]
inference_samples = [10, 100, 1000]
seeds = 100

for network in networks:

    print(f"processing network {network}")
    results = {}

    for generation_sample in generation_samples:
        for inference_sample in inference_samples:
            seed = 0
            results[(generation_sample, inference_sample)] = []

            for _ in range(seeds):

                # sometimes the generation leads to an inconsistent evidence error, so we have to retry with the next seed
                trying = True
                while trying:
                    try:
                        print(f"g: {generation_sample}, i: {inference_sample}, s: {seed}")

                        seed += 1
                        input_file = f"{input_folder}{network}.pl"
                        point_file = f"{output_folder}{network}/{generation_sample}-{inference_sample}-{seed}-point.pl"
                        beta_file = f"{output_folder}{network}/{generation_sample}-{inference_sample}-{seed}-beta.pl"

                        replace_unknowns(input_file, point_file, use_beta=False, seed=seed, prob_bounds=(0.1, 0.9))
                        convert_prob_to_beta(point_file, beta_file, conversion_sample_count=generation_sample, seed=seed)

                        program = PrologFile(point_file)
                        formula = LogicFormula.create_from(program)
                        dag = LogicDAG.create_from(formula)
                        cnf = CNF.create_from(dag)
                        ddnnf = DDNNF.create_from(cnf)

                        point_inference = list(ddnnf.evaluate().values())[0]
                        beta_inference = perform_inference(beta_file, sample_count=inference_sample, seed=seed)

                        # Turning query Terms into strings to save space; and detach tensor, store it as numpy array
                        stored_query, stored_stats = beta_inference
                        stored_query = {str(q): t.detach().numpy() for (q,t) in stored_query.items()}
                        beta_inference = (stored_query, stored_stats)
                        results[(generation_sample, inference_sample)].append((point_inference, beta_inference))

                        # These deletes shouldn't change anything but maybe it helps...
                        del ddnnf
                        del cnf
                        del dag
                        del formula
                        trying = False
                    except InconsistentEvidenceError:
                        print(f"error encountered in seed {seed}; trying next seed")
                    except DSharpError:
                        print(f"error encountered in seed {seed}; trying next seed")
                    # except InvalidValue:
                    #     print(f"error encountered in seed {seed}; trying next seed")
                    except ValueError:
                        print(f"error encountered in seed {seed}; trying next seed")

    print(f"saving network {network}")
    with open(f"{output_folder}/{network}.pkl", "wb") as results_file:
        pickle.dump(results, results_file)


print("finished")

