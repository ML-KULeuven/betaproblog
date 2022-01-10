# Template manipulation

template_utils.py contains some methods to manipulate (Beta)ProbLog files. Use
```commandline
template_utils.py --help
```
for more information on the specific flags.

## Unknown to beta
To replace all '?::' in a file with a beta distribution, use for example:
```commandline
template_utils.py --seed 1337 -maxa 30 -maxb 30 ./alarm_template1.pl ./alarm_1_s1337.pl
```

## Unknown to point estimate
To replace all '?::' in a file with a point estimate, use for example:
```commandline
template_utils.py --point_estimate --seed 1337 ./alarm_template1.pl ./alarm_1_prob_s1337.pl
```

## Convert point estimate to appropriate beta
To replace all '<some_prob>::' in a file with a beta distribution, use for example:
```commandline
template_utils.py --convert --seed 1337 --nb_of_samples 100 ./alarm_1_prob_s1337.pl ./alarm_1_probc_s1337.pl
```