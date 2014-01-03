from collections import defaultdict
B = ' '
L = -1
R = 1

class M(object):
    def __init__(self, Q, Sigma, Gamma, delta, q0, tape):
        assert q0 in Q
        assert B in Sigma
        #assert tape[0] == B
        #assert tape[-1] == B

        self.Q = Q
        self.Sigma = Sigma
        self.Gamma = Gamma
        self.delta = lambda q,c: delta[(q,c)] if (q,c) in delta else None
        self.state = q0
        # A bit hackish, I would really want an infinite list
        self.tape = defaultdict(lambda: ' ')
        for i, c in enumerate(tape):
            self.tape[i] = c

        self.position = 0

        print self.id()
        transition = self.delta(self.state, self.tape[self.position])
        while transition:
            q, out, move = transition
            self.state = q
            self.tape[self.position] = out
            self.position += move
            transition = self.delta(self.state, self.tape[self.position])
            raw_input(self.id())
        print "halt"
        print ''.join([self.tape[i] for i in sorted(self.tape.keys())])

    def id(self):
        tape = [self.tape[i] for i in sorted(self.tape.keys())]
        tape.insert(self.position, `self.state`)
        return ''.join(tape)

if __name__ == '__main__':
    copy = M({'q0', 'q1', 'q2', 'q3', 'q4', 'q5', 'q6', 'q7'},
             {B, 'a', 'b', 'X', 'Y'},
             {'a', 'b'},
             {('q0', B): ('q1', B, R),
              ('q1', B): ('q7', B, L),
              ('q1', 'a'): ('q2', 'X', R),
              ('q1', 'b'): ('q5', 'Y', R),
              ('q2', 'a'): ('q2', 'a', R),
              ('q2', 'b'): ('q2', 'b', R),
              ('q2', B): ('q3', B, R),
              ('q3', 'a'): ('q3', 'a', R),
              ('q3', 'b'): ('q3', 'b', R),
              ('q3', B): ('q4', 'a', L),
              ('q4', 'a'): ('q4', 'a', L),
              ('q4', 'b'): ('q4', 'b', L),
              ('q4', B): ('q4', B, L),
              ('q4', 'X'): ('q1', 'X', R),
              ('q4', 'Y'): ('q1', 'Y', R),
              ('q5', 'a'): ('q5', 'a', R),
              ('q5', 'b'): ('q5', 'b', R),
              ('q5', B): ('q6', B, R),
              ('q6', 'a'): ('q6', 'a', R),
              ('q6', 'b'): ('q6', 'b', R),
              ('q6', B): ('q4', 'b', L),
              ('q7', 'X'): ('q7', 'a', L),
              ('q7', 'Y'): ('q7', 'b', L)
             },
             'q0',
              ' abba ')



