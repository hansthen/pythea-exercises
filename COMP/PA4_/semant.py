#!/usr/bin/env python
import sys
from pyparsing import *

digits = "0123456789"
line_no = Word('#' + digits)
filename = Regex(r'".*?"')
typ = Regex(r"[A-Z][a-zA-Z0-9_]*")
id = Regex(r"[a-z][a-zA-Z0-9_]*")

expr      = Forward()
end_expr  = Literal(':') + (Literal('_no_type') | typ)

formal    = Forward()
attr      = Group(line_no + '_attr' + id + typ + expr)
method    = Group(line_no + '_method' + id + OneOrMore(formal) + typ + expr)
formal   << Group(line_no + '_formal' + id + typ)

assign    = '_assign' + id + expr
disp      = '_dispatch' + expr + id + Suppress('(') + ZeroOrMore(expr) + Suppress(')')
block     = '_block' + OneOrMore(expr)
if_       = '_if' + expr + expr + expr
while_    = '_while' + expr + expr
let       = '_let' + id + typ + expr + expr
typcase   = '_typcase' + expr + expr
new       = '_new' + typ
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

expr     << Group( line_no + (assign | disp | block| if_| while_|
                         let| new| isvoid| plus| sub|
                         mul| div| neg| lt| le| eq| comp| typcase|
                         obj_| int_| bool_ | no_expr) + end_expr )

feature   = attr | method
class_    = Group(line_no + '_class' + typ + typ + filename + Suppress('(') + Group(OneOrMore(feature)) + Suppress(')'))
program   = Group(line_no + '_program' + OneOrMore(class_))

try:
    result = program.parseFile(sys.stdin)
    print ">>", result.dump()

except Exception, e:
    print e, dir(e)
    print e.parserElement, e.line

