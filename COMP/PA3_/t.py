import sys

tokens = ('CLASS', 'IF', 'TYPEID')

# Tokens

# Ignored characters
t_ignore = " \t\r"

def t_CLASS(t):
    r'(?i)CLASS'
    t.value = None
    return t

def t_IF(t):
    r'IF'
    t.value = None

t_TYPEID = r'[A-Z][a-z]*'

def t_error(t):
    print("Illegal character '%s'" % t.value[0])
    t.lexer.skip(1)

# Build the lexer
import ply.lex as lex
lex.lex()

# Parsing rules

class Token(object):
    pass

class Lexer(object):
    def __init__(self):
        self.file = iter(sys.stdin)
        line = self.file.next()
        line = line.split()
        filename = line[1].strip('"')

    def input(self, string):
        pass

    def token(self):
        token = Token()
        try:
            line = self.file.next()
            line = line.split(None, 3)
            token.lineno = int(line[0][1:])
            token.type = line[1].strip("'")
            token.value = line[2] if len(line) > 2 else token.type
            token.lexpos = 0
            print token.lineno, token.type, token.value
            return token
        except StopIteration:
            return None

lexer = Lexer()

def p_program(p):
    '''program : CLASS TYPEID '{' TYPEID '}' ';' '''
    print p

def p_error(p):
    print("Syntax error at '%s'" % repr(p)) #p.value)

import ply.yacc as yacc
parser = yacc.yacc()
print yacc.parse(lexer=lexer)
