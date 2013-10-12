class A(object):
    def match(filename):
        open(filename)

    print "1"
    with open('test.py') as file:
        for line in file:
            print line

    print "2"
