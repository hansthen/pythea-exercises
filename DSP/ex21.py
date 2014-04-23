from __future__ import division

s = 0
n = 1

while True:
    extra = 1 / 3 ** n
    n += 1
    s += extra
    print s, extra
    raw_input()
