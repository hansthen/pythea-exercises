from mat import Mat
import math

## Task 1
def identity(labels = {'x','y','u'}):
    '''
    In case you have never seen this notation for a parameter before,
    the way it works is that identity() now defaults to having labels
    equal to {'x','y','u'}.  So you should write your procedure as if
    it were defined 'def identity(labels):'.  However, if you want the labels of
    your identity matrix to be {'x','y','u'}, you can just call
    identity().  Additionally, if you want {'r','g','b'}, or another set, to be the
    labels of your matrix, you can call identity({'r','g','b'}).
    '''
    D = labels, labels
    m = Mat(D, {(label,label):1 for label in labels})
    return m

## Task 2
def translation(x,y):
    '''
    Input:  An x and y value by which to translate an image.
    Output:  Corresponding 3x3 translation matrix.
    '''
    m = identity()
    m[('x', 'u')] = x
    m[('y', 'u')] = y
    return m

## Task 3
def scale(a, b):
    '''
    Input:  Scaling parameters for the x and y direction.
    Output:  Corresponding 3x3 scaling matrix.
    '''
    m = identity()
    m[('x', 'x')] = a
    m[('y', 'y')] = b
    return m

## Task 4
def rotation(angle):
    '''
    Input:  An angle in radians to rotate an image.
    Output:  Corresponding 3x3 rotation matrix.
    Note that the math module is imported.
    '''
    m = scale(math.cos(angle), math.cos(angle))
    m[('y', 'x')] = math.sin(angle)
    m[('x', 'y')] = -math.sin(angle)
    return m

## Task 5
def rotate_about(x,y,angle):
    '''
    Input:  An x and y coordinate to rotate about, and an angle
    in radians to rotate about.
    Output:  Corresponding 3x3 rotation matrix.
    It might be helpful to use procedures you already wrote.
    '''
    return translation(x,y) * rotation(angle) * translation(-x,-y)

## Task 6
def reflect_y():
    '''
    Input:  None.
    Output:  3x3 Y-reflection matrix.
    '''
    m = identity()
    m[('x', 'x')] = -1
    return m

## Task 7
def reflect_x():
    '''
    Inpute:  None.
    Output:  3x3 X-reflection matrix.
    '''
    m = identity()
    m[('y', 'y')] = -1
    return m

## Task 8
def scale_color(scale_r,scale_g,scale_b):
    '''
    Input:  3 scaling parameters for the colors of the image.
    Output:  Corresponding 3x3 color scaling matrix.
    '''
    m = identity({'r','g','b'})
    m[('r', 'r')] = scale_r
    m[('g', 'g')] = scale_g
    m[('b', 'b')] = scale_b
    return m

## Task 9
def grayscale():
    '''
    Input: None
    Output: 3x3 greyscale matrix.
    '''
    m = identity({'r','g','b'})
    for label in ['r', 'g', 'b']:
        m[(label, 'r')] = 77/256
        m[(label, 'g')] = 151/256
        m[(label, 'b')] = 28/256
    return m

## Task 10
def reflect_about(p1,p2):
    '''
    Input: 2 points that define a line to reflect about.
    Output:  Corresponding 3x3 reflect about matrix.
    '''
    pass


