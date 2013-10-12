from itertools import product

def func(eax, i2):
    array = [0xa, 0x2, 0xe, 0x7, 0x8, 0xc, 0xf, 0xb, 0, 4, 1, 0xd, 3, 9, 6, 5]
    ecx = 0
    edx = 0
    eax = eax & 0xf
    # label here
    while True:
        edx += 1
        eax = array[eax]
        ecx += eax
        if eax == 0xf:
            break
        else:
            continue
    if edx != 0xc:
        print "edx = ", edx
        return False
    elif ecx != i2:
        print "ecx = ", ecx
        return False
    else:
        print "Success"
        return True

for (i,j) in product(xrange(0,255), xrange(0,255)):
    print i,j
    if func(i,j):
        break



