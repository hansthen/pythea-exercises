from __future__ import division
import sys
from collections import defaultdict, Counter
import itertools
from math import log

if __name__ == '__main__':
    # The input for this function should be the "counts" file.
    # e.g. counts.out
    fname1 = sys.argv[1]
    fname2 = sys.argv[2]
    fname3 = sys.argv[3]

    gram_1 = {}                # counts of unigrams
    gram_2 = {}                # counts of bigrams
    gram_3 = {}                # counts of the trigrams
    V = Counter()
    q = defaultdict(float)     # maximum likelihood (uses N-grams as key)
    c = Counter()              # counter (key=tag->word)

    NegInf = float('-inf')
    e = defaultdict(lambda: NegInf)     # emission prob. e(word|tag) = c(tag->word)/gram_1(tag)

    with open(fname1) as file:
        for line in file:
            line = line.split()
            count = int(line[0])
            typ = line[1]
            if typ == 'WORDTAG':
                tag, word = line[2:]
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
                q[(tag3,tag1,tag2)] = log(count / gram_2[(tag1,tag2)])

    # determine the available tags
    K = gram_1.keys()

    # remove rare words
    for word, count in V.items():
        if count < 5:
             for tag in K:
                 c[('_RARE_', tag)] += c[(word,tag)]
                 del c[(word,tag)]
             V['_RARE_'] += count
             del V[word]

    # calculate emission probs
    for word_tag in c.keys():
        e[word_tag] = log(c[word_tag] / gram_1[word_tag[1]])

    print c[('_RARE_','O')]
    print c[('_RARE_','I-GENE')]
    print gram_1['O']
    print gram_2[('*','*')]
    print gram_3[('*','*','O')]
    print q[('O','*','*')]
    print e[('_RARE_','O')]

    def prep(s):
        return [word if word in V else '_RARE_' for word in s]

    # The basic viterbi algorithm
    def dump(d, t, name=''):
        print "%s[%s] = %s" % (name,t,d[t])

    def viterbi(s):
        debug = ('In' == s[0]) and ('such' == s[1])
        s = prep(s)
        pi = {}
        bp = {}
        S = defaultdict(lambda: K)

        # do the initialization part (k=0)
        pi[(0,'*','*')] = 1.0
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
                        dump(pi, (k,u,v), "pi")
                    bp[(k,u,v)] = label

        labels = (n) * [None]

        # Below is debugging code can be removed after it is corrected
        try:
            max_labels = None
            max_prob = NegInf
            if debug:
                print "Testing", s
            for u in S[n-1]:
                for v in S[n]:
                    score = pi[n, u, v] + q['STOP', u, v]
                    if debug:
                        print "sentence prob for (%s,%s) = %g" % (u,v,score)
                    if score > max_prob:
                        max_labels = (u,v)
                        max_prob = score
            labels[n-2:n] = list(max_labels)
        except KeyError, error:
            print s, error
            # dirty hack
            #labels[n-2:n] = ['O', 'O']

        (u,v) = max(itertools.product(S[n-1],S[n]), key=lambda tupl: pi[n, tupl[0], tupl[1]] + q['STOP',tupl[0],tupl[1]])
        labels[n-2:n] = [u, v]

        for k in xrange(n-2,0,-1):
            labels[k-1] = bp[k+2,labels[k],labels[k+1]]

        return labels

    # fname2 should be gene.dev (or gene.key)
    with open(fname2) as infile:
        with open(fname3, 'w') as outfile:
            s = []
            for line in infile:
                line = line.strip()
                if line:
                    s.append(line)
                else:
                    try:
                        labels = viterbi(s)
                        for word, label in zip(s, labels):
                            print >>outfile, word, label
                        print >>outfile
                    except Exception, e:
                        print "Failed to tag", s, e
                        raise
                    s = []


