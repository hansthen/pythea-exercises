#!/usr/bin/env python

import re
import sys
import sre_compile
import sre_parse
from collections import Counter;

class Token(object):
    def __str__(self):
       if self.type == self.value:
           return "%d.%d: '%s'" % (self.lineno, self.lexpos, self.type)
       else:
           return "%d.%d: %s %s" % (self.lineno, self.lexpos, self.type, self.value)

class Scanner(object):
    """Based on F. Lund's scanner example in the `re` module.

       Added are functions to maintain different states and
       counters, e.g. for line numbers. The default implementation
       has an added linenumber counter"""

    def __init__(self, flags=0, **states):
        from sre_constants import BRANCH, SUBPATTERN
        self.states = states
        self.scanners = {}
        self.current_state = 'default'
        self.counter = Counter()

        # combine phrases into a compound pattern
        for state, lexicon in states.iteritems():
            p = []
            s = sre_parse.Pattern()
            for phrase, action in lexicon:
                p.append(sre_parse.SubPattern(s, [
                    (SUBPATTERN, (len(p)+1, sre_parse.parse(phrase, flags))),
                    ]))
            s.groups = len(p)+1
            p = sre_parse.SubPattern(s, [(BRANCH, (None, p))])
            self.scanners[state] = sre_compile.compile(p)

    def set_state(self, state):
        self.current_state = state
        self.match = self.scanners[state].match
        self.lexicon = self.states[state]
        return None

    def scan(self, string):
        self.string = string
        self.set('line', 1)
        self.set_state('default')
        self.i = 0
        while True:
            m = self.match(string, self.i)
            if not m:
                yield self.make_token('ERROR', string[self.i:])
                break;
            self.j = m.end()
            action = self.lexicon[m.lastindex-1][1]
            if hasattr(action, '__call__'):
                self.match_string = m
                action = action(self, m.group())
            if action is not None:
                yield action
            if self.i == self.j:
                break
            self.i = self.j

    def inc(self, string):
        self.counter[string] += 1
        return None

    def dec(self, string):
        self.counter[string] -= 1
        return self.counter[string]

    def get(self, string):
        return self.counter[string]

    def set(self, string, value):
        self.counter[string] = value;

    def make_token(self, type, string=None):
        token = Token()
        token.lineno = self.get('line')
        token.type = type
        if not string:
            token.value = type
        else:
            token.value = string
        token.lexpos = 0
        return token

line_no = r'#[0-9]+'
digits = r'[0-9]+'
filename = r'".*?"'
typ = r'[A-Z][a-zA-Z0-9_]*'
id = r'[a-z][a-zA-Z0-9_]*'
node = r'_[a-z][a-zA-Z0-9_]*'

default = [
    (node,                  lambda s, t: s.make_token(t)),
    (id,                    lambda s, t: s.make_token('ID', t)),
    (typ,                   lambda s, t: s.make_token('TYPEID', t)),
    (line_no,               lambda s, t: s.make_token('LINENO', t)),
    (digits,                lambda s, t: s.make_token('DIGITS', t)),
    (filename,              lambda s, t: s.make_token('FILENAME', t)),
    (r'\n',                 lambda s, t: s.inc('line')),
    (r'\s',                 lambda s, t: None), # ignore whitespace
    (r'.',                  lambda s, t: s.make_token(t)),
    (r'',                   lambda s, t: None), # ignore eof
]

"""
scanner = Scanner(default=default)

for filename in sys.argv[1:]:
    print '#name "%s"' % filename
    for token in scanner.scan(open(filename).read()):
        print '#%d %s %s' % (token.lineno, token.type, token.value)
"""
