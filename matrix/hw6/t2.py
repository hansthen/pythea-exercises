from factoring_lab import *
from factoring_support import *

N = 2461799993978700679
primeset = primes(10000)
roots, rowlist = find_candidates(N, primeset)
M = echelon.transformation_rows(rowlist)
print(M)
