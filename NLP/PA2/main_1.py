from __future__ import division
import json
import sys
from collections import defaultdict, Counter

if __name__ == '__main__':
    fname1 = sys.argv[1]
    V = Counter()
    nonterminals = Counter()
    unary = Counter()
    binary = Counter()
    with open(fname1) as counts:
        for line in counts:
            line = line.split()
            count, rule = line[:2]
            count = int(count)
            if rule == 'UNARYRULE':
                tag, word = line[2:]
                unary[(tag, word)] += count
                V[word] += count
            elif rule == 'BINARYRULE':
                tag, lhs, rhs = line[2:]
                binary[(tag, lhs, rhs)] += count
            elif rule == 'NONTERMINAL':
                tag = line[2]
                nonterminals[tag] += count
            else:
                print count, rule

    for word, count in V.items():
        if count < 5:
            V['_RARE_'] += count
            for tag in nonterminals:
                if unary[(tag, word)]:
                    unary[(tag, '_RARE_')] += unary[(tag, word)]
                    del unary[(tag, word)]
            del V[word]

    for tag, count in nonterminals.items():
        print count, 'NONTERMINAL', tag

    for (tag, word), count in unary.items():
        print count, 'UNARYRULE', tag, word

    for (tag, lhs, rhs), count in binary.items():
        print count, 'BINARYRULE', tag, lhs, rhs

