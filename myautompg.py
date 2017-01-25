# Code from Chapter 3 of Machine Learning: An Algorithmic Perspective (2nd Edition)
# by Stephen Marsland (http://stephenmonika.net)

# You are free to use, change, or redistribute the code in any way you wish for
# non-commercial purposes, but please maintain the name of the original author.
# This code comes with no warranty of any kind.

# Stephen Marsland, 2008, 2014

# This is the start of a script for you to complete
import numpy as np
import linreg

normalize = False
auto = np.loadtxt("D:\\DEV\\kth\\dd2432_ann\\machine_learning_an_algorithmic_perspective_2e_MLcode\\Data\\auto-mpg\\auto-mpg_no_missing.data",comments='"')
# Normalise the data
inputs = auto[:, 1:]
targets = auto[:, :1]
if normalize:
    print(inputs)
    inputs = (inputs - inputs.mean(axis=0)) / inputs.var(axis=0)
    print(inputs)
# Separate the data into training and testing sets
indices = np.random.permutation(auto.shape[0])
split = np.floor(auto.shape[0] * 0.8)
train_idx, test_idx = indices[:split], indices[split:]
trainin = inputs[train_idx, :]
traintgt = targets[train_idx, :]

testin = inputs[test_idx, :]
testtgt = targets[test_idx, :]


# This is the training part
beta = linreg.linreg(trainin,traintgt)
testin = np.concatenate((testin,-np.ones((np.shape(testin)[0],1))),axis=1)
testout = np.dot(testin,beta)
error = np.sum((testout - testtgt)**2)
print(error)
