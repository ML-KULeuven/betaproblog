
import os
import re
import random

original_folder = "./original"
unknown_folder = "./unknown"
beta_folder = "./beta"
strength = 30

for original in os.listdir(original_folder):
    original_path = f"{original_folder}/{original}"
    unknown_path = f"{unknown_folder}/{original}"
    beta_path = f"{beta_folder}/{original}"
    parameter_regex = r"\d+\.?\d*::"

    with open(original_path, "r") as original_file, open(unknown_path, "w") as unknown_file, open(beta_path, "w") as beta_file:
        for line in original_file:
            unknown_file.write(re.sub(parameter_regex, "?::", line))
            count = len(re.findall(parameter_regex, line))
            if count <= 1:
                line = re.sub(parameter_regex, f"beta({random.randint(1, strength)},{random.randint(1, strength)})::", line)
            else:
                for _ in range(count):
                    line = re.sub(parameter_regex, f"dir({random.randint(1, strength)})::", line, 1)
            beta_file.write(line)


