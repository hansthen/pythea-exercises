from vec import Vec
from mat import Mat
from GF2 import one

D = (0,1),(0,1)

a = Mat(D, {(0,0):5, (0,1):1, (1,0):9, (1,1):2})
b = Mat(D, {(0,0):2, (0,1):-1, (1,0):-9, (1,1):5})

print(a * b)
print(b * a)

a = Mat(D, {(0,0):2, (0,1):0, (1,0):0, (1,1):1})
b = Mat(D, {(0,0):0.5, (0,1):0, (1,0):0, (1,1):1})

print(a * b)
print(b * a)

a = Mat(D, {(0,0):3, (0,1):1, (1,0):0, (1,1):2})
b = Mat(D, {(0,0):1, (0,1):1/6, (1,0):-2, (1,1):1/2})

print(a * b)
print(b * a)


D1 = (0,1,2),(0,1)
D2 = (0,1),(0,1,2)

a = Mat(D2, {(0,0):one, (0,1):0, (0,2):one, (1,0):0, (1,1):one})
b = Mat(D1, {(0,1):one, (1,1):one, (2,0):one, (2,1):one})

print(a * b)
print(b * a)

