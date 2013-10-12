from __future__ import division
import sys

class LinProg(object):
   def __init__(self, m, n, A, B, N, bs, z, c):
       self.m = m
       self.n = n
       self.A = A
       self.B = B
       self.N = N
       self.bs = bs
       self.z = z
       self.c = c

   def solve(self):
       counter = 0
       try:
           entering = self.entering()
           while entering is not None:
               leaving, score = self.leaving(entering)
               self.pivot(entering, leaving)
               counter += 1
               entering = self.entering()
           print self.z
           print counter
       except ValueError:
           print "UNBOUNDED"

   def pivot(self, entering, leaving):
       row_leaving = self.B.index(leaving)
       col_leaving = self.N.index(entering)

       print >>sys.stderr, 'Before pivoting', entering, leaving
       for row_i, var in enumerate(self.B):
           self.print_row(var)
       self.print_z()

       coeff = -self.A[row_leaving][col_leaving]
       factor = self.bs[row_leaving] / coeff
       #print "coefficient", coeff
       #print "factor", factor
       # now go over all the values in this row and divide
       # by the coefficient

       # adapt the column for the leaving variable
       #for i in range(len(self.A[row_leaving])):
       for i, var_col in enumerate(self.N):
           if i == col_leaving:
               self.A[row_leaving][i] = -1/coeff
           else:
               self.A[row_leaving][i] /= coeff
       self.bs[row_leaving] /= coeff

       # perform the pivot
       # print "pivot row", self.A[row_leaving]
       for row_i, var_row in enumerate(self.B):
           if row_i == row_leaving: continue
           coeff = self.A[row_i][col_leaving]
           # now adapt the rest
           # print "adapting", var_row, "coeff", coeff
           # print "row", self.A[row_i]
           self.bs[row_i] += self.bs[row_leaving] * coeff
           for col_i, var_col in enumerate(self.N):
               if col_i == col_leaving:
                   self.A[row_i][col_i] = coeff * self.A[row_leaving][col_i]
               else:
                   # print "original", self.A[row_i][col_i]
                   # print "adding", coeff, self.A[row_leaving][col_i]
                   self.A[row_i][col_i] += coeff * self.A[row_leaving][col_i]


       # adapt the z-row and the optimization target
       coeff = self.c[col_leaving]
       self.z += self.bs[row_leaving] * coeff
       for col_i, var_col in enumerate(self.N):
           if col_i == col_leaving:
               self.c[col_i] = coeff * self.A[row_leaving][col_i]
           else:
               self.c[col_i] += coeff * self.A[row_leaving][col_i]

       # now adapt the basic and non-basic variables
       self.B[row_leaving] = entering
       self.N[col_leaving] = leaving

       print >>sys.stderr, 'After pivoting'
       for row_i, var in enumerate(self.B):
           self.print_row(var)
       self.print_z()

   def print_z(self):
       print >>sys.stderr, "z  = %1.1f" % (self.z),
       for i, column in enumerate(self.N):
           value = self.c[i]
           print >>sys.stderr, "%s %1.1fx%s" % (("+" if value >= 0 else "-"), abs(value), column),
       print >>sys.stderr

   def print_row(self, variable):
       row_i = self.B.index(variable)
       row = self.A[row_i]
       print >>sys.stderr, "x%d = %1.1f" % (variable, self.bs[row_i]),
       for i, column in enumerate(self.N):
           value = row[i]
           print >>sys.stderr, "%s %1.1fx%s" % (("+" if row[i] >= 0 else "-"), abs(row[i]), column),
       print >>sys.stderr


   def entering(self):
       """Returns the first variable corresponding to c_i where c_i >= 0"""
       cs = [self.N[i] for i in range(len(self.c)) if self.c[i] > 0]
       #print self.N, self.c
       return min(cs) if cs else None

   def leaving(self, entering):
       j = self.N.index(entering)
       bounds = [self.bs[i]/-self.A[i][j] if self.A[i][j] < 0 else float('Inf') for i in range(self.m)]

       if all(bound == float('Inf') for bound in bounds):
           raise ValueError("Unbounded")
       lowest = min(bounds)
       #print bounds
       #print self.B
       #print self.bs
       idxs = [self.B[i] for i in range(len(bounds)) if bounds[i] == lowest]
       leaving = min(idxs)
       improvement = self.c[j] * lowest
       return leaving, self.z + improvement

if __name__ == '__main__':
    with open(sys.argv[1]) as f:
        def readline(conv=int):
            line = f.readline()
            return [conv(_) for _ in line.split() if _]
        m, n = readline()
        B = readline()
        N = readline()
        bs = readline(float)
        A = []
        for i in range(m):
            A.append(readline(float))
        obj = readline(float)
        z, c = obj[0], obj[1:]

        p = LinProg(m, n, A, B, N, bs, z, c)
        p.solve()

"""
6 3                             m = 6 and n = 3
4 5 6 7 8 9                     basic variables
1 2 3                           non-basic
-1.7 -0.4 -3.3 -4.8 0.7 1.0     b coefficients
-2.0 -0.1 4.5                   A_1
-5.1 4.3 -1.4                   A_2
4.6 5.8 1.3                     A_3
-5.0 2.9 0.7                    A_4
-3.5 -2.8 1.1                   A_5
-2.7 2.8 4.2                    A_6
0.0 3.2 -2.6 0.8                z + c
"""

