#!/usr/bin/env python

import re
import sys
import sre_compile
import sre_parse
from collections import Counter;

def caseless(string):
    l = []
    for c in string:
       if c.upper() != c.lower():
           l.append('[%s%s]' % (c.upper(), c.lower()))
       else:
           l.append('c')
    return r'('+''.join(l)+r')'

def keyword(string):
    return r'\b%s\b' % string

def decode(string):
    l = []
    i = iter(string)
    for ch in i:
        if ch == '\\':
            ch = i.next()
            if ch == 'n': l.append('\n'); continue;
            if ch == 'b': l.append('\b'); continue;
            if ch == 't': l.append('\t'); continue;
            if ch == 'f': l.append('\f'); continue;
        l.append(ch)
    return ''.join(l)

def encode(string):
    l = []
    i = iter(string)
    for ch in i:
        if ch == '\n': l.append('\\n')
        elif ch == '\b': l.append('\\b')
        elif ch == '\t': l.append('\\t')
        elif ch == '\f': l.append('\\f')
        elif ch == '"': l.append('\\"')
        elif ch == '\\': l.append('\\\\')
        elif ord(ch) < 32: l.append('\%03o' % ord(ch))
        elif ord(ch) > 128: l.append('\%03o' % ord(ch))
        else: l.append(ch)
    return ''.join(l)

class Scanner:
    """Based on F. Lund's scanner example in the `re` module."""
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
        while 1:
            m = self.match(string, self.i)
            if not m:
                yield `string[self.i:]`
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

    def start_string(self):
        self.start_of_string = (self.get('line'), self.i)
        self.set_state('in_string')
        return None

    def end_string(self):
        (line_no, i) = self.start_of_string
        self.set_state('default')
        string = self.string[i+1:self.j-1]
        string = decode(string)
        if '\x00' in string:
            return (line_no, 'ERROR', '"NULL character in string"')

        if len(string) > 1024:
            return (line_no, 'ERROR', '"String too long"')

        string = encode(string)
        return (line_no, 'STR_CONST', '"%s"' % string)

integer = r'[0-9]+'
type = r'[A-Z][a-zA-Z0-9_]*'
id = r'[a-z][a-zA-Z0-9_]*'

keywords = ['case',
           'esac',
           'of',
           'else',
           'fi',
           'if',
           'then',
           'class',
           'inherits',
           'in',
           'isvoid',
           'new',
           'let',
           'while',
           'pool',
           'loop',
           'not']

keywords = map(caseless, keywords)
keywords = map(keyword, keywords)

operators = r'[.@~*/+-<={}():]'

default = [
    # keywords, id's and constants
    ('|'.join(keywords),    lambda s, t: (s.get('line'), t.upper() )),
    (keyword('t'+caseless('rue')),   lambda s, t: (s.get('line'), 'BOOL_CONST', 'true')),
    (keyword('f'+caseless('alse')),  lambda s, t: (s.get('line'), 'BOOL_CONST', 'false')),
    (type,                  lambda s, t: (s.get('line'), 'TYPEID', t)),
    (id,                    lambda s, t: (s.get('line'), 'OBJECTID', t)),
    (integer,               lambda s, t: (s.get('line'), 'INT_CONST', t)),
    # strings
    (r'"',                  lambda s, t: s.start_string()),
    # keep track of newlines
    (r'\n',                 lambda s, t: s.inc('line')),
    # comments
    (r'\(\*',               lambda s, t: s.inc('nesting') or s.set_state('in_comment')),
    (r'\*\)',               lambda s, t: (s.get('line'), 'ERROR', '"Unmatched *)"')),
    (r'--(.*?)\n',          lambda s, t: s.inc('line')),
    (r'--(.*?)\Z',          lambda s, t: None),
    # operators
    ('=>',                  lambda s, t: (s.get('line'), 'DARROW')),
    ('<=',                  lambda s, t: (s.get('line'), 'LE')),
    ('<-',                  lambda s, t: (s.get('line'), 'ASSIGN')),
    (operators,             lambda s, t: (s.get('line'), "'%s'" % t)),
    # and the rest
    (r'\s',                 lambda s, t: None), # ignore whitespace
    (r'\\',                 lambda s, t: (s.get('line'), 'ERROR', '"\%s"' % t)),
    (r'.',                  lambda s, t: (s.get('line'), 'ERROR', '"%s"' % encode(t))),
    (r'',                   lambda s, t: None)
]

in_comment = [
    (r'\*\)',               lambda s, t: s.set_state('default') if s.dec('nesting') == 0 else None),
    (r'\(\*',               lambda s, t: s.inc('nesting')),
    (r'[^(*\n]+',           lambda s, t: None), # eat in chuncks
    (r'\*',                 lambda s, t: None), # eat the lone star
    (r'\(',                 lambda s, t: None), # eat the lone lparen
    (r'\n',                 lambda s, t: s.inc('line')),
    (r'\x00',               lambda s, t: (s.get('line'), 'ERROR', '"NULL character in comment"')),
    (r'',                   lambda s, t: (s.get('line'), 'ERROR', '"No matching closing comment"'))
]

in_string = [
    (r'"',                  lambda s, t: s.end_string()),
    (r'\\\\',               lambda scanner, token: None),  # hide escaped escape markers
    (r'\\\"',               lambda s, t: None),            # ignore escaped end of string
    (r'\\\n',               lambda scanner, token: None),  # escaped newlines are okay
    (r'\n',                 lambda s, t: s.set_state('default') or (s.get('line'), 'ERROR', '"Unterminated string constant"')),
    (r'.',                  lambda scanner, token: None),
    (r'',                   lambda s, t: s.set_state('default') or (s.get('line'), 'ERROR', '"Unterminated string constant"')),
]

scanner = Scanner(default=default, in_comment=in_comment, in_string=in_string)

for filename in sys.argv[1:]:
    print '#name "%s"' % filename
    for token in scanner.scan(open(filename).read()):
        if len(token) == 3:
            print '#%d %s %s' % token
        else:
            print '#%d %s' % token
