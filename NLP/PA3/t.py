def func4(edi):
    eax = 1
    if edi <= 0x1:
       return eax
    else:
       eax = func4(edi - 1)
       ebp = eax
       eax = func4(edi - 2)
       eax = eax + ebp
       return eax

for i in xrange(0, 10):
    print func4(i)
