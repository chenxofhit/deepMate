import os
import pandas as pd
import numpy as np
from keras.datasets import mnist
from keras.datasets import fashion_mnist


def convert_annotations(A):
    x = np.unique(A)
    y = np.zeros(A.size)
    z = 1
    for i in x:
        y[A == i] = z
        z += 1
    return y.astype('int')


def load_data(dataname, verbose=0):
    expr_name = './data/{}.rds.expr.csv'.format(dataname)
    label_name = './data/{}.rds.label.csv'.format(dataname)
    expr = pd.read_csv(expr_name)
    label = pd.read_csv(label_name)
    x = expr.values
    y = convert_annotations(label.values.squeeze())
    if(verbose):
        print("load {} finished, expression shape: {}, label shape: {}, and label #subpopulation: {}".format(
            dataname, expr.shape, label.shape, len(np.unique(label))))
    return x, y


# load_data("biase", verbose=1)
# load_data("treutlein", verbose=1)
# load_data("pollen", verbose=1)
# load_data("kolod", verbose=1)
# load_data("usoskin", verbose=1)
# load_data("zeisel", verbose=1)
# load_data("darmanis", verbose=1)
# load_data("tasic", verbose=1)
# load_data("goolam", verbose=1)
# load_data("li", verbose=1)
