import itertools

data = {'ABCD',
        'CABD',
        'ACDB',
        'DACB',
        'BCDA',
        'ACBD',
        'ADCB',
        'CDAB',
        'DABC',
        'BCAD',
        'CADB',
        'CDBA',
        'CBAD',
        'ABDC',
        'ADBC',
        'BDCA',
        'DCBA',
        'BACD',
        'BADC',
        'BDAC',
        'CBDA',
        'DBCA',
        'DCAB'}

perms = set(''.join(t) for t in itertools.permutations("ABCD"))
print perms - data
