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
    V = Counter()              # counts of Vocabulary
    c = Counter()              # counter (key=tag->word)
    NegInf = float('-inf')
    q = defaultdict(float)          # maximum likelihood (uses N-grams as key)
    e = defaultdict(lambda: NegInf) # emission prob. e(word|tag) = c(tag->word)/gram_1(tag)

    with open(fname1) as file:
        for line in file:
            line = line.split()
            count = int(line[0])
            typ = line[1]
            # setup the probabilities
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
        def replace(newclass):
            for tag in K:
                c[(newclass, tag)] += c[(word,tag)]
                del c[(word,tag)]
            V[newclass] += count
            del V[word]

        if count < 5:
            if word.isalnum() and not word.isalpha():
                replace('_NUMERIC_')
            elif word.upper() == word:
                replace('_ALLCAPS_')
            elif word[-1].isupper():
                replace('_LASTCAP_')
            else:
                replace('_RARE_')

    # calculate emission probs
    for word_tag in c.keys():
        e[word_tag] = log(c[word_tag] / gram_1[word_tag[1]])

    print 'rare O     ', c[('_RARE_','O')]
    print 'rare I-GENE', c[('_RARE_','I-GENE')]
    print 'rare       ', V['_RARE_']
    print 'num  O     ', c[('_NUMERIC_','O')]
    print 'num  I-GENE', c[('_NUMERIC_','I-GENE')]
    print 'caps O     ', c[('_ALLCAPS_','O')]
    print 'caps I-GENE', c[('_ALLCAPS_','I-GENE')]
    print 'lcap O     ', c[('_LASTCAP','O')]
    print 'lcap I-GENE', c[('_LASTCAP_','I-GENE')]
    print gram_1['O']
    print gram_2[('*','*')]
    print gram_3[('*','*','O')]
    print q[('O','*','*')]
    print e[('_RARE_','O')]

    def prep(s):
        def replace(word):
            if word.isalnum() and not word.isalpha():
                return '_NUMERIC_'
            elif word.upper() == word:
                return '_ALLCAPS_'
            elif word[-1].isupper():
                return '_LASTCAP_'
            else:
                return '_RARE_'

        return [word if word in V else replace(word) for word in s]

    # The basic viterbi algorithm
    def dump(d, t, name=''):
        print "%s[%s] = %s" % (name,t,d[t])

    def viterbi(s):
        s = prep(s)
        pi = {}                      # pi contains the state transition
                                     # probs at position n, s1, s2
        bp = {}                      # backpointers (n, s1, s2) = label
                                     # means, that label will follow s1, s2 at
                                     # position n
        S = defaultdict(lambda: K)   # allowed keys at position n

        # do the initialization part (k=0)
        pi[(0,'*','*')] = 1.0
        S[-1] = ['*']
        S[0] = ['*']
        n = len(s)

        # here v is always the label of the word under consideration
        # u is the label of the word before that
        # NB: w is the label of the word before that
        for k in xrange(1,n+1):
            for (u,v) in itertools.product(S[k-1],S[k]):
                label = max(S[k-2], key=lambda w: pi[(k-1,w,u)] + q[(v,w,u)] + e[(s[k-1],v)])
                pi[(k,u,v)] = pi[(k-1,label,u)] + q[(v,label,u)] + e[(s[k-1],v)]
                if debug:
                    dump(pi, (k,u,v), "pi")
                bp[(k,u,v)] = label

        # initialize the labels array
        labels = (n) * [None]

        # now find the highest probability for the last two words of the sentence
        (u,v) = max(itertools.product(S[n-1],S[n]),
                    key=lambda t: pi[n, t[0], t[1]] + q['STOP',t[0],t[1]])
        labels[n-2:n] = [u,v]

        # fill in the labels backwards
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


