from yacc import Parser

grammar = [
  ("start : program",
   lambda p: p[1])]

parser = Parser(tokens=['program'], grammar=grammar)

print parser.pinfo
