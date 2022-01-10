"""
File containing methods to label evidence for the digit experiment
"""
import re


def label_digit(input_path, evidence_path, label_path):
    with open(input_path, "r") as input_file,\
            open(evidence_path, "w") as evidence_file,\
            open(label_path, "w") as label_file:
        for line in input_file:
            if re.match(r"evidence\(digit\(\d\)\)\.", line):
                label_file.write("1::" + re.findall(r"digit\(\d\)", line)[0])
            elif re.match(r"(evidence\((\\\+)?show\(\d+\)\)\.)", line):
                evidence_file.write(line)
            elif re.match(r"-+", line):
                evidence_file.write(line)
                label_file.write("\n" + line)


if __name__ == "__main__":
    import argparse

    argparser = argparse.ArgumentParser()
    argparser.add_argument("input_path", type=str, help="Path to the input file")
    argparser.add_argument("evidence_path", type=str, help="Path to the ouput evidence file")
    argparser.add_argument("label_path", type=str, help="Path to the ouput label file")
    args = argparser.parse_args()

    label_digit(input_path=args.input_path, evidence_path=args.evidence_path, label_path=args.label_path)


