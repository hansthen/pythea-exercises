#!/usr/bin/env python

import sys
from pyparsing import Word, alphas, OneOrMore, ZeroOrMore, Literal, Regex, Forward, Or

digits = "0123456789"
line_no = Word('#' + digits)
filename = Regex(r'".*?"')
type = Regex(r"[A-Z][a-zA-Z0-9_]*")
id = Regex(r"[a-z][a-zA-Z0-9_]*")


expr      = Forward()
end_expr  = Literal(':') + (Literal('_no_type') | type)

formal    = Forward()
attr      = line_no + '_attr' + id + type + expr
method    = line_no + '_method' + id + OneOrMore(formal) + type + expr
formal   << line_no + '_formal' + id + type

assign    = '_assign' + id + expr
disp      = '_dispatch' + expr + id + '(' + ZeroOrMore(expr) + ')'
block     = '_block' + OneOrMore(expr)
if_       = '_if' + expr + expr + expr
while_    = '_while' + expr + expr
let       = '_let' + id + type + expr + expr
#case      = '_case' + expr + expr
new       = '_new' + type
isvoid    = '_isvoid' + expr
plus      = '_plus' + expr + expr
sub       = '_sub' + expr + expr
mul       = '_mul' + expr + expr
div       = '_div' + expr + expr
neg       = '_neg' + expr                        # ~ expr
lt        = '_lt' + expr + expr
le        = '_le' + expr + expr
eq        = '_eq' + expr + expr
comp      = '_comp' + expr + expr                # not expr
obj_      = '_object' + id
int_      = '_int' + OneOrMore(digits)
bool_     = '_bool' + Or('1', '0')
no_expr   = Literal('_no_expr')

expr     << line_no + (assign | disp | block| if_| while_|
                         let| new| isvoid| plus| sub|
                         mul| div| neg| lt| le| eq| comp|
                         obj_| int_| bool_ | no_expr) + end_expr

feature   = attr | method
class_    = line_no + '_class' + type + type + filename + '(' + OneOrMore(feature) + ')'
program   = line_no + '_program' + OneOrMore(class_)


try:
    result = program.parseFile(sys.stdin)
    print result
except Exception, e:
    print e, dir(e)
    print e.parserElement, e.line






