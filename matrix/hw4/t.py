from GF2 import one
from vec import Vec
from math import sqrt, pi

v1 = Vec(set(range(8)), {0:one,1:one})
v2 = Vec(set(range(8)), {1:one,2:one})
v3 = Vec(set(range(8)), {0:one,3:one})
v4 = Vec(set(range(8)), {1:one,4:one})
v5 = Vec(set(range(8)), {2:one,4:one})
v6 = Vec(set(range(8)), {3:one,4:one})
v7 = Vec(set(range(8)), {5:one,7:one})
v8 = Vec(set(range(8)), {6:one,7:one})


c1 = 0
c2 = 0
c3 = 0
c4 = 0
c5 = 0
c6 = 0
c7 = 0
c8 = 0

print(c1 * v1 + c2 * v2 + c3 * v3 + c4 * v4 + \
      c5 * v5 + c6 * v6 + c7 * v7 + c8 * v8)

