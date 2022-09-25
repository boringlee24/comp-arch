import numpy as np
import time

n = 10000
x = np.random.randn(n,n)
a = time.time(); x.dot(x); print time.time() - a
