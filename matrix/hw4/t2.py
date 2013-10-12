from vec import Vec
from vecutil import list2vec
from matutil import *
from hw4 import *


a0 = Vec({'a','b','c','d'}, {'a':1})
a1 = Vec({'a','b','c','d'}, {'b':1})
a2 = Vec({'a','b','c','d'}, {'c':1})
a3 = Vec({'a','b','c','d'}, {'a':1,'c':3})
print(is_superfluous([a0,a1,a2,a3], 3))

