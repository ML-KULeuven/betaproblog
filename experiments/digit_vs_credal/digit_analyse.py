import torch
import pickle
import matplotlib.pyplot as plt
from torch.distributions.beta import Beta


def load(folder, d, n):
    with open(f"./{folder}/data_{d}_parameter_{n}.pickle", "rb") as load_file:
        return pickle.load(load_file)


def analyse_sl(experiment):
    hits = 0
    counts = 0
    for point, result in zip(experiment.points, experiment.results):
        for key in result.keys():
            mean = result[key].mean()
            variance = result[key].variance() if 0 < result[key].variance() else 1
            strength = mean * (1 - mean) / variance - 1
            beta = Beta(mean * strength, (1 - mean) * strength)

            for sample in beta.sample([100]) if 0 < variance else [mean] * 100:
                prediction = 0.5 <= sample
                target = point[1][int(key[5]) - 1]

                if prediction == target:
                    hits += 1
                counts += 1
    accuracy = hits / counts
    u80 = 1.6 * accuracy - 0.6 * accuracy * accuracy
    return u80


def analyse_beta_u80(experiment):
    hits = 0
    counts = 0
    for point, result in zip(experiment.points, experiment.results):
        for key in result[0].keys():
            for sample in result[0][key]:
                prediction = 0.5 <= sample
                target = point[1][key.args[0].value - 1]

                if prediction == target:
                    hits += 1
                counts += 1
    accuracy = hits / counts
    u80 = 1.6 * accuracy - 0.6 * accuracy * accuracy
    return u80


def analyse_point(experiment):
    hits = 0
    counts = 0
    for point, result in zip(experiment.points, experiment.results):
        for key in result[0].keys():
            prediction = 0.5 <= torch.mean(result[0][key])
            target = point[1][key.args[0].value - 1]

            if prediction == target:
                hits += 1
            counts += 1
    return hits / counts


def create_sub(axs, i, n, y_problog_acc_values,
                   y_beta_u80_values,
                   y_beta_acc_values,
                   y_sl_u80_values,
                   y_sl_acc_values,
                   y_credal_u80_values,
                   y_credal_acc_values):

    x = [0.95, 0.9, 0.8, 0.7, 0.6]
    y_problog = y_problog_acc_values[i]
    y_beta_u80 = y_beta_u80_values[i]
    y_beta_acc = y_beta_acc_values[i]
    y_sl_u80 = y_sl_u80_values[i]
    y_sl_acc = y_sl_acc_values[i]
    y_credal_u80 = y_credal_u80_values[i]
    y_credal_acc = y_credal_acc_values[i]

    axs.plot(x, y_problog, label="ProbLog acc.", color="black", linestyle="dashed")
    axs.scatter(x, y_problog, color="black", marker="x")
    axs.plot(x, y_beta_u80, label="Beta $u_{80}$", color="red")
    axs.scatter(x, y_beta_u80, color="red", marker="x")
    axs.plot(x, y_beta_acc, label="Beta acc.", color="red", linestyle="dashed")
    axs.scatter(x, y_beta_acc, color="red", marker="x")
    axs.plot(x, y_sl_u80, label="SL $u_{80}$", color="green")
    axs.scatter(x, y_sl_u80, color="green", marker="x")
    axs.plot(x, y_sl_acc, label="SL acc.", color="green", linestyle="dashed")
    axs.scatter(x, y_sl_acc, color="green", marker="x")
    axs.plot(x, y_credal_u80, label="Credal $u_{80}$", color="blue")
    axs.scatter(x, y_credal_u80, color="blue", marker="x")
    axs.plot(x, y_credal_acc, label="Credal acc.", color="blue", linestyle="dashed")
    axs.scatter(x, y_credal_acc, color="blue", marker="x")

    axs.set_title(f"N = {n}")


if __name__ == "__main__":

    # enter data values in arrays as 2d matrix (list of lists) before running

    y_problog_acc_values = []

    y_beta_u80_values = []

    y_beta_acc_values = []

    y_sl_u80_values = []

    y_sl_acc_values = []

    y_credal_u80_values = []

    y_credal_acc_values = []

    plt.clf()
    plt.cla()
    plt.rc("text", usetex=True)
    plt.rc("axes", labelsize=14)

    fig, axs = plt.subplots(2, 2)
    create_sub(axs[0, 0], 0, 10, y_problog_acc_values,
               y_beta_u80_values,
               y_beta_acc_values,
               y_sl_u80_values,
               y_sl_acc_values,
               y_credal_u80_values,
               y_credal_acc_values)
    create_sub(axs[0, 1], 2, 20, y_problog_acc_values,
               y_beta_u80_values,
               y_beta_acc_values,
               y_sl_u80_values,
               y_sl_acc_values,
               y_credal_u80_values,
               y_credal_acc_values)
    create_sub(axs[1, 0], 3, 50, y_problog_acc_values,
               y_beta_u80_values,
               y_beta_acc_values,
               y_sl_u80_values,
               y_sl_acc_values,
               y_credal_u80_values,
               y_credal_acc_values)
    create_sub(axs[1, 1], 4, 100, y_problog_acc_values,
               y_beta_u80_values,
               y_beta_acc_values,
               y_sl_u80_values,
               y_sl_acc_values,
               y_credal_u80_values,
               y_credal_acc_values)

    for ax in axs.flat:
        ax.set(xlabel="probability of segment activation", ylabel="accuracy / $u_{80}$")
        ax.label_outer()

    ax.legend(loc='lower center', ncol=1, frameon=False, bbox_to_anchor=(1.03, 0.32), bbox_transform=fig.transFigure, fontsize=13)
    plt.savefig(f"./plot_all.pdf", bbox_inches='tight')

