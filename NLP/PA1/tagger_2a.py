from __future__ import division
import sys
from collections import defaultdict, Counter
import itertools
from math import log
import math

if __name__ == '__main__':
    # The input for this function should be the "counts" file.
    # e.g. counts.out
    fname1 = sys.argv[1]
    gram_1 = {}                # counts of unigrams
    gram_2 = {}                # counts of bigrams
    gram_3 = {}                # counts of the trigrams
    V = Counter()
    q = defaultdict(float)     # maximum likelihood (uses N-grams as key)
    c = Counter()              # counter (key=tag->word)
    e = defaultdict(lambda: float("-inf"))     # emission prob. e(word|tag) = c(tag->word)/gram_1(tag)

    with open(fname1) as file:
        for line in file:
            line = line.split()
            count = int(line[0])
            typ = line[1]
            if typ == 'WORDTAG':
                tag, word = line[2:]
                if count < 5:
                    word = '_RARE_'
                c[(word,tag)] += count
                V[word] += count
            elif typ == '1-GRAM':
                tag = line[2]
                gram_1[tag] = count
            elif typ == '2-GRAM':
                tag1, tag2 = line[2:]
                gram_2[(tag1,tag2)] = count
            elif typ == '3-GRAM':
                tag1, tag2, tag3 = line[2:]
                gram_3[(tag1,tag2,tag3)] = count
                prob = count / gram_2[(tag1,tag2)]
                q[(tag3,tag1,tag2)] = log(prob)

    # calculate emission probs
    K = gram_1.keys()
    for word_tag in c.keys():
        prob = c[word_tag] / gram_1[word_tag[1]]
        e[word_tag] = log(prob)

    # The input for this should be the file we want tagged.
    fname2 = sys.argv[2]

    def prep(s):
        return [word if word in V else '_RARE_' for word in s]

    # The basic viterbi algorithm
    def viterbi(s):
        debug = (s[0] == 'STAT5A')
        s = prep(s)
        pi = {}
        bp = {}
        S = defaultdict(lambda: K)

        # do the initialization part (k=0)
        pi[(0,'*','*')] = 0.0 # = log(1.0)
        S[-1] = ['*']
        S[0] = ['*']
        n = len(s)

        # here v is always the label of the word under consideration
        # and u is the label of the word before that
        for k in xrange(1,n+1):
            for u in S[k-1]:
                for v in S[k]:
                    label = max(S[k-2], key=lambda w: pi[(k-1,w,u)] + q[(v,w,u)] + e[(s[k-1],v)])
                    pi[(k,u,v)] = pi[(k-1,label,u)] + q[(v,label,u)] + e[(s[k-1],v)]
                    if debug:
                        logprob = pi[(k,u,v)]
                        print "pi[(%d,%s,%s)] = %f,%f" % (k,u,v,logprob, math.e**logprob)

                    bp[(k,u,v)] = label

        labels = (n) * [None]

        (u,v) = max(itertools.product(S[n-2],S[n-1]), key=lambda tupl: pi[n-1, tupl[0], tupl[1]] + q['STOP',tupl[0],tupl[1]])
        labels[n-2:n] = [u,v]

        for k in xrange(n-2,0,-1):
            labels[k-1] = bp[k+2,labels[k],labels[k+1]]

        if debug: sys.exit(1)
        return labels

    # fname2 should be gene.dev (or gene.key)
    with open(fname2) as file:
        s = []
        n = 0
        for line in file:
            line = line.strip()
            if line:
               s.append(line)
            else:
               n += 1
               try:
                   labels = viterbi(s)
                   for word, label in zip(s, labels):
                       print word, label
                   print
               except Exception, e:
                   print "Failed to tag", s
                   print e
                   raise
               s = []


