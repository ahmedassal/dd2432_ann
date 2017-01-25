# Code from Chapter 3 of Machine Learning: An Algorithmic Perspective (2nd Edition)
# by Stephen Marsland (http://stephenmonika.net)

# You are free to use, change, or redistribute the code in any way you wish for
# non-commercial purposes, but please maintain the name of the original author.
# This code comes with no warranty of any kind.

# Stephen Marsland, 2008, 2014

# This is the start of a script for you to complete
import numpy as np
import linreg

auto = np.loadtxt('D:\DEV\kth\dd2432_ann\Machine learning an algorithmic perspective(second Ed)-MLcode\Data\auto-mpg\auto-mpg.data.txt',comments='"')

# Separate the data into training and testing sets

# Normalise the data

# This is the training part
beta = linreg.linreg(trainin,traintgt)
testin = np.concatenate((testin,-np.ones((np.shape(testin)[0],1))),axis=1)
testout = np.dot(testin,beta)
error = np.sum((testout - testtgt)**2)
print error
