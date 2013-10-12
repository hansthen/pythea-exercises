from __future__ import division
import sys
from collections import defaultdict, Counter

if __name__ == '__main__':
    # The input for this function should be the "counts" file.
    fname1 = sys.argv[1]
    counter = defaultdict(Counter) # stores counts
    y = defaultdict(int)
    with open(fname1) as file:
        for line in file:
            line = line.split()
            count = int(line[0])
            typ = line[1]
            if typ == 'WORDTAG':
                tag, word = line[2:]
                if count < 5:
                    word = '_RARE_'
                counter[word][tag] += count
            elif typ == '1-GRAM':
                count, _, tag = line
                y[tag] = int(count)

    tags = y.keys()
    # The input for this should be the file we want tagged.
    fname2 = sys.argv[2]
    with open(fname2) as file:
        for line in file:
            word = line.strip()
            if not word:
                print
                continue
            if word in counter:
                tag = max(tags, key=lambda tag: counter[word][tag]/y[tag])
                print word, tag
            else:
                tag = max(tags, key=lambda tag: counter['_RARE_'][tag]/y[tag])
                print word, tag


