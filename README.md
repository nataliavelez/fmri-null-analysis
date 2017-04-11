# Psych 248 Final Project

The main write-up for this project is is `Estimating type-I error rates using resting-state datasets.ipynb`. This repository also contains:

* `create_mask.sh`: Code used to create whole-brain masks from skull-stripped anatomicals. (BET failed to run within Nipype, but not fromt the Terminal, so this script was added as a quick work-around.)
* `cross_validation_accuracy.csv`: Average 2-Fold cross-validation accuracy per subject.
* `T1.nii`: Template used for normalization.