import pexpect

child = pexpect.spawn('./spim')
child.expect(r'\(spim\)')
child.sendline('load "new-self-init.cl.s"')
child.expect(r'\(spim\)')
print child.before.split('\r\n')
child.sendline('print Main_init')
child.expect(r'\(spim\)')
print child.before.split('\r\n')

