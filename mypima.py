#!/usr/bin/python3

import os
import pylab as pl
from matplotlib.pyplot import pause

from pcn_logic_eg import pcn
import numpy as np

os.chdir('D:\DEV\kth\dd2432_ann\Machine learning an algorithmic perspective(second Ed)-MLcode\Data\Pima')
pima = np.loadtxt('pima-indians-diabetes.data', delimiter = ',')
print(np.shape(pima))

indices0 = np.where(pima[:,8] == 0)
indices1 = np.where(pima[:,8] == 1)

# pl.ion()
# pl.plot(pima[indices0, 0], pima[indices0,1], 'go')
# pl.plot(pima[indices1, 0], pima[indices1,1], 'rx')
# pl.show()
# pause(30)
accuracy = 0
for i in range(100):
    p = pcn(pima[:, :8], pima[:, 8:])
    p.pcntrain(pima[:, :8], pima[:, 8:], 0.25, 100)
    accuracy += p.confmat(pima[:, :8], pima[:, 8:])

accuracy /= 100
print(accuracy)