#!/usr/bin/env python

import sys
from ply import yacc
from lex import Scanner

#-------------------------------------------------------------------------
# Setup the lexer definitions
#-------------------------------------------------------------------------

line_no = r'#[0-9]+'
digits = r'[0-9]+'
filename = r'".*?"'
typ = r'[A-Z][a-zA-Z0-9_]*'
id = r'[a-z][a-zA-Z0-9_]*'
node = r'_[a-z][a-zA-Z0-9_]*'

default = [
    (node,                  lambda s, t: s.make_token(t.upper(), t)),
    (id,                    lambda s, t: s.make_token('ID', t)),
    (typ,                   lambda s, t: s.make_token('TYPEID', t)),
    (line_no,               lambda s, t: s.set_lineno(t) or s.make_token('LINENO', t)),
    (digits,                lambda s, t: s.make_token('DIGITS', t)),
    (filename,              lambda s, t: s.set_filename(t) or s.make_token('FILENAME', t)),
    (r'\n',                 lambda s, t: s.inc('line')),
    (r'\s',                 lambda s, t: None), # ignore whitespace
    (r'.',                  lambda s, t: s.make_token(t)),
    (r'',                   lambda s, t: None), # ignore eof
]

tokens = ['ID', 'TYPEID', 'LINENO', 'DIGITS', 'FILENAME',
          '_PROGRAM', '_CLASS', '_ATTR', '_METHOD', '_FORMAL',
          '_NO_TYPE', '_NO_EXPR', '_COND', '_LOOP', '_BLOCK',
          '_ASSIGN', '_PLUS', '_MUL', '_DISPATCH',
          '_TYPCASE', '_BRANCH', '_LET', '_SUB', '_DIV',
          '_LT', '_LE', '_EQ', '_NEG', '_NEW', '_ISVOID', '_COMP',
          '_OBJECT', '_INT', '_BOOL', '_STRING']

class Lexer(Scanner):
    def __init__(self):
        Scanner.__init__(self, default=default)
        self.tokens = self.scan(sys.stdin.read())

    def set_filename(self, filename):
        self.filename = filename.strip('"')

    def set_lineno(self, lineno):
        self.lineno = int(lineno.strip('#'))

    def token(self):
        try:
            token = self.tokens.next()
            print token
            return token
        except StopIteration:
            return None

def ast(p, type, *values):
    return ('#%d' % p.lineno(1), type) + values

def add_file(c, filename):
    try:
        lineno, type, name, parent, features = c
    except:
        print "Error adding filename to the class", `c`
    return lineno, type, name, parent, '"%s"' % filename, features

def dump(node, level=0):
    if isinstance(node, str):
        print '%s%s' % (' ' * level, node)
    elif isinstance(node, bool):
        print '%s%s' % (' ' * level, int(node))
    elif node is None:
        print '%s%s' % (' ' * level, node)
    elif isinstance(node, list):
        for child in node:
            dump(child, level)
    elif len(node) < 2:
        print 'error'
        print '%s%s' % (' ' * level, node)
    else:
        lineno, type = node[:2]
        print '%s%s' % (' ' * level, lineno)
        print '%s%s' % (' ' * level, type)
        if type == '_program':
            for child in node[2]:
                dump(child, level + 2)
        elif type == '_class':
            for child in node[2:5]:
                dump(child, level + 2)
            dump('(', level + 2)
            dump(node[5], level + 2)
            dump(')', level + 2)
        elif type == '_method':
            dump(node[2], level + 2) # method name
            for formal in node[3]:
                dump(formal, level + 2)
            dump(node[4], level + 2) # return type
            dump(node[5], level + 2) # body
        elif type == '_block':
            for child in node[2:]:
                dump(child, level + 2)
        elif type == '_dispatch':
            dump(node[2], level + 2) # target
            dump(node[3], level + 2) # method name
            dump('(', level + 2)
            for actual in node[4]:
                dump(actual, level + 2)
            dump(')', level + 2)
        elif type == '_static_dispatch':
            dump(node[2], level + 2) # target
            dump(node[3], level + 2) # type
            dump(node[4], level + 2) # method name
            dump('(', level + 2)
            for actual in node[5]:
                dump(actual, level + 2)
            dump(')', level + 2)
        else:
            for child in node[2:]:
                dump(child, level + 2)
        if type not in ['_program', '_class', '_attr',
                        '_method', '_formal', '_branch']:
            dump(': _no_type', level)


errors = False

def p_error(p):
    global errors
    errors = True
    if p:
        print "\"%s\", line %d: syntax error at or near \"%s\"" % (p.lexer.filename, p.lexer.lineno, p.value)
    else:
        print "filename, line 0: syntax error at or near LOCATION"

def p_program(p):
    """program : LINENO _PROGRAM classes"""
    p[3] = [add_file(c, p.lexer.filename) for c in p[3]]
    p[0] = ast(p, '_program', p[3])


def p_classes(p):
    """classes : classes class
               | empty"""
    p[0] = []
    if len(p) == 3:
        p[0].extend(p[1])
        p[0].append(p[2])


def p_class(p):
    """class : LINENO _CLASS TYPEID TYPEID FILENAME '(' features ')'"""
    pass
    p[0] = ast(p, '_class', p[3], p[4], p[7])


def p_features(p):
    """features : features feature
                | empty"""
    p[0] = []
    if len(p) == 3:
        p[0].extend(p[1])
        p[0].append(p[2])


def p_feature(p):
    """feature : method
               | attr"""
    p[0] = p[1]

def p_method(p):
    """method : LINENO _METHOD ID formals TYPEID expr """
    p[0] = ast(p, '_method', p[3], p[4], p[5], p[6])


def p_attr(p):
    """attr : LINENO _ATTR ID TYPEID expr"""
    p[0] = ast(p, '_attr', p[3], p[4], p[5])


def p_formals(p):
    """formals : formals formal
               | empty"""
    p[0] = []
    if len(p) == 3:
        p[0].extend(p[1])
        p[0].append(p[2])

def p_formal(p):
    """formal : LINENO _FORMAL ID TYPEID"""
    p[0] = ast(p, '_formal', p[3], p[4])

def p_expr(p):
    """expr : LINENO inner_expr ':' TYPEID
            | LINENO inner_expr ':' _NO_TYPE"""
    p[0] = list(p[2])
    p[0].append(p[4])
    p[0] = tuple(p[0])

def p_inner_expr(p):
    """inner_expr : assign
                  | dispatch
                  | if_expr
                  | while_expr
                  | block
                  | let
                  | case_expr
                  | bin_op
                  | un_op
                  | ref
                  | no_expr """
    p[0] = p[1]

def p_no_expr(p):
    """no_expr : _NO_EXPR """
    p[0] = ast(p, p[1])

def p_assign(p):
    """assign : _ASSIGN ID expr """
    p[0] = ast(p, '_assign', p[2], p[3])

def p_dispatch(p):
    """dispatch : _DISPATCH expr ID '(' actuals ')'"""
    p[0] = ast(p, '_dispatch', p[2], p[3], p[5])

def p_actuals(p):
    """actuals : actuals expr
               | empty"""
    p[0] = []
    if len(p) == 3:
        p[0].extend(p[1])
        p[0].append(p[2])

def p_if_expr(p):
    """if_expr : _COND expr expr expr """
    p[0] = ast(p, '_cond', p[2], p[3], p[4])

def p_while_expr(p):
    """while_expr : _LOOP expr expr """
    p[0] = ast(p, '_loop', p[2], p[3])

def p_block(p):
    """block : _BLOCK expr_list """
    p[0] = ast(p, '_block', p[2])

def p_expr_list(p):
    """expr_list : expr_list expr
                 | empty """
    p[0] = []
    if len(p) == 3:
        p[0].extend(p[1])
        p[0].append(p[2])

def p_case_expr(p):
    """case_expr : _TYPCASE expr case_list """
    p[0] = ast(p, '_typcase', p[2], p[3])

def p_case_list(p):
    """case_list : case_list case
                 | empty"""
    p[0] = []
    if len(p) == 3:
        p[0].extend(p[1])
        p[0].append(p[2])

def p_case(p):
    """case : _BRANCH TYPEID expr"""
    p[0] = ast(p, '_branch', p[2], p[3])

def p_let(p):
    """let : _LET let_list"""
    p[0] = ast(p, '_let', p[2])

def p_let_list(p):
    """let_list : ID TYPEID expr expr """
    p[0] = ast(p, '_let', p[1], p[2], p[3], p[4])

def p_bin_op(p):
    """bin_op : _PLUS expr expr
              | _SUB expr expr
              | _MUL expr expr
              | _DIV expr expr
              | _LT expr expr
              | _LE expr expr
              | _EQ expr expr"""
    p[0] = ast(p, p[1], p[2], p[3])

def p_un_op(p):
    """un_op : _NEG expr
             | _NEW TYPEID
             | _ISVOID expr
             | _COMP expr"""
    p[0] = ast(p, p[1], p[2])

def p_ref(p):
    """ref : _OBJECT ID
           | _INT DIGITS
           | _BOOL DIGITS
           | _STRING FILENAME """

    p[0] = ast(p, p[1], p[2])

def p_empty(p):
    """empty :"""
    pass

if __name__ == '__main__':
    lexer = Lexer()
    parser = yacc.yacc(debug=0)
    result = parser.parse(lexer=lexer)
    print result

#    if errors:
#       print "Compilation halted due to lex and syntax errors"
#    else:
#       dump(result)
