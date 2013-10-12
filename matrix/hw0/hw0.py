# Please fill out this stencil and submit using the provided submission script.





## Problem 1
def myFilter(L, num):
    return [_ for _ in L if _ % num]



## Problem 2
def myLists(L):
    return [list(range(1,_+1)) for _ in L]



## Problem 3
def myFunctionComposition(f, g):
    return {_:g[f[_]] for _ in f}


## Problem 4
# Please only enter your numerical solution.

complex_addition_a = (5+3j)
complex_addition_b = (0+1j)
complex_addition_c = (-1+.001j)
complex_addition_d = (.001 + 9j)



## Problem 5
GF2_sum_1 = 1
GF2_sum_2 = 0
GF2_sum_3 = 0


## Problem 6
def mySum(L):
   t = 0
   for _ in L:
       t += _
   return t



## Problem 7
def myProduct(L):
   t = 1
   for _ in L:
       t *= _
   return t



## Problem 8
def myMin(L):
   t = max(L)
   for _ in L:
       t = _ if _ < t else t
   return t



## Problem 9
def myConcat(L):
   return ''.join(L)



## Problem 10
def myUnion(L):
   s = set()
   for _ in L:
       s |= _
   return s

