from collections import Counter
file = open('da.txt')

c = Counter()
for line in file:
    line = line.split()
    cat = line[4]
    c[cat] += 1

print c
