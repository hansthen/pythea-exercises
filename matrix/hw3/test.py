from matutil import *
from ecc_lab import *

enc_1000 = G * Vec({0,1,2,3}, {0:one})
enc_0000 = G * Vec({0,1,2,3}, {})

print(R * enc_1001)
print(R * enc_1000)
print(R * enc_0000)
