from __future__ import division
import json
import sys
from collections import defaultdict, Counter
from math import log, e
import logging
import json

if __name__ == '__main__':
    fname1 = sys.argv[1] # e.g. cfg.counts
    fname2 = sys.argv[2] # e.g. parse_dev.dat
    fname3 = sys.argv[3] # e.g. output file

    # several counters
    Sigma = Counter()           # Vocabulary
    N = Counter()               # non-terminals (=tags)
    R1 = Counter()              # terminals (unary)
    R2 = Counter()              # terminals (binary)
    R2_X = defaultdict(list)    # to make it quicker

    NegInf = float('-inf')
    q = defaultdict(lambda: NegInf)
    with open(fname1) as counts:
        for line in counts:
            line = line.split()
            count, rule = line[:2]
            count = int(count)
            if rule == 'UNARYRULE':
                tag, word = line[2:]
                R1[(tag, word)] += count
                Sigma[word] += count
            elif rule == 'BINARYRULE':
                tag, lhs, rhs = line[2:]
                R2[(tag, lhs, rhs)] += count
                R2_X[tag].append((lhs,rhs))
            elif rule == 'NONTERMINAL':
                tag = line[2]
                N[tag] += count
            else:
                print count, rule

    for word, count in Sigma.items():
        if count < 5:
            Sigma['_RARE_'] += count
            for tag in N:
                if R1[(tag, word)]:
                    R1[(tag, '_RARE_')] += R1[(tag, word)]
                    del R1[(tag, word)]
            del Sigma[word]

    for rule, count in R1.items() + R2.items():
        q[rule] = log(count / N[rule[0]])

    def cky(sentence):
        """Implement the CKY parsing algorithm

           As described in coursera NLP (2013)"""
        def prep(sentence):
            return [word if word in Sigma else '_RARE_' for word in sentence]

        orig = sentence
        sentence = prep(sentence)

        n = len(sentence)
        pi = defaultdict(lambda: NegInf)
        bp = defaultdict(lambda: None)
        # do the initialization
        for i in xrange(1,n+1):
            # print '----- Initializing pi value for word %d: "%s" ------------' % (i, orig[i-1])
            for X in N:
                if (X,sentence[i-1]) in R1:
                    pi[(i,i,X)] = q[(X,sentence[i-1])]
                    bp[(i,i,X)] = (X)
                    # print 'pi(%d,%d,%s)=%g' % (i, i, X, e ** pi[(i,i,X)])
                else:
                    pi[(i,i,X)] = q[(X,sentence[i-1])] = NegInf
                    bp[(i,i,X)] = None

        for l in xrange(1,n):
            for i in xrange(1,n-l+1):
                j = i + l
                # print 'word %d to %d' % (i, j)
                for X in N:
                    max_rule = None
                    max_value = NegInf
                    for rule in R2_X[X]:
                        #if not rule[0] == X: continue
                        Y,Z = rule
                        for s in xrange(i,j):
                            # we add, since we are in logspace
                            score = q[(X,Y,Z)] + pi[(i,s,Y)] + pi[(s+1,j,Z)]
                            if score > max_value:
                                max_value = score
                                max_rule = ((X,Y,Z), s)
                    if max_rule:
                        rule, s = max_rule
                        # print 'pi(%d,%d,%s)=%g: rule=%s, split=%d' % (i,j,X, e**max_value, rule, s)
                    pi[(i,j,X)] = max_value
                    bp[(i,j,X)] = max_rule

        # print "--------------------------------"
        # print "length of sentence is", n

        def maketree(i, j, rule):
            if i == j:
                return [rule, orig[i-1]]
            (rule, lhs, rhs), s = bp[(i,j,rule)]
            lhs = maketree(i,s,lhs)
            rhs = maketree(s+1,j,rhs)
            return [rule, lhs, rhs]

        root = maketree(1,n,'SBARQ')
        return root

    with open(fname2) as data, open(fname3, 'w') as out:
        for line in data:
            line = line.split()
            print >>out, json.dumps(cky(line))

