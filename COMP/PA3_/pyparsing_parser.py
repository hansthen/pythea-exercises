#!/usr/bin/env python

import sys
from pyparsing import *

digits = "0123456789"
filename = Regex(r'#name\s+"(.*?)"')

line_no = Word('#' + digits)
type = Regex(r"[A-Z][a-zA-Z0-9_]*")
id = Regex(r"[a-z][a-zA-Z0-9_]*")

INT_CONST  = line_no + 'INT_CONST' + Word(digits)
STR_CONST  = line_no + 'STR_CONST' + Regex(r'"(.*)"')
BOOL_CONST = line_no + 'BOOL_CONST' + 'TRUE' | 'FALSE'

CLASS     = line_no + 'CLASS'
TYPEID    = line_no + 'TYPEID' + type
OBJECTID  = line_no + 'OBJECTID' + id
INHERITS  = line_no + 'INHERITS'

CASE   = line_no + 'CASE'
ESAC   = line_no + 'ESAC'
OF     = line_no + 'OF'
ELSE   = line_no + 'ELSE'
FI     = line_no + 'FI'
IF     = line_no + 'IF'
THEN   = line_no + 'THEN'
IN     = line_no + 'IN'
ISVOID = line_no + 'ISVOID'
NEW    = line_no + 'NEW'
LET    = line_no + 'LET'
WHILE  = line_no + 'WHILE'
POOL   = line_no + 'POOL'
LOOP   = line_no + 'LOOP'
NOT    = line_no + 'NOT'

DOT       = line_no + "'.'"
AT        = line_no + "'@'"
TILDE     = line_no + "'~'"
STAR      = line_no + "'*'"
PLUS      = line_no + "'+'"
MINUS     = line_no + "'-'"
DIV       = line_no + "'/'"
LT        = line_no + "'<'"
EQUALS    = line_no + "'='"
LBRACE    = line_no + "'{'"
RBRACE    = line_no + "'}'"
LPAREN    = line_no + "'('"
RPAREN    = line_no + "')'"
COLON     = line_no + "':'"
SEMI      = line_no + "';'"
COMMA     = line_no + "','"

DARROW    = line_no + 'DARROW'
LE        = line_no + 'LE'
ASSIGN    = line_no + 'ASSIGN'

class_    = Forward()
expr      = Forward()

formal    = Forward()
block     = Forward()
attr      = Forward()
method    = Forward()


program   = filename + OneOrMore(class_)
feature   = attr | method
class_    << (CLASS + TYPEID + Optional( INHERITS + TYPEID ) + LBRACE + ZeroOrMore(feature) + RBRACE + SEMI)

attr      << (OBJECTID + COLON + TYPEID + Optional(ASSIGN + expr) + SEMI)
method    << (OBJECTID + LPAREN + ZeroOrMore(formal) + RPAREN + COLON + TYPEID + LPAREN + ZeroOrMore(expr + SEMI) + RPAREN + SEMI)
formal    << (OBJECTID + COLON + TYPEID)

assign    = OBJECTID + ASSIGN + expr

if_       = IF + expr + THEN + expr + Optional( ELSE + expr )
while_    = WHILE + expr + LOOP + expr + POOL
block     << (LBRACE + OneOrMore(expr + SEMI) + RBRACE)

let       = LET + OBJECTID + COLON + TYPEID + Optional(ASSIGN + expr) + \
            Optional(OneOrMore(COMMA + OBJECTID + COLON + TYPEID + Optional(ASSIGN + expr))) + \
            IN + expr

case      = CASE + expr + OF + OneOrMore(OBJECTID + COLON + TYPEID + DARROW + expr + SEMI) + ESAC
new       = NEW + TYPEID
isvoid    = ISVOID + expr
binop     = expr + (PLUS | MINUS | STAR | DIV | LE | LT | EQUALS) + expr
unop      = Or(TILDE, NOT) + expr

obj_      = OBJECTID
int_      = INT_CONST
bool_     = BOOL_CONST
string_   = STR_CONST

rel       = Forward()
dispatch  = Forward()
dispatch1 = Forward()
factor    = Forward()
term      = Forward()
assign_expr = Forward()

target    = rel + Optional(AT + TYPEID) + DOT
dispatch  << OBJECTID + LPAREN + Optional(expr + ZeroOrMore(COMMA + expr)) + RPAREN
dispatch1 << target + dispatch

rel       << (term + ZeroOrMore(LE | LT | EQUALS + term))
term      << (factor + ZeroOrMore(STAR | DIV + factor))


factor    << (Optional(NOT) + assign_expr)
terminal  = (INT_CONST | BOOL_CONST | STR_CONST |
             block | if_ | while_ | case | new |
             let)

assign_expr << (assign | terminal)

expr      << (dispatch | rel)

try:
    result = program.parseFile(sys.stdin)
    print result
except Exception, e:
    print e, dir(e)
    print e.parserElement, e.line






