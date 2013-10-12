
bomb:     file format elf64-x86-64


Disassembly of section .interp:

0000000000400200 <.interp>:
  400200:	2f                   	(bad)  
  400201:	6c                   	insb   (%dx),%es:(%rdi)
  400202:	69 62 36 34 2f 6c 64 	imul   $0x646c2f34,0x36(%rdx),%esp
  400209:	2d 6c 69 6e 75       	sub    $0x756e696c,%eax
  40020e:	78 2d                	js     40023d <_init-0x80b>
  400210:	78 38                	js     40024a <_init-0x7fe>
  400212:	36                   	ss
  400213:	2d 36 34 2e 73       	sub    $0x732e3436,%eax
  400218:	6f                   	outsl  %ds:(%rsi),(%dx)
  400219:	2e 32 00             	xor    %cs:(%rax),%al

Disassembly of section .note.ABI-tag:

000000000040021c <.note.ABI-tag>:
  40021c:	04 00                	add    $0x0,%al
  40021e:	00 00                	add    %al,(%rax)
  400220:	10 00                	adc    %al,(%rax)
  400222:	00 00                	add    %al,(%rax)
  400224:	01 00                	add    %eax,(%rax)
  400226:	00 00                	add    %al,(%rax)
  400228:	47                   	rex.RXB
  400229:	4e 55                	rex.WRX push %rbp
  40022b:	00 00                	add    %al,(%rax)
  40022d:	00 00                	add    %al,(%rax)
  40022f:	00 02                	add    %al,(%rdx)
  400231:	00 00                	add    %al,(%rax)
  400233:	00 06                	add    %al,(%rsi)
  400235:	00 00                	add    %al,(%rax)
  400237:	00 20                	add    %ah,(%rax)
  400239:	00 00                	add    %al,(%rax)
	...

Disassembly of section .note.gnu.build-id:

000000000040023c <.note.gnu.build-id>:
  40023c:	04 00                	add    $0x0,%al
  40023e:	00 00                	add    %al,(%rax)
  400240:	14 00                	adc    $0x0,%al
  400242:	00 00                	add    %al,(%rax)
  400244:	03 00                	add    (%rax),%eax
  400246:	00 00                	add    %al,(%rax)
  400248:	47                   	rex.RXB
  400249:	4e 55                	rex.WRX push %rbp
  40024b:	00 d7                	add    %dl,%bh
  40024d:	2f                   	(bad)  
  40024e:	67 38 d6             	addr32 cmp %dl,%dh
  400251:	a4                   	movsb  %ds:(%rsi),%es:(%rdi)
  400252:	05 9f d4 4a 99       	add    $0x994ad49f,%eax
  400257:	87 1b                	xchg   %ebx,(%rbx)
  400259:	34 91                	xor    $0x91,%al
  40025b:	ef                   	out    %eax,(%dx)
  40025c:	f1                   	icebp  
  40025d:	48 aa                	rex.W stos %al,%es:(%rdi)
  40025f:	68                   	.byte 0x68

Disassembly of section .gnu.hash:

0000000000400260 <.gnu.hash>:
  400260:	02 00                	add    (%rax),%al
  400262:	00 00                	add    %al,(%rax)
  400264:	1f                   	(bad)  
  400265:	00 00                	add    %al,(%rax)
  400267:	00 01                	add    %al,(%rcx)
  400269:	00 00                	add    %al,(%rax)
  40026b:	00 06                	add    %al,(%rsi)
  40026d:	00 00                	add    %al,(%rax)
  40026f:	00 00                	add    %al,(%rax)
  400271:	00 20                	add    %ah,(%rax)
  400273:	00 80 01 10 00 1f    	add    %al,0x1f001001(%rax)
  400279:	00 00                	add    %al,(%rax)
  40027b:	00 20                	add    %ah,(%rax)
  40027d:	00 00                	add    %al,(%rax)
  40027f:	00 29                	add    %ch,(%rcx)
  400281:	1d 8c 1c 67 55       	sbb    $0x55671c8c,%eax
  400286:	61                   	(bad)  
  400287:	10                   	.byte 0x10

Disassembly of section .dynsym:

0000000000400288 <.dynsym>:
	...
  4002a0:	e0 00                	loopne 4002a2 <_init-0x7a6>
  4002a2:	00 00                	add    %al,(%rax)
  4002a4:	12 00                	adc    (%rax),%al
	...
  4002b6:	00 00                	add    %al,(%rax)
  4002b8:	9e                   	sahf   
  4002b9:	00 00                	add    %al,(%rax)
  4002bb:	00 12                	add    %dl,(%rdx)
	...
  4002cd:	00 00                	add    %al,(%rax)
  4002cf:	00 c0                	add    %al,%al
  4002d1:	00 00                	add    %al,(%rax)
  4002d3:	00 12                	add    %dl,(%rdx)
	...
  4002e5:	00 00                	add    %al,(%rax)
  4002e7:	00 01                	add    %al,(%rcx)
  4002e9:	00 00                	add    %al,(%rax)
  4002eb:	00 20                	add    %ah,(%rax)
	...
  4002fd:	00 00                	add    %al,(%rax)
  4002ff:	00 69 00             	add    %ch,0x0(%rcx)
  400302:	00 00                	add    %al,(%rax)
  400304:	12 00                	adc    (%rax),%al
	...
  400316:	00 00                	add    %al,(%rax)
  400318:	4a 00 00             	rex.WX add %al,(%rax)
  40031b:	00 12                	add    %dl,(%rdx)
	...
  40032d:	00 00                	add    %al,(%rax)
  40032f:	00 37                	add    %dh,(%rdi)
  400331:	00 00                	add    %al,(%rax)
  400333:	00 12                	add    %dl,(%rdx)
	...
  400345:	00 00                	add    %al,(%rax)
  400347:	00 44 00 00          	add    %al,0x0(%rax,%rax,1)
  40034b:	00 12                	add    %dl,(%rdx)
	...
  40035d:	00 00                	add    %al,(%rax)
  40035f:	00 ed                	add    %ch,%ch
  400361:	00 00                	add    %al,(%rax)
  400363:	00 12                	add    %dl,(%rdx)
	...
  400375:	00 00                	add    %al,(%rax)
  400377:	00 ce                	add    %cl,%dh
  400379:	00 00                	add    %al,(%rax)
  40037b:	00 12                	add    %dl,(%rdx)
	...
  40038d:	00 00                	add    %al,(%rax)
  40038f:	00 b9 00 00 00 12    	add    %bh,0x12000000(%rcx)
	...
  4003a5:	00 00                	add    %al,(%rax)
  4003a7:	00 82 00 00 00 12    	add    %al,0x12000000(%rdx)
	...
  4003bd:	00 00                	add    %al,(%rax)
  4003bf:	00 97 00 00 00 12    	add    %dl,0x12000000(%rdi)
	...
  4003d5:	00 00                	add    %al,(%rax)
  4003d7:	00 d9                	add    %bl,%cl
  4003d9:	00 00                	add    %al,(%rax)
  4003db:	00 12                	add    %dl,(%rdx)
	...
  4003ed:	00 00                	add    %al,(%rax)
  4003ef:	00 ab 00 00 00 12    	add    %ch,0x12000000(%rbx)
	...
  400405:	00 00                	add    %al,(%rax)
  400407:	00 3c 00             	add    %bh,(%rax,%rax,1)
  40040a:	00 00                	add    %al,(%rax)
  40040c:	12 00                	adc    (%rax),%al
	...
  40041e:	00 00                	add    %al,(%rax)
  400420:	e7 00                	out    %eax,$0x0
  400422:	00 00                	add    %al,(%rax)
  400424:	12 00                	adc    (%rax),%al
	...
  400436:	00 00                	add    %al,(%rax)
  400438:	74 00                	je     40043a <_init-0x60e>
  40043a:	00 00                	add    %al,(%rax)
  40043c:	12 00                	adc    (%rax),%al
	...
  40044e:	00 00                	add    %al,(%rax)
  400450:	7b 00                	jnp    400452 <_init-0x5f6>
  400452:	00 00                	add    %al,(%rax)
  400454:	12 00                	adc    (%rax),%al
	...
  400466:	00 00                	add    %al,(%rax)
  400468:	5a                   	pop    %rdx
  400469:	00 00                	add    %al,(%rax)
  40046b:	00 12                	add    %dl,(%rdx)
	...
  40047d:	00 00                	add    %al,(%rax)
  40047f:	00 88 00 00 00 12    	add    %cl,0x12000000(%rax)
	...
  400495:	00 00                	add    %al,(%rax)
  400497:	00 62 00             	add    %ah,0x0(%rdx)
  40049a:	00 00                	add    %al,(%rax)
  40049c:	12 00                	adc    (%rax),%al
	...
  4004ae:	00 00                	add    %al,(%rax)
  4004b0:	1a 00                	sbb    (%rax),%al
  4004b2:	00 00                	add    %al,(%rax)
  4004b4:	12 00                	adc    (%rax),%al
	...
  4004c6:	00 00                	add    %al,(%rax)
  4004c8:	a4                   	movsb  %ds:(%rsi),%es:(%rdi)
  4004c9:	00 00                	add    %al,(%rax)
  4004cb:	00 12                	add    %dl,(%rdx)
	...
  4004dd:	00 00                	add    %al,(%rax)
  4004df:	00 21                	add    %ah,(%rcx)
  4004e1:	00 00                	add    %al,(%rax)
  4004e3:	00 12                	add    %dl,(%rdx)
	...
  4004f5:	00 00                	add    %al,(%rax)
  4004f7:	00 30                	add    %dh,(%rax)
  4004f9:	00 00                	add    %al,(%rax)
  4004fb:	00 12                	add    %dl,(%rdx)
	...
  40050d:	00 00                	add    %al,(%rax)
  40050f:	00 9d 00 00 00 12    	add    %bl,0x12000000(%rbp)
	...
  400525:	00 00                	add    %al,(%rax)
  400527:	00 d2                	add    %dl,%dl
  400529:	00 00                	add    %al,(%rax)
  40052b:	00 12                	add    %dl,(%rdx)
	...
  40053d:	00 00                	add    %al,(%rax)
  40053f:	00 df                	add    %bl,%bh
  400541:	00 00                	add    %al,(%rax)
  400543:	00 12                	add    %dl,(%rdx)
	...
  400555:	00 00                	add    %al,(%rax)
  400557:	00 29                	add    %ch,(%rcx)
  400559:	00 00                	add    %al,(%rax)
  40055b:	00 12                	add    %dl,(%rdx)
	...
  40056d:	00 00                	add    %al,(%rax)
  40056f:	00 90 00 00 00 11    	add    %dl,0x11000000(%rax)
  400575:	00 19                	add    %bl,(%rcx)
  400577:	00 50 2c             	add    %dl,0x2c(%rax)
  40057a:	60                   	(bad)  
  40057b:	00 00                	add    %al,(%rax)
  40057d:	00 00                	add    %al,(%rax)
  40057f:	00 08                	add    %cl,(%rax)
  400581:	00 00                	add    %al,(%rax)
  400583:	00 00                	add    %al,(%rax)
  400585:	00 00                	add    %al,(%rax)
  400587:	00 6e 00             	add    %ch,0x0(%rsi)
  40058a:	00 00                	add    %al,(%rax)
  40058c:	11 00                	adc    %eax,(%rax)
  40058e:	19 00                	sbb    %eax,(%rax)
  400590:	40 2c 60             	sub    $0x60,%al
  400593:	00 00                	add    %al,(%rax)
  400595:	00 00                	add    %al,(%rax)
  400597:	00 08                	add    %cl,(%rax)
  400599:	00 00                	add    %al,(%rax)
  40059b:	00 00                	add    %al,(%rax)
  40059d:	00 00                	add    %al,(%rax)
	...

Disassembly of section .dynstr:

00000000004005a0 <.dynstr>:
  4005a0:	00 5f 5f             	add    %bl,0x5f(%rdi)
  4005a3:	67 6d                	insl   (%dx),%es:(%edi)
  4005a5:	6f                   	outsl  %ds:(%rsi),(%dx)
  4005a6:	6e                   	outsb  %ds:(%rsi),(%dx)
  4005a7:	5f                   	pop    %rdi
  4005a8:	73 74                	jae    40061e <_init-0x42a>
  4005aa:	61                   	(bad)  
  4005ab:	72 74                	jb     400621 <_init-0x427>
  4005ad:	5f                   	pop    %rdi
  4005ae:	5f                   	pop    %rdi
  4005af:	00 6c 69 62          	add    %ch,0x62(%rcx,%rbp,2)
  4005b3:	63 2e                	movslq (%rsi),%ebp
  4005b5:	73 6f                	jae    400626 <_init-0x422>
  4005b7:	2e 36 00 73 6f       	cs add %dh,%cs:%ss:0x6f(%rbx)
  4005bc:	63 6b 65             	movslq 0x65(%rbx),%ebp
  4005bf:	74 00                	je     4005c1 <_init-0x487>
  4005c1:	63 75 73             	movslq 0x73(%rbp),%esi
  4005c4:	65                   	gs
  4005c5:	72 69                	jb     400630 <_init-0x418>
  4005c7:	64 00 66 66          	add    %ah,%fs:0x66(%rsi)
  4005cb:	6c                   	insb   (%dx),%es:(%rdi)
  4005cc:	75 73                	jne    400641 <_init-0x407>
  4005ce:	68 00 73 74 72       	pushq  $0x72747300
  4005d3:	63 70 79             	movslq 0x79(%rax),%esi
  4005d6:	00 65 78             	add    %ah,0x78(%rbp)
  4005d9:	69 74 00 73 70 72 69 	imul   $0x6e697270,0x73(%rax,%rax,1),%esi
  4005e0:	6e 
  4005e1:	74 66                	je     400649 <_init-0x3ff>
  4005e3:	00 66 6f             	add    %ah,0x6f(%rsi)
  4005e6:	70 65                	jo     40064d <_init-0x3fb>
  4005e8:	6e                   	outsb  %ds:(%rsi),(%dx)
  4005e9:	00 5f 5f             	add    %bl,0x5f(%rdi)
  4005ec:	69 73 6f 63 39 39 5f 	imul   $0x5f393963,0x6f(%rbx),%esi
  4005f3:	73 73                	jae    400668 <_init-0x3e0>
  4005f5:	63 61 6e             	movslq 0x6e(%rcx),%esp
  4005f8:	66                   	data16
  4005f9:	00 63 6f             	add    %ah,0x6f(%rbx)
  4005fc:	6e                   	outsb  %ds:(%rsi),(%dx)
  4005fd:	6e                   	outsb  %ds:(%rsi),(%dx)
  4005fe:	65 63 74 00 73       	movslq %gs:0x73(%rax,%rax,1),%esi
  400603:	69 67 6e 61 6c 00 70 	imul   $0x70006c61,0x6e(%rdi),%esp
  40060a:	75 74                	jne    400680 <_init-0x3c8>
  40060c:	73 00                	jae    40060e <_init-0x43a>
  40060e:	73 74                	jae    400684 <_init-0x3c4>
  400610:	64 69 6e 00 72 65 77 	imul   $0x69776572,%fs:0x0(%rsi),%ebp
  400617:	69 
  400618:	6e                   	outsb  %ds:(%rsi),(%dx)
  400619:	64 00 73 74          	add    %dh,%fs:0x74(%rbx)
  40061d:	72 74                	jb     400693 <_init-0x3b5>
  40061f:	6f                   	outsl  %ds:(%rsi),(%dx)
  400620:	6c                   	insb   (%dx),%es:(%rdi)
  400621:	00 66 67             	add    %ah,0x67(%rsi)
  400624:	65                   	gs
  400625:	74 73                	je     40069a <_init-0x3ae>
  400627:	00 74 6d 70          	add    %dh,0x70(%rbp,%rbp,2)
  40062b:	66 69 6c 65 00 73 74 	imul   $0x7473,0x0(%rbp,%riz,2),%bp
  400632:	64 6f                	outsl  %fs:(%rsi),(%dx)
  400634:	75 74                	jne    4006aa <_init-0x39e>
  400636:	00 66 70             	add    %ah,0x70(%rsi)
  400639:	75 74                	jne    4006af <_init-0x399>
  40063b:	63 00                	movslq (%rax),%eax
  40063d:	66 63 6c 6f 73       	movslq 0x73(%rdi,%rbp,2),%bp
  400642:	65 00 67 65          	add    %ah,%gs:0x65(%rdi)
  400646:	74 65                	je     4006ad <_init-0x39b>
  400648:	6e                   	outsb  %ds:(%rsi),(%dx)
  400649:	76 00                	jbe    40064b <_init-0x3fd>
  40064b:	5f                   	pop    %rdi
  40064c:	5f                   	pop    %rdi
  40064d:	63 74 79 70          	movslq 0x70(%rcx,%rdi,2),%esi
  400651:	65                   	gs
  400652:	5f                   	pop    %rdi
  400653:	62                   	(bad)  
  400654:	5f                   	pop    %rdi
  400655:	6c                   	insb   (%dx),%es:(%rdi)
  400656:	6f                   	outsl  %ds:(%rsi),(%dx)
  400657:	63 00                	movslq (%rax),%eax
  400659:	73 79                	jae    4006d4 <_init-0x374>
  40065b:	73 74                	jae    4006d1 <_init-0x377>
  40065d:	65                   	gs
  40065e:	6d                   	insl   (%dx),%es:(%rdi)
  40065f:	00 67 65             	add    %ah,0x65(%rdi)
  400662:	74 68                	je     4006cc <_init-0x37c>
  400664:	6f                   	outsl  %ds:(%rsi),(%dx)
  400665:	73 74                	jae    4006db <_init-0x36d>
  400667:	62                   	(bad)  
  400668:	79 6e                	jns    4006d8 <_init-0x370>
  40066a:	61                   	(bad)  
  40066b:	6d                   	insl   (%dx),%es:(%rdi)
  40066c:	65 00 64 75 70       	add    %ah,%gs:0x70(%rbp,%rsi,2)
  400671:	00 66 77             	add    %ah,0x77(%rsi)
  400674:	72 69                	jb     4006df <_init-0x369>
  400676:	74 65                	je     4006dd <_init-0x36b>
  400678:	00 62 63             	add    %ah,0x63(%rdx)
  40067b:	6f                   	outsl  %ds:(%rsi),(%dx)
  40067c:	70 79                	jo     4006f7 <_init-0x351>
  40067e:	00 66 70             	add    %ah,0x70(%rsi)
  400681:	72 69                	jb     4006ec <_init-0x35c>
  400683:	6e                   	outsb  %ds:(%rsi),(%dx)
  400684:	74 66                	je     4006ec <_init-0x35c>
  400686:	00 73 6c             	add    %dh,0x6c(%rbx)
  400689:	65                   	gs
  40068a:	65                   	gs
  40068b:	70 00                	jo     40068d <_init-0x3bb>
  40068d:	5f                   	pop    %rdi
  40068e:	5f                   	pop    %rdi
  40068f:	6c                   	insb   (%dx),%es:(%rdi)
  400690:	69 62 63 5f 73 74 61 	imul   $0x6174735f,0x63(%rdx),%esp
  400697:	72 74                	jb     40070d <_init-0x33b>
  400699:	5f                   	pop    %rdi
  40069a:	6d                   	insl   (%dx),%es:(%rdi)
  40069b:	61                   	(bad)  
  40069c:	69 6e 00 47 4c 49 42 	imul   $0x42494c47,0x0(%rsi),%ebp
  4006a3:	43 5f                	rex.XB pop %r15
  4006a5:	32 2e                	xor    (%rsi),%ch
  4006a7:	33 00                	xor    (%rax),%eax
  4006a9:	47                   	rex.RXB
  4006aa:	4c                   	rex.WR
  4006ab:	49                   	rex.WB
  4006ac:	42                   	rex.X
  4006ad:	43 5f                	rex.XB pop %r15
  4006af:	32 2e                	xor    (%rsi),%ch
  4006b1:	37                   	(bad)  
  4006b2:	00 47 4c             	add    %al,0x4c(%rdi)
  4006b5:	49                   	rex.WB
  4006b6:	42                   	rex.X
  4006b7:	43 5f                	rex.XB pop %r15
  4006b9:	32 2e                	xor    (%rsi),%ch
  4006bb:	32 2e                	xor    (%rsi),%ch
  4006bd:	35                   	.byte 0x35
	...

Disassembly of section .gnu.version:

00000000004006c0 <.gnu.version>:
  4006c0:	00 00                	add    %al,(%rax)
  4006c2:	02 00                	add    (%rax),%al
  4006c4:	02 00                	add    (%rax),%al
  4006c6:	02 00                	add    (%rax),%al
  4006c8:	00 00                	add    %al,(%rax)
  4006ca:	02 00                	add    (%rax),%al
  4006cc:	03 00                	add    (%rax),%eax
  4006ce:	02 00                	add    (%rax),%al
  4006d0:	02 00                	add    (%rax),%al
  4006d2:	02 00                	add    (%rax),%al
  4006d4:	02 00                	add    (%rax),%al
  4006d6:	02 00                	add    (%rax),%al
  4006d8:	02 00                	add    (%rax),%al
  4006da:	02 00                	add    (%rax),%al
  4006dc:	02 00                	add    (%rax),%al
  4006de:	04 00                	add    $0x0,%al
  4006e0:	02 00                	add    (%rax),%al
  4006e2:	02 00                	add    (%rax),%al
  4006e4:	02 00                	add    (%rax),%al
  4006e6:	02 00                	add    (%rax),%al
  4006e8:	02 00                	add    (%rax),%al
  4006ea:	02 00                	add    (%rax),%al
  4006ec:	02 00                	add    (%rax),%al
  4006ee:	02 00                	add    (%rax),%al
  4006f0:	02 00                	add    (%rax),%al
  4006f2:	02 00                	add    (%rax),%al
  4006f4:	02 00                	add    (%rax),%al
  4006f6:	02 00                	add    (%rax),%al
  4006f8:	02 00                	add    (%rax),%al
  4006fa:	02 00                	add    (%rax),%al
  4006fc:	02 00                	add    (%rax),%al
  4006fe:	02 00                	add    (%rax),%al
  400700:	02 00                	add    (%rax),%al

Disassembly of section .gnu.version_r:

0000000000400708 <.gnu.version_r>:
  400708:	01 00                	add    %eax,(%rax)
  40070a:	03 00                	add    (%rax),%eax
  40070c:	10 00                	adc    %al,(%rax)
  40070e:	00 00                	add    %al,(%rax)
  400710:	10 00                	adc    %al,(%rax)
  400712:	00 00                	add    %al,(%rax)
  400714:	00 00                	add    %al,(%rax)
  400716:	00 00                	add    %al,(%rax)
  400718:	13 69 69             	adc    0x69(%rcx),%ebp
  40071b:	0d 00 00 04 00       	or     $0x40000,%eax
  400720:	ff 00                	incl   (%rax)
  400722:	00 00                	add    %al,(%rax)
  400724:	10 00                	adc    %al,(%rax)
  400726:	00 00                	add    %al,(%rax)
  400728:	17                   	(bad)  
  400729:	69 69 0d 00 00 03 00 	imul   $0x30000,0xd(%rcx),%ebp
  400730:	09 01                	or     %eax,(%rcx)
  400732:	00 00                	add    %al,(%rax)
  400734:	10 00                	adc    %al,(%rax)
  400736:	00 00                	add    %al,(%rax)
  400738:	75 1a                	jne    400754 <_init-0x2f4>
  40073a:	69 09 00 00 02 00    	imul   $0x20000,(%rcx),%ecx
  400740:	13 01                	adc    (%rcx),%eax
  400742:	00 00                	add    %al,(%rax)
  400744:	00 00                	add    %al,(%rax)
	...

Disassembly of section .rela.dyn:

0000000000400748 <.rela.dyn>:
  400748:	78 24                	js     40076e <_init-0x2da>
  40074a:	60                   	(bad)  
  40074b:	00 00                	add    %al,(%rax)
  40074d:	00 00                	add    %al,(%rax)
  40074f:	00 06                	add    %al,(%rsi)
  400751:	00 00                	add    %al,(%rax)
  400753:	00 04 00             	add    %al,(%rax,%rax,1)
	...
  40075e:	00 00                	add    %al,(%rax)
  400760:	40 2c 60             	sub    $0x60,%al
  400763:	00 00                	add    %al,(%rax)
  400765:	00 00                	add    %al,(%rax)
  400767:	00 05 00 00 00 20    	add    %al,0x20000000(%rip)        # 2040076d <_end+0x1fdfd19d>
	...
  400775:	00 00                	add    %al,(%rax)
  400777:	00 50 2c             	add    %dl,0x2c(%rax)
  40077a:	60                   	(bad)  
  40077b:	00 00                	add    %al,(%rax)
  40077d:	00 00                	add    %al,(%rax)
  40077f:	00 05 00 00 00 1f    	add    %al,0x1f000000(%rip)        # 1f400785 <_end+0x1edfd1b5>
	...

Disassembly of section .rela.plt:

0000000000400790 <.rela.plt>:
  400790:	98                   	cwtl   
  400791:	24 60                	and    $0x60,%al
  400793:	00 00                	add    %al,(%rax)
  400795:	00 00                	add    %al,(%rax)
  400797:	00 07                	add    %al,(%rdi)
  400799:	00 00                	add    %al,(%rax)
  40079b:	00 01                	add    %al,(%rcx)
	...
  4007a5:	00 00                	add    %al,(%rax)
  4007a7:	00 a0 24 60 00 00    	add    %ah,0x6024(%rax)
  4007ad:	00 00                	add    %al,(%rax)
  4007af:	00 07                	add    %al,(%rdi)
  4007b1:	00 00                	add    %al,(%rax)
  4007b3:	00 02                	add    %al,(%rdx)
	...
  4007bd:	00 00                	add    %al,(%rax)
  4007bf:	00 a8 24 60 00 00    	add    %ch,0x6024(%rax)
  4007c5:	00 00                	add    %al,(%rax)
  4007c7:	00 07                	add    %al,(%rdi)
  4007c9:	00 00                	add    %al,(%rax)
  4007cb:	00 03                	add    %al,(%rbx)
	...
  4007d5:	00 00                	add    %al,(%rax)
  4007d7:	00 b0 24 60 00 00    	add    %dh,0x6024(%rax)
  4007dd:	00 00                	add    %al,(%rax)
  4007df:	00 07                	add    %al,(%rdi)
  4007e1:	00 00                	add    %al,(%rax)
  4007e3:	00 05 00 00 00 00    	add    %al,0x0(%rip)        # 4007e9 <_init-0x25f>
  4007e9:	00 00                	add    %al,(%rax)
  4007eb:	00 00                	add    %al,(%rax)
  4007ed:	00 00                	add    %al,(%rax)
  4007ef:	00 b8 24 60 00 00    	add    %bh,0x6024(%rax)
  4007f5:	00 00                	add    %al,(%rax)
  4007f7:	00 07                	add    %al,(%rdi)
  4007f9:	00 00                	add    %al,(%rax)
  4007fb:	00 06                	add    %al,(%rsi)
	...
  400805:	00 00                	add    %al,(%rax)
  400807:	00 c0                	add    %al,%al
  400809:	24 60                	and    $0x60,%al
  40080b:	00 00                	add    %al,(%rax)
  40080d:	00 00                	add    %al,(%rax)
  40080f:	00 07                	add    %al,(%rdi)
  400811:	00 00                	add    %al,(%rax)
  400813:	00 07                	add    %al,(%rdi)
	...
  40081d:	00 00                	add    %al,(%rax)
  40081f:	00 c8                	add    %cl,%al
  400821:	24 60                	and    $0x60,%al
  400823:	00 00                	add    %al,(%rax)
  400825:	00 00                	add    %al,(%rax)
  400827:	00 07                	add    %al,(%rdi)
  400829:	00 00                	add    %al,(%rax)
  40082b:	00 08                	add    %cl,(%rax)
	...
  400835:	00 00                	add    %al,(%rax)
  400837:	00 d0                	add    %dl,%al
  400839:	24 60                	and    $0x60,%al
  40083b:	00 00                	add    %al,(%rax)
  40083d:	00 00                	add    %al,(%rax)
  40083f:	00 07                	add    %al,(%rdi)
  400841:	00 00                	add    %al,(%rax)
  400843:	00 09                	add    %cl,(%rcx)
	...
  40084d:	00 00                	add    %al,(%rax)
  40084f:	00 d8                	add    %bl,%al
  400851:	24 60                	and    $0x60,%al
  400853:	00 00                	add    %al,(%rax)
  400855:	00 00                	add    %al,(%rax)
  400857:	00 07                	add    %al,(%rdi)
  400859:	00 00                	add    %al,(%rax)
  40085b:	00 0a                	add    %cl,(%rdx)
	...
  400865:	00 00                	add    %al,(%rax)
  400867:	00 e0                	add    %ah,%al
  400869:	24 60                	and    $0x60,%al
  40086b:	00 00                	add    %al,(%rax)
  40086d:	00 00                	add    %al,(%rax)
  40086f:	00 07                	add    %al,(%rdi)
  400871:	00 00                	add    %al,(%rax)
  400873:	00 0b                	add    %cl,(%rbx)
	...
  40087d:	00 00                	add    %al,(%rax)
  40087f:	00 e8                	add    %ch,%al
  400881:	24 60                	and    $0x60,%al
  400883:	00 00                	add    %al,(%rax)
  400885:	00 00                	add    %al,(%rax)
  400887:	00 07                	add    %al,(%rdi)
  400889:	00 00                	add    %al,(%rax)
  40088b:	00 0c 00             	add    %cl,(%rax,%rax,1)
	...
  400896:	00 00                	add    %al,(%rax)
  400898:	f0 24 60             	lock and $0x60,%al
  40089b:	00 00                	add    %al,(%rax)
  40089d:	00 00                	add    %al,(%rax)
  40089f:	00 07                	add    %al,(%rdi)
  4008a1:	00 00                	add    %al,(%rax)
  4008a3:	00 0d 00 00 00 00    	add    %cl,0x0(%rip)        # 4008a9 <_init-0x19f>
  4008a9:	00 00                	add    %al,(%rax)
  4008ab:	00 00                	add    %al,(%rax)
  4008ad:	00 00                	add    %al,(%rax)
  4008af:	00 f8                	add    %bh,%al
  4008b1:	24 60                	and    $0x60,%al
  4008b3:	00 00                	add    %al,(%rax)
  4008b5:	00 00                	add    %al,(%rax)
  4008b7:	00 07                	add    %al,(%rdi)
  4008b9:	00 00                	add    %al,(%rax)
  4008bb:	00 0e                	add    %cl,(%rsi)
	...
  4008c9:	25 60 00 00 00       	and    $0x60,%eax
  4008ce:	00 00                	add    %al,(%rax)
  4008d0:	07                   	(bad)  
  4008d1:	00 00                	add    %al,(%rax)
  4008d3:	00 0f                	add    %cl,(%rdi)
	...
  4008dd:	00 00                	add    %al,(%rax)
  4008df:	00 08                	add    %cl,(%rax)
  4008e1:	25 60 00 00 00       	and    $0x60,%eax
  4008e6:	00 00                	add    %al,(%rax)
  4008e8:	07                   	(bad)  
  4008e9:	00 00                	add    %al,(%rax)
  4008eb:	00 10                	add    %dl,(%rax)
	...
  4008f5:	00 00                	add    %al,(%rax)
  4008f7:	00 10                	add    %dl,(%rax)
  4008f9:	25 60 00 00 00       	and    $0x60,%eax
  4008fe:	00 00                	add    %al,(%rax)
  400900:	07                   	(bad)  
  400901:	00 00                	add    %al,(%rax)
  400903:	00 11                	add    %dl,(%rcx)
	...
  40090d:	00 00                	add    %al,(%rax)
  40090f:	00 18                	add    %bl,(%rax)
  400911:	25 60 00 00 00       	and    $0x60,%eax
  400916:	00 00                	add    %al,(%rax)
  400918:	07                   	(bad)  
  400919:	00 00                	add    %al,(%rax)
  40091b:	00 12                	add    %dl,(%rdx)
	...
  400925:	00 00                	add    %al,(%rax)
  400927:	00 20                	add    %ah,(%rax)
  400929:	25 60 00 00 00       	and    $0x60,%eax
  40092e:	00 00                	add    %al,(%rax)
  400930:	07                   	(bad)  
  400931:	00 00                	add    %al,(%rax)
  400933:	00 13                	add    %dl,(%rbx)
	...
  40093d:	00 00                	add    %al,(%rax)
  40093f:	00 28                	add    %ch,(%rax)
  400941:	25 60 00 00 00       	and    $0x60,%eax
  400946:	00 00                	add    %al,(%rax)
  400948:	07                   	(bad)  
  400949:	00 00                	add    %al,(%rax)
  40094b:	00 14 00             	add    %dl,(%rax,%rax,1)
	...
  400956:	00 00                	add    %al,(%rax)
  400958:	30 25 60 00 00 00    	xor    %ah,0x60(%rip)        # 4009be <_init-0x8a>
  40095e:	00 00                	add    %al,(%rax)
  400960:	07                   	(bad)  
  400961:	00 00                	add    %al,(%rax)
  400963:	00 15 00 00 00 00    	add    %dl,0x0(%rip)        # 400969 <_init-0xdf>
  400969:	00 00                	add    %al,(%rax)
  40096b:	00 00                	add    %al,(%rax)
  40096d:	00 00                	add    %al,(%rax)
  40096f:	00 38                	add    %bh,(%rax)
  400971:	25 60 00 00 00       	and    $0x60,%eax
  400976:	00 00                	add    %al,(%rax)
  400978:	07                   	(bad)  
  400979:	00 00                	add    %al,(%rax)
  40097b:	00 16                	add    %dl,(%rsi)
	...
  400985:	00 00                	add    %al,(%rax)
  400987:	00 40 25             	add    %al,0x25(%rax)
  40098a:	60                   	(bad)  
  40098b:	00 00                	add    %al,(%rax)
  40098d:	00 00                	add    %al,(%rax)
  40098f:	00 07                	add    %al,(%rdi)
  400991:	00 00                	add    %al,(%rax)
  400993:	00 17                	add    %dl,(%rdi)
	...
  40099d:	00 00                	add    %al,(%rax)
  40099f:	00 48 25             	add    %cl,0x25(%rax)
  4009a2:	60                   	(bad)  
  4009a3:	00 00                	add    %al,(%rax)
  4009a5:	00 00                	add    %al,(%rax)
  4009a7:	00 07                	add    %al,(%rdi)
  4009a9:	00 00                	add    %al,(%rax)
  4009ab:	00 18                	add    %bl,(%rax)
	...
  4009b5:	00 00                	add    %al,(%rax)
  4009b7:	00 50 25             	add    %dl,0x25(%rax)
  4009ba:	60                   	(bad)  
  4009bb:	00 00                	add    %al,(%rax)
  4009bd:	00 00                	add    %al,(%rax)
  4009bf:	00 07                	add    %al,(%rdi)
  4009c1:	00 00                	add    %al,(%rax)
  4009c3:	00 19                	add    %bl,(%rcx)
	...
  4009cd:	00 00                	add    %al,(%rax)
  4009cf:	00 58 25             	add    %bl,0x25(%rax)
  4009d2:	60                   	(bad)  
  4009d3:	00 00                	add    %al,(%rax)
  4009d5:	00 00                	add    %al,(%rax)
  4009d7:	00 07                	add    %al,(%rdi)
  4009d9:	00 00                	add    %al,(%rax)
  4009db:	00 1a                	add    %bl,(%rdx)
	...
  4009e5:	00 00                	add    %al,(%rax)
  4009e7:	00 60 25             	add    %ah,0x25(%rax)
  4009ea:	60                   	(bad)  
  4009eb:	00 00                	add    %al,(%rax)
  4009ed:	00 00                	add    %al,(%rax)
  4009ef:	00 07                	add    %al,(%rdi)
  4009f1:	00 00                	add    %al,(%rax)
  4009f3:	00 1b                	add    %bl,(%rbx)
	...
  4009fd:	00 00                	add    %al,(%rax)
  4009ff:	00 68 25             	add    %ch,0x25(%rax)
  400a02:	60                   	(bad)  
  400a03:	00 00                	add    %al,(%rax)
  400a05:	00 00                	add    %al,(%rax)
  400a07:	00 07                	add    %al,(%rdi)
  400a09:	00 00                	add    %al,(%rax)
  400a0b:	00 1c 00             	add    %bl,(%rax,%rax,1)
	...
  400a16:	00 00                	add    %al,(%rax)
  400a18:	70 25                	jo     400a3f <_init-0x9>
  400a1a:	60                   	(bad)  
  400a1b:	00 00                	add    %al,(%rax)
  400a1d:	00 00                	add    %al,(%rax)
  400a1f:	00 07                	add    %al,(%rdi)
  400a21:	00 00                	add    %al,(%rax)
  400a23:	00 1d 00 00 00 00    	add    %bl,0x0(%rip)        # 400a29 <_init-0x1f>
  400a29:	00 00                	add    %al,(%rax)
  400a2b:	00 00                	add    %al,(%rax)
  400a2d:	00 00                	add    %al,(%rax)
  400a2f:	00 78 25             	add    %bh,0x25(%rax)
  400a32:	60                   	(bad)  
  400a33:	00 00                	add    %al,(%rax)
  400a35:	00 00                	add    %al,(%rax)
  400a37:	00 07                	add    %al,(%rdi)
  400a39:	00 00                	add    %al,(%rax)
  400a3b:	00 1e                	add    %bl,(%rsi)
	...

Disassembly of section .init:

0000000000400a48 <_init>:
  400a48:	48 83 ec 08          	sub    $0x8,%rsp
  400a4c:	e8 1b 02 00 00       	callq  400c6c <call_gmon_start>
  400a51:	e8 aa 02 00 00       	callq  400d00 <frame_dummy>
  400a56:	e8 45 0e 00 00       	callq  4018a0 <__do_global_ctors_aux>
  400a5b:	48 83 c4 08          	add    $0x8,%rsp
  400a5f:	c3                   	retq   

Disassembly of section .plt:

0000000000400a60 <printf@plt-0x10>:
  400a60:	ff 35 22 1a 20 00    	pushq  0x201a22(%rip)        # 602488 <_GLOBAL_OFFSET_TABLE_+0x8>
  400a66:	ff 25 24 1a 20 00    	jmpq   *0x201a24(%rip)        # 602490 <_GLOBAL_OFFSET_TABLE_+0x10>
  400a6c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400a70 <printf@plt>:
  400a70:	ff 25 22 1a 20 00    	jmpq   *0x201a22(%rip)        # 602498 <_GLOBAL_OFFSET_TABLE_+0x18>
  400a76:	68 00 00 00 00       	pushq  $0x0
  400a7b:	e9 e0 ff ff ff       	jmpq   400a60 <_init+0x18>

0000000000400a80 <close@plt>:
  400a80:	ff 25 1a 1a 20 00    	jmpq   *0x201a1a(%rip)        # 6024a0 <_GLOBAL_OFFSET_TABLE_+0x20>
  400a86:	68 01 00 00 00       	pushq  $0x1
  400a8b:	e9 d0 ff ff ff       	jmpq   400a60 <_init+0x18>

0000000000400a90 <gethostbyname@plt>:
  400a90:	ff 25 12 1a 20 00    	jmpq   *0x201a12(%rip)        # 6024a8 <_GLOBAL_OFFSET_TABLE_+0x28>
  400a96:	68 02 00 00 00       	pushq  $0x2
  400a9b:	e9 c0 ff ff ff       	jmpq   400a60 <_init+0x18>

0000000000400aa0 <puts@plt>:
  400aa0:	ff 25 0a 1a 20 00    	jmpq   *0x201a0a(%rip)        # 6024b0 <_GLOBAL_OFFSET_TABLE_+0x30>
  400aa6:	68 03 00 00 00       	pushq  $0x3
  400aab:	e9 b0 ff ff ff       	jmpq   400a60 <_init+0x18>

0000000000400ab0 <__isoc99_sscanf@plt>:
  400ab0:	ff 25 02 1a 20 00    	jmpq   *0x201a02(%rip)        # 6024b8 <_GLOBAL_OFFSET_TABLE_+0x38>
  400ab6:	68 04 00 00 00       	pushq  $0x4
  400abb:	e9 a0 ff ff ff       	jmpq   400a60 <_init+0x18>

0000000000400ac0 <exit@plt>:
  400ac0:	ff 25 fa 19 20 00    	jmpq   *0x2019fa(%rip)        # 6024c0 <_GLOBAL_OFFSET_TABLE_+0x40>
  400ac6:	68 05 00 00 00       	pushq  $0x5
  400acb:	e9 90 ff ff ff       	jmpq   400a60 <_init+0x18>

0000000000400ad0 <fopen@plt>:
  400ad0:	ff 25 f2 19 20 00    	jmpq   *0x2019f2(%rip)        # 6024c8 <_GLOBAL_OFFSET_TABLE_+0x48>
  400ad6:	68 06 00 00 00       	pushq  $0x6
  400adb:	e9 80 ff ff ff       	jmpq   400a60 <_init+0x18>

0000000000400ae0 <__libc_start_main@plt>:
  400ae0:	ff 25 ea 19 20 00    	jmpq   *0x2019ea(%rip)        # 6024d0 <_GLOBAL_OFFSET_TABLE_+0x50>
  400ae6:	68 07 00 00 00       	pushq  $0x7
  400aeb:	e9 70 ff ff ff       	jmpq   400a60 <_init+0x18>

0000000000400af0 <dup@plt>:
  400af0:	ff 25 e2 19 20 00    	jmpq   *0x2019e2(%rip)        # 6024d8 <_GLOBAL_OFFSET_TABLE_+0x58>
  400af6:	68 08 00 00 00       	pushq  $0x8
  400afb:	e9 60 ff ff ff       	jmpq   400a60 <_init+0x18>

0000000000400b00 <system@plt>:
  400b00:	ff 25 da 19 20 00    	jmpq   *0x2019da(%rip)        # 6024e0 <_GLOBAL_OFFSET_TABLE_+0x60>
  400b06:	68 09 00 00 00       	pushq  $0x9
  400b0b:	e9 50 ff ff ff       	jmpq   400a60 <_init+0x18>

0000000000400b10 <fgets@plt>:
  400b10:	ff 25 d2 19 20 00    	jmpq   *0x2019d2(%rip)        # 6024e8 <_GLOBAL_OFFSET_TABLE_+0x68>
  400b16:	68 0a 00 00 00       	pushq  $0xa
  400b1b:	e9 40 ff ff ff       	jmpq   400a60 <_init+0x18>

0000000000400b20 <fputc@plt>:
  400b20:	ff 25 ca 19 20 00    	jmpq   *0x2019ca(%rip)        # 6024f0 <_GLOBAL_OFFSET_TABLE_+0x70>
  400b26:	68 0b 00 00 00       	pushq  $0xb
  400b2b:	e9 30 ff ff ff       	jmpq   400a60 <_init+0x18>

0000000000400b30 <bcopy@plt>:
  400b30:	ff 25 c2 19 20 00    	jmpq   *0x2019c2(%rip)        # 6024f8 <_GLOBAL_OFFSET_TABLE_+0x78>
  400b36:	68 0c 00 00 00       	pushq  $0xc
  400b3b:	e9 20 ff ff ff       	jmpq   400a60 <_init+0x18>

0000000000400b40 <__ctype_b_loc@plt>:
  400b40:	ff 25 ba 19 20 00    	jmpq   *0x2019ba(%rip)        # 602500 <_GLOBAL_OFFSET_TABLE_+0x80>
  400b46:	68 0d 00 00 00       	pushq  $0xd
  400b4b:	e9 10 ff ff ff       	jmpq   400a60 <_init+0x18>

0000000000400b50 <sprintf@plt>:
  400b50:	ff 25 b2 19 20 00    	jmpq   *0x2019b2(%rip)        # 602508 <_GLOBAL_OFFSET_TABLE_+0x88>
  400b56:	68 0e 00 00 00       	pushq  $0xe
  400b5b:	e9 00 ff ff ff       	jmpq   400a60 <_init+0x18>

0000000000400b60 <sleep@plt>:
  400b60:	ff 25 aa 19 20 00    	jmpq   *0x2019aa(%rip)        # 602510 <_GLOBAL_OFFSET_TABLE_+0x90>
  400b66:	68 0f 00 00 00       	pushq  $0xf
  400b6b:	e9 f0 fe ff ff       	jmpq   400a60 <_init+0x18>

0000000000400b70 <rewind@plt>:
  400b70:	ff 25 a2 19 20 00    	jmpq   *0x2019a2(%rip)        # 602518 <_GLOBAL_OFFSET_TABLE_+0x98>
  400b76:	68 10 00 00 00       	pushq  $0x10
  400b7b:	e9 e0 fe ff ff       	jmpq   400a60 <_init+0x18>

0000000000400b80 <strtol@plt>:
  400b80:	ff 25 9a 19 20 00    	jmpq   *0x20199a(%rip)        # 602520 <_GLOBAL_OFFSET_TABLE_+0xa0>
  400b86:	68 11 00 00 00       	pushq  $0x11
  400b8b:	e9 d0 fe ff ff       	jmpq   400a60 <_init+0x18>

0000000000400b90 <connect@plt>:
  400b90:	ff 25 92 19 20 00    	jmpq   *0x201992(%rip)        # 602528 <_GLOBAL_OFFSET_TABLE_+0xa8>
  400b96:	68 12 00 00 00       	pushq  $0x12
  400b9b:	e9 c0 fe ff ff       	jmpq   400a60 <_init+0x18>

0000000000400ba0 <tmpfile@plt>:
  400ba0:	ff 25 8a 19 20 00    	jmpq   *0x20198a(%rip)        # 602530 <_GLOBAL_OFFSET_TABLE_+0xb0>
  400ba6:	68 13 00 00 00       	pushq  $0x13
  400bab:	e9 b0 fe ff ff       	jmpq   400a60 <_init+0x18>

0000000000400bb0 <signal@plt>:
  400bb0:	ff 25 82 19 20 00    	jmpq   *0x201982(%rip)        # 602538 <_GLOBAL_OFFSET_TABLE_+0xb8>
  400bb6:	68 14 00 00 00       	pushq  $0x14
  400bbb:	e9 a0 fe ff ff       	jmpq   400a60 <_init+0x18>

0000000000400bc0 <socket@plt>:
  400bc0:	ff 25 7a 19 20 00    	jmpq   *0x20197a(%rip)        # 602540 <_GLOBAL_OFFSET_TABLE_+0xc0>
  400bc6:	68 15 00 00 00       	pushq  $0x15
  400bcb:	e9 90 fe ff ff       	jmpq   400a60 <_init+0x18>

0000000000400bd0 <getenv@plt>:
  400bd0:	ff 25 72 19 20 00    	jmpq   *0x201972(%rip)        # 602548 <_GLOBAL_OFFSET_TABLE_+0xc8>
  400bd6:	68 16 00 00 00       	pushq  $0x16
  400bdb:	e9 80 fe ff ff       	jmpq   400a60 <_init+0x18>

0000000000400be0 <cuserid@plt>:
  400be0:	ff 25 6a 19 20 00    	jmpq   *0x20196a(%rip)        # 602550 <_GLOBAL_OFFSET_TABLE_+0xd0>
  400be6:	68 17 00 00 00       	pushq  $0x17
  400beb:	e9 70 fe ff ff       	jmpq   400a60 <_init+0x18>

0000000000400bf0 <strcpy@plt>:
  400bf0:	ff 25 62 19 20 00    	jmpq   *0x201962(%rip)        # 602558 <_GLOBAL_OFFSET_TABLE_+0xd8>
  400bf6:	68 18 00 00 00       	pushq  $0x18
  400bfb:	e9 60 fe ff ff       	jmpq   400a60 <_init+0x18>

0000000000400c00 <fclose@plt>:
  400c00:	ff 25 5a 19 20 00    	jmpq   *0x20195a(%rip)        # 602560 <_GLOBAL_OFFSET_TABLE_+0xe0>
  400c06:	68 19 00 00 00       	pushq  $0x19
  400c0b:	e9 50 fe ff ff       	jmpq   400a60 <_init+0x18>

0000000000400c10 <fwrite@plt>:
  400c10:	ff 25 52 19 20 00    	jmpq   *0x201952(%rip)        # 602568 <_GLOBAL_OFFSET_TABLE_+0xe8>
  400c16:	68 1a 00 00 00       	pushq  $0x1a
  400c1b:	e9 40 fe ff ff       	jmpq   400a60 <_init+0x18>

0000000000400c20 <fprintf@plt>:
  400c20:	ff 25 4a 19 20 00    	jmpq   *0x20194a(%rip)        # 602570 <_GLOBAL_OFFSET_TABLE_+0xf0>
  400c26:	68 1b 00 00 00       	pushq  $0x1b
  400c2b:	e9 30 fe ff ff       	jmpq   400a60 <_init+0x18>

0000000000400c30 <fflush@plt>:
  400c30:	ff 25 42 19 20 00    	jmpq   *0x201942(%rip)        # 602578 <_GLOBAL_OFFSET_TABLE_+0xf8>
  400c36:	68 1c 00 00 00       	pushq  $0x1c
  400c3b:	e9 20 fe ff ff       	jmpq   400a60 <_init+0x18>

Disassembly of section .text:

0000000000400c40 <_start>:
  400c40:	31 ed                	xor    %ebp,%ebp
  400c42:	49 89 d1             	mov    %rdx,%r9
  400c45:	5e                   	pop    %rsi
  400c46:	48 89 e2             	mov    %rsp,%rdx
  400c49:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  400c4d:	50                   	push   %rax
  400c4e:	54                   	push   %rsp
  400c4f:	49 c7 c0 90 18 40 00 	mov    $0x401890,%r8
  400c56:	48 c7 c1 00 18 40 00 	mov    $0x401800,%rcx
  400c5d:	48 c7 c7 24 0d 40 00 	mov    $0x400d24,%rdi
  400c64:	e8 77 fe ff ff       	callq  400ae0 <__libc_start_main@plt>
  400c69:	f4                   	hlt    
  400c6a:	90                   	nop
  400c6b:	90                   	nop

0000000000400c6c <call_gmon_start>:
  400c6c:	48 83 ec 08          	sub    $0x8,%rsp
  400c70:	48 8b 05 01 18 20 00 	mov    0x201801(%rip),%rax        # 602478 <_DYNAMIC+0x190>
  400c77:	48 85 c0             	test   %rax,%rax
  400c7a:	74 02                	je     400c7e <call_gmon_start+0x12>
  400c7c:	ff d0                	callq  *%rax
  400c7e:	48 83 c4 08          	add    $0x8,%rsp
  400c82:	c3                   	retq   
  400c83:	90                   	nop
  400c84:	90                   	nop
  400c85:	90                   	nop
  400c86:	90                   	nop
  400c87:	90                   	nop
  400c88:	90                   	nop
  400c89:	90                   	nop
  400c8a:	90                   	nop
  400c8b:	90                   	nop
  400c8c:	90                   	nop
  400c8d:	90                   	nop
  400c8e:	90                   	nop
  400c8f:	90                   	nop

0000000000400c90 <__do_global_dtors_aux>:
  400c90:	55                   	push   %rbp
  400c91:	48 89 e5             	mov    %rsp,%rbp
  400c94:	53                   	push   %rbx
  400c95:	48 83 ec 08          	sub    $0x8,%rsp
  400c99:	80 3d b8 1f 20 00 00 	cmpb   $0x0,0x201fb8(%rip)        # 602c58 <completed.5895>
  400ca0:	75 4b                	jne    400ced <__do_global_dtors_aux+0x5d>
  400ca2:	bb d8 22 60 00       	mov    $0x6022d8,%ebx
  400ca7:	48 8b 05 b2 1f 20 00 	mov    0x201fb2(%rip),%rax        # 602c60 <dtor_idx.5897>
  400cae:	48 81 eb d0 22 60 00 	sub    $0x6022d0,%rbx
  400cb5:	48 c1 fb 03          	sar    $0x3,%rbx
  400cb9:	48 83 eb 01          	sub    $0x1,%rbx
  400cbd:	48 39 d8             	cmp    %rbx,%rax
  400cc0:	73 24                	jae    400ce6 <__do_global_dtors_aux+0x56>
  400cc2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  400cc8:	48 83 c0 01          	add    $0x1,%rax
  400ccc:	48 89 05 8d 1f 20 00 	mov    %rax,0x201f8d(%rip)        # 602c60 <dtor_idx.5897>
  400cd3:	ff 14 c5 d0 22 60 00 	callq  *0x6022d0(,%rax,8)
  400cda:	48 8b 05 7f 1f 20 00 	mov    0x201f7f(%rip),%rax        # 602c60 <dtor_idx.5897>
  400ce1:	48 39 d8             	cmp    %rbx,%rax
  400ce4:	72 e2                	jb     400cc8 <__do_global_dtors_aux+0x38>
  400ce6:	c6 05 6b 1f 20 00 01 	movb   $0x1,0x201f6b(%rip)        # 602c58 <completed.5895>
  400ced:	48 83 c4 08          	add    $0x8,%rsp
  400cf1:	5b                   	pop    %rbx
  400cf2:	5d                   	pop    %rbp
  400cf3:	c3                   	retq   
  400cf4:	66 66 66 2e 0f 1f 84 	data32 data32 nopw %cs:0x0(%rax,%rax,1)
  400cfb:	00 00 00 00 00 

0000000000400d00 <frame_dummy>:
  400d00:	48 83 3d d8 15 20 00 	cmpq   $0x0,0x2015d8(%rip)        # 6022e0 <__JCR_END__>
  400d07:	00 
  400d08:	55                   	push   %rbp
  400d09:	48 89 e5             	mov    %rsp,%rbp
  400d0c:	74 12                	je     400d20 <frame_dummy+0x20>
  400d0e:	b8 00 00 00 00       	mov    $0x0,%eax
  400d13:	48 85 c0             	test   %rax,%rax
  400d16:	74 08                	je     400d20 <frame_dummy+0x20>
  400d18:	5d                   	pop    %rbp
  400d19:	bf e0 22 60 00       	mov    $0x6022e0,%edi
  400d1e:	ff e0                	jmpq   *%rax
  400d20:	5d                   	pop    %rbp
  400d21:	c3                   	retq   
  400d22:	90                   	nop
  400d23:	90                   	nop

0000000000400d24 <main>:
  400d24:	53                   	push   %rbx
  400d25:	48 89 f3             	mov    %rsi,%rbx
  400d28:	83 ff 01             	cmp    $0x1,%edi
  400d2b:	75 10                	jne    400d3d <main+0x19>
  400d2d:	48 8b 05 0c 1f 20 00 	mov    0x201f0c(%rip),%rax        # 602c40 <stdin@@GLIBC_2.2.5>
  400d34:	48 89 05 e5 21 20 00 	mov    %rax,0x2021e5(%rip)        # 602f20 <infile>
  400d3b:	eb 56                	jmp    400d93 <main+0x6f>
  400d3d:	83 ff 02             	cmp    $0x2,%edi
  400d40:	75 35                	jne    400d77 <main+0x53>
  400d42:	48 8b 7e 08          	mov    0x8(%rsi),%rdi
  400d46:	be 46 1d 40 00       	mov    $0x401d46,%esi
  400d4b:	e8 80 fd ff ff       	callq  400ad0 <fopen@plt>
  400d50:	48 89 05 c9 21 20 00 	mov    %rax,0x2021c9(%rip)        # 602f20 <infile>
  400d57:	48 85 c0             	test   %rax,%rax
  400d5a:	75 37                	jne    400d93 <main+0x6f>
  400d5c:	48 8b 53 08          	mov    0x8(%rbx),%rdx
  400d60:	48 8b 33             	mov    (%rbx),%rsi
  400d63:	bf 10 19 40 00       	mov    $0x401910,%edi
  400d68:	e8 03 fd ff ff       	callq  400a70 <printf@plt>
  400d6d:	bf 08 00 00 00       	mov    $0x8,%edi
  400d72:	e8 49 fd ff ff       	callq  400ac0 <exit@plt>
  400d77:	48 8b 36             	mov    (%rsi),%rsi
  400d7a:	bf 2d 19 40 00       	mov    $0x40192d,%edi
  400d7f:	b8 00 00 00 00       	mov    $0x0,%eax
  400d84:	e8 e7 fc ff ff       	callq  400a70 <printf@plt>
  400d89:	bf 08 00 00 00       	mov    $0x8,%edi
  400d8e:	e8 2d fd ff ff       	callq  400ac0 <exit@plt>
  400d93:	e8 ff 05 00 00       	callq  401397 <initialize_bomb>
  400d98:	bf 78 19 40 00       	mov    $0x401978,%edi
  400d9d:	e8 fe fc ff ff       	callq  400aa0 <puts@plt>
  400da2:	bf b8 19 40 00       	mov    $0x4019b8,%edi
  400da7:	e8 f4 fc ff ff       	callq  400aa0 <puts@plt>
  400dac:	e8 ae 08 00 00       	callq  40165f <read_line>
  400db1:	48 89 c7             	mov    %rax,%rdi
  400db4:	e8 b7 00 00 00       	callq  400e70 <phase_1>
  400db9:	e8 c7 09 00 00       	callq  401785 <phase_defused>
  400dbe:	bf e8 19 40 00       	mov    $0x4019e8,%edi
  400dc3:	e8 d8 fc ff ff       	callq  400aa0 <puts@plt>
  400dc8:	e8 92 08 00 00       	callq  40165f <read_line>
  400dcd:	48 89 c7             	mov    %rax,%rdi
  400dd0:	e8 b7 00 00 00       	callq  400e8c <phase_2>
  400dd5:	e8 ab 09 00 00       	callq  401785 <phase_defused>
  400dda:	bf 47 19 40 00       	mov    $0x401947,%edi
  400ddf:	e8 bc fc ff ff       	callq  400aa0 <puts@plt>
  400de4:	e8 76 08 00 00       	callq  40165f <read_line>
  400de9:	48 89 c7             	mov    %rax,%rdi
  400dec:	e8 08 01 00 00       	callq  400ef9 <phase_3>
  400df1:	e8 8f 09 00 00       	callq  401785 <phase_defused>
  400df6:	bf 65 19 40 00       	mov    $0x401965,%edi
  400dfb:	e8 a0 fc ff ff       	callq  400aa0 <puts@plt>
  400e00:	e8 5a 08 00 00       	callq  40165f <read_line>
  400e05:	48 89 c7             	mov    %rax,%rdi
  400e08:	e8 b4 01 00 00       	callq  400fc1 <phase_4>
  400e0d:	e8 73 09 00 00       	callq  401785 <phase_defused>
  400e12:	bf 18 1a 40 00       	mov    $0x401a18,%edi
  400e17:	e8 84 fc ff ff       	callq  400aa0 <puts@plt>
  400e1c:	e8 3e 08 00 00       	callq  40165f <read_line>
  400e21:	48 89 c7             	mov    %rax,%rdi
  400e24:	e8 d9 01 00 00       	callq  401002 <phase_5>
  400e29:	e8 57 09 00 00       	callq  401785 <phase_defused>
  400e2e:	bf 40 1a 40 00       	mov    $0x401a40,%edi
  400e33:	e8 68 fc ff ff       	callq  400aa0 <puts@plt>
  400e38:	bf 78 1a 40 00       	mov    $0x401a78,%edi
  400e3d:	e8 5e fc ff ff       	callq  400aa0 <puts@plt>
  400e42:	bf b8 1a 40 00       	mov    $0x401ab8,%edi
  400e47:	e8 54 fc ff ff       	callq  400aa0 <puts@plt>
  400e4c:	e8 0e 08 00 00       	callq  40165f <read_line>
  400e51:	48 89 c7             	mov    %rax,%rdi
  400e54:	e8 80 02 00 00       	callq  4010d9 <phase_6>
  400e59:	e8 27 09 00 00       	callq  401785 <phase_defused>
  400e5e:	b8 00 00 00 00       	mov    $0x0,%eax
  400e63:	5b                   	pop    %rbx
  400e64:	c3                   	retq   
  400e65:	90                   	nop
  400e66:	90                   	nop
  400e67:	90                   	nop
  400e68:	90                   	nop
  400e69:	90                   	nop
  400e6a:	90                   	nop
  400e6b:	90                   	nop
  400e6c:	90                   	nop
  400e6d:	90                   	nop
  400e6e:	90                   	nop
  400e6f:	90                   	nop

0000000000400e70 <phase_1>:
  400e70:	48 83 ec 08          	sub    $0x8,%rsp
  400e74:	be f8 1a 40 00       	mov    $0x401af8,%esi
  400e79:	e8 bf 03 00 00       	callq  40123d <strings_not_equal>
  400e7e:	85 c0                	test   %eax,%eax
  400e80:	74 05                	je     400e87 <phase_1+0x17>
  400e82:	e8 b6 07 00 00       	callq  40163d <explode_bomb>
  400e87:	48 83 c4 08          	add    $0x8,%rsp
  400e8b:	c3                   	retq   

0000000000400e8c <phase_2>:
  400e8c:	48 89 5c 24 e0       	mov    %rbx,-0x20(%rsp)
  400e91:	48 89 6c 24 e8       	mov    %rbp,-0x18(%rsp)
  400e96:	4c 89 64 24 f0       	mov    %r12,-0x10(%rsp)
  400e9b:	4c 89 6c 24 f8       	mov    %r13,-0x8(%rsp)
  400ea0:	48 83 ec 48          	sub    $0x48,%rsp
  400ea4:	48 89 e6             	mov    %rsp,%rsi
  400ea7:	e8 97 08 00 00       	callq  401743 <read_six_numbers>
  400eac:	48 89 e5             	mov    %rsp,%rbp
  400eaf:	4c 8d 6c 24 0c       	lea    0xc(%rsp),%r13
  400eb4:	41 bc 00 00 00 00    	mov    $0x0,%r12d
  400eba:	48 89 eb             	mov    %rbp,%rbx
  400ebd:	8b 45 0c             	mov    0xc(%rbp),%eax
  400ec0:	39 45 00             	cmp    %eax,0x0(%rbp)
  400ec3:	74 05                	je     400eca <phase_2+0x3e>
  400ec5:	e8 73 07 00 00       	callq  40163d <explode_bomb>
  400eca:	44 03 23             	add    (%rbx),%r12d
  400ecd:	48 83 c5 04          	add    $0x4,%rbp
  400ed1:	4c 39 ed             	cmp    %r13,%rbp
  400ed4:	75 e4                	jne    400eba <phase_2+0x2e>
  400ed6:	45 85 e4             	test   %r12d,%r12d
  400ed9:	75 05                	jne    400ee0 <phase_2+0x54>
  400edb:	e8 5d 07 00 00       	callq  40163d <explode_bomb>
  400ee0:	48 8b 5c 24 28       	mov    0x28(%rsp),%rbx
  400ee5:	48 8b 6c 24 30       	mov    0x30(%rsp),%rbp
  400eea:	4c 8b 64 24 38       	mov    0x38(%rsp),%r12
  400eef:	4c 8b 6c 24 40       	mov    0x40(%rsp),%r13
  400ef4:	48 83 c4 48          	add    $0x48,%rsp
  400ef8:	c3                   	retq   

0000000000400ef9 <phase_3>:
  400ef9:	48 83 ec 18          	sub    $0x18,%rsp
  400efd:	48 8d 4c 24 08       	lea    0x8(%rsp),%rcx
  400f02:	48 8d 54 24 0c       	lea    0xc(%rsp),%rdx
  400f07:	be be 1e 40 00       	mov    $0x401ebe,%esi
  400f0c:	b8 00 00 00 00       	mov    $0x0,%eax
  400f11:	e8 9a fb ff ff       	callq  400ab0 <__isoc99_sscanf@plt>
  400f16:	83 f8 01             	cmp    $0x1,%eax
  400f19:	7f 05                	jg     400f20 <phase_3+0x27>
  400f1b:	e8 1d 07 00 00       	callq  40163d <explode_bomb>
  400f20:	83 7c 24 0c 07       	cmpl   $0x7,0xc(%rsp)
  400f25:	77 3c                	ja     400f63 <phase_3+0x6a>
  400f27:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  400f2b:	ff 24 c5 60 1b 40 00 	jmpq   *0x401b60(,%rax,8)
  400f32:	b8 17 02 00 00       	mov    $0x217,%eax
  400f37:	eb 3b                	jmp    400f74 <phase_3+0x7b>
  400f39:	b8 d6 00 00 00       	mov    $0xd6,%eax
  400f3e:	eb 34                	jmp    400f74 <phase_3+0x7b>
  400f40:	b8 53 01 00 00       	mov    $0x153,%eax
  400f45:	eb 2d                	jmp    400f74 <phase_3+0x7b>
  400f47:	b8 77 00 00 00       	mov    $0x77,%eax
  400f4c:	eb 26                	jmp    400f74 <phase_3+0x7b>
  400f4e:	b8 60 01 00 00       	mov    $0x160,%eax
  400f53:	eb 1f                	jmp    400f74 <phase_3+0x7b>
  400f55:	b8 97 03 00 00       	mov    $0x397,%eax
  400f5a:	eb 18                	jmp    400f74 <phase_3+0x7b>
  400f5c:	b8 9c 01 00 00       	mov    $0x19c,%eax
  400f61:	eb 11                	jmp    400f74 <phase_3+0x7b>
  400f63:	e8 d5 06 00 00       	callq  40163d <explode_bomb>
  400f68:	b8 00 00 00 00       	mov    $0x0,%eax
  400f6d:	eb 05                	jmp    400f74 <phase_3+0x7b>
  400f6f:	b8 9e 03 00 00       	mov    $0x39e,%eax
  400f74:	3b 44 24 08          	cmp    0x8(%rsp),%eax
  400f78:	74 05                	je     400f7f <phase_3+0x86>
  400f7a:	e8 be 06 00 00       	callq  40163d <explode_bomb>
  400f7f:	48 83 c4 18          	add    $0x18,%rsp
  400f83:	c3                   	retq   

0000000000400f84 <func4>:
  400f84:	48 89 5c 24 f0       	mov    %rbx,-0x10(%rsp)
  400f89:	48 89 6c 24 f8       	mov    %rbp,-0x8(%rsp)
  400f8e:	48 83 ec 18          	sub    $0x18,%rsp
  400f92:	89 fb                	mov    %edi,%ebx
  400f94:	b8 01 00 00 00       	mov    $0x1,%eax
  400f99:	83 ff 01             	cmp    $0x1,%edi
  400f9c:	7e 14                	jle    400fb2 <func4+0x2e>
  400f9e:	8d 7b ff             	lea    -0x1(%rbx),%edi
  400fa1:	e8 de ff ff ff       	callq  400f84 <func4>
  400fa6:	89 c5                	mov    %eax,%ebp
  400fa8:	8d 7b fe             	lea    -0x2(%rbx),%edi
  400fab:	e8 d4 ff ff ff       	callq  400f84 <func4>
  400fb0:	01 e8                	add    %ebp,%eax
  400fb2:	48 8b 5c 24 08       	mov    0x8(%rsp),%rbx
  400fb7:	48 8b 6c 24 10       	mov    0x10(%rsp),%rbp
  400fbc:	48 83 c4 18          	add    $0x18,%rsp
  400fc0:	c3                   	retq   

0000000000400fc1 <phase_4>:
  400fc1:	48 83 ec 18          	sub    $0x18,%rsp
  400fc5:	48 8d 54 24 0c       	lea    0xc(%rsp),%rdx
  400fca:	be c1 1e 40 00       	mov    $0x401ec1,%esi
  400fcf:	b8 00 00 00 00       	mov    $0x0,%eax
  400fd4:	e8 d7 fa ff ff       	callq  400ab0 <__isoc99_sscanf@plt>
  400fd9:	83 f8 01             	cmp    $0x1,%eax
  400fdc:	75 07                	jne    400fe5 <phase_4+0x24>
  400fde:	83 7c 24 0c 00       	cmpl   $0x0,0xc(%rsp)
  400fe3:	7f 05                	jg     400fea <phase_4+0x29>
  400fe5:	e8 53 06 00 00       	callq  40163d <explode_bomb>
  400fea:	8b 7c 24 0c          	mov    0xc(%rsp),%edi
  400fee:	e8 91 ff ff ff       	callq  400f84 <func4>
  400ff3:	83 f8 37             	cmp    $0x37,%eax
  400ff6:	74 05                	je     400ffd <phase_4+0x3c>
  400ff8:	e8 40 06 00 00       	callq  40163d <explode_bomb>
  400ffd:	48 83 c4 18          	add    $0x18,%rsp
  401001:	c3                   	retq   

0000000000401002 <phase_5>:
  401002:	48 83 ec 18          	sub    $0x18,%rsp
  401006:	48 8d 4c 24 08       	lea    0x8(%rsp),%rcx
  40100b:	48 8d 54 24 0c       	lea    0xc(%rsp),%rdx
  401010:	be be 1e 40 00       	mov    $0x401ebe,%esi
  401015:	b8 00 00 00 00       	mov    $0x0,%eax
  40101a:	e8 91 fa ff ff       	callq  400ab0 <__isoc99_sscanf@plt>
  40101f:	83 f8 01             	cmp    $0x1,%eax
  401022:	7f 05                	jg     401029 <phase_5+0x27>
  401024:	e8 14 06 00 00       	callq  40163d <explode_bomb>
  401029:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  40102d:	83 e0 0f             	and    $0xf,%eax
  401030:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  401034:	83 f8 0f             	cmp    $0xf,%eax
  401037:	74 2c                	je     401065 <phase_5+0x63>
  401039:	b9 00 00 00 00       	mov    $0x0,%ecx
  40103e:	ba 00 00 00 00       	mov    $0x0,%edx
  401043:	83 c2 01             	add    $0x1,%edx
  401046:	48 98                	cltq   
  401048:	8b 04 85 a0 1b 40 00 	mov    0x401ba0(,%rax,4),%eax
  40104f:	01 c1                	add    %eax,%ecx
  401051:	83 f8 0f             	cmp    $0xf,%eax
  401054:	75 ed                	jne    401043 <phase_5+0x41>
  401056:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  40105a:	83 fa 0c             	cmp    $0xc,%edx
  40105d:	75 06                	jne    401065 <phase_5+0x63>
  40105f:	3b 4c 24 08          	cmp    0x8(%rsp),%ecx
  401063:	74 05                	je     40106a <phase_5+0x68>
  401065:	e8 d3 05 00 00       	callq  40163d <explode_bomb>
  40106a:	48 83 c4 18          	add    $0x18,%rsp
  40106e:	c3                   	retq   

000000000040106f <fun6>:
  40106f:	4c 8b 47 08          	mov    0x8(%rdi),%r8
  401073:	48 c7 47 08 00 00 00 	movq   $0x0,0x8(%rdi)
  40107a:	00 
  40107b:	48 89 f8             	mov    %rdi,%rax
  40107e:	48 89 f9             	mov    %rdi,%rcx
  401081:	4d 85 c0             	test   %r8,%r8
  401084:	75 40                	jne    4010c6 <fun6+0x57>
  401086:	48 89 f8             	mov    %rdi,%rax
  401089:	c3                   	retq   
  40108a:	48 89 d1             	mov    %rdx,%rcx
  40108d:	48 8b 51 08          	mov    0x8(%rcx),%rdx
  401091:	48 85 d2             	test   %rdx,%rdx
  401094:	74 09                	je     40109f <fun6+0x30>
  401096:	39 32                	cmp    %esi,(%rdx)
  401098:	7f f0                	jg     40108a <fun6+0x1b>
  40109a:	48 89 cf             	mov    %rcx,%rdi
  40109d:	eb 03                	jmp    4010a2 <fun6+0x33>
  40109f:	48 89 cf             	mov    %rcx,%rdi
  4010a2:	48 39 d7             	cmp    %rdx,%rdi
  4010a5:	74 06                	je     4010ad <fun6+0x3e>
  4010a7:	4c 89 47 08          	mov    %r8,0x8(%rdi)
  4010ab:	eb 03                	jmp    4010b0 <fun6+0x41>
  4010ad:	4c 89 c0             	mov    %r8,%rax
  4010b0:	49 8b 48 08          	mov    0x8(%r8),%rcx
  4010b4:	49 89 50 08          	mov    %rdx,0x8(%r8)
  4010b8:	48 85 c9             	test   %rcx,%rcx
  4010bb:	74 1a                	je     4010d7 <fun6+0x68>
  4010bd:	49 89 c8             	mov    %rcx,%r8
  4010c0:	48 89 c1             	mov    %rax,%rcx
  4010c3:	48 89 c7             	mov    %rax,%rdi
  4010c6:	48 89 ca             	mov    %rcx,%rdx
  4010c9:	48 85 c9             	test   %rcx,%rcx
  4010cc:	74 d4                	je     4010a2 <fun6+0x33>
  4010ce:	41 8b 30             	mov    (%r8),%esi
  4010d1:	39 31                	cmp    %esi,(%rcx)
  4010d3:	7f b8                	jg     40108d <fun6+0x1e>
  4010d5:	eb cb                	jmp    4010a2 <fun6+0x33>
  4010d7:	f3 c3                	repz retq 

00000000004010d9 <phase_6>:
  4010d9:	48 83 ec 08          	sub    $0x8,%rsp
  4010dd:	ba 0a 00 00 00       	mov    $0xa,%edx
  4010e2:	be 00 00 00 00       	mov    $0x0,%esi
  4010e7:	e8 94 fa ff ff       	callq  400b80 <strtol@plt>
  4010ec:	89 05 8e 16 20 00    	mov    %eax,0x20168e(%rip)        # 602780 <node0>
  4010f2:	bf 80 27 60 00       	mov    $0x602780,%edi
  4010f7:	e8 73 ff ff ff       	callq  40106f <fun6>
  4010fc:	48 8b 40 08          	mov    0x8(%rax),%rax
  401100:	48 8b 40 08          	mov    0x8(%rax),%rax
  401104:	48 8b 40 08          	mov    0x8(%rax),%rax
  401108:	8b 15 72 16 20 00    	mov    0x201672(%rip),%edx        # 602780 <node0>
  40110e:	39 10                	cmp    %edx,(%rax)
  401110:	74 05                	je     401117 <phase_6+0x3e>
  401112:	e8 26 05 00 00       	callq  40163d <explode_bomb>
  401117:	48 83 c4 08          	add    $0x8,%rsp
  40111b:	c3                   	retq   

000000000040111c <fun7>:
  40111c:	48 83 ec 08          	sub    $0x8,%rsp
  401120:	48 85 ff             	test   %rdi,%rdi
  401123:	74 2b                	je     401150 <fun7+0x34>
  401125:	8b 17                	mov    (%rdi),%edx
  401127:	39 f2                	cmp    %esi,%edx
  401129:	7e 0d                	jle    401138 <fun7+0x1c>
  40112b:	48 8b 7f 08          	mov    0x8(%rdi),%rdi
  40112f:	e8 e8 ff ff ff       	callq  40111c <fun7>
  401134:	01 c0                	add    %eax,%eax
  401136:	eb 1d                	jmp    401155 <fun7+0x39>
  401138:	b8 00 00 00 00       	mov    $0x0,%eax
  40113d:	39 f2                	cmp    %esi,%edx
  40113f:	74 14                	je     401155 <fun7+0x39>
  401141:	48 8b 7f 10          	mov    0x10(%rdi),%rdi
  401145:	e8 d2 ff ff ff       	callq  40111c <fun7>
  40114a:	8d 44 00 01          	lea    0x1(%rax,%rax,1),%eax
  40114e:	eb 05                	jmp    401155 <fun7+0x39>
  401150:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  401155:	48 83 c4 08          	add    $0x8,%rsp
  401159:	c3                   	retq   

000000000040115a <secret_phase>:
  40115a:	53                   	push   %rbx
  40115b:	e8 ff 04 00 00       	callq  40165f <read_line>
  401160:	ba 0a 00 00 00       	mov    $0xa,%edx
  401165:	be 00 00 00 00       	mov    $0x0,%esi
  40116a:	48 89 c7             	mov    %rax,%rdi
  40116d:	e8 0e fa ff ff       	callq  400b80 <strtol@plt>
  401172:	89 c3                	mov    %eax,%ebx
  401174:	8d 43 ff             	lea    -0x1(%rbx),%eax
  401177:	3d e8 03 00 00       	cmp    $0x3e8,%eax
  40117c:	76 05                	jbe    401183 <secret_phase+0x29>
  40117e:	e8 ba 04 00 00       	callq  40163d <explode_bomb>
  401183:	89 de                	mov    %ebx,%esi
  401185:	bf a0 25 60 00       	mov    $0x6025a0,%edi
  40118a:	e8 8d ff ff ff       	callq  40111c <fun7>
  40118f:	83 f8 03             	cmp    $0x3,%eax
  401192:	74 05                	je     401199 <secret_phase+0x3f>
  401194:	e8 a4 04 00 00       	callq  40163d <explode_bomb>
  401199:	bf 28 1b 40 00       	mov    $0x401b28,%edi
  40119e:	e8 fd f8 ff ff       	callq  400aa0 <puts@plt>
  4011a3:	e8 dd 05 00 00       	callq  401785 <phase_defused>
  4011a8:	5b                   	pop    %rbx
  4011a9:	c3                   	retq   
  4011aa:	90                   	nop
  4011ab:	90                   	nop
  4011ac:	90                   	nop
  4011ad:	90                   	nop
  4011ae:	90                   	nop
  4011af:	90                   	nop

00000000004011b0 <sig_handler>:
  4011b0:	48 83 ec 08          	sub    $0x8,%rsp
  4011b4:	bf e0 1b 40 00       	mov    $0x401be0,%edi
  4011b9:	e8 e2 f8 ff ff       	callq  400aa0 <puts@plt>
  4011be:	bf 03 00 00 00       	mov    $0x3,%edi
  4011c3:	e8 98 f9 ff ff       	callq  400b60 <sleep@plt>
  4011c8:	bf d8 1c 40 00       	mov    $0x401cd8,%edi
  4011cd:	b8 00 00 00 00       	mov    $0x0,%eax
  4011d2:	e8 99 f8 ff ff       	callq  400a70 <printf@plt>
  4011d7:	48 8b 3d 72 1a 20 00 	mov    0x201a72(%rip),%rdi        # 602c50 <stdout@@GLIBC_2.2.5>
  4011de:	e8 4d fa ff ff       	callq  400c30 <fflush@plt>
  4011e3:	bf 01 00 00 00       	mov    $0x1,%edi
  4011e8:	e8 73 f9 ff ff       	callq  400b60 <sleep@plt>
  4011ed:	bf e0 1c 40 00       	mov    $0x401ce0,%edi
  4011f2:	e8 a9 f8 ff ff       	callq  400aa0 <puts@plt>
  4011f7:	bf 10 00 00 00       	mov    $0x10,%edi
  4011fc:	e8 bf f8 ff ff       	callq  400ac0 <exit@plt>

0000000000401201 <invalid_phase>:
  401201:	48 83 ec 08          	sub    $0x8,%rsp
  401205:	48 89 fe             	mov    %rdi,%rsi
  401208:	bf e8 1c 40 00       	mov    $0x401ce8,%edi
  40120d:	b8 00 00 00 00       	mov    $0x0,%eax
  401212:	e8 59 f8 ff ff       	callq  400a70 <printf@plt>
  401217:	bf 08 00 00 00       	mov    $0x8,%edi
  40121c:	e8 9f f8 ff ff       	callq  400ac0 <exit@plt>

0000000000401221 <string_length>:
  401221:	b8 00 00 00 00       	mov    $0x0,%eax
  401226:	80 3f 00             	cmpb   $0x0,(%rdi)
  401229:	74 10                	je     40123b <string_length+0x1a>
  40122b:	48 89 fa             	mov    %rdi,%rdx
  40122e:	48 83 c2 01          	add    $0x1,%rdx
  401232:	89 d0                	mov    %edx,%eax
  401234:	29 f8                	sub    %edi,%eax
  401236:	80 3a 00             	cmpb   $0x0,(%rdx)
  401239:	75 f3                	jne    40122e <string_length+0xd>
  40123b:	f3 c3                	repz retq 

000000000040123d <strings_not_equal>:
  40123d:	48 89 5c 24 e8       	mov    %rbx,-0x18(%rsp)
  401242:	48 89 6c 24 f0       	mov    %rbp,-0x10(%rsp)
  401247:	4c 89 64 24 f8       	mov    %r12,-0x8(%rsp)
  40124c:	48 83 ec 18          	sub    $0x18,%rsp
  401250:	48 89 fb             	mov    %rdi,%rbx
  401253:	48 89 f5             	mov    %rsi,%rbp
  401256:	e8 c6 ff ff ff       	callq  401221 <string_length>
  40125b:	41 89 c4             	mov    %eax,%r12d
  40125e:	48 89 ef             	mov    %rbp,%rdi
  401261:	e8 bb ff ff ff       	callq  401221 <string_length>
  401266:	ba 01 00 00 00       	mov    $0x1,%edx
  40126b:	41 39 c4             	cmp    %eax,%r12d
  40126e:	75 36                	jne    4012a6 <strings_not_equal+0x69>
  401270:	0f b6 03             	movzbl (%rbx),%eax
  401273:	b2 00                	mov    $0x0,%dl
  401275:	84 c0                	test   %al,%al
  401277:	74 2d                	je     4012a6 <strings_not_equal+0x69>
  401279:	b2 01                	mov    $0x1,%dl
  40127b:	3a 45 00             	cmp    0x0(%rbp),%al
  40127e:	75 26                	jne    4012a6 <strings_not_equal+0x69>
  401280:	b8 00 00 00 00       	mov    $0x0,%eax
  401285:	eb 0a                	jmp    401291 <strings_not_equal+0x54>
  401287:	48 83 c0 01          	add    $0x1,%rax
  40128b:	3a 54 05 00          	cmp    0x0(%rbp,%rax,1),%dl
  40128f:	75 10                	jne    4012a1 <strings_not_equal+0x64>
  401291:	0f b6 54 03 01       	movzbl 0x1(%rbx,%rax,1),%edx
  401296:	84 d2                	test   %dl,%dl
  401298:	75 ed                	jne    401287 <strings_not_equal+0x4a>
  40129a:	ba 00 00 00 00       	mov    $0x0,%edx
  40129f:	eb 05                	jmp    4012a6 <strings_not_equal+0x69>
  4012a1:	ba 01 00 00 00       	mov    $0x1,%edx
  4012a6:	89 d0                	mov    %edx,%eax
  4012a8:	48 8b 1c 24          	mov    (%rsp),%rbx
  4012ac:	48 8b 6c 24 08       	mov    0x8(%rsp),%rbp
  4012b1:	4c 8b 64 24 10       	mov    0x10(%rsp),%r12
  4012b6:	48 83 c4 18          	add    $0x18,%rsp
  4012ba:	c3                   	retq   

00000000004012bb <open_clientfd>:
  4012bb:	48 89 5c 24 e8       	mov    %rbx,-0x18(%rsp)
  4012c0:	48 89 6c 24 f0       	mov    %rbp,-0x10(%rsp)
  4012c5:	4c 89 64 24 f8       	mov    %r12,-0x8(%rsp)
  4012ca:	48 83 ec 28          	sub    $0x28,%rsp
  4012ce:	48 89 fd             	mov    %rdi,%rbp
  4012d1:	41 89 f4             	mov    %esi,%r12d
  4012d4:	ba 00 00 00 00       	mov    $0x0,%edx
  4012d9:	be 01 00 00 00       	mov    $0x1,%esi
  4012de:	bf 02 00 00 00       	mov    $0x2,%edi
  4012e3:	e8 d8 f8 ff ff       	callq  400bc0 <socket@plt>
  4012e8:	89 c3                	mov    %eax,%ebx
  4012ea:	85 c0                	test   %eax,%eax
  4012ec:	79 14                	jns    401302 <open_clientfd+0x47>
  4012ee:	bf f9 1c 40 00       	mov    $0x401cf9,%edi
  4012f3:	e8 a8 f7 ff ff       	callq  400aa0 <puts@plt>
  4012f8:	bf 08 00 00 00       	mov    $0x8,%edi
  4012fd:	e8 be f7 ff ff       	callq  400ac0 <exit@plt>
  401302:	48 89 ef             	mov    %rbp,%rdi
  401305:	e8 86 f7 ff ff       	callq  400a90 <gethostbyname@plt>
  40130a:	48 85 c0             	test   %rax,%rax
  40130d:	75 14                	jne    401323 <open_clientfd+0x68>
  40130f:	bf 07 1d 40 00       	mov    $0x401d07,%edi
  401314:	e8 87 f7 ff ff       	callq  400aa0 <puts@plt>
  401319:	bf 08 00 00 00       	mov    $0x8,%edi
  40131e:	e8 9d f7 ff ff       	callq  400ac0 <exit@plt>
  401323:	48 c7 04 24 00 00 00 	movq   $0x0,(%rsp)
  40132a:	00 
  40132b:	48 c7 44 24 08 00 00 	movq   $0x0,0x8(%rsp)
  401332:	00 00 
  401334:	66 c7 04 24 02 00    	movw   $0x2,(%rsp)
  40133a:	48 63 50 14          	movslq 0x14(%rax),%rdx
  40133e:	48 8d 74 24 04       	lea    0x4(%rsp),%rsi
  401343:	48 8b 40 18          	mov    0x18(%rax),%rax
  401347:	48 8b 38             	mov    (%rax),%rdi
  40134a:	e8 e1 f7 ff ff       	callq  400b30 <bcopy@plt>
  40134f:	66 41 c1 cc 08       	ror    $0x8,%r12w
  401354:	66 44 89 64 24 02    	mov    %r12w,0x2(%rsp)
  40135a:	ba 10 00 00 00       	mov    $0x10,%edx
  40135f:	48 89 e6             	mov    %rsp,%rsi
  401362:	89 df                	mov    %ebx,%edi
  401364:	e8 27 f8 ff ff       	callq  400b90 <connect@plt>
  401369:	85 c0                	test   %eax,%eax
  40136b:	79 14                	jns    401381 <open_clientfd+0xc6>
  40136d:	bf 15 1d 40 00       	mov    $0x401d15,%edi
  401372:	e8 29 f7 ff ff       	callq  400aa0 <puts@plt>
  401377:	bf 08 00 00 00       	mov    $0x8,%edi
  40137c:	e8 3f f7 ff ff       	callq  400ac0 <exit@plt>
  401381:	89 d8                	mov    %ebx,%eax
  401383:	48 8b 5c 24 10       	mov    0x10(%rsp),%rbx
  401388:	48 8b 6c 24 18       	mov    0x18(%rsp),%rbp
  40138d:	4c 8b 64 24 20       	mov    0x20(%rsp),%r12
  401392:	48 83 c4 28          	add    $0x28,%rsp
  401396:	c3                   	retq   

0000000000401397 <initialize_bomb>:
  401397:	48 83 ec 08          	sub    $0x8,%rsp
  40139b:	be b0 11 40 00       	mov    $0x4011b0,%esi
  4013a0:	bf 02 00 00 00       	mov    $0x2,%edi
  4013a5:	e8 06 f8 ff ff       	callq  400bb0 <signal@plt>
  4013aa:	48 83 c4 08          	add    $0x8,%rsp
  4013ae:	c3                   	retq   

00000000004013af <blank_line>:
  4013af:	55                   	push   %rbp
  4013b0:	53                   	push   %rbx
  4013b1:	48 83 ec 08          	sub    $0x8,%rsp
  4013b5:	48 89 fd             	mov    %rdi,%rbp
  4013b8:	eb 17                	jmp    4013d1 <blank_line+0x22>
  4013ba:	e8 81 f7 ff ff       	callq  400b40 <__ctype_b_loc@plt>
  4013bf:	48 83 c5 01          	add    $0x1,%rbp
  4013c3:	48 0f be db          	movsbq %bl,%rbx
  4013c7:	48 8b 00             	mov    (%rax),%rax
  4013ca:	f6 44 58 01 20       	testb  $0x20,0x1(%rax,%rbx,2)
  4013cf:	74 0f                	je     4013e0 <blank_line+0x31>
  4013d1:	0f b6 5d 00          	movzbl 0x0(%rbp),%ebx
  4013d5:	84 db                	test   %bl,%bl
  4013d7:	75 e1                	jne    4013ba <blank_line+0xb>
  4013d9:	b8 01 00 00 00       	mov    $0x1,%eax
  4013de:	eb 05                	jmp    4013e5 <blank_line+0x36>
  4013e0:	b8 00 00 00 00       	mov    $0x0,%eax
  4013e5:	48 83 c4 08          	add    $0x8,%rsp
  4013e9:	5b                   	pop    %rbx
  4013ea:	5d                   	pop    %rbp
  4013eb:	c3                   	retq   

00000000004013ec <skip>:
  4013ec:	53                   	push   %rbx
  4013ed:	48 63 05 8c 18 20 00 	movslq 0x20188c(%rip),%rax        # 602c80 <num_input_strings>
  4013f4:	48 8d 3c 80          	lea    (%rax,%rax,4),%rdi
  4013f8:	48 c1 e7 04          	shl    $0x4,%rdi
  4013fc:	48 81 c7 40 2f 60 00 	add    $0x602f40,%rdi
  401403:	48 8b 15 16 1b 20 00 	mov    0x201b16(%rip),%rdx        # 602f20 <infile>
  40140a:	be 50 00 00 00       	mov    $0x50,%esi
  40140f:	e8 fc f6 ff ff       	callq  400b10 <fgets@plt>
  401414:	48 89 c3             	mov    %rax,%rbx
  401417:	48 85 c0             	test   %rax,%rax
  40141a:	74 0c                	je     401428 <skip+0x3c>
  40141c:	48 89 c7             	mov    %rax,%rdi
  40141f:	e8 8b ff ff ff       	callq  4013af <blank_line>
  401424:	85 c0                	test   %eax,%eax
  401426:	75 c5                	jne    4013ed <skip+0x1>
  401428:	48 89 d8             	mov    %rbx,%rax
  40142b:	5b                   	pop    %rbx
  40142c:	c3                   	retq   

000000000040142d <send_msg>:
  40142d:	41 54                	push   %r12
  40142f:	55                   	push   %rbp
  401430:	53                   	push   %rbx
  401431:	48 83 ec 60          	sub    $0x60,%rsp
  401435:	89 fb                	mov    %edi,%ebx
  401437:	bf 00 00 00 00       	mov    $0x0,%edi
  40143c:	e8 af f6 ff ff       	callq  400af0 <dup@plt>
  401441:	41 89 c4             	mov    %eax,%r12d
  401444:	83 f8 ff             	cmp    $0xffffffff,%eax
  401447:	75 14                	jne    40145d <send_msg+0x30>
  401449:	bf 34 1d 40 00       	mov    $0x401d34,%edi
  40144e:	e8 4d f6 ff ff       	callq  400aa0 <puts@plt>
  401453:	bf 08 00 00 00       	mov    $0x8,%edi
  401458:	e8 63 f6 ff ff       	callq  400ac0 <exit@plt>
  40145d:	bf 00 00 00 00       	mov    $0x0,%edi
  401462:	e8 19 f6 ff ff       	callq  400a80 <close@plt>
  401467:	83 f8 ff             	cmp    $0xffffffff,%eax
  40146a:	75 14                	jne    401480 <send_msg+0x53>
  40146c:	bf 48 1d 40 00       	mov    $0x401d48,%edi
  401471:	e8 2a f6 ff ff       	callq  400aa0 <puts@plt>
  401476:	bf 08 00 00 00       	mov    $0x8,%edi
  40147b:	e8 40 f6 ff ff       	callq  400ac0 <exit@plt>
  401480:	e8 1b f7 ff ff       	callq  400ba0 <tmpfile@plt>
  401485:	48 89 c5             	mov    %rax,%rbp
  401488:	48 85 c0             	test   %rax,%rax
  40148b:	75 14                	jne    4014a1 <send_msg+0x74>
  40148d:	bf 5b 1d 40 00       	mov    $0x401d5b,%edi
  401492:	e8 09 f6 ff ff       	callq  400aa0 <puts@plt>
  401497:	bf 08 00 00 00       	mov    $0x8,%edi
  40149c:	e8 1f f6 ff ff       	callq  400ac0 <exit@plt>
  4014a1:	48 89 c1             	mov    %rax,%rcx
  4014a4:	ba 1b 00 00 00       	mov    $0x1b,%edx
  4014a9:	be 01 00 00 00       	mov    $0x1,%esi
  4014ae:	bf 70 1d 40 00       	mov    $0x401d70,%edi
  4014b3:	e8 58 f7 ff ff       	callq  400c10 <fwrite@plt>
  4014b8:	48 89 ee             	mov    %rbp,%rsi
  4014bb:	bf 0a 00 00 00       	mov    $0xa,%edi
  4014c0:	e8 5b f6 ff ff       	callq  400b20 <fputc@plt>
  4014c5:	bf 00 00 00 00       	mov    $0x0,%edi
  4014ca:	e8 11 f7 ff ff       	callq  400be0 <cuserid@plt>
  4014cf:	48 85 c0             	test   %rax,%rax
  4014d2:	75 16                	jne    4014ea <send_msg+0xbd>
  4014d4:	c7 44 24 10 6e 6f 62 	movl   $0x6f626f6e,0x10(%rsp)
  4014db:	6f 
  4014dc:	66 c7 44 24 14 64 79 	movw   $0x7964,0x14(%rsp)
  4014e3:	c6 44 24 16 00       	movb   $0x0,0x16(%rsp)
  4014e8:	eb 0d                	jmp    4014f7 <send_msg+0xca>
  4014ea:	48 89 c6             	mov    %rax,%rsi
  4014ed:	48 8d 7c 24 10       	lea    0x10(%rsp),%rdi
  4014f2:	e8 f9 f6 ff ff       	callq  400bf0 <strcpy@plt>
  4014f7:	85 db                	test   %ebx,%ebx
  4014f9:	b8 23 1d 40 00       	mov    $0x401d23,%eax
  4014fe:	41 b9 2b 1d 40 00    	mov    $0x401d2b,%r9d
  401504:	4c 0f 45 c8          	cmovne %rax,%r9
  401508:	8b 05 72 17 20 00    	mov    0x201772(%rip),%eax        # 602c80 <num_input_strings>
  40150e:	89 04 24             	mov    %eax,(%rsp)
  401511:	4c 8d 44 24 10       	lea    0x10(%rsp),%r8
  401516:	8b 0d 04 17 20 00    	mov    0x201704(%rip),%ecx        # 602c20 <bomb_id>
  40151c:	ba 20 28 60 00       	mov    $0x602820,%edx
  401521:	be 8c 1d 40 00       	mov    $0x401d8c,%esi
  401526:	48 89 ef             	mov    %rbp,%rdi
  401529:	b8 00 00 00 00       	mov    $0x0,%eax
  40152e:	e8 ed f6 ff ff       	callq  400c20 <fprintf@plt>
  401533:	83 3d 46 17 20 00 00 	cmpl   $0x0,0x201746(%rip)        # 602c80 <num_input_strings>
  40153a:	7e 4a                	jle    401586 <send_msg+0x159>
  40153c:	bb 00 00 00 00       	mov    $0x0,%ebx
  401541:	48 63 c3             	movslq %ebx,%rax
  401544:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
  401548:	48 c1 e0 04          	shl    $0x4,%rax
  40154c:	48 05 40 2f 60 00    	add    $0x602f40,%rax
  401552:	83 c3 01             	add    $0x1,%ebx
  401555:	48 89 04 24          	mov    %rax,(%rsp)
  401559:	41 89 d9             	mov    %ebx,%r9d
  40155c:	4c 8d 44 24 10       	lea    0x10(%rsp),%r8
  401561:	8b 0d b9 16 20 00    	mov    0x2016b9(%rip),%ecx        # 602c20 <bomb_id>
  401567:	ba 20 28 60 00       	mov    $0x602820,%edx
  40156c:	be a8 1d 40 00       	mov    $0x401da8,%esi
  401571:	48 89 ef             	mov    %rbp,%rdi
  401574:	b8 00 00 00 00       	mov    $0x0,%eax
  401579:	e8 a2 f6 ff ff       	callq  400c20 <fprintf@plt>
  40157e:	39 1d fc 16 20 00    	cmp    %ebx,0x2016fc(%rip)        # 602c80 <num_input_strings>
  401584:	7f bb                	jg     401541 <send_msg+0x114>
  401586:	48 89 ef             	mov    %rbp,%rdi
  401589:	e8 e2 f5 ff ff       	callq  400b70 <rewind@plt>
  40158e:	41 b8 18 1c 40 00    	mov    $0x401c18,%r8d
  401594:	b9 c4 1d 40 00       	mov    $0x401dc4,%ecx
  401599:	ba c9 1d 40 00       	mov    $0x401dc9,%edx
  40159e:	be e0 1d 40 00       	mov    $0x401de0,%esi
  4015a3:	bf 80 35 60 00       	mov    $0x603580,%edi
  4015a8:	b8 00 00 00 00       	mov    $0x0,%eax
  4015ad:	e8 9e f5 ff ff       	callq  400b50 <sprintf@plt>
  4015b2:	bf 80 35 60 00       	mov    $0x603580,%edi
  4015b7:	e8 44 f5 ff ff       	callq  400b00 <system@plt>
  4015bc:	85 c0                	test   %eax,%eax
  4015be:	74 14                	je     4015d4 <send_msg+0x1a7>
  4015c0:	bf e9 1d 40 00       	mov    $0x401de9,%edi
  4015c5:	e8 d6 f4 ff ff       	callq  400aa0 <puts@plt>
  4015ca:	bf 08 00 00 00       	mov    $0x8,%edi
  4015cf:	e8 ec f4 ff ff       	callq  400ac0 <exit@plt>
  4015d4:	48 89 ef             	mov    %rbp,%rdi
  4015d7:	e8 24 f6 ff ff       	callq  400c00 <fclose@plt>
  4015dc:	85 c0                	test   %eax,%eax
  4015de:	74 14                	je     4015f4 <send_msg+0x1c7>
  4015e0:	bf 03 1e 40 00       	mov    $0x401e03,%edi
  4015e5:	e8 b6 f4 ff ff       	callq  400aa0 <puts@plt>
  4015ea:	bf 08 00 00 00       	mov    $0x8,%edi
  4015ef:	e8 cc f4 ff ff       	callq  400ac0 <exit@plt>
  4015f4:	44 89 e7             	mov    %r12d,%edi
  4015f7:	e8 f4 f4 ff ff       	callq  400af0 <dup@plt>
  4015fc:	85 c0                	test   %eax,%eax
  4015fe:	74 14                	je     401614 <send_msg+0x1e7>
  401600:	bf 1c 1e 40 00       	mov    $0x401e1c,%edi
  401605:	e8 96 f4 ff ff       	callq  400aa0 <puts@plt>
  40160a:	bf 08 00 00 00       	mov    $0x8,%edi
  40160f:	e8 ac f4 ff ff       	callq  400ac0 <exit@plt>
  401614:	44 89 e7             	mov    %r12d,%edi
  401617:	e8 64 f4 ff ff       	callq  400a80 <close@plt>
  40161c:	85 c0                	test   %eax,%eax
  40161e:	74 14                	je     401634 <send_msg+0x207>
  401620:	bf 37 1e 40 00       	mov    $0x401e37,%edi
  401625:	e8 76 f4 ff ff       	callq  400aa0 <puts@plt>
  40162a:	bf 08 00 00 00       	mov    $0x8,%edi
  40162f:	e8 8c f4 ff ff       	callq  400ac0 <exit@plt>
  401634:	48 83 c4 60          	add    $0x60,%rsp
  401638:	5b                   	pop    %rbx
  401639:	5d                   	pop    %rbp
  40163a:	41 5c                	pop    %r12
  40163c:	c3                   	retq   

000000000040163d <explode_bomb>:
  40163d:	48 83 ec 08          	sub    $0x8,%rsp
  401641:	bf 4e 1e 40 00       	mov    $0x401e4e,%edi
  401646:	e8 55 f4 ff ff       	callq  400aa0 <puts@plt>
  40164b:	bf 57 1e 40 00       	mov    $0x401e57,%edi
  401650:	e8 4b f4 ff ff       	callq  400aa0 <puts@plt>
  401655:	bf 08 00 00 00       	mov    $0x8,%edi
  40165a:	e8 61 f4 ff ff       	callq  400ac0 <exit@plt>

000000000040165f <read_line>:
  40165f:	48 83 ec 08          	sub    $0x8,%rsp
  401663:	b8 00 00 00 00       	mov    $0x0,%eax
  401668:	e8 7f fd ff ff       	callq  4013ec <skip>
  40166d:	48 85 c0             	test   %rax,%rax
  401670:	75 64                	jne    4016d6 <read_line+0x77>
  401672:	48 8b 05 c7 15 20 00 	mov    0x2015c7(%rip),%rax        # 602c40 <stdin@@GLIBC_2.2.5>
  401679:	48 39 05 a0 18 20 00 	cmp    %rax,0x2018a0(%rip)        # 602f20 <infile>
  401680:	75 0f                	jne    401691 <read_line+0x32>
  401682:	bf 6e 1e 40 00       	mov    $0x401e6e,%edi
  401687:	e8 14 f4 ff ff       	callq  400aa0 <puts@plt>
  40168c:	e8 ac ff ff ff       	callq  40163d <explode_bomb>
  401691:	bf 8c 1e 40 00       	mov    $0x401e8c,%edi
  401696:	e8 35 f5 ff ff       	callq  400bd0 <getenv@plt>
  40169b:	48 85 c0             	test   %rax,%rax
  40169e:	74 0a                	je     4016aa <read_line+0x4b>
  4016a0:	bf 00 00 00 00       	mov    $0x0,%edi
  4016a5:	e8 16 f4 ff ff       	callq  400ac0 <exit@plt>
  4016aa:	48 8b 05 8f 15 20 00 	mov    0x20158f(%rip),%rax        # 602c40 <stdin@@GLIBC_2.2.5>
  4016b1:	48 89 05 68 18 20 00 	mov    %rax,0x201868(%rip)        # 602f20 <infile>
  4016b8:	b8 00 00 00 00       	mov    $0x0,%eax
  4016bd:	e8 2a fd ff ff       	callq  4013ec <skip>
  4016c2:	48 85 c0             	test   %rax,%rax
  4016c5:	75 0f                	jne    4016d6 <read_line+0x77>
  4016c7:	bf 6e 1e 40 00       	mov    $0x401e6e,%edi
  4016cc:	e8 cf f3 ff ff       	callq  400aa0 <puts@plt>
  4016d1:	e8 67 ff ff ff       	callq  40163d <explode_bomb>
  4016d6:	8b 15 a4 15 20 00    	mov    0x2015a4(%rip),%edx        # 602c80 <num_input_strings>
  4016dc:	48 63 c2             	movslq %edx,%rax
  4016df:	48 8d 34 80          	lea    (%rax,%rax,4),%rsi
  4016e3:	48 c1 e6 04          	shl    $0x4,%rsi
  4016e7:	48 81 c6 40 2f 60 00 	add    $0x602f40,%rsi
  4016ee:	48 89 f7             	mov    %rsi,%rdi
  4016f1:	b8 00 00 00 00       	mov    $0x0,%eax
  4016f6:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  4016fd:	f2 ae                	repnz scas %es:(%rdi),%al
  4016ff:	48 f7 d1             	not    %rcx
  401702:	83 e9 01             	sub    $0x1,%ecx
  401705:	83 f9 4f             	cmp    $0x4f,%ecx
  401708:	75 0f                	jne    401719 <read_line+0xba>
  40170a:	bf 97 1e 40 00       	mov    $0x401e97,%edi
  40170f:	e8 8c f3 ff ff       	callq  400aa0 <puts@plt>
  401714:	e8 24 ff ff ff       	callq  40163d <explode_bomb>
  401719:	83 e9 01             	sub    $0x1,%ecx
  40171c:	48 63 c9             	movslq %ecx,%rcx
  40171f:	48 63 c2             	movslq %edx,%rax
  401722:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
  401726:	48 c1 e0 04          	shl    $0x4,%rax
  40172a:	c6 84 01 40 2f 60 00 	movb   $0x0,0x602f40(%rcx,%rax,1)
  401731:	00 
  401732:	83 c2 01             	add    $0x1,%edx
  401735:	89 15 45 15 20 00    	mov    %edx,0x201545(%rip)        # 602c80 <num_input_strings>
  40173b:	48 89 f0             	mov    %rsi,%rax
  40173e:	48 83 c4 08          	add    $0x8,%rsp
  401742:	c3                   	retq   

0000000000401743 <read_six_numbers>:
  401743:	48 83 ec 18          	sub    $0x18,%rsp
  401747:	48 89 f2             	mov    %rsi,%rdx
  40174a:	48 8d 4e 04          	lea    0x4(%rsi),%rcx
  40174e:	48 8d 46 14          	lea    0x14(%rsi),%rax
  401752:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  401757:	48 8d 46 10          	lea    0x10(%rsi),%rax
  40175b:	48 89 04 24          	mov    %rax,(%rsp)
  40175f:	4c 8d 4e 0c          	lea    0xc(%rsi),%r9
  401763:	4c 8d 46 08          	lea    0x8(%rsi),%r8
  401767:	be b2 1e 40 00       	mov    $0x401eb2,%esi
  40176c:	b8 00 00 00 00       	mov    $0x0,%eax
  401771:	e8 3a f3 ff ff       	callq  400ab0 <__isoc99_sscanf@plt>
  401776:	83 f8 05             	cmp    $0x5,%eax
  401779:	7f 05                	jg     401780 <read_six_numbers+0x3d>
  40177b:	e8 bd fe ff ff       	callq  40163d <explode_bomb>
  401780:	48 83 c4 18          	add    $0x18,%rsp
  401784:	c3                   	retq   

0000000000401785 <phase_defused>:
  401785:	48 83 ec 68          	sub    $0x68,%rsp
  401789:	83 3d f0 14 20 00 06 	cmpl   $0x6,0x2014f0(%rip)        # 602c80 <num_input_strings>
  401790:	75 5e                	jne    4017f0 <phase_defused+0x6b>
  401792:	48 8d 4c 24 10       	lea    0x10(%rsp),%rcx
  401797:	48 8d 54 24 0c       	lea    0xc(%rsp),%rdx
  40179c:	be c4 1e 40 00       	mov    $0x401ec4,%esi
  4017a1:	bf 30 30 60 00       	mov    $0x603030,%edi
  4017a6:	b8 00 00 00 00       	mov    $0x0,%eax
  4017ab:	e8 00 f3 ff ff       	callq  400ab0 <__isoc99_sscanf@plt>
  4017b0:	83 f8 02             	cmp    $0x2,%eax
  4017b3:	75 31                	jne    4017e6 <phase_defused+0x61>
  4017b5:	be ca 1e 40 00       	mov    $0x401eca,%esi
  4017ba:	48 8d 7c 24 10       	lea    0x10(%rsp),%rdi
  4017bf:	e8 79 fa ff ff       	callq  40123d <strings_not_equal>
  4017c4:	85 c0                	test   %eax,%eax
  4017c6:	75 1e                	jne    4017e6 <phase_defused+0x61>
  4017c8:	bf 40 1c 40 00       	mov    $0x401c40,%edi
  4017cd:	e8 ce f2 ff ff       	callq  400aa0 <puts@plt>
  4017d2:	bf 68 1c 40 00       	mov    $0x401c68,%edi
  4017d7:	e8 c4 f2 ff ff       	callq  400aa0 <puts@plt>
  4017dc:	b8 00 00 00 00       	mov    $0x0,%eax
  4017e1:	e8 74 f9 ff ff       	callq  40115a <secret_phase>
  4017e6:	bf a0 1c 40 00       	mov    $0x401ca0,%edi
  4017eb:	e8 b0 f2 ff ff       	callq  400aa0 <puts@plt>
  4017f0:	48 83 c4 68          	add    $0x68,%rsp
  4017f4:	c3                   	retq   
  4017f5:	90                   	nop
  4017f6:	90                   	nop
  4017f7:	90                   	nop
  4017f8:	90                   	nop
  4017f9:	90                   	nop
  4017fa:	90                   	nop
  4017fb:	90                   	nop
  4017fc:	90                   	nop
  4017fd:	90                   	nop
  4017fe:	90                   	nop
  4017ff:	90                   	nop

0000000000401800 <__libc_csu_init>:
  401800:	48 89 6c 24 d8       	mov    %rbp,-0x28(%rsp)
  401805:	4c 89 64 24 e0       	mov    %r12,-0x20(%rsp)
  40180a:	48 8d 2d ab 0a 20 00 	lea    0x200aab(%rip),%rbp        # 6022bc <__init_array_end>
  401811:	4c 8d 25 a4 0a 20 00 	lea    0x200aa4(%rip),%r12        # 6022bc <__init_array_end>
  401818:	4c 89 6c 24 e8       	mov    %r13,-0x18(%rsp)
  40181d:	4c 89 74 24 f0       	mov    %r14,-0x10(%rsp)
  401822:	4c 89 7c 24 f8       	mov    %r15,-0x8(%rsp)
  401827:	48 89 5c 24 d0       	mov    %rbx,-0x30(%rsp)
  40182c:	48 83 ec 38          	sub    $0x38,%rsp
  401830:	4c 29 e5             	sub    %r12,%rbp
  401833:	41 89 fd             	mov    %edi,%r13d
  401836:	49 89 f6             	mov    %rsi,%r14
  401839:	48 c1 fd 03          	sar    $0x3,%rbp
  40183d:	49 89 d7             	mov    %rdx,%r15
  401840:	e8 03 f2 ff ff       	callq  400a48 <_init>
  401845:	48 85 ed             	test   %rbp,%rbp
  401848:	74 1c                	je     401866 <__libc_csu_init+0x66>
  40184a:	31 db                	xor    %ebx,%ebx
  40184c:	0f 1f 40 00          	nopl   0x0(%rax)
  401850:	4c 89 fa             	mov    %r15,%rdx
  401853:	4c 89 f6             	mov    %r14,%rsi
  401856:	44 89 ef             	mov    %r13d,%edi
  401859:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
  40185d:	48 83 c3 01          	add    $0x1,%rbx
  401861:	48 39 eb             	cmp    %rbp,%rbx
  401864:	75 ea                	jne    401850 <__libc_csu_init+0x50>
  401866:	48 8b 5c 24 08       	mov    0x8(%rsp),%rbx
  40186b:	48 8b 6c 24 10       	mov    0x10(%rsp),%rbp
  401870:	4c 8b 64 24 18       	mov    0x18(%rsp),%r12
  401875:	4c 8b 6c 24 20       	mov    0x20(%rsp),%r13
  40187a:	4c 8b 74 24 28       	mov    0x28(%rsp),%r14
  40187f:	4c 8b 7c 24 30       	mov    0x30(%rsp),%r15
  401884:	48 83 c4 38          	add    $0x38,%rsp
  401888:	c3                   	retq   
  401889:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000401890 <__libc_csu_fini>:
  401890:	f3 c3                	repz retq 
  401892:	90                   	nop
  401893:	90                   	nop
  401894:	90                   	nop
  401895:	90                   	nop
  401896:	90                   	nop
  401897:	90                   	nop
  401898:	90                   	nop
  401899:	90                   	nop
  40189a:	90                   	nop
  40189b:	90                   	nop
  40189c:	90                   	nop
  40189d:	90                   	nop
  40189e:	90                   	nop
  40189f:	90                   	nop

00000000004018a0 <__do_global_ctors_aux>:
  4018a0:	55                   	push   %rbp
  4018a1:	48 89 e5             	mov    %rsp,%rbp
  4018a4:	53                   	push   %rbx
  4018a5:	48 83 ec 08          	sub    $0x8,%rsp
  4018a9:	48 8b 05 10 0a 20 00 	mov    0x200a10(%rip),%rax        # 6022c0 <__CTOR_LIST__>
  4018b0:	48 83 f8 ff          	cmp    $0xffffffffffffffff,%rax
  4018b4:	74 19                	je     4018cf <__do_global_ctors_aux+0x2f>
  4018b6:	bb c0 22 60 00       	mov    $0x6022c0,%ebx
  4018bb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  4018c0:	48 83 eb 08          	sub    $0x8,%rbx
  4018c4:	ff d0                	callq  *%rax
  4018c6:	48 8b 03             	mov    (%rbx),%rax
  4018c9:	48 83 f8 ff          	cmp    $0xffffffffffffffff,%rax
  4018cd:	75 f1                	jne    4018c0 <__do_global_ctors_aux+0x20>
  4018cf:	48 83 c4 08          	add    $0x8,%rsp
  4018d3:	5b                   	pop    %rbx
  4018d4:	5d                   	pop    %rbp
  4018d5:	c3                   	retq   
  4018d6:	90                   	nop
  4018d7:	90                   	nop

Disassembly of section .fini:

00000000004018d8 <_fini>:
  4018d8:	48 83 ec 08          	sub    $0x8,%rsp
  4018dc:	e8 af f3 ff ff       	callq  400c90 <__do_global_dtors_aux>
  4018e1:	48 83 c4 08          	add    $0x8,%rsp
  4018e5:	c3                   	retq   

Disassembly of section .rodata:

0000000000401900 <_IO_stdin_used>:
  401900:	01 00                	add    %eax,(%rax)
  401902:	02 00                	add    (%rax),%al
  401904:	00 00                	add    %al,(%rax)
	...

0000000000401908 <__dso_handle>:
	...
  401910:	25 73 3a 20 45       	and    $0x45203a73,%eax
  401915:	72 72                	jb     401989 <__dso_handle+0x81>
  401917:	6f                   	outsl  %ds:(%rsi),(%dx)
  401918:	72 3a                	jb     401954 <__dso_handle+0x4c>
  40191a:	20 43 6f             	and    %al,0x6f(%rbx)
  40191d:	75 6c                	jne    40198b <__dso_handle+0x83>
  40191f:	64 6e                	outsb  %fs:(%rsi),(%dx)
  401921:	27                   	(bad)  
  401922:	74 20                	je     401944 <__dso_handle+0x3c>
  401924:	6f                   	outsl  %ds:(%rsi),(%dx)
  401925:	70 65                	jo     40198c <__dso_handle+0x84>
  401927:	6e                   	outsb  %ds:(%rsi),(%dx)
  401928:	20 25 73 0a 00 55    	and    %ah,0x55000a73(%rip)        # 554023a1 <_end+0x54dfedd1>
  40192e:	73 61                	jae    401991 <__dso_handle+0x89>
  401930:	67 65 3a 20          	cmp    %gs:(%eax),%ah
  401934:	25 73 20 5b 3c       	and    $0x3c5b2073,%eax
  401939:	69 6e 70 75 74 5f 66 	imul   $0x665f7475,0x70(%rsi),%ebp
  401940:	69 6c 65 3e 5d 0a 00 	imul   $0x54000a5d,0x3e(%rbp,%riz,2),%ebp
  401947:	54 
  401948:	68 61 74 27 73       	pushq  $0x73277461
  40194d:	20 6e 75             	and    %ch,0x75(%rsi)
  401950:	6d                   	insl   (%dx),%es:(%rdi)
  401951:	62                   	(bad)  
  401952:	65                   	gs
  401953:	72 20                	jb     401975 <__dso_handle+0x6d>
  401955:	32 2e                	xor    (%rsi),%ch
  401957:	20 20                	and    %ah,(%rax)
  401959:	4b                   	rex.WXB
  40195a:	65                   	gs
  40195b:	65                   	gs
  40195c:	70 20                	jo     40197e <__dso_handle+0x76>
  40195e:	67 6f                	outsl  %ds:(%esi),(%dx)
  401960:	69 6e 67 21 00 48 61 	imul   $0x61480021,0x67(%rsi),%ebp
  401967:	6c                   	insb   (%dx),%es:(%rdi)
  401968:	66                   	data16
  401969:	77 61                	ja     4019cc <__dso_handle+0xc4>
  40196b:	79 20                	jns    40198d <__dso_handle+0x85>
  40196d:	74 68                	je     4019d7 <__dso_handle+0xcf>
  40196f:	65                   	gs
  401970:	72 65                	jb     4019d7 <__dso_handle+0xcf>
  401972:	21 00                	and    %eax,(%rax)
  401974:	00 00                	add    %al,(%rax)
  401976:	00 00                	add    %al,(%rax)
  401978:	57                   	push   %rdi
  401979:	65                   	gs
  40197a:	6c                   	insb   (%dx),%es:(%rdi)
  40197b:	63 6f 6d             	movslq 0x6d(%rdi),%ebp
  40197e:	65 20 74 6f 20       	and    %dh,%gs:0x20(%rdi,%rbp,2)
  401983:	6d                   	insl   (%dx),%es:(%rdi)
  401984:	79 20                	jns    4019a6 <__dso_handle+0x9e>
  401986:	66 69 65 6e 64 69    	imul   $0x6964,0x6e(%rbp),%sp
  40198c:	73 68                	jae    4019f6 <__dso_handle+0xee>
  40198e:	20 6c 69 74          	and    %ch,0x74(%rcx,%rbp,2)
  401992:	74 6c                	je     401a00 <__dso_handle+0xf8>
  401994:	65 20 62 6f          	and    %ah,%gs:0x6f(%rdx)
  401998:	6d                   	insl   (%dx),%es:(%rdi)
  401999:	62                   	(bad)  
  40199a:	2e 20 59 6f          	and    %bl,%cs:0x6f(%rcx)
  40199e:	75 20                	jne    4019c0 <__dso_handle+0xb8>
  4019a0:	68 61 76 65 20       	pushq  $0x20657661
  4019a5:	36 20 70 68          	and    %dh,%ss:0x68(%rax)
  4019a9:	61                   	(bad)  
  4019aa:	73 65                	jae    401a11 <__dso_handle+0x109>
  4019ac:	73 20                	jae    4019ce <__dso_handle+0xc6>
  4019ae:	77 69                	ja     401a19 <__dso_handle+0x111>
  4019b0:	74 68                	je     401a1a <__dso_handle+0x112>
  4019b2:	00 00                	add    %al,(%rax)
  4019b4:	00 00                	add    %al,(%rax)
  4019b6:	00 00                	add    %al,(%rax)
  4019b8:	77 68                	ja     401a22 <__dso_handle+0x11a>
  4019ba:	69 63 68 20 74 6f 20 	imul   $0x206f7420,0x68(%rbx),%esp
  4019c1:	62                   	(bad)  
  4019c2:	6c                   	insb   (%dx),%es:(%rdi)
  4019c3:	6f                   	outsl  %ds:(%rsi),(%dx)
  4019c4:	77 20                	ja     4019e6 <__dso_handle+0xde>
  4019c6:	79 6f                	jns    401a37 <__dso_handle+0x12f>
  4019c8:	75 72                	jne    401a3c <__dso_handle+0x134>
  4019ca:	73 65                	jae    401a31 <__dso_handle+0x129>
  4019cc:	6c                   	insb   (%dx),%es:(%rdi)
  4019cd:	66                   	data16
  4019ce:	20 75 70             	and    %dh,0x70(%rbp)
  4019d1:	2e 20 48 61          	and    %cl,%cs:0x61(%rax)
  4019d5:	76 65                	jbe    401a3c <__dso_handle+0x134>
  4019d7:	20 61 20             	and    %ah,0x20(%rcx)
  4019da:	6e                   	outsb  %ds:(%rsi),(%dx)
  4019db:	69 63 65 20 64 61 79 	imul   $0x79616420,0x65(%rbx),%esp
  4019e2:	21 00                	and    %eax,(%rax)
  4019e4:	00 00                	add    %al,(%rax)
  4019e6:	00 00                	add    %al,(%rax)
  4019e8:	50                   	push   %rax
  4019e9:	68 61 73 65 20       	pushq  $0x20657361
  4019ee:	31 20                	xor    %esp,(%rax)
  4019f0:	64                   	fs
  4019f1:	65                   	gs
  4019f2:	66                   	data16
  4019f3:	75 73                	jne    401a68 <__dso_handle+0x160>
  4019f5:	65 64 2e 20 48 6f    	gs fs and %cl,%cs:%fs:%gs:0x6f(%rax)
  4019fb:	77 20                	ja     401a1d <__dso_handle+0x115>
  4019fd:	61                   	(bad)  
  4019fe:	62                   	(bad)  
  4019ff:	6f                   	outsl  %ds:(%rsi),(%dx)
  401a00:	75 74                	jne    401a76 <__dso_handle+0x16e>
  401a02:	20 74 68 65          	and    %dh,0x65(%rax,%rbp,2)
  401a06:	20 6e 65             	and    %ch,0x65(%rsi)
  401a09:	78 74                	js     401a7f <__dso_handle+0x177>
  401a0b:	20 6f 6e             	and    %ch,0x6e(%rdi)
  401a0e:	65                   	gs
  401a0f:	3f                   	(bad)  
	...
  401a18:	53                   	push   %rbx
  401a19:	6f                   	outsl  %ds:(%rsi),(%dx)
  401a1a:	20 79 6f             	and    %bh,0x6f(%rcx)
  401a1d:	75 20                	jne    401a3f <__dso_handle+0x137>
  401a1f:	67 6f                	outsl  %ds:(%esi),(%dx)
  401a21:	74 20                	je     401a43 <__dso_handle+0x13b>
  401a23:	74 68                	je     401a8d <__dso_handle+0x185>
  401a25:	61                   	(bad)  
  401a26:	74 20                	je     401a48 <__dso_handle+0x140>
  401a28:	6f                   	outsl  %ds:(%rsi),(%dx)
  401a29:	6e                   	outsb  %ds:(%rsi),(%dx)
  401a2a:	65 2e 20 20          	gs and %ah,%cs:%gs:(%rax)
  401a2e:	54                   	push   %rsp
  401a2f:	72 79                	jb     401aaa <__dso_handle+0x1a2>
  401a31:	20 74 68 69          	and    %dh,0x69(%rax,%rbp,2)
  401a35:	73 20                	jae    401a57 <__dso_handle+0x14f>
  401a37:	6f                   	outsl  %ds:(%rsi),(%dx)
  401a38:	6e                   	outsb  %ds:(%rsi),(%dx)
  401a39:	65 2e 00 00          	gs add %al,%cs:%gs:(%rax)
  401a3d:	00 00                	add    %al,(%rax)
  401a3f:	00 43 6f             	add    %al,0x6f(%rbx)
  401a42:	6e                   	outsb  %ds:(%rsi),(%dx)
  401a43:	67 72 61             	addr32 jb 401aa7 <__dso_handle+0x19f>
  401a46:	74 75                	je     401abd <__dso_handle+0x1b5>
  401a48:	6c                   	insb   (%dx),%es:(%rdi)
  401a49:	61                   	(bad)  
  401a4a:	74 69                	je     401ab5 <__dso_handle+0x1ad>
  401a4c:	6f                   	outsl  %ds:(%rsi),(%dx)
  401a4d:	6e                   	outsb  %ds:(%rsi),(%dx)
  401a4e:	73 21                	jae    401a71 <__dso_handle+0x169>
  401a50:	20 59 6f             	and    %bl,0x6f(%rcx)
  401a53:	75 27                	jne    401a7c <__dso_handle+0x174>
  401a55:	76 65                	jbe    401abc <__dso_handle+0x1b4>
  401a57:	20 28                	and    %ch,(%rax)
  401a59:	6d                   	insl   (%dx),%es:(%rdi)
  401a5a:	6f                   	outsl  %ds:(%rsi),(%dx)
  401a5b:	73 74                	jae    401ad1 <__dso_handle+0x1c9>
  401a5d:	6c                   	insb   (%dx),%es:(%rdi)
  401a5e:	79 29                	jns    401a89 <__dso_handle+0x181>
  401a60:	20 64 65 66          	and    %ah,0x66(%rbp,%riz,2)
  401a64:	75 73                	jne    401ad9 <__dso_handle+0x1d1>
  401a66:	65 64 20 74 68 65    	gs and %dh,%fs:%gs:0x65(%rax,%rbp,2)
  401a6c:	20 62 6f             	and    %ah,0x6f(%rdx)
  401a6f:	6d                   	insl   (%dx),%es:(%rdi)
  401a70:	62                   	(bad)  
  401a71:	21 00                	and    %eax,(%rax)
  401a73:	00 00                	add    %al,(%rax)
  401a75:	00 00                	add    %al,(%rax)
  401a77:	00 48 69             	add    %cl,0x69(%rax)
  401a7a:	74 20                	je     401a9c <__dso_handle+0x194>
  401a7c:	43 6f                	rex.XB outsl %ds:(%rsi),(%dx)
  401a7e:	6e                   	outsb  %ds:(%rsi),(%dx)
  401a7f:	74 72                	je     401af3 <__dso_handle+0x1eb>
  401a81:	6f                   	outsl  %ds:(%rsi),(%dx)
  401a82:	6c                   	insb   (%dx),%es:(%rdi)
  401a83:	2d 43 20 74 6f       	sub    $0x6f742043,%eax
  401a88:	20 65 73             	and    %ah,0x73(%rbp)
  401a8b:	63 61 70             	movslq 0x70(%rcx),%esp
  401a8e:	65 20 70 68          	and    %dh,%gs:0x68(%rax)
  401a92:	61                   	(bad)  
  401a93:	73 65                	jae    401afa <__dso_handle+0x1f2>
  401a95:	20 36                	and    %dh,(%rsi)
  401a97:	20 28                	and    %ch,(%rax)
  401a99:	66 6f                	outsw  %ds:(%rsi),(%dx)
  401a9b:	72 20                	jb     401abd <__dso_handle+0x1b5>
  401a9d:	66                   	data16
  401a9e:	72 65                	jb     401b05 <__dso_handle+0x1fd>
  401aa0:	65 21 29             	and    %ebp,%gs:(%rcx)
  401aa3:	2c 20                	sub    $0x20,%al
  401aa5:	62                   	(bad)  
  401aa6:	75 74                	jne    401b1c <__dso_handle+0x214>
  401aa8:	20 69 66             	and    %ch,0x66(%rcx)
  401aab:	20 79 6f             	and    %bh,0x6f(%rcx)
  401aae:	75 20                	jne    401ad0 <__dso_handle+0x1c8>
  401ab0:	77 61                	ja     401b13 <__dso_handle+0x20b>
  401ab2:	6e                   	outsb  %ds:(%rsi),(%dx)
  401ab3:	74 20                	je     401ad5 <__dso_handle+0x1cd>
  401ab5:	74 6f                	je     401b26 <__dso_handle+0x21e>
  401ab7:	00 74 72 79          	add    %dh,0x79(%rdx,%rsi,2)
  401abb:	20 70 68             	and    %dh,0x68(%rax)
  401abe:	61                   	(bad)  
  401abf:	73 65                	jae    401b26 <__dso_handle+0x21e>
  401ac1:	20 36                	and    %dh,(%rsi)
  401ac3:	20 66 6f             	and    %ah,0x6f(%rsi)
  401ac6:	72 20                	jb     401ae8 <__dso_handle+0x1e0>
  401ac8:	65                   	gs
  401ac9:	78 74                	js     401b3f <__dso_handle+0x237>
  401acb:	72 61                	jb     401b2e <__dso_handle+0x226>
  401acd:	20 63 72             	and    %ah,0x72(%rbx)
  401ad0:	65 64 69 74 2c 20 79 	gs imul $0x20756f79,%fs:%gs:0x20(%rsp,%rbp,1),%esi
  401ad7:	6f 75 20 
  401ada:	63 61 6e             	movslq 0x6e(%rcx),%esp
  401add:	20 63 6f             	and    %ah,0x6f(%rbx)
  401ae0:	6e                   	outsb  %ds:(%rsi),(%dx)
  401ae1:	74 69                	je     401b4c <__dso_handle+0x244>
  401ae3:	6e                   	outsb  %ds:(%rsi),(%dx)
  401ae4:	75 65                	jne    401b4b <__dso_handle+0x243>
  401ae6:	2e 20 20             	and    %ah,%cs:(%rax)
  401ae9:	4a 75 73             	rex.WX jne 401b5f <__dso_handle+0x257>
  401aec:	74 20                	je     401b0e <__dso_handle+0x206>
  401aee:	62                   	(bad)  
  401aef:	65                   	gs
  401af0:	77 61                	ja     401b53 <__dso_handle+0x24b>
  401af2:	72 65                	jb     401b59 <__dso_handle+0x251>
  401af4:	21 00                	and    %eax,(%rax)
  401af6:	00 00                	add    %al,(%rax)
  401af8:	53                   	push   %rbx
  401af9:	63 69 65             	movslq 0x65(%rcx),%ebp
  401afc:	6e                   	outsb  %ds:(%rsi),(%dx)
  401afd:	63 65 20             	movslq 0x20(%rbp),%esp
  401b00:	69 73 6e 27 74 20 61 	imul   $0x61207427,0x6e(%rbx),%esi
  401b07:	62                   	(bad)  
  401b08:	6f                   	outsl  %ds:(%rsi),(%dx)
  401b09:	75 74                	jne    401b7f <__dso_handle+0x277>
  401b0b:	20 77 68             	and    %dh,0x68(%rdi)
  401b0e:	79 2c                	jns    401b3c <__dso_handle+0x234>
  401b10:	20 69 74             	and    %ch,0x74(%rcx)
  401b13:	27                   	(bad)  
  401b14:	73 20                	jae    401b36 <__dso_handle+0x22e>
  401b16:	61                   	(bad)  
  401b17:	62                   	(bad)  
  401b18:	6f                   	outsl  %ds:(%rsi),(%dx)
  401b19:	75 74                	jne    401b8f <__dso_handle+0x287>
  401b1b:	20 77 68             	and    %dh,0x68(%rdi)
  401b1e:	79 20                	jns    401b40 <__dso_handle+0x238>
  401b20:	6e                   	outsb  %ds:(%rsi),(%dx)
  401b21:	6f                   	outsl  %ds:(%rsi),(%dx)
  401b22:	74 3f                	je     401b63 <__dso_handle+0x25b>
  401b24:	00 00                	add    %al,(%rax)
  401b26:	00 00                	add    %al,(%rax)
  401b28:	57                   	push   %rdi
  401b29:	6f                   	outsl  %ds:(%rsi),(%dx)
  401b2a:	77 21                	ja     401b4d <__dso_handle+0x245>
  401b2c:	20 59 6f             	and    %bl,0x6f(%rcx)
  401b2f:	75 27                	jne    401b58 <__dso_handle+0x250>
  401b31:	76 65                	jbe    401b98 <__dso_handle+0x290>
  401b33:	20 64 65 66          	and    %ah,0x66(%rbp,%riz,2)
  401b37:	75 73                	jne    401bac <array.3014+0xc>
  401b39:	65 64 20 74 68 65    	gs and %dh,%fs:%gs:0x65(%rax,%rbp,2)
  401b3f:	20 73 65             	and    %dh,0x65(%rbx)
  401b42:	63 72 65             	movslq 0x65(%rdx),%esi
  401b45:	74 20                	je     401b67 <__dso_handle+0x25f>
  401b47:	73 74                	jae    401bbd <array.3014+0x1d>
  401b49:	61                   	(bad)  
  401b4a:	67 65 21 00          	and    %eax,%gs:(%eax)
	...
  401b5e:	00 00                	add    %al,(%rax)
  401b60:	32 0f                	xor    (%rdi),%cl
  401b62:	40 00 00             	add    %al,(%rax)
  401b65:	00 00                	add    %al,(%rax)
  401b67:	00 6f 0f             	add    %ch,0xf(%rdi)
  401b6a:	40 00 00             	add    %al,(%rax)
  401b6d:	00 00                	add    %al,(%rax)
  401b6f:	00 39                	add    %bh,(%rcx)
  401b71:	0f 40 00             	cmovo  (%rax),%eax
  401b74:	00 00                	add    %al,(%rax)
  401b76:	00 00                	add    %al,(%rax)
  401b78:	40 0f 40 00          	rex cmovo (%rax),%eax
  401b7c:	00 00                	add    %al,(%rax)
  401b7e:	00 00                	add    %al,(%rax)
  401b80:	47 0f 40 00          	rex.RXB cmovo (%r8),%r8d
  401b84:	00 00                	add    %al,(%rax)
  401b86:	00 00                	add    %al,(%rax)
  401b88:	4e 0f 40 00          	rex.WRX cmovo (%rax),%r8
  401b8c:	00 00                	add    %al,(%rax)
  401b8e:	00 00                	add    %al,(%rax)
  401b90:	55                   	push   %rbp
  401b91:	0f 40 00             	cmovo  (%rax),%eax
  401b94:	00 00                	add    %al,(%rax)
  401b96:	00 00                	add    %al,(%rax)
  401b98:	5c                   	pop    %rsp
  401b99:	0f 40 00             	cmovo  (%rax),%eax
  401b9c:	00 00                	add    %al,(%rax)
	...

0000000000401ba0 <array.3014>:
  401ba0:	0a 00                	or     (%rax),%al
  401ba2:	00 00                	add    %al,(%rax)
  401ba4:	02 00                	add    (%rax),%al
  401ba6:	00 00                	add    %al,(%rax)
  401ba8:	0e                   	(bad)  
  401ba9:	00 00                	add    %al,(%rax)
  401bab:	00 07                	add    %al,(%rdi)
  401bad:	00 00                	add    %al,(%rax)
  401baf:	00 08                	add    %cl,(%rax)
  401bb1:	00 00                	add    %al,(%rax)
  401bb3:	00 0c 00             	add    %cl,(%rax,%rax,1)
  401bb6:	00 00                	add    %al,(%rax)
  401bb8:	0f 00 00             	sldt   (%rax)
  401bbb:	00 0b                	add    %cl,(%rbx)
  401bbd:	00 00                	add    %al,(%rax)
  401bbf:	00 00                	add    %al,(%rax)
  401bc1:	00 00                	add    %al,(%rax)
  401bc3:	00 04 00             	add    %al,(%rax,%rax,1)
  401bc6:	00 00                	add    %al,(%rax)
  401bc8:	01 00                	add    %eax,(%rax)
  401bca:	00 00                	add    %al,(%rax)
  401bcc:	0d 00 00 00 03       	or     $0x3000000,%eax
  401bd1:	00 00                	add    %al,(%rax)
  401bd3:	00 09                	add    %cl,(%rcx)
  401bd5:	00 00                	add    %al,(%rax)
  401bd7:	00 06                	add    %al,(%rsi)
  401bd9:	00 00                	add    %al,(%rax)
  401bdb:	00 05 00 00 00 53    	add    %al,0x53000000(%rip)        # 53401be1 <_end+0x52dfe611>
  401be1:	6f                   	outsl  %ds:(%rsi),(%dx)
  401be2:	20 79 6f             	and    %bh,0x6f(%rcx)
  401be5:	75 20                	jne    401c07 <array.3014+0x67>
  401be7:	74 68                	je     401c51 <array.3014+0xb1>
  401be9:	69 6e 6b 20 79 6f 75 	imul   $0x756f7920,0x6b(%rsi),%ebp
  401bf0:	20 63 61             	and    %ah,0x61(%rbx)
  401bf3:	6e                   	outsb  %ds:(%rsi),(%dx)
  401bf4:	20 73 74             	and    %dh,0x74(%rbx)
  401bf7:	6f                   	outsl  %ds:(%rsi),(%dx)
  401bf8:	70 20                	jo     401c1a <array.3014+0x7a>
  401bfa:	74 68                	je     401c64 <array.3014+0xc4>
  401bfc:	65 20 62 6f          	and    %ah,%gs:0x6f(%rdx)
  401c00:	6d                   	insl   (%dx),%es:(%rdi)
  401c01:	62                   	(bad)  
  401c02:	20 77 69             	and    %dh,0x69(%rdi)
  401c05:	74 68                	je     401c6f <array.3014+0xcf>
  401c07:	20 63 74             	and    %ah,0x74(%rbx)
  401c0a:	72 6c                	jb     401c78 <array.3014+0xd8>
  401c0c:	2d 63 2c 20 64       	sub    $0x64202c63,%eax
  401c11:	6f                   	outsl  %ds:(%rsi),(%dx)
  401c12:	20 79 6f             	and    %bh,0x6f(%rcx)
  401c15:	75 3f                	jne    401c56 <array.3014+0xb6>
  401c17:	00 6e 6f             	add    %ch,0x6f(%rsi)
  401c1a:	6e                   	outsb  %ds:(%rsi),(%dx)
  401c1b:	65                   	gs
  401c1c:	78 69                	js     401c87 <array.3014+0xe7>
  401c1e:	73 74                	jae    401c94 <array.3014+0xf4>
  401c20:	65 6e                	outsb  %gs:(%rsi),(%dx)
  401c22:	74 68                	je     401c8c <array.3014+0xec>
  401c24:	6f                   	outsl  %ds:(%rsi),(%dx)
  401c25:	73 74                	jae    401c9b <array.3014+0xfb>
  401c27:	2e 63 73 2e          	movslq %cs:0x2e(%rbx),%esi
  401c2b:	77 61                	ja     401c8e <array.3014+0xee>
  401c2d:	73 68                	jae    401c97 <array.3014+0xf7>
  401c2f:	69 6e 67 74 6f 6e 2e 	imul   $0x2e6e6f74,0x67(%rsi),%ebp
  401c36:	65                   	gs
  401c37:	64                   	fs
  401c38:	75 00                	jne    401c3a <array.3014+0x9a>
  401c3a:	00 00                	add    %al,(%rax)
  401c3c:	00 00                	add    %al,(%rax)
  401c3e:	00 00                	add    %al,(%rax)
  401c40:	43 75 72             	rex.XB jne 401cb5 <array.3014+0x115>
  401c43:	73 65                	jae    401caa <array.3014+0x10a>
  401c45:	73 2c                	jae    401c73 <array.3014+0xd3>
  401c47:	20 79 6f             	and    %bh,0x6f(%rcx)
  401c4a:	75 27                	jne    401c73 <array.3014+0xd3>
  401c4c:	76 65                	jbe    401cb3 <array.3014+0x113>
  401c4e:	20 66 6f             	and    %ah,0x6f(%rsi)
  401c51:	75 6e                	jne    401cc1 <array.3014+0x121>
  401c53:	64 20 74 68 65       	and    %dh,%fs:0x65(%rax,%rbp,2)
  401c58:	20 73 65             	and    %dh,0x65(%rbx)
  401c5b:	63 72 65             	movslq 0x65(%rdx),%esi
  401c5e:	74 20                	je     401c80 <array.3014+0xe0>
  401c60:	70 68                	jo     401cca <array.3014+0x12a>
  401c62:	61                   	(bad)  
  401c63:	73 65                	jae    401cca <array.3014+0x12a>
  401c65:	21 00                	and    %eax,(%rax)
  401c67:	00 42 75             	add    %al,0x75(%rdx)
  401c6a:	74 20                	je     401c8c <array.3014+0xec>
  401c6c:	66 69 6e 64 69 6e    	imul   $0x6e69,0x64(%rsi),%bp
  401c72:	67 20 69 74          	and    %ch,0x74(%ecx)
  401c76:	20 61 6e             	and    %ah,0x6e(%rcx)
  401c79:	64 20 73 6f          	and    %dh,%fs:0x6f(%rbx)
  401c7d:	6c                   	insb   (%dx),%es:(%rdi)
  401c7e:	76 69                	jbe    401ce9 <array.3014+0x149>
  401c80:	6e                   	outsb  %ds:(%rsi),(%dx)
  401c81:	67 20 69 74          	and    %ch,0x74(%ecx)
  401c85:	20 61 72             	and    %ah,0x72(%rcx)
  401c88:	65 20 71 75          	and    %dh,%gs:0x75(%rcx)
  401c8c:	69 74 65 20 64 69 66 	imul   $0x66666964,0x20(%rbp,%riz,2),%esi
  401c93:	66 
  401c94:	65                   	gs
  401c95:	72 65                	jb     401cfc <array.3014+0x15c>
  401c97:	6e                   	outsb  %ds:(%rsi),(%dx)
  401c98:	74 2e                	je     401cc8 <array.3014+0x128>
  401c9a:	2e 2e 00 00          	cs add %al,%cs:(%rax)
  401c9e:	00 00                	add    %al,(%rax)
  401ca0:	43 6f                	rex.XB outsl %ds:(%rsi),(%dx)
  401ca2:	6e                   	outsb  %ds:(%rsi),(%dx)
  401ca3:	67 72 61             	addr32 jb 401d07 <array.3014+0x167>
  401ca6:	74 75                	je     401d1d <array.3014+0x17d>
  401ca8:	6c                   	insb   (%dx),%es:(%rdi)
  401ca9:	61                   	(bad)  
  401caa:	74 69                	je     401d15 <array.3014+0x175>
  401cac:	6f                   	outsl  %ds:(%rsi),(%dx)
  401cad:	6e                   	outsb  %ds:(%rsi),(%dx)
  401cae:	73 21                	jae    401cd1 <array.3014+0x131>
  401cb0:	20 59 6f             	and    %bl,0x6f(%rcx)
  401cb3:	75 27                	jne    401cdc <array.3014+0x13c>
  401cb5:	76 65                	jbe    401d1c <array.3014+0x17c>
  401cb7:	20 64 65 66          	and    %ah,0x66(%rbp,%riz,2)
  401cbb:	75 73                	jne    401d30 <array.3014+0x190>
  401cbd:	65 64 20 74 68 65    	gs and %dh,%fs:%gs:0x65(%rax,%rbp,2)
  401cc3:	20 62 6f             	and    %ah,0x6f(%rdx)
  401cc6:	6d                   	insl   (%dx),%es:(%rdi)
  401cc7:	62                   	(bad)  
  401cc8:	21 20                	and    %esp,(%rax)
  401cca:	41                   	rex.B
  401ccb:	67 61                	addr32 (bad) 
  401ccd:	69 6e 21 00 00 00 00 	imul   $0x0,0x21(%rsi),%ebp
  401cd4:	00 00                	add    %al,(%rax)
  401cd6:	00 00                	add    %al,(%rax)
  401cd8:	57                   	push   %rdi
  401cd9:	65                   	gs
  401cda:	6c                   	insb   (%dx),%es:(%rdi)
  401cdb:	6c                   	insb   (%dx),%es:(%rdi)
  401cdc:	2e 2e 2e 00 4f 4b    	cs cs add %cl,%cs:0x4b(%rdi)
  401ce2:	2e 20 3a             	and    %bh,%cs:(%rdx)
  401ce5:	2d 29 00 49 6e       	sub    $0x6e490029,%eax
  401cea:	76 61                	jbe    401d4d <array.3014+0x1ad>
  401cec:	6c                   	insb   (%dx),%es:(%rdi)
  401ced:	69 64 20 70 68 61 73 	imul   $0x65736168,0x70(%rax,%riz,1),%esp
  401cf4:	65 
  401cf5:	25 73 0a 00 42       	and    $0x42000a73,%eax
  401cfa:	61                   	(bad)  
  401cfb:	64 20 68 6f          	and    %ch,%fs:0x6f(%rax)
  401cff:	73 74                	jae    401d75 <array.3014+0x1d5>
  401d01:	20 28                	and    %ch,(%rax)
  401d03:	31 29                	xor    %ebp,(%rcx)
  401d05:	2e 00 42 61          	add    %al,%cs:0x61(%rdx)
  401d09:	64 20 68 6f          	and    %ch,%fs:0x6f(%rax)
  401d0d:	73 74                	jae    401d83 <array.3014+0x1e3>
  401d0f:	20 28                	and    %ch,(%rax)
  401d11:	32 29                	xor    (%rcx),%ch
  401d13:	2e 00 42 61          	add    %al,%cs:0x61(%rdx)
  401d17:	64 20 68 6f          	and    %ch,%fs:0x6f(%rax)
  401d1b:	73 74                	jae    401d91 <array.3014+0x1f1>
  401d1d:	20 28                	and    %ch,(%rax)
  401d1f:	33 29                	xor    (%rcx),%ebp
  401d21:	2e 00 64 65 66       	add    %ah,%cs:0x66(%rbp,%riz,2)
  401d26:	75 73                	jne    401d9b <array.3014+0x1fb>
  401d28:	65 64 00 65 78       	gs add %ah,%fs:%gs:0x78(%rbp)
  401d2d:	70 6c                	jo     401d9b <array.3014+0x1fb>
  401d2f:	6f                   	outsl  %ds:(%rsi),(%dx)
  401d30:	64 65 64 00 45 52    	fs gs add %al,%fs:%gs:0x52(%rbp)
  401d36:	52                   	push   %rdx
  401d37:	4f 52                	rex.WRXB push %r10
  401d39:	3a 20                	cmp    (%rax),%ah
  401d3b:	64                   	fs
  401d3c:	75 70                	jne    401dae <array.3014+0x20e>
  401d3e:	28 30                	sub    %dh,(%rax)
  401d40:	29 20                	sub    %esp,(%rax)
  401d42:	65                   	gs
  401d43:	72 72                	jb     401db7 <array.3014+0x217>
  401d45:	6f                   	outsl  %ds:(%rsi),(%dx)
  401d46:	72 00                	jb     401d48 <array.3014+0x1a8>
  401d48:	45 52                	rex.RB push %r10
  401d4a:	52                   	push   %rdx
  401d4b:	4f 52                	rex.WRXB push %r10
  401d4d:	3a 20                	cmp    (%rax),%ah
  401d4f:	63 6c 6f 73          	movslq 0x73(%rdi,%rbp,2),%ebp
  401d53:	65 20 65 72          	and    %ah,%gs:0x72(%rbp)
  401d57:	72 6f                	jb     401dc8 <array.3014+0x228>
  401d59:	72 00                	jb     401d5b <array.3014+0x1bb>
  401d5b:	45 52                	rex.RB push %r10
  401d5d:	52                   	push   %rdx
  401d5e:	4f 52                	rex.WRXB push %r10
  401d60:	3a 20                	cmp    (%rax),%ah
  401d62:	74 6d                	je     401dd1 <array.3014+0x231>
  401d64:	70 66                	jo     401dcc <array.3014+0x22c>
  401d66:	69 6c 65 20 65 72 72 	imul   $0x6f727265,0x20(%rbp,%riz,2),%ebp
  401d6d:	6f 
  401d6e:	72 00                	jb     401d70 <array.3014+0x1d0>
  401d70:	53                   	push   %rbx
  401d71:	75 62                	jne    401dd5 <array.3014+0x235>
  401d73:	6a 65                	pushq  $0x65
  401d75:	63 74 3a 20          	movslq 0x20(%rdx,%rdi,1),%esi
  401d79:	42 6f                	rex.X outsl %ds:(%rsi),(%dx)
  401d7b:	6d                   	insl   (%dx),%es:(%rdi)
  401d7c:	62                   	(bad)  
  401d7d:	20 6e 6f             	and    %ch,0x6f(%rsi)
  401d80:	74 69                	je     401deb <array.3014+0x24b>
  401d82:	66 69 63 61 74 69    	imul   $0x6974,0x61(%rbx),%sp
  401d88:	6f                   	outsl  %ds:(%rsi),(%dx)
  401d89:	6e                   	outsb  %ds:(%rsi),(%dx)
  401d8a:	0a 00                	or     (%rax),%al
  401d8c:	62                   	(bad)  
  401d8d:	6f                   	outsl  %ds:(%rsi),(%dx)
  401d8e:	6d                   	insl   (%dx),%es:(%rdi)
  401d8f:	62                   	(bad)  
  401d90:	2d 68 65 61 64       	sub    $0x64616568,%eax
  401d95:	65                   	gs
  401d96:	72 3a                	jb     401dd2 <array.3014+0x232>
  401d98:	25 73 3a 25 64       	and    $0x64253a73,%eax
  401d9d:	3a 25 73 3a 25 73    	cmp    0x73253a73(%rip),%ah        # 73655816 <_end+0x73052246>
  401da3:	3a 25 64 0a 00 62    	cmp    0x62000a64(%rip),%ah        # 6240280d <_end+0x61dff23d>
  401da9:	6f                   	outsl  %ds:(%rsi),(%dx)
  401daa:	6d                   	insl   (%dx),%es:(%rdi)
  401dab:	62                   	(bad)  
  401dac:	2d 73 74 72 69       	sub    $0x69727473,%eax
  401db1:	6e                   	outsb  %ds:(%rsi),(%dx)
  401db2:	67 3a 25 73 3a 25 64 	cmp    0x64253a73(%eip),%ah        # 6465582c <_end+0x6405225c>
  401db9:	3a 25 73 3a 25 64    	cmp    0x64253a73(%rip),%ah        # 64655832 <_end+0x64052262>
  401dbf:	3a 25 73 0a 00 62    	cmp    0x62000a73(%rip),%ah        # 62402838 <_end+0x61dff268>
  401dc5:	6f                   	outsl  %ds:(%rsi),(%dx)
  401dc6:	6d                   	insl   (%dx),%es:(%rdi)
  401dc7:	62                   	(bad)  
  401dc8:	00 2f                	add    %ch,(%rdi)
  401dca:	75 73                	jne    401e3f <array.3014+0x29f>
  401dcc:	72 2f                	jb     401dfd <array.3014+0x25d>
  401dce:	73 62                	jae    401e32 <array.3014+0x292>
  401dd0:	69 6e 2f 73 65 6e 64 	imul   $0x646e6573,0x2f(%rsi),%ebp
  401dd7:	6d                   	insl   (%dx),%es:(%rdi)
  401dd8:	61                   	(bad)  
  401dd9:	69 6c 20 2d 62 6d 00 	imul   $0x25006d62,0x2d(%rax,%riz,1),%ebp
  401de0:	25 
  401de1:	73 20                	jae    401e03 <array.3014+0x263>
  401de3:	25 73 40 25 73       	and    $0x73254073,%eax
  401de8:	00 45 52             	add    %al,0x52(%rbp)
  401deb:	52                   	push   %rdx
  401dec:	4f 52                	rex.WRXB push %r10
  401dee:	3a 20                	cmp    (%rax),%ah
  401df0:	6e                   	outsb  %ds:(%rsi),(%dx)
  401df1:	6f                   	outsl  %ds:(%rsi),(%dx)
  401df2:	74 69                	je     401e5d <array.3014+0x2bd>
  401df4:	66 69 63 61 74 69    	imul   $0x6974,0x61(%rbx),%sp
  401dfa:	6f                   	outsl  %ds:(%rsi),(%dx)
  401dfb:	6e                   	outsb  %ds:(%rsi),(%dx)
  401dfc:	20 65 72             	and    %ah,0x72(%rbp)
  401dff:	72 6f                	jb     401e70 <array.3014+0x2d0>
  401e01:	72 00                	jb     401e03 <array.3014+0x263>
  401e03:	45 52                	rex.RB push %r10
  401e05:	52                   	push   %rdx
  401e06:	4f 52                	rex.WRXB push %r10
  401e08:	3a 20                	cmp    (%rax),%ah
  401e0a:	66 63 6c 6f 73       	movslq 0x73(%rdi,%rbp,2),%bp
  401e0f:	65 28 74 6d 70       	sub    %dh,%gs:0x70(%rbp,%rbp,2)
  401e14:	29 20                	sub    %esp,(%rax)
  401e16:	65                   	gs
  401e17:	72 72                	jb     401e8b <array.3014+0x2eb>
  401e19:	6f                   	outsl  %ds:(%rsi),(%dx)
  401e1a:	72 00                	jb     401e1c <array.3014+0x27c>
  401e1c:	45 52                	rex.RB push %r10
  401e1e:	52                   	push   %rdx
  401e1f:	4f 52                	rex.WRXB push %r10
  401e21:	3a 20                	cmp    (%rax),%ah
  401e23:	64                   	fs
  401e24:	75 70                	jne    401e96 <array.3014+0x2f6>
  401e26:	28 74 6d 70          	sub    %dh,0x70(%rbp,%rbp,2)
  401e2a:	73 74                	jae    401ea0 <array.3014+0x300>
  401e2c:	64 69 6e 29 20 65 72 	imul   $0x72726520,%fs:0x29(%rsi),%ebp
  401e33:	72 
  401e34:	6f                   	outsl  %ds:(%rsi),(%dx)
  401e35:	72 00                	jb     401e37 <array.3014+0x297>
  401e37:	45 52                	rex.RB push %r10
  401e39:	52                   	push   %rdx
  401e3a:	4f 52                	rex.WRXB push %r10
  401e3c:	3a 20                	cmp    (%rax),%ah
  401e3e:	63 6c 6f 73          	movslq 0x73(%rdi,%rbp,2),%ebp
  401e42:	65 28 74 6d 70       	sub    %dh,%gs:0x70(%rbp,%rbp,2)
  401e47:	73 74                	jae    401ebd <array.3014+0x31d>
  401e49:	64 69 6e 29 00 0a 42 	imul   $0x4f420a00,%fs:0x29(%rsi),%ebp
  401e50:	4f 
  401e51:	4f                   	rex.WRXB
  401e52:	4d 21 21             	and    %r12,(%r9)
  401e55:	21 00                	and    %eax,(%rax)
  401e57:	54                   	push   %rsp
  401e58:	68 65 20 62 6f       	pushq  $0x6f622065
  401e5d:	6d                   	insl   (%dx),%es:(%rdi)
  401e5e:	62                   	(bad)  
  401e5f:	20 68 61             	and    %ch,0x61(%rax)
  401e62:	73 20                	jae    401e84 <array.3014+0x2e4>
  401e64:	62                   	(bad)  
  401e65:	6c                   	insb   (%dx),%es:(%rdi)
  401e66:	6f                   	outsl  %ds:(%rsi),(%dx)
  401e67:	77 6e                	ja     401ed7 <array.3014+0x337>
  401e69:	20 75 70             	and    %dh,0x70(%rbp)
  401e6c:	2e 00 45 72          	add    %al,%cs:0x72(%rbp)
  401e70:	72 6f                	jb     401ee1 <array.3014+0x341>
  401e72:	72 3a                	jb     401eae <array.3014+0x30e>
  401e74:	20 50 72             	and    %dl,0x72(%rax)
  401e77:	65                   	gs
  401e78:	6d                   	insl   (%dx),%es:(%rdi)
  401e79:	61                   	(bad)  
  401e7a:	74 75                	je     401ef1 <array.3014+0x351>
  401e7c:	72 65                	jb     401ee3 <array.3014+0x343>
  401e7e:	20 45 4f             	and    %al,0x4f(%rbp)
  401e81:	46 20 6f 6e          	rex.RX and %r13b,0x6e(%rdi)
  401e85:	20 73 74             	and    %dh,0x74(%rbx)
  401e88:	64 69 6e 00 47 52 41 	imul   $0x44415247,%fs:0x0(%rsi),%ebp
  401e8f:	44 
  401e90:	45 5f                	rex.RB pop %r15
  401e92:	42                   	rex.X
  401e93:	4f                   	rex.WRXB
  401e94:	4d                   	rex.WRB
  401e95:	42 00 45 72          	rex.X add %al,0x72(%rbp)
  401e99:	72 6f                	jb     401f0a <array.3014+0x36a>
  401e9b:	72 3a                	jb     401ed7 <array.3014+0x337>
  401e9d:	20 49 6e             	and    %cl,0x6e(%rcx)
  401ea0:	70 75                	jo     401f17 <array.3014+0x377>
  401ea2:	74 20                	je     401ec4 <array.3014+0x324>
  401ea4:	6c                   	insb   (%dx),%es:(%rdi)
  401ea5:	69 6e 65 20 74 6f 6f 	imul   $0x6f6f7420,0x65(%rsi),%ebp
  401eac:	20 6c 6f 6e          	and    %ch,0x6e(%rdi,%rbp,2)
  401eb0:	67 00 25 64 20 25 64 	add    %ah,0x64252064(%eip)        # 64653f1b <_end+0x6405094b>
  401eb7:	20 25 64 20 25 64    	and    %ah,0x64252064(%rip)        # 64653f21 <_end+0x64050951>
  401ebd:	20 25 64 20 25 64    	and    %ah,0x64252064(%rip)        # 64653f27 <_end+0x64050957>
  401ec3:	00 25 64 20 25 73    	add    %ah,0x73252064(%rip)        # 73653f2d <_end+0x7305095d>
  401ec9:	00 61 75             	add    %ah,0x75(%rcx)
  401ecc:	73 74                	jae    401f42 <array.3014+0x3a2>
  401ece:	69 6e 70 6f 77 65 72 	imul   $0x7265776f,0x70(%rsi),%ebp
  401ed5:	73 00                	jae    401ed7 <array.3014+0x337>

Disassembly of section .eh_frame_hdr:

0000000000401ed8 <.eh_frame_hdr>:
  401ed8:	01 1b                	add    %ebx,(%rbx)
  401eda:	03 3b                	add    (%rbx),%edi
  401edc:	dc 00                	faddl  (%rax)
  401ede:	00 00                	add    %al,(%rax)
  401ee0:	1a 00                	sbb    (%rax),%al
  401ee2:	00 00                	add    %al,(%rax)
  401ee4:	4c ee                	rex.WR out %al,(%dx)
  401ee6:	ff                   	(bad)  
  401ee7:	ff                   	(bad)  
  401ee8:	f8                   	clc    
  401ee9:	00 00                	add    %al,(%rax)
  401eeb:	00 98 ef ff ff 18    	add    %bl,0x18ffffef(%rax)
  401ef1:	01 00                	add    %eax,(%rax)
  401ef3:	00 b4 ef ff ff 30 01 	add    %dh,0x130ffff(%rdi,%rbp,8)
  401efa:	00 00                	add    %al,(%rax)
  401efc:	21 f0                	and    %esi,%eax
  401efe:	ff                   	(bad)  
  401eff:	ff 50 01             	callq  *0x1(%rax)
  401f02:	00 00                	add    %al,(%rax)
  401f04:	ac                   	lods   %ds:(%rsi),%al
  401f05:	f0 ff                	lock (bad) 
  401f07:	ff 68 01             	ljmpq  *0x1(%rax)
  401f0a:	00 00                	add    %al,(%rax)
  401f0c:	e9 f0 ff ff 88       	jmpq   ffffffff89401f01 <_end+0xffffffff88dfe931>
  401f11:	01 00                	add    %eax,(%rax)
  401f13:	00 2a                	add    %ch,(%rdx)
  401f15:	f1                   	icebp  
  401f16:	ff                   	(bad)  
  401f17:	ff a0 01 00 00 97    	jmpq   *-0x68ffffff(%rax)
  401f1d:	f1                   	icebp  
  401f1e:	ff                   	(bad)  
  401f1f:	ff                   	(bad)  
  401f20:	b8 01 00 00 01       	mov    $0x1000001,%eax
  401f25:	f2 ff                	repnz (bad) 
  401f27:	ff d0                	callq  *%rax
  401f29:	01 00                	add    %eax,(%rax)
  401f2b:	00 44 f2 ff          	add    %al,-0x1(%rdx,%rsi,8)
  401f2f:	ff e8                	ljmpq  *<internal disassembler error>
  401f31:	01 00                	add    %eax,(%rax)
  401f33:	00 82 f2 ff ff 00    	add    %al,0xfffff2(%rdx)
  401f39:	02 00                	add    (%rax),%al
  401f3b:	00 d8                	add    %bl,%al
  401f3d:	f2 ff                	repnz (bad) 
  401f3f:	ff 20                	jmpq   *(%rax)
  401f41:	02 00                	add    (%rax),%al
  401f43:	00 29                	add    %ch,(%rcx)
  401f45:	f3 ff                	repz (bad) 
  401f47:	ff                   	(bad)  
  401f48:	38 02                	cmp    %al,(%rdx)
  401f4a:	00 00                	add    %al,(%rax)
  401f4c:	49                   	rex.WB
  401f4d:	f3 ff                	repz (bad) 
  401f4f:	ff 50 02             	callq  *0x2(%rax)
  401f52:	00 00                	add    %al,(%rax)
  401f54:	65                   	gs
  401f55:	f3 ff                	repz (bad) 
  401f57:	ff 68 02             	ljmpq  *0x2(%rax)
  401f5a:	00 00                	add    %al,(%rax)
  401f5c:	e3 f3                	jrcxz  401f51 <array.3014+0x3b1>
  401f5e:	ff                   	(bad)  
  401f5f:	ff 88 02 00 00 bf    	decl   -0x40fffffe(%rax)
  401f65:	f4                   	hlt    
  401f66:	ff                   	(bad)  
  401f67:	ff a8 02 00 00 d7    	ljmpq  *-0x28fffffe(%rax)
  401f6d:	f4                   	hlt    
  401f6e:	ff                   	(bad)  
  401f6f:	ff c0                	inc    %eax
  401f71:	02 00                	add    (%rax),%al
  401f73:	00 14 f5 ff ff e8 02 	add    %dl,0x2e8ffff(,%rsi,8)
  401f7a:	00 00                	add    %al,(%rax)
  401f7c:	55                   	push   %rbp
  401f7d:	f5                   	cmc    
  401f7e:	ff                   	(bad)  
  401f7f:	ff 08                	decl   (%rax)
  401f81:	03 00                	add    (%rax),%eax
  401f83:	00 65 f7             	add    %ah,-0x9(%rbp)
  401f86:	ff                   	(bad)  
  401f87:	ff 40 03             	incl   0x3(%rax)
  401f8a:	00 00                	add    %al,(%rax)
  401f8c:	87 f7                	xchg   %esi,%edi
  401f8e:	ff                   	(bad)  
  401f8f:	ff 58 03             	lcallq *0x3(%rax)
  401f92:	00 00                	add    %al,(%rax)
  401f94:	6b f8 ff             	imul   $0xffffffff,%eax,%edi
  401f97:	ff 70 03             	pushq  0x3(%rax)
  401f9a:	00 00                	add    %al,(%rax)
  401f9c:	ad                   	lods   %ds:(%rsi),%eax
  401f9d:	f8                   	clc    
  401f9e:	ff                   	(bad)  
  401f9f:	ff 88 03 00 00 28    	decl   0x28000003(%rax)
  401fa5:	f9                   	stc    
  401fa6:	ff                   	(bad)  
  401fa7:	ff a0 03 00 00 b8    	jmpq   *-0x47fffffd(%rax)
  401fad:	f9                   	stc    
  401fae:	ff                   	(bad)  
  401faf:	ff c8                	dec    %eax
  401fb1:	03 00                	add    (%rax),%eax
	...

Disassembly of section .eh_frame:

0000000000401fb8 <__FRAME_END__-0x300>:
  401fb8:	14 00                	adc    $0x0,%al
  401fba:	00 00                	add    %al,(%rax)
  401fbc:	00 00                	add    %al,(%rax)
  401fbe:	00 00                	add    %al,(%rax)
  401fc0:	01 7a 52             	add    %edi,0x52(%rdx)
  401fc3:	00 01                	add    %al,(%rcx)
  401fc5:	78 10                	js     401fd7 <array.3014+0x437>
  401fc7:	01 1b                	add    %ebx,(%rbx)
  401fc9:	0c 07                	or     $0x7,%al
  401fcb:	08 90 01 00 00 1c    	or     %dl,0x1c000001(%rax)
  401fd1:	00 00                	add    %al,(%rax)
  401fd3:	00 1c 00             	add    %bl,(%rax,%rax,1)
  401fd6:	00 00                	add    %al,(%rax)
  401fd8:	4c ed                	rex.WR in (%dx),%eax
  401fda:	ff                   	(bad)  
  401fdb:	ff 41 01             	incl   0x1(%rcx)
  401fde:	00 00                	add    %al,(%rax)
  401fe0:	00 41 0e             	add    %al,0xe(%rcx)
  401fe3:	10 83 02 03 3f 01    	adc    %al,0x13f0302(%rbx)
  401fe9:	0e                   	(bad)  
  401fea:	08 00                	or     %al,(%rax)
  401fec:	00 00                	add    %al,(%rax)
  401fee:	00 00                	add    %al,(%rax)
  401ff0:	14 00                	adc    $0x0,%al
  401ff2:	00 00                	add    %al,(%rax)
  401ff4:	3c 00                	cmp    $0x0,%al
  401ff6:	00 00                	add    %al,(%rax)
  401ff8:	78 ee                	js     401fe8 <array.3014+0x448>
  401ffa:	ff                   	(bad)  
  401ffb:	ff 1c 00             	lcallq *(%rax,%rax,1)
  401ffe:	00 00                	add    %al,(%rax)
  402000:	00 44 0e 10          	add    %al,0x10(%rsi,%rcx,1)
  402004:	57                   	push   %rdi
  402005:	0e                   	(bad)  
  402006:	08 00                	or     %al,(%rax)
  402008:	1c 00                	sbb    $0x0,%al
  40200a:	00 00                	add    %al,(%rax)
  40200c:	54                   	push   %rsp
  40200d:	00 00                	add    %al,(%rax)
  40200f:	00 7c ee ff          	add    %bh,-0x1(%rsi,%rbp,8)
  402013:	ff 6d 00             	ljmpq  *0x0(%rbp)
  402016:	00 00                	add    %al,(%rax)
  402018:	00 58 0e             	add    %bl,0xe(%rax)
  40201b:	50                   	push   %rax
  40201c:	8d 02                	lea    (%rdx),%eax
  40201e:	8c 03                	mov    %es,(%rbx)
  402020:	86 04 83             	xchg   %al,(%rbx,%rax,4)
  402023:	05 02 54 0e 08       	add    $0x80e5402,%eax
  402028:	14 00                	adc    $0x0,%al
  40202a:	00 00                	add    %al,(%rax)
  40202c:	74 00                	je     40202e <array.3014+0x48e>
  40202e:	00 00                	add    %al,(%rax)
  402030:	c9                   	leaveq 
  402031:	ee                   	out    %al,(%dx)
  402032:	ff                   	(bad)  
  402033:	ff 8b 00 00 00 00    	decl   0x0(%rbx)
  402039:	44 0e                	rex.R (bad) 
  40203b:	20 02                	and    %al,(%rdx)
  40203d:	86 0e                	xchg   %cl,(%rsi)
  40203f:	08 1c 00             	or     %bl,(%rax,%rax,1)
  402042:	00 00                	add    %al,(%rax)
  402044:	8c 00                	mov    %es,(%rax)
  402046:	00 00                	add    %al,(%rax)
  402048:	3c ef                	cmp    $0xef,%al
  40204a:	ff                   	(bad)  
  40204b:	ff                   	(bad)  
  40204c:	3d 00 00 00 00       	cmp    $0x0,%eax
  402051:	4e 0e                	rex.WRX (bad) 
  402053:	20 86 02 83 03 6e    	and    %al,0x6e038302(%rsi)
  402059:	0e                   	(bad)  
  40205a:	08 00                	or     %al,(%rax)
  40205c:	00 00                	add    %al,(%rax)
  40205e:	00 00                	add    %al,(%rax)
  402060:	14 00                	adc    $0x0,%al
  402062:	00 00                	add    %al,(%rax)
  402064:	ac                   	lods   %ds:(%rsi),%al
  402065:	00 00                	add    %al,(%rax)
  402067:	00 59 ef             	add    %bl,-0x11(%rcx)
  40206a:	ff                   	(bad)  
  40206b:	ff 41 00             	incl   0x0(%rcx)
  40206e:	00 00                	add    %al,(%rax)
  402070:	00 44 0e 20          	add    %al,0x20(%rsi,%rcx,1)
  402074:	7c 0e                	jl     402084 <array.3014+0x4e4>
  402076:	08 00                	or     %al,(%rax)
  402078:	14 00                	adc    $0x0,%al
  40207a:	00 00                	add    %al,(%rax)
  40207c:	c4                   	(bad)  
  40207d:	00 00                	add    %al,(%rax)
  40207f:	00 82 ef ff ff 6d    	add    %al,0x6dffffef(%rdx)
  402085:	00 00                	add    %al,(%rax)
  402087:	00 00                	add    %al,(%rax)
  402089:	44 0e                	rex.R (bad) 
  40208b:	20 02                	and    %al,(%rdx)
  40208d:	68 0e 08 14 00       	pushq  $0x14080e
  402092:	00 00                	add    %al,(%rax)
  402094:	dc 00                	faddl  (%rax)
  402096:	00 00                	add    %al,(%rax)
  402098:	d7                   	xlat   %ds:(%rbx)
  402099:	ef                   	out    %eax,(%dx)
  40209a:	ff                   	(bad)  
  40209b:	ff 6a 00             	ljmpq  *0x0(%rdx)
	...
  4020a6:	00 00                	add    %al,(%rax)
  4020a8:	14 00                	adc    $0x0,%al
  4020aa:	00 00                	add    %al,(%rax)
  4020ac:	f4                   	hlt    
  4020ad:	00 00                	add    %al,(%rax)
  4020af:	00 29                	add    %ch,(%rcx)
  4020b1:	f0 ff                	lock (bad) 
  4020b3:	ff 43 00             	incl   0x0(%rbx)
  4020b6:	00 00                	add    %al,(%rax)
  4020b8:	00 44 0e 10          	add    %al,0x10(%rsi,%rcx,1)
  4020bc:	7e 0e                	jle    4020cc <array.3014+0x52c>
  4020be:	08 00                	or     %al,(%rax)
  4020c0:	14 00                	adc    $0x0,%al
  4020c2:	00 00                	add    %al,(%rax)
  4020c4:	0c 01                	or     $0x1,%al
  4020c6:	00 00                	add    %al,(%rax)
  4020c8:	54                   	push   %rsp
  4020c9:	f0 ff                	lock (bad) 
  4020cb:	ff                   	(bad)  
  4020cc:	3e 00 00             	add    %al,%ds:(%rax)
  4020cf:	00 00                	add    %al,(%rax)
  4020d1:	44 0e                	rex.R (bad) 
  4020d3:	10 79 0e             	adc    %bh,0xe(%rcx)
  4020d6:	08 00                	or     %al,(%rax)
  4020d8:	1c 00                	sbb    $0x0,%al
  4020da:	00 00                	add    %al,(%rax)
  4020dc:	24 01                	and    $0x1,%al
  4020de:	00 00                	add    %al,(%rax)
  4020e0:	7a f0                	jp     4020d2 <array.3014+0x532>
  4020e2:	ff                   	(bad)  
  4020e3:	ff 50 00             	callq  *0x0(%rax)
  4020e6:	00 00                	add    %al,(%rax)
  4020e8:	00 41 0e             	add    %al,0xe(%rcx)
  4020eb:	10 83 02 02 4e 0e    	adc    %al,0xe4e0202(%rbx)
  4020f1:	08 00                	or     %al,(%rax)
  4020f3:	00 00                	add    %al,(%rax)
  4020f5:	00 00                	add    %al,(%rax)
  4020f7:	00 14 00             	add    %dl,(%rax,%rax,1)
  4020fa:	00 00                	add    %al,(%rax)
  4020fc:	44 01 00             	add    %r8d,(%rax)
  4020ff:	00 b0 f0 ff ff 51    	add    %dh,0x51fffff0(%rax)
  402105:	00 00                	add    %al,(%rax)
  402107:	00 00                	add    %al,(%rax)
  402109:	44 0e                	rex.R (bad) 
  40210b:	10 00                	adc    %al,(%rax)
  40210d:	00 00                	add    %al,(%rax)
  40210f:	00 14 00             	add    %dl,(%rax,%rax,1)
  402112:	00 00                	add    %al,(%rax)
  402114:	5c                   	pop    %rsp
  402115:	01 00                	add    %eax,(%rax)
  402117:	00 e9                	add    %ch,%cl
  402119:	f0 ff                	lock (bad) 
  40211b:	ff 20                	jmpq   *(%rax)
  40211d:	00 00                	add    %al,(%rax)
  40211f:	00 00                	add    %al,(%rax)
  402121:	44 0e                	rex.R (bad) 
  402123:	10 00                	adc    %al,(%rax)
  402125:	00 00                	add    %al,(%rax)
  402127:	00 14 00             	add    %dl,(%rax,%rax,1)
  40212a:	00 00                	add    %al,(%rax)
  40212c:	74 01                	je     40212f <array.3014+0x58f>
  40212e:	00 00                	add    %al,(%rax)
  402130:	f1                   	icebp  
  402131:	f0 ff                	lock (bad) 
  402133:	ff 1c 00             	lcallq *(%rax,%rax,1)
	...
  40213e:	00 00                	add    %al,(%rax)
  402140:	1c 00                	sbb    $0x0,%al
  402142:	00 00                	add    %al,(%rax)
  402144:	8c 01                	mov    %es,(%rcx)
  402146:	00 00                	add    %al,(%rax)
  402148:	f5                   	cmc    
  402149:	f0 ff                	lock (bad) 
  40214b:	ff                   	(bad)  
  40214c:	7e 00                	jle    40214e <array.3014+0x5ae>
  40214e:	00 00                	add    %al,(%rax)
  402150:	00 53 0e             	add    %dl,0xe(%rbx)
  402153:	20 8c 02 86 03 83 04 	and    %cl,0x4830386(%rdx,%rax,1)
  40215a:	02 6a 0e             	add    0xe(%rdx),%ch
  40215d:	08 00                	or     %al,(%rax)
  40215f:	00 1c 00             	add    %bl,(%rax,%rax,1)
  402162:	00 00                	add    %al,(%rax)
  402164:	ac                   	lods   %ds:(%rsi),%al
  402165:	01 00                	add    %eax,(%rax)
  402167:	00 53 f1             	add    %dl,-0xf(%rbx)
  40216a:	ff                   	(bad)  
  40216b:	ff dc                	lcallq *<internal disassembler error>
  40216d:	00 00                	add    %al,(%rax)
  40216f:	00 00                	add    %al,(%rax)
  402171:	53                   	push   %rbx
  402172:	0e                   	(bad)  
  402173:	30 8c 02 86 03 83 04 	xor    %cl,0x4830386(%rdx,%rax,1)
  40217a:	02 c8                	add    %al,%cl
  40217c:	0e                   	(bad)  
  40217d:	08 00                	or     %al,(%rax)
  40217f:	00 14 00             	add    %dl,(%rax,%rax,1)
  402182:	00 00                	add    %al,(%rax)
  402184:	cc                   	int3   
  402185:	01 00                	add    %eax,(%rax)
  402187:	00 0f                	add    %cl,(%rdi)
  402189:	f2 ff                	repnz (bad) 
  40218b:	ff 18                	lcallq *(%rax)
  40218d:	00 00                	add    %al,(%rax)
  40218f:	00 00                	add    %al,(%rax)
  402191:	44 0e                	rex.R (bad) 
  402193:	10 53 0e             	adc    %dl,0xe(%rbx)
  402196:	08 00                	or     %al,(%rax)
  402198:	24 00                	and    $0x0,%al
  40219a:	00 00                	add    %al,(%rax)
  40219c:	e4 01                	in     $0x1,%al
  40219e:	00 00                	add    %al,(%rax)
  4021a0:	0f f2 ff             	pslld  %mm7,%mm7
  4021a3:	ff                   	(bad)  
  4021a4:	3d 00 00 00 00       	cmp    $0x0,%eax
  4021a9:	41 0e                	rex.B (bad) 
  4021ab:	10 86 02 41 0e 18    	adc    %al,0x180e4102(%rsi)
  4021b1:	83 03 44             	addl   $0x44,(%rbx)
  4021b4:	0e                   	(bad)  
  4021b5:	20 74 0e 18          	and    %dh,0x18(%rsi,%rcx,1)
  4021b9:	41 0e                	rex.B (bad) 
  4021bb:	10 41 0e             	adc    %al,0xe(%rcx)
  4021be:	08 00                	or     %al,(%rax)
  4021c0:	1c 00                	sbb    $0x0,%al
  4021c2:	00 00                	add    %al,(%rax)
  4021c4:	0c 02                	or     $0x2,%al
  4021c6:	00 00                	add    %al,(%rax)
  4021c8:	24 f2                	and    $0xf2,%al
  4021ca:	ff                   	(bad)  
  4021cb:	ff 41 00             	incl   0x0(%rcx)
  4021ce:	00 00                	add    %al,(%rax)
  4021d0:	00 41 0e             	add    %al,0xe(%rcx)
  4021d3:	10 83 02 7f 0e 08    	adc    %al,0x80e7f02(%rbx)
  4021d9:	00 00                	add    %al,(%rax)
  4021db:	00 00                	add    %al,(%rax)
  4021dd:	00 00                	add    %al,(%rax)
  4021df:	00 34 00             	add    %dh,(%rax,%rax,1)
  4021e2:	00 00                	add    %al,(%rax)
  4021e4:	2c 02                	sub    $0x2,%al
  4021e6:	00 00                	add    %al,(%rax)
  4021e8:	45                   	rex.RB
  4021e9:	f2 ff                	repnz (bad) 
  4021eb:	ff 10                	callq  *(%rax)
  4021ed:	02 00                	add    (%rax),%al
  4021ef:	00 00                	add    %al,(%rax)
  4021f1:	42 0e                	rex.X (bad) 
  4021f3:	10 8c 02 41 0e 18 86 	adc    %cl,-0x79e7f1bf(%rdx,%rax,1)
  4021fa:	03 41 0e             	add    0xe(%rcx),%eax
  4021fd:	20 83 04 44 0e 80    	and    %al,-0x7ff1bbfc(%rbx)
  402203:	01 03                	add    %eax,(%rbx)
  402205:	03 02                	add    (%rdx),%eax
  402207:	0e                   	(bad)  
  402208:	20 41 0e             	and    %al,0xe(%rcx)
  40220b:	18 41 0e             	sbb    %al,0xe(%rcx)
  40220e:	10 42 0e             	adc    %al,0xe(%rdx)
  402211:	08 00                	or     %al,(%rax)
  402213:	00 00                	add    %al,(%rax)
  402215:	00 00                	add    %al,(%rax)
  402217:	00 14 00             	add    %dl,(%rax,%rax,1)
  40221a:	00 00                	add    %al,(%rax)
  40221c:	64 02 00             	add    %fs:(%rax),%al
  40221f:	00 1d f4 ff ff 22    	add    %bl,0x22fffff4(%rip)        # 23402219 <_end+0x22dfec49>
  402225:	00 00                	add    %al,(%rax)
  402227:	00 00                	add    %al,(%rax)
  402229:	44 0e                	rex.R (bad) 
  40222b:	10 00                	adc    %al,(%rax)
  40222d:	00 00                	add    %al,(%rax)
  40222f:	00 14 00             	add    %dl,(%rax,%rax,1)
  402232:	00 00                	add    %al,(%rax)
  402234:	7c 02                	jl     402238 <array.3014+0x698>
  402236:	00 00                	add    %al,(%rax)
  402238:	27                   	(bad)  
  402239:	f4                   	hlt    
  40223a:	ff                   	(bad)  
  40223b:	ff e4                	jmpq   *%rsp
  40223d:	00 00                	add    %al,(%rax)
  40223f:	00 00                	add    %al,(%rax)
  402241:	44 0e                	rex.R (bad) 
  402243:	10 02                	adc    %al,(%rdx)
  402245:	df 0e                	fisttp (%rsi)
  402247:	08 14 00             	or     %dl,(%rax,%rax,1)
  40224a:	00 00                	add    %al,(%rax)
  40224c:	94                   	xchg   %eax,%esp
  40224d:	02 00                	add    (%rax),%al
  40224f:	00 f3                	add    %dh,%bl
  402251:	f4                   	hlt    
  402252:	ff                   	(bad)  
  402253:	ff 42 00             	incl   0x0(%rdx)
  402256:	00 00                	add    %al,(%rax)
  402258:	00 44 0e 20          	add    %al,0x20(%rsi,%rcx,1)
  40225c:	7d 0e                	jge    40226c <array.3014+0x6cc>
  40225e:	08 00                	or     %al,(%rax)
  402260:	14 00                	adc    $0x0,%al
  402262:	00 00                	add    %al,(%rax)
  402264:	ac                   	lods   %ds:(%rsi),%al
  402265:	02 00                	add    (%rax),%al
  402267:	00 1d f5 ff ff 70    	add    %bl,0x70fffff5(%rip)        # 71402262 <_end+0x70dfec92>
  40226d:	00 00                	add    %al,(%rax)
  40226f:	00 00                	add    %al,(%rax)
  402271:	44 0e                	rex.R (bad) 
  402273:	70 02                	jo     402277 <array.3014+0x6d7>
  402275:	6b 0e 08             	imul   $0x8,(%rsi),%ecx
  402278:	24 00                	and    $0x0,%al
  40227a:	00 00                	add    %al,(%rax)
  40227c:	c4 02 00 00          	(bad)  
  402280:	80 f5 ff             	xor    $0xff,%ch
  402283:	ff 89 00 00 00 00    	decl   0x0(%rcx)
  402289:	51                   	push   %rcx
  40228a:	8c 05 86 06 5f 0e    	mov    %es,0xe5f0686(%rip)        # e9f2916 <_end+0xe3ef346>
  402290:	40 83 07 8f          	rex addl $0xffffff8f,(%rdi)
  402294:	02 8e 03 8d 04 02    	add    0x2048d03(%rsi),%cl
  40229a:	58                   	pop    %rax
  40229b:	0e                   	(bad)  
  40229c:	08 00                	or     %al,(%rax)
  40229e:	00 00                	add    %al,(%rax)
  4022a0:	14 00                	adc    $0x0,%al
  4022a2:	00 00                	add    %al,(%rax)
  4022a4:	ec                   	in     (%dx),%al
  4022a5:	02 00                	add    (%rax),%al
  4022a7:	00 e8                	add    %ch,%al
  4022a9:	f5                   	cmc    
  4022aa:	ff                   	(bad)  
  4022ab:	ff 02                	incl   (%rdx)
	...

00000000004022b8 <__FRAME_END__>:
  4022b8:	00 00                	add    %al,(%rax)
	...

Disassembly of section .ctors:

00000000006022c0 <__CTOR_LIST__>:
  6022c0:	ff                   	(bad)  
  6022c1:	ff                   	(bad)  
  6022c2:	ff                   	(bad)  
  6022c3:	ff                   	(bad)  
  6022c4:	ff                   	(bad)  
  6022c5:	ff                   	(bad)  
  6022c6:	ff                   	(bad)  
  6022c7:	ff 00                	incl   (%rax)

00000000006022c8 <__CTOR_END__>:
	...

Disassembly of section .dtors:

00000000006022d0 <__DTOR_LIST__>:
  6022d0:	ff                   	(bad)  
  6022d1:	ff                   	(bad)  
  6022d2:	ff                   	(bad)  
  6022d3:	ff                   	(bad)  
  6022d4:	ff                   	(bad)  
  6022d5:	ff                   	(bad)  
  6022d6:	ff                   	(bad)  
  6022d7:	ff 00                	incl   (%rax)

00000000006022d8 <__DTOR_END__>:
	...

Disassembly of section .jcr:

00000000006022e0 <__JCR_END__>:
	...

Disassembly of section .dynamic:

00000000006022e8 <_DYNAMIC>:
  6022e8:	01 00                	add    %eax,(%rax)
  6022ea:	00 00                	add    %al,(%rax)
  6022ec:	00 00                	add    %al,(%rax)
  6022ee:	00 00                	add    %al,(%rax)
  6022f0:	10 00                	adc    %al,(%rax)
  6022f2:	00 00                	add    %al,(%rax)
  6022f4:	00 00                	add    %al,(%rax)
  6022f6:	00 00                	add    %al,(%rax)
  6022f8:	0c 00                	or     $0x0,%al
  6022fa:	00 00                	add    %al,(%rax)
  6022fc:	00 00                	add    %al,(%rax)
  6022fe:	00 00                	add    %al,(%rax)
  602300:	48 0a 40 00          	rex.W or 0x0(%rax),%al
  602304:	00 00                	add    %al,(%rax)
  602306:	00 00                	add    %al,(%rax)
  602308:	0d 00 00 00 00       	or     $0x0,%eax
  60230d:	00 00                	add    %al,(%rax)
  60230f:	00 d8                	add    %bl,%al
  602311:	18 40 00             	sbb    %al,0x0(%rax)
  602314:	00 00                	add    %al,(%rax)
  602316:	00 00                	add    %al,(%rax)
  602318:	f5                   	cmc    
  602319:	fe                   	(bad)  
  60231a:	ff 6f 00             	ljmpq  *0x0(%rdi)
  60231d:	00 00                	add    %al,(%rax)
  60231f:	00 60 02             	add    %ah,0x2(%rax)
  602322:	40 00 00             	add    %al,(%rax)
  602325:	00 00                	add    %al,(%rax)
  602327:	00 05 00 00 00 00    	add    %al,0x0(%rip)        # 60232d <_DYNAMIC+0x45>
  60232d:	00 00                	add    %al,(%rax)
  60232f:	00 a0 05 40 00 00    	add    %ah,0x4005(%rax)
  602335:	00 00                	add    %al,(%rax)
  602337:	00 06                	add    %al,(%rsi)
  602339:	00 00                	add    %al,(%rax)
  60233b:	00 00                	add    %al,(%rax)
  60233d:	00 00                	add    %al,(%rax)
  60233f:	00 88 02 40 00 00    	add    %cl,0x4002(%rax)
  602345:	00 00                	add    %al,(%rax)
  602347:	00 0a                	add    %cl,(%rdx)
  602349:	00 00                	add    %al,(%rax)
  60234b:	00 00                	add    %al,(%rax)
  60234d:	00 00                	add    %al,(%rax)
  60234f:	00 1f                	add    %bl,(%rdi)
  602351:	01 00                	add    %eax,(%rax)
  602353:	00 00                	add    %al,(%rax)
  602355:	00 00                	add    %al,(%rax)
  602357:	00 0b                	add    %cl,(%rbx)
  602359:	00 00                	add    %al,(%rax)
  60235b:	00 00                	add    %al,(%rax)
  60235d:	00 00                	add    %al,(%rax)
  60235f:	00 18                	add    %bl,(%rax)
  602361:	00 00                	add    %al,(%rax)
  602363:	00 00                	add    %al,(%rax)
  602365:	00 00                	add    %al,(%rax)
  602367:	00 15 00 00 00 00    	add    %dl,0x0(%rip)        # 60236d <_DYNAMIC+0x85>
	...
  602375:	00 00                	add    %al,(%rax)
  602377:	00 03                	add    %al,(%rbx)
  602379:	00 00                	add    %al,(%rax)
  60237b:	00 00                	add    %al,(%rax)
  60237d:	00 00                	add    %al,(%rax)
  60237f:	00 80 24 60 00 00    	add    %al,0x6024(%rax)
  602385:	00 00                	add    %al,(%rax)
  602387:	00 02                	add    %al,(%rdx)
  602389:	00 00                	add    %al,(%rax)
  60238b:	00 00                	add    %al,(%rax)
  60238d:	00 00                	add    %al,(%rax)
  60238f:	00 b8 02 00 00 00    	add    %bh,0x2(%rax)
  602395:	00 00                	add    %al,(%rax)
  602397:	00 14 00             	add    %dl,(%rax,%rax,1)
  60239a:	00 00                	add    %al,(%rax)
  60239c:	00 00                	add    %al,(%rax)
  60239e:	00 00                	add    %al,(%rax)
  6023a0:	07                   	(bad)  
  6023a1:	00 00                	add    %al,(%rax)
  6023a3:	00 00                	add    %al,(%rax)
  6023a5:	00 00                	add    %al,(%rax)
  6023a7:	00 17                	add    %dl,(%rdi)
  6023a9:	00 00                	add    %al,(%rax)
  6023ab:	00 00                	add    %al,(%rax)
  6023ad:	00 00                	add    %al,(%rax)
  6023af:	00 90 07 40 00 00    	add    %dl,0x4007(%rax)
  6023b5:	00 00                	add    %al,(%rax)
  6023b7:	00 07                	add    %al,(%rdi)
  6023b9:	00 00                	add    %al,(%rax)
  6023bb:	00 00                	add    %al,(%rax)
  6023bd:	00 00                	add    %al,(%rax)
  6023bf:	00 48 07             	add    %cl,0x7(%rax)
  6023c2:	40 00 00             	add    %al,(%rax)
  6023c5:	00 00                	add    %al,(%rax)
  6023c7:	00 08                	add    %cl,(%rax)
  6023c9:	00 00                	add    %al,(%rax)
  6023cb:	00 00                	add    %al,(%rax)
  6023cd:	00 00                	add    %al,(%rax)
  6023cf:	00 48 00             	add    %cl,0x0(%rax)
  6023d2:	00 00                	add    %al,(%rax)
  6023d4:	00 00                	add    %al,(%rax)
  6023d6:	00 00                	add    %al,(%rax)
  6023d8:	09 00                	or     %eax,(%rax)
  6023da:	00 00                	add    %al,(%rax)
  6023dc:	00 00                	add    %al,(%rax)
  6023de:	00 00                	add    %al,(%rax)
  6023e0:	18 00                	sbb    %al,(%rax)
  6023e2:	00 00                	add    %al,(%rax)
  6023e4:	00 00                	add    %al,(%rax)
  6023e6:	00 00                	add    %al,(%rax)
  6023e8:	fe                   	(bad)  
  6023e9:	ff                   	(bad)  
  6023ea:	ff 6f 00             	ljmpq  *0x0(%rdi)
  6023ed:	00 00                	add    %al,(%rax)
  6023ef:	00 08                	add    %cl,(%rax)
  6023f1:	07                   	(bad)  
  6023f2:	40 00 00             	add    %al,(%rax)
  6023f5:	00 00                	add    %al,(%rax)
  6023f7:	00 ff                	add    %bh,%bh
  6023f9:	ff                   	(bad)  
  6023fa:	ff 6f 00             	ljmpq  *0x0(%rdi)
  6023fd:	00 00                	add    %al,(%rax)
  6023ff:	00 01                	add    %al,(%rcx)
  602401:	00 00                	add    %al,(%rax)
  602403:	00 00                	add    %al,(%rax)
  602405:	00 00                	add    %al,(%rax)
  602407:	00 f0                	add    %dh,%al
  602409:	ff                   	(bad)  
  60240a:	ff 6f 00             	ljmpq  *0x0(%rdi)
  60240d:	00 00                	add    %al,(%rax)
  60240f:	00 c0                	add    %al,%al
  602411:	06                   	(bad)  
  602412:	40 00 00             	add    %al,(%rax)
	...

Disassembly of section .got:

0000000000602478 <.got>:
	...

Disassembly of section .got.plt:

0000000000602480 <_GLOBAL_OFFSET_TABLE_>:
  602480:	e8 22 60 00 00       	callq  6084a7 <_end+0x4ed7>
	...
  602495:	00 00                	add    %al,(%rax)
  602497:	00 76 0a             	add    %dh,0xa(%rsi)
  60249a:	40 00 00             	add    %al,(%rax)
  60249d:	00 00                	add    %al,(%rax)
  60249f:	00 86 0a 40 00 00    	add    %al,0x400a(%rsi)
  6024a5:	00 00                	add    %al,(%rax)
  6024a7:	00 96 0a 40 00 00    	add    %dl,0x400a(%rsi)
  6024ad:	00 00                	add    %al,(%rax)
  6024af:	00 a6 0a 40 00 00    	add    %ah,0x400a(%rsi)
  6024b5:	00 00                	add    %al,(%rax)
  6024b7:	00 b6 0a 40 00 00    	add    %dh,0x400a(%rsi)
  6024bd:	00 00                	add    %al,(%rax)
  6024bf:	00 c6                	add    %al,%dh
  6024c1:	0a 40 00             	or     0x0(%rax),%al
  6024c4:	00 00                	add    %al,(%rax)
  6024c6:	00 00                	add    %al,(%rax)
  6024c8:	d6                   	(bad)  
  6024c9:	0a 40 00             	or     0x0(%rax),%al
  6024cc:	00 00                	add    %al,(%rax)
  6024ce:	00 00                	add    %al,(%rax)
  6024d0:	e6 0a                	out    %al,$0xa
  6024d2:	40 00 00             	add    %al,(%rax)
  6024d5:	00 00                	add    %al,(%rax)
  6024d7:	00 f6                	add    %dh,%dh
  6024d9:	0a 40 00             	or     0x0(%rax),%al
  6024dc:	00 00                	add    %al,(%rax)
  6024de:	00 00                	add    %al,(%rax)
  6024e0:	06                   	(bad)  
  6024e1:	0b 40 00             	or     0x0(%rax),%eax
  6024e4:	00 00                	add    %al,(%rax)
  6024e6:	00 00                	add    %al,(%rax)
  6024e8:	16                   	(bad)  
  6024e9:	0b 40 00             	or     0x0(%rax),%eax
  6024ec:	00 00                	add    %al,(%rax)
  6024ee:	00 00                	add    %al,(%rax)
  6024f0:	26 0b 40 00          	or     %es:0x0(%rax),%eax
  6024f4:	00 00                	add    %al,(%rax)
  6024f6:	00 00                	add    %al,(%rax)
  6024f8:	36 0b 40 00          	or     %ss:0x0(%rax),%eax
  6024fc:	00 00                	add    %al,(%rax)
  6024fe:	00 00                	add    %al,(%rax)
  602500:	46 0b 40 00          	rex.RX or 0x0(%rax),%r8d
  602504:	00 00                	add    %al,(%rax)
  602506:	00 00                	add    %al,(%rax)
  602508:	56                   	push   %rsi
  602509:	0b 40 00             	or     0x0(%rax),%eax
  60250c:	00 00                	add    %al,(%rax)
  60250e:	00 00                	add    %al,(%rax)
  602510:	66 0b 40 00          	or     0x0(%rax),%ax
  602514:	00 00                	add    %al,(%rax)
  602516:	00 00                	add    %al,(%rax)
  602518:	76 0b                	jbe    602525 <_GLOBAL_OFFSET_TABLE_+0xa5>
  60251a:	40 00 00             	add    %al,(%rax)
  60251d:	00 00                	add    %al,(%rax)
  60251f:	00 86 0b 40 00 00    	add    %al,0x400b(%rsi)
  602525:	00 00                	add    %al,(%rax)
  602527:	00 96 0b 40 00 00    	add    %dl,0x400b(%rsi)
  60252d:	00 00                	add    %al,(%rax)
  60252f:	00 a6 0b 40 00 00    	add    %ah,0x400b(%rsi)
  602535:	00 00                	add    %al,(%rax)
  602537:	00 b6 0b 40 00 00    	add    %dh,0x400b(%rsi)
  60253d:	00 00                	add    %al,(%rax)
  60253f:	00 c6                	add    %al,%dh
  602541:	0b 40 00             	or     0x0(%rax),%eax
  602544:	00 00                	add    %al,(%rax)
  602546:	00 00                	add    %al,(%rax)
  602548:	d6                   	(bad)  
  602549:	0b 40 00             	or     0x0(%rax),%eax
  60254c:	00 00                	add    %al,(%rax)
  60254e:	00 00                	add    %al,(%rax)
  602550:	e6 0b                	out    %al,$0xb
  602552:	40 00 00             	add    %al,(%rax)
  602555:	00 00                	add    %al,(%rax)
  602557:	00 f6                	add    %dh,%dh
  602559:	0b 40 00             	or     0x0(%rax),%eax
  60255c:	00 00                	add    %al,(%rax)
  60255e:	00 00                	add    %al,(%rax)
  602560:	06                   	(bad)  
  602561:	0c 40                	or     $0x40,%al
  602563:	00 00                	add    %al,(%rax)
  602565:	00 00                	add    %al,(%rax)
  602567:	00 16                	add    %dl,(%rsi)
  602569:	0c 40                	or     $0x40,%al
  60256b:	00 00                	add    %al,(%rax)
  60256d:	00 00                	add    %al,(%rax)
  60256f:	00 26                	add    %ah,(%rsi)
  602571:	0c 40                	or     $0x40,%al
  602573:	00 00                	add    %al,(%rax)
  602575:	00 00                	add    %al,(%rax)
  602577:	00 36                	add    %dh,(%rsi)
  602579:	0c 40                	or     $0x40,%al
  60257b:	00 00                	add    %al,(%rax)
  60257d:	00 00                	add    %al,(%rax)
	...

Disassembly of section .data:

0000000000602580 <__data_start>:
	...

00000000006025a0 <n1>:
  6025a0:	24 00                	and    $0x0,%al
  6025a2:	00 00                	add    %al,(%rax)
  6025a4:	00 00                	add    %al,(%rax)
  6025a6:	00 00                	add    %al,(%rax)
  6025a8:	c0 25 60 00 00 00 00 	shlb   $0x0,0x60(%rip)        # 60260f <n32+0xf>
  6025af:	00 e0                	add    %ah,%al
  6025b1:	25 60 00 00 00       	and    $0x60,%eax
	...

00000000006025c0 <n21>:
  6025c0:	08 00                	or     %al,(%rax)
  6025c2:	00 00                	add    %al,(%rax)
  6025c4:	00 00                	add    %al,(%rax)
  6025c6:	00 00                	add    %al,(%rax)
  6025c8:	40                   	rex
  6025c9:	26                   	es
  6025ca:	60                   	(bad)  
  6025cb:	00 00                	add    %al,(%rax)
  6025cd:	00 00                	add    %al,(%rax)
  6025cf:	00 00                	add    %al,(%rax)
  6025d1:	26                   	es
  6025d2:	60                   	(bad)  
	...

00000000006025e0 <n22>:
  6025e0:	32 00                	xor    (%rax),%al
  6025e2:	00 00                	add    %al,(%rax)
  6025e4:	00 00                	add    %al,(%rax)
  6025e6:	00 00                	add    %al,(%rax)
  6025e8:	20 26                	and    %ah,(%rsi)
  6025ea:	60                   	(bad)  
  6025eb:	00 00                	add    %al,(%rax)
  6025ed:	00 00                	add    %al,(%rax)
  6025ef:	00 60 26             	add    %ah,0x26(%rax)
  6025f2:	60                   	(bad)  
	...

0000000000602600 <n32>:
  602600:	16                   	(bad)  
  602601:	00 00                	add    %al,(%rax)
  602603:	00 00                	add    %al,(%rax)
  602605:	00 00                	add    %al,(%rax)
  602607:	00 20                	add    %ah,(%rax)
  602609:	27                   	(bad)  
  60260a:	60                   	(bad)  
  60260b:	00 00                	add    %al,(%rax)
  60260d:	00 00                	add    %al,(%rax)
  60260f:	00 e0                	add    %ah,%al
  602611:	26                   	es
  602612:	60                   	(bad)  
	...

0000000000602620 <n33>:
  602620:	2d 00 00 00 00       	sub    $0x0,%eax
  602625:	00 00                	add    %al,(%rax)
  602627:	00 80 26 60 00 00    	add    %al,0x6026(%rax)
  60262d:	00 00                	add    %al,(%rax)
  60262f:	00 40 27             	add    %al,0x27(%rax)
  602632:	60                   	(bad)  
	...

0000000000602640 <n31>:
  602640:	06                   	(bad)  
  602641:	00 00                	add    %al,(%rax)
  602643:	00 00                	add    %al,(%rax)
  602645:	00 00                	add    %al,(%rax)
  602647:	00 a0 26 60 00 00    	add    %ah,0x6026(%rax)
  60264d:	00 00                	add    %al,(%rax)
  60264f:	00 00                	add    %al,(%rax)
  602651:	27                   	(bad)  
  602652:	60                   	(bad)  
	...

0000000000602660 <n34>:
  602660:	6b 00 00             	imul   $0x0,(%rax),%eax
  602663:	00 00                	add    %al,(%rax)
  602665:	00 00                	add    %al,(%rax)
  602667:	00 c0                	add    %al,%al
  602669:	26                   	es
  60266a:	60                   	(bad)  
  60266b:	00 00                	add    %al,(%rax)
  60266d:	00 00                	add    %al,(%rax)
  60266f:	00 60 27             	add    %ah,0x27(%rax)
  602672:	60                   	(bad)  
	...

0000000000602680 <n45>:
  602680:	28 00                	sub    %al,(%rax)
	...

00000000006026a0 <n41>:
  6026a0:	01 00                	add    %eax,(%rax)
	...

00000000006026c0 <n47>:
  6026c0:	63 00                	movslq (%rax),%eax
	...

00000000006026e0 <n44>:
  6026e0:	23 00                	and    (%rax),%eax
	...

0000000000602700 <n42>:
  602700:	07                   	(bad)  
	...

0000000000602720 <n43>:
  602720:	14 00                	adc    $0x0,%al
	...

0000000000602740 <n46>:
  602740:	2f                   	(bad)  
	...

0000000000602760 <n48>:
  602760:	e9 03 00 00 00       	jmpq   602768 <n48+0x8>
	...

0000000000602780 <node0>:
	...
  602788:	90                   	nop
  602789:	27                   	(bad)  
  60278a:	60                   	(bad)  
  60278b:	00 00                	add    %al,(%rax)
  60278d:	00 00                	add    %al,(%rax)
	...

0000000000602790 <node1>:
  602790:	76 01                	jbe    602793 <node1+0x3>
  602792:	00 00                	add    %al,(%rax)
  602794:	01 00                	add    %eax,(%rax)
  602796:	00 00                	add    %al,(%rax)
  602798:	a0 27 60 00 00 00 00 	movabs 0x3a00000000006027,%al
  60279f:	00 3a 

00000000006027a0 <node2>:
  6027a0:	3a 03                	cmp    (%rbx),%al
  6027a2:	00 00                	add    %al,(%rax)
  6027a4:	02 00                	add    (%rax),%al
  6027a6:	00 00                	add    %al,(%rax)
  6027a8:	b0 27                	mov    $0x27,%al
  6027aa:	60                   	(bad)  
  6027ab:	00 00                	add    %al,(%rax)
  6027ad:	00 00                	add    %al,(%rax)
	...

00000000006027b0 <node3>:
  6027b0:	72 01                	jb     6027b3 <node3+0x3>
  6027b2:	00 00                	add    %al,(%rax)
  6027b4:	03 00                	add    (%rax),%eax
  6027b6:	00 00                	add    %al,(%rax)
  6027b8:	c0 27 60             	shlb   $0x60,(%rdi)
  6027bb:	00 00                	add    %al,(%rax)
  6027bd:	00 00                	add    %al,(%rax)
	...

00000000006027c0 <node4>:
  6027c0:	0e                   	(bad)  
  6027c1:	03 00                	add    (%rax),%eax
  6027c3:	00 04 00             	add    %al,(%rax,%rax,1)
  6027c6:	00 00                	add    %al,(%rax)
  6027c8:	d0 27                	shlb   (%rdi)
  6027ca:	60                   	(bad)  
  6027cb:	00 00                	add    %al,(%rax)
  6027cd:	00 00                	add    %al,(%rax)
	...

00000000006027d0 <node5>:
  6027d0:	e8 01 00 00 05       	callq  56027d6 <_end+0x4fff206>
  6027d5:	00 00                	add    %al,(%rax)
  6027d7:	00 e0                	add    %ah,%al
  6027d9:	27                   	(bad)  
  6027da:	60                   	(bad)  
  6027db:	00 00                	add    %al,(%rax)
  6027dd:	00 00                	add    %al,(%rax)
	...

00000000006027e0 <node6>:
  6027e0:	a1 02 00 00 06 00 00 	movabs 0xf000000006000002,%eax
  6027e7:	00 f0 
  6027e9:	27                   	(bad)  
  6027ea:	60                   	(bad)  
  6027eb:	00 00                	add    %al,(%rax)
  6027ed:	00 00                	add    %al,(%rax)
	...

00000000006027f0 <node7>:
  6027f0:	1e                   	(bad)  
  6027f1:	01 00                	add    %eax,(%rax)
  6027f3:	00 07                	add    %al,(%rdi)
  6027f5:	00 00                	add    %al,(%rax)
  6027f7:	00 00                	add    %al,(%rax)
  6027f9:	28 60 00             	sub    %ah,0x0(%rax)
  6027fc:	00 00                	add    %al,(%rax)
	...

0000000000602800 <node8>:
  602800:	58                   	pop    %rax
  602801:	02 00                	add    (%rax),%al
  602803:	00 08                	add    %cl,(%rax)
  602805:	00 00                	add    %al,(%rax)
  602807:	00 10                	add    %dl,(%rax)
  602809:	28 60 00             	sub    %ah,0x0(%rax)
  60280c:	00 00                	add    %al,(%rax)
	...

0000000000602810 <node9>:
  602810:	11 02                	adc    %eax,(%rdx)
  602812:	00 00                	add    %al,(%rax)
  602814:	09 00                	or     %eax,(%rax)
	...

0000000000602820 <lab_id>:
  602820:	63 6f 75             	movslq 0x75(%rdi),%ebp
  602823:	72 73                	jb     602898 <lab_id+0x78>
  602825:	65                   	gs
  602826:	72 61                	jb     602889 <lab_id+0x69>
  602828:	48 57                	rex.W push %rdi
  60282a:	53                   	push   %rbx
  60282b:	57                   	push   %rdi
  60282c:	49 6e                	rex.WB outsb %ds:(%rsi),(%dx)
  60282e:	74 65                	je     602895 <lab_id+0x75>
  602830:	72 66                	jb     602898 <lab_id+0x78>
  602832:	61                   	(bad)  
  602833:	63 65 00             	movslq 0x0(%rbp),%esp
	...

0000000000602c20 <bomb_id>:
  602c20:	01 00                	add    %eax,(%rax)
	...

Disassembly of section .bss:

0000000000602c40 <stdin@@GLIBC_2.2.5>:
	...

0000000000602c50 <stdout@@GLIBC_2.2.5>:
	...

0000000000602c58 <completed.5895>:
	...

0000000000602c60 <dtor_idx.5897>:
	...

0000000000602c80 <num_input_strings>:
	...

0000000000602ca0 <host_table>:
	...

0000000000602f20 <infile>:
	...

0000000000602f40 <input_strings>:
	...

0000000000603580 <scratch>:
	...

Disassembly of section .comment:

0000000000000000 <.comment>:
   0:	47                   	rex.RXB
   1:	43                   	rex.XB
   2:	43 3a 20             	rex.XB cmp (%r8),%spl
   5:	28 47 4e             	sub    %al,0x4e(%rdi)
   8:	55                   	push   %rbp
   9:	29 20                	sub    %esp,(%rax)
   b:	34 2e                	xor    $0x2e,%al
   d:	36 2e 31 20          	ss xor %esp,%cs:%ss:(%rax)
  11:	32 30                	xor    (%rax),%dh
  13:	31 31                	xor    %esi,(%rcx)
  15:	30 39                	xor    %bh,(%rcx)
  17:	30 38                	xor    %bh,(%rax)
  19:	20 28                	and    %ch,(%rax)
  1b:	52                   	push   %rdx
  1c:	65 64 20 48 61       	gs and %cl,%fs:%gs:0x61(%rax)
  21:	74 20                	je     43 <_init-0x400a05>
  23:	34 2e                	xor    $0x2e,%al
  25:	36 2e 31 2d 39 29 00 	ss xor %ebp,%cs:%ss:0x47002939(%rip)        # 47002966 <_end+0x469ff396>
  2c:	47 
  2d:	43                   	rex.XB
  2e:	43 3a 20             	rex.XB cmp (%r8),%spl
  31:	28 47 4e             	sub    %al,0x4e(%rdi)
  34:	55                   	push   %rbp
  35:	29 20                	sub    %esp,(%rax)
  37:	34 2e                	xor    $0x2e,%al
  39:	36 2e 33 20          	ss xor %cs:%ss:(%rax),%esp
  3d:	32 30                	xor    (%rax),%dh
  3f:	31 32                	xor    %esi,(%rdx)
  41:	30 33                	xor    %dh,(%rbx)
  43:	30 36                	xor    %dh,(%rsi)
  45:	20 28                	and    %ch,(%rax)
  47:	52                   	push   %rdx
  48:	65 64 20 48 61       	gs and %cl,%fs:%gs:0x61(%rax)
  4d:	74 20                	je     6f <_init-0x4009d9>
  4f:	34 2e                	xor    $0x2e,%al
  51:	36                   	ss
  52:	2e                   	cs
  53:	33                   	.byte 0x33
  54:	2d                   	.byte 0x2d
  55:	32 29                	xor    (%rcx),%ch
	...

Disassembly of section .debug_aranges:

0000000000000000 <.debug_aranges>:
   0:	2c 00                	sub    $0x0,%al
   2:	00 00                	add    %al,(%rax)
   4:	02 00                	add    (%rax),%al
   6:	00 00                	add    %al,(%rax)
   8:	00 00                	add    %al,(%rax)
   a:	08 00                	or     %al,(%rax)
   c:	00 00                	add    %al,(%rax)
   e:	00 00                	add    %al,(%rax)
  10:	24 0d                	and    $0xd,%al
  12:	40 00 00             	add    %al,(%rax)
  15:	00 00                	add    %al,(%rax)
  17:	00 41 01             	add    %al,0x1(%rcx)
	...

Disassembly of section .debug_info:

0000000000000000 <.debug_info>:
   0:	29 03                	sub    %eax,(%rbx)
   2:	00 00                	add    %al,(%rax)
   4:	03 00                	add    (%rax),%eax
   6:	00 00                	add    %al,(%rax)
   8:	00 00                	add    %al,(%rax)
   a:	08 01                	or     %al,(%rcx)
   c:	5d                   	pop    %rbp
   d:	00 00                	add    %al,(%rax)
   f:	00 01                	add    %al,(%rcx)
  11:	ad                   	lods   %ds:(%rsi),%eax
  12:	00 00                	add    %al,(%rax)
  14:	00 4d 01             	add    %cl,0x1(%rbp)
  17:	00 00                	add    %al,(%rax)
  19:	24 0d                	and    $0xd,%al
  1b:	40 00 00             	add    %al,(%rax)
  1e:	00 00                	add    %al,(%rax)
  20:	00 65 0e             	add    %ah,0xe(%rbp)
  23:	40 00 00             	add    %al,(%rax)
  26:	00 00                	add    %al,(%rax)
  28:	00 00                	add    %al,(%rax)
  2a:	00 00                	add    %al,(%rax)
  2c:	00 02                	add    %al,(%rdx)
  2e:	17                   	(bad)  
  2f:	00 00                	add    %al,(%rax)
  31:	00 02                	add    %al,(%rdx)
  33:	d4                   	(bad)  
  34:	38 00                	cmp    %al,(%rax)
  36:	00 00                	add    %al,(%rax)
  38:	03 08                	add    (%rax),%ecx
  3a:	07                   	(bad)  
  3b:	3b 01                	cmp    (%rcx),%eax
  3d:	00 00                	add    %al,(%rax)
  3f:	03 01                	add    (%rcx),%eax
  41:	08 9f 00 00 00 03    	or     %bl,0x3000000(%rdi)
  47:	02 07                	add    (%rdi),%al
  49:	bb 00 00 00 03       	mov    $0x3000000,%ebx
  4e:	04 07                	add    $0x7,%al
  50:	40 01 00             	rex add %eax,(%rax)
  53:	00 03                	add    %al,(%rbx)
  55:	01 06                	add    %eax,(%rsi)
  57:	a1 00 00 00 03 02 05 	movabs 0x1d9050203000000,%eax
  5e:	d9 01 
  60:	00 00                	add    %al,(%rax)
  62:	04 04                	add    $0x4,%al
  64:	05 69 6e 74 00       	add    $0x746e69,%eax
  69:	03 08                	add    (%rax),%ecx
  6b:	05 bb 01 00 00       	add    $0x1bb,%eax
  70:	02 a5 01 00 00 03    	add    0x3000001(%rbp),%ah
  76:	8d 69 00             	lea    0x0(%rcx),%ebp
  79:	00 00                	add    %al,(%rax)
  7b:	02 00                	add    (%rax),%al
  7d:	00 00                	add    %al,(%rax)
  7f:	00 03                	add    %al,(%rbx)
  81:	8e 69 00             	mov    0x0(%rcx),%gs
  84:	00 00                	add    %al,(%rax)
  86:	05 08 06 08 8e       	add    $0x8e080608,%eax
  8b:	00 00                	add    %al,(%rax)
  8d:	00 03                	add    %al,(%rbx)
  8f:	01 06                	add    %eax,(%rsi)
  91:	a8 00                	test   $0x0,%al
  93:	00 00                	add    %al,(%rax)
  95:	02 22                	add    (%rdx),%ah
  97:	00 00                	add    %al,(%rax)
  99:	00 04 31             	add    %al,(%rcx,%rsi,1)
  9c:	a0 00 00 00 07 1e 00 	movabs 0x1e07000000,%al
  a3:	00 00 
  a5:	d8 05 11 01 27 02    	fadds  0x2270111(%rip)        # 22701bc <_end+0x1c6cbec>
  ab:	00 00                	add    %al,(%rax)
  ad:	08 f3                	or     %dh,%bl
  af:	01 00                	add    %eax,(%rax)
  b1:	00 05 12 01 62 00    	add    %al,0x620112(%rip)        # 6201c9 <_end+0x1cbf9>
  b7:	00 00                	add    %al,(%rax)
  b9:	00 08                	add    %cl,(%rax)
  bb:	50                   	push   %rax
  bc:	00 00                	add    %al,(%rax)
  be:	00 05 17 01 88 00    	add    %al,0x880117(%rip)        # 8801db <_end+0x27cc0b>
  c4:	00 00                	add    %al,(%rax)
  c6:	08 08                	or     %cl,(%rax)
  c8:	0a 00                	or     (%rax),%al
  ca:	00 00                	add    %al,(%rax)
  cc:	05 18 01 88 00       	add    $0x880118,%eax
  d1:	00 00                	add    %al,(%rax)
  d3:	10 08                	adc    %cl,(%rax)
  d5:	21 02                	and    %eax,(%rdx)
  d7:	00 00                	add    %al,(%rax)
  d9:	05 19 01 88 00       	add    $0x880119,%eax
  de:	00 00                	add    %al,(%rax)
  e0:	18 08                	sbb    %cl,(%rax)
  e2:	27                   	(bad)  
  e3:	00 00                	add    %al,(%rax)
  e5:	00 05 1a 01 88 00    	add    %al,0x88011a(%rip)        # 880205 <_end+0x27cc35>
  eb:	00 00                	add    %al,(%rax)
  ed:	20 08                	and    %cl,(%rax)
  ef:	06                   	(bad)  
  f0:	02 00                	add    (%rax),%al
  f2:	00 05 1b 01 88 00    	add    %al,0x88011b(%rip)        # 880213 <_end+0x27cc43>
  f8:	00 00                	add    %al,(%rax)
  fa:	28 08                	sub    %cl,(%rax)
  fc:	cb                   	lret   
  fd:	01 00                	add    %eax,(%rax)
  ff:	00 05 1c 01 88 00    	add    %al,0x88011c(%rip)        # 880221 <_end+0x27cc51>
 105:	00 00                	add    %al,(%rax)
 107:	30 08                	xor    %cl,(%rax)
 109:	7e 01                	jle    10c <_init-0x40093c>
 10b:	00 00                	add    %al,(%rax)
 10d:	05 1d 01 88 00       	add    $0x88011d,%eax
 112:	00 00                	add    %al,(%rax)
 114:	38 08                	cmp    %cl,(%rax)
 116:	36 00 00             	add    %al,%ss:(%rax)
 119:	00 05 1e 01 88 00    	add    %al,0x88011e(%rip)        # 88023d <_end+0x27cc6d>
 11f:	00 00                	add    %al,(%rax)
 121:	40 08 91 00 00 00 05 	or     %dl,0x5000000(%rcx)
 128:	20 01                	and    %al,(%rcx)
 12a:	88 00                	mov    %al,(%rax)
 12c:	00 00                	add    %al,(%rax)
 12e:	48 08 e3             	rex.W or %spl,%bl
 131:	01 00                	add    %eax,(%rax)
 133:	00 05 21 01 88 00    	add    %al,0x880121(%rip)        # 88025a <_end+0x27cc8a>
 139:	00 00                	add    %al,(%rax)
 13b:	50                   	push   %rax
 13c:	08 d4                	or     %dl,%ah
 13e:	00 00                	add    %al,(%rax)
 140:	00 05 22 01 88 00    	add    %al,0x880122(%rip)        # 880268 <_end+0x27cc98>
 146:	00 00                	add    %al,(%rax)
 148:	58                   	pop    %rax
 149:	08 ec                	or     %ch,%ah
 14b:	00 00                	add    %al,(%rax)
 14d:	00 05 24 01 5f 02    	add    %al,0x25f0124(%rip)        # 25f0277 <_end+0x1fecca7>
 153:	00 00                	add    %al,(%rax)
 155:	60                   	(bad)  
 156:	08 8a 00 00 00 05    	or     %cl,0x5000000(%rdx)
 15c:	26 01 65 02          	add    %esp,%es:0x2(%rbp)
 160:	00 00                	add    %al,(%rax)
 162:	68 08 76 01 00       	pushq  $0x17608
 167:	00 05 28 01 62 00    	add    %al,0x620128(%rip)        # 620295 <_end+0x1ccc5>
 16d:	00 00                	add    %al,(%rax)
 16f:	70 08                	jo     179 <_init-0x4008cf>
 171:	ff 00                	incl   (%rax)
 173:	00 00                	add    %al,(%rax)
 175:	05 2c 01 62 00       	add    $0x62012c,%eax
 17a:	00 00                	add    %al,(%rax)
 17c:	74 08                	je     186 <_init-0x4008c2>
 17e:	0d 01 00 00 05       	or     $0x5000001,%eax
 183:	2e 01 70 00          	add    %esi,%cs:0x0(%rax)
 187:	00 00                	add    %al,(%rax)
 189:	78 08                	js     193 <_init-0x4008b5>
 18b:	2a 01                	sub    (%rcx),%al
 18d:	00 00                	add    %al,(%rax)
 18f:	05 32 01 46 00       	add    $0x460132,%eax
 194:	00 00                	add    %al,(%rax)
 196:	80 08 91             	orb    $0x91,(%rax)
 199:	01 00                	add    %eax,(%rax)
 19b:	00 05 33 01 54 00    	add    %al,0x540133(%rip)        # 5402d4 <__FRAME_END__+0x13e01c>
 1a1:	00 00                	add    %al,(%rax)
 1a3:	82                   	(bad)  
 1a4:	08 36                	or     %dh,(%rsi)
 1a6:	02 00                	add    (%rax),%al
 1a8:	00 05 34 01 6b 02    	add    %al,0x26b0134(%rip)        # 26b02e2 <_end+0x20acd12>
 1ae:	00 00                	add    %al,(%rax)
 1b0:	83 08 19             	orl    $0x19,(%rax)
 1b3:	01 00                	add    %eax,(%rax)
 1b5:	00 05 38 01 7b 02    	add    %al,0x27b0138(%rip)        # 27b02f3 <_end+0x21acd23>
 1bb:	00 00                	add    %al,(%rax)
 1bd:	88 08                	mov    %cl,(%rax)
 1bf:	11 01                	adc    %eax,(%rcx)
 1c1:	00 00                	add    %al,(%rax)
 1c3:	05 41 01 7b 00       	add    $0x7b0141,%eax
 1c8:	00 00                	add    %al,(%rax)
 1ca:	90                   	nop
 1cb:	08 ff                	or     %bh,%bh
 1cd:	01 00                	add    %eax,(%rax)
 1cf:	00 05 4a 01 86 00    	add    %al,0x86014a(%rip)        # 86031f <_end+0x25cd4f>
 1d5:	00 00                	add    %al,(%rax)
 1d7:	98                   	cwtl   
 1d8:	08 42 00             	or     %al,0x0(%rdx)
 1db:	00 00                	add    %al,(%rax)
 1dd:	05 4b 01 86 00       	add    $0x86014b,%eax
 1e2:	00 00                	add    %al,(%rax)
 1e4:	a0 08 49 00 00 00 05 	movabs 0x14c050000004908,%al
 1eb:	4c 01 
 1ed:	86 00                	xchg   %al,(%rax)
 1ef:	00 00                	add    %al,(%rax)
 1f1:	a8 08                	test   $0x8,%al
 1f3:	b4 00                	mov    $0x0,%ah
 1f5:	00 00                	add    %al,(%rax)
 1f7:	05 4d 01 86 00       	add    $0x86014d,%eax
 1fc:	00 00                	add    %al,(%rax)
 1fe:	b0 08                	mov    $0x8,%al
 200:	1a 02                	sbb    (%rdx),%al
 202:	00 00                	add    %al,(%rax)
 204:	05 4e 01 2d 00       	add    $0x2d014e,%eax
 209:	00 00                	add    %al,(%rax)
 20b:	b8 08 84 00 00       	mov    $0x8408,%eax
 210:	00 05 50 01 62 00    	add    %al,0x620150(%rip)        # 620366 <_end+0x1cd96>
 216:	00 00                	add    %al,(%rax)
 218:	c0 08 ad             	rorb   $0xad,(%rax)
 21b:	01 00                	add    %eax,(%rax)
 21d:	00 05 52 01 81 02    	add    %al,0x2810152(%rip)        # 2810375 <_end+0x220cda5>
 223:	00 00                	add    %al,(%rax)
 225:	c4                   	(bad)  
 226:	00 09                	add    %cl,(%rcx)
 228:	e1 00                	loope  22a <_init-0x40081e>
 22a:	00 00                	add    %al,(%rax)
 22c:	05 b6 0a 1f 01       	add    $0x11f0ab6,%eax
 231:	00 00                	add    %al,(%rax)
 233:	18 05 bc 5f 02 00    	sbb    %al,0x25fbc(%rip)        # 261f5 <_init-0x3da853>
 239:	00 0b                	add    %cl,(%rbx)
 23b:	8b 01                	mov    (%rcx),%eax
 23d:	00 00                	add    %al,(%rax)
 23f:	05 bd 5f 02 00       	add    $0x25fbd,%eax
 244:	00 00                	add    %al,(%rax)
 246:	0b 07                	or     (%rdi),%eax
 248:	01 00                	add    %eax,(%rax)
 24a:	00 05 be 65 02 00    	add    %al,0x265be(%rip)        # 2680e <_init-0x3da23a>
 250:	00 08                	add    %cl,(%rax)
 252:	0b f5                	or     %ebp,%esi
 254:	00 00                	add    %al,(%rax)
 256:	00 05 c2 62 00 00    	add    %al,0x62c2(%rip)        # 651e <_init-0x3fa52a>
 25c:	00 10                	add    %dl,(%rax)
 25e:	00 06                	add    %al,(%rsi)
 260:	08 2e                	or     %ch,(%rsi)
 262:	02 00                	add    (%rax),%al
 264:	00 06                	add    %al,(%rsi)
 266:	08 a0 00 00 00 0c    	or     %ah,0xc000000(%rax)
 26c:	8e 00                	mov    (%rax),%es
 26e:	00 00                	add    %al,(%rax)
 270:	7b 02                	jnp    274 <_init-0x4007d4>
 272:	00 00                	add    %al,(%rax)
 274:	0d 38 00 00 00       	or     $0x38,%eax
 279:	00 00                	add    %al,(%rax)
 27b:	06                   	(bad)  
 27c:	08 27                	or     %ah,(%rdi)
 27e:	02 00                	add    (%rax),%al
 280:	00 0c 8e             	add    %cl,(%rsi,%rcx,4)
 283:	00 00                	add    %al,(%rax)
 285:	00 91 02 00 00 0d    	add    %dl,0xd000002(%rcx)
 28b:	38 00                	cmp    %al,(%rax)
 28d:	00 00                	add    %al,(%rax)
 28f:	13 00                	adc    (%rax),%eax
 291:	03 08                	add    (%rax),%ecx
 293:	05 b6 01 00 00       	add    $0x1b6,%eax
 298:	03 08                	add    (%rax),%ecx
 29a:	07                   	(bad)  
 29b:	36 01 00             	add    %eax,%ss:(%rax)
 29e:	00 0e                	add    %cl,(%rsi)
 2a0:	01 fa                	add    %edi,%edx
 2a2:	00 00                	add    %al,(%rax)
 2a4:	00 01                	add    %al,(%rcx)
 2a6:	24 01                	and    $0x1,%al
 2a8:	62                   	(bad)  
 2a9:	00 00                	add    %al,(%rax)
 2ab:	00 24 0d 40 00 00 00 	add    %ah,0x40(,%rcx,1)
 2b2:	00 00                	add    %al,(%rax)
 2b4:	65                   	gs
 2b5:	0e                   	(bad)  
 2b6:	40 00 00             	add    %al,(%rax)
 2b9:	00 00                	add    %al,(%rax)
 2bb:	00 01                	add    %al,(%rcx)
 2bd:	9c                   	pushfq 
 2be:	f0 02 00             	lock add (%rax),%al
 2c1:	00 0f                	add    %cl,(%rdi)
 2c3:	a0 01 00 00 01 24 62 	movabs 0x622401000001,%al
 2ca:	00 00 
 2cc:	00 00                	add    %al,(%rax)
 2ce:	00 00                	add    %al,(%rax)
 2d0:	00 0f                	add    %cl,(%rdi)
 2d2:	fa                   	cli    
 2d3:	01 00                	add    %eax,(%rax)
 2d5:	00 01                	add    %al,(%rcx)
 2d7:	24 f0                	and    $0xf0,%al
 2d9:	02 00                	add    (%rax),%al
 2db:	00 36                	add    %dh,(%rsi)
 2dd:	00 00                	add    %al,(%rax)
 2df:	00 10                	add    %dl,(%rax)
 2e1:	14 02                	adc    $0x2,%al
 2e3:	00 00                	add    %al,(%rax)
 2e5:	01 26                	add    %esp,(%rsi)
 2e7:	88 00                	mov    %al,(%rax)
 2e9:	00 00                	add    %al,(%rax)
 2eb:	6c                   	insb   (%dx),%es:(%rdi)
 2ec:	00 00                	add    %al,(%rax)
 2ee:	00 00                	add    %al,(%rax)
 2f0:	06                   	(bad)  
 2f1:	08 88 00 00 00 11    	or     %cl,0x11000000(%rax)
 2f7:	ce                   	(bad)  
 2f8:	00 00                	add    %al,(%rax)
 2fa:	00 04 a5 65 02 00 00 	add    %al,0x265(,%riz,4)
 301:	01 01                	add    %eax,(%rcx)
 303:	11 c4                	adc    %eax,%esp
 305:	01 00                	add    %eax,(%rax)
 307:	00 04 a6             	add    %al,(%rsi,%riz,4)
 30a:	65 02 00             	add    %gs:(%rax),%al
 30d:	00 01                	add    %al,(%rcx)
 30f:	01 12                	add    %edx,(%rdx)
 311:	2f                   	(bad)  
 312:	02 00                	add    (%rax),%al
 314:	00 01                	add    %al,(%rcx)
 316:	22 26                	and    (%rsi),%ah
 318:	03 00                	add    (%rax),%eax
 31a:	00 01                	add    %al,(%rcx)
 31c:	09 03                	or     %eax,(%rbx)
 31e:	20 2f                	and    %ch,(%rdi)
 320:	60                   	(bad)  
 321:	00 00                	add    %al,(%rax)
 323:	00 00                	add    %al,(%rax)
 325:	00 06                	add    %al,(%rsi)
 327:	08 95 00 00 00 00    	or     %dl,0x0(%rbp)

Disassembly of section .debug_abbrev:

0000000000000000 <.debug_abbrev>:
   0:	01 11                	add    %edx,(%rcx)
   2:	01 25 0e 13 0b 03    	add    %esp,0x30b130e(%rip)        # 30b1316 <_end+0x2aadd46>
   8:	0e                   	(bad)  
   9:	1b 0e                	sbb    (%rsi),%ecx
   b:	11 01                	adc    %eax,(%rcx)
   d:	12 01                	adc    (%rcx),%al
   f:	10 06                	adc    %al,(%rsi)
  11:	00 00                	add    %al,(%rax)
  13:	02 16                	add    (%rsi),%dl
  15:	00 03                	add    %al,(%rbx)
  17:	0e                   	(bad)  
  18:	3a 0b                	cmp    (%rbx),%cl
  1a:	3b 0b                	cmp    (%rbx),%ecx
  1c:	49 13 00             	adc    (%r8),%rax
  1f:	00 03                	add    %al,(%rbx)
  21:	24 00                	and    $0x0,%al
  23:	0b 0b                	or     (%rbx),%ecx
  25:	3e 0b 03             	or     %ds:(%rbx),%eax
  28:	0e                   	(bad)  
  29:	00 00                	add    %al,(%rax)
  2b:	04 24                	add    $0x24,%al
  2d:	00 0b                	add    %cl,(%rbx)
  2f:	0b 3e                	or     (%rsi),%edi
  31:	0b 03                	or     (%rbx),%eax
  33:	08 00                	or     %al,(%rax)
  35:	00 05 0f 00 0b 0b    	add    %al,0xb0b000f(%rip)        # b0b004a <_end+0xaaaca7a>
  3b:	00 00                	add    %al,(%rax)
  3d:	06                   	(bad)  
  3e:	0f 00 0b             	str    (%rbx)
  41:	0b 49 13             	or     0x13(%rcx),%ecx
  44:	00 00                	add    %al,(%rax)
  46:	07                   	(bad)  
  47:	13 01                	adc    (%rcx),%eax
  49:	03 0e                	add    (%rsi),%ecx
  4b:	0b 0b                	or     (%rbx),%ecx
  4d:	3a 0b                	cmp    (%rbx),%cl
  4f:	3b 05 01 13 00 00    	cmp    0x1301(%rip),%eax        # 1356 <_init-0x3ff6f2>
  55:	08 0d 00 03 0e 3a    	or     %cl,0x3a0e0300(%rip)        # 3a0e035b <_end+0x39adcd8b>
  5b:	0b 3b                	or     (%rbx),%edi
  5d:	05 49 13 38 0b       	add    $0xb381349,%eax
  62:	00 00                	add    %al,(%rax)
  64:	09 16                	or     %edx,(%rsi)
  66:	00 03                	add    %al,(%rbx)
  68:	0e                   	(bad)  
  69:	3a 0b                	cmp    (%rbx),%cl
  6b:	3b 0b                	cmp    (%rbx),%ecx
  6d:	00 00                	add    %al,(%rax)
  6f:	0a 13                	or     (%rbx),%dl
  71:	01 03                	add    %eax,(%rbx)
  73:	0e                   	(bad)  
  74:	0b 0b                	or     (%rbx),%ecx
  76:	3a 0b                	cmp    (%rbx),%cl
  78:	3b 0b                	cmp    (%rbx),%ecx
  7a:	01 13                	add    %edx,(%rbx)
  7c:	00 00                	add    %al,(%rax)
  7e:	0b 0d 00 03 0e 3a    	or     0x3a0e0300(%rip),%ecx        # 3a0e0384 <_end+0x39adcdb4>
  84:	0b 3b                	or     (%rbx),%edi
  86:	0b 49 13             	or     0x13(%rcx),%ecx
  89:	38 0b                	cmp    %cl,(%rbx)
  8b:	00 00                	add    %al,(%rax)
  8d:	0c 01                	or     $0x1,%al
  8f:	01 49 13             	add    %ecx,0x13(%rcx)
  92:	01 13                	add    %edx,(%rbx)
  94:	00 00                	add    %al,(%rax)
  96:	0d 21 00 49 13       	or     $0x13490021,%eax
  9b:	2f                   	(bad)  
  9c:	0b 00                	or     (%rax),%eax
  9e:	00 0e                	add    %cl,(%rsi)
  a0:	2e 01 3f             	add    %edi,%cs:(%rdi)
  a3:	0c 03                	or     $0x3,%al
  a5:	0e                   	(bad)  
  a6:	3a 0b                	cmp    (%rbx),%cl
  a8:	3b 0b                	cmp    (%rbx),%ecx
  aa:	27                   	(bad)  
  ab:	0c 49                	or     $0x49,%al
  ad:	13 11                	adc    (%rcx),%edx
  af:	01 12                	add    %edx,(%rdx)
  b1:	01 40 0a             	add    %eax,0xa(%rax)
  b4:	01 13                	add    %edx,(%rbx)
  b6:	00 00                	add    %al,(%rax)
  b8:	0f 05                	syscall 
  ba:	00 03                	add    %al,(%rbx)
  bc:	0e                   	(bad)  
  bd:	3a 0b                	cmp    (%rbx),%cl
  bf:	3b 0b                	cmp    (%rbx),%ecx
  c1:	49 13 02             	adc    (%r10),%rax
  c4:	06                   	(bad)  
  c5:	00 00                	add    %al,(%rax)
  c7:	10 34 00             	adc    %dh,(%rax,%rax,1)
  ca:	03 0e                	add    (%rsi),%ecx
  cc:	3a 0b                	cmp    (%rbx),%cl
  ce:	3b 0b                	cmp    (%rbx),%ecx
  d0:	49 13 02             	adc    (%r10),%rax
  d3:	06                   	(bad)  
  d4:	00 00                	add    %al,(%rax)
  d6:	11 34 00             	adc    %esi,(%rax,%rax,1)
  d9:	03 0e                	add    (%rsi),%ecx
  db:	3a 0b                	cmp    (%rbx),%cl
  dd:	3b 0b                	cmp    (%rbx),%ecx
  df:	49 13 3f             	adc    (%r15),%rdi
  e2:	0c 3c                	or     $0x3c,%al
  e4:	0c 00                	or     $0x0,%al
  e6:	00 12                	add    %dl,(%rdx)
  e8:	34 00                	xor    $0x0,%al
  ea:	03 0e                	add    (%rsi),%ecx
  ec:	3a 0b                	cmp    (%rbx),%cl
  ee:	3b 0b                	cmp    (%rbx),%ecx
  f0:	49 13 3f             	adc    (%r15),%rdi
  f3:	0c 02                	or     $0x2,%al
  f5:	0a 00                	or     (%rax),%al
	...

Disassembly of section .debug_line:

0000000000000000 <.debug_line>:
   0:	d9 00                	flds   (%rax)
   2:	00 00                	add    %al,(%rax)
   4:	02 00                	add    (%rax),%al
   6:	98                   	cwtl   
   7:	00 00                	add    %al,(%rax)
   9:	00 01                	add    %al,(%rcx)
   b:	01 fb                	add    %edi,%ebx
   d:	0e                   	(bad)  
   e:	0d 00 01 01 01       	or     $0x1010100,%eax
  13:	01 00                	add    %eax,(%rax)
  15:	00 00                	add    %al,(%rax)
  17:	01 00                	add    %eax,(%rax)
  19:	00 01                	add    %al,(%rcx)
  1b:	2f                   	(bad)  
  1c:	75 73                	jne    91 <_init-0x4009b7>
  1e:	72 2f                	jb     4f <_init-0x4009f9>
  20:	6c                   	insb   (%dx),%es:(%rdi)
  21:	69 62 2f 67 63 63 2f 	imul   $0x2f636367,0x2f(%rdx),%esp
  28:	78 38                	js     62 <_init-0x4009e6>
  2a:	36                   	ss
  2b:	5f                   	pop    %rdi
  2c:	36                   	ss
  2d:	34 2d                	xor    $0x2d,%al
  2f:	72 65                	jb     96 <_init-0x4009b2>
  31:	64                   	fs
  32:	68 61 74 2d 6c       	pushq  $0x6c2d7461
  37:	69 6e 75 78 2f 34 2e 	imul   $0x2e342f78,0x75(%rsi),%ebp
  3e:	36 2e 33 2f          	ss xor %cs:%ss:(%rdi),%ebp
  42:	69 6e 63 6c 75 64 65 	imul   $0x6564756c,0x63(%rsi),%ebp
  49:	00 2f                	add    %ch,(%rdi)
  4b:	75 73                	jne    c0 <_init-0x400988>
  4d:	72 2f                	jb     7e <_init-0x4009ca>
  4f:	69 6e 63 6c 75 64 65 	imul   $0x6564756c,0x63(%rsi),%ebp
  56:	2f                   	(bad)  
  57:	62                   	(bad)  
  58:	69 74 73 00 2f 75 73 	imul   $0x7273752f,0x0(%rbx,%rsi,2),%esi
  5f:	72 
  60:	2f                   	(bad)  
  61:	69 6e 63 6c 75 64 65 	imul   $0x6564756c,0x63(%rsi),%ebp
  68:	00 00                	add    %al,(%rax)
  6a:	62                   	(bad)  
  6b:	6f                   	outsl  %ds:(%rsi),(%dx)
  6c:	6d                   	insl   (%dx),%es:(%rdi)
  6d:	62                   	(bad)  
  6e:	2e 63 00             	movslq %cs:(%rax),%eax
  71:	00 00                	add    %al,(%rax)
  73:	00 73 74             	add    %dh,0x74(%rbx)
  76:	64                   	fs
  77:	64                   	fs
  78:	65                   	gs
  79:	66                   	data16
  7a:	2e                   	cs
  7b:	68 00 01 00 00       	pushq  $0x100
  80:	74 79                	je     fb <_init-0x40094d>
  82:	70 65                	jo     e9 <_init-0x40095f>
  84:	73 2e                	jae    b4 <_init-0x400994>
  86:	68 00 02 00 00       	pushq  $0x200
  8b:	73 74                	jae    101 <_init-0x400947>
  8d:	64 69 6f 2e 68 00 03 	imul   $0x30068,%fs:0x2e(%rdi),%ebp
  94:	00 
  95:	00 6c 69 62          	add    %ch,0x62(%rcx,%rbp,2)
  99:	69 6f 2e 68 00 03 00 	imul   $0x30068,0x2e(%rdi),%ebp
  a0:	00 00                	add    %al,(%rax)
  a2:	00 09                	add    %cl,(%rcx)
  a4:	02 24 0d 40 00 00 00 	add    0x40(,%rcx,1),%ah
  ab:	00 00                	add    %al,(%rax)
  ad:	03 24 01             	add    (%rcx,%rax,1),%esp
  b0:	52                   	push   %rdx
  b1:	59                   	pop    %rcx
  b2:	f9                   	stc    
  b3:	59                   	pop    %rcx
  b4:	08 91 08 13 a4 08    	or     %dl,0x8a41308(%rcx)
  ba:	21 a2 5a 9f a1 59    	and    %esp,0x59a19f5a(%rdx)
  c0:	83 5a a2 59          	sbbl   $0x59,-0x5e(%rdx)
  c4:	83 59 a2 59          	sbbl   $0x59,-0x5e(%rcx)
  c8:	83 59 a1 59          	sbbl   $0x59,-0x5f(%rcx)
  cc:	83 59 a1 59          	sbbl   $0x59,-0x5f(%rcx)
  d0:	83 59 9f 9f          	sbbl   $0xffffff9f,-0x61(%rcx)
  d4:	a1 59 83 5e 02 07 00 	movabs 0x1010007025e8359,%eax
  db:	01 01 

Disassembly of section .debug_str:

0000000000000000 <.debug_str>:
   0:	5f                   	pop    %rdi
   1:	5f                   	pop    %rdi
   2:	6f                   	outsl  %ds:(%rsi),(%dx)
   3:	66                   	data16
   4:	66                   	data16
   5:	36                   	ss
   6:	34 5f                	xor    $0x5f,%al
   8:	74 00                	je     a <_init-0x400a3e>
   a:	5f                   	pop    %rdi
   b:	49                   	rex.WB
   c:	4f 5f                	rex.WRXB pop %r15
   e:	72 65                	jb     75 <_init-0x4009d3>
  10:	61                   	(bad)  
  11:	64                   	fs
  12:	5f                   	pop    %rdi
  13:	65 6e                	outsb  %gs:(%rsi),(%dx)
  15:	64 00 73 69          	add    %dh,%fs:0x69(%rbx)
  19:	7a 65                	jp     80 <_init-0x4009c8>
  1b:	5f                   	pop    %rdi
  1c:	74 00                	je     1e <_init-0x400a2a>
  1e:	5f                   	pop    %rdi
  1f:	49                   	rex.WB
  20:	4f 5f                	rex.WRXB pop %r15
  22:	46                   	rex.RX
  23:	49                   	rex.WB
  24:	4c                   	rex.WR
  25:	45 00 5f 49          	add    %r11b,0x49(%r15)
  29:	4f 5f                	rex.WRXB pop %r15
  2b:	77 72                	ja     9f <_init-0x4009a9>
  2d:	69 74 65 5f 62 61 73 	imul   $0x65736162,0x5f(%rbp,%riz,2),%esi
  34:	65 
  35:	00 5f 49             	add    %bl,0x49(%rdi)
  38:	4f 5f                	rex.WRXB pop %r15
  3a:	62                   	(bad)  
  3b:	75 66                	jne    a3 <_init-0x4009a5>
  3d:	5f                   	pop    %rdi
  3e:	65 6e                	outsb  %gs:(%rsi),(%dx)
  40:	64 00 5f 5f          	add    %bl,%fs:0x5f(%rdi)
  44:	70 61                	jo     a7 <_init-0x4009a1>
  46:	64 32 00             	xor    %fs:(%rax),%al
  49:	5f                   	pop    %rdi
  4a:	5f                   	pop    %rdi
  4b:	70 61                	jo     ae <_init-0x40099a>
  4d:	64 33 00             	xor    %fs:(%rax),%eax
  50:	5f                   	pop    %rdi
  51:	49                   	rex.WB
  52:	4f 5f                	rex.WRXB pop %r15
  54:	72 65                	jb     bb <_init-0x40098d>
  56:	61                   	(bad)  
  57:	64                   	fs
  58:	5f                   	pop    %rdi
  59:	70 74                	jo     cf <_init-0x400979>
  5b:	72 00                	jb     5d <_init-0x4009eb>
  5d:	47                   	rex.RXB
  5e:	4e 55                	rex.WRX push %rbp
  60:	20 43 20             	and    %al,0x20(%rbx)
  63:	34 2e                	xor    $0x2e,%al
  65:	36 2e 33 20          	ss xor %cs:%ss:(%rax),%esp
  69:	32 30                	xor    (%rax),%dh
  6b:	31 32                	xor    %esi,(%rdx)
  6d:	30 33                	xor    %dh,(%rbx)
  6f:	30 36                	xor    %dh,(%rsi)
  71:	20 28                	and    %ch,(%rax)
  73:	52                   	push   %rdx
  74:	65 64 20 48 61       	gs and %cl,%fs:%gs:0x61(%rax)
  79:	74 20                	je     9b <_init-0x4009ad>
  7b:	34 2e                	xor    $0x2e,%al
  7d:	36 2e 33 2d 32 29 00 	ss xor %cs:%ss:0x5f002932(%rip),%ebp        # 5f0029b7 <_end+0x5e9ff3e7>
  84:	5f 
  85:	6d                   	insl   (%dx),%es:(%rdi)
  86:	6f                   	outsl  %ds:(%rsi),(%dx)
  87:	64 65 00 5f 63       	fs add %bl,%fs:%gs:0x63(%rdi)
  8c:	68 61 69 6e 00       	pushq  $0x6e6961
  91:	5f                   	pop    %rdi
  92:	49                   	rex.WB
  93:	4f 5f                	rex.WRXB pop %r15
  95:	73 61                	jae    f8 <_init-0x400950>
  97:	76 65                	jbe    fe <_init-0x40094a>
  99:	5f                   	pop    %rdi
  9a:	62                   	(bad)  
  9b:	61                   	(bad)  
  9c:	73 65                	jae    103 <_init-0x400945>
  9e:	00 75 6e             	add    %dh,0x6e(%rbp)
  a1:	73 69                	jae    10c <_init-0x40093c>
  a3:	67 6e                	outsb  %ds:(%esi),(%dx)
  a5:	65 64 20 63 68       	gs and %ah,%fs:%gs:0x68(%rbx)
  aa:	61                   	(bad)  
  ab:	72 00                	jb     ad <_init-0x40099b>
  ad:	62                   	(bad)  
  ae:	6f                   	outsl  %ds:(%rsi),(%dx)
  af:	6d                   	insl   (%dx),%es:(%rdi)
  b0:	62                   	(bad)  
  b1:	2e 63 00             	movslq %cs:(%rax),%eax
  b4:	5f                   	pop    %rdi
  b5:	5f                   	pop    %rdi
  b6:	70 61                	jo     119 <_init-0x40092f>
  b8:	64                   	fs
  b9:	34 00                	xor    $0x0,%al
  bb:	73 68                	jae    125 <_init-0x400923>
  bd:	6f                   	outsl  %ds:(%rsi),(%dx)
  be:	72 74                	jb     134 <_init-0x400914>
  c0:	20 75 6e             	and    %dh,0x6e(%rbp)
  c3:	73 69                	jae    12e <_init-0x40091a>
  c5:	67 6e                	outsb  %ds:(%esi),(%dx)
  c7:	65 64 20 69 6e       	gs and %ch,%fs:%gs:0x6e(%rcx)
  cc:	74 00                	je     ce <_init-0x40097a>
  ce:	73 74                	jae    144 <_init-0x400904>
  d0:	64 69 6e 00 5f 49 4f 	imul   $0x5f4f495f,%fs:0x0(%rsi),%ebp
  d7:	5f 
  d8:	73 61                	jae    13b <_init-0x40090d>
  da:	76 65                	jbe    141 <_init-0x400907>
  dc:	5f                   	pop    %rdi
  dd:	65 6e                	outsb  %gs:(%rsi),(%dx)
  df:	64 00 5f 49          	add    %bl,%fs:0x49(%rdi)
  e3:	4f 5f                	rex.WRXB pop %r15
  e5:	6c                   	insb   (%dx),%es:(%rdi)
  e6:	6f                   	outsl  %ds:(%rsi),(%dx)
  e7:	63 6b 5f             	movslq 0x5f(%rbx),%ebp
  ea:	74 00                	je     ec <_init-0x40095c>
  ec:	5f                   	pop    %rdi
  ed:	6d                   	insl   (%dx),%es:(%rdi)
  ee:	61                   	(bad)  
  ef:	72 6b                	jb     15c <_init-0x4008ec>
  f1:	65                   	gs
  f2:	72 73                	jb     167 <_init-0x4008e1>
  f4:	00 5f 70             	add    %bl,0x70(%rdi)
  f7:	6f                   	outsl  %ds:(%rsi),(%dx)
  f8:	73 00                	jae    fa <_init-0x40094e>
  fa:	6d                   	insl   (%dx),%es:(%rdi)
  fb:	61                   	(bad)  
  fc:	69 6e 00 5f 66 6c 61 	imul   $0x616c665f,0x0(%rsi),%ebp
 103:	67 73 32             	addr32 jae 138 <_init-0x400910>
 106:	00 5f 73             	add    %bl,0x73(%rdi)
 109:	62                   	(bad)  
 10a:	75 66                	jne    172 <_init-0x4008d6>
 10c:	00 5f 6f             	add    %bl,0x6f(%rdi)
 10f:	6c                   	insb   (%dx),%es:(%rdi)
 110:	64                   	fs
 111:	5f                   	pop    %rdi
 112:	6f                   	outsl  %ds:(%rsi),(%dx)
 113:	66                   	data16
 114:	66                   	data16
 115:	73 65                	jae    17c <_init-0x4008cc>
 117:	74 00                	je     119 <_init-0x40092f>
 119:	5f                   	pop    %rdi
 11a:	6c                   	insb   (%dx),%es:(%rdi)
 11b:	6f                   	outsl  %ds:(%rsi),(%dx)
 11c:	63 6b 00             	movslq 0x0(%rbx),%ebp
 11f:	5f                   	pop    %rdi
 120:	49                   	rex.WB
 121:	4f 5f                	rex.WRXB pop %r15
 123:	6d                   	insl   (%dx),%es:(%rdi)
 124:	61                   	(bad)  
 125:	72 6b                	jb     192 <_init-0x4008b6>
 127:	65                   	gs
 128:	72 00                	jb     12a <_init-0x40091e>
 12a:	5f                   	pop    %rdi
 12b:	63 75 72             	movslq 0x72(%rbp),%esi
 12e:	5f                   	pop    %rdi
 12f:	63 6f 6c             	movslq 0x6c(%rdi),%ebp
 132:	75 6d                	jne    1a1 <_init-0x4008a7>
 134:	6e                   	outsb  %ds:(%rsi),(%dx)
 135:	00 6c 6f 6e          	add    %ch,0x6e(%rdi,%rbp,2)
 139:	67 20 6c 6f 6e       	and    %ch,0x6e(%edi,%ebp,2)
 13e:	67 20 75 6e          	and    %dh,0x6e(%ebp)
 142:	73 69                	jae    1ad <_init-0x40089b>
 144:	67 6e                	outsb  %ds:(%esi),(%dx)
 146:	65 64 20 69 6e       	gs and %ch,%fs:%gs:0x6e(%rcx)
 14b:	74 00                	je     14d <_init-0x4008fb>
 14d:	2f                   	(bad)  
 14e:	73 74                	jae    1c4 <_init-0x400884>
 150:	6f                   	outsl  %ds:(%rsi),(%dx)
 151:	72 2f                	jb     182 <_init-0x4008c6>
 153:	44 72 6f             	rex.R jb 1c5 <_init-0x400883>
 156:	70 62                	jo     1ba <_init-0x40088e>
 158:	6f                   	outsl  %ds:(%rsi),(%dx)
 159:	78 2f                	js     18a <_init-0x4008be>
 15b:	33 35 31 77 65 62    	xor    0x62657731(%rip),%esi        # 62657892 <_end+0x620542c2>
 161:	73 69                	jae    1cc <_init-0x40087c>
 163:	74 65                	je     1ca <_init-0x40087e>
 165:	2f                   	(bad)  
 166:	6c                   	insb   (%dx),%es:(%rdi)
 167:	61                   	(bad)  
 168:	62                   	(bad)  
 169:	32 20                	xor    (%rax),%ah
 16b:	2d 20 43 6f 70       	sub    $0x706f4320,%eax
 170:	79 2f                	jns    1a1 <_init-0x4008a7>
 172:	73 72                	jae    1e6 <_init-0x400862>
 174:	63 00                	movslq (%rax),%eax
 176:	5f                   	pop    %rdi
 177:	66 69 6c 65 6e 6f 00 	imul   $0x6f,0x6e(%rbp,%riz,2),%bp
 17e:	5f                   	pop    %rdi
 17f:	49                   	rex.WB
 180:	4f 5f                	rex.WRXB pop %r15
 182:	62                   	(bad)  
 183:	75 66                	jne    1eb <_init-0x40085d>
 185:	5f                   	pop    %rdi
 186:	62                   	(bad)  
 187:	61                   	(bad)  
 188:	73 65                	jae    1ef <_init-0x400859>
 18a:	00 5f 6e             	add    %bl,0x6e(%rdi)
 18d:	65                   	gs
 18e:	78 74                	js     204 <_init-0x400844>
 190:	00 5f 76             	add    %bl,0x76(%rdi)
 193:	74 61                	je     1f6 <_init-0x400852>
 195:	62                   	(bad)  
 196:	6c                   	insb   (%dx),%es:(%rdi)
 197:	65                   	gs
 198:	5f                   	pop    %rdi
 199:	6f                   	outsl  %ds:(%rsi),(%dx)
 19a:	66                   	data16
 19b:	66                   	data16
 19c:	73 65                	jae    203 <_init-0x400845>
 19e:	74 00                	je     1a0 <_init-0x4008a8>
 1a0:	61                   	(bad)  
 1a1:	72 67                	jb     20a <_init-0x40083e>
 1a3:	63 00                	movslq (%rax),%eax
 1a5:	5f                   	pop    %rdi
 1a6:	5f                   	pop    %rdi
 1a7:	6f                   	outsl  %ds:(%rsi),(%dx)
 1a8:	66 66 5f             	data32 pop %di
 1ab:	74 00                	je     1ad <_init-0x40089b>
 1ad:	5f                   	pop    %rdi
 1ae:	75 6e                	jne    21e <_init-0x40082a>
 1b0:	75 73                	jne    225 <_init-0x400823>
 1b2:	65 64 32 00          	gs xor %fs:%gs:(%rax),%al
 1b6:	6c                   	insb   (%dx),%es:(%rdi)
 1b7:	6f                   	outsl  %ds:(%rsi),(%dx)
 1b8:	6e                   	outsb  %ds:(%rsi),(%dx)
 1b9:	67 20 6c 6f 6e       	and    %ch,0x6e(%edi,%ebp,2)
 1be:	67 20 69 6e          	and    %ch,0x6e(%ecx)
 1c2:	74 00                	je     1c4 <_init-0x400884>
 1c4:	73 74                	jae    23a <_init-0x40080e>
 1c6:	64 6f                	outsl  %fs:(%rsi),(%dx)
 1c8:	75 74                	jne    23e <_init-0x40080a>
 1ca:	00 5f 49             	add    %bl,0x49(%rdi)
 1cd:	4f 5f                	rex.WRXB pop %r15
 1cf:	77 72                	ja     243 <_init-0x400805>
 1d1:	69 74 65 5f 65 6e 64 	imul   $0x646e65,0x5f(%rbp,%riz,2),%esi
 1d8:	00 
 1d9:	73 68                	jae    243 <_init-0x400805>
 1db:	6f                   	outsl  %ds:(%rsi),(%dx)
 1dc:	72 74                	jb     252 <_init-0x4007f6>
 1de:	20 69 6e             	and    %ch,0x6e(%rcx)
 1e1:	74 00                	je     1e3 <_init-0x400865>
 1e3:	5f                   	pop    %rdi
 1e4:	49                   	rex.WB
 1e5:	4f 5f                	rex.WRXB pop %r15
 1e7:	62                   	(bad)  
 1e8:	61                   	(bad)  
 1e9:	63 6b 75             	movslq 0x75(%rbx),%ebp
 1ec:	70 5f                	jo     24d <_init-0x4007fb>
 1ee:	62                   	(bad)  
 1ef:	61                   	(bad)  
 1f0:	73 65                	jae    257 <_init-0x4007f1>
 1f2:	00 5f 66             	add    %bl,0x66(%rdi)
 1f5:	6c                   	insb   (%dx),%es:(%rdi)
 1f6:	61                   	(bad)  
 1f7:	67 73 00             	addr32 jae 1fa <_init-0x40084e>
 1fa:	61                   	(bad)  
 1fb:	72 67                	jb     264 <_init-0x4007e4>
 1fd:	76 00                	jbe    1ff <_init-0x400849>
 1ff:	5f                   	pop    %rdi
 200:	5f                   	pop    %rdi
 201:	70 61                	jo     264 <_init-0x4007e4>
 203:	64 31 00             	xor    %eax,%fs:(%rax)
 206:	5f                   	pop    %rdi
 207:	49                   	rex.WB
 208:	4f 5f                	rex.WRXB pop %r15
 20a:	77 72                	ja     27e <_init-0x4007ca>
 20c:	69 74 65 5f 70 74 72 	imul   $0x727470,0x5f(%rbp,%riz,2),%esi
 213:	00 
 214:	69 6e 70 75 74 00 5f 	imul   $0x5f007475,0x70(%rsi),%ebp
 21b:	5f                   	pop    %rdi
 21c:	70 61                	jo     27f <_init-0x4007c9>
 21e:	64                   	fs
 21f:	35 00 5f 49 4f       	xor    $0x4f495f00,%eax
 224:	5f                   	pop    %rdi
 225:	72 65                	jb     28c <_init-0x4007bc>
 227:	61                   	(bad)  
 228:	64                   	fs
 229:	5f                   	pop    %rdi
 22a:	62                   	(bad)  
 22b:	61                   	(bad)  
 22c:	73 65                	jae    293 <_init-0x4007b5>
 22e:	00 69 6e             	add    %ch,0x6e(%rcx)
 231:	66 69 6c 65 00 5f 73 	imul   $0x735f,0x0(%rbp,%riz,2),%bp
 238:	68 6f 72 74 62       	pushq  $0x6274726f
 23d:	75 66                	jne    2a5 <_init-0x4007a3>
	...

Disassembly of section .debug_loc:

0000000000000000 <.debug_loc>:
	...
   8:	22 00                	and    (%rax),%al
   a:	00 00                	add    %al,(%rax)
   c:	00 00                	add    %al,(%rax)
   e:	00 00                	add    %al,(%rax)
  10:	01 00                	add    %eax,(%rax)
  12:	55                   	push   %rbp
  13:	53                   	push   %rbx
  14:	00 00                	add    %al,(%rax)
  16:	00 00                	add    %al,(%rax)
  18:	00 00                	add    %al,(%rax)
  1a:	00 5b 00             	add    %bl,0x0(%rbx)
  1d:	00 00                	add    %al,(%rax)
  1f:	00 00                	add    %al,(%rax)
  21:	00 00                	add    %al,(%rax)
  23:	01 00                	add    %eax,(%rax)
  25:	55                   	push   %rbp
	...
  3e:	27                   	(bad)  
  3f:	00 00                	add    %al,(%rax)
  41:	00 00                	add    %al,(%rax)
  43:	00 00                	add    %al,(%rax)
  45:	00 01                	add    %al,(%rcx)
  47:	00 54 27 00          	add    %dl,0x0(%rdi,%riz,1)
  4b:	00 00                	add    %al,(%rax)
  4d:	00 00                	add    %al,(%rax)
  4f:	00 00                	add    %al,(%rax)
  51:	40 01 00             	rex add %eax,(%rax)
  54:	00 00                	add    %al,(%rax)
  56:	00 00                	add    %al,(%rax)
  58:	00 01                	add    %al,(%rcx)
  5a:	00 53 00             	add    %dl,0x0(%rbx)
	...
  69:	00 00                	add    %al,(%rax)
  6b:	00 8d 00 00 00 00    	add    %cl,0x0(%rbp)
  71:	00 00                	add    %al,(%rax)
  73:	00 94 00 00 00 00 00 	add    %dl,0x0(%rax,%rax,1)
  7a:	00 00                	add    %al,(%rax)
  7c:	01 00                	add    %eax,(%rax)
  7e:	50                   	push   %rax
  7f:	a9 00 00 00 00       	test   $0x0,%eax
  84:	00 00                	add    %al,(%rax)
  86:	00 b0 00 00 00 00    	add    %dh,0x0(%rax)
  8c:	00 00                	add    %al,(%rax)
  8e:	00 01                	add    %al,(%rcx)
  90:	00 50 c5             	add    %dl,-0x3b(%rax)
  93:	00 00                	add    %al,(%rax)
  95:	00 00                	add    %al,(%rax)
  97:	00 00                	add    %al,(%rax)
  99:	00 cc                	add    %cl,%ah
  9b:	00 00                	add    %al,(%rax)
  9d:	00 00                	add    %al,(%rax)
  9f:	00 00                	add    %al,(%rax)
  a1:	00 01                	add    %al,(%rcx)
  a3:	00 50 e1             	add    %dl,-0x1f(%rax)
  a6:	00 00                	add    %al,(%rax)
  a8:	00 00                	add    %al,(%rax)
  aa:	00 00                	add    %al,(%rax)
  ac:	00 e8                	add    %ch,%al
  ae:	00 00                	add    %al,(%rax)
  b0:	00 00                	add    %al,(%rax)
  b2:	00 00                	add    %al,(%rax)
  b4:	00 01                	add    %al,(%rcx)
  b6:	00 50 fd             	add    %dl,-0x3(%rax)
  b9:	00 00                	add    %al,(%rax)
  bb:	00 00                	add    %al,(%rax)
  bd:	00 00                	add    %al,(%rax)
  bf:	00 04 01             	add    %al,(%rcx,%rax,1)
  c2:	00 00                	add    %al,(%rax)
  c4:	00 00                	add    %al,(%rax)
  c6:	00 00                	add    %al,(%rax)
  c8:	01 00                	add    %eax,(%rax)
  ca:	50                   	push   %rax
  cb:	2d 01 00 00 00       	sub    $0x1,%eax
  d0:	00 00                	add    %al,(%rax)
  d2:	00 34 01             	add    %dh,(%rcx,%rax,1)
  d5:	00 00                	add    %al,(%rax)
  d7:	00 00                	add    %al,(%rax)
  d9:	00 00                	add    %al,(%rax)
  db:	01 00                	add    %eax,(%rax)
  dd:	50                   	push   %rax
	...
