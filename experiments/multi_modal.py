
# IMPORTS
import matplotlib.pyplot as plt

from scipy.stats import beta
from beta_inference import perform_inference
from torch import var_mean
from numpy import linspace

plt.rcParams.update({'font.size': 17})

# INITIALISE
used_seed = 5012021
sample_count = 10000000
kc_name = "ddnnf"
model = """
beta(0.5,0.5)::a.
beta(0.5,0.5)::b.

e :- \+a, b.
e :- \+b, a.

query(e).
"""


# INFERENCE
results, timings = perform_inference(model, sample_count=sample_count, seed=used_seed, is_file=False)
samples = list(results.values())[0].data.cpu()


# TRANSFORMATIONS
variance, mean = var_mean(samples)
strength = mean * (1 - mean) / variance - 1
a = mean * strength
b = (1 - mean) * strength


# FITTING
x = linspace(0, 1, 100)
y = [beta.pdf(p, a, b) for p in x]


# PLOTTING
plt.hist(samples, bins=150, density=True)
plt.plot(x, y)
plt.gca().set_xlabel("query probability")
plt.gca().set_ylabel("density")
plt.xlim([0, 1])
plt.legend(['SLProbLog\napproximation\n', 'Monte Carlo\napproximation of\ntrue distribution'], loc='center right', frameon=False, bbox_to_anchor=(1.6, 0.5))
plt.savefig("./multi_modal-18.pdf", bbox_inches='tight')
