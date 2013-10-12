from image_mat_util import *

from mat import Mat
from matutil import *
from vec import Vec

from solver import solve

## Task 1
def move2board(v):
    '''
    Input:
        - v: a vector with domain {'y1','y2','y3'}, the coordinate representation of a point q.
    Output:
        - A {'y1','y2','y3'}-vector z, the coordinate representation
          in whiteboard coordinates of the point p such that the line through the
          origin and q intersects the whiteboard plane at p.
    '''
    y1 = v['y1']
    y2 = v['y2']
    y3 = v['y3']
    return Vec({'y1','y2','y3'}, {'y1': y1/y3, 'y2':y2/y3, 'y3':y3/y3})

## Task 2
def make_equations(x1, x2, w1, w2):
    '''
    Input:
        - x1 & x2: photo coordinates of a point on the board
        - y1 & y2: whiteboard coordinates of a point on the board
    Output:
        - List [u,v] where u*h = 0 and v*h = 0
    '''
    domain = {(a, b) for a in {'y1', 'y2', 'y3'} for b in {'x1', 'x2', 'x3'}}
    u = Vec(domain, {('y3','x1'):w1*x1,('y3','x2'):w1*x2,('y3','x3'):w1,('y1','x1'):-x1,('y1','x2'):-x2,('y1','x3'):-1})
    v = Vec(domain, {('y3','x1'):w2*x1,('y3','x2'):w2*x2,('y3','x3'):w2,('y2','x1'):-x1,('y2','x2'):-x2,('y2','x3'):-1})
    return [u, v]


## Task 3
points = [(358,36), (329,597), (592,157), (580,483)]
domain = {(a, b) for a in {'y1', 'y2', 'y3'} for b in {'x1', 'x2', 'x3'}}
w = Vec(domain, {('y1', 'x1'): 1})

# create an L matrix
L = []
for point in points:
    x1, x2 = point
    y = Vec({'y1', 'y2', 'y3'}, {'y1': x1, 'y2': x2, 'y3': 1})
    y = move2board(y)
    w1 = y['y1']
    w2 = y['y2']
    u, v = make_equations(x1, x2, w1, w2)
    L.append(u)
    L.append(v)
L.append(w)
#for l in L:
#    print(l)

L = rowdict2mat(L)
b = Vec(set(range(9)), {8:1})
h = solve(L, b)
print(b)
print(h)
print(L*h)
H = Mat(({'x1', 'x2', 'x3'},{'y1', 'y2', 'y3'}), h.f)

## Task 4
def mat_move2board(Y):
    '''
    Input:
        - Y: Mat instance, each column of which is a 'y1', 'y2', 'y3' vector
          giving the whiteboard coordinates of a point q.
    Output:
        - Mat instance, each column of which is the corresponding point in the
          whiteboard plane (the point of intersection with the whiteboard plane
          of the line through the origin and q).
    '''
    pass