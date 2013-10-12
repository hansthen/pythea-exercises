from subprocess import Popen, PIPE, STDOUT

import pty
import os
import time

file_path = 'sleep.rb'

command = ' '.join(["ruby", file_path])

proc = Popen(command, bufsize=0, shell=True, stdout=PIPE, close_fds=True)

for line in proc.stdout:
    print line

print("This is most certainly reached!")
