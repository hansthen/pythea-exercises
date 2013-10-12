from vec import Vec
from mat import Mat
from matutil import *
from vecutil import *
from hw4 import *

## Problem 18
def exchange(S, A, z):
    '''
    Input:
        - S: a list of vectors, as instances of your Vec class
        - A: a list of vectors, each of which are in S, with len(A) < len(S)
        - z: an instance of Vec such that A+[z] is linearly independent
    Output: a vector w in S but not in A such that Span S = Span ({z} U S - {w})
    Example:
        >>> S = [list2vec(v) for v in [[0,0,5,3],[2,0,1,3],[0,0,1,0],[1,2,3,4]]]
        >>> A = [list2vec(v) for v in [[0,0,5,3],[2,0,1,3]]]
        >>> z = list2vec([0,2,1,1])
        >>> exchange(S, A, z) == Vec({0, 1, 2, 3},{0: 0, 1: 0, 2: 1, 3: 0})
        True
    '''
    S_ = S + z
    for v in S:
        if v not in A:
            S_.remove(v)
            if is_independent(S_):
                return S
            else:
               S_.append(v)


S = [list2vec(v) for v in [[3,67,8,4],[0,6,3,4],[5,9,5,2],[67,342,567,5],[9,5,9,0],[7,4,5,3],[34,7,65,3]]]
A = [list2vec(v) for v in [[3,67,8,4],[0,6,3,4]]]
z = list2vec([0,0,0,1])

s = """
>>> print(test_format((exchange(S, A, z) == list2vec([9,5,9,0])) or (exchange(S, A, z) == list2vec([7,4,5,3])) or (exchange(S, A, z) == list2vec([34, 7, 65, 3]))))
"""
"""
False
>>> print(test_format((exchange(S, A, z) == list2vec([5,9,5,2])) or (exchange(S, A, z) == list2vec([67,342,567,5]))))
False
"""

L = superset_basis(A,S)
S_ = L + [z]
for i, v in enumerate(L):
    if is_superfluous(S_, i) and v not in A:
        break

print(v)
input()

L = superset_basis(A,S)
if not is_independent(L):
    print("Starting set is not independent")

S_ = L + [z]
for v in S_:
    print(v)

input()


for v in L:
    if v not in A:
        print("trying", v)
        S_.remove(v)
        if is_independent(S_):
            print("solution", v)
            break
        else:
            S_.append(v)
else:
    print("no solution")

