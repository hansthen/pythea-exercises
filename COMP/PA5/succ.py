import glob
from os import path
import sys

tests = [path.basename(line) for line in glob.glob('grading/*.cl.out')]
fails = [path.basename(line) for line in glob.glob('grading/test-output/*.cl.out')]

tests.sort()
fails.sort()

tests = iter(tests)
fails = iter(fails)

try:
    line1 = tests.next()
    line2 = fails.next()
    while True:
        while line1 != line2:
            if path.exists(path.join('grading', line1.replace('.out', '.s'))):
                if "succ" in sys.argv:
                    print line1, "success"
            else:
                if "comp" in sys.argv:
                    print line1, "compilation failed"
            line1 = tests.next()
        if "fail" in sys.argv:
            print line1, "failed"
        line1 = tests.next()
        line2 = fails.next()
except StopIteration:
    pass
