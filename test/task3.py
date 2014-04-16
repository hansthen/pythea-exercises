for i in range(0, 10000):
    if not ((i / 10 % 111 == 0) or (i % 1000 % 111 == 0)):
        print "%04d" % i
