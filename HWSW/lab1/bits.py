def bitsAnd(x, y):
    print not (x ^ y or (not x or not y))

bitsAnd(True, False)
bitsAnd(True, True)
bitsAnd(False, False)
bitsAnd(False, True)

