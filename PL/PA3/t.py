x = []
y = []

for i in range (10):
    if i == 5:
        y.append(x)
        del x[3]
    x.append(i)

print (x)
print (y)
