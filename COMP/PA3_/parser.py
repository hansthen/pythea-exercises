#!/usr/bin/env python

import sys
from ply import yacc

tokens = ['CLASS', 'ELSE', 'IF',
          'FI', 'IN', 'INHERITS', 'ISVOID',
          'LET', 'LOOP', 'POOL', 'THEN',
          'WHILE', 'CASE', 'ESAC', 'NEW',
          'NOT', 'ASSIGN', 'OF', 'LE',
          'DARROW', 'TYPEID', 'OBJECTID',
          'STR_CONST', 'INT_CONST', 'BOOL_CONST']

precedence = (
   ('left', 'ASSIGN'),
   ('left', 'NOT'),
   ('nonassoc', "<", "=", 'LE'),
   ('left', "+", "-"),
   ('left', "*", "/"),
   ('left', 'ISVOID'),
   ('left', "~"),
   ('left', "@"),
   ('left', "."),
)

class Token(object):
    pass

class Lexer(object):
    def __init__(self):
        self.file = iter(sys.stdin)
        line = self.file.next()
        line = line.split()
        self.filename = line[1].strip('"')

    def token(self):
        try:
            token = Token()
            line = self.file.next().strip()
            line = line.split(None, 2)
            token.lineno = int(line[0][1:])
            token.type = line[1].strip("'")
            token.value = line[2] if len(line) > 2 else token.type
            token.lexpos = 0
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
        print "\"%s\", line %d: syntax error at or near \"%s\"" % (p.lexer.filename, p.lineno, p.value)
    else:
        print "filename, line 0: syntax error at or near LOCATION"

def p_program(p):
    """program : classes"""
    p[1] = [add_file(c, p.lexer.filename) for c in p[1]]
    p[0] = ast(p, '_program', p[1])

def p_classes(p):
    """classes : class more_classes"""
    p[0] = []
    p[0].append(p[1])
    p[0].extend(p[2])

def p_more_classes(p):
    """more_classes : class more_classes
                    | empty"""
    p[0] = []
    if len(p) == 3:
        p[0].append(p[1])
        p[0].extend(p[2])

def p_class(p):
    """class : CLASS TYPEID inherits '{' features '}' ';' """
    p[0] = ast(p, '_class', p[2], p[3], p[5])

def p_inherits(p):
    """inherits : INHERITS TYPEID
                | empty"""
    if len(p) > 2:
        p[0] = p[2]
    else:
        p[0] = 'Object'

def p_features(p):
    """features : features feature
                | empty"""
    p[0] = []
    if len(p) == 3:
        p[0].extend(p[1])
        p[0].append(p[2])

def p_feature(p):
    """feature : method ';'
               | attr ';' """
    p[0] = p[1]

def p_feature_error(p):
    """feature : error ';'"""
    pass

def p_method(p):
    """method : OBJECTID '(' formals ')' ':' TYPEID '{' expr '}' """
    p[0] = ast(p, '_method', p[1], p[3], p[6], p[8])

def p_attr(p):
    """attr : OBJECTID ':' TYPEID
            | OBJECTID ':' TYPEID ASSIGN expr"""
    if len(p) == 4:
        p[0] = ast(p, '_attr', p[1], p[3], ast(p, '_no_expr'))
    else:
        p[0] = ast(p, '_attr', p[1], p[3], p[5])

def p_formals(p):
    """formals : formal more_formals
               | empty"""
    p[0] = []
    if len(p) == 3:
        p[0].append(p[1])
        p[0].extend(p[2])

def p_formal(p):
    """formal : OBJECTID ':' TYPEID"""
    p[0] = ast(p, '_formal', p[1], p[3])

def p_more_formals(p):
    """more_formals : ',' formal more_formals
                    | empty"""
    p[0] = []
    if len(p) == 4:
        p[0].append(p[2])
        p[0].extend(p[3])

def p_expr(p):
    """expr : assign
            | dispatch
            | static_dispatch
            | if_expr
            | while_expr
            | block
            | let
            | case_expr
            | bin_op
            | un_op
            | parens
            | ref"""
    p[0] = p[1]

def p_assign(p):
    """assign : OBJECTID ASSIGN expr """
    p[0] = ast(p, '_assign', p[1], p[3])

def p_dispatch(p):
    """dispatch : expr '.' OBJECTID '(' actuals ')'
                | OBJECTID '(' actuals ')'"""
    if len(p) > 5:
        p[0] = ast(p, '_dispatch', p[1], p[3], p[5])
    else:
        p[0] = ast(p, '_dispatch', ast(p, '_object', 'self'), p[1], p[3])

def p_dispatch_error(p):
    """dispatch : expr '.' OBJECTID '(' error ')'
                | OBJECTID '(' error ')'"""
    pass

def p_static_dispatch(p):
    """static_dispatch : expr '@' TYPEID '.' OBJECTID '(' actuals ')'"""
    p[0] = ast(p, '_static_dispatch', p[1], p[3], p[5], p[7])

def p_static_dispatchi_error(p):
    """static_dispatch : expr '@' TYPEID '.' OBJECTID '(' error ')'"""
    pass

def p_actuals(p):
    """actuals : expr more_actuals
               | empty"""
    p[0] = []
    if len(p) == 3:
        p[0].append(p[1])
        p[0].extend(p[2])

def p_more_actuals(p):
    """more_actuals : ',' expr more_actuals
                    | empty"""
    p[0] = []
    if len(p) == 4:
        p[0].append(p[2])
        p[0].extend(p[3])

def p_if_expr(p):
    """if_expr : IF expr THEN expr ELSE expr FI
               | IF expr THEN expr FI"""
    if len(p) > 6:
        p[0] = ast(p, '_cond', p[2], p[4], p[6])
    else:
        p[0] = ast(p, '_cond', p[2], p[4], ast(p, '_no_expr'))

def p_while_expr(p):
    """while_expr : WHILE expr LOOP expr POOL"""
    p[0] = ast(p, '_loop', p[2], p[4])

def p_block(p):
    """block : '{' expr_list '}'"""
    p[0] = ast(p, '_block', p[2])

def p_parens(p):
    """parens : '(' expr ')' """
    p[0] = p[2]

def p_expr_list(p):
    """expr_list : expr ';'
                 | expr_list expr ';'"""
    p[0] = []
    if len(p) == 3:
        p[0].append(p[1])
    elif len(p) == 4:
        p[0].extend(p[1])
        p[0].append(p[2])

def p_expr_list_error(p):
    """expr_list : error ';' """
    p[0] = []

def p_case_expr(p):
    """case_expr : CASE expr OF case_list ESAC"""
    p[0] = ast(p, '_typcase', p[2], p[4])

def p_case_expr_error(p):
    """case_expr : CASE error OF case_list ESAC"""
    pass

def p_case_list(p):
    """case_list : case ';' case_list
                 | empty"""
    p[0] = []
    if len(p) > 2:
        p[0].append(p[1])
        p[0].extend(p[3])

def p_case(p):
    """case : OBJECTID ':' TYPEID DARROW expr"""
    p[0] = ast(p, '_branch', p[1], p[3], p[5])

def p_let(p):
    """let : LET let_list"""
    p[0] = p[2]

def p_let_list(p):
    """let_list : OBJECTID ':' TYPEID ASSIGN expr ',' let_list
                | OBJECTID ':' TYPEID ASSIGN expr IN expr
                | OBJECTID ':' TYPEID IN expr
                | OBJECTID ':' TYPEID ',' let_list """
    if len(p) == 8:
       p[0] = ast(p, '_let', p[1], p[3], p[5], p[7])
    elif len(p) == 6:
       p[0] = ast(p, '_let', p[1], p[3], ast(p, '_no_expr'), p[5])
    else:
       p[0] = ast(p, '_let', p[1], p[3], ast(p, '_no_expr'), p[4])

def p_let_list_error(p):
    """let_list : error ',' let_list"""
    pass

def p_bin_op(p):
    """bin_op : plus
              | sub
              | mul
              | div
              | lt
              | le
              | eq"""
    p[0] = p[1]

def p_plus(p):
    """plus : expr '+' expr"""
    p[0] = ast(p, '_plus', p[1], p[3])

def p_sub(p):
    """sub : expr '-' expr"""
    p[0] = ast(p, '_sub', p[1], p[3])

def p_mul(p):
    """mul : expr '*' expr"""
    p[0] = ast(p, '_mul', p[1], p[3])

def p_div(p):
    """div : expr '/' expr"""
    p[0] = ast(p, '_divide', p[1], p[3])

def p_lt(p):
    """lt : expr '<' expr"""
    p[0] = ast(p, '_lt', p[1], p[3])

def p_le(p):
    """le : expr LE expr"""
    p[0] = ast(p, '_le', p[1], p[3])

def p_eq(p):
    """eq : expr '=' expr"""
    p[0] = ast(p, '_eq', p[1], p[3])

def p_un_op(p):
    """un_op : neg
             | new
             | isvoid
             | comp"""
    p[0] = p[1]

def p_neg(p):
    """neg : '~' expr"""
    p[0] = ast(p, '_neg', p[2])

def p_new(p):
    """new : NEW TYPEID"""
    p[0] = ast(p, '_new', p[2])

def p_isvoid(p):
    """isvoid : ISVOID expr"""
    p[0] = ast(p, '_isvoid', p[2])

def p_comp(p):
    """comp : NOT expr"""
    p[0] = ast(p, '_comp', p[2])

def p_ref(p):
    """ref : object
           | int
           | string
           | bool"""
    p[0] = p[1]

def p_object(p):
    """object : OBJECTID"""
    p[0] = ast(p, '_object', p[1])

def p_string(p):
    """string : STR_CONST"""
    p[0] = ast(p, '_string', p[1])

def p_int(p):
    """int : INT_CONST"""
    p[0] = ast(p, '_int', p[1])

def p_bool(p):
    """bool : BOOL_CONST"""
    p[0] = ast(p, '_bool', p[1] == 'true')

def p_empty(p):
    """empty :"""
    pass

lexer = Lexer()
parser = yacc.yacc(debug=0)
result = parser.parse(lexer=lexer)

if errors:
   print "Compilation halted due to lex and syntax errors"
else:
   dump(result)
