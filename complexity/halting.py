from random import choice

def haltsp(fun, inp):
    """This function solves the halting problem. FIXME: does not work yet"""
    if choice([True, False]):
        print fun, "will halt on input", inp
        return True
    else:
        print fun, "will halt not on input", inp
        return False

def haltsp_(fun, inp):
    """This function will loop if `fun` halts on input `inp` and halt otherwise"""
    if haltsp(fun, inp):
        while True:
            pass
    print "I am done"

if __name__ == '__main__':
    haltsp_(haltsp_, haltsp_)

