from collections import defaultdict
B = ' '
L = -1
R = 1

class PDA(object):
    def __init__(self, Q, Sigma, Gamma, delta, q0, Z0, F):
        assert q0 in Q
        assert B in Sigma
        assert Z0 in Gamma
        #assert tape[0] == B
        #assert tape[-1] == B

        self.Q = Q              # the states
        self.Sigma = Sigma      # the input alphabet
        self.Gamma = Gamma      # the stack alphabet
        self.delta = lambda q,tok, c: delta[(q,tok,c)] if (q,tok,c) in delta else None
        self.state = q0         # the start state
        self.F = F              # the final states
        self.stack = [Z0]       # the stack

        # conventions during the lectures:
        # a,b,c         input symbols
        # X,Y,X         stack symbols
        # w,x,y         strings of input symbols
        # alpha, beta   strings of stack symbols

        # L(P) is the set of languages in which the PDA will go to a final state
        # N(P) is the set of languages in which the PDA will empty its stack (e.g. consume Z0)
        # if L = L(P) then there is some PDA P' such that
        #    L = N(P')
        # if L = N(P) then there is some PDA P'' such that
        #    L = L(P'')
        transition = self.delta(self.state, self.token(), self.stack[-1])
        while transition:
            q, stack = transition
            self.state = q
            self.stack.pop()
            for symbol in reversed(stack):
                self.stack.append(symbol)
            transition = self.delta(self.state, self.token(), self.stack[-1])
        print "halt"
        print ''.join([self.tape[i] for i in sorted(self.tape.keys())])


    def id(self):
        return self.state, self.remaining, reversed(self.stack)


