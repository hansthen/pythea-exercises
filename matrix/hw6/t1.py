from hw6 import *
from vecutil import *

def project_along(b, a):
    res = ((b * a) /  (a * a) if (a * a) > 1e-20 else 0) * a
    #print("a*a\t", a*a)
    #print("b*a\t", b*a)
    #print("res\t", res)
    return res

def project_orth(b, a):
    return b - project_along(b, a)

a_ = [[3,0], [1,2,-1], [-3,-2,-1,4]]
b_ = [[2,1], [1,1,4], [7,2,5,0]]

for (a,b) in zip(a_,b_):
    a = list2vec(a)
    b = list2vec(b)
    print(project_along(b,a))
    #print(project_orth(b,a))


