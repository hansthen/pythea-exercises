from __future__ import division

import sys
from collections import defaultdict
from math import log
from itertools import product

target = sys.argv[1]
source = sys.argv[2]
output = sys.argv[3]

corpus_en = open('corpus.en')
corpus_es = open('corpus.es')

en_words = defaultdict(set)
t = defaultdict(float)

# initialization
for (en, es) in zip(corpus_en, corpus_es):
    for en_w in en.strip().split() + ['_NULL_']:
        for es_w in es.strip().split():
            en_words[en_w].add(es_w)

for en_w, es_words in en_words.items():
    n = len(es_words)
    for es_w in es_words:
        t[(es_w, en_w)] = 1/n


# now run EM algorithm

q = defaultdict(lambda: 1.0)
print 'starting EM for IBM model 2'
for iteration in xrange(1,5):
    print "running iteration", iteration
    c = defaultdict(int)
    c_2 = defaultdict(int)
    corpus_en = open('corpus.en')
    corpus_es = open('corpus.es')
    # Do the expectation step
    # TODO: check if I actually need the k loop variable
    for (k, (en, es)) in enumerate(zip(corpus_en, corpus_es)):
        en = en.strip().split()
        es = es.strip().split()
        # set the first word in the english sentence to null
        en.insert(0, '_NULL_')
        m = len(es)
        l = len(en)
        for i_0, es_w in enumerate(es):
            # change the base index
            i = i_0 + 1
            for j, en_w in enumerate(en):
                # calculate d
                d = (q[(j,i,l,m)] * t[(es_w, en_w)]) / sum(q[(j,i,l,m)] * t[(es_w, en_w)] for j, en_w in enumerate(en))
                c[(en_w, es_w)] += d
                c[en_w] += d
                c_2[(j,i,l,m)] += d  # TODO: hacky, I only use a separate dict here
                                     # because I need its keys later
                c[(i,l,m)] += d

    # Do the maximization step
    # TODO: See p. 21 of the book.
    print "starting maximization"
    for (es, en) in t:
        t[(es,en)] = c[(en,es)] / c[en]

    print "calculating q values"
    for (j,i,l,m) in c_2:
        q[(j,i,l,m)] = c_2[(j,i,l,m)] / c[(i,l,m)]

print 'done with model 2'
print 'start outputting alignments'

sent_en = open(target)
sent_es = open(source)

out = open(output, 'w')

for (k, (en, es)) in enumerate(zip(sent_en, sent_es)):
    en = en.strip().split()
    en.insert(0, '__NULL__')
    es = es.strip().split()
    l = len(en)
    m = len(es)
    for i_0 in xrange(0,len(es)):
        i = i_0 + 1
        a_i = max(xrange(0,len(en)), key=lambda j: q[(j,i,l,m)] * t[(es[i_0], en[j])])
        print >>out, k+1, a_i, i

