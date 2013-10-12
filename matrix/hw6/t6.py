from hw6 import *
from GF2 import one

import echelon

def solve(A, b):
    M = echelon.transformation(A)
    U = M*A
    col_label_list = sorted(A.D[1])
    U_rows_dict = mat2rowdict(U)
    rowlist = [U_rows_dict[i] for i in U_rows_dict]
    return echelon_solve(rowlist,col_label_list, M*b)


A = Mat(({'a', 'b', 'c', 'd'},
         {'A', 'B', 'C', 'D'}),
         {('a', 'A'): one, ('a', 'B'): one, ('a', 'D'): one,
          ('b', 'A'): one, ('b', 'D'): one,
          ('c', 'A'): one, ('c', 'B'): one, ('c', 'C'): one, ('c', 'D'): one,
          ('d', 'C'): one, ('d', 'D'): one})

print(A)
M = echelon.transformation(A, ['A', 'B', 'C', 'D'])
print('---------')
print(M)
col_label_list = sorted(A.D[1])
U = M*A
U_rows_dict = mat2rowdict(U)
print(U)
U_rows_dict = mat2rowdict(U)
rowlist = [U_rows_dict[i] for i in U_rows_dict]
print(rowlist)

g = Vec({'a', 'b', 'c', 'd'}, {'a': one, 'c': one})
print(M*g)


#r = solve(A, g)
#print(r)

