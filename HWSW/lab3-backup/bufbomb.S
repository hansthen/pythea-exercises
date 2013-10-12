
bufbomb:     file format elf64-x86-64


Disassembly of section .interp:

0000000000400200 <.interp>:
  400200:	2f                   	(bad)  
  400201:	6c                   	insb   (%dx),%es:(%rdi)
  400202:	69 62 36 34 2f 6c 64 	imul   $0x646c2f34,0x36(%rdx),%esp
  400209:	2d 6c 69 6e 75       	sub    $0x756e696c,%eax
  40020e:	78 2d                	js     40023d <_init-0x573>
  400210:	78 38                	js     40024a <_init-0x566>
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
  40024b:	00 5f 7e             	add    %bl,0x7e(%rdi)
  40024e:	24 28                	and    $0x28,%al
  400250:	f6 7c df 2f          	idivb  0x2f(%rdi,%rbx,8)
  400254:	64 ad                	lods   %fs:(%rsi),%eax
  400256:	c9                   	leaveq 
  400257:	28 b2 ad 53 79 37    	sub    %dh,0x377953ad(%rdx)
  40025d:	a5                   	movsl  %ds:(%rsi),%es:(%rdi)
  40025e:	1d                   	.byte 0x1d
  40025f:	a5                   	movsl  %ds:(%rsi),%es:(%rdi)

Disassembly of section .gnu.hash:

0000000000400260 <.gnu.hash>:
  400260:	02 00                	add    (%rax),%al
  400262:	00 00                	add    %al,(%rax)
  400264:	14 00                	adc    $0x0,%al
  400266:	00 00                	add    %al,(%rax)
  400268:	01 00                	add    %eax,(%rax)
  40026a:	00 00                	add    %al,(%rax)
  40026c:	06                   	(bad)  
  40026d:	00 00                	add    %al,(%rax)
  40026f:	00 00                	add    %al,(%rax)
  400271:	04 20                	add    $0x20,%al
  400273:	00 80 00 04 00 14    	add    %al,0x14000400(%rax)
  400279:	00 00                	add    %al,(%rax)
  40027b:	00 15 00 00 00 b3    	add    %dl,-0x4d000000(%rip)        # ffffffffb3400281 <_end+0xffffffffb2dfd339>
  400281:	a2                   	.byte 0xa2
  400282:	f7 12                	notl   (%rdx)
  400284:	67 55                	addr32 push %rbp
  400286:	61                   	(bad)  
  400287:	10                   	.byte 0x10

Disassembly of section .dynsym:

0000000000400288 <.dynsym>:
	...
  4002a0:	89 00                	mov    %eax,(%rax)
  4002a2:	00 00                	add    %al,(%rax)
  4002a4:	12 00                	adc    (%rax),%al
	...
  4002b6:	00 00                	add    %al,(%rax)
  4002b8:	3c 00                	cmp    $0x0,%al
  4002ba:	00 00                	add    %al,(%rax)
  4002bc:	12 00                	adc    (%rax),%al
	...
  4002ce:	00 00                	add    %al,(%rax)
  4002d0:	50                   	push   %rax
  4002d1:	00 00                	add    %al,(%rax)
  4002d3:	00 12                	add    %dl,(%rdx)
	...
  4002e5:	00 00                	add    %al,(%rax)
  4002e7:	00 57 00             	add    %dl,0x0(%rdi)
  4002ea:	00 00                	add    %al,(%rax)
  4002ec:	12 00                	adc    (%rax),%al
	...
  4002fe:	00 00                	add    %al,(%rax)
  400300:	83 00 00             	addl   $0x0,(%rax)
  400303:	00 12                	add    %dl,(%rdx)
	...
  400315:	00 00                	add    %al,(%rax)
  400317:	00 25 00 00 00 12    	add    %ah,0x12000000(%rip)        # 1240031d <_end+0x11dfd3d5>
	...
  40032d:	00 00                	add    %al,(%rax)
  40032f:	00 9a 00 00 00 12    	add    %bl,0x12000000(%rdx)
	...
  400345:	00 00                	add    %al,(%rax)
  400347:	00 1f                	add    %bl,(%rdi)
  400349:	00 00                	add    %al,(%rax)
  40034b:	00 12                	add    %dl,(%rdx)
	...
  40035d:	00 00                	add    %al,(%rax)
  40035f:	00 35 00 00 00 12    	add    %dh,0x12000000(%rip)        # 12400365 <_end+0x11dfd41d>
	...
  400375:	00 00                	add    %al,(%rax)
  400377:	00 01                	add    %al,(%rcx)
  400379:	00 00                	add    %al,(%rax)
  40037b:	00 20                	add    %ah,(%rax)
	...
  40038d:	00 00                	add    %al,(%rax)
  40038f:	00 41 00             	add    %al,0x0(%rcx)
  400392:	00 00                	add    %al,(%rax)
  400394:	12 00                	adc    (%rax),%al
	...
  4003a6:	00 00                	add    %al,(%rax)
  4003a8:	8a 00                	mov    (%rax),%al
  4003aa:	00 00                	add    %al,(%rax)
  4003ac:	12 00                	adc    (%rax),%al
	...
  4003be:	00 00                	add    %al,(%rax)
  4003c0:	91                   	xchg   %eax,%ecx
  4003c1:	00 00                	add    %al,(%rax)
  4003c3:	00 12                	add    %dl,(%rdx)
	...
  4003d5:	00 00                	add    %al,(%rax)
  4003d7:	00 65 00             	add    %ah,0x0(%rbp)
  4003da:	00 00                	add    %al,(%rax)
  4003dc:	12 00                	adc    (%rax),%al
	...
  4003ee:	00 00                	add    %al,(%rax)
  4003f0:	2e 00 00             	add    %al,%cs:(%rax)
  4003f3:	00 12                	add    %dl,(%rdx)
	...
  400405:	00 00                	add    %al,(%rax)
  400407:	00 5e 00             	add    %bl,0x0(%rsi)
  40040a:	00 00                	add    %al,(%rax)
  40040c:	12 00                	adc    (%rax),%al
	...
  40041e:	00 00                	add    %al,(%rax)
  400420:	1a 00                	sbb    (%rax),%al
  400422:	00 00                	add    %al,(%rax)
  400424:	12 00                	adc    (%rax),%al
	...
  400436:	00 00                	add    %al,(%rax)
  400438:	20 00                	and    %al,(%rax)
  40043a:	00 00                	add    %al,(%rax)
  40043c:	12 00                	adc    (%rax),%al
	...
  40044e:	00 00                	add    %al,(%rax)
  400450:	6e                   	outsb  %ds:(%rsi),(%dx)
  400451:	00 00                	add    %al,(%rax)
  400453:	00 12                	add    %dl,(%rdx)
	...
  400465:	00 00                	add    %al,(%rax)
  400467:	00 7c 00 00          	add    %bh,0x0(%rax,%rax,1)
  40046b:	00 11                	add    %dl,(%rcx)
  40046d:	00 19                	add    %bl,(%rcx)
  40046f:	00 e8                	add    %ch,%al
  400471:	22 60 00             	and    0x0(%rax),%ah
  400474:	00 00                	add    %al,(%rax)
  400476:	00 00                	add    %al,(%rax)
  400478:	08 00                	or     %al,(%rax)
  40047a:	00 00                	add    %al,(%rax)
  40047c:	00 00                	add    %al,(%rax)
  40047e:	00 00                	add    %al,(%rax)
  400480:	4a 00 00             	rex.WX add %al,(%rax)
  400483:	00 11                	add    %dl,(%rcx)
  400485:	00 19                	add    %bl,(%rcx)
  400487:	00 e0                	add    %ah,%al
  400489:	22 60 00             	and    0x0(%rax),%ah
  40048c:	00 00                	add    %al,(%rax)
  40048e:	00 00                	add    %al,(%rax)
  400490:	08 00                	or     %al,(%rax)
  400492:	00 00                	add    %al,(%rax)
  400494:	00 00                	add    %al,(%rax)
	...

Disassembly of section .dynstr:

0000000000400498 <.dynstr>:
  400498:	00 5f 5f             	add    %bl,0x5f(%rdi)
  40049b:	67 6d                	insl   (%dx),%es:(%edi)
  40049d:	6f                   	outsl  %ds:(%rsi),(%dx)
  40049e:	6e                   	outsb  %ds:(%rsi),(%dx)
  40049f:	5f                   	pop    %rdi
  4004a0:	73 74                	jae    400516 <_init-0x29a>
  4004a2:	61                   	(bad)  
  4004a3:	72 74                	jb     400519 <_init-0x297>
  4004a5:	5f                   	pop    %rdi
  4004a6:	5f                   	pop    %rdi
  4004a7:	00 6c 69 62          	add    %ch,0x62(%rcx,%rbp,2)
  4004ab:	63 2e                	movslq (%rsi),%ebp
  4004ad:	73 6f                	jae    40051e <_init-0x292>
  4004af:	2e 36 00 65 78       	cs add %ah,%cs:%ss:0x78(%rbp)
  4004b4:	69 74 00 73 72 61 6e 	imul   $0x646e6172,0x73(%rax,%rax,1),%esi
  4004bb:	64 
  4004bc:	00 5f 5f             	add    %bl,0x5f(%rdi)
  4004bf:	73 74                	jae    400535 <_init-0x27b>
  4004c1:	72 64                	jb     400527 <_init-0x289>
  4004c3:	75 70                	jne    400535 <_init-0x27b>
  4004c5:	00 70 65             	add    %dh,0x65(%rax)
  4004c8:	72 72                	jb     40053c <_init-0x274>
  4004ca:	6f                   	outsl  %ds:(%rsi),(%dx)
  4004cb:	72 00                	jb     4004cd <_init-0x2e3>
  4004cd:	73 69                	jae    400538 <_init-0x278>
  4004cf:	67 6e                	outsb  %ds:(%esi),(%dx)
  4004d1:	61                   	(bad)  
  4004d2:	6c                   	insb   (%dx),%es:(%rdi)
  4004d3:	00 70 75             	add    %dh,0x75(%rax)
  4004d6:	74 73                	je     40054b <_init-0x265>
  4004d8:	00 6d 65             	add    %ch,0x65(%rbp)
  4004db:	6d                   	insl   (%dx),%es:(%rdi)
  4004dc:	61                   	(bad)  
  4004dd:	6c                   	insb   (%dx),%es:(%rdi)
  4004de:	69 67 6e 00 73 74 64 	imul   $0x64747300,0x6e(%rdi),%esp
  4004e5:	69 6e 00 70 72 69 6e 	imul   $0x6e697270,0x0(%rsi),%ebp
  4004ec:	74 66                	je     400554 <_init-0x25c>
  4004ee:	00 6d 65             	add    %ch,0x65(%rbp)
  4004f1:	6d                   	insl   (%dx),%es:(%rdi)
  4004f2:	73 65                	jae    400559 <_init-0x257>
  4004f4:	74 00                	je     4004f6 <_init-0x2ba>
  4004f6:	67                   	addr32
  4004f7:	65                   	gs
  4004f8:	74 6f                	je     400569 <_init-0x247>
  4004fa:	70 74                	jo     400570 <_init-0x240>
  4004fc:	00 6d 70             	add    %ch,0x70(%rbp)
  4004ff:	72 6f                	jb     400570 <_init-0x240>
  400501:	74 65                	je     400568 <_init-0x248>
  400503:	63 74 00 5f          	movslq 0x5f(%rax,%rax,1),%esi
  400507:	5f                   	pop    %rdi
  400508:	63 74 79 70          	movslq 0x70(%rcx,%rdi,2),%esi
  40050c:	65                   	gs
  40050d:	5f                   	pop    %rdi
  40050e:	62                   	(bad)  
  40050f:	5f                   	pop    %rdi
  400510:	6c                   	insb   (%dx),%es:(%rdi)
  400511:	6f                   	outsl  %ds:(%rsi),(%dx)
  400512:	63 00                	movslq (%rax),%eax
  400514:	6f                   	outsl  %ds:(%rsi),(%dx)
  400515:	70 74                	jo     40058b <_init-0x225>
  400517:	61                   	(bad)  
  400518:	72 67                	jb     400581 <_init-0x22f>
  40051a:	00 61 6c             	add    %ah,0x6c(%rcx)
  40051d:	61                   	(bad)  
  40051e:	72 6d                	jb     40058d <_init-0x223>
  400520:	00 73 72             	add    %dh,0x72(%rbx)
  400523:	61                   	(bad)  
  400524:	6e                   	outsb  %ds:(%rsi),(%dx)
  400525:	64 6f                	outsl  %fs:(%rsi),(%dx)
  400527:	6d                   	insl   (%dx),%es:(%rdi)
  400528:	00 5f 49             	add    %bl,0x49(%rdi)
  40052b:	4f 5f                	rex.WRXB pop %r15
  40052d:	67                   	addr32
  40052e:	65                   	gs
  40052f:	74 63                	je     400594 <_init-0x21c>
  400531:	00 5f 5f             	add    %bl,0x5f(%rdi)
  400534:	6c                   	insb   (%dx),%es:(%rdi)
  400535:	69 62 63 5f 73 74 61 	imul   $0x6174735f,0x63(%rdx),%esp
  40053c:	72 74                	jb     4005b2 <_init-0x1fe>
  40053e:	5f                   	pop    %rdi
  40053f:	6d                   	insl   (%dx),%es:(%rdi)
  400540:	61                   	(bad)  
  400541:	69 6e 00 47 4c 49 42 	imul   $0x42494c47,0x0(%rsi),%ebp
  400548:	43 5f                	rex.XB pop %r15
  40054a:	32 2e                	xor    (%rsi),%ch
  40054c:	33 00                	xor    (%rax),%eax
  40054e:	47                   	rex.RXB
  40054f:	4c                   	rex.WR
  400550:	49                   	rex.WB
  400551:	42                   	rex.X
  400552:	43 5f                	rex.XB pop %r15
  400554:	32 2e                	xor    (%rsi),%ch
  400556:	32 2e                	xor    (%rsi),%ch
  400558:	35                   	.byte 0x35
	...

Disassembly of section .gnu.version:

000000000040055a <.gnu.version>:
  40055a:	00 00                	add    %al,(%rax)
  40055c:	02 00                	add    (%rax),%al
  40055e:	02 00                	add    (%rax),%al
  400560:	02 00                	add    (%rax),%al
  400562:	02 00                	add    (%rax),%al
  400564:	02 00                	add    (%rax),%al
  400566:	02 00                	add    (%rax),%al
  400568:	02 00                	add    (%rax),%al
  40056a:	02 00                	add    (%rax),%al
  40056c:	02 00                	add    (%rax),%al
  40056e:	00 00                	add    %al,(%rax)
  400570:	02 00                	add    (%rax),%al
  400572:	02 00                	add    (%rax),%al
  400574:	02 00                	add    (%rax),%al
  400576:	02 00                	add    (%rax),%al
  400578:	02 00                	add    (%rax),%al
  40057a:	02 00                	add    (%rax),%al
  40057c:	02 00                	add    (%rax),%al
  40057e:	02 00                	add    (%rax),%al
  400580:	03 00                	add    (%rax),%eax
  400582:	02 00                	add    (%rax),%al
  400584:	02 00                	add    (%rax),%al

Disassembly of section .gnu.version_r:

0000000000400588 <.gnu.version_r>:
  400588:	01 00                	add    %eax,(%rax)
  40058a:	02 00                	add    (%rax),%al
  40058c:	10 00                	adc    %al,(%rax)
  40058e:	00 00                	add    %al,(%rax)
  400590:	10 00                	adc    %al,(%rax)
  400592:	00 00                	add    %al,(%rax)
  400594:	00 00                	add    %al,(%rax)
  400596:	00 00                	add    %al,(%rax)
  400598:	13 69 69             	adc    0x69(%rcx),%ebp
  40059b:	0d 00 00 03 00       	or     $0x30000,%eax
  4005a0:	ac                   	lods   %ds:(%rsi),%al
  4005a1:	00 00                	add    %al,(%rax)
  4005a3:	00 10                	add    %dl,(%rax)
  4005a5:	00 00                	add    %al,(%rax)
  4005a7:	00 75 1a             	add    %dh,0x1a(%rbp)
  4005aa:	69 09 00 00 02 00    	imul   $0x20000,(%rcx),%ecx
  4005b0:	b6 00                	mov    $0x0,%dh
  4005b2:	00 00                	add    %al,(%rax)
  4005b4:	00 00                	add    %al,(%rax)
	...

Disassembly of section .rela.dyn:

00000000004005b8 <.rela.dyn>:
  4005b8:	e8 21 60 00 00       	callq  4065de <__FRAME_END__+0x4bae>
  4005bd:	00 00                	add    %al,(%rax)
  4005bf:	00 06                	add    %al,(%rsi)
  4005c1:	00 00                	add    %al,(%rax)
  4005c3:	00 0a                	add    %cl,(%rdx)
	...
  4005cd:	00 00                	add    %al,(%rax)
  4005cf:	00 e0                	add    %ah,%al
  4005d1:	22 60 00             	and    0x0(%rax),%ah
  4005d4:	00 00                	add    %al,(%rax)
  4005d6:	00 00                	add    %al,(%rax)
  4005d8:	05 00 00 00 15       	add    $0x15000000,%eax
	...
  4005e5:	00 00                	add    %al,(%rax)
  4005e7:	00 e8                	add    %ch,%al
  4005e9:	22 60 00             	and    0x0(%rax),%ah
  4005ec:	00 00                	add    %al,(%rax)
  4005ee:	00 00                	add    %al,(%rax)
  4005f0:	05 00 00 00 14       	add    $0x14000000,%eax
	...

Disassembly of section .rela.plt:

0000000000400600 <.rela.plt>:
  400600:	08 22                	or     %ah,(%rdx)
  400602:	60                   	(bad)  
  400603:	00 00                	add    %al,(%rax)
  400605:	00 00                	add    %al,(%rax)
  400607:	00 07                	add    %al,(%rdi)
  400609:	00 00                	add    %al,(%rax)
  40060b:	00 01                	add    %al,(%rcx)
	...
  400615:	00 00                	add    %al,(%rax)
  400617:	00 10                	add    %dl,(%rax)
  400619:	22 60 00             	and    0x0(%rax),%ah
  40061c:	00 00                	add    %al,(%rax)
  40061e:	00 00                	add    %al,(%rax)
  400620:	07                   	(bad)  
  400621:	00 00                	add    %al,(%rax)
  400623:	00 02                	add    %al,(%rdx)
	...
  40062d:	00 00                	add    %al,(%rax)
  40062f:	00 18                	add    %bl,(%rax)
  400631:	22 60 00             	and    0x0(%rax),%ah
  400634:	00 00                	add    %al,(%rax)
  400636:	00 00                	add    %al,(%rax)
  400638:	07                   	(bad)  
  400639:	00 00                	add    %al,(%rax)
  40063b:	00 03                	add    %al,(%rbx)
	...
  400645:	00 00                	add    %al,(%rax)
  400647:	00 20                	add    %ah,(%rax)
  400649:	22 60 00             	and    0x0(%rax),%ah
  40064c:	00 00                	add    %al,(%rax)
  40064e:	00 00                	add    %al,(%rax)
  400650:	07                   	(bad)  
  400651:	00 00                	add    %al,(%rax)
  400653:	00 04 00             	add    %al,(%rax,%rax,1)
	...
  40065e:	00 00                	add    %al,(%rax)
  400660:	28 22                	sub    %ah,(%rdx)
  400662:	60                   	(bad)  
  400663:	00 00                	add    %al,(%rax)
  400665:	00 00                	add    %al,(%rax)
  400667:	00 07                	add    %al,(%rdi)
  400669:	00 00                	add    %al,(%rax)
  40066b:	00 05 00 00 00 00    	add    %al,0x0(%rip)        # 400671 <_init-0x13f>
  400671:	00 00                	add    %al,(%rax)
  400673:	00 00                	add    %al,(%rax)
  400675:	00 00                	add    %al,(%rax)
  400677:	00 30                	add    %dh,(%rax)
  400679:	22 60 00             	and    0x0(%rax),%ah
  40067c:	00 00                	add    %al,(%rax)
  40067e:	00 00                	add    %al,(%rax)
  400680:	07                   	(bad)  
  400681:	00 00                	add    %al,(%rax)
  400683:	00 06                	add    %al,(%rsi)
	...
  40068d:	00 00                	add    %al,(%rax)
  40068f:	00 38                	add    %bh,(%rax)
  400691:	22 60 00             	and    0x0(%rax),%ah
  400694:	00 00                	add    %al,(%rax)
  400696:	00 00                	add    %al,(%rax)
  400698:	07                   	(bad)  
  400699:	00 00                	add    %al,(%rax)
  40069b:	00 07                	add    %al,(%rdi)
	...
  4006a5:	00 00                	add    %al,(%rax)
  4006a7:	00 40 22             	add    %al,0x22(%rax)
  4006aa:	60                   	(bad)  
  4006ab:	00 00                	add    %al,(%rax)
  4006ad:	00 00                	add    %al,(%rax)
  4006af:	00 07                	add    %al,(%rdi)
  4006b1:	00 00                	add    %al,(%rax)
  4006b3:	00 08                	add    %cl,(%rax)
	...
  4006bd:	00 00                	add    %al,(%rax)
  4006bf:	00 48 22             	add    %cl,0x22(%rax)
  4006c2:	60                   	(bad)  
  4006c3:	00 00                	add    %al,(%rax)
  4006c5:	00 00                	add    %al,(%rax)
  4006c7:	00 07                	add    %al,(%rdi)
  4006c9:	00 00                	add    %al,(%rax)
  4006cb:	00 09                	add    %cl,(%rcx)
	...
  4006d5:	00 00                	add    %al,(%rax)
  4006d7:	00 50 22             	add    %dl,0x22(%rax)
  4006da:	60                   	(bad)  
  4006db:	00 00                	add    %al,(%rax)
  4006dd:	00 00                	add    %al,(%rax)
  4006df:	00 07                	add    %al,(%rdi)
  4006e1:	00 00                	add    %al,(%rax)
  4006e3:	00 0b                	add    %cl,(%rbx)
	...
  4006ed:	00 00                	add    %al,(%rax)
  4006ef:	00 58 22             	add    %bl,0x22(%rax)
  4006f2:	60                   	(bad)  
  4006f3:	00 00                	add    %al,(%rax)
  4006f5:	00 00                	add    %al,(%rax)
  4006f7:	00 07                	add    %al,(%rdi)
  4006f9:	00 00                	add    %al,(%rax)
  4006fb:	00 0c 00             	add    %cl,(%rax,%rax,1)
	...
  400706:	00 00                	add    %al,(%rax)
  400708:	60                   	(bad)  
  400709:	22 60 00             	and    0x0(%rax),%ah
  40070c:	00 00                	add    %al,(%rax)
  40070e:	00 00                	add    %al,(%rax)
  400710:	07                   	(bad)  
  400711:	00 00                	add    %al,(%rax)
  400713:	00 0d 00 00 00 00    	add    %cl,0x0(%rip)        # 400719 <_init-0x97>
  400719:	00 00                	add    %al,(%rax)
  40071b:	00 00                	add    %al,(%rax)
  40071d:	00 00                	add    %al,(%rax)
  40071f:	00 68 22             	add    %ch,0x22(%rax)
  400722:	60                   	(bad)  
  400723:	00 00                	add    %al,(%rax)
  400725:	00 00                	add    %al,(%rax)
  400727:	00 07                	add    %al,(%rdi)
  400729:	00 00                	add    %al,(%rax)
  40072b:	00 0e                	add    %cl,(%rsi)
	...
  400735:	00 00                	add    %al,(%rax)
  400737:	00 70 22             	add    %dh,0x22(%rax)
  40073a:	60                   	(bad)  
  40073b:	00 00                	add    %al,(%rax)
  40073d:	00 00                	add    %al,(%rax)
  40073f:	00 07                	add    %al,(%rdi)
  400741:	00 00                	add    %al,(%rax)
  400743:	00 0f                	add    %cl,(%rdi)
	...
  40074d:	00 00                	add    %al,(%rax)
  40074f:	00 78 22             	add    %bh,0x22(%rax)
  400752:	60                   	(bad)  
  400753:	00 00                	add    %al,(%rax)
  400755:	00 00                	add    %al,(%rax)
  400757:	00 07                	add    %al,(%rdi)
  400759:	00 00                	add    %al,(%rax)
  40075b:	00 10                	add    %dl,(%rax)
	...
  400765:	00 00                	add    %al,(%rax)
  400767:	00 80 22 60 00 00    	add    %al,0x6022(%rax)
  40076d:	00 00                	add    %al,(%rax)
  40076f:	00 07                	add    %al,(%rdi)
  400771:	00 00                	add    %al,(%rax)
  400773:	00 11                	add    %dl,(%rcx)
	...
  40077d:	00 00                	add    %al,(%rax)
  40077f:	00 88 22 60 00 00    	add    %cl,0x6022(%rax)
  400785:	00 00                	add    %al,(%rax)
  400787:	00 07                	add    %al,(%rdi)
  400789:	00 00                	add    %al,(%rax)
  40078b:	00 12                	add    %dl,(%rdx)
	...
  400795:	00 00                	add    %al,(%rax)
  400797:	00 90 22 60 00 00    	add    %dl,0x6022(%rax)
  40079d:	00 00                	add    %al,(%rax)
  40079f:	00 07                	add    %al,(%rdi)
  4007a1:	00 00                	add    %al,(%rax)
  4007a3:	00 13                	add    %dl,(%rbx)
	...

Disassembly of section .init:

00000000004007b0 <_init>:
  4007b0:	48 83 ec 08          	sub    $0x8,%rsp
  4007b4:	e8 f3 02 00 00       	callq  400aac <call_gmon_start>
  4007b9:	48 83 c4 08          	add    $0x8,%rsp
  4007bd:	c3                   	retq   

Disassembly of section .plt:

00000000004007c0 <srandom@plt-0x10>:
  4007c0:	ff 35 32 1a 20 00    	pushq  0x201a32(%rip)        # 6021f8 <_GLOBAL_OFFSET_TABLE_+0x8>
  4007c6:	ff 25 34 1a 20 00    	jmpq   *0x201a34(%rip)        # 602200 <_GLOBAL_OFFSET_TABLE_+0x10>
  4007cc:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004007d0 <srandom@plt>:
  4007d0:	ff 25 32 1a 20 00    	jmpq   *0x201a32(%rip)        # 602208 <_GLOBAL_OFFSET_TABLE_+0x18>
  4007d6:	68 00 00 00 00       	pushq  $0x0
  4007db:	e9 e0 ff ff ff       	jmpq   4007c0 <_init+0x10>

00000000004007e0 <puts@plt>:
  4007e0:	ff 25 2a 1a 20 00    	jmpq   *0x201a2a(%rip)        # 602210 <_GLOBAL_OFFSET_TABLE_+0x20>
  4007e6:	68 01 00 00 00       	pushq  $0x1
  4007eb:	e9 d0 ff ff ff       	jmpq   4007c0 <_init+0x10>

00000000004007f0 <printf@plt>:
  4007f0:	ff 25 22 1a 20 00    	jmpq   *0x201a22(%rip)        # 602218 <_GLOBAL_OFFSET_TABLE_+0x28>
  4007f6:	68 02 00 00 00       	pushq  $0x2
  4007fb:	e9 c0 ff ff ff       	jmpq   4007c0 <_init+0x10>

0000000000400800 <memset@plt>:
  400800:	ff 25 1a 1a 20 00    	jmpq   *0x201a1a(%rip)        # 602220 <_GLOBAL_OFFSET_TABLE_+0x30>
  400806:	68 03 00 00 00       	pushq  $0x3
  40080b:	e9 b0 ff ff ff       	jmpq   4007c0 <_init+0x10>

0000000000400810 <alarm@plt>:
  400810:	ff 25 12 1a 20 00    	jmpq   *0x201a12(%rip)        # 602228 <_GLOBAL_OFFSET_TABLE_+0x38>
  400816:	68 04 00 00 00       	pushq  $0x4
  40081b:	e9 a0 ff ff ff       	jmpq   4007c0 <_init+0x10>

0000000000400820 <__strdup@plt>:
  400820:	ff 25 0a 1a 20 00    	jmpq   *0x201a0a(%rip)        # 602230 <_GLOBAL_OFFSET_TABLE_+0x40>
  400826:	68 05 00 00 00       	pushq  $0x5
  40082b:	e9 90 ff ff ff       	jmpq   4007c0 <_init+0x10>

0000000000400830 <__libc_start_main@plt>:
  400830:	ff 25 02 1a 20 00    	jmpq   *0x201a02(%rip)        # 602238 <_GLOBAL_OFFSET_TABLE_+0x48>
  400836:	68 06 00 00 00       	pushq  $0x6
  40083b:	e9 80 ff ff ff       	jmpq   4007c0 <_init+0x10>

0000000000400840 <srand@plt>:
  400840:	ff 25 fa 19 20 00    	jmpq   *0x2019fa(%rip)        # 602240 <_GLOBAL_OFFSET_TABLE_+0x50>
  400846:	68 07 00 00 00       	pushq  $0x7
  40084b:	e9 70 ff ff ff       	jmpq   4007c0 <_init+0x10>

0000000000400850 <signal@plt>:
  400850:	ff 25 f2 19 20 00    	jmpq   *0x2019f2(%rip)        # 602248 <_GLOBAL_OFFSET_TABLE_+0x58>
  400856:	68 08 00 00 00       	pushq  $0x8
  40085b:	e9 60 ff ff ff       	jmpq   4007c0 <_init+0x10>

0000000000400860 <memalign@plt>:
  400860:	ff 25 ea 19 20 00    	jmpq   *0x2019ea(%rip)        # 602250 <_GLOBAL_OFFSET_TABLE_+0x60>
  400866:	68 09 00 00 00       	pushq  $0x9
  40086b:	e9 50 ff ff ff       	jmpq   4007c0 <_init+0x10>

0000000000400870 <random@plt>:
  400870:	ff 25 e2 19 20 00    	jmpq   *0x2019e2(%rip)        # 602258 <_GLOBAL_OFFSET_TABLE_+0x68>
  400876:	68 0a 00 00 00       	pushq  $0xa
  40087b:	e9 40 ff ff ff       	jmpq   4007c0 <_init+0x10>

0000000000400880 <_IO_getc@plt>:
  400880:	ff 25 da 19 20 00    	jmpq   *0x2019da(%rip)        # 602260 <_GLOBAL_OFFSET_TABLE_+0x70>
  400886:	68 0b 00 00 00       	pushq  $0xb
  40088b:	e9 30 ff ff ff       	jmpq   4007c0 <_init+0x10>

0000000000400890 <mprotect@plt>:
  400890:	ff 25 d2 19 20 00    	jmpq   *0x2019d2(%rip)        # 602268 <_GLOBAL_OFFSET_TABLE_+0x78>
  400896:	68 0c 00 00 00       	pushq  $0xc
  40089b:	e9 20 ff ff ff       	jmpq   4007c0 <_init+0x10>

00000000004008a0 <perror@plt>:
  4008a0:	ff 25 ca 19 20 00    	jmpq   *0x2019ca(%rip)        # 602270 <_GLOBAL_OFFSET_TABLE_+0x80>
  4008a6:	68 0d 00 00 00       	pushq  $0xd
  4008ab:	e9 10 ff ff ff       	jmpq   4007c0 <_init+0x10>

00000000004008b0 <getopt@plt>:
  4008b0:	ff 25 c2 19 20 00    	jmpq   *0x2019c2(%rip)        # 602278 <_GLOBAL_OFFSET_TABLE_+0x88>
  4008b6:	68 0e 00 00 00       	pushq  $0xe
  4008bb:	e9 00 ff ff ff       	jmpq   4007c0 <_init+0x10>

00000000004008c0 <exit@plt>:
  4008c0:	ff 25 ba 19 20 00    	jmpq   *0x2019ba(%rip)        # 602280 <_GLOBAL_OFFSET_TABLE_+0x90>
  4008c6:	68 0f 00 00 00       	pushq  $0xf
  4008cb:	e9 f0 fe ff ff       	jmpq   4007c0 <_init+0x10>

00000000004008d0 <rand@plt>:
  4008d0:	ff 25 b2 19 20 00    	jmpq   *0x2019b2(%rip)        # 602288 <_GLOBAL_OFFSET_TABLE_+0x98>
  4008d6:	68 10 00 00 00       	pushq  $0x10
  4008db:	e9 e0 fe ff ff       	jmpq   4007c0 <_init+0x10>

00000000004008e0 <__ctype_b_loc@plt>:
  4008e0:	ff 25 aa 19 20 00    	jmpq   *0x2019aa(%rip)        # 602290 <_GLOBAL_OFFSET_TABLE_+0xa0>
  4008e6:	68 11 00 00 00       	pushq  $0x11
  4008eb:	e9 d0 fe ff ff       	jmpq   4007c0 <_init+0x10>

Disassembly of section .text:

00000000004008f0 <main>:
  4008f0:	41 54                	push   %r12
  4008f2:	31 c0                	xor    %eax,%eax
  4008f4:	55                   	push   %rbp
  4008f5:	89 fd                	mov    %edi,%ebp
  4008f7:	bf 00 40 00 00       	mov    $0x4000,%edi
  4008fc:	53                   	push   %rbx
  4008fd:	48 89 f3             	mov    %rsi,%rbx
  400900:	be 00 40 00 00       	mov    $0x4000,%esi
  400905:	e8 56 ff ff ff       	callq  400860 <memalign@plt>
  40090a:	4c 63 e0             	movslq %eax,%r12
  40090d:	ba 07 00 00 00       	mov    $0x7,%edx
  400912:	be 00 40 00 00       	mov    $0x4000,%esi
  400917:	4c 89 e7             	mov    %r12,%rdi
  40091a:	e8 71 ff ff ff       	callq  400890 <mprotect@plt>
  40091f:	85 c0                	test   %eax,%eax
  400921:	0f 85 39 01 00 00    	jne    400a60 <main+0x170>
  400927:	48 89 e0             	mov    %rsp,%rax
  40092a:	49 81 c4 80 3f 00 00 	add    $0x3f80,%r12
  400931:	4c 89 e4             	mov    %r12,%rsp
  400934:	48 89 c4             	mov    %rax,%rsp
  400937:	be 70 0c 40 00       	mov    $0x400c70,%esi
  40093c:	bf 0b 00 00 00       	mov    $0xb,%edi
  400941:	e8 0a ff ff ff       	callq  400850 <signal@plt>
  400946:	be 90 0c 40 00       	mov    $0x400c90,%esi
  40094b:	bf 07 00 00 00       	mov    $0x7,%edi
  400950:	e8 fb fe ff ff       	callq  400850 <signal@plt>
  400955:	be 40 0c 40 00       	mov    $0x400c40,%esi
  40095a:	bf 0e 00 00 00       	mov    $0xe,%edi
  40095f:	e8 ec fe ff ff       	callq  400850 <signal@plt>
  400964:	be 20 0c 40 00       	mov    $0x400c20,%esi
  400969:	bf 04 00 00 00       	mov    $0x4,%edi
  40096e:	e8 dd fe ff ff       	callq  400850 <signal@plt>
  400973:	48 8b 05 66 19 20 00 	mov    0x201966(%rip),%rax        # 6022e0 <stdin@@GLIBC_2.2.5>
  40097a:	48 89 05 b7 19 20 00 	mov    %rax,0x2019b7(%rip)        # 602338 <infile>
  400981:	ba 7e 13 40 00       	mov    $0x40137e,%edx
  400986:	48 89 de             	mov    %rbx,%rsi
  400989:	89 ef                	mov    %ebp,%edi
  40098b:	e8 20 ff ff ff       	callq  4008b0 <getopt@plt>
  400990:	3c ff                	cmp    $0xff,%al
  400992:	0f 84 8b 00 00 00    	je     400a23 <main+0x133>
  400998:	3c 67                	cmp    $0x67,%al
  40099a:	74 64                	je     400a00 <main+0x110>
  40099c:	0f 1f 40 00          	nopl   0x0(%rax)
  4009a0:	7c 07                	jl     4009a9 <main+0xb9>
  4009a2:	83 e8 74             	sub    $0x74,%eax
  4009a5:	3c 01                	cmp    $0x1,%al
  4009a7:	76 0f                	jbe    4009b8 <main+0xc8>
  4009a9:	48 8b 3b             	mov    (%rbx),%rdi
  4009ac:	e8 3f 02 00 00       	callq  400bf0 <usage>
  4009b1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  4009b8:	48 8b 3d 29 19 20 00 	mov    0x201929(%rip),%rdi        # 6022e8 <optarg@@GLIBC_2.2.5>
  4009bf:	e8 5c fe ff ff       	callq  400820 <__strdup@plt>
  4009c4:	bf 60 13 40 00       	mov    $0x401360,%edi
  4009c9:	48 89 c6             	mov    %rax,%rsi
  4009cc:	48 89 05 45 19 20 00 	mov    %rax,0x201945(%rip)        # 602318 <team>
  4009d3:	31 c0                	xor    %eax,%eax
  4009d5:	e8 16 fe ff ff       	callq  4007f0 <printf@plt>
  4009da:	48 8b 3d 37 19 20 00 	mov    0x201937(%rip),%rdi        # 602318 <team>
  4009e1:	e8 ca 07 00 00       	callq  4011b0 <gencookie>
  4009e6:	bf 6e 13 40 00       	mov    $0x40136e,%edi
  4009eb:	48 89 c6             	mov    %rax,%rsi
  4009ee:	48 89 05 2b 19 20 00 	mov    %rax,0x20192b(%rip)        # 602320 <cookie>
  4009f5:	31 c0                	xor    %eax,%eax
  4009f7:	e8 f4 fd ff ff       	callq  4007f0 <printf@plt>
  4009fc:	eb 83                	jmp    400981 <main+0x91>
  4009fe:	66 90                	xchg   %ax,%ax
  400a00:	c7 05 0a 19 20 00 01 	movl   $0x1,0x20190a(%rip)        # 602314 <grade>
  400a07:	00 00 00 
  400a0a:	c7 05 18 19 20 00 01 	movl   $0x1,0x201918(%rip)        # 60232c <quiet>
  400a11:	00 00 00 
  400a14:	c7 05 b6 18 20 00 01 	movl   $0x1,0x2018b6(%rip)        # 6022d4 <alarm_time>
  400a1b:	00 00 00 
  400a1e:	e9 5e ff ff ff       	jmpq   400981 <main+0x91>
  400a23:	48 83 3d ed 18 20 00 	cmpq   $0x0,0x2018ed(%rip)        # 602318 <team>
  400a2a:	00 
  400a2b:	74 44                	je     400a71 <main+0x181>
  400a2d:	8b 3d ed 18 20 00    	mov    0x2018ed(%rip),%edi        # 602320 <cookie>
  400a33:	e8 98 fd ff ff       	callq  4007d0 <srandom@plt>
  400a38:	e8 33 fe ff ff       	callq  400870 <random@plt>
  400a3d:	8b 3d 91 18 20 00    	mov    0x201891(%rip),%edi        # 6022d4 <alarm_time>
  400a43:	48 89 c3             	mov    %rax,%rbx
  400a46:	e8 c5 fd ff ff       	callq  400810 <alarm@plt>
  400a4b:	48 89 df             	mov    %rbx,%rdi
  400a4e:	81 e7 f8 0f 00 00    	and    $0xff8,%edi
  400a54:	e8 27 05 00 00       	callq  400f80 <launch.isra.1>
  400a59:	5b                   	pop    %rbx
  400a5a:	5d                   	pop    %rbp
  400a5b:	31 c0                	xor    %eax,%eax
  400a5d:	41 5c                	pop    %r12
  400a5f:	c3                   	retq   
  400a60:	bf d8 15 40 00       	mov    $0x4015d8,%edi
  400a65:	e8 36 fe ff ff       	callq  4008a0 <perror@plt>
  400a6a:	31 ff                	xor    %edi,%edi
  400a6c:	e8 4f fe ff ff       	callq  4008c0 <exit@plt>
  400a71:	bf 00 16 40 00       	mov    $0x401600,%edi
  400a76:	e8 65 fd ff ff       	callq  4007e0 <puts@plt>
  400a7b:	e9 29 ff ff ff       	jmpq   4009a9 <main+0xb9>

0000000000400a80 <_start>:
  400a80:	31 ed                	xor    %ebp,%ebp
  400a82:	49 89 d1             	mov    %rdx,%r9
  400a85:	5e                   	pop    %rsi
  400a86:	48 89 e2             	mov    %rsp,%rdx
  400a89:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  400a8d:	50                   	push   %rax
  400a8e:	54                   	push   %rsp
  400a8f:	49 c7 c0 a0 12 40 00 	mov    $0x4012a0,%r8
  400a96:	48 c7 c1 10 12 40 00 	mov    $0x401210,%rcx
  400a9d:	48 c7 c7 f0 08 40 00 	mov    $0x4008f0,%rdi
  400aa4:	e8 87 fd ff ff       	callq  400830 <__libc_start_main@plt>
  400aa9:	f4                   	hlt    
  400aaa:	66 90                	xchg   %ax,%ax

0000000000400aac <call_gmon_start>:
  400aac:	48 83 ec 08          	sub    $0x8,%rsp
  400ab0:	48 8b 05 31 17 20 00 	mov    0x201731(%rip),%rax        # 6021e8 <_DYNAMIC+0x1d0>
  400ab7:	48 85 c0             	test   %rax,%rax
  400aba:	74 02                	je     400abe <call_gmon_start+0x12>
  400abc:	ff d0                	callq  *%rax
  400abe:	48 83 c4 08          	add    $0x8,%rsp
  400ac2:	c3                   	retq   
  400ac3:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  400aca:	00 00 00 
  400acd:	0f 1f 00             	nopl   (%rax)

0000000000400ad0 <deregister_tm_clones>:
  400ad0:	b8 df 22 60 00       	mov    $0x6022df,%eax
  400ad5:	55                   	push   %rbp
  400ad6:	48 2d d8 22 60 00    	sub    $0x6022d8,%rax
  400adc:	48 83 f8 0e          	cmp    $0xe,%rax
  400ae0:	48 89 e5             	mov    %rsp,%rbp
  400ae3:	77 02                	ja     400ae7 <deregister_tm_clones+0x17>
  400ae5:	5d                   	pop    %rbp
  400ae6:	c3                   	retq   
  400ae7:	b8 00 00 00 00       	mov    $0x0,%eax
  400aec:	48 85 c0             	test   %rax,%rax
  400aef:	74 f4                	je     400ae5 <deregister_tm_clones+0x15>
  400af1:	5d                   	pop    %rbp
  400af2:	bf d8 22 60 00       	mov    $0x6022d8,%edi
  400af7:	ff e0                	jmpq   *%rax
  400af9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000400b00 <register_tm_clones>:
  400b00:	b8 d8 22 60 00       	mov    $0x6022d8,%eax
  400b05:	55                   	push   %rbp
  400b06:	48 2d d8 22 60 00    	sub    $0x6022d8,%rax
  400b0c:	48 c1 f8 03          	sar    $0x3,%rax
  400b10:	48 89 e5             	mov    %rsp,%rbp
  400b13:	48 89 c2             	mov    %rax,%rdx
  400b16:	48 c1 ea 3f          	shr    $0x3f,%rdx
  400b1a:	48 01 d0             	add    %rdx,%rax
  400b1d:	48 89 c6             	mov    %rax,%rsi
  400b20:	48 d1 fe             	sar    %rsi
  400b23:	75 02                	jne    400b27 <register_tm_clones+0x27>
  400b25:	5d                   	pop    %rbp
  400b26:	c3                   	retq   
  400b27:	ba 00 00 00 00       	mov    $0x0,%edx
  400b2c:	48 85 d2             	test   %rdx,%rdx
  400b2f:	74 f4                	je     400b25 <register_tm_clones+0x25>
  400b31:	5d                   	pop    %rbp
  400b32:	bf d8 22 60 00       	mov    $0x6022d8,%edi
  400b37:	ff e2                	jmpq   *%rdx
  400b39:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000400b40 <__do_global_dtors_aux>:
  400b40:	80 3d a9 17 20 00 00 	cmpb   $0x0,0x2017a9(%rip)        # 6022f0 <completed.6108>
  400b47:	75 11                	jne    400b5a <__do_global_dtors_aux+0x1a>
  400b49:	55                   	push   %rbp
  400b4a:	48 89 e5             	mov    %rsp,%rbp
  400b4d:	e8 7e ff ff ff       	callq  400ad0 <deregister_tm_clones>
  400b52:	5d                   	pop    %rbp
  400b53:	c6 05 96 17 20 00 01 	movb   $0x1,0x201796(%rip)        # 6022f0 <completed.6108>
  400b5a:	f3 c3                	repz retq 
  400b5c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400b60 <frame_dummy>:
  400b60:	48 83 3d a8 14 20 00 	cmpq   $0x0,0x2014a8(%rip)        # 602010 <__JCR_END__>
  400b67:	00 
  400b68:	74 1b                	je     400b85 <frame_dummy+0x25>
  400b6a:	b8 00 00 00 00       	mov    $0x0,%eax
  400b6f:	48 85 c0             	test   %rax,%rax
  400b72:	74 11                	je     400b85 <frame_dummy+0x25>
  400b74:	55                   	push   %rbp
  400b75:	bf 10 20 60 00       	mov    $0x602010,%edi
  400b7a:	48 89 e5             	mov    %rsp,%rbp
  400b7d:	ff d0                	callq  *%rax
  400b7f:	5d                   	pop    %rbp
  400b80:	e9 7b ff ff ff       	jmpq   400b00 <register_tm_clones>
  400b85:	e9 76 ff ff ff       	jmpq   400b00 <register_tm_clones>
  400b8a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000400b90 <save_char>:
  400b90:	8b 05 6a 17 20 00    	mov    0x20176a(%rip),%eax        # 602300 <gets_cnt>
  400b96:	3d ff 03 00 00       	cmp    $0x3ff,%eax
  400b9b:	7f 4c                	jg     400be9 <save_char+0x59>
  400b9d:	53                   	push   %rbx
  400b9e:	89 fb                	mov    %edi,%ebx
  400ba0:	8d 14 40             	lea    (%rax,%rax,2),%edx
  400ba3:	c0 eb 04             	shr    $0x4,%bl
  400ba6:	83 e7 0f             	and    $0xf,%edi
  400ba9:	83 c0 01             	add    $0x1,%eax
  400bac:	48 0f be f3          	movsbq %bl,%rsi
  400bb0:	48 63 ca             	movslq %edx,%rcx
  400bb3:	89 05 47 17 20 00    	mov    %eax,0x201747(%rip)        # 602300 <gets_cnt>
  400bb9:	0f b6 b6 30 16 40 00 	movzbl 0x401630(%rsi),%esi
  400bc0:	5b                   	pop    %rbx
  400bc1:	40 88 b1 40 23 60 00 	mov    %sil,0x602340(%rcx)
  400bc8:	0f b6 b7 30 16 40 00 	movzbl 0x401630(%rdi),%esi
  400bcf:	8d 4a 01             	lea    0x1(%rdx),%ecx
  400bd2:	83 c2 02             	add    $0x2,%edx
  400bd5:	48 63 c9             	movslq %ecx,%rcx
  400bd8:	48 63 d2             	movslq %edx,%rdx
  400bdb:	40 88 b1 40 23 60 00 	mov    %sil,0x602340(%rcx)
  400be2:	c6 82 40 23 60 00 20 	movb   $0x20,0x602340(%rdx)
  400be9:	f3 c3                	repz retq 
  400beb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000400bf0 <usage>:
  400bf0:	48 89 fe             	mov    %rdi,%rsi
  400bf3:	48 83 ec 08          	sub    $0x8,%rsp
  400bf7:	bf c0 12 40 00       	mov    $0x4012c0,%edi
  400bfc:	31 c0                	xor    %eax,%eax
  400bfe:	e8 ed fb ff ff       	callq  4007f0 <printf@plt>
  400c03:	bf 88 13 40 00       	mov    $0x401388,%edi
  400c08:	e8 d3 fb ff ff       	callq  4007e0 <puts@plt>
  400c0d:	31 ff                	xor    %edi,%edi
  400c0f:	e8 ac fc ff ff       	callq  4008c0 <exit@plt>
  400c14:	66 66 66 2e 0f 1f 84 	data32 data32 nopw %cs:0x0(%rax,%rax,1)
  400c1b:	00 00 00 00 00 

0000000000400c20 <illegalhandler>:
  400c20:	48 83 ec 08          	sub    $0x8,%rsp
  400c24:	bf b0 13 40 00       	mov    $0x4013b0,%edi
  400c29:	e8 b2 fb ff ff       	callq  4007e0 <puts@plt>
  400c2e:	bf d7 12 40 00       	mov    $0x4012d7,%edi
  400c33:	e8 a8 fb ff ff       	callq  4007e0 <puts@plt>
  400c38:	31 ff                	xor    %edi,%edi
  400c3a:	e8 81 fc ff ff       	callq  4008c0 <exit@plt>
  400c3f:	90                   	nop

0000000000400c40 <alarmhandler>:
  400c40:	48 83 ec 08          	sub    $0x8,%rsp
  400c44:	8b 35 8a 16 20 00    	mov    0x20168a(%rip),%esi        # 6022d4 <alarm_time>
  400c4a:	bf e0 13 40 00       	mov    $0x4013e0,%edi
  400c4f:	31 c0                	xor    %eax,%eax
  400c51:	e8 9a fb ff ff       	callq  4007f0 <printf@plt>
  400c56:	bf d7 12 40 00       	mov    $0x4012d7,%edi
  400c5b:	e8 80 fb ff ff       	callq  4007e0 <puts@plt>
  400c60:	31 ff                	xor    %edi,%edi
  400c62:	e8 59 fc ff ff       	callq  4008c0 <exit@plt>
  400c67:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  400c6e:	00 00 

0000000000400c70 <seghandler>:
  400c70:	48 83 ec 08          	sub    $0x8,%rsp
  400c74:	bf 18 14 40 00       	mov    $0x401418,%edi
  400c79:	e8 62 fb ff ff       	callq  4007e0 <puts@plt>
  400c7e:	bf d7 12 40 00       	mov    $0x4012d7,%edi
  400c83:	e8 58 fb ff ff       	callq  4007e0 <puts@plt>
  400c88:	31 ff                	xor    %edi,%edi
  400c8a:	e8 31 fc ff ff       	callq  4008c0 <exit@plt>
  400c8f:	90                   	nop

0000000000400c90 <bushandler>:
  400c90:	48 83 ec 08          	sub    $0x8,%rsp
  400c94:	bf 40 14 40 00       	mov    $0x401440,%edi
  400c99:	e8 42 fb ff ff       	callq  4007e0 <puts@plt>
  400c9e:	bf d7 12 40 00       	mov    $0x4012d7,%edi
  400ca3:	e8 38 fb ff ff       	callq  4007e0 <puts@plt>
  400ca8:	31 ff                	xor    %edi,%edi
  400caa:	e8 11 fc ff ff       	callq  4008c0 <exit@plt>
  400caf:	90                   	nop

0000000000400cb0 <Gets>:
  400cb0:	41 56                	push   %r14
  400cb2:	8b 05 70 16 20 00    	mov    0x201670(%rip),%eax        # 602328 <hexformat>
  400cb8:	c7 05 3e 16 20 00 00 	movl   $0x0,0x20163e(%rip)        # 602300 <gets_cnt>
  400cbf:	00 00 00 
  400cc2:	41 55                	push   %r13
  400cc4:	49 89 fd             	mov    %rdi,%r13
  400cc7:	85 c0                	test   %eax,%eax
  400cc9:	41 54                	push   %r12
  400ccb:	55                   	push   %rbp
  400ccc:	48 89 fd             	mov    %rdi,%rbp
  400ccf:	53                   	push   %rbx
  400cd0:	74 72                	je     400d44 <Gets+0x94>
  400cd2:	45 31 f6             	xor    %r14d,%r14d
  400cd5:	41 bc 01 00 00 00    	mov    $0x1,%r12d
  400cdb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  400ce0:	48 8b 3d 51 16 20 00 	mov    0x201651(%rip),%rdi        # 602338 <infile>
  400ce7:	e8 94 fb ff ff       	callq  400880 <_IO_getc@plt>
  400cec:	83 f8 ff             	cmp    $0xffffffff,%eax
  400cef:	89 c3                	mov    %eax,%ebx
  400cf1:	74 62                	je     400d55 <Gets+0xa5>
  400cf3:	83 f8 0a             	cmp    $0xa,%eax
  400cf6:	74 5d                	je     400d55 <Gets+0xa5>
  400cf8:	e8 e3 fb ff ff       	callq  4008e0 <__ctype_b_loc@plt>
  400cfd:	48 8b 10             	mov    (%rax),%rdx
  400d00:	48 63 cb             	movslq %ebx,%rcx
  400d03:	f6 44 4a 01 10       	testb  $0x10,0x1(%rdx,%rcx,2)
  400d08:	74 d6                	je     400ce0 <Gets+0x30>
  400d0a:	8d 43 d0             	lea    -0x30(%rbx),%eax
  400d0d:	83 f8 09             	cmp    $0x9,%eax
  400d10:	76 0f                	jbe    400d21 <Gets+0x71>
  400d12:	8d 53 bf             	lea    -0x41(%rbx),%edx
  400d15:	8d 43 c9             	lea    -0x37(%rbx),%eax
  400d18:	83 eb 57             	sub    $0x57,%ebx
  400d1b:	83 fa 05             	cmp    $0x5,%edx
  400d1e:	0f 47 c3             	cmova  %ebx,%eax
  400d21:	45 85 e4             	test   %r12d,%r12d
  400d24:	74 5a                	je     400d80 <Gets+0xd0>
  400d26:	41 89 c6             	mov    %eax,%r14d
  400d29:	45 31 e4             	xor    %r12d,%r12d
  400d2c:	eb b2                	jmp    400ce0 <Gets+0x30>
  400d2e:	66 90                	xchg   %ax,%ax
  400d30:	83 f8 0a             	cmp    $0xa,%eax
  400d33:	74 20                	je     400d55 <Gets+0xa5>
  400d35:	88 45 00             	mov    %al,0x0(%rbp)
  400d38:	0f be f8             	movsbl %al,%edi
  400d3b:	48 83 c5 01          	add    $0x1,%rbp
  400d3f:	e8 4c fe ff ff       	callq  400b90 <save_char>
  400d44:	48 8b 3d ed 15 20 00 	mov    0x2015ed(%rip),%rdi        # 602338 <infile>
  400d4b:	e8 30 fb ff ff       	callq  400880 <_IO_getc@plt>
  400d50:	83 f8 ff             	cmp    $0xffffffff,%eax
  400d53:	75 db                	jne    400d30 <Gets+0x80>
  400d55:	c6 45 00 00          	movb   $0x0,0x0(%rbp)
  400d59:	8b 05 a1 15 20 00    	mov    0x2015a1(%rip),%eax        # 602300 <gets_cnt>
  400d5f:	5b                   	pop    %rbx
  400d60:	5d                   	pop    %rbp
  400d61:	8d 04 40             	lea    (%rax,%rax,2),%eax
  400d64:	41 5c                	pop    %r12
  400d66:	48 98                	cltq   
  400d68:	c6 80 40 23 60 00 00 	movb   $0x0,0x602340(%rax)
  400d6f:	4c 89 e8             	mov    %r13,%rax
  400d72:	41 5d                	pop    %r13
  400d74:	41 5e                	pop    %r14
  400d76:	c3                   	retq   
  400d77:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  400d7e:	00 00 
  400d80:	44 89 f2             	mov    %r14d,%edx
  400d83:	41 b4 01             	mov    $0x1,%r12b
  400d86:	c1 e2 04             	shl    $0x4,%edx
  400d89:	01 d0                	add    %edx,%eax
  400d8b:	88 45 00             	mov    %al,0x0(%rbp)
  400d8e:	0f be f8             	movsbl %al,%edi
  400d91:	48 83 c5 01          	add    $0x1,%rbp
  400d95:	e8 f6 fd ff ff       	callq  400b90 <save_char>
  400d9a:	e9 41 ff ff ff       	jmpq   400ce0 <Gets+0x30>
  400d9f:	90                   	nop

0000000000400da0 <getbuf>:
  400da0:	55                   	push   %rbp
  400da1:	48 89 e5             	mov    %rsp,%rbp
  400da4:	48 83 ec 30          	sub    $0x30,%rsp
  400da8:	48 8d 7d d0          	lea    -0x30(%rbp),%rdi
  400dac:	e8 ff fe ff ff       	callq  400cb0 <Gets>
  400db1:	48 ba cd cc cc cc cc 	movabs $0xcccccccccccccccd,%rdx
  400db8:	cc cc cc 
  400dbb:	48 89 c1             	mov    %rax,%rcx
  400dbe:	48 f7 e2             	mul    %rdx
  400dc1:	48 c1 ea 05          	shr    $0x5,%rdx
  400dc5:	48 8d 04 92          	lea    (%rdx,%rdx,4),%rax
  400dc9:	48 89 ca             	mov    %rcx,%rdx
  400dcc:	48 c1 e0 03          	shl    $0x3,%rax
  400dd0:	48 29 c2             	sub    %rax,%rdx
  400dd3:	b8 24 00 00 00       	mov    $0x24,%eax
  400dd8:	48 83 fa 24          	cmp    $0x24,%rdx
  400ddc:	48 0f 43 c2          	cmovae %rdx,%rax
  400de0:	31 c9                	xor    %ecx,%ecx
  400de2:	48 83 c0 1e          	add    $0x1e,%rax
  400de6:	48 83 e0 f0          	and    $0xfffffffffffffff0,%rax
  400dea:	48 29 c4             	sub    %rax,%rsp
  400ded:	4c 8d 44 24 0f       	lea    0xf(%rsp),%r8
  400df2:	49 83 e0 f0          	and    $0xfffffffffffffff0,%r8
  400df6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  400dfd:	00 00 00 
  400e00:	0f b6 7c 0d d0       	movzbl -0x30(%rbp,%rcx,1),%edi
  400e05:	49 8d 34 08          	lea    (%r8,%rcx,1),%rsi
  400e09:	48 83 c1 01          	add    $0x1,%rcx
  400e0d:	48 83 f9 24          	cmp    $0x24,%rcx
  400e11:	40 88 3e             	mov    %dil,(%rsi)
  400e14:	75 ea                	jne    400e00 <getbuf+0x60>
  400e16:	48 89 d0             	mov    %rdx,%rax
  400e19:	c9                   	leaveq 
  400e1a:	c3                   	retq   
  400e1b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000400e20 <entry_check>:
  400e20:	89 3d 8a 14 20 00    	mov    %edi,0x20148a(%rip)        # 6022b0 <check_level>
  400e26:	c3                   	retq   
  400e27:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  400e2e:	00 00 

0000000000400e30 <validate>:
  400e30:	48 83 3d e0 14 20 00 	cmpq   $0x0,0x2014e0(%rip)        # 602318 <team>
  400e37:	00 
  400e38:	0f 84 82 00 00 00    	je     400ec0 <validate+0x90>
  400e3e:	83 ff 04             	cmp    $0x4,%edi
  400e41:	77 5d                	ja     400ea0 <validate+0x70>
  400e43:	3b 3d 67 14 20 00    	cmp    0x201467(%rip),%edi        # 6022b0 <check_level>
  400e49:	75 35                	jne    400e80 <validate+0x50>
  400e4b:	48 63 d7             	movslq %edi,%rdx
  400e4e:	c7 05 b8 14 20 00 01 	movl   $0x1,0x2014b8(%rip)        # 602310 <success>
  400e55:	00 00 00 
  400e58:	8b 04 95 c0 22 60 00 	mov    0x6022c0(,%rdx,4),%eax
  400e5f:	83 e8 01             	sub    $0x1,%eax
  400e62:	85 c0                	test   %eax,%eax
  400e64:	89 04 95 c0 22 60 00 	mov    %eax,0x6022c0(,%rdx,4)
  400e6b:	7f 43                	jg     400eb0 <validate+0x80>
  400e6d:	8b 15 a1 14 20 00    	mov    0x2014a1(%rip),%edx        # 602314 <grade>
  400e73:	85 d2                	test   %edx,%edx
  400e75:	75 19                	jne    400e90 <validate+0x60>
  400e77:	f3 c3                	repz retq 
  400e79:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  400e80:	bf b8 14 40 00       	mov    $0x4014b8,%edi
  400e85:	e9 56 f9 ff ff       	jmpq   4007e0 <puts@plt>
  400e8a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  400e90:	89 fe                	mov    %edi,%esi
  400e92:	31 c0                	xor    %eax,%eax
  400e94:	bf f8 12 40 00       	mov    $0x4012f8,%edi
  400e99:	e9 52 f9 ff ff       	jmpq   4007f0 <printf@plt>
  400e9e:	66 90                	xchg   %ax,%ax
  400ea0:	bf 90 14 40 00       	mov    $0x401490,%edi
  400ea5:	e9 36 f9 ff ff       	jmpq   4007e0 <puts@plt>
  400eaa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  400eb0:	bf ed 12 40 00       	mov    $0x4012ed,%edi
  400eb5:	e9 26 f9 ff ff       	jmpq   4007e0 <puts@plt>
  400eba:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  400ec0:	bf 60 14 40 00       	mov    $0x401460,%edi
  400ec5:	e9 16 f9 ff ff       	jmpq   4007e0 <puts@plt>
  400eca:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000400ed0 <test>:
  400ed0:	55                   	push   %rbp
  400ed1:	b9 ef be ad de       	mov    $0xdeadbeef,%ecx
  400ed6:	31 c0                	xor    %eax,%eax
  400ed8:	48 89 e5             	mov    %rsp,%rbp
  400edb:	53                   	push   %rbx
  400edc:	48 83 ec 18          	sub    $0x18,%rsp
  400ee0:	48 89 4d e8          	mov    %rcx,-0x18(%rbp)
  400ee4:	c7 05 c2 13 20 00 03 	movl   $0x3,0x2013c2(%rip)        # 6022b0 <check_level>
  400eeb:	00 00 00 
  400eee:	e8 ad fe ff ff       	callq  400da0 <getbuf>
  400ef3:	48 83 f8 28          	cmp    $0x28,%rax
  400ef7:	76 47                	jbe    400f40 <test+0x70>
  400ef9:	48 8b 5d e8          	mov    -0x18(%rbp),%rbx
  400efd:	ba ef be ad de       	mov    $0xdeadbeef,%edx
  400f02:	c7 05 a4 13 20 00 03 	movl   $0x3,0x2013a4(%rip)        # 6022b0 <check_level>
  400f09:	00 00 00 
  400f0c:	48 39 d3             	cmp    %rdx,%rbx
  400f0f:	75 1f                	jne    400f30 <test+0x60>
  400f11:	48 3b 05 08 14 20 00 	cmp    0x201408(%rip),%rax        # 602320 <cookie>
  400f18:	48 89 c6             	mov    %rax,%rsi
  400f1b:	74 33                	je     400f50 <test+0x80>
  400f1d:	bf 08 13 40 00       	mov    $0x401308,%edi
  400f22:	31 c0                	xor    %eax,%eax
  400f24:	e8 c7 f8 ff ff       	callq  4007f0 <printf@plt>
  400f29:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
  400f2d:	c9                   	leaveq 
  400f2e:	c3                   	retq   
  400f2f:	90                   	nop
  400f30:	bf f8 14 40 00       	mov    $0x4014f8,%edi
  400f35:	e8 a6 f8 ff ff       	callq  4007e0 <puts@plt>
  400f3a:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
  400f3e:	c9                   	leaveq 
  400f3f:	c3                   	retq   
  400f40:	48 8d 50 1e          	lea    0x1e(%rax),%rdx
  400f44:	48 83 e2 f0          	and    $0xfffffffffffffff0,%rdx
  400f48:	48 29 d4             	sub    %rdx,%rsp
  400f4b:	eb ac                	jmp    400ef9 <test+0x29>
  400f4d:	0f 1f 00             	nopl   (%rax)
  400f50:	31 c0                	xor    %eax,%eax
  400f52:	bf 28 15 40 00       	mov    $0x401528,%edi
  400f57:	e8 94 f8 ff ff       	callq  4007f0 <printf@plt>
  400f5c:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  400f60:	48 39 d8             	cmp    %rbx,%rax
  400f63:	74 0a                	je     400f6f <test+0x9f>
  400f65:	bf f8 14 40 00       	mov    $0x4014f8,%edi
  400f6a:	e8 71 f8 ff ff       	callq  4007e0 <puts@plt>
  400f6f:	bf 03 00 00 00       	mov    $0x3,%edi
  400f74:	e8 b7 fe ff ff       	callq  400e30 <validate>
  400f79:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
  400f7d:	c9                   	leaveq 
  400f7e:	c3                   	retq   
  400f7f:	90                   	nop

0000000000400f80 <launch.isra.1>:
  400f80:	55                   	push   %rbp
  400f81:	be f4 00 00 00       	mov    $0xf4,%esi
  400f86:	48 89 e5             	mov    %rsp,%rbp
  400f89:	48 83 ec 40          	sub    $0x40,%rsp
  400f8d:	48 8d 45 c0          	lea    -0x40(%rbp),%rax
  400f91:	25 f8 3f 00 00       	and    $0x3ff8,%eax
  400f96:	01 f8                	add    %edi,%eax
  400f98:	48 63 d0             	movslq %eax,%rdx
  400f9b:	48 8d 42 1e          	lea    0x1e(%rdx),%rax
  400f9f:	48 83 e0 f0          	and    $0xfffffffffffffff0,%rax
  400fa3:	48 29 c4             	sub    %rax,%rsp
  400fa6:	48 8d 7c 24 0f       	lea    0xf(%rsp),%rdi
  400fab:	48 83 e7 f0          	and    $0xfffffffffffffff0,%rdi
  400faf:	e8 4c f8 ff ff       	callq  400800 <memset@plt>
  400fb4:	44 8b 05 71 13 20 00 	mov    0x201371(%rip),%r8d        # 60232c <quiet>
  400fbb:	45 85 c0             	test   %r8d,%r8d
  400fbe:	75 16                	jne    400fd6 <launch.isra.1+0x56>
  400fc0:	8b 3d 62 13 20 00    	mov    0x201362(%rip),%edi        # 602328 <hexformat>
  400fc6:	85 ff                	test   %edi,%edi
  400fc8:	74 46                	je     401010 <launch.isra.1+0x90>
  400fca:	bf 25 13 40 00       	mov    $0x401325,%edi
  400fcf:	31 c0                	xor    %eax,%eax
  400fd1:	e8 1a f8 ff ff       	callq  4007f0 <printf@plt>
  400fd6:	31 c0                	xor    %eax,%eax
  400fd8:	e8 f3 fe ff ff       	callq  400ed0 <test>
  400fdd:	8b 35 2d 13 20 00    	mov    0x20132d(%rip),%esi        # 602310 <success>
  400fe3:	85 f6                	test   %esi,%esi
  400fe5:	74 09                	je     400ff0 <launch.isra.1+0x70>
  400fe7:	c9                   	leaveq 
  400fe8:	c3                   	retq   
  400fe9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  400ff0:	bf d7 12 40 00       	mov    $0x4012d7,%edi
  400ff5:	e8 e6 f7 ff ff       	callq  4007e0 <puts@plt>
  400ffa:	c7 05 0c 13 20 00 00 	movl   $0x0,0x20130c(%rip)        # 602310 <success>
  401001:	00 00 00 
  401004:	c9                   	leaveq 
  401005:	c3                   	retq   
  401006:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40100d:	00 00 00 
  401010:	bf 37 13 40 00       	mov    $0x401337,%edi
  401015:	31 c0                	xor    %eax,%eax
  401017:	e8 d4 f7 ff ff       	callq  4007f0 <printf@plt>
  40101c:	eb b8                	jmp    400fd6 <launch.isra.1+0x56>
  40101e:	66 90                	xchg   %ax,%ax

0000000000401020 <bang>:
  401020:	48 83 ec 08          	sub    $0x8,%rsp
  401024:	48 8b 35 dd 12 20 00 	mov    0x2012dd(%rip),%rsi        # 602308 <global_value>
  40102b:	48 3b 35 ee 12 20 00 	cmp    0x2012ee(%rip),%rsi        # 602320 <cookie>
  401032:	c7 05 74 12 20 00 02 	movl   $0x2,0x201274(%rip)        # 6022b0 <check_level>
  401039:	00 00 00 
  40103c:	74 13                	je     401051 <bang+0x31>
  40103e:	bf 70 15 40 00       	mov    $0x401570,%edi
  401043:	31 c0                	xor    %eax,%eax
  401045:	e8 a6 f7 ff ff       	callq  4007f0 <printf@plt>
  40104a:	31 ff                	xor    %edi,%edi
  40104c:	e8 6f f8 ff ff       	callq  4008c0 <exit@plt>
  401051:	bf 48 15 40 00       	mov    $0x401548,%edi
  401056:	31 c0                	xor    %eax,%eax
  401058:	e8 93 f7 ff ff       	callq  4007f0 <printf@plt>
  40105d:	bf 02 00 00 00       	mov    $0x2,%edi
  401062:	e8 c9 fd ff ff       	callq  400e30 <validate>
  401067:	eb e1                	jmp    40104a <bang+0x2a>
  401069:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000401070 <fizz>:
  401070:	48 83 ec 08          	sub    $0x8,%rsp
  401074:	c7 05 32 12 20 00 01 	movl   $0x1,0x201232(%rip)        # 6022b0 <check_level>
  40107b:	00 00 00 
  40107e:	48 8b 74 24 10       	mov    0x10(%rsp),%rsi
  401083:	48 3b 35 96 12 20 00 	cmp    0x201296(%rip),%rsi        # 602320 <cookie>
  40108a:	74 13                	je     40109f <fizz+0x2f>
  40108c:	bf b0 15 40 00       	mov    $0x4015b0,%edi
  401091:	31 c0                	xor    %eax,%eax
  401093:	e8 58 f7 ff ff       	callq  4007f0 <printf@plt>
  401098:	31 ff                	xor    %edi,%edi
  40109a:	e8 21 f8 ff ff       	callq  4008c0 <exit@plt>
  40109f:	bf 90 15 40 00       	mov    $0x401590,%edi
  4010a4:	31 c0                	xor    %eax,%eax
  4010a6:	e8 45 f7 ff ff       	callq  4007f0 <printf@plt>
  4010ab:	bf 01 00 00 00       	mov    $0x1,%edi
  4010b0:	e8 7b fd ff ff       	callq  400e30 <validate>
  4010b5:	eb e1                	jmp    401098 <fizz+0x28>
  4010b7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  4010be:	00 00 

00000000004010c0 <smoke>:
  4010c0:	48 83 ec 08          	sub    $0x8,%rsp
  4010c4:	bf 45 13 40 00       	mov    $0x401345,%edi
  4010c9:	c7 05 dd 11 20 00 00 	movl   $0x0,0x2011dd(%rip)        # 6022b0 <check_level>
  4010d0:	00 00 00 
  4010d3:	e8 08 f7 ff ff       	callq  4007e0 <puts@plt>
  4010d8:	31 ff                	xor    %edi,%edi
  4010da:	e8 51 fd ff ff       	callq  400e30 <validate>
  4010df:	31 ff                	xor    %edi,%edi
  4010e1:	e8 da f7 ff ff       	callq  4008c0 <exit@plt>
  4010e6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4010ed:	00 00 00 

00000000004010f0 <test_function>:
  4010f0:	f3 c3                	repz retq 
  4010f2:	66 66 66 66 66 2e 0f 	data32 data32 data32 data32 nopw %cs:0x0(%rax,%rax,1)
  4010f9:	1f 84 00 00 00 00 00 

0000000000401100 <shift_stack_and_invoke_function>:
  401100:	53                   	push   %rbx
  401101:	48 89 e0             	mov    %rsp,%rax
  401104:	48 89 c3             	mov    %rax,%rbx
  401107:	48 89 fc             	mov    %rdi,%rsp
  40110a:	31 c0                	xor    %eax,%eax
  40110c:	ff d6                	callq  *%rsi
  40110e:	48 89 dc             	mov    %rbx,%rsp
  401111:	5b                   	pop    %rbx
  401112:	c3                   	retq   
  401113:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40111a:	00 00 00 
  40111d:	0f 1f 00             	nopl   (%rax)

0000000000401120 <hash>:
  401120:	48 0f be 17          	movsbq (%rdi),%rdx
  401124:	31 c0                	xor    %eax,%eax
  401126:	84 d2                	test   %dl,%dl
  401128:	74 20                	je     40114a <hash+0x2a>
  40112a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  401130:	b9 67 00 00 00       	mov    $0x67,%ecx
  401135:	48 83 c7 01          	add    $0x1,%rdi
  401139:	48 0f af c1          	imul   %rcx,%rax
  40113d:	48 01 d0             	add    %rdx,%rax
  401140:	48 0f be 17          	movsbq (%rdi),%rdx
  401144:	84 d2                	test   %dl,%dl
  401146:	75 e8                	jne    401130 <hash+0x10>
  401148:	f3 c3                	repz retq 
  40114a:	f3 c3                	repz retq 
  40114c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000401150 <check>:
  401150:	41 54                	push   %r12
  401152:	49 89 fc             	mov    %rdi,%r12
  401155:	55                   	push   %rbp
  401156:	53                   	push   %rbx
  401157:	31 db                	xor    %ebx,%ebx
  401159:	f7 c7 00 00 00 f0    	test   $0xf0000000,%edi
  40115f:	74 3f                	je     4011a0 <check+0x50>
  401161:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  401168:	89 d9                	mov    %ebx,%ecx
  40116a:	4c 89 e5             	mov    %r12,%rbp
  40116d:	31 c0                	xor    %eax,%eax
  40116f:	48 d3 ed             	shr    %cl,%rbp
  401172:	bf 40 16 40 00       	mov    $0x401640,%edi
  401177:	81 e5 ff 00 00 00    	and    $0xff,%ebp
  40117d:	48 89 ee             	mov    %rbp,%rsi
  401180:	e8 6b f6 ff ff       	callq  4007f0 <printf@plt>
  401185:	48 83 fd 0a          	cmp    $0xa,%rbp
  401189:	74 15                	je     4011a0 <check+0x50>
  40118b:	83 c3 08             	add    $0x8,%ebx
  40118e:	83 fb 40             	cmp    $0x40,%ebx
  401191:	75 d5                	jne    401168 <check+0x18>
  401193:	5b                   	pop    %rbx
  401194:	5d                   	pop    %rbp
  401195:	b8 01 00 00 00       	mov    $0x1,%eax
  40119a:	41 5c                	pop    %r12
  40119c:	c3                   	retq   
  40119d:	0f 1f 00             	nopl   (%rax)
  4011a0:	5b                   	pop    %rbx
  4011a1:	5d                   	pop    %rbp
  4011a2:	31 c0                	xor    %eax,%eax
  4011a4:	41 5c                	pop    %r12
  4011a6:	c3                   	retq   
  4011a7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  4011ae:	00 00 

00000000004011b0 <gencookie>:
  4011b0:	53                   	push   %rbx
  4011b1:	48 0f be 07          	movsbq (%rdi),%rax
  4011b5:	84 c0                	test   %al,%al
  4011b7:	74 4d                	je     401206 <gencookie+0x56>
  4011b9:	31 d2                	xor    %edx,%edx
  4011bb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  4011c0:	be 67 00 00 00       	mov    $0x67,%esi
  4011c5:	48 83 c7 01          	add    $0x1,%rdi
  4011c9:	48 0f af d6          	imul   %rsi,%rdx
  4011cd:	48 01 c2             	add    %rax,%rdx
  4011d0:	48 0f be 07          	movsbq (%rdi),%rax
  4011d4:	84 c0                	test   %al,%al
  4011d6:	75 e8                	jne    4011c0 <gencookie+0x10>
  4011d8:	89 d7                	mov    %edx,%edi
  4011da:	e8 61 f6 ff ff       	callq  400840 <srand@plt>
  4011df:	90                   	nop
  4011e0:	e8 eb f6 ff ff       	callq  4008d0 <rand@plt>
  4011e5:	89 c3                	mov    %eax,%ebx
  4011e7:	48 c1 e3 20          	shl    $0x20,%rbx
  4011eb:	e8 e0 f6 ff ff       	callq  4008d0 <rand@plt>
  4011f0:	48 98                	cltq   
  4011f2:	48 09 c3             	or     %rax,%rbx
  4011f5:	48 89 df             	mov    %rbx,%rdi
  4011f8:	e8 53 ff ff ff       	callq  401150 <check>
  4011fd:	85 c0                	test   %eax,%eax
  4011ff:	74 df                	je     4011e0 <gencookie+0x30>
  401201:	48 89 d8             	mov    %rbx,%rax
  401204:	5b                   	pop    %rbx
  401205:	c3                   	retq   
  401206:	31 ff                	xor    %edi,%edi
  401208:	eb d0                	jmp    4011da <gencookie+0x2a>
  40120a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000401210 <__libc_csu_init>:
  401210:	48 89 6c 24 d8       	mov    %rbp,-0x28(%rsp)
  401215:	4c 89 64 24 e0       	mov    %r12,-0x20(%rsp)
  40121a:	48 8d 2d e7 0d 20 00 	lea    0x200de7(%rip),%rbp        # 602008 <__init_array_end>
  401221:	4c 8d 25 d8 0d 20 00 	lea    0x200dd8(%rip),%r12        # 602000 <__frame_dummy_init_array_entry>
  401228:	48 89 5c 24 d0       	mov    %rbx,-0x30(%rsp)
  40122d:	4c 89 6c 24 e8       	mov    %r13,-0x18(%rsp)
  401232:	4c 89 74 24 f0       	mov    %r14,-0x10(%rsp)
  401237:	4c 89 7c 24 f8       	mov    %r15,-0x8(%rsp)
  40123c:	48 83 ec 38          	sub    $0x38,%rsp
  401240:	4c 29 e5             	sub    %r12,%rbp
  401243:	41 89 ff             	mov    %edi,%r15d
  401246:	49 89 f6             	mov    %rsi,%r14
  401249:	48 c1 fd 03          	sar    $0x3,%rbp
  40124d:	49 89 d5             	mov    %rdx,%r13
  401250:	31 db                	xor    %ebx,%ebx
  401252:	e8 59 f5 ff ff       	callq  4007b0 <_init>
  401257:	48 85 ed             	test   %rbp,%rbp
  40125a:	74 1a                	je     401276 <__libc_csu_init+0x66>
  40125c:	0f 1f 40 00          	nopl   0x0(%rax)
  401260:	4c 89 ea             	mov    %r13,%rdx
  401263:	4c 89 f6             	mov    %r14,%rsi
  401266:	44 89 ff             	mov    %r15d,%edi
  401269:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
  40126d:	48 83 c3 01          	add    $0x1,%rbx
  401271:	48 39 eb             	cmp    %rbp,%rbx
  401274:	75 ea                	jne    401260 <__libc_csu_init+0x50>
  401276:	48 8b 5c 24 08       	mov    0x8(%rsp),%rbx
  40127b:	48 8b 6c 24 10       	mov    0x10(%rsp),%rbp
  401280:	4c 8b 64 24 18       	mov    0x18(%rsp),%r12
  401285:	4c 8b 6c 24 20       	mov    0x20(%rsp),%r13
  40128a:	4c 8b 74 24 28       	mov    0x28(%rsp),%r14
  40128f:	4c 8b 7c 24 30       	mov    0x30(%rsp),%r15
  401294:	48 83 c4 38          	add    $0x38,%rsp
  401298:	c3                   	retq   
  401299:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000004012a0 <__libc_csu_fini>:
  4012a0:	f3 c3                	repz retq 
  4012a2:	66 90                	xchg   %ax,%ax

Disassembly of section .fini:

00000000004012a4 <_fini>:
  4012a4:	48 83 ec 08          	sub    $0x8,%rsp
  4012a8:	48 83 c4 08          	add    $0x8,%rsp
  4012ac:	c3                   	retq   

Disassembly of section .rodata:

00000000004012b0 <_IO_stdin_used>:
  4012b0:	01 00                	add    %eax,(%rax)
  4012b2:	02 00                	add    (%rax),%al
  4012b4:	00 00                	add    %al,(%rax)
	...

00000000004012b8 <__dso_handle>:
	...
  4012c0:	55                   	push   %rbp
  4012c1:	73 61                	jae    401324 <__dso_handle+0x6c>
  4012c3:	67 65 3a 20          	cmp    %gs:(%eax),%ah
  4012c7:	25 73 20 2d 75       	and    $0x752d2073,%eax
  4012cc:	20 75 73             	and    %dh,0x73(%rbp)
  4012cf:	65                   	gs
  4012d0:	72 6e                	jb     401340 <__dso_handle+0x88>
  4012d2:	61                   	(bad)  
  4012d3:	6d                   	insl   (%dx),%es:(%rdi)
  4012d4:	65 0a 00             	or     %gs:(%rax),%al
  4012d7:	42                   	rex.X
  4012d8:	65                   	gs
  4012d9:	74 74                	je     40134f <__dso_handle+0x97>
  4012db:	65                   	gs
  4012dc:	72 20                	jb     4012fe <__dso_handle+0x46>
  4012de:	6c                   	insb   (%dx),%es:(%rdi)
  4012df:	75 63                	jne    401344 <__dso_handle+0x8c>
  4012e1:	6b 20 6e             	imul   $0x6e,(%rax),%esp
  4012e4:	65                   	gs
  4012e5:	78 74                	js     40135b <__dso_handle+0xa3>
  4012e7:	20 74 69 6d          	and    %dh,0x6d(%rcx,%rbp,2)
  4012eb:	65 00 4b 65          	add    %cl,%gs:0x65(%rbx)
  4012ef:	65                   	gs
  4012f0:	70 20                	jo     401312 <__dso_handle+0x5a>
  4012f2:	67 6f                	outsl  %ds:(%esi),(%dx)
  4012f4:	69 6e 67 00 4c 65 76 	imul   $0x76654c00,0x67(%rsi),%ebp
  4012fb:	65                   	gs
  4012fc:	6c                   	insb   (%dx),%es:(%rdi)
  4012fd:	20 25 64 20 56 41    	and    %ah,0x41562064(%rip)        # 41963367 <_end+0x4136041f>
  401303:	4c                   	rex.WR
  401304:	49                   	rex.WB
  401305:	44 0a 00             	or     (%rax),%r8b
  401308:	44 75 64             	rex.R jne 40136f <__dso_handle+0xb7>
  40130b:	3a 20                	cmp    (%rax),%ah
  40130d:	67                   	addr32
  40130e:	65                   	gs
  40130f:	74 62                	je     401373 <__dso_handle+0xbb>
  401311:	75 66                	jne    401379 <__dso_handle+0xc1>
  401313:	20 72 65             	and    %dh,0x65(%rdx)
  401316:	74 75                	je     40138d <__dso_handle+0xd5>
  401318:	72 6e                	jb     401388 <__dso_handle+0xd0>
  40131a:	65 64 20 30          	gs and %dh,%fs:%gs:(%rax)
  40131e:	78 25                	js     401345 <__dso_handle+0x8d>
  401320:	6c                   	insb   (%dx),%es:(%rdi)
  401321:	6c                   	insb   (%dx),%es:(%rdi)
  401322:	78 0a                	js     40132e <__dso_handle+0x76>
  401324:	00 54 79 70          	add    %dl,0x70(%rcx,%rdi,2)
  401328:	65 20 48 65          	and    %cl,%gs:0x65(%rax)
  40132c:	78 20                	js     40134e <__dso_handle+0x96>
  40132e:	73 74                	jae    4013a4 <__dso_handle+0xec>
  401330:	72 69                	jb     40139b <__dso_handle+0xe3>
  401332:	6e                   	outsb  %ds:(%rsi),(%dx)
  401333:	67 3a 20             	cmp    (%eax),%ah
  401336:	00 54 79 70          	add    %dl,0x70(%rcx,%rdi,2)
  40133a:	65 20 73 74          	and    %dh,%gs:0x74(%rbx)
  40133e:	72 69                	jb     4013a9 <__dso_handle+0xf1>
  401340:	6e                   	outsb  %ds:(%rsi),(%dx)
  401341:	67 3a 20             	cmp    (%eax),%ah
  401344:	00 53 6d             	add    %dl,0x6d(%rbx)
  401347:	6f                   	outsl  %ds:(%rsi),(%dx)
  401348:	6b 65 21 3a          	imul   $0x3a,0x21(%rbp),%esp
  40134c:	20 59 6f             	and    %bl,0x6f(%rcx)
  40134f:	75 20                	jne    401371 <__dso_handle+0xb9>
  401351:	63 61 6c             	movslq 0x6c(%rcx),%esp
  401354:	6c                   	insb   (%dx),%es:(%rdi)
  401355:	65 64 20 73 6d       	gs and %dh,%fs:%gs:0x6d(%rbx)
  40135a:	6f                   	outsl  %ds:(%rsi),(%dx)
  40135b:	6b 65 28 29          	imul   $0x29,0x28(%rbp),%esp
  40135f:	00 55 73             	add    %dl,0x73(%rbp)
  401362:	65                   	gs
  401363:	72 6e                	jb     4013d3 <__dso_handle+0x11b>
  401365:	61                   	(bad)  
  401366:	6d                   	insl   (%dx),%es:(%rdi)
  401367:	65 3a 20             	cmp    %gs:(%rax),%ah
  40136a:	25 73 0a 00 43       	and    $0x43000a73,%eax
  40136f:	6f                   	outsl  %ds:(%rsi),(%dx)
  401370:	6f                   	outsl  %ds:(%rsi),(%dx)
  401371:	6b 69 65 3a          	imul   $0x3a,0x65(%rcx),%ebp
  401375:	20 30                	and    %dh,(%rax)
  401377:	78 25                	js     40139e <__dso_handle+0xe6>
  401379:	6c                   	insb   (%dx),%es:(%rdi)
  40137a:	6c                   	insb   (%dx),%es:(%rdi)
  40137b:	78 0a                	js     401387 <__dso_handle+0xcf>
  40137d:	00 67 74             	add    %ah,0x74(%rdi)
  401380:	3a 75 3a             	cmp    0x3a(%rbp),%dh
  401383:	00 00                	add    %al,(%rax)
  401385:	00 00                	add    %al,(%rax)
  401387:	00 09                	add    %cl,(%rcx)
  401389:	2d 75 20 75 73       	sub    $0x73752075,%eax
  40138e:	65                   	gs
  40138f:	72 6e                	jb     4013ff <__dso_handle+0x147>
  401391:	61                   	(bad)  
  401392:	6d                   	insl   (%dx),%es:(%rdi)
  401393:	65 3a 20             	cmp    %gs:(%rax),%ah
  401396:	20 20                	and    %ah,(%rax)
  401398:	53                   	push   %rbx
  401399:	70 65                	jo     401400 <__dso_handle+0x148>
  40139b:	63 69 66             	movslq 0x66(%rcx),%ebp
  40139e:	79 20                	jns    4013c0 <__dso_handle+0x108>
  4013a0:	75 73                	jne    401415 <__dso_handle+0x15d>
  4013a2:	65                   	gs
  4013a3:	72 6e                	jb     401413 <__dso_handle+0x15b>
  4013a5:	61                   	(bad)  
  4013a6:	6d                   	insl   (%dx),%es:(%rdi)
  4013a7:	65 00 00             	add    %al,%gs:(%rax)
  4013aa:	00 00                	add    %al,(%rax)
  4013ac:	00 00                	add    %al,(%rax)
  4013ae:	00 00                	add    %al,(%rax)
  4013b0:	4f 6f                	rex.WRXB outsl %ds:(%rsi),(%dx)
  4013b2:	70 73                	jo     401427 <__dso_handle+0x16f>
  4013b4:	21 3a                	and    %edi,(%rdx)
  4013b6:	20 59 6f             	and    %bl,0x6f(%rcx)
  4013b9:	75 20                	jne    4013db <__dso_handle+0x123>
  4013bb:	65                   	gs
  4013bc:	78 65                	js     401423 <__dso_handle+0x16b>
  4013be:	63 75 74             	movslq 0x74(%rbp),%esi
  4013c1:	65 64 20 61 6e       	gs and %ah,%fs:%gs:0x6e(%rcx)
  4013c6:	20 69 6c             	and    %ch,0x6c(%rcx)
  4013c9:	6c                   	insb   (%dx),%es:(%rdi)
  4013ca:	65                   	gs
  4013cb:	67 61                	addr32 (bad) 
  4013cd:	6c                   	insb   (%dx),%es:(%rdi)
  4013ce:	20 69 6e             	and    %ch,0x6e(%rcx)
  4013d1:	73 74                	jae    401447 <__dso_handle+0x18f>
  4013d3:	72 75                	jb     40144a <__dso_handle+0x192>
  4013d5:	63 74 69 6f          	movslq 0x6f(%rcx,%rbp,2),%esi
  4013d9:	6e                   	outsb  %ds:(%rsi),(%dx)
  4013da:	00 00                	add    %al,(%rax)
  4013dc:	00 00                	add    %al,(%rax)
  4013de:	00 00                	add    %al,(%rax)
  4013e0:	44                   	rex.R
  4013e1:	65                   	gs
  4013e2:	61                   	(bad)  
  4013e3:	64 21 3a             	and    %edi,%fs:(%rdx)
  4013e6:	20 67 65             	and    %ah,0x65(%rdi)
  4013e9:	74 62                	je     40144d <__dso_handle+0x195>
  4013eb:	75 66                	jne    401453 <__dso_handle+0x19b>
  4013ed:	20 64 69 64          	and    %ah,0x64(%rcx,%rbp,2)
  4013f1:	6e                   	outsb  %ds:(%rsi),(%dx)
  4013f2:	27                   	(bad)  
  4013f3:	74 20                	je     401415 <__dso_handle+0x15d>
  4013f5:	63 6f 6d             	movslq 0x6d(%rdi),%ebp
  4013f8:	70 6c                	jo     401466 <__dso_handle+0x1ae>
  4013fa:	65                   	gs
  4013fb:	74 65                	je     401462 <__dso_handle+0x1aa>
  4013fd:	20 77 69             	and    %dh,0x69(%rdi)
  401400:	74 68                	je     40146a <__dso_handle+0x1b2>
  401402:	69 6e 20 25 64 20 73 	imul   $0x73206425,0x20(%rsi),%ebp
  401409:	65 63 6f 6e          	movslq %gs:0x6e(%rdi),%ebp
  40140d:	64                   	fs
  40140e:	73 0a                	jae    40141a <__dso_handle+0x162>
	...
  401418:	4f 75 63             	rex.WRXB jne 40147e <__dso_handle+0x1c6>
  40141b:	68 21 3a 20 59       	pushq  $0x59203a21
  401420:	6f                   	outsl  %ds:(%rsi),(%dx)
  401421:	75 20                	jne    401443 <__dso_handle+0x18b>
  401423:	63 61 75             	movslq 0x75(%rcx),%esp
  401426:	73 65                	jae    40148d <__dso_handle+0x1d5>
  401428:	64 20 61 20          	and    %ah,%fs:0x20(%rcx)
  40142c:	73 65                	jae    401493 <__dso_handle+0x1db>
  40142e:	67 6d                	insl   (%dx),%es:(%edi)
  401430:	65 6e                	outsb  %gs:(%rsi),(%dx)
  401432:	74 61                	je     401495 <__dso_handle+0x1dd>
  401434:	74 69                	je     40149f <__dso_handle+0x1e7>
  401436:	6f                   	outsl  %ds:(%rsi),(%dx)
  401437:	6e                   	outsb  %ds:(%rsi),(%dx)
  401438:	20 66 61             	and    %ah,0x61(%rsi)
  40143b:	75 6c                	jne    4014a9 <__dso_handle+0x1f1>
  40143d:	74 21                	je     401460 <__dso_handle+0x1a8>
  40143f:	00 43 72             	add    %al,0x72(%rbx)
  401442:	61                   	(bad)  
  401443:	73 68                	jae    4014ad <__dso_handle+0x1f5>
  401445:	21 3a                	and    %edi,(%rdx)
  401447:	20 59 6f             	and    %bl,0x6f(%rcx)
  40144a:	75 20                	jne    40146c <__dso_handle+0x1b4>
  40144c:	63 61 75             	movslq 0x75(%rcx),%esp
  40144f:	73 65                	jae    4014b6 <__dso_handle+0x1fe>
  401451:	64 20 61 20          	and    %ah,%fs:0x20(%rcx)
  401455:	62                   	(bad)  
  401456:	75 73                	jne    4014cb <__dso_handle+0x213>
  401458:	20 65 72             	and    %ah,0x72(%rbp)
  40145b:	72 6f                	jb     4014cc <__dso_handle+0x214>
  40145d:	72 21                	jb     401480 <__dso_handle+0x1c8>
  40145f:	00 4e 6f             	add    %cl,0x6f(%rsi)
  401462:	20 75 73             	and    %dh,0x73(%rbp)
  401465:	65                   	gs
  401466:	72 6e                	jb     4014d6 <__dso_handle+0x21e>
  401468:	61                   	(bad)  
  401469:	6d                   	insl   (%dx),%es:(%rdi)
  40146a:	65 20 69 6e          	and    %ch,%gs:0x6e(%rcx)
  40146e:	64 69 63 61 74 65 64 	imul   $0x2e646574,%fs:0x61(%rbx),%esp
  401475:	2e 
  401476:	20 20                	and    %ah,(%rax)
  401478:	52                   	push   %rdx
  401479:	65                   	gs
  40147a:	73 75                	jae    4014f1 <__dso_handle+0x239>
  40147c:	6c                   	insb   (%dx),%es:(%rdi)
  40147d:	74 73                	je     4014f2 <__dso_handle+0x23a>
  40147f:	20 6e 6f             	and    %ch,0x6f(%rsi)
  401482:	74 20                	je     4014a4 <__dso_handle+0x1ec>
  401484:	76 61                	jbe    4014e7 <__dso_handle+0x22f>
  401486:	6c                   	insb   (%dx),%es:(%rdi)
  401487:	69 64 61 74 65 64 00 	imul   $0x6465,0x74(%rcx,%riz,2),%esp
  40148e:	00 
  40148f:	00 49 6e             	add    %cl,0x6e(%rcx)
  401492:	76 61                	jbe    4014f5 <__dso_handle+0x23d>
  401494:	6c                   	insb   (%dx),%es:(%rdi)
  401495:	69 64 20 6c 65 76 65 	imul   $0x6c657665,0x6c(%rax,%riz,1),%esp
  40149c:	6c 
  40149d:	2e 20 20             	and    %ah,%cs:(%rax)
  4014a0:	52                   	push   %rdx
  4014a1:	65                   	gs
  4014a2:	73 75                	jae    401519 <__dso_handle+0x261>
  4014a4:	6c                   	insb   (%dx),%es:(%rdi)
  4014a5:	74 73                	je     40151a <__dso_handle+0x262>
  4014a7:	20 6e 6f             	and    %ch,0x6f(%rsi)
  4014aa:	74 20                	je     4014cc <__dso_handle+0x214>
  4014ac:	76 61                	jbe    40150f <__dso_handle+0x257>
  4014ae:	6c                   	insb   (%dx),%es:(%rdi)
  4014af:	69 64 61 74 65 64 00 	imul   $0x6465,0x74(%rcx,%riz,2),%esp
  4014b6:	00 
  4014b7:	00 49 6d             	add    %cl,0x6d(%rcx)
  4014ba:	70 72                	jo     40152e <__dso_handle+0x276>
  4014bc:	6f                   	outsl  %ds:(%rsi),(%dx)
  4014bd:	70 65                	jo     401524 <__dso_handle+0x26c>
  4014bf:	72 20                	jb     4014e1 <__dso_handle+0x229>
  4014c1:	63 61 6c             	movslq 0x6c(%rcx),%esp
  4014c4:	6c                   	insb   (%dx),%es:(%rdi)
  4014c5:	20 74 6f 20          	and    %dh,0x20(%rdi,%rbp,2)
  4014c9:	76 61                	jbe    40152c <__dso_handle+0x274>
  4014cb:	6c                   	insb   (%dx),%es:(%rdi)
  4014cc:	69 64 61 74 65 20 66 	imul   $0x75662065,0x74(%rcx,%riz,2),%esp
  4014d3:	75 
  4014d4:	6e                   	outsb  %ds:(%rsi),(%dx)
  4014d5:	63 74 69 6f          	movslq 0x6f(%rcx,%rbp,2),%esi
  4014d9:	6e                   	outsb  %ds:(%rsi),(%dx)
  4014da:	2e 20 20             	and    %ah,%cs:(%rax)
  4014dd:	52                   	push   %rdx
  4014de:	65                   	gs
  4014df:	73 75                	jae    401556 <__dso_handle+0x29e>
  4014e1:	6c                   	insb   (%dx),%es:(%rdi)
  4014e2:	74 73                	je     401557 <__dso_handle+0x29f>
  4014e4:	20 6e 6f             	and    %ch,0x6f(%rsi)
  4014e7:	74 20                	je     401509 <__dso_handle+0x251>
  4014e9:	76 61                	jbe    40154c <__dso_handle+0x294>
  4014eb:	6c                   	insb   (%dx),%es:(%rdi)
  4014ec:	69 64 61 74 65 64 00 	imul   $0x6465,0x74(%rcx,%riz,2),%esp
  4014f3:	00 
  4014f4:	00 00                	add    %al,(%rax)
  4014f6:	00 00                	add    %al,(%rax)
  4014f8:	53                   	push   %rbx
  4014f9:	61                   	(bad)  
  4014fa:	62                   	(bad)  
  4014fb:	6f                   	outsl  %ds:(%rsi),(%dx)
  4014fc:	74 61                	je     40155f <__dso_handle+0x2a7>
  4014fe:	67 65 64 21 3a       	gs and %edi,%fs:%gs:(%edx)
  401503:	20 74 68 65          	and    %dh,0x65(%rax,%rbp,2)
  401507:	20 73 74             	and    %dh,0x74(%rbx)
  40150a:	61                   	(bad)  
  40150b:	63 6b 20             	movslq 0x20(%rbx),%ebp
  40150e:	68 61 73 20 62       	pushq  $0x62207361
  401513:	65 65 6e             	gs outsb %gs:(%rsi),(%dx)
  401516:	20 63 6f             	and    %ah,0x6f(%rbx)
  401519:	72 72                	jb     40158d <__dso_handle+0x2d5>
  40151b:	75 70                	jne    40158d <__dso_handle+0x2d5>
  40151d:	74 65                	je     401584 <__dso_handle+0x2cc>
  40151f:	64 00 00             	add    %al,%fs:(%rax)
  401522:	00 00                	add    %al,(%rax)
  401524:	00 00                	add    %al,(%rax)
  401526:	00 00                	add    %al,(%rax)
  401528:	42 6f                	rex.X outsl %ds:(%rsi),(%dx)
  40152a:	6f                   	outsl  %ds:(%rsi),(%dx)
  40152b:	6d                   	insl   (%dx),%es:(%rdi)
  40152c:	21 3a                	and    %edi,(%rdx)
  40152e:	20 67 65             	and    %ah,0x65(%rdi)
  401531:	74 62                	je     401595 <__dso_handle+0x2dd>
  401533:	75 66                	jne    40159b <__dso_handle+0x2e3>
  401535:	20 72 65             	and    %dh,0x65(%rdx)
  401538:	74 75                	je     4015af <__dso_handle+0x2f7>
  40153a:	72 6e                	jb     4015aa <__dso_handle+0x2f2>
  40153c:	65 64 20 30          	gs and %dh,%fs:%gs:(%rax)
  401540:	78 25                	js     401567 <__dso_handle+0x2af>
  401542:	6c                   	insb   (%dx),%es:(%rdi)
  401543:	6c                   	insb   (%dx),%es:(%rdi)
  401544:	78 0a                	js     401550 <__dso_handle+0x298>
  401546:	00 00                	add    %al,(%rax)
  401548:	42 61                	rex.X (bad) 
  40154a:	6e                   	outsb  %ds:(%rsi),(%dx)
  40154b:	67 21 3a             	and    %edi,(%edx)
  40154e:	20 59 6f             	and    %bl,0x6f(%rcx)
  401551:	75 20                	jne    401573 <__dso_handle+0x2bb>
  401553:	73 65                	jae    4015ba <__dso_handle+0x302>
  401555:	74 20                	je     401577 <__dso_handle+0x2bf>
  401557:	67 6c                	insb   (%dx),%es:(%edi)
  401559:	6f                   	outsl  %ds:(%rsi),(%dx)
  40155a:	62                   	(bad)  
  40155b:	61                   	(bad)  
  40155c:	6c                   	insb   (%dx),%es:(%rdi)
  40155d:	5f                   	pop    %rdi
  40155e:	76 61                	jbe    4015c1 <__dso_handle+0x309>
  401560:	6c                   	insb   (%dx),%es:(%rdi)
  401561:	75 65                	jne    4015c8 <__dso_handle+0x310>
  401563:	20 74 6f 20          	and    %dh,0x20(%rdi,%rbp,2)
  401567:	30 78 25             	xor    %bh,0x25(%rax)
  40156a:	6c                   	insb   (%dx),%es:(%rdi)
  40156b:	6c                   	insb   (%dx),%es:(%rdi)
  40156c:	78 0a                	js     401578 <__dso_handle+0x2c0>
  40156e:	00 00                	add    %al,(%rax)
  401570:	4d 69 73 66 69 72 65 	imul   $0x3a657269,0x66(%r11),%r14
  401577:	3a 
  401578:	20 67 6c             	and    %ah,0x6c(%rdi)
  40157b:	6f                   	outsl  %ds:(%rsi),(%dx)
  40157c:	62                   	(bad)  
  40157d:	61                   	(bad)  
  40157e:	6c                   	insb   (%dx),%es:(%rdi)
  40157f:	5f                   	pop    %rdi
  401580:	76 61                	jbe    4015e3 <__dso_handle+0x32b>
  401582:	6c                   	insb   (%dx),%es:(%rdi)
  401583:	75 65                	jne    4015ea <__dso_handle+0x332>
  401585:	20 3d 20 30 78 25    	and    %bh,0x25783020(%rip)        # 25b845ab <_end+0x25581663>
  40158b:	6c                   	insb   (%dx),%es:(%rdi)
  40158c:	6c                   	insb   (%dx),%es:(%rdi)
  40158d:	78 0a                	js     401599 <__dso_handle+0x2e1>
  40158f:	00 46 69             	add    %al,0x69(%rsi)
  401592:	7a 7a                	jp     40160e <__dso_handle+0x356>
  401594:	21 3a                	and    %edi,(%rdx)
  401596:	20 59 6f             	and    %bl,0x6f(%rcx)
  401599:	75 20                	jne    4015bb <__dso_handle+0x303>
  40159b:	63 61 6c             	movslq 0x6c(%rcx),%esp
  40159e:	6c                   	insb   (%dx),%es:(%rdi)
  40159f:	65 64 20 66 69       	gs and %ah,%fs:%gs:0x69(%rsi)
  4015a4:	7a 7a                	jp     401620 <__dso_handle+0x368>
  4015a6:	28 30                	sub    %dh,(%rax)
  4015a8:	78 25                	js     4015cf <__dso_handle+0x317>
  4015aa:	6c                   	insb   (%dx),%es:(%rdi)
  4015ab:	6c                   	insb   (%dx),%es:(%rdi)
  4015ac:	78 29                	js     4015d7 <__dso_handle+0x31f>
  4015ae:	0a 00                	or     (%rax),%al
  4015b0:	4d 69 73 66 69 72 65 	imul   $0x3a657269,0x66(%r11),%r14
  4015b7:	3a 
  4015b8:	20 59 6f             	and    %bl,0x6f(%rcx)
  4015bb:	75 20                	jne    4015dd <__dso_handle+0x325>
  4015bd:	63 61 6c             	movslq 0x6c(%rcx),%esp
  4015c0:	6c                   	insb   (%dx),%es:(%rdi)
  4015c1:	65 64 20 66 69       	gs and %ah,%fs:%gs:0x69(%rsi)
  4015c6:	7a 7a                	jp     401642 <trans_char+0x12>
  4015c8:	28 30                	sub    %dh,(%rax)
  4015ca:	78 25                	js     4015f1 <__dso_handle+0x339>
  4015cc:	6c                   	insb   (%dx),%es:(%rdi)
  4015cd:	6c                   	insb   (%dx),%es:(%rdi)
  4015ce:	78 29                	js     4015f9 <__dso_handle+0x341>
  4015d0:	0a 00                	or     (%rax),%al
  4015d2:	00 00                	add    %al,(%rax)
  4015d4:	00 00                	add    %al,(%rax)
  4015d6:	00 00                	add    %al,(%rax)
  4015d8:	46 61                	rex.RX (bad) 
  4015da:	69 6c 75 72 65 20 74 	imul   $0x6f742065,0x72(%rbp,%rsi,2),%ebp
  4015e1:	6f 
  4015e2:	20 73 65             	and    %dh,0x65(%rbx)
  4015e5:	74 20                	je     401607 <__dso_handle+0x34f>
  4015e7:	73 74                	jae    40165d <trans_char+0x2d>
  4015e9:	61                   	(bad)  
  4015ea:	63 6b 20             	movslq 0x20(%rbx),%ebp
  4015ed:	70 65                	jo     401654 <trans_char+0x24>
  4015ef:	72 6d                	jb     40165e <trans_char+0x2e>
  4015f1:	69 73 73 69 6f 6e 73 	imul   $0x736e6f69,0x73(%rbx),%esi
  4015f8:	0a 00                	or     (%rax),%al
  4015fa:	00 00                	add    %al,(%rax)
  4015fc:	00 00                	add    %al,(%rax)
  4015fe:	00 00                	add    %al,(%rax)
  401600:	59                   	pop    %rcx
  401601:	6f                   	outsl  %ds:(%rsi),(%dx)
  401602:	75 20                	jne    401624 <__dso_handle+0x36c>
  401604:	6d                   	insl   (%dx),%es:(%rdi)
  401605:	75 73                	jne    40167a <trans_char+0x4a>
  401607:	74 20                	je     401629 <__dso_handle+0x371>
  401609:	69 6e 63 6c 75 64 65 	imul   $0x6564756c,0x63(%rsi),%ebp
  401610:	20 61 20             	and    %ah,0x20(%rcx)
  401613:	75 73                	jne    401688 <trans_char+0x58>
  401615:	65                   	gs
  401616:	72 6e                	jb     401686 <trans_char+0x56>
  401618:	61                   	(bad)  
  401619:	6d                   	insl   (%dx),%es:(%rdi)
  40161a:	65 20 77 69          	and    %dh,%gs:0x69(%rdi)
  40161e:	74 68                	je     401688 <trans_char+0x58>
  401620:	20 2d 75 00 00 00    	and    %ch,0x75(%rip)        # 40169b <trans_char+0x6b>
	...

0000000000401630 <trans_char>:
  401630:	30 31                	xor    %dh,(%rcx)
  401632:	32 33                	xor    (%rbx),%dh
  401634:	34 35                	xor    $0x35,%al
  401636:	36                   	ss
  401637:	37                   	(bad)  
  401638:	38 39                	cmp    %bh,(%rcx)
  40163a:	41                   	rex.B
  40163b:	42                   	rex.X
  40163c:	43                   	rex.XB
  40163d:	44                   	rex.R
  40163e:	45                   	rex.RB
  40163f:	46                   	rex.RX
  401640:	25                   	.byte 0x25
  401641:	78 0a                	js     40164d <trans_char+0x1d>
	...

Disassembly of section .eh_frame_hdr:

0000000000401644 <.eh_frame_hdr>:
  401644:	01 1b                	add    %ebx,(%rbx)
  401646:	03 3b                	add    (%rbx),%edi
  401648:	c8 00 00 00          	enterq $0x0,$0x0
  40164c:	18 00                	sbb    %al,(%rax)
  40164e:	00 00                	add    %al,(%rax)
  401650:	7c f1                	jl     401643 <trans_char+0x13>
  401652:	ff                   	(bad)  
  401653:	ff e4                	jmpq   *%rsp
  401655:	00 00                	add    %al,(%rax)
  401657:	00 ac f2 ff ff 0c 03 	add    %ch,0x30cffff(%rdx,%rsi,8)
  40165e:	00 00                	add    %al,(%rax)
  401660:	4c f5                	rex.WR cmc 
  401662:	ff                   	(bad)  
  401663:	ff 0c 01             	decl   (%rcx,%rax,1)
  401666:	00 00                	add    %al,(%rax)
  401668:	ac                   	lods   %ds:(%rsi),%al
  401669:	f5                   	cmc    
  40166a:	ff                   	(bad)  
  40166b:	ff 2c 01             	ljmpq  *(%rcx,%rax,1)
  40166e:	00 00                	add    %al,(%rax)
  401670:	dc f5                	fdiv   %st,%st(5)
  401672:	ff                   	(bad)  
  401673:	ff 44 01 00          	incl   0x0(%rcx,%rax,1)
  401677:	00 fc                	add    %bh,%ah
  401679:	f5                   	cmc    
  40167a:	ff                   	(bad)  
  40167b:	ff 5c 01 00          	lcallq *0x0(%rcx,%rax,1)
  40167f:	00 2c f6             	add    %ch,(%rsi,%rsi,8)
  401682:	ff                   	(bad)  
  401683:	ff 74 01 00          	pushq  0x0(%rcx,%rax,1)
  401687:	00 4c f6 ff          	add    %cl,-0x1(%rsi,%rsi,8)
  40168b:	ff 8c 01 00 00 6c f6 	decl   -0x9940000(%rcx,%rax,1)
  401692:	ff                   	(bad)  
  401693:	ff a4 01 00 00 5c f7 	jmpq   *-0x8a40000(%rcx,%rax,1)
  40169a:	ff                   	(bad)  
  40169b:	ff e4                	jmpq   *%rsp
  40169d:	01 00                	add    %eax,(%rax)
  40169f:	00 dc                	add    %bl,%ah
  4016a1:	f7 ff                	idiv   %edi
  4016a3:	ff 04 02             	incl   (%rdx,%rax,1)
  4016a6:	00 00                	add    %al,(%rax)
  4016a8:	ec                   	in     (%dx),%al
  4016a9:	f7 ff                	idiv   %edi
  4016ab:	ff 1c 02             	lcallq *(%rdx,%rax,1)
  4016ae:	00 00                	add    %al,(%rax)
  4016b0:	8c f8                	mov    %?,%eax
  4016b2:	ff                   	(bad)  
  4016b3:	ff 34 02             	pushq  (%rdx,%rax,1)
  4016b6:	00 00                	add    %al,(%rax)
  4016b8:	3c f9                	cmp    $0xf9,%al
  4016ba:	ff                   	(bad)  
  4016bb:	ff 64 02 00          	jmpq   *0x0(%rdx,%rax,1)
  4016bf:	00 dc                	add    %bl,%ah
  4016c1:	f9                   	stc    
  4016c2:	ff                   	(bad)  
  4016c3:	ff 8c 02 00 00 2c fa 	decl   -0x5d40000(%rdx,%rax,1)
  4016ca:	ff                   	(bad)  
  4016cb:	ff a4 02 00 00 7c fa 	jmpq   *-0x5840000(%rdx,%rax,1)
  4016d2:	ff                   	(bad)  
  4016d3:	ff                   	(bad)  
  4016d4:	bc 02 00 00 ac       	mov    $0xac000002,%esp
  4016d9:	fa                   	cli    
  4016da:	ff                   	(bad)  
  4016db:	ff d4                	callq  *%rsp
  4016dd:	02 00                	add    (%rax),%al
  4016df:	00 bc fa ff ff ec 02 	add    %bh,0x2ecffff(%rdx,%rdi,8)
  4016e6:	00 00                	add    %al,(%rax)
  4016e8:	dc fa                	fdivr  %st,%st(2)
  4016ea:	ff                   	(bad)  
  4016eb:	ff                   	(bad)  
  4016ec:	3c 03                	cmp    $0x3,%al
  4016ee:	00 00                	add    %al,(%rax)
  4016f0:	0c fb                	or     $0xfb,%al
  4016f2:	ff                   	(bad)  
  4016f3:	ff 54 03 00          	callq  *0x0(%rbx,%rax,1)
  4016f7:	00 6c fb ff          	add    %ch,-0x1(%rbx,%rdi,8)
  4016fb:	ff 8c 03 00 00 cc fb 	decl   -0x4340000(%rbx,%rax,1)
  401702:	ff                   	(bad)  
  401703:	ff ac 03 00 00 5c fc 	ljmpq  *-0x3a40000(%rbx,%rax,1)
  40170a:	ff                   	(bad)  
  40170b:	ff d4                	callq  *%rsp
  40170d:	03 00                	add    (%rax),%eax
	...

Disassembly of section .eh_frame:

0000000000401710 <__FRAME_END__-0x320>:
  401710:	14 00                	adc    $0x0,%al
  401712:	00 00                	add    %al,(%rax)
  401714:	00 00                	add    %al,(%rax)
  401716:	00 00                	add    %al,(%rax)
  401718:	01 7a 52             	add    %edi,0x52(%rdx)
  40171b:	00 01                	add    %al,(%rcx)
  40171d:	78 10                	js     40172f <trans_char+0xff>
  40171f:	01 1b                	add    %ebx,(%rbx)
  401721:	0c 07                	or     $0x7,%al
  401723:	08 90 01 00 00 24    	or     %dl,0x24000001(%rax)
  401729:	00 00                	add    %al,(%rax)
  40172b:	00 1c 00             	add    %bl,(%rax,%rax,1)
  40172e:	00 00                	add    %al,(%rax)
  401730:	90                   	nop
  401731:	f0 ff                	lock (bad) 
  401733:	ff 30                	pushq  (%rax)
  401735:	01 00                	add    %eax,(%rax)
  401737:	00 00                	add    %al,(%rax)
  401739:	0e                   	(bad)  
  40173a:	10 46 0e             	adc    %al,0xe(%rsi)
  40173d:	18 4a 0f             	sbb    %cl,0xf(%rdx)
  401740:	0b 77 08             	or     0x8(%rdi),%esi
  401743:	80 00 3f             	addb   $0x3f,(%rax)
  401746:	1a 3b                	sbb    (%rbx),%bh
  401748:	2a 33                	sub    (%rbx),%dh
  40174a:	24 22                	and    $0x22,%al
  40174c:	00 00                	add    %al,(%rax)
  40174e:	00 00                	add    %al,(%rax)
  401750:	1c 00                	sbb    $0x0,%al
  401752:	00 00                	add    %al,(%rax)
  401754:	44 00 00             	add    %r8b,(%rax)
  401757:	00 38                	add    %bh,(%rax)
  401759:	f4                   	hlt    
  40175a:	ff                   	(bad)  
  40175b:	ff 5b 00             	lcallq *0x0(%rbx)
  40175e:	00 00                	add    %al,(%rax)
  401760:	00 4e 0e             	add    %cl,0xe(%rsi)
  401763:	10 83 02 63 c3 0e    	adc    %al,0xec36302(%rbx)
  401769:	08 00                	or     %al,(%rax)
  40176b:	00 00                	add    %al,(%rax)
  40176d:	00 00                	add    %al,(%rax)
  40176f:	00 14 00             	add    %dl,(%rax,%rax,1)
  401772:	00 00                	add    %al,(%rax)
  401774:	64 00 00             	add    %al,%fs:(%rax)
  401777:	00 78 f4             	add    %bh,-0xc(%rax)
  40177a:	ff                   	(bad)  
  40177b:	ff 24 00             	jmpq   *(%rax,%rax,1)
  40177e:	00 00                	add    %al,(%rax)
  401780:	00 47 0e             	add    %al,0xe(%rdi)
  401783:	10 00                	adc    %al,(%rax)
  401785:	00 00                	add    %al,(%rax)
  401787:	00 14 00             	add    %dl,(%rax,%rax,1)
  40178a:	00 00                	add    %al,(%rax)
  40178c:	7c 00                	jl     40178e <trans_char+0x15e>
  40178e:	00 00                	add    %al,(%rax)
  401790:	90                   	nop
  401791:	f4                   	hlt    
  401792:	ff                   	(bad)  
  401793:	ff 1f                	lcallq *(%rdi)
  401795:	00 00                	add    %al,(%rax)
  401797:	00 00                	add    %al,(%rax)
  401799:	44 0e                	rex.R (bad) 
  40179b:	10 00                	adc    %al,(%rax)
  40179d:	00 00                	add    %al,(%rax)
  40179f:	00 14 00             	add    %dl,(%rax,%rax,1)
  4017a2:	00 00                	add    %al,(%rax)
  4017a4:	94                   	xchg   %eax,%esp
  4017a5:	00 00                	add    %al,(%rax)
  4017a7:	00 98 f4 ff ff 27    	add    %bl,0x27fffff4(%rax)
  4017ad:	00 00                	add    %al,(%rax)
  4017af:	00 00                	add    %al,(%rax)
  4017b1:	44 0e                	rex.R (bad) 
  4017b3:	10 00                	adc    %al,(%rax)
  4017b5:	00 00                	add    %al,(%rax)
  4017b7:	00 14 00             	add    %dl,(%rax,%rax,1)
  4017ba:	00 00                	add    %al,(%rax)
  4017bc:	ac                   	lods   %ds:(%rsi),%al
  4017bd:	00 00                	add    %al,(%rax)
  4017bf:	00 b0 f4 ff ff 1f    	add    %dh,0x1ffffff4(%rax)
  4017c5:	00 00                	add    %al,(%rax)
  4017c7:	00 00                	add    %al,(%rax)
  4017c9:	44 0e                	rex.R (bad) 
  4017cb:	10 00                	adc    %al,(%rax)
  4017cd:	00 00                	add    %al,(%rax)
  4017cf:	00 14 00             	add    %dl,(%rax,%rax,1)
  4017d2:	00 00                	add    %al,(%rax)
  4017d4:	c4                   	(bad)  
  4017d5:	00 00                	add    %al,(%rax)
  4017d7:	00 b8 f4 ff ff 1f    	add    %bh,0x1ffffff4(%rax)
  4017dd:	00 00                	add    %al,(%rax)
  4017df:	00 00                	add    %al,(%rax)
  4017e1:	44 0e                	rex.R (bad) 
  4017e3:	10 00                	adc    %al,(%rax)
  4017e5:	00 00                	add    %al,(%rax)
  4017e7:	00 3c 00             	add    %bh,(%rax,%rax,1)
  4017ea:	00 00                	add    %al,(%rax)
  4017ec:	dc 00                	faddl  (%rax)
  4017ee:	00 00                	add    %al,(%rax)
  4017f0:	c0                   	(bad)  
  4017f1:	f4                   	hlt    
  4017f2:	ff                   	(bad)  
  4017f3:	ff ef                	ljmpq  *<internal disassembler error>
  4017f5:	00 00                	add    %al,(%rax)
  4017f7:	00 00                	add    %al,(%rax)
  4017f9:	42 0e                	rex.X (bad) 
  4017fb:	10 8e 02 52 0e 18    	adc    %cl,0x180e5202(%rsi)
  401801:	8d 03                	lea    (%rbx),%eax
  401803:	47 0e                	rex.RXB (bad) 
  401805:	20 8c 04 41 0e 28 86 	and    %cl,-0x79d7f1bf(%rsp,%rax,1)
  40180c:	05 44 0e 30 83       	add    $0x83300e44,%eax
  401811:	06                   	(bad)  
  401812:	02 90 0a 0e 28 41    	add    0x41280e0a(%rax),%dl
  401818:	0e                   	(bad)  
  401819:	20 45 0e             	and    %al,0xe(%rbp)
  40181c:	18 4e 0e             	sbb    %cl,0xe(%rsi)
  40181f:	10 42 0e             	adc    %al,0xe(%rdx)
  401822:	08 4a 0b             	or     %cl,0xb(%rdx)
  401825:	00 00                	add    %al,(%rax)
  401827:	00 1c 00             	add    %bl,(%rax,%rax,1)
  40182a:	00 00                	add    %al,(%rax)
  40182c:	1c 01                	sbb    $0x1,%al
  40182e:	00 00                	add    %al,(%rax)
  401830:	70 f5                	jo     401827 <trans_char+0x1f7>
  401832:	ff                   	(bad)  
  401833:	ff                   	(bad)  
  401834:	7b 00                	jnp    401836 <trans_char+0x206>
  401836:	00 00                	add    %al,(%rax)
  401838:	00 41 0e             	add    %al,0xe(%rcx)
  40183b:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
  401841:	02 76 0c             	add    0xc(%rsi),%dh
  401844:	07                   	(bad)  
  401845:	08 00                	or     %al,(%rax)
  401847:	00 14 00             	add    %dl,(%rax,%rax,1)
  40184a:	00 00                	add    %al,(%rax)
  40184c:	3c 01                	cmp    $0x1,%al
  40184e:	00 00                	add    %al,(%rax)
  401850:	d0                   	(bad)  
  401851:	f5                   	cmc    
  401852:	ff                   	(bad)  
  401853:	ff 07                	incl   (%rdi)
	...
  40185d:	00 00                	add    %al,(%rax)
  40185f:	00 14 00             	add    %dl,(%rax,%rax,1)
  401862:	00 00                	add    %al,(%rax)
  401864:	54                   	push   %rsp
  401865:	01 00                	add    %eax,(%rax)
  401867:	00 c8                	add    %cl,%al
  401869:	f5                   	cmc    
  40186a:	ff                   	(bad)  
  40186b:	ff 9a 00 00 00 00    	lcallq *0x0(%rdx)
  401871:	00 00                	add    %al,(%rax)
  401873:	00 00                	add    %al,(%rax)
  401875:	00 00                	add    %al,(%rax)
  401877:	00 2c 00             	add    %ch,(%rax,%rax,1)
  40187a:	00 00                	add    %al,(%rax)
  40187c:	6c                   	insb   (%dx),%es:(%rdi)
  40187d:	01 00                	add    %eax,(%rax)
  40187f:	00 50 f6             	add    %dl,-0xa(%rax)
  401882:	ff                   	(bad)  
  401883:	ff af 00 00 00 00    	ljmpq  *0x0(%rdi)
  401889:	41 0e                	rex.B (bad) 
  40188b:	10 86 02 4a 0d 06    	adc    %al,0x60d4a02(%rsi)
  401891:	45 83 03 02          	rex.RB addl $0x2,(%r11)
  401895:	4e 0a 0c 07          	rex.WRX or (%rdi,%r8,1),%r9b
  401899:	08 42 0b             	or     %al,0xb(%rdx)
  40189c:	4f 0a 0c 07          	rex.WRXB or (%r15,%r8,1),%r9b
  4018a0:	08 41 0b             	or     %al,0xb(%rcx)
  4018a3:	7e 0c                	jle    4018b1 <trans_char+0x281>
  4018a5:	07                   	(bad)  
  4018a6:	08 00                	or     %al,(%rax)
  4018a8:	24 00                	and    $0x0,%al
  4018aa:	00 00                	add    %al,(%rax)
  4018ac:	9c                   	pushfq 
  4018ad:	01 00                	add    %eax,(%rax)
  4018af:	00 d0                	add    %dl,%al
  4018b1:	f6 ff                	idiv   %bh
  4018b3:	ff 9e 00 00 00 00    	lcallq *0x0(%rsi)
  4018b9:	41 0e                	rex.B (bad) 
  4018bb:	10 86 02 48 0d 06    	adc    %al,0x60d4802(%rsi)
  4018c1:	02 5f 0a             	add    0xa(%rdi),%bl
  4018c4:	0c 07                	or     $0x7,%al
  4018c6:	08 48 0b             	or     %cl,0xb(%rax)
  4018c9:	55                   	push   %rbp
  4018ca:	0a 0c 07             	or     (%rdi,%rax,1),%cl
  4018cd:	08 4b 0b             	or     %cl,0xb(%rbx)
  4018d0:	14 00                	adc    $0x0,%al
  4018d2:	00 00                	add    %al,(%rax)
  4018d4:	c4 01 00 00          	(bad)  
  4018d8:	48 f7 ff             	idiv   %rdi
  4018db:	ff 49 00             	decl   0x0(%rcx)
  4018de:	00 00                	add    %al,(%rax)
  4018e0:	00 44 0e 10          	add    %al,0x10(%rsi,%rcx,1)
  4018e4:	00 00                	add    %al,(%rax)
  4018e6:	00 00                	add    %al,(%rax)
  4018e8:	14 00                	adc    $0x0,%al
  4018ea:	00 00                	add    %al,(%rax)
  4018ec:	dc 01                	faddl  (%rcx)
  4018ee:	00 00                	add    %al,(%rax)
  4018f0:	80 f7 ff             	xor    $0xff,%bh
  4018f3:	ff 47 00             	incl   0x0(%rdi)
  4018f6:	00 00                	add    %al,(%rax)
  4018f8:	00 44 0e 10          	add    %al,0x10(%rsi,%rcx,1)
  4018fc:	00 00                	add    %al,(%rax)
  4018fe:	00 00                	add    %al,(%rax)
  401900:	14 00                	adc    $0x0,%al
  401902:	00 00                	add    %al,(%rax)
  401904:	f4                   	hlt    
  401905:	01 00                	add    %eax,(%rax)
  401907:	00 b8 f7 ff ff 26    	add    %bh,0x26fffff7(%rax)
  40190d:	00 00                	add    %al,(%rax)
  40190f:	00 00                	add    %al,(%rax)
  401911:	44 0e                	rex.R (bad) 
  401913:	10 00                	adc    %al,(%rax)
  401915:	00 00                	add    %al,(%rax)
  401917:	00 14 00             	add    %dl,(%rax,%rax,1)
  40191a:	00 00                	add    %al,(%rax)
  40191c:	0c 02                	or     $0x2,%al
  40191e:	00 00                	add    %al,(%rax)
  401920:	d0                   	(bad)  
  401921:	f7 ff                	idiv   %edi
  401923:	ff 02                	incl   (%rdx)
	...
  40192d:	00 00                	add    %al,(%rax)
  40192f:	00 1c 00             	add    %bl,(%rax,%rax,1)
  401932:	00 00                	add    %al,(%rax)
  401934:	24 02                	and    $0x2,%al
  401936:	00 00                	add    %al,(%rax)
  401938:	c8 f7 ff ff          	enterq $0xfff7,$0xff
  40193c:	13 00                	adc    (%rax),%eax
  40193e:	00 00                	add    %al,(%rax)
  401940:	00 41 0e             	add    %al,0xe(%rcx)
  401943:	10 83 02 51 0e 08    	adc    %al,0x80e5102(%rbx)
  401949:	00 00                	add    %al,(%rax)
  40194b:	00 00                	add    %al,(%rax)
  40194d:	00 00                	add    %al,(%rax)
  40194f:	00 2c 00             	add    %ch,(%rax,%rax,1)
  401952:	00 00                	add    %al,(%rax)
  401954:	44 02 00             	add    (%rax),%r8b
  401957:	00 98 ef ff ff 90    	add    %bl,-0x6f000011(%rax)
  40195d:	01 00                	add    %eax,(%rax)
  40195f:	00 00                	add    %al,(%rax)
  401961:	42 0e                	rex.X (bad) 
  401963:	10 8c 02 43 0e 18 86 	adc    %cl,-0x79e7f1bd(%rdx,%rax,1)
  40196a:	03 48 0e             	add    0xe(%rax),%ecx
  40196d:	20 83 04 03 5d 01    	and    %al,0x15d0304(%rbx)
  401973:	0a 0e                	or     (%rsi),%cl
  401975:	18 41 0e             	sbb    %al,0xe(%rcx)
  401978:	10 44 0e 08          	adc    %al,0x8(%rsi,%rcx,1)
  40197c:	41 0b 00             	or     (%r8),%eax
  40197f:	00 14 00             	add    %dl,(%rax,%rax,1)
  401982:	00 00                	add    %al,(%rax)
  401984:	74 02                	je     401988 <trans_char+0x358>
  401986:	00 00                	add    %al,(%rax)
  401988:	98                   	cwtl   
  401989:	f7 ff                	idiv   %edi
  40198b:	ff 2c 00             	ljmpq  *(%rax,%rax,1)
	...
  401996:	00 00                	add    %al,(%rax)
  401998:	34 00                	xor    $0x0,%al
  40199a:	00 00                	add    %al,(%rax)
  40199c:	8c 02                	mov    %es,(%rdx)
  40199e:	00 00                	add    %al,(%rax)
  4019a0:	b0 f7                	mov    $0xf7,%al
  4019a2:	ff                   	(bad)  
  4019a3:	ff 57 00             	callq  *0x0(%rdi)
  4019a6:	00 00                	add    %al,(%rax)
  4019a8:	00 42 0e             	add    %al,0xe(%rdx)
  4019ab:	10 8c 02 44 0e 18 86 	adc    %cl,-0x79e7f1bc(%rdx,%rax,1)
  4019b2:	03 41 0e             	add    0xe(%rcx),%eax
  4019b5:	20 83 04 7d 0a 0e    	and    %al,0xe0a7d04(%rbx)
  4019bb:	18 41 0e             	sbb    %al,0xe(%rcx)
  4019be:	10 47 0e             	adc    %al,0xe(%rdi)
  4019c1:	08 44 0b 41          	or     %al,0x41(%rbx,%rcx,1)
  4019c5:	0e                   	(bad)  
  4019c6:	18 41 0e             	sbb    %al,0xe(%rcx)
  4019c9:	10 44 0e 08          	adc    %al,0x8(%rsi,%rcx,1)
  4019cd:	00 00                	add    %al,(%rax)
  4019cf:	00 1c 00             	add    %bl,(%rax,%rax,1)
  4019d2:	00 00                	add    %al,(%rax)
  4019d4:	c4 02 00 00          	(bad)  
  4019d8:	d8 f7                	fdiv   %st(7),%st
  4019da:	ff                   	(bad)  
  4019db:	ff 5a 00             	lcallq *0x0(%rdx)
  4019de:	00 00                	add    %al,(%rax)
  4019e0:	00 41 0e             	add    %al,0xe(%rcx)
  4019e3:	10 83 02 02 54 0a    	adc    %al,0xa540202(%rbx)
  4019e9:	0e                   	(bad)  
  4019ea:	08 41 0b             	or     %al,0xb(%rcx)
  4019ed:	00 00                	add    %al,(%rax)
  4019ef:	00 24 00             	add    %ah,(%rax,%rax,1)
  4019f2:	00 00                	add    %al,(%rax)
  4019f4:	e4 02                	in     $0x2,%al
  4019f6:	00 00                	add    %al,(%rax)
  4019f8:	18 f8                	sbb    %bh,%al
  4019fa:	ff                   	(bad)  
  4019fb:	ff 89 00 00 00 00    	decl   0x0(%rcx)
  401a01:	4a 86 06             	rex.WX xchg %al,(%rsi)
  401a04:	8c 05 66 0e 40 83    	mov    %es,-0x7cbff19a(%rip)        # ffffffff83802870 <_end+0xffffffff831ff928>
  401a0a:	07                   	(bad)  
  401a0b:	8d 04 8e             	lea    (%rsi,%rcx,4),%eax
  401a0e:	03 8f 02 02 58 0e    	add    0xe580202(%rdi),%ecx
  401a14:	08 00                	or     %al,(%rax)
  401a16:	00 00                	add    %al,(%rax)
  401a18:	14 00                	adc    $0x0,%al
  401a1a:	00 00                	add    %al,(%rax)
  401a1c:	0c 03                	or     $0x3,%al
  401a1e:	00 00                	add    %al,(%rax)
  401a20:	80 f8 ff             	cmp    $0xff,%al
  401a23:	ff 02                	incl   (%rdx)
	...

0000000000401a30 <__FRAME_END__>:
  401a30:	00 00                	add    %al,(%rax)
	...

Disassembly of section .init_array:

0000000000602000 <__frame_dummy_init_array_entry>:
  602000:	60                   	(bad)  
  602001:	0b 40 00             	or     0x0(%rax),%eax
  602004:	00 00                	add    %al,(%rax)
	...

Disassembly of section .fini_array:

0000000000602008 <__do_global_dtors_aux_fini_array_entry>:
  602008:	40 0b 40 00          	rex or 0x0(%rax),%eax
  60200c:	00 00                	add    %al,(%rax)
	...

Disassembly of section .jcr:

0000000000602010 <__JCR_END__>:
	...

Disassembly of section .dynamic:

0000000000602018 <_DYNAMIC>:
  602018:	01 00                	add    %eax,(%rax)
  60201a:	00 00                	add    %al,(%rax)
  60201c:	00 00                	add    %al,(%rax)
  60201e:	00 00                	add    %al,(%rax)
  602020:	10 00                	adc    %al,(%rax)
  602022:	00 00                	add    %al,(%rax)
  602024:	00 00                	add    %al,(%rax)
  602026:	00 00                	add    %al,(%rax)
  602028:	0c 00                	or     $0x0,%al
  60202a:	00 00                	add    %al,(%rax)
  60202c:	00 00                	add    %al,(%rax)
  60202e:	00 00                	add    %al,(%rax)
  602030:	b0 07                	mov    $0x7,%al
  602032:	40 00 00             	add    %al,(%rax)
  602035:	00 00                	add    %al,(%rax)
  602037:	00 0d 00 00 00 00    	add    %cl,0x0(%rip)        # 60203d <_DYNAMIC+0x25>
  60203d:	00 00                	add    %al,(%rax)
  60203f:	00 a4 12 40 00 00 00 	add    %ah,0x40(%rdx,%rdx,1)
  602046:	00 00                	add    %al,(%rax)
  602048:	19 00                	sbb    %eax,(%rax)
  60204a:	00 00                	add    %al,(%rax)
  60204c:	00 00                	add    %al,(%rax)
  60204e:	00 00                	add    %al,(%rax)
  602050:	00 20                	add    %ah,(%rax)
  602052:	60                   	(bad)  
  602053:	00 00                	add    %al,(%rax)
  602055:	00 00                	add    %al,(%rax)
  602057:	00 1b                	add    %bl,(%rbx)
  602059:	00 00                	add    %al,(%rax)
  60205b:	00 00                	add    %al,(%rax)
  60205d:	00 00                	add    %al,(%rax)
  60205f:	00 08                	add    %cl,(%rax)
  602061:	00 00                	add    %al,(%rax)
  602063:	00 00                	add    %al,(%rax)
  602065:	00 00                	add    %al,(%rax)
  602067:	00 1a                	add    %bl,(%rdx)
  602069:	00 00                	add    %al,(%rax)
  60206b:	00 00                	add    %al,(%rax)
  60206d:	00 00                	add    %al,(%rax)
  60206f:	00 08                	add    %cl,(%rax)
  602071:	20 60 00             	and    %ah,0x0(%rax)
  602074:	00 00                	add    %al,(%rax)
  602076:	00 00                	add    %al,(%rax)
  602078:	1c 00                	sbb    $0x0,%al
  60207a:	00 00                	add    %al,(%rax)
  60207c:	00 00                	add    %al,(%rax)
  60207e:	00 00                	add    %al,(%rax)
  602080:	08 00                	or     %al,(%rax)
  602082:	00 00                	add    %al,(%rax)
  602084:	00 00                	add    %al,(%rax)
  602086:	00 00                	add    %al,(%rax)
  602088:	f5                   	cmc    
  602089:	fe                   	(bad)  
  60208a:	ff 6f 00             	ljmpq  *0x0(%rdi)
  60208d:	00 00                	add    %al,(%rax)
  60208f:	00 60 02             	add    %ah,0x2(%rax)
  602092:	40 00 00             	add    %al,(%rax)
  602095:	00 00                	add    %al,(%rax)
  602097:	00 05 00 00 00 00    	add    %al,0x0(%rip)        # 60209d <_DYNAMIC+0x85>
  60209d:	00 00                	add    %al,(%rax)
  60209f:	00 98 04 40 00 00    	add    %bl,0x4004(%rax)
  6020a5:	00 00                	add    %al,(%rax)
  6020a7:	00 06                	add    %al,(%rsi)
  6020a9:	00 00                	add    %al,(%rax)
  6020ab:	00 00                	add    %al,(%rax)
  6020ad:	00 00                	add    %al,(%rax)
  6020af:	00 88 02 40 00 00    	add    %cl,0x4002(%rax)
  6020b5:	00 00                	add    %al,(%rax)
  6020b7:	00 0a                	add    %cl,(%rdx)
  6020b9:	00 00                	add    %al,(%rax)
  6020bb:	00 00                	add    %al,(%rax)
  6020bd:	00 00                	add    %al,(%rax)
  6020bf:	00 c2                	add    %al,%dl
  6020c1:	00 00                	add    %al,(%rax)
  6020c3:	00 00                	add    %al,(%rax)
  6020c5:	00 00                	add    %al,(%rax)
  6020c7:	00 0b                	add    %cl,(%rbx)
  6020c9:	00 00                	add    %al,(%rax)
  6020cb:	00 00                	add    %al,(%rax)
  6020cd:	00 00                	add    %al,(%rax)
  6020cf:	00 18                	add    %bl,(%rax)
  6020d1:	00 00                	add    %al,(%rax)
  6020d3:	00 00                	add    %al,(%rax)
  6020d5:	00 00                	add    %al,(%rax)
  6020d7:	00 15 00 00 00 00    	add    %dl,0x0(%rip)        # 6020dd <_DYNAMIC+0xc5>
	...
  6020e5:	00 00                	add    %al,(%rax)
  6020e7:	00 03                	add    %al,(%rbx)
  6020e9:	00 00                	add    %al,(%rax)
  6020eb:	00 00                	add    %al,(%rax)
  6020ed:	00 00                	add    %al,(%rax)
  6020ef:	00 f0                	add    %dh,%al
  6020f1:	21 60 00             	and    %esp,0x0(%rax)
  6020f4:	00 00                	add    %al,(%rax)
  6020f6:	00 00                	add    %al,(%rax)
  6020f8:	02 00                	add    (%rax),%al
  6020fa:	00 00                	add    %al,(%rax)
  6020fc:	00 00                	add    %al,(%rax)
  6020fe:	00 00                	add    %al,(%rax)
  602100:	b0 01                	mov    $0x1,%al
  602102:	00 00                	add    %al,(%rax)
  602104:	00 00                	add    %al,(%rax)
  602106:	00 00                	add    %al,(%rax)
  602108:	14 00                	adc    $0x0,%al
  60210a:	00 00                	add    %al,(%rax)
  60210c:	00 00                	add    %al,(%rax)
  60210e:	00 00                	add    %al,(%rax)
  602110:	07                   	(bad)  
  602111:	00 00                	add    %al,(%rax)
  602113:	00 00                	add    %al,(%rax)
  602115:	00 00                	add    %al,(%rax)
  602117:	00 17                	add    %dl,(%rdi)
	...
  602121:	06                   	(bad)  
  602122:	40 00 00             	add    %al,(%rax)
  602125:	00 00                	add    %al,(%rax)
  602127:	00 07                	add    %al,(%rdi)
  602129:	00 00                	add    %al,(%rax)
  60212b:	00 00                	add    %al,(%rax)
  60212d:	00 00                	add    %al,(%rax)
  60212f:	00 b8 05 40 00 00    	add    %bh,0x4005(%rax)
  602135:	00 00                	add    %al,(%rax)
  602137:	00 08                	add    %cl,(%rax)
  602139:	00 00                	add    %al,(%rax)
  60213b:	00 00                	add    %al,(%rax)
  60213d:	00 00                	add    %al,(%rax)
  60213f:	00 48 00             	add    %cl,0x0(%rax)
  602142:	00 00                	add    %al,(%rax)
  602144:	00 00                	add    %al,(%rax)
  602146:	00 00                	add    %al,(%rax)
  602148:	09 00                	or     %eax,(%rax)
  60214a:	00 00                	add    %al,(%rax)
  60214c:	00 00                	add    %al,(%rax)
  60214e:	00 00                	add    %al,(%rax)
  602150:	18 00                	sbb    %al,(%rax)
  602152:	00 00                	add    %al,(%rax)
  602154:	00 00                	add    %al,(%rax)
  602156:	00 00                	add    %al,(%rax)
  602158:	fe                   	(bad)  
  602159:	ff                   	(bad)  
  60215a:	ff 6f 00             	ljmpq  *0x0(%rdi)
  60215d:	00 00                	add    %al,(%rax)
  60215f:	00 88 05 40 00 00    	add    %cl,0x4005(%rax)
  602165:	00 00                	add    %al,(%rax)
  602167:	00 ff                	add    %bh,%bh
  602169:	ff                   	(bad)  
  60216a:	ff 6f 00             	ljmpq  *0x0(%rdi)
  60216d:	00 00                	add    %al,(%rax)
  60216f:	00 01                	add    %al,(%rcx)
  602171:	00 00                	add    %al,(%rax)
  602173:	00 00                	add    %al,(%rax)
  602175:	00 00                	add    %al,(%rax)
  602177:	00 f0                	add    %dh,%al
  602179:	ff                   	(bad)  
  60217a:	ff 6f 00             	ljmpq  *0x0(%rdi)
  60217d:	00 00                	add    %al,(%rax)
  60217f:	00 5a 05             	add    %bl,0x5(%rdx)
  602182:	40 00 00             	add    %al,(%rax)
	...

Disassembly of section .got:

00000000006021e8 <.got>:
	...

Disassembly of section .got.plt:

00000000006021f0 <_GLOBAL_OFFSET_TABLE_>:
  6021f0:	18 20                	sbb    %ah,(%rax)
  6021f2:	60                   	(bad)  
	...
  602207:	00 d6                	add    %dl,%dh
  602209:	07                   	(bad)  
  60220a:	40 00 00             	add    %al,(%rax)
  60220d:	00 00                	add    %al,(%rax)
  60220f:	00 e6                	add    %ah,%dh
  602211:	07                   	(bad)  
  602212:	40 00 00             	add    %al,(%rax)
  602215:	00 00                	add    %al,(%rax)
  602217:	00 f6                	add    %dh,%dh
  602219:	07                   	(bad)  
  60221a:	40 00 00             	add    %al,(%rax)
  60221d:	00 00                	add    %al,(%rax)
  60221f:	00 06                	add    %al,(%rsi)
  602221:	08 40 00             	or     %al,0x0(%rax)
  602224:	00 00                	add    %al,(%rax)
  602226:	00 00                	add    %al,(%rax)
  602228:	16                   	(bad)  
  602229:	08 40 00             	or     %al,0x0(%rax)
  60222c:	00 00                	add    %al,(%rax)
  60222e:	00 00                	add    %al,(%rax)
  602230:	26 08 40 00          	or     %al,%es:0x0(%rax)
  602234:	00 00                	add    %al,(%rax)
  602236:	00 00                	add    %al,(%rax)
  602238:	36 08 40 00          	or     %al,%ss:0x0(%rax)
  60223c:	00 00                	add    %al,(%rax)
  60223e:	00 00                	add    %al,(%rax)
  602240:	46 08 40 00          	rex.RX or %r8b,0x0(%rax)
  602244:	00 00                	add    %al,(%rax)
  602246:	00 00                	add    %al,(%rax)
  602248:	56                   	push   %rsi
  602249:	08 40 00             	or     %al,0x0(%rax)
  60224c:	00 00                	add    %al,(%rax)
  60224e:	00 00                	add    %al,(%rax)
  602250:	66                   	data16
  602251:	08 40 00             	or     %al,0x0(%rax)
  602254:	00 00                	add    %al,(%rax)
  602256:	00 00                	add    %al,(%rax)
  602258:	76 08                	jbe    602262 <_GLOBAL_OFFSET_TABLE_+0x72>
  60225a:	40 00 00             	add    %al,(%rax)
  60225d:	00 00                	add    %al,(%rax)
  60225f:	00 86 08 40 00 00    	add    %al,0x4008(%rsi)
  602265:	00 00                	add    %al,(%rax)
  602267:	00 96 08 40 00 00    	add    %dl,0x4008(%rsi)
  60226d:	00 00                	add    %al,(%rax)
  60226f:	00 a6 08 40 00 00    	add    %ah,0x4008(%rsi)
  602275:	00 00                	add    %al,(%rax)
  602277:	00 b6 08 40 00 00    	add    %dh,0x4008(%rsi)
  60227d:	00 00                	add    %al,(%rax)
  60227f:	00 c6                	add    %al,%dh
  602281:	08 40 00             	or     %al,0x0(%rax)
  602284:	00 00                	add    %al,(%rax)
  602286:	00 00                	add    %al,(%rax)
  602288:	d6                   	(bad)  
  602289:	08 40 00             	or     %al,0x0(%rax)
  60228c:	00 00                	add    %al,(%rax)
  60228e:	00 00                	add    %al,(%rax)
  602290:	e6 08                	out    %al,$0x8
  602292:	40 00 00             	add    %al,(%rax)
  602295:	00 00                	add    %al,(%rax)
	...

Disassembly of section .data:

00000000006022a0 <__data_start>:
	...

00000000006022b0 <check_level>:
  6022b0:	ff                   	(bad)  
  6022b1:	ff                   	(bad)  
  6022b2:	ff                   	(bad)  
  6022b3:	ff 00                	incl   (%rax)
	...

00000000006022c0 <level_counts>:
  6022c0:	01 00                	add    %eax,(%rax)
  6022c2:	00 00                	add    %al,(%rax)
  6022c4:	01 00                	add    %eax,(%rax)
  6022c6:	00 00                	add    %al,(%rax)
  6022c8:	01 00                	add    %eax,(%rax)
  6022ca:	00 00                	add    %al,(%rax)
  6022cc:	01 00                	add    %eax,(%rax)
  6022ce:	00 00                	add    %al,(%rax)
  6022d0:	05 00 00 00 58       	add    $0x58000000,%eax

00000000006022d4 <alarm_time>:
  6022d4:	58                   	pop    %rax
  6022d5:	02 00                	add    (%rax),%al
	...

Disassembly of section .bss:

00000000006022e0 <stdin@@GLIBC_2.2.5>:
	...

00000000006022e8 <optarg@@GLIBC_2.2.5>:
	...

00000000006022f0 <completed.6108>:
	...

0000000000602300 <gets_cnt>:
	...

0000000000602308 <global_value>:
	...

0000000000602310 <success>:
  602310:	00 00                	add    %al,(%rax)
	...

0000000000602314 <grade>:
  602314:	00 00                	add    %al,(%rax)
	...

0000000000602318 <team>:
	...

0000000000602320 <cookie>:
	...

0000000000602328 <hexformat>:
  602328:	00 00                	add    %al,(%rax)
	...

000000000060232c <quiet>:
  60232c:	00 00                	add    %al,(%rax)
	...

0000000000602330 <submit>:
	...

0000000000602338 <infile>:
	...

0000000000602340 <gets_buf>:
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
   d:	37                   	(bad)  
   e:	2e 32 20             	xor    %cs:(%rax),%ah
  11:	32 30                	xor    (%rax),%dh
  13:	31 32                	xor    %esi,(%rdx)
  15:	30 39                	xor    %bh,(%rcx)
  17:	32 31                	xor    (%rcx),%dh
  19:	20 28                	and    %ch,(%rax)
  1b:	52                   	push   %rdx
  1c:	65 64 20 48 61       	gs and %cl,%fs:%gs:0x61(%rax)
  21:	74 20                	je     43 <_init-0x40076d>
  23:	34 2e                	xor    $0x2e,%al
  25:	37                   	(bad)  
  26:	2e                   	cs
  27:	32                   	.byte 0x32
  28:	2d                   	.byte 0x2d
  29:	32 29                	xor    (%rcx),%ch
	...

Disassembly of section .debug_aranges:

0000000000000000 <.debug_aranges>:
   0:	3c 00                	cmp    $0x0,%al
   2:	00 00                	add    %al,(%rax)
   4:	02 00                	add    (%rax),%al
   6:	00 00                	add    %al,(%rax)
   8:	00 00                	add    %al,(%rax)
   a:	08 00                	or     %al,(%rax)
   c:	00 00                	add    %al,(%rax)
   e:	00 00                	add    %al,(%rax)
  10:	90                   	nop
  11:	0b 40 00             	or     0x0(%rax),%eax
  14:	00 00                	add    %al,(%rax)
  16:	00 00                	add    %al,(%rax)
  18:	83 05 00 00 00 00 00 	addl   $0x0,0x0(%rip)        # 1f <_init-0x400791>
  1f:	00 f0                	add    %dh,%al
  21:	08 40 00             	or     %al,0x0(%rax)
  24:	00 00                	add    %al,(%rax)
  26:	00 00                	add    %al,(%rax)
  28:	90                   	nop
  29:	01 00                	add    %eax,(%rax)
	...

Disassembly of section .debug_info:

0000000000000000 <.debug_info>:
       0:	11 14 00             	adc    %edx,(%rax,%rax,1)
       3:	00 04 00             	add    %al,(%rax,%rax,1)
       6:	00 00                	add    %al,(%rax)
       8:	00 00                	add    %al,(%rax)
       a:	08 01                	or     %al,(%rcx)
       c:	ce                   	(bad)  
       d:	03 00                	add    (%rax),%eax
       f:	00 01                	add    %al,(%rcx)
      11:	78 02                	js     15 <_init-0x40079b>
      13:	00 00                	add    %al,(%rax)
      15:	aa                   	stos   %al,%es:(%rdi)
      16:	02 00                	add    (%rax),%al
      18:	00 d0                	add    %dl,%al
	...
      26:	00 00                	add    %al,(%rax)
      28:	00 02                	add    %al,(%rdx)
      2a:	1f                   	(bad)  
      2b:	00 00                	add    %al,(%rax)
      2d:	00 02                	add    %al,(%rdx)
      2f:	d5                   	(bad)  
      30:	34 00                	xor    $0x0,%al
      32:	00 00                	add    %al,(%rax)
      34:	03 08                	add    (%rax),%ecx
      36:	07                   	(bad)  
      37:	64 00 00             	add    %al,%fs:(%rax)
      3a:	00 03                	add    %al,(%rbx)
      3c:	01 08                	add    %ecx,(%rax)
      3e:	ee                   	out    %al,(%dx)
      3f:	02 00                	add    (%rax),%al
      41:	00 03                	add    %al,(%rbx)
      43:	02 07                	add    (%rdi),%al
      45:	a8 01                	test   $0x1,%al
      47:	00 00                	add    %al,(%rax)
      49:	03 04 07             	add    (%rdi,%rax,1),%eax
      4c:	69 00 00 00 03 01    	imul   $0x1030000,(%rax),%eax
      52:	06                   	(bad)  
      53:	f0 02 00             	lock add (%rax),%al
      56:	00 03                	add    %al,(%rbx)
      58:	02 05 08 03 00 00    	add    0x308(%rip),%al        # 366 <_init-0x40044a>
      5e:	04 04                	add    $0x4,%al
      60:	05 69 6e 74 00       	add    $0x746e69,%eax
      65:	03 08                	add    (%rax),%ecx
      67:	05 92 00 00 00       	add    $0x92,%eax
      6c:	02 07                	add    (%rdi),%al
      6e:	00 00                	add    %al,(%rax)
      70:	00 03                	add    %al,(%rbx)
      72:	8d 65 00             	lea    0x0(%rbp),%esp
      75:	00 00                	add    %al,(%rax)
      77:	02 b6 03 00 00 03    	add    0x3000003(%rsi),%dh
      7d:	8e 65 00             	mov    0x0(%rbp),%fs
      80:	00 00                	add    %al,(%rax)
      82:	03 08                	add    (%rax),%ecx
      84:	07                   	(bad)  
      85:	32 02                	xor    (%rdx),%al
      87:	00 00                	add    %al,(%rax)
      89:	05 08 06 08 91       	add    $0x91080608,%eax
      8e:	00 00                	add    %al,(%rax)
      90:	00 03                	add    %al,(%rbx)
      92:	01 06                	add    %eax,(%rsi)
      94:	f7 02 00 00 02 6a    	testl  $0x6a020000,(%rdx)
      9a:	02 00                	add    (%rax),%al
      9c:	00 04 31             	add    %al,(%rcx,%rsi,1)
      9f:	a3 00 00 00 07 66 02 	movabs %eax,0x26607000000
      a6:	00 00 
      a8:	d8 05 11 01 2a 02    	fadds  0x22a0111(%rip)        # 22a01bf <_end+0x1c9d277>
      ae:	00 00                	add    %al,(%rax)
      b0:	08 ca                	or     %cl,%dl
      b2:	04 00                	add    $0x0,%al
      b4:	00 05 12 01 5e 00    	add    %al,0x5e0112(%rip)        # 5e01cc <__FRAME_END__+0x1de79c>
      ba:	00 00                	add    %al,(%rax)
      bc:	00 08                	add    %cl,(%rax)
      be:	40 02 00             	add    (%rax),%al
      c1:	00 05 17 01 8b 00    	add    %al,0x8b0117(%rip)        # 8b01de <_end+0x2ad296>
      c7:	00 00                	add    %al,(%rax)
      c9:	08 08                	or     %cl,(%rax)
      cb:	ac                   	lods   %ds:(%rsi),%al
      cc:	00 00                	add    %al,(%rax)
      ce:	00 05 18 01 8b 00    	add    %al,0x8b0118(%rip)        # 8b01ec <_end+0x2ad2a4>
      d4:	00 00                	add    %al,(%rax)
      d6:	10 08                	adc    %cl,(%rax)
      d8:	c0 03 00             	rolb   $0x0,(%rbx)
      db:	00 05 19 01 8b 00    	add    %al,0x8b0119(%rip)        # 8b01fa <_end+0x2ad2b2>
      e1:	00 00                	add    %al,(%rax)
      e3:	18 08                	sbb    %cl,(%rax)
      e5:	20 05 00 00 05 1a    	and    %al,0x1a050000(%rip)        # 1a0500eb <_end+0x19a4d1a3>
      eb:	01 8b 00 00 00 20    	add    %ecx,0x20000000(%rbx)
      f1:	08 7a 01             	or     %bh,0x1(%rdx)
      f4:	00 00                	add    %al,(%rax)
      f6:	05 1b 01 8b 00       	add    $0x8b011b,%eax
      fb:	00 00                	add    %al,(%rax)
      fd:	28 08                	sub    %cl,(%rax)
      ff:	87 04 00             	xchg   %eax,(%rax,%rax,1)
     102:	00 05 1c 01 8b 00    	add    %al,0x8b011c(%rip)        # 8b0224 <_end+0x2ad2dc>
     108:	00 00                	add    %al,(%rax)
     10a:	30 08                	xor    %cl,(%rax)
     10c:	39 00                	cmp    %eax,(%rax)
     10e:	00 00                	add    %al,(%rax)
     110:	05 1d 01 8b 00       	add    $0x8b011d,%eax
     115:	00 00                	add    %al,(%rax)
     117:	38 08                	cmp    %cl,(%rax)
     119:	fc                   	cld    
     11a:	02 00                	add    (%rax),%al
     11c:	00 05 1e 01 8b 00    	add    %al,0x8b011e(%rip)        # 8b0240 <_end+0x2ad2f8>
     122:	00 00                	add    %al,(%rax)
     124:	40 08 c2             	or     %al,%dl
     127:	01 00                	add    %eax,(%rax)
     129:	00 05 20 01 8b 00    	add    %al,0x8b0120(%rip)        # 8b024f <_end+0x2ad307>
     12f:	00 00                	add    %al,(%rax)
     131:	48 08 de             	rex.W or %bl,%sil
     134:	04 00                	add    $0x0,%al
     136:	00 05 21 01 8b 00    	add    %al,0x8b0121(%rip)        # 8b025d <_end+0x2ad315>
     13c:	00 00                	add    %al,(%rax)
     13e:	50                   	push   %rax
     13f:	08 2e                	or     %ch,(%rsi)
     141:	04 00                	add    $0x0,%al
     143:	00 05 22 01 8b 00    	add    %al,0x8b0122(%rip)        # 8b026b <_end+0x2ad323>
     149:	00 00                	add    %al,(%rax)
     14b:	58                   	pop    %rax
     14c:	08 99 02 00 00 05    	or     %bl,0x5000002(%rcx)
     152:	24 01                	and    $0x1,%al
     154:	62                   	(bad)  
     155:	02 00                	add    (%rax),%al
     157:	00 60 08             	add    %ah,0x8(%rax)
     15a:	18 00                	sbb    %al,(%rax)
     15c:	00 00                	add    %al,(%rax)
     15e:	05 26 01 68 02       	add    $0x2680126,%eax
     163:	00 00                	add    %al,(%rax)
     165:	68 08 a4 00 00       	pushq  $0xa408
     16a:	00 05 28 01 5e 00    	add    %al,0x5e0128(%rip)        # 5e0298 <__FRAME_END__+0x1de868>
     170:	00 00                	add    %al,(%rax)
     172:	70 08                	jo     17c <_init-0x400634>
     174:	f6 01 00             	testb  $0x0,(%rcx)
     177:	00 05 2c 01 5e 00    	add    %al,0x5e012c(%rip)        # 5e02a9 <__FRAME_END__+0x1de879>
     17d:	00 00                	add    %al,(%rax)
     17f:	74 08                	je     189 <_init-0x400627>
     181:	ee                   	out    %al,(%dx)
     182:	00 00                	add    %al,(%rax)
     184:	00 05 2e 01 6c 00    	add    %al,0x6c012e(%rip)        # 6c02b8 <_end+0xbd370>
     18a:	00 00                	add    %al,(%rax)
     18c:	78 08                	js     196 <_init-0x40061a>
     18e:	e2 00                	loop   190 <_init-0x400620>
     190:	00 00                	add    %al,(%rax)
     192:	05 32 01 42 00       	add    $0x420132,%eax
     197:	00 00                	add    %al,(%rax)
     199:	80 08 1b             	orb    $0x1b,(%rax)
     19c:	03 00                	add    (%rax),%eax
     19e:	00 05 33 01 50 00    	add    %al,0x500133(%rip)        # 5002d7 <__FRAME_END__+0xfe8a7>
     1a4:	00 00                	add    %al,(%rax)
     1a6:	82                   	(bad)  
     1a7:	08 26                	or     %ah,(%rsi)
     1a9:	00 00                	add    %al,(%rax)
     1ab:	00 05 34 01 6e 02    	add    %al,0x26e0134(%rip)        # 26e02e5 <_end+0x20dd39d>
     1b1:	00 00                	add    %al,(%rax)
     1b3:	83 08 f0             	orl    $0xfffffff0,(%rax)
     1b6:	01 00                	add    %eax,(%rax)
     1b8:	00 05 38 01 7e 02    	add    %al,0x27e0138(%rip)        # 27e02f6 <_end+0x21dd3ae>
     1be:	00 00                	add    %al,(%rax)
     1c0:	88 08                	mov    %cl,(%rax)
     1c2:	f2 00 00             	repnz add %al,(%rax)
     1c5:	00 05 41 01 77 00    	add    %al,0x770141(%rip)        # 77030c <_end+0x16d3c4>
     1cb:	00 00                	add    %al,(%rax)
     1cd:	90                   	nop
     1ce:	08 28                	or     %ch,(%rax)
     1d0:	01 00                	add    %eax,(%rax)
     1d2:	00 05 4a 01 89 00    	add    %al,0x89014a(%rip)        # 890322 <_end+0x28d3da>
     1d8:	00 00                	add    %al,(%rax)
     1da:	98                   	cwtl   
     1db:	08 2f                	or     %ch,(%rdi)
     1dd:	01 00                	add    %eax,(%rax)
     1df:	00 05 4b 01 89 00    	add    %al,0x89014b(%rip)        # 890330 <_end+0x28d3e8>
     1e5:	00 00                	add    %al,(%rax)
     1e7:	a0 08 63 03 00 00 05 	movabs 0x14c050000036308,%al
     1ee:	4c 01 
     1f0:	89 00                	mov    %eax,(%rax)
     1f2:	00 00                	add    %al,(%rax)
     1f4:	a8 08                	test   $0x8,%al
     1f6:	71 04                	jno    1fc <_init-0x4005b4>
     1f8:	00 00                	add    %al,(%rax)
     1fa:	05 4d 01 89 00       	add    $0x89014d,%eax
     1ff:	00 00                	add    %al,(%rax)
     201:	b0 08                	mov    $0x8,%al
     203:	78 04                	js     209 <_init-0x4005a7>
     205:	00 00                	add    %al,(%rax)
     207:	05 4e 01 29 00       	add    $0x29014e,%eax
     20c:	00 00                	add    %al,(%rax)
     20e:	b8 08 fe 01 00       	mov    $0x1fe08,%eax
     213:	00 05 50 01 5e 00    	add    %al,0x5e0150(%rip)        # 5e0369 <__FRAME_END__+0x1de939>
     219:	00 00                	add    %al,(%rax)
     21b:	c0 08 95             	rorb   $0x95,(%rax)
     21e:	04 00                	add    $0x0,%al
     220:	00 05 52 01 84 02    	add    %al,0x2840152(%rip)        # 2840378 <_end+0x223d430>
     226:	00 00                	add    %al,(%rax)
     228:	c4                   	(bad)  
     229:	00 09                	add    %cl,(%rcx)
     22b:	5b                   	pop    %rbx
     22c:	02 00                	add    (%rax),%al
     22e:	00 05 b6 0a 5f 01    	add    %al,0x15f0ab6(%rip)        # 15f0cea <_end+0xfedda2>
     234:	00 00                	add    %al,(%rax)
     236:	18 05 bc 62 02 00    	sbb    %al,0x262bc(%rip)        # 264f8 <_init-0x3da2b8>
     23c:	00 0b                	add    %cl,(%rbx)
     23e:	b0 03                	mov    $0x3,%al
     240:	00 00                	add    %al,(%rax)
     242:	05 bd 62 02 00       	add    $0x262bd,%eax
     247:	00 00                	add    %al,(%rax)
     249:	0b 87 02 00 00 05    	or     0x5000002(%rdi),%eax
     24f:	be 68 02 00 00       	mov    $0x268,%esi
     254:	08 0b                	or     %cl,(%rbx)
     256:	82                   	(bad)  
     257:	02 00                	add    (%rax),%al
     259:	00 05 c2 5e 00 00    	add    %al,0x5ec2(%rip)        # 6121 <_init-0x3fa68f>
     25f:	00 10                	add    %dl,(%rax)
     261:	00 06                	add    %al,(%rsi)
     263:	08 31                	or     %dh,(%rcx)
     265:	02 00                	add    (%rax),%al
     267:	00 06                	add    %al,(%rsi)
     269:	08 a3 00 00 00 0c    	or     %ah,0xc000000(%rbx)
     26f:	91                   	xchg   %eax,%ecx
     270:	00 00                	add    %al,(%rax)
     272:	00 7e 02             	add    %bh,0x2(%rsi)
     275:	00 00                	add    %al,(%rax)
     277:	0d 82 00 00 00       	or     $0x82,%eax
     27c:	00 00                	add    %al,(%rax)
     27e:	06                   	(bad)  
     27f:	08 2a                	or     %ch,(%rdx)
     281:	02 00                	add    (%rax),%al
     283:	00 0c 91             	add    %cl,(%rcx,%rdx,4)
     286:	00 00                	add    %al,(%rax)
     288:	00 94 02 00 00 0d 82 	add    %dl,-0x7df30000(%rdx,%rax,1)
     28f:	00 00                	add    %al,(%rax)
     291:	00 13                	add    %dl,(%rbx)
     293:	00 0e                	add    %cl,(%rsi)
     295:	66                   	data16
     296:	02 00                	add    (%rax),%al
     298:	00 05 57 01 a3 00    	add    %al,0xa30157(%rip)        # a303f5 <_end+0x42d4ad>
     29e:	00 00                	add    %al,(%rax)
     2a0:	06                   	(bad)  
     2a1:	08 a6 02 00 00 0f    	or     %ah,0xf000002(%rsi)
     2a7:	91                   	xchg   %eax,%ecx
     2a8:	00 00                	add    %al,(%rax)
     2aa:	00 06                	add    %al,(%rsi)
     2ac:	08 5e 00             	or     %bl,0x0(%rsi)
     2af:	00 00                	add    %al,(%rax)
     2b1:	03 08                	add    (%rax),%ecx
     2b3:	05 8d 00 00 00       	add    $0x8d,%eax
     2b8:	03 08                	add    (%rax),%ecx
     2ba:	07                   	(bad)  
     2bb:	5f                   	pop    %rdi
     2bc:	00 00                	add    %al,(%rax)
     2be:	00 10                	add    %dl,(%rax)
     2c0:	04 0f                	add    $0xf,%al
     2c2:	31 1b                	xor    %ebx,(%rbx)
     2c4:	03 00                	add    (%rax),%eax
     2c6:	00 11                	add    %dl,(%rcx)
     2c8:	c1 04 00 00          	roll   $0x0,(%rax,%rax,1)
     2cc:	80 02 11             	addb   $0x11,(%rdx)
     2cf:	a7                   	cmpsl  %es:(%rdi),%ds:(%rsi)
     2d0:	03 00                	add    (%rax),%eax
     2d2:	00 80 04 11 7b 00    	add    %al,0x7b1104(%rax)
     2d8:	00 00                	add    %al,(%rax)
     2da:	80 08 11             	orb    $0x11,(%rax)
     2dd:	84 00                	test   %al,(%rax)
     2df:	00 00                	add    %al,(%rax)
     2e1:	80 10 11             	adcb   $0x11,(%rax)
     2e4:	90                   	nop
     2e5:	03 00                	add    (%rax),%eax
     2e7:	00 80 20 11 30 00    	add    %al,0x301120(%rax)
     2ed:	00 00                	add    %al,(%rax)
     2ef:	80 c0 00             	add    $0x0,%al
     2f2:	11 2f                	adc    %ebp,(%rdi)
     2f4:	05 00 00 80 80       	add    $0x80800000,%eax
     2f9:	01 11                	add    %edx,(%rcx)
     2fb:	0f 00 00             	sldt   (%rax)
     2fe:	00 80 80 02 11 19    	add    %al,0x19110280(%rax)
     304:	01 00                	add    %eax,(%rax)
     306:	00 01                	add    %al,(%rcx)
     308:	11 87 03 00 00 02    	adc    %eax,0x2000003(%rdi)
     30e:	11 56 01             	adc    %edx,0x1(%rsi)
     311:	00 00                	add    %al,(%rax)
     313:	04 11                	add    $0x11,%al
     315:	b3 04                	mov    $0x4,%bl
     317:	00 00                	add    %al,(%rax)
     319:	08 00                	or     %al,(%rax)
     31b:	06                   	(bad)  
     31c:	08 21                	or     %ah,(%rcx)
     31e:	03 00                	add    (%rax),%eax
     320:	00 0f                	add    %cl,(%rdi)
     322:	42 00 00             	rex.X add %al,(%rax)
     325:	00 02                	add    %al,(%rdx)
     327:	50                   	push   %rax
     328:	00 00                	add    %al,(%rax)
     32a:	00 06                	add    %al,(%rsi)
     32c:	54                   	push   %rsp
     32d:	31 03                	xor    %eax,(%rbx)
     32f:	00 00                	add    %al,(%rax)
     331:	06                   	(bad)  
     332:	08 37                	or     %dh,(%rdi)
     334:	03 00                	add    (%rax),%eax
     336:	00 12                	add    %dl,(%rdx)
     338:	42 03 00             	rex.X add (%rax),%eax
     33b:	00 13                	add    %dl,(%rbx)
     33d:	5e                   	pop    %rsi
     33e:	00 00                	add    %al,(%rax)
     340:	00 00                	add    %al,(%rax)
     342:	02 4d 02             	add    0x2(%rbp),%cl
     345:	00 00                	add    %al,(%rax)
     347:	07                   	(bad)  
     348:	38 34 00             	cmp    %dh,(%rax,%rax,1)
     34b:	00 00                	add    %al,(%rax)
     34d:	14 46                	adc    $0x46,%al
     34f:	00 00                	add    %al,(%rax)
     351:	00 01                	add    %al,(%rcx)
     353:	c5 01 15 2a          	vunpckhpd (%rdx),%xmm15,%xmm13
     357:	03 00                	add    (%rax),%eax
     359:	00 01                	add    %al,(%rcx)
     35b:	fe 01                	incb   (%rcx)
     35d:	6d                   	insl   (%dx),%es:(%rdi)
     35e:	03 00                	add    (%rax),%eax
     360:	00 16                	add    %dl,(%rsi)
     362:	f4                   	hlt    
     363:	04 00                	add    $0x0,%al
     365:	00 01                	add    %al,(%rcx)
     367:	fe                   	(bad)  
     368:	5e                   	pop    %rsi
     369:	00 00                	add    %al,(%rax)
     36b:	00 00                	add    %al,(%rax)
     36d:	15 11 02 00 00       	adc    $0x211,%eax
     372:	01 f9                	add    %edi,%ecx
     374:	01 85 03 00 00 16    	add    %eax,0x16000003(%rbp)
     37a:	f4                   	hlt    
     37b:	04 00                	add    $0x0,%al
     37d:	00 01                	add    %al,(%rcx)
     37f:	f9                   	stc    
     380:	5e                   	pop    %rsi
     381:	00 00                	add    %al,(%rax)
     383:	00 00                	add    %al,(%rax)
     385:	17                   	(bad)  
     386:	14 05                	adc    $0x5,%al
     388:	00 00                	add    %al,(%rax)
     38a:	01 40 01             	add    %eax,0x1(%rax)
     38d:	00 cf                	add    %cl,%bh
     38f:	03 00                	add    (%rax),%eax
     391:	00 18                	add    %bl,(%rax)
     393:	22 01                	and    (%rcx),%al
     395:	00 00                	add    %al,(%rax)
     397:	01 40 01             	add    %eax,0x1(%rax)
     39a:	5e                   	pop    %rsi
     39b:	00 00                	add    %al,(%rax)
     39d:	00 18                	add    %bl,(%rax)
     39f:	f3 00 00             	repz add %al,(%rax)
     3a2:	00 01                	add    %al,(%rcx)
     3a4:	40 01 5e 00          	rex add %ebx,0x0(%rsi)
     3a8:	00 00                	add    %al,(%rax)
     3aa:	19 12                	sbb    %edx,(%rdx)
     3ac:	03 00                	add    (%rax),%eax
     3ae:	00 01                	add    %al,(%rcx)
     3b0:	41 01 cf             	add    %ecx,%r15d
     3b3:	03 00                	add    (%rax),%eax
     3b5:	00 19                	add    %bl,(%rcx)
     3b7:	96                   	xchg   %eax,%esi
     3b8:	01 00                	add    %eax,(%rax)
     3ba:	00 01                	add    %al,(%rcx)
     3bc:	42 01 5e 00          	rex.X add %ebx,0x0(%rsi)
     3c0:	00 00                	add    %al,(%rax)
     3c2:	19 33                	sbb    %esi,(%rbx)
     3c4:	00 00                	add    %al,(%rax)
     3c6:	00 01                	add    %al,(%rcx)
     3c8:	43 01 ab 02 00 00 00 	rex.XB add %ebp,0x2(%r11)
     3cf:	0c 5e                	or     $0x5e,%al
     3d1:	00 00                	add    %al,(%rax)
     3d3:	00 df                	add    %bl,%bh
     3d5:	03 00                	add    (%rax),%eax
     3d7:	00 0d 82 00 00 00    	add    %cl,0x82(%rip)        # 45f <_init-0x400351>
     3dd:	0f 00 1a             	ltr    (%rdx)
     3e0:	ce                   	(bad)  
     3e1:	02 00                	add    (%rax),%al
     3e3:	00 01                	add    %al,(%rcx)
     3e5:	62                   	(bad)  
     3e6:	01 01                	add    %eax,(%rcx)
     3e8:	11 04 00             	adc    %eax,(%rax,%rax,1)
     3eb:	00 18                	add    %bl,(%rax)
     3ed:	a2 02 00 00 01 63 01 	movabs %al,0x342016301000002
     3f4:	42 03 
     3f6:	00 00                	add    %al,(%rax)
     3f8:	18 aa 04 00 00 01    	sbb    %ch,0x1000004(%rdx)
     3fe:	64 01 18             	add    %ebx,%fs:(%rax)
     401:	04 00                	add    $0x0,%al
     403:	00 19                	add    %bl,(%rcx)
     405:	7f 03                	jg     40a <_init-0x4003a6>
     407:	00 00                	add    %al,(%rax)
     409:	01 65 01             	add    %esp,0x1(%rbp)
     40c:	42 03 00             	rex.X add (%rax),%eax
     40f:	00 00                	add    %al,(%rax)
     411:	1b 18                	sbb    (%rax),%ebx
     413:	04 00                	add    $0x0,%al
     415:	00 1c 00             	add    %bl,(%rax,%rax,1)
     418:	06                   	(bad)  
     419:	08 11                	or     %dl,(%rcx)
     41b:	04 00                	add    $0x0,%al
     41d:	00 1d 06 05 00 00    	add    %bl,0x506(%rip)        # 929 <_init-0x3ffe87>
     423:	01 5e 01             	add    %ebx,0x1(%rsi)
     426:	01 1e                	add    %ebx,(%rsi)
     428:	38 05 00 00 01 bc    	cmp    %al,-0x43ff0000(%rip)        # ffffffffbc01042e <_end+0xffffffffbba0d4e6>
     42e:	90                   	nop
     42f:	0b 40 00             	or     0x0(%rax),%eax
     432:	00 00                	add    %al,(%rax)
     434:	00 00                	add    %al,(%rax)
     436:	eb 0b                	jmp    443 <_init-0x40036d>
     438:	40 00 00             	add    %al,(%rax)
     43b:	00 00                	add    %al,(%rax)
     43d:	00 01                	add    %al,(%rcx)
     43f:	9c                   	pushfq 
     440:	50                   	push   %rax
     441:	04 00                	add    $0x0,%al
     443:	00 1f                	add    %bl,(%rdi)
     445:	63 00                	movslq (%rax),%eax
     447:	01 bc 91 00 00 00 01 	add    %edi,0x1000000(%rcx,%rdx,4)
     44e:	55                   	push   %rbp
     44f:	00 20                	add    %ah,(%rax)
     451:	24 02                	and    $0x2,%al
     453:	00 00                	add    %al,(%rax)
     455:	01 15 01 f0 0b 40    	add    %edx,0x400bf001(%rip)        # 400bf45c <_end+0x3fabc514>
     45b:	00 00                	add    %al,(%rax)
     45d:	00 00                	add    %al,(%rax)
     45f:	00 14 0c             	add    %dl,(%rsp,%rcx,1)
     462:	40 00 00             	add    %al,(%rax)
     465:	00 00                	add    %al,(%rax)
     467:	00 01                	add    %al,(%rcx)
     469:	9c                   	pushfq 
     46a:	d7                   	xlat   %ds:(%rbx)
     46b:	04 00                	add    $0x0,%al
     46d:	00 21                	add    %ah,(%rcx)
     46f:	91                   	xchg   %eax,%ecx
     470:	01 00                	add    %eax,(%rax)
     472:	00 01                	add    %al,(%rcx)
     474:	15 01 8b 00 00       	adc    $0x8b01,%eax
     479:	00 00                	add    %al,(%rax)
     47b:	00 00                	add    %al,(%rax)
     47d:	00 22                	add    %ah,(%rdx)
     47f:	03 0c 40             	add    (%rax,%rax,2),%ecx
     482:	00 00                	add    %al,(%rax)
     484:	00 00                	add    %al,(%rax)
     486:	00 a4 12 00 00 a4 04 	add    %ah,0x4a40000(%rdx,%rdx,1)
     48d:	00 00                	add    %al,(%rax)
     48f:	23 01                	and    (%rcx),%eax
     491:	55                   	push   %rbp
     492:	09 03                	or     %eax,(%rbx)
     494:	c0 12 40             	rclb   $0x40,(%rdx)
     497:	00 00                	add    %al,(%rax)
     499:	00 00                	add    %al,(%rax)
     49b:	00 23                	add    %ah,(%rbx)
     49d:	01 54 03 f3          	add    %edx,-0xd(%rbx,%rax,1)
     4a1:	01 55 00             	add    %edx,0x0(%rbp)
     4a4:	22 0d 0c 40 00 00    	and    0x400c(%rip),%cl        # 44b6 <_init-0x3fc2fa>
     4aa:	00 00                	add    %al,(%rax)
     4ac:	00 bb 12 00 00 c3    	add    %bh,-0x3cffffee(%rbx)
     4b2:	04 00                	add    $0x0,%al
     4b4:	00 23                	add    %ah,(%rbx)
     4b6:	01 55 09             	add    %edx,0x9(%rbp)
     4b9:	03 88 13 40 00 00    	add    0x4013(%rax),%ecx
     4bf:	00 00                	add    %al,(%rax)
     4c1:	00 00                	add    %al,(%rax)
     4c3:	24 14                	and    $0x14,%al
     4c5:	0c 40                	or     $0x40,%al
     4c7:	00 00                	add    %al,(%rax)
     4c9:	00 00                	add    %al,(%rax)
     4cb:	00 d4                	add    %dl,%ah
     4cd:	12 00                	adc    (%rax),%al
     4cf:	00 23                	add    %ah,(%rbx)
     4d1:	01 55 01             	add    %edx,0x1(%rbp)
     4d4:	30 00                	xor    %al,(%rax)
     4d6:	00 25 e1 01 00 00    	add    %ah,0x1e1(%rip)        # 6bd <_init-0x4000f3>
     4dc:	01 38                	add    %edi,(%rax)
     4de:	01 20                	add    %esp,(%rax)
     4e0:	0c 40                	or     $0x40,%al
     4e2:	00 00                	add    %al,(%rax)
     4e4:	00 00                	add    %al,(%rax)
     4e6:	00 3f                	add    %bh,(%rdi)
     4e8:	0c 40                	or     $0x40,%al
     4ea:	00 00                	add    %al,(%rax)
     4ec:	00 00                	add    %al,(%rax)
     4ee:	00 01                	add    %al,(%rcx)
     4f0:	9c                   	pushfq 
     4f1:	57                   	push   %rdi
     4f2:	05 00 00 26 73       	add    $0x73260000,%eax
     4f7:	69 67 00 01 38 01 5e 	imul   $0x5e013801,0x0(%rdi),%esp
     4fe:	00 00                	add    %al,(%rax)
     500:	00 4c 00 00          	add    %cl,0x0(%rax,%rax,1)
     504:	00 22                	add    %ah,(%rdx)
     506:	2e                   	cs
     507:	0c 40                	or     $0x40,%al
     509:	00 00                	add    %al,(%rax)
     50b:	00 00                	add    %al,(%rax)
     50d:	00 bb 12 00 00 24    	add    %bh,0x24000012(%rbx)
     513:	05 00 00 23 01       	add    $0x1230000,%eax
     518:	55                   	push   %rbp
     519:	09 03                	or     %eax,(%rbx)
     51b:	b0 13                	mov    $0x13,%al
     51d:	40 00 00             	add    %al,(%rax)
     520:	00 00                	add    %al,(%rax)
     522:	00 00                	add    %al,(%rax)
     524:	22 38                	and    (%rax),%bh
     526:	0c 40                	or     $0x40,%al
     528:	00 00                	add    %al,(%rax)
     52a:	00 00                	add    %al,(%rax)
     52c:	00 bb 12 00 00 43    	add    %bh,0x43000012(%rbx)
     532:	05 00 00 23 01       	add    $0x1230000,%eax
     537:	55                   	push   %rbp
     538:	09 03                	or     %eax,(%rbx)
     53a:	d7                   	xlat   %ds:(%rbx)
     53b:	12 40 00             	adc    0x0(%rax),%al
     53e:	00 00                	add    %al,(%rax)
     540:	00 00                	add    %al,(%rax)
     542:	00 24 3f             	add    %ah,(%rdi,%rdi,1)
     545:	0c 40                	or     $0x40,%al
     547:	00 00                	add    %al,(%rax)
     549:	00 00                	add    %al,(%rax)
     54b:	00 d4                	add    %dl,%ah
     54d:	12 00                	adc    (%rax),%al
     54f:	00 23                	add    %ah,(%rbx)
     551:	01 55 01             	add    %edx,0x1(%rbp)
     554:	30 00                	xor    %al,(%rax)
     556:	00 25 36 01 00 00    	add    %ah,0x136(%rip)        # 692 <_init-0x40011e>
     55c:	01 30                	add    %esi,(%rax)
     55e:	01 40 0c             	add    %eax,0xc(%rax)
     561:	40 00 00             	add    %al,(%rax)
     564:	00 00                	add    %al,(%rax)
     566:	00 67 0c             	add    %ah,0xc(%rdi)
     569:	40 00 00             	add    %al,(%rax)
     56c:	00 00                	add    %al,(%rax)
     56e:	00 01                	add    %al,(%rcx)
     570:	9c                   	pushfq 
     571:	d7                   	xlat   %ds:(%rbx)
     572:	05 00 00 26 73       	add    $0x73260000,%eax
     577:	69 67 00 01 30 01 5e 	imul   $0x5e013001,0x0(%rdi),%esp
     57e:	00 00                	add    %al,(%rax)
     580:	00 85 00 00 00 22    	add    %al,0x22000000(%rbp)
     586:	56                   	push   %rsi
     587:	0c 40                	or     $0x40,%al
     589:	00 00                	add    %al,(%rax)
     58b:	00 00                	add    %al,(%rax)
     58d:	00 a4 12 00 00 a4 05 	add    %ah,0x5a40000(%rdx,%rdx,1)
     594:	00 00                	add    %al,(%rax)
     596:	23 01                	and    (%rcx),%eax
     598:	55                   	push   %rbp
     599:	09 03                	or     %eax,(%rbx)
     59b:	e0 13                	loopne 5b0 <_init-0x400200>
     59d:	40 00 00             	add    %al,(%rax)
     5a0:	00 00                	add    %al,(%rax)
     5a2:	00 00                	add    %al,(%rax)
     5a4:	22 60 0c             	and    0xc(%rax),%ah
     5a7:	40 00 00             	add    %al,(%rax)
     5aa:	00 00                	add    %al,(%rax)
     5ac:	00 bb 12 00 00 c3    	add    %bh,-0x3cffffee(%rbx)
     5b2:	05 00 00 23 01       	add    $0x1230000,%eax
     5b7:	55                   	push   %rbp
     5b8:	09 03                	or     %eax,(%rbx)
     5ba:	d7                   	xlat   %ds:(%rbx)
     5bb:	12 40 00             	adc    0x0(%rax),%al
     5be:	00 00                	add    %al,(%rax)
     5c0:	00 00                	add    %al,(%rax)
     5c2:	00 24 67             	add    %ah,(%rdi,%riz,2)
     5c5:	0c 40                	or     $0x40,%al
     5c7:	00 00                	add    %al,(%rax)
     5c9:	00 00                	add    %al,(%rax)
     5cb:	00 d4                	add    %dl,%ah
     5cd:	12 00                	adc    (%rax),%al
     5cf:	00 23                	add    %ah,(%rbx)
     5d1:	01 55 01             	add    %edx,0x1(%rbp)
     5d4:	30 00                	xor    %al,(%rax)
     5d6:	00 25 d0 01 00 00    	add    %ah,0x1d0(%rip)        # 7ac <_init-0x400004>
     5dc:	01 25 01 70 0c 40    	add    %esp,0x400c7001(%rip)        # 400c75e3 <_end+0x3fac469b>
     5e2:	00 00                	add    %al,(%rax)
     5e4:	00 00                	add    %al,(%rax)
     5e6:	00 8f 0c 40 00 00    	add    %cl,0x400c(%rdi)
     5ec:	00 00                	add    %al,(%rax)
     5ee:	00 01                	add    %al,(%rcx)
     5f0:	9c                   	pushfq 
     5f1:	57                   	push   %rdi
     5f2:	06                   	(bad)  
     5f3:	00 00                	add    %al,(%rax)
     5f5:	26                   	es
     5f6:	73 69                	jae    661 <_init-0x40014f>
     5f8:	67 00 01             	add    %al,(%ecx)
     5fb:	25 01 5e 00 00       	and    $0x5e01,%eax
     600:	00 be 00 00 00 22    	add    %bh,0x22000000(%rsi)
     606:	7e 0c                	jle    614 <_init-0x40019c>
     608:	40 00 00             	add    %al,(%rax)
     60b:	00 00                	add    %al,(%rax)
     60d:	00 bb 12 00 00 24    	add    %bh,0x24000012(%rbx)
     613:	06                   	(bad)  
     614:	00 00                	add    %al,(%rax)
     616:	23 01                	and    (%rcx),%eax
     618:	55                   	push   %rbp
     619:	09 03                	or     %eax,(%rbx)
     61b:	18 14 40             	sbb    %dl,(%rax,%rax,2)
     61e:	00 00                	add    %al,(%rax)
     620:	00 00                	add    %al,(%rax)
     622:	00 00                	add    %al,(%rax)
     624:	22 88 0c 40 00 00    	and    0x400c(%rax),%cl
     62a:	00 00                	add    %al,(%rax)
     62c:	00 bb 12 00 00 43    	add    %bh,0x43000012(%rbx)
     632:	06                   	(bad)  
     633:	00 00                	add    %al,(%rax)
     635:	23 01                	and    (%rcx),%eax
     637:	55                   	push   %rbp
     638:	09 03                	or     %eax,(%rbx)
     63a:	d7                   	xlat   %ds:(%rbx)
     63b:	12 40 00             	adc    0x0(%rax),%al
     63e:	00 00                	add    %al,(%rax)
     640:	00 00                	add    %al,(%rax)
     642:	00 24 8f             	add    %ah,(%rdi,%rcx,4)
     645:	0c 40                	or     $0x40,%al
     647:	00 00                	add    %al,(%rax)
     649:	00 00                	add    %al,(%rax)
     64b:	00 d4                	add    %dl,%ah
     64d:	12 00                	adc    (%rax),%al
     64f:	00 23                	add    %ah,(%rbx)
     651:	01 55 01             	add    %edx,0x1(%rbp)
     654:	30 00                	xor    %al,(%rax)
     656:	00 25 43 03 00 00    	add    %ah,0x343(%rip)        # 99f <_init-0x3ffe11>
     65c:	01 1d 01 90 0c 40    	add    %ebx,0x400c9001(%rip)        # 400c9663 <_end+0x3fac671b>
     662:	00 00                	add    %al,(%rax)
     664:	00 00                	add    %al,(%rax)
     666:	00 af 0c 40 00 00    	add    %ch,0x400c(%rdi)
     66c:	00 00                	add    %al,(%rax)
     66e:	00 01                	add    %al,(%rcx)
     670:	9c                   	pushfq 
     671:	d7                   	xlat   %ds:(%rbx)
     672:	06                   	(bad)  
     673:	00 00                	add    %al,(%rax)
     675:	26                   	es
     676:	73 69                	jae    6e1 <_init-0x4000cf>
     678:	67 00 01             	add    %al,(%ecx)
     67b:	1d 01 5e 00 00       	sbb    $0x5e01,%eax
     680:	00 f7                	add    %dh,%bh
     682:	00 00                	add    %al,(%rax)
     684:	00 22                	add    %ah,(%rdx)
     686:	9e                   	sahf   
     687:	0c 40                	or     $0x40,%al
     689:	00 00                	add    %al,(%rax)
     68b:	00 00                	add    %al,(%rax)
     68d:	00 bb 12 00 00 a4    	add    %bh,-0x5bffffee(%rbx)
     693:	06                   	(bad)  
     694:	00 00                	add    %al,(%rax)
     696:	23 01                	and    (%rcx),%eax
     698:	55                   	push   %rbp
     699:	09 03                	or     %eax,(%rbx)
     69b:	40 14 40             	adc    $0x40,%al
     69e:	00 00                	add    %al,(%rax)
     6a0:	00 00                	add    %al,(%rax)
     6a2:	00 00                	add    %al,(%rax)
     6a4:	22 a8 0c 40 00 00    	and    0x400c(%rax),%ch
     6aa:	00 00                	add    %al,(%rax)
     6ac:	00 bb 12 00 00 c3    	add    %bh,-0x3cffffee(%rbx)
     6b2:	06                   	(bad)  
     6b3:	00 00                	add    %al,(%rax)
     6b5:	23 01                	and    (%rcx),%eax
     6b7:	55                   	push   %rbp
     6b8:	09 03                	or     %eax,(%rbx)
     6ba:	d7                   	xlat   %ds:(%rbx)
     6bb:	12 40 00             	adc    0x0(%rax),%al
     6be:	00 00                	add    %al,(%rax)
     6c0:	00 00                	add    %al,(%rax)
     6c2:	00 24 af             	add    %ah,(%rdi,%rbp,4)
     6c5:	0c 40                	or     $0x40,%al
     6c7:	00 00                	add    %al,(%rax)
     6c9:	00 00                	add    %al,(%rax)
     6cb:	00 d4                	add    %dl,%ah
     6cd:	12 00                	adc    (%rax),%al
     6cf:	00 23                	add    %ah,(%rbx)
     6d1:	01 55 01             	add    %edx,0x1(%rbp)
     6d4:	30 00                	xor    %al,(%rax)
     6d6:	00 27                	add    %ah,(%rdi)
     6d8:	bc 04 00 00 01       	mov    $0x1000004,%esp
     6dd:	ca 8b 00             	lret   $0x8b
     6e0:	00 00                	add    %al,(%rax)
     6e2:	b0 0c                	mov    $0xc,%al
     6e4:	40 00 00             	add    %al,(%rax)
     6e7:	00 00                	add    %al,(%rax)
     6e9:	00 9f 0d 40 00 00    	add    %bl,0x400d(%rdi)
     6ef:	00 00                	add    %al,(%rax)
     6f1:	00 01                	add    %al,(%rcx)
     6f3:	9c                   	pushfq 
     6f4:	bc 07 00 00 28       	mov    $0x28000007,%esp
     6f9:	94                   	xchg   %eax,%esp
     6fa:	02 00                	add    (%rax),%al
     6fc:	00 01                	add    %al,(%rcx)
     6fe:	ca 8b 00             	lret   $0x8b
     701:	00 00                	add    %al,(%rax)
     703:	30 01                	xor    %al,(%rcx)
     705:	00 00                	add    %al,(%rax)
     707:	29 63 00             	sub    %esp,0x0(%rbx)
     70a:	01 cc                	add    %ecx,%esp
     70c:	5e                   	pop    %rsi
     70d:	00 00                	add    %al,(%rax)
     70f:	00 8c 01 00 00 29 68 	add    %cl,0x68290000(%rcx,%rax,1)
     716:	63 00                	movslq (%rax),%eax
     718:	01 cc                	add    %ecx,%esp
     71a:	5e                   	pop    %rsi
     71b:	00 00                	add    %al,(%rax)
     71d:	00 ef                	add    %ch,%bh
     71f:	01 00                	add    %eax,(%rax)
     721:	00 2a                	add    %ch,(%rdx)
     723:	3b 02                	cmp    (%rdx),%eax
     725:	00 00                	add    %al,(%rax)
     727:	01 cd                	add    %ecx,%ebp
     729:	5e                   	pop    %rsi
     72a:	00 00                	add    %al,(%rax)
     72c:	00 61 02             	add    %ah,0x2(%rcx)
     72f:	00 00                	add    %al,(%rax)
     731:	2a 8d 02 00 00 01    	sub    0x1000002(%rbp),%cl
     737:	ce                   	(bad)  
     738:	5e                   	pop    %rsi
     739:	00 00                	add    %al,(%rax)
     73b:	00 d3                	add    %dl,%bl
     73d:	02 00                	add    (%rax),%al
     73f:	00 29                	add    %ch,(%rcx)
     741:	73 70                	jae    7b3 <_init-0x3ffffd>
     743:	00 01                	add    %al,(%rcx)
     745:	cf                   	iret   
     746:	8b 00                	mov    (%rax),%eax
     748:	00 00                	add    %al,(%rax)
     74a:	31 03                	xor    %eax,(%rbx)
     74c:	00 00                	add    %al,(%rax)
     74e:	2b 00                	sub    (%rax),%eax
     750:	00 00                	add    %al,(%rax)
     752:	00 74 07 00          	add    %dh,0x0(%rdi,%rax,1)
     756:	00 29                	add    %ch,(%rcx)
     758:	76 61                	jbe    7bb <_init-0x3ffff5>
     75a:	6c                   	insb   (%dx),%es:(%rdi)
     75b:	00 01                	add    %al,(%rcx)
     75d:	da 5e 00             	ficompl 0x0(%rsi)
     760:	00 00                	add    %al,(%rax)
     762:	8f 03                	popq   (%rbx)
     764:	00 00                	add    %al,(%rax)
     766:	2c 9a                	sub    $0x9a,%al
     768:	0d 40 00 00 00       	or     $0x40,%eax
     76d:	00 00                	add    %al,(%rax)
     76f:	27                   	(bad)  
     770:	04 00                	add    $0x0,%al
     772:	00 00                	add    %al,(%rax)
     774:	2d 4d 03 00 00       	sub    $0x34d,%eax
     779:	59                   	pop    %rcx
     77a:	0d 40 00 00 00       	or     $0x40,%eax
     77f:	00 00                	add    %al,(%rax)
     781:	30 00                	xor    %al,(%rax)
     783:	00 00                	add    %al,(%rax)
     785:	01 ee                	add    %ebp,%esi
     787:	2c ec                	sub    $0xec,%al
     789:	0c 40                	or     $0x40,%al
     78b:	00 00                	add    %al,(%rax)
     78d:	00 00                	add    %al,(%rax)
     78f:	00 e6                	add    %ah,%dh
     791:	12 00                	adc    (%rax),%al
     793:	00 2c fd 0c 40 00 00 	add    %ch,0x400c(,%rdi,8)
     79a:	00 00                	add    %al,(%rax)
     79c:	00 02                	add    %al,(%rdx)
     79e:	13 00                	adc    (%rax),%eax
     7a0:	00 2c 44             	add    %ch,(%rsp,%rax,2)
     7a3:	0d 40 00 00 00       	or     $0x40,%eax
     7a8:	00 00                	add    %al,(%rax)
     7aa:	27                   	(bad)  
     7ab:	04 00                	add    $0x0,%al
     7ad:	00 2c 50             	add    %ch,(%rax,%rdx,2)
     7b0:	0d 40 00 00 00       	or     $0x40,%eax
     7b5:	00 00                	add    %al,(%rax)
     7b7:	e6 12                	out    %al,$0x12
     7b9:	00 00                	add    %al,(%rax)
     7bb:	00 2e                	add    %ch,(%rsi)
     7bd:	fa                   	cli    
     7be:	04 00                	add    $0x0,%al
     7c0:	00 01                	add    %al,(%rcx)
     7c2:	83 b8 02 00 00 a0 0d 	cmpl   $0xd,-0x5ffffffe(%rax)
     7c9:	40 00 00             	add    %al,(%rax)
     7cc:	00 00                	add    %al,(%rax)
     7ce:	00 1b                	add    %bl,(%rbx)
     7d0:	0e                   	(bad)  
     7d1:	40 00 00             	add    %al,(%rax)
     7d4:	00 00                	add    %al,(%rax)
     7d6:	00 01                	add    %al,(%rcx)
     7d8:	9c                   	pushfq 
     7d9:	25 08 00 00 2f       	and    $0x2f000008,%eax
     7de:	62                   	(bad)  
     7df:	75 66                	jne    847 <_init-0x3fff69>
     7e1:	00 01                	add    %al,(%rcx)
     7e3:	85 25 08 00 00 02    	test   %esp,0x2000008(%rip)        # 20007f1 <_end+0x19fd8a9>
     7e9:	91                   	xchg   %eax,%ecx
     7ea:	40 30 4e 03          	xor    %cl,0x3(%rsi)
     7ee:	00 00                	add    %al,(%rax)
     7f0:	01 86 35 08 00 00    	add    %eax,0x835(%rsi)
     7f6:	01 58 31             	add    %ebx,0x31(%rax)
     7f9:	69 00 01 87 5e 00    	imul   $0x5e8701,(%rax),%eax
     7ff:	00 00                	add    %al,(%rax)
     801:	29 76 61             	sub    %esi,0x61(%rsi)
     804:	6c                   	insb   (%dx),%es:(%rdi)
     805:	00 01                	add    %al,(%rcx)
     807:	88 b8 02 00 00 c5    	mov    %bh,-0x3afffffe(%rax)
     80d:	03 00                	add    (%rax),%eax
     80f:	00 24 b1             	add    %ah,(%rcx,%rsi,4)
     812:	0d 40 00 00 00       	or     $0x40,%eax
     817:	00 00                	add    %al,(%rax)
     819:	d7                   	xlat   %ds:(%rbx)
     81a:	06                   	(bad)  
     81b:	00 00                	add    %al,(%rax)
     81d:	23 01                	and    (%rcx),%eax
     81f:	55                   	push   %rbp
     820:	02 91 40 00 00 0c    	add    0xc000040(%rcx),%dl
     826:	91                   	xchg   %eax,%ecx
     827:	00 00                	add    %al,(%rax)
     829:	00 35 08 00 00 0d    	add    %dh,0xd000008(%rip)        # d000837 <_end+0xc9fd8ef>
     82f:	82                   	(bad)  
     830:	00 00                	add    %al,(%rax)
     832:	00 23                	add    %ah,(%rbx)
     834:	00 06                	add    %al,(%rsi)
     836:	08 3b                	or     %bh,(%rbx)
     838:	08 00                	or     %al,(%rax)
     83a:	00 32                	add    %dh,(%rdx)
     83c:	91                   	xchg   %eax,%ecx
     83d:	00 00                	add    %al,(%rax)
     83f:	00 33                	add    %dh,(%rbx)
     841:	6d                   	insl   (%dx),%es:(%rdi)
     842:	03 00                	add    (%rax),%eax
     844:	00 20                	add    %ah,(%rax)
     846:	0e                   	(bad)  
     847:	40 00 00             	add    %al,(%rax)
     84a:	00 00                	add    %al,(%rax)
     84c:	00 27                	add    %ah,(%rdi)
     84e:	0e                   	(bad)  
     84f:	40 00 00             	add    %al,(%rax)
     852:	00 00                	add    %al,(%rax)
     854:	00 01                	add    %al,(%rcx)
     856:	9c                   	pushfq 
     857:	63 08                	movslq (%rax),%ecx
     859:	00 00                	add    %al,(%rax)
     85b:	34 79                	xor    $0x79,%al
     85d:	03 00                	add    (%rax),%eax
     85f:	00 01                	add    %al,(%rcx)
     861:	55                   	push   %rbp
     862:	00 33                	add    %dh,(%rbx)
     864:	55                   	push   %rbp
     865:	03 00                	add    (%rax),%eax
     867:	00 30                	add    %dh,(%rax)
     869:	0e                   	(bad)  
     86a:	40 00 00             	add    %al,(%rax)
     86d:	00 00                	add    %al,(%rax)
     86f:	00 ca                	add    %cl,%dl
     871:	0e                   	(bad)  
     872:	40 00 00             	add    %al,(%rax)
     875:	00 00                	add    %al,(%rax)
     877:	00 01                	add    %al,(%rcx)
     879:	9c                   	pushfq 
     87a:	43 09 00             	rex.XB or %eax,(%r8)
     87d:	00 35 61 03 00 00    	add    %dh,0x361(%rip)        # be4 <_init-0x3ffbcc>
     883:	fb                   	sti    
     884:	03 00                	add    (%rax),%eax
     886:	00 36                	add    %dh,(%rsi)
     888:	55                   	push   %rbp
     889:	03 00                	add    (%rax),%eax
     88b:	00 6d 0e             	add    %ch,0xe(%rbp)
     88e:	40 00 00             	add    %al,(%rax)
     891:	00 00                	add    %al,(%rax)
     893:	00 70 00             	add    %dh,0x0(%rax)
     896:	00 00                	add    %al,(%rax)
     898:	01 fe                	add    %edi,%esi
     89a:	ca 08 00             	lret   $0x8
     89d:	00 35 61 03 00 00    	add    %dh,0x361(%rip)        # c04 <_init-0x3ffbac>
     8a3:	fe 04 00             	incb   (%rax,%rax,1)
     8a6:	00 37                	add    %dh,(%rdi)
     8a8:	9e                   	sahf   
     8a9:	0e                   	(bad)  
     8aa:	40 00 00             	add    %al,(%rax)
     8ad:	00 00                	add    %al,(%rax)
     8af:	00 a4 12 00 00 23 01 	add    %ah,0x1230000(%rdx,%rdx,1)
     8b6:	55                   	push   %rbp
     8b7:	09 03                	or     %eax,(%rbx)
     8b9:	f8                   	clc    
     8ba:	12 40 00             	adc    0x0(%rax),%al
     8bd:	00 00                	add    %al,(%rax)
     8bf:	00 00                	add    %al,(%rax)
     8c1:	23 01                	and    (%rcx),%eax
     8c3:	54                   	push   %rsp
     8c4:	03 f3                	add    %ebx,%esi
     8c6:	01 55 00             	add    %edx,0x0(%rbp)
     8c9:	00 38                	add    %bh,(%rax)
     8cb:	8a 0e                	mov    (%rsi),%cl
     8cd:	40 00 00             	add    %al,(%rax)
     8d0:	00 00                	add    %al,(%rax)
     8d2:	00 bb 12 00 00 e9    	add    %bh,-0x16ffffee(%rbx)
     8d8:	08 00                	or     %al,(%rax)
     8da:	00 23                	add    %ah,(%rbx)
     8dc:	01 55 09             	add    %edx,0x9(%rbp)
     8df:	03 b8 14 40 00 00    	add    0x4014(%rax),%edi
     8e5:	00 00                	add    %al,(%rax)
     8e7:	00 00                	add    %al,(%rax)
     8e9:	38 aa 0e 40 00 00    	cmp    %ch,0x400e(%rdx)
     8ef:	00 00                	add    %al,(%rax)
     8f1:	00 bb 12 00 00 08    	add    %bh,0x8000012(%rbx)
     8f7:	09 00                	or     %eax,(%rax)
     8f9:	00 23                	add    %ah,(%rbx)
     8fb:	01 55 09             	add    %edx,0x9(%rbp)
     8fe:	03 90 14 40 00 00    	add    0x4014(%rax),%edx
     904:	00 00                	add    %al,(%rax)
     906:	00 00                	add    %al,(%rax)
     908:	38 ba 0e 40 00 00    	cmp    %bh,0x400e(%rdx)
     90e:	00 00                	add    %al,(%rax)
     910:	00 bb 12 00 00 27    	add    %bh,0x27000012(%rbx)
     916:	09 00                	or     %eax,(%rax)
     918:	00 23                	add    %ah,(%rbx)
     91a:	01 55 09             	add    %edx,0x9(%rbp)
     91d:	03 ed                	add    %ebp,%ebp
     91f:	12 40 00             	adc    0x0(%rax),%al
     922:	00 00                	add    %al,(%rax)
     924:	00 00                	add    %al,(%rax)
     926:	00 37                	add    %dh,(%rdi)
     928:	ca 0e 40             	lret   $0x400e
     92b:	00 00                	add    %al,(%rax)
     92d:	00 00                	add    %al,(%rax)
     92f:	00 bb 12 00 00 23    	add    %bh,0x23000012(%rbx)
     935:	01 55 09             	add    %edx,0x9(%rbp)
     938:	03 60 14             	add    0x14(%rax),%esp
     93b:	40 00 00             	add    %al,(%rax)
     93e:	00 00                	add    %al,(%rax)
     940:	00 00                	add    %al,(%rax)
     942:	00 39                	add    %bh,(%rcx)
     944:	76 00                	jbe    946 <_init-0x3ffe6a>
     946:	00 00                	add    %al,(%rax)
     948:	01 66 d0             	add    %esp,-0x30(%rsi)
     94b:	0e                   	(bad)  
     94c:	40 00 00             	add    %al,(%rax)
     94f:	00 00                	add    %al,(%rax)
     951:	00 7f 0f             	add    %bh,0xf(%rdi)
     954:	40 00 00             	add    %al,(%rax)
     957:	00 00                	add    %al,(%rax)
     959:	00 01                	add    %al,(%rcx)
     95b:	9c                   	pushfq 
     95c:	70 0a                	jo     968 <_init-0x3ffe48>
     95e:	00 00                	add    %al,(%rax)
     960:	29 76 61             	sub    %esi,0x61(%rsi)
     963:	6c                   	insb   (%dx),%es:(%rdi)
     964:	00 01                	add    %al,(%rcx)
     966:	68 b8 02 00 00       	pushq  $0x2b8
     96b:	5d                   	pop    %rbp
     96c:	05 00 00 30 c0       	add    $0xc0300000,%eax
     971:	00 00                	add    %al,(%rax)
     973:	00 01                	add    %al,(%rcx)
     975:	69 70 0a 00 00 02 91 	imul   $0x91020000,0xa(%rax),%esi
     97c:	58                   	pop    %rax
     97d:	2a 4e 03             	sub    0x3(%rsi),%cl
     980:	00 00                	add    %al,(%rax)
     982:	01 6a 8b             	add    %ebp,-0x75(%rdx)
     985:	00 00                	add    %al,(%rax)
     987:	00 cc                	add    %cl,%ah
     989:	05 00 00 3a 6d       	add    $0x6d3a0000,%eax
     98e:	03 00                	add    (%rax),%eax
     990:	00 e4                	add    %ah,%ah
     992:	0e                   	(bad)  
     993:	40 00 00             	add    %al,(%rax)
     996:	00 00                	add    %al,(%rax)
     998:	00 ee                	add    %ch,%dh
     99a:	0e                   	(bad)  
     99b:	40 00 00             	add    %al,(%rax)
     99e:	00 00                	add    %al,(%rax)
     9a0:	00 01                	add    %al,(%rcx)
     9a2:	6b ae 09 00 00 3b 79 	imul   $0x79,0x3b000009(%rsi),%ebp
     9a9:	03 00                	add    (%rax),%eax
     9ab:	00 03                	add    %al,(%rbx)
     9ad:	00 3a                	add    %bh,(%rdx)
     9af:	6d                   	insl   (%dx),%es:(%rdi)
     9b0:	03 00                	add    (%rax),%eax
     9b2:	00 02                	add    %al,(%rdx)
     9b4:	0f 40 00             	cmovo  (%rax),%eax
     9b7:	00 00                	add    %al,(%rax)
     9b9:	00 00                	add    %al,(%rax)
     9bb:	0c 0f                	or     $0xf,%al
     9bd:	40 00 00             	add    %al,(%rax)
     9c0:	00 00                	add    %al,(%rax)
     9c2:	00 01                	add    %al,(%rcx)
     9c4:	70 d3                	jo     999 <_init-0x3ffe17>
     9c6:	09 00                	or     %eax,(%rax)
     9c8:	00 35 79 03 00 00    	add    %dh,0x379(%rip)        # d47 <_init-0x3ffa69>
     9ce:	f5                   	cmc    
     9cf:	05 00 00 00 2c       	add    $0x2c000000,%eax
     9d4:	f3 0e                	repz (bad) 
     9d6:	40 00 00             	add    %al,(%rax)
     9d9:	00 00                	add    %al,(%rax)
     9db:	00 bc 07 00 00 22 29 	add    %bh,0x29220000(%rdi,%rax,1)
     9e2:	0f 40 00             	cmovo  (%rax),%eax
     9e5:	00 00                	add    %al,(%rax)
     9e7:	00 00                	add    %al,(%rax)
     9e9:	a4                   	movsb  %ds:(%rsi),%es:(%rdi)
     9ea:	12 00                	adc    (%rax),%al
     9ec:	00 ff                	add    %bh,%bh
     9ee:	09 00                	or     %eax,(%rax)
     9f0:	00 23                	add    %ah,(%rbx)
     9f2:	01 55 09             	add    %edx,0x9(%rbp)
     9f5:	03 08                	add    (%rax),%ecx
     9f7:	13 40 00             	adc    0x0(%rax),%eax
     9fa:	00 00                	add    %al,(%rax)
     9fc:	00 00                	add    %al,(%rax)
     9fe:	00 22                	add    %ah,(%rdx)
     a00:	3a 0f                	cmp    (%rdi),%cl
     a02:	40 00 00             	add    %al,(%rax)
     a05:	00 00                	add    %al,(%rax)
     a07:	00 bb 12 00 00 1e    	add    %bh,0x1e000012(%rbx)
     a0d:	0a 00                	or     (%rax),%al
     a0f:	00 23                	add    %ah,(%rbx)
     a11:	01 55 09             	add    %edx,0x9(%rbp)
     a14:	03 f8                	add    %eax,%edi
     a16:	14 40                	adc    $0x40,%al
     a18:	00 00                	add    %al,(%rax)
     a1a:	00 00                	add    %al,(%rax)
     a1c:	00 00                	add    %al,(%rax)
     a1e:	22 5c 0f 40          	and    0x40(%rdi,%rcx,1),%bl
     a22:	00 00                	add    %al,(%rax)
     a24:	00 00                	add    %al,(%rax)
     a26:	00 a4 12 00 00 3d 0a 	add    %ah,0xa3d0000(%rdx,%rdx,1)
     a2d:	00 00                	add    %al,(%rax)
     a2f:	23 01                	and    (%rcx),%eax
     a31:	55                   	push   %rbp
     a32:	09 03                	or     %eax,(%rbx)
     a34:	28 15 40 00 00 00    	sub    %dl,0x40(%rip)        # a7a <_init-0x3ffd36>
     a3a:	00 00                	add    %al,(%rax)
     a3c:	00 22                	add    %ah,(%rdx)
     a3e:	6f                   	outsl  %ds:(%rsi),(%dx)
     a3f:	0f 40 00             	cmovo  (%rax),%eax
     a42:	00 00                	add    %al,(%rax)
     a44:	00 00                	add    %al,(%rax)
     a46:	bb 12 00 00 5c       	mov    $0x5c000012,%ebx
     a4b:	0a 00                	or     (%rax),%al
     a4d:	00 23                	add    %ah,(%rbx)
     a4f:	01 55 09             	add    %edx,0x9(%rbp)
     a52:	03 f8                	add    %eax,%edi
     a54:	14 40                	adc    $0x40,%al
     a56:	00 00                	add    %al,(%rax)
     a58:	00 00                	add    %al,(%rax)
     a5a:	00 00                	add    %al,(%rax)
     a5c:	24 79                	and    $0x79,%al
     a5e:	0f 40 00             	cmovo  (%rax),%eax
     a61:	00 00                	add    %al,(%rax)
     a63:	00 00                	add    %al,(%rax)
     a65:	55                   	push   %rbp
     a66:	03 00                	add    (%rax),%eax
     a68:	00 23                	add    %ah,(%rbx)
     a6a:	01 55 01             	add    %edx,0x1(%rbp)
     a6d:	33 00                	xor    (%rax),%eax
     a6f:	00 32                	add    %dh,(%rdx)
     a71:	b8 02 00 00 33       	mov    $0x33000002,%eax
     a76:	85 03                	test   %eax,(%rbx)
     a78:	00 00                	add    %al,(%rax)
     a7a:	80 0f 40             	orb    $0x40,(%rdi)
     a7d:	00 00                	add    %al,(%rax)
     a7f:	00 00                	add    %al,(%rax)
     a81:	00 1e                	add    %bl,(%rsi)
     a83:	10 40 00             	adc    %al,0x0(%rax)
     a86:	00 00                	add    %al,(%rax)
     a88:	00 00                	add    %al,(%rax)
     a8a:	01 9c 5d 0b 00 00 35 	add    %ebx,0x3500000b(%rbp,%rbx,2)
     a91:	9e                   	sahf   
     a92:	03 00                	add    (%rax),%eax
     a94:	00 2d 06 00 00 34    	add    %ch,0x34000006(%rip)        # 34000aa0 <_end+0x339fdb58>
     a9a:	92                   	xchg   %eax,%edx
     a9b:	03 00                	add    (%rax),%eax
     a9d:	00 06                	add    %al,(%rsi)
     a9f:	fa                   	cli    
     aa0:	92                   	xchg   %eax,%edx
     aa1:	03 00                	add    (%rax),%eax
     aa3:	00 9f 3c aa 03 00    	add    %bl,0x3aa3c(%rdi)
     aa9:	00 03                	add    %al,(%rbx)
     aab:	91                   	xchg   %eax,%ecx
     aac:	b0 7f                	mov    $0x7f,%al
     aae:	3d b6 03 00 00       	cmp    $0x3b6,%eax
     ab3:	66                   	data16
     ab4:	06                   	(bad)  
     ab5:	00 00                	add    %al,(%rax)
     ab7:	3d c2 03 00 00       	cmp    $0x3c2,%eax
     abc:	d7                   	xlat   %ds:(%rbx)
     abd:	06                   	(bad)  
     abe:	00 00                	add    %al,(%rax)
     ac0:	22 b4 0f 40 00 00 00 	and    0x40(%rdi,%rcx,1),%dh
     ac7:	00 00                	add    %al,(%rax)
     ac9:	13 13                	adc    (%rbx),%edx
     acb:	00 00                	add    %al,(%rax)
     acd:	f6                   	(bad)  
     ace:	0a 00                	or     (%rax),%al
     ad0:	00 23                	add    %ah,(%rbx)
     ad2:	01 55 05             	add    %edx,0x5(%rbp)
     ad5:	77 0f                	ja     ae6 <_init-0x3ffcca>
     ad7:	09 f0                	or     %esi,%eax
     ad9:	1a 23                	sbb    (%rbx),%ah
     adb:	01 54 02 08          	add    %edx,0x8(%rdx,%rax,1)
     adf:	f4                   	hlt    
     ae0:	23 01                	and    (%rcx),%eax
     ae2:	51                   	push   %rcx
     ae3:	11 91 b0 7f 0a f8    	adc    %edx,-0x7f58050(%rcx)
     ae9:	3f                   	(bad)  
     aea:	1a f3                	sbb    %bl,%dh
     aec:	01 55 22             	add    %edx,0x22(%rbp)
     aef:	08 20                	or     %ah,(%rax)
     af1:	24 08                	and    $0x8,%al
     af3:	20 26                	and    %ah,(%rsi)
     af5:	00 22                	add    %ah,(%rdx)
     af7:	d6                   	(bad)  
     af8:	0f 40 00             	cmovo  (%rax),%eax
     afb:	00 00                	add    %al,(%rax)
     afd:	00 00                	add    %al,(%rax)
     aff:	a4                   	movsb  %ds:(%rsi),%es:(%rdi)
     b00:	12 00                	adc    (%rax),%al
     b02:	00 15 0b 00 00 23    	add    %dl,0x2300000b(%rip)        # 23000b13 <_end+0x229fdbcb>
     b08:	01 55 09             	add    %edx,0x9(%rbp)
     b0b:	03 25 13 40 00 00    	add    0x4013(%rip),%esp        # 4b24 <_init-0x3fbc8c>
     b11:	00 00                	add    %al,(%rax)
     b13:	00 00                	add    %al,(%rax)
     b15:	2c dd                	sub    $0xdd,%al
     b17:	0f 40 00             	cmovo  (%rax),%eax
     b1a:	00 00                	add    %al,(%rax)
     b1c:	00 00                	add    %al,(%rax)
     b1e:	43 09 00             	rex.XB or %eax,(%r8)
     b21:	00 22                	add    %ah,(%rdx)
     b23:	fa                   	cli    
     b24:	0f 40 00             	cmovo  (%rax),%eax
     b27:	00 00                	add    %al,(%rax)
     b29:	00 00                	add    %al,(%rax)
     b2b:	bb 12 00 00 41       	mov    $0x41000012,%ebx
     b30:	0b 00                	or     (%rax),%eax
     b32:	00 23                	add    %ah,(%rbx)
     b34:	01 55 09             	add    %edx,0x9(%rbp)
     b37:	03 d7                	add    %edi,%edx
     b39:	12 40 00             	adc    0x0(%rax),%al
     b3c:	00 00                	add    %al,(%rax)
     b3e:	00 00                	add    %al,(%rax)
     b40:	00 24 1c             	add    %ah,(%rsp,%rbx,1)
     b43:	10 40 00             	adc    %al,0x0(%rax)
     b46:	00 00                	add    %al,(%rax)
     b48:	00 00                	add    %al,(%rax)
     b4a:	a4                   	movsb  %ds:(%rsi),%es:(%rdi)
     b4b:	12 00                	adc    (%rax),%al
     b4d:	00 23                	add    %ah,(%rbx)
     b4f:	01 55 09             	add    %edx,0x9(%rbp)
     b52:	03 37                	add    (%rdi),%esi
     b54:	13 40 00             	adc    0x0(%rax),%eax
     b57:	00 00                	add    %al,(%rax)
     b59:	00 00                	add    %al,(%rax)
     b5b:	00 00                	add    %al,(%rax)
     b5d:	3e                   	ds
     b5e:	48 04 00             	rex.W add $0x0,%al
     b61:	00 01                	add    %al,(%rcx)
     b63:	58                   	pop    %rax
     b64:	20 10                	and    %dl,(%rax)
     b66:	40 00 00             	add    %al,(%rax)
     b69:	00 00                	add    %al,(%rax)
     b6b:	00 69 10             	add    %ch,0x10(%rcx)
     b6e:	40 00 00             	add    %al,(%rax)
     b71:	00 00                	add    %al,(%rax)
     b73:	00 01                	add    %al,(%rcx)
     b75:	9c                   	pushfq 
     b76:	14 0c                	adc    $0xc,%al
     b78:	00 00                	add    %al,(%rax)
     b7a:	3f                   	(bad)  
     b7b:	76 61                	jbe    bde <_init-0x3ffbd2>
     b7d:	6c                   	insb   (%dx),%es:(%rdi)
     b7e:	00 01                	add    %al,(%rcx)
     b80:	58                   	pop    %rax
     b81:	b8 02 00 00 42       	mov    $0x42000002,%eax
     b86:	07                   	(bad)  
     b87:	00 00                	add    %al,(%rax)
     b89:	3a 6d 03             	cmp    0x3(%rbp),%ch
     b8c:	00 00                	add    %al,(%rax)
     b8e:	32 10                	xor    (%rax),%dl
     b90:	40 00 00             	add    %al,(%rax)
     b93:	00 00                	add    %al,(%rax)
     b95:	00 3c 10             	add    %bh,(%rax,%rdx,1)
     b98:	40 00 00             	add    %al,(%rax)
     b9b:	00 00                	add    %al,(%rax)
     b9d:	00 01                	add    %al,(%rcx)
     b9f:	5a                   	pop    %rdx
     ba0:	ab                   	stos   %eax,%es:(%rdi)
     ba1:	0b 00                	or     (%rax),%eax
     ba3:	00 3b                	add    %bh,(%rbx)
     ba5:	79 03                	jns    baa <_init-0x3ffc06>
     ba7:	00 00                	add    %al,(%rax)
     ba9:	02 00                	add    (%rax),%al
     bab:	22 4a 10             	and    0x10(%rdx),%cl
     bae:	40 00 00             	add    %al,(%rax)
     bb1:	00 00                	add    %al,(%rax)
     bb3:	00 a4 12 00 00 ca 0b 	add    %ah,0xbca0000(%rdx,%rdx,1)
     bba:	00 00                	add    %al,(%rax)
     bbc:	23 01                	and    (%rcx),%eax
     bbe:	55                   	push   %rbp
     bbf:	09 03                	or     %eax,(%rbx)
     bc1:	70 15                	jo     bd8 <_init-0x3ffbd8>
     bc3:	40 00 00             	add    %al,(%rax)
     bc6:	00 00                	add    %al,(%rax)
     bc8:	00 00                	add    %al,(%rax)
     bca:	22 51 10             	and    0x10(%rcx),%dl
     bcd:	40 00 00             	add    %al,(%rax)
     bd0:	00 00                	add    %al,(%rax)
     bd2:	00 d4                	add    %dl,%ah
     bd4:	12 00                	adc    (%rax),%al
     bd6:	00 e1                	add    %ah,%cl
     bd8:	0b 00                	or     (%rax),%eax
     bda:	00 23                	add    %ah,(%rbx)
     bdc:	01 55 01             	add    %edx,0x1(%rbp)
     bdf:	30 00                	xor    %al,(%rax)
     be1:	22 5d 10             	and    0x10(%rbp),%bl
     be4:	40 00 00             	add    %al,(%rax)
     be7:	00 00                	add    %al,(%rax)
     be9:	00 a4 12 00 00 00 0c 	add    %ah,0xc000000(%rdx,%rdx,1)
     bf0:	00 00                	add    %al,(%rax)
     bf2:	23 01                	and    (%rcx),%eax
     bf4:	55                   	push   %rbp
     bf5:	09 03                	or     %eax,(%rbx)
     bf7:	48 15 40 00 00 00    	adc    $0x40,%rax
     bfd:	00 00                	add    %al,(%rax)
     bff:	00 24 67             	add    %ah,(%rdi,%riz,2)
     c02:	10 40 00             	adc    %al,0x0(%rax)
     c05:	00 00                	add    %al,(%rax)
     c07:	00 00                	add    %al,(%rax)
     c09:	55                   	push   %rbp
     c0a:	03 00                	add    (%rax),%eax
     c0c:	00 23                	add    %ah,(%rbx)
     c0e:	01 55 01             	add    %edx,0x1(%rbp)
     c11:	32 00                	xor    (%rax),%al
     c13:	00 3e                	add    %bh,(%rsi)
     c15:	56                   	push   %rsi
     c16:	02 00                	add    (%rax),%al
     c18:	00 01                	add    %al,(%rcx)
     c1a:	48 70 10             	rex.W jo c2d <_init-0x3ffb83>
     c1d:	40 00 00             	add    %al,(%rax)
     c20:	00 00                	add    %al,(%rax)
     c22:	00 b7 10 40 00 00    	add    %dh,0x4010(%rdi)
     c28:	00 00                	add    %al,(%rax)
     c2a:	00 01                	add    %al,(%rcx)
     c2c:	9c                   	pushfq 
     c2d:	2b 0d 00 00 28 4d    	sub    0x4d280000(%rip),%ecx        # 4d280c33 <_end+0x4cc7dceb>
     c33:	04 00                	add    $0x0,%al
     c35:	00 01                	add    %al,(%rcx)
     c37:	48 5e                	rex.W pop %rsi
     c39:	00 00                	add    %al,(%rax)
     c3b:	00 a4 07 00 00 28 52 	add    %ah,0x52280000(%rdi,%rax,1)
     c42:	04 00                	add    $0x0,%al
     c44:	00 01                	add    %al,(%rcx)
     c46:	48 91                	xchg   %rax,%rcx
     c48:	00 00                	add    %al,(%rax)
     c4a:	00 06                	add    %al,(%rsi)
     c4c:	08 00                	or     %al,(%rax)
     c4e:	00 28                	add    %ch,(%rax)
     c50:	57                   	push   %rdi
     c51:	04 00                	add    $0x0,%al
     c53:	00 01                	add    %al,(%rcx)
     c55:	48                   	rex.W
     c56:	65 00 00             	add    %al,%gs:(%rax)
     c59:	00 3f                	add    %bh,(%rdi)
     c5b:	08 00                	or     %al,(%rax)
     c5d:	00 28                	add    %ch,(%rax)
     c5f:	5c                   	pop    %rsp
     c60:	04 00                	add    $0x0,%al
     c62:	00 01                	add    %al,(%rcx)
     c64:	48 8b 00             	mov    (%rax),%rax
     c67:	00 00                	add    %al,(%rax)
     c69:	a1 08 00 00 28 a3 01 	movabs 0x1a328000008,%eax
     c70:	00 00 
     c72:	01 48 57             	add    %ecx,0x57(%rax)
     c75:	00 00                	add    %al,(%rax)
     c77:	00 03                	add    %al,(%rbx)
     c79:	09 00                	or     %eax,(%rax)
     c7b:	00 28                	add    %ch,(%rax)
     c7d:	6c                   	insb   (%dx),%es:(%rdi)
     c7e:	04 00                	add    $0x0,%al
     c80:	00 01                	add    %al,(%rcx)
     c82:	48 57                	rex.W push %rdi
     c84:	00 00                	add    %al,(%rax)
     c86:	00 65 09             	add    %ah,0x9(%rbp)
     c89:	00 00                	add    %al,(%rax)
     c8b:	1f                   	(bad)  
     c8c:	76 61                	jbe    cef <_init-0x3ffac1>
     c8e:	6c                   	insb   (%dx),%es:(%rdi)
     c8f:	00 01                	add    %al,(%rcx)
     c91:	48 b8 02 00 00 02 91 	movabs $0x6d3a009102000002,%rax
     c98:	00 3a 6d 
     c9b:	03 00                	add    (%rax),%eax
     c9d:	00 74 10 40          	add    %dh,0x40(%rax,%rdx,1)
     ca1:	00 00                	add    %al,(%rax)
     ca3:	00 00                	add    %al,(%rax)
     ca5:	00 7e 10             	add    %bh,0x10(%rsi)
     ca8:	40 00 00             	add    %al,(%rax)
     cab:	00 00                	add    %al,(%rax)
     cad:	00 01                	add    %al,(%rcx)
     caf:	4a bb 0c 00 00 3b 79 	rex.WX movabs $0x3793b00000c,%rbx
     cb6:	03 00 00 
     cb9:	01 00                	add    %eax,(%rax)
     cbb:	22 98 10 40 00 00    	and    0x4010(%rax),%bl
     cc1:	00 00                	add    %al,(%rax)
     cc3:	00 a4 12 00 00 e1 0c 	add    %ah,0xce10000(%rdx,%rdx,1)
     cca:	00 00                	add    %al,(%rax)
     ccc:	23 01                	and    (%rcx),%eax
     cce:	55                   	push   %rbp
     ccf:	09 03                	or     %eax,(%rbx)
     cd1:	b0 15                	mov    $0x15,%al
     cd3:	40 00 00             	add    %al,(%rax)
     cd6:	00 00                	add    %al,(%rax)
     cd8:	00 23                	add    %ah,(%rbx)
     cda:	01 54 03 91          	add    %edx,-0x6f(%rbx,%rax,1)
     cde:	00 06                	add    %al,(%rsi)
     ce0:	00 22                	add    %ah,(%rdx)
     ce2:	9f                   	lahf   
     ce3:	10 40 00             	adc    %al,0x0(%rax)
     ce6:	00 00                	add    %al,(%rax)
     ce8:	00 00                	add    %al,(%rax)
     cea:	d4                   	(bad)  
     ceb:	12 00                	adc    (%rax),%al
     ced:	00 f8                	add    %bh,%al
     cef:	0c 00                	or     $0x0,%al
     cf1:	00 23                	add    %ah,(%rbx)
     cf3:	01 55 01             	add    %edx,0x1(%rbp)
     cf6:	30 00                	xor    %al,(%rax)
     cf8:	22 ab 10 40 00 00    	and    0x4010(%rbx),%ch
     cfe:	00 00                	add    %al,(%rax)
     d00:	00 a4 12 00 00 17 0d 	add    %ah,0xd170000(%rdx,%rdx,1)
     d07:	00 00                	add    %al,(%rax)
     d09:	23 01                	and    (%rcx),%eax
     d0b:	55                   	push   %rbp
     d0c:	09 03                	or     %eax,(%rbx)
     d0e:	90                   	nop
     d0f:	15 40 00 00 00       	adc    $0x40,%eax
     d14:	00 00                	add    %al,(%rax)
     d16:	00 24 b5 10 40 00 00 	add    %ah,0x4010(,%rsi,4)
     d1d:	00 00                	add    %al,(%rax)
     d1f:	00 55 03             	add    %dl,0x3(%rbp)
     d22:	00 00                	add    %al,(%rax)
     d24:	23 01                	and    (%rcx),%eax
     d26:	55                   	push   %rbp
     d27:	01 31                	add    %esi,(%rcx)
     d29:	00 00                	add    %al,(%rax)
     d2b:	39 fa                	cmp    %edi,%edx
     d2d:	00 00                	add    %al,(%rax)
     d2f:	00 01                	add    %al,(%rcx)
     d31:	3e c0 10 40          	rclb   $0x40,%ds:(%rax)
     d35:	00 00                	add    %al,(%rax)
     d37:	00 00                	add    %al,(%rax)
     d39:	00 e6                	add    %ah,%dh
     d3b:	10 40 00             	adc    %al,0x0(%rax)
     d3e:	00 00                	add    %al,(%rax)
     d40:	00 00                	add    %al,(%rax)
     d42:	01 9c b4 0d 00 00 3a 	add    %ebx,0x3a00000d(%rsp,%rsi,4)
     d49:	6d                   	insl   (%dx),%es:(%rdi)
     d4a:	03 00                	add    (%rax),%eax
     d4c:	00 c9                	add    %cl,%cl
     d4e:	10 40 00             	adc    %al,0x0(%rax)
     d51:	00 00                	add    %al,(%rax)
     d53:	00 00                	add    %al,(%rax)
     d55:	d3 10                	rcll   %cl,(%rax)
     d57:	40 00 00             	add    %al,(%rax)
     d5a:	00 00                	add    %al,(%rax)
     d5c:	00 01                	add    %al,(%rcx)
     d5e:	40 6a 0d             	rex pushq $0xd
     d61:	00 00                	add    %al,(%rax)
     d63:	3b 79 03             	cmp    0x3(%rcx),%edi
     d66:	00 00                	add    %al,(%rax)
     d68:	00 00                	add    %al,(%rax)
     d6a:	22 d8                	and    %al,%bl
     d6c:	10 40 00             	adc    %al,0x0(%rax)
     d6f:	00 00                	add    %al,(%rax)
     d71:	00 00                	add    %al,(%rax)
     d73:	bb 12 00 00 89       	mov    $0x89000012,%ebx
     d78:	0d 00 00 23 01       	or     $0x1230000,%eax
     d7d:	55                   	push   %rbp
     d7e:	09 03                	or     %eax,(%rbx)
     d80:	45 13 40 00          	adc    0x0(%r8),%r8d
     d84:	00 00                	add    %al,(%rax)
     d86:	00 00                	add    %al,(%rax)
     d88:	00 22                	add    %ah,(%rdx)
     d8a:	df 10                	fist   (%rax)
     d8c:	40 00 00             	add    %al,(%rax)
     d8f:	00 00                	add    %al,(%rax)
     d91:	00 55 03             	add    %dl,0x3(%rbp)
     d94:	00 00                	add    %al,(%rax)
     d96:	a0 0d 00 00 23 01 55 	movabs 0x300155012300000d,%al
     d9d:	01 30 
     d9f:	00 24 e6             	add    %ah,(%rsi,%riz,8)
     da2:	10 40 00             	adc    %al,0x0(%rax)
     da5:	00 00                	add    %al,(%rax)
     da7:	00 00                	add    %al,(%rax)
     da9:	d4                   	(bad)  
     daa:	12 00                	adc    (%rax),%al
     dac:	00 23                	add    %ah,(%rbx)
     dae:	01 55 01             	add    %edx,0x1(%rbp)
     db1:	30 00                	xor    %al,(%rax)
     db3:	00 40 1e             	add    %al,0x1e(%rax)
     db6:	04 00                	add    $0x0,%al
     db8:	00 f0                	add    %dh,%al
     dba:	10 40 00             	adc    %al,0x0(%rax)
     dbd:	00 00                	add    %al,(%rax)
     dbf:	00 00                	add    %al,(%rax)
     dc1:	f2 10 40 00          	repnz adc %al,0x0(%rax)
     dc5:	00 00                	add    %al,(%rax)
     dc7:	00 00                	add    %al,(%rax)
     dc9:	01 9c 33 df 03 00 00 	add    %ebx,0x3df(%rbx,%rsi,1)
     dd0:	00 11                	add    %dl,(%rcx)
     dd2:	40 00 00             	add    %al,(%rax)
     dd5:	00 00                	add    %al,(%rax)
     dd7:	00 13                	add    %dl,(%rbx)
     dd9:	11 40 00             	adc    %eax,0x0(%rax)
     ddc:	00 00                	add    %al,(%rax)
     dde:	00 00                	add    %al,(%rax)
     de0:	01 9c 0f 0e 00 00 35 	add    %ebx,0x3500000e(%rdi,%rcx,1)
     de7:	ec                   	in     (%dx),%al
     de8:	03 00                	add    (%rax),%eax
     dea:	00 c7                	add    %al,%bh
     dec:	09 00                	or     %eax,(%rax)
     dee:	00 35 f8 03 00 00    	add    %dh,0x3f8(%rip)        # 11ec <_init-0x3ff5c4>
     df4:	00 0a                	add    %cl,(%rdx)
     df6:	00 00                	add    %al,(%rax)
     df8:	3d 04 04 00 00       	cmp    $0x404,%eax
     dfd:	39 0a                	cmp    %ecx,(%rdx)
     dff:	00 00                	add    %al,(%rax)
     e01:	41 0e                	rex.B (bad) 
     e03:	11 40 00             	adc    %eax,0x0(%rax)
     e06:	00 00                	add    %al,(%rax)
     e08:	00 00                	add    %al,(%rax)
     e0a:	03 f3                	add    %ebx,%esi
     e0c:	01 54 00 42          	add    %edx,0x42(%rax,%rax,1)
     e10:	1b 05 00 00 01 6d    	sbb    0x6d010000(%rip),%eax        # 6d010e16 <_end+0x6ca0dece>
     e16:	01 5e 00             	add    %ebx,0x0(%rsi)
     e19:	00 00                	add    %al,(%rax)
     e1b:	f0 08 40 00          	lock or %al,0x0(%rax)
     e1f:	00 00                	add    %al,(%rax)
     e21:	00 00                	add    %al,(%rax)
     e23:	80 0a 40             	orb    $0x40,(%rdx)
     e26:	00 00                	add    %al,(%rax)
     e28:	00 00                	add    %al,(%rax)
     e2a:	00 01                	add    %al,(%rcx)
     e2c:	9c                   	pushfq 
     e2d:	05 11 00 00 21       	add    $0x21000011,%eax
     e32:	01 05 00 00 01 6d    	add    %eax,0x6d010000(%rip)        # 6d010e38 <_end+0x6ca0def0>
     e38:	01 5e 00             	add    %ebx,0x0(%rsi)
     e3b:	00 00                	add    %al,(%rax)
     e3d:	6f                   	outsl  %ds:(%rsi),(%dx)
     e3e:	0a 00                	or     (%rax),%al
     e40:	00 21                	add    %ah,(%rcx)
     e42:	9e                   	sahf   
     e43:	04 00                	add    $0x0,%al
     e45:	00 01                	add    %al,(%rcx)
     e47:	6d                   	insl   (%dx),%es:(%rdi)
     e48:	01 05 11 00 00 ce    	add    %eax,-0x31ffffef(%rip)        # ffffffffce000e5f <_end+0xffffffffcd9fdf17>
     e4e:	0a 00                	or     (%rax),%al
     e50:	00 43 d1             	add    %al,-0x2f(%rbx)
     e53:	04 00                	add    $0x0,%al
     e55:	00 01                	add    %al,(%rcx)
     e57:	6f                   	outsl  %ds:(%rsi),(%dx)
     e58:	01 5e 00             	add    %ebx,0x0(%rsi)
     e5b:	00 00                	add    %al,(%rax)
     e5d:	2d 0b 00 00 44       	sub    $0x4400000b,%eax
     e62:	22 01                	and    (%rcx),%al
     e64:	00 00                	add    %al,(%rax)
     e66:	01 70 01             	add    %esi,0x1(%rax)
     e69:	5e                   	pop    %rsi
     e6a:	00 00                	add    %al,(%rax)
     e6c:	00 00                	add    %al,(%rax)
     e6e:	45 69 00 01 71 01 5e 	imul   $0x5e017101,(%r8),%r8d
     e75:	00 00                	add    %al,(%rax)
     e77:	00 97 0b 00 00 19    	add    %dl,0x1900000b(%rdi)
     e7d:	7f 04                	jg     e83 <_init-0x3ff92d>
     e7f:	00 00                	add    %al,(%rax)
     e81:	01 72 01             	add    %esi,0x1(%rdx)
     e84:	ab                   	stos   %eax,%es:(%rdi)
     e85:	02 00                	add    (%rax),%al
     e87:	00 46 63             	add    %al,0x63(%rsi)
     e8a:	6e                   	outsb  %ds:(%rsi),(%dx)
     e8b:	74 00                	je     e8d <_init-0x3ff923>
     e8d:	01 73 01             	add    %esi,0x1(%rbx)
     e90:	5e                   	pop    %rsi
     e91:	00 00                	add    %al,(%rax)
     e93:	00 01                	add    %al,(%rcx)
     e95:	45 63 00             	movslq (%r8),%r8d
     e98:	01 74 01 91          	add    %esi,-0x6f(%rcx,%rax,1)
     e9c:	00 00                	add    %al,(%rax)
     e9e:	00 cf                	add    %cl,%bh
     ea0:	0b 00                	or     (%rax),%eax
     ea2:	00 45 6d             	add    %al,0x6d(%rbp)
     ea5:	00 01                	add    %al,(%rcx)
     ea7:	76 01                	jbe    eaa <_init-0x3ff906>
     ea9:	8b 00                	mov    (%rax),%eax
     eab:	00 00                	add    %al,(%rax)
     ead:	18 0c 00             	sbb    %cl,(%rax,%rax,1)
     eb0:	00 47 00             	add    %al,0x0(%rdi)
     eb3:	01 00                	add    %eax,(%rax)
     eb5:	00 01                	add    %al,(%rcx)
     eb7:	76 01                	jbe    eba <_init-0x3ff8f6>
     eb9:	5e                   	pop    %rsi
     eba:	00 00                	add    %al,(%rax)
     ebc:	00 c3                	add    %al,%bl
     ebe:	0e                   	(bad)  
     ebf:	00 00                	add    %al,(%rax)
     ec1:	1c 00                	sbb    $0x0,%al
     ec3:	19 a2 02 00 00 01    	sbb    %esp,0x1000002(%rdx)
     ec9:	77 01                	ja     ecc <_init-0x3ff8e4>
     ecb:	42 03 00             	rex.X add (%rax),%eax
     ece:	00 48 df             	add    %cl,-0x21(%rax)
     ed1:	03 00                	add    (%rax),%eax
     ed3:	00 27                	add    %ah,(%rdi)
     ed5:	09 40 00             	or     %eax,0x0(%rax)
     ed8:	00 00                	add    %al,(%rax)
     eda:	00 00                	add    %al,(%rax)
     edc:	a0 00 00 00 01 80 01 	movabs 0xf05018001000000,%al
     ee3:	05 0f 
     ee5:	00 00                	add    %al,(%rax)
     ee7:	35 f8 03 00 00       	xor    $0x3f8,%eax
     eec:	97                   	xchg   %eax,%edi
     eed:	0c 00                	or     $0x0,%al
     eef:	00 49 ec             	add    %cl,-0x14(%rcx)
     ef2:	03 00                	add    (%rax),%eax
     ef4:	00 4a a0             	add    %cl,-0x60(%rdx)
     ef7:	00 00                	add    %al,(%rax)
     ef9:	00 3d 04 04 00 00    	add    %bh,0x404(%rip)        # 1303 <_init-0x3ff4ad>
     eff:	df 0c 00             	fisttp (%rax,%rax,1)
     f02:	00 00                	add    %al,(%rax)
     f04:	00 22                	add    %ah,(%rdx)
     f06:	0a 09                	or     (%rcx),%cl
     f08:	40 00 00             	add    %al,(%rax)
     f0b:	00 00                	add    %al,(%rax)
     f0d:	00 32                	add    %dh,(%rdx)
     f0f:	13 00                	adc    (%rax),%eax
     f11:	00 25 0f 00 00 23    	add    %ah,0x2300000f(%rip)        # 23000f26 <_end+0x229fdfde>
     f17:	01 55 03             	add    %edx,0x3(%rbp)
     f1a:	0a 00                	or     (%rax),%al
     f1c:	40 23 01             	rex and (%rcx),%eax
     f1f:	54                   	push   %rsp
     f20:	03 0a                	add    (%rdx),%ecx
     f22:	00 40 00             	add    %al,0x0(%rax)
     f25:	22 1f                	and    (%rdi),%bl
     f27:	09 40 00             	or     %eax,0x0(%rax)
     f2a:	00 00                	add    %al,(%rax)
     f2c:	00 00                	add    %al,(%rax)
     f2e:	44 13 00             	adc    (%rax),%r8d
     f31:	00 49 0f             	add    %cl,0xf(%rcx)
     f34:	00 00                	add    %al,(%rax)
     f36:	23 01                	and    (%rcx),%eax
     f38:	55                   	push   %rbp
     f39:	02 7c 00 23          	add    0x23(%rax,%rax,1),%bh
     f3d:	01 54 03 0a          	add    %edx,0xa(%rbx,%rax,1)
     f41:	00 40 23             	add    %al,0x23(%rax)
     f44:	01 51 01             	add    %edx,0x1(%rcx)
     f47:	37                   	(bad)  
     f48:	00 22                	add    %ah,(%rdx)
     f4a:	46 09 40 00          	rex.RX or %r8d,0x0(%rax)
     f4e:	00 00                	add    %al,(%rax)
     f50:	00 00                	add    %al,(%rax)
     f52:	63 13                	movslq (%rbx),%edx
     f54:	00 00                	add    %al,(%rax)
     f56:	6d                   	insl   (%dx),%es:(%rdi)
     f57:	0f 00 00             	sldt   (%rax)
     f5a:	23 01                	and    (%rcx),%eax
     f5c:	55                   	push   %rbp
     f5d:	01 3b                	add    %edi,(%rbx)
     f5f:	23 01                	and    (%rcx),%eax
     f61:	54                   	push   %rsp
     f62:	09 03                	or     %eax,(%rbx)
     f64:	70 0c                	jo     f72 <_init-0x3ff83e>
     f66:	40 00 00             	add    %al,(%rax)
     f69:	00 00                	add    %al,(%rax)
     f6b:	00 00                	add    %al,(%rax)
     f6d:	22 55 09             	and    0x9(%rbp),%dl
     f70:	40 00 00             	add    %al,(%rax)
     f73:	00 00                	add    %al,(%rax)
     f75:	00 63 13             	add    %ah,0x13(%rbx)
     f78:	00 00                	add    %al,(%rax)
     f7a:	91                   	xchg   %eax,%ecx
     f7b:	0f 00 00             	sldt   (%rax)
     f7e:	23 01                	and    (%rcx),%eax
     f80:	55                   	push   %rbp
     f81:	01 37                	add    %esi,(%rdi)
     f83:	23 01                	and    (%rcx),%eax
     f85:	54                   	push   %rsp
     f86:	09 03                	or     %eax,(%rbx)
     f88:	90                   	nop
     f89:	0c 40                	or     $0x40,%al
     f8b:	00 00                	add    %al,(%rax)
     f8d:	00 00                	add    %al,(%rax)
     f8f:	00 00                	add    %al,(%rax)
     f91:	22 64 09 40          	and    0x40(%rcx,%rcx,1),%ah
     f95:	00 00                	add    %al,(%rax)
     f97:	00 00                	add    %al,(%rax)
     f99:	00 63 13             	add    %ah,0x13(%rbx)
     f9c:	00 00                	add    %al,(%rax)
     f9e:	b5 0f                	mov    $0xf,%ch
     fa0:	00 00                	add    %al,(%rax)
     fa2:	23 01                	and    (%rcx),%eax
     fa4:	55                   	push   %rbp
     fa5:	01 3e                	add    %edi,(%rsi)
     fa7:	23 01                	and    (%rcx),%eax
     fa9:	54                   	push   %rsp
     faa:	09 03                	or     %eax,(%rbx)
     fac:	40 0c 40             	or     $0x40,%al
     faf:	00 00                	add    %al,(%rax)
     fb1:	00 00                	add    %al,(%rax)
     fb3:	00 00                	add    %al,(%rax)
     fb5:	22 73 09             	and    0x9(%rbx),%dh
     fb8:	40 00 00             	add    %al,(%rax)
     fbb:	00 00                	add    %al,(%rax)
     fbd:	00 63 13             	add    %ah,0x13(%rbx)
     fc0:	00 00                	add    %al,(%rax)
     fc2:	d9 0f                	(bad)  (%rdi)
     fc4:	00 00                	add    %al,(%rax)
     fc6:	23 01                	and    (%rcx),%eax
     fc8:	55                   	push   %rbp
     fc9:	01 34 23             	add    %esi,(%rbx,%riz,1)
     fcc:	01 54 09 03          	add    %edx,0x3(%rcx,%rcx,1)
     fd0:	20 0c 40             	and    %cl,(%rax,%rax,2)
     fd3:	00 00                	add    %al,(%rax)
     fd5:	00 00                	add    %al,(%rax)
     fd7:	00 00                	add    %al,(%rax)
     fd9:	22 90 09 40 00 00    	and    0x4009(%rax),%dl
     fdf:	00 00                	add    %al,(%rax)
     fe1:	00 7d 13             	add    %bh,0x13(%rbp)
     fe4:	00 00                	add    %al,(%rax)
     fe6:	04 10                	add    $0x10,%al
     fe8:	00 00                	add    %al,(%rax)
     fea:	23 01                	and    (%rcx),%eax
     fec:	55                   	push   %rbp
     fed:	02 76 00             	add    0x0(%rsi),%dh
     ff0:	23 01                	and    (%rcx),%eax
     ff2:	54                   	push   %rsp
     ff3:	02 73 00             	add    0x0(%rbx),%dh
     ff6:	23 01                	and    (%rcx),%eax
     ff8:	51                   	push   %rcx
     ff9:	09 03                	or     %eax,(%rbx)
     ffb:	7e 13                	jle    1010 <_init-0x3ff7a0>
     ffd:	40 00 00             	add    %al,(%rax)
    1000:	00 00                	add    %al,(%rax)
    1002:	00 00                	add    %al,(%rax)
    1004:	2c b1                	sub    $0xb1,%al
    1006:	09 40 00             	or     %eax,0x0(%rax)
    1009:	00 00                	add    %al,(%rax)
    100b:	00 00                	add    %al,(%rax)
    100d:	50                   	push   %rax
    100e:	04 00                	add    $0x0,%al
    1010:	00 2c c4             	add    %ch,(%rsp,%rax,8)
    1013:	09 40 00             	or     %eax,0x0(%rax)
    1016:	00 00                	add    %al,(%rax)
    1018:	00 00                	add    %al,(%rax)
    101a:	a7                   	cmpsl  %es:(%rdi),%ds:(%rsi)
    101b:	13 00                	adc    (%rax),%eax
    101d:	00 22                	add    %ah,(%rdx)
    101f:	da 09                	fimull (%rcx)
    1021:	40 00 00             	add    %al,(%rax)
    1024:	00 00                	add    %al,(%rax)
    1026:	00 a4 12 00 00 3d 10 	add    %ah,0x103d0000(%rdx,%rdx,1)
    102d:	00 00                	add    %al,(%rax)
    102f:	23 01                	and    (%rcx),%eax
    1031:	55                   	push   %rbp
    1032:	09 03                	or     %eax,(%rbx)
    1034:	60                   	(bad)  
    1035:	13 40 00             	adc    0x0(%rax),%eax
    1038:	00 00                	add    %al,(%rax)
    103a:	00 00                	add    %al,(%rax)
    103c:	00 2c e6             	add    %ch,(%rsi,%riz,8)
    103f:	09 40 00             	or     %eax,0x0(%rax)
    1042:	00 00                	add    %al,(%rax)
    1044:	00 00                	add    %al,(%rax)
    1046:	bd 13 00 00 22       	mov    $0x22000013,%ebp
    104b:	fc                   	cld    
    104c:	09 40 00             	or     %eax,0x0(%rax)
    104f:	00 00                	add    %al,(%rax)
    1051:	00 00                	add    %al,(%rax)
    1053:	a4                   	movsb  %ds:(%rsi),%es:(%rdi)
    1054:	12 00                	adc    (%rax),%al
    1056:	00 69 10             	add    %ch,0x10(%rcx)
    1059:	00 00                	add    %al,(%rax)
    105b:	23 01                	and    (%rcx),%eax
    105d:	55                   	push   %rbp
    105e:	09 03                	or     %eax,(%rbx)
    1060:	6e                   	outsb  %ds:(%rsi),(%dx)
    1061:	13 40 00             	adc    0x0(%rax),%eax
    1064:	00 00                	add    %al,(%rax)
    1066:	00 00                	add    %al,(%rax)
    1068:	00 2c 38             	add    %ch,(%rax,%rdi,1)
    106b:	0a 40 00             	or     0x0(%rax),%al
    106e:	00 00                	add    %al,(%rax)
    1070:	00 00                	add    %al,(%rax)
    1072:	d2 13                	rclb   %cl,(%rbx)
    1074:	00 00                	add    %al,(%rax)
    1076:	2c 3d                	sub    $0x3d,%al
    1078:	0a 40 00             	or     0x0(%rax),%al
    107b:	00 00                	add    %al,(%rax)
    107d:	00 00                	add    %al,(%rax)
    107f:	e4 13                	in     $0x13,%al
    1081:	00 00                	add    %al,(%rax)
    1083:	2c 4b                	sub    $0x4b,%al
    1085:	0a 40 00             	or     0x0(%rax),%al
    1088:	00 00                	add    %al,(%rax)
    108a:	00 00                	add    %al,(%rax)
    108c:	f0 13 00             	lock adc (%rax),%eax
    108f:	00 22                	add    %ah,(%rdx)
    1091:	59                   	pop    %rcx
    1092:	0a 40 00             	or     0x0(%rax),%al
    1095:	00 00                	add    %al,(%rax)
    1097:	00 00                	add    %al,(%rax)
    1099:	75 0a                	jne    10a5 <_init-0x3ff70b>
    109b:	00 00                	add    %al,(%rax)
    109d:	b3 10                	mov    $0x10,%bl
    109f:	00 00                	add    %al,(%rax)
    10a1:	23 01                	and    (%rcx),%eax
    10a3:	55                   	push   %rbp
    10a4:	06                   	(bad)  
    10a5:	73 00                	jae    10a7 <_init-0x3ff709>
    10a7:	0a f8                	or     %al,%bh
    10a9:	0f 1a 4b 92          	nopl   -0x6e(%rbx)
    10ad:	03 00                	add    (%rax),%eax
    10af:	00 01                	add    %al,(%rcx)
    10b1:	30 00                	xor    %al,(%rax)
    10b3:	22 6a 0a             	and    0xa(%rdx),%ch
    10b6:	40 00 00             	add    %al,(%rax)
    10b9:	00 00                	add    %al,(%rax)
    10bb:	00 06                	add    %al,(%rsi)
    10bd:	14 00                	adc    $0x0,%al
    10bf:	00 d2                	add    %dl,%dl
    10c1:	10 00                	adc    %al,(%rax)
    10c3:	00 23                	add    %ah,(%rbx)
    10c5:	01 55 09             	add    %edx,0x9(%rbp)
    10c8:	03 d8                	add    %eax,%ebx
    10ca:	15 40 00 00 00       	adc    $0x40,%eax
    10cf:	00 00                	add    %al,(%rax)
    10d1:	00 22                	add    %ah,(%rdx)
    10d3:	71 0a                	jno    10df <_init-0x3ff6d1>
    10d5:	40 00 00             	add    %al,(%rax)
    10d8:	00 00                	add    %al,(%rax)
    10da:	00 d4                	add    %dl,%ah
    10dc:	12 00                	adc    (%rax),%al
    10de:	00 e9                	add    %ch,%cl
    10e0:	10 00                	adc    %al,(%rax)
    10e2:	00 23                	add    %ah,(%rbx)
    10e4:	01 55 01             	add    %edx,0x1(%rbp)
    10e7:	30 00                	xor    %al,(%rax)
    10e9:	24 7b                	and    $0x7b,%al
    10eb:	0a 40 00             	or     0x0(%rax),%al
    10ee:	00 00                	add    %al,(%rax)
    10f0:	00 00                	add    %al,(%rax)
    10f2:	bb 12 00 00 23       	mov    $0x23000012,%ebx
    10f7:	01 55 09             	add    %edx,0x9(%rbp)
    10fa:	03 00                	add    (%rax),%eax
    10fc:	16                   	(bad)  
    10fd:	40 00 00             	add    %al,(%rax)
    1100:	00 00                	add    %al,(%rax)
    1102:	00 00                	add    %al,(%rax)
    1104:	00 06                	add    %al,(%rsi)
    1106:	08 8b 00 00 00 0c    	or     %cl,0xc000000(%rbx)
    110c:	91                   	xchg   %eax,%ecx
    110d:	00 00                	add    %al,(%rax)
    110f:	00 1c 11             	add    %bl,(%rcx,%rdx,1)
    1112:	00 00                	add    %al,(%rax)
    1114:	4c 82                	rex.WR (bad) 
    1116:	00 00                	add    %al,(%rax)
    1118:	00 00                	add    %al,(%rax)
    111a:	0c 00                	or     $0x0,%al
    111c:	30 88 01 00 00 01    	xor    %cl,0x1000001(%rax)
    1122:	b5 0b                	mov    $0xb,%ch
    1124:	11 00                	adc    %eax,(%rax)
    1126:	00 09                	add    %cl,(%rcx)
    1128:	03 40 23             	add    0x23(%rax),%eax
    112b:	60                   	(bad)  
    112c:	00 00                	add    %al,(%rax)
    112e:	00 00                	add    %al,(%rax)
    1130:	00 0c 91             	add    %cl,(%rcx,%rdx,4)
    1133:	00 00                	add    %al,(%rax)
    1135:	00 41 11             	add    %al,0x11(%rcx)
    1138:	00 00                	add    %al,(%rax)
    113a:	0d 82 00 00 00       	or     $0x82,%eax
    113f:	0f 00                	(bad)  
    1141:	30 61 04             	xor    %ah,0x4(%rcx)
    1144:	00 00                	add    %al,(%rax)
    1146:	01 b8 56 11 00 00    	add    %edi,0x1156(%rax)
    114c:	09 03                	or     %eax,(%rbx)
    114e:	30 16                	xor    %dl,(%rsi)
    1150:	40 00 00             	add    %al,(%rax)
    1153:	00 00                	add    %al,(%rax)
    1155:	00 0f                	add    %cl,(%rdi)
    1157:	31 11                	xor    %edx,(%rcx)
    1159:	00 00                	add    %al,(%rax)
    115b:	0c 5e                	or     $0x5e,%al
    115d:	00 00                	add    %al,(%rax)
    115f:	00 6b 11             	add    %ch,0x11(%rbx)
    1162:	00 00                	add    %al,(%rax)
    1164:	0d 82 00 00 00       	or     $0x82,%eax
    1169:	04 00                	add    $0x0,%al
    116b:	30 9a 03 00 00 01    	xor    %bl,0x1000003(%rdx)
    1171:	f3 5b                	repz pop %rbx
    1173:	11 00                	adc    %eax,(%rax)
    1175:	00 09                	add    %cl,(%rcx)
    1177:	03 c0                	add    %eax,%eax
    1179:	22 60 00             	and    0x0(%rax),%ah
    117c:	00 00                	add    %al,(%rax)
    117e:	00 00                	add    %al,(%rax)
    1180:	4d 33 03             	xor    (%r11),%r8
    1183:	00 00                	add    %al,(%rax)
    1185:	01 2e                	add    %ebp,(%rsi)
    1187:	01 5e 00             	add    %ebx,0x0(%rsi)
    118a:	00 00                	add    %al,(%rax)
    118c:	09 03                	or     %eax,(%rbx)
    118e:	d4                   	(bad)  
    118f:	22 60 00             	and    0x0(%rax),%ah
    1192:	00 00                	add    %al,(%rax)
    1194:	00 00                	add    %al,(%rax)
    1196:	4e 6a 01             	rex.WRX pushq $0x1
    1199:	00 00                	add    %al,(%rax)
    119b:	04 a9                	add    $0xa9,%al
    119d:	68 02 00 00 4e       	pushq  $0x4e000002
    11a2:	04 02                	add    $0x2,%al
    11a4:	00 00                	add    %al,(%rax)
    11a6:	04 aa                	add    $0xaa,%al
    11a8:	68 02 00 00 4e       	pushq  $0x4e000002
    11ad:	bb 01 00 00 08       	mov    $0x8000001,%ebx
    11b2:	3b 8b 00 00 00 4f    	cmp    0x4f000000(%rbx),%ecx
    11b8:	cc                   	int3   
    11b9:	00 00                	add    %al,(%rax)
    11bb:	00 01                	add    %al,(%rcx)
    11bd:	23 cc                	and    %esp,%ecx
    11bf:	11 00                	adc    %eax,(%rax)
    11c1:	00 09                	add    %cl,(%rcx)
    11c3:	03 38                	add    (%rax),%edi
    11c5:	23 60 00             	and    0x0(%rax),%esp
    11c8:	00 00                	add    %al,(%rax)
    11ca:	00 00                	add    %al,(%rax)
    11cc:	06                   	(bad)  
    11cd:	08 98 00 00 00 4f    	or     %bl,0x4f000000(%rax)
    11d3:	12 01                	adc    (%rcx),%al
    11d5:	00 00                	add    %al,(%rax)
    11d7:	01 25 5e 00 00 00    	add    %esp,0x5e(%rip)        # 123b <_init-0x3ff575>
    11dd:	09 03                	or     %eax,(%rbx)
    11df:	30 23                	xor    %ah,(%rbx)
    11e1:	60                   	(bad)  
    11e2:	00 00                	add    %al,(%rax)
    11e4:	00 00                	add    %al,(%rax)
    11e6:	00 4f db             	add    %cl,-0x25(%rdi)
    11e9:	01 00                	add    %eax,(%rax)
    11eb:	00 01                	add    %al,(%rcx)
    11ed:	27                   	(bad)  
    11ee:	5e                   	pop    %rsi
    11ef:	00 00                	add    %al,(%rax)
    11f1:	00 09                	add    %cl,(%rcx)
    11f3:	03 2c 23             	add    (%rbx,%riz,1),%ebp
    11f6:	60                   	(bad)  
    11f7:	00 00                	add    %al,(%rax)
    11f9:	00 00                	add    %al,(%rax)
    11fb:	00 4f 4c             	add    %cl,0x4c(%rdi)
    11fe:	01 00                	add    %eax,(%rax)
    1200:	00 01                	add    %al,(%rcx)
    1202:	28 49 00             	sub    %cl,0x0(%rcx)
    1205:	00 00                	add    %al,(%rax)
    1207:	09 03                	or     %eax,(%rbx)
    1209:	28 23                	sub    %ah,(%rbx)
    120b:	60                   	(bad)  
    120c:	00 00                	add    %al,(%rax)
    120e:	00 00                	add    %al,(%rax)
    1210:	00 4f 73             	add    %cl,0x73(%rdi)
    1213:	01 00                	add    %eax,(%rax)
    1215:	00 01                	add    %al,(%rcx)
    1217:	2a b8 02 00 00 09    	sub    0x9000002(%rax),%bh
    121d:	03 20                	add    (%rax),%esp
    121f:	23 60 00             	and    0x0(%rax),%esp
    1222:	00 00                	add    %al,(%rax)
    1224:	00 00                	add    %al,(%rax)
    1226:	4f 5e                	rex.WRXB pop %r14
    1228:	03 00                	add    (%rax),%eax
    122a:	00 01                	add    %al,(%rcx)
    122c:	2b 8b 00 00 00 09    	sub    0x9000000(%rbx),%ecx
    1232:	03 18                	add    (%rax),%ebx
    1234:	23 60 00             	and    0x0(%rax),%esp
    1237:	00 00                	add    %al,(%rax)
    1239:	00 00                	add    %al,(%rax)
    123b:	4f 0b 02             	rex.WRXB or (%r10),%r8
    123e:	00 00                	add    %al,(%rax)
    1240:	01 2c 5e             	add    %ebp,(%rsi,%rbx,2)
    1243:	00 00                	add    %al,(%rax)
    1245:	00 09                	add    %cl,(%rcx)
    1247:	03 14 23             	add    (%rbx,%riz,1),%edx
    124a:	60                   	(bad)  
    124b:	00 00                	add    %al,(%rax)
    124d:	00 00                	add    %al,(%rax)
    124f:	00 4f 42             	add    %cl,0x42(%rdi)
    1252:	05 00 00 01 2e       	add    $0x2e010000,%eax
    1257:	5e                   	pop    %rsi
    1258:	00 00                	add    %al,(%rax)
    125a:	00 09                	add    %cl,(%rcx)
    125c:	03 10                	add    (%rax),%edx
    125e:	23 60 00             	and    0x0(%rax),%esp
    1261:	00 00                	add    %al,(%rax)
    1263:	00 00                	add    %al,(%rax)
    1265:	4f 3b 04 00          	cmp    (%r8,%r8,1),%r8
    1269:	00 01                	add    %al,(%rcx)
    126b:	56                   	push   %rsi
    126c:	b8 02 00 00 09       	mov    $0x9000002,%eax
    1271:	03 08                	add    (%rax),%ecx
    1273:	23 60 00             	and    0x0(%rax),%esp
    1276:	00 00                	add    %al,(%rax)
    1278:	00 00                	add    %al,(%rax)
    127a:	4f                   	rex.WRXB
    127b:	43 01 00             	rex.XB add %eax,(%r8)
    127e:	00 01                	add    %al,(%rcx)
    1280:	b6 5e                	mov    $0x5e,%dh
    1282:	00 00                	add    %al,(%rax)
    1284:	00 09                	add    %cl,(%rcx)
    1286:	03 00                	add    (%rax),%eax
    1288:	23 60 00             	and    0x0(%rax),%esp
    128b:	00 00                	add    %al,(%rax)
    128d:	00 00                	add    %al,(%rax)
    128f:	4f ee                	rex.WRXB out %al,(%dx)
    1291:	04 00                	add    $0x0,%al
    1293:	00 01                	add    %al,(%rcx)
    1295:	f6 5e 00             	negb   0x0(%rsi)
    1298:	00 00                	add    %al,(%rax)
    129a:	09 03                	or     %eax,(%rbx)
    129c:	b0 22                	mov    $0x22,%al
    129e:	60                   	(bad)  
    129f:	00 00                	add    %al,(%rax)
    12a1:	00 00                	add    %al,(%rax)
    12a3:	00 50 00             	add    %dl,0x0(%rax)
    12a6:	00 00                	add    %al,(%rax)
    12a8:	00 04 6d 01 5e 00 00 	add    %al,0x5e01(,%rbp,2)
    12af:	00 bb 12 00 00 13    	add    %bh,0x13000012(%rbx)
    12b5:	a0 02 00 00 1c 00 51 	movabs 0xd351001c000002,%al
    12bc:	d3 00 
    12be:	00 00                	add    %al,(%rax)
    12c0:	09 00                	or     %eax,(%rax)
    12c2:	dd 00                	fldl   (%rax)
    12c4:	00 00                	add    %al,(%rax)
    12c6:	5e                   	pop    %rsi
    12c7:	00 00                	add    %al,(%rax)
    12c9:	00 d4                	add    %dl,%ah
    12cb:	12 00                	adc    (%rax),%al
    12cd:	00 13                	add    %dl,(%rbx)
    12cf:	a0 02 00 00 00 52 3e 	movabs 0x33e5200000002,%al
    12d6:	03 00 
    12d8:	00 0a                	add    %cl,(%rdx)
    12da:	20 02                	and    %al,(%rdx)
    12dc:	e6 12                	out    %al,$0x12
    12de:	00 00                	add    %al,(%rax)
    12e0:	13 5e 00             	adc    0x0(%rsi),%ebx
    12e3:	00 00                	add    %al,(%rax)
    12e5:	00 50 6f             	add    %dl,0x6f(%rax)
    12e8:	02 00                	add    (%rax),%al
    12ea:	00 05 ce 01 5e 00    	add    %al,0x5e01ce(%rip)        # 5e14be <__FRAME_END__+0x1dfa8e>
    12f0:	00 00                	add    %al,(%rax)
    12f2:	fc                   	cld    
    12f3:	12 00                	adc    (%rax),%al
    12f5:	00 13                	add    %dl,(%rbx)
    12f7:	fc                   	cld    
    12f8:	12 00                	adc    (%rax),%al
    12fa:	00 00                	add    %al,(%rax)
    12fc:	06                   	(bad)  
    12fd:	08 94 02 00 00 53 71 	or     %dl,0x71530000(%rdx,%rax,1)
    1304:	03 00                	add    (%rax),%eax
    1306:	00 0f                	add    %cl,(%rdi)
    1308:	51                   	push   %rcx
    1309:	0d 13 00 00 06       	or     $0x6000013,%eax
    130e:	08 1b                	or     %bl,(%rbx)
    1310:	03 00                	add    (%rax),%eax
    1312:	00 54 a3 04          	add    %dl,0x4(%rbx,%riz,4)
    1316:	00 00                	add    %al,(%rax)
    1318:	0b 41 89             	or     -0x77(%rcx),%eax
    131b:	00 00                	add    %al,(%rax)
    131d:	00 32                	add    %dh,(%rdx)
    131f:	13 00                	adc    (%rax),%eax
    1321:	00 13                	add    %dl,(%rbx)
    1323:	89 00                	mov    %eax,(%rax)
    1325:	00 00                	add    %al,(%rax)
    1327:	13 5e 00             	adc    0x0(%rsi),%ebx
    132a:	00 00                	add    %al,(%rax)
    132c:	13 29                	adc    (%rcx),%ebp
    132e:	00 00                	add    %al,(%rax)
    1330:	00 00                	add    %al,(%rax)
    1332:	47 00 01             	rex.RXB add %r8b,(%r9)
    1335:	00 00                	add    %al,(%rax)
    1337:	01 76 01             	add    %esi,0x1(%rsi)
    133a:	5e                   	pop    %rsi
    133b:	00 00                	add    %al,(%rax)
    133d:	00 44 13 00          	add    %al,0x0(%rbx,%rdx,1)
    1341:	00 1c 00             	add    %bl,(%rax,%rax,1)
    1344:	54                   	push   %rsp
    1345:	09 01                	or     %eax,(%rcx)
    1347:	00 00                	add    %al,(%rax)
    1349:	0c 52                	or     $0x52,%al
    134b:	5e                   	pop    %rsi
    134c:	00 00                	add    %al,(%rax)
    134e:	00 63 13             	add    %ah,0x13(%rbx)
    1351:	00 00                	add    %al,(%rax)
    1353:	13 89 00 00 00 13    	adc    0x13000000(%rcx),%ecx
    1359:	29 00                	sub    %eax,(%rax)
    135b:	00 00                	add    %al,(%rax)
    135d:	13 5e 00             	adc    0x0(%rsi),%ebx
    1360:	00 00                	add    %al,(%rax)
    1362:	00 54 6a 03          	add    %dl,0x3(%rdx,%rbp,2)
    1366:	00 00                	add    %al,(%rax)
    1368:	06                   	(bad)  
    1369:	65 26 03 00          	gs add %es:%gs:(%rax),%eax
    136d:	00 7d 13             	add    %bh,0x13(%rbp)
    1370:	00 00                	add    %al,(%rax)
    1372:	13 5e 00             	adc    0x0(%rsi),%ebx
    1375:	00 00                	add    %al,(%rax)
    1377:	13 26                	adc    (%rsi),%esp
    1379:	03 00                	add    (%rax),%eax
    137b:	00 00                	add    %al,(%rax)
    137d:	54                   	push   %rsp
    137e:	b9 00 00 00 08       	mov    $0x8000000,%ecx
    1383:	98                   	cwtl   
    1384:	5e                   	pop    %rsi
    1385:	00 00                	add    %al,(%rax)
    1387:	00 9c 13 00 00 13 5e 	add    %bl,0x5e130000(%rbx,%rdx,1)
    138e:	00 00                	add    %al,(%rax)
    1390:	00 13                	add    %dl,(%rbx)
    1392:	9c                   	pushfq 
    1393:	13 00                	adc    (%rax),%eax
    1395:	00 13                	add    %dl,(%rbx)
    1397:	a0 02 00 00 00 06 08 	movabs 0x13a2080600000002,%al
    139e:	a2 13 
    13a0:	00 00                	add    %al,(%rax)
    13a2:	0f 8b 00 00 00 50    	jnp    500013a8 <_end+0x4f9fe460>
    13a8:	9b                   	fwait
    13a9:	00 00                	add    %al,(%rax)
    13ab:	00 0d 17 05 8b 00    	add    %cl,0x8b0517(%rip)        # 8b18c8 <_end+0x2ae980>
    13b1:	00 00                	add    %al,(%rax)
    13b3:	bd 13 00 00 13       	mov    $0x13000013,%ebp
    13b8:	a0 02 00 00 00 54 70 	movabs 0x1705400000002,%al
    13bf:	01 00 
    13c1:	00 0e                	add    %cl,(%rsi)
    13c3:	0a 42 03             	or     0x3(%rdx),%al
    13c6:	00 00                	add    %al,(%rax)
    13c8:	d2 13                	rclb   %cl,(%rbx)
    13ca:	00 00                	add    %al,(%rax)
    13cc:	13 8b 00 00 00 00    	adc    0x0(%rbx),%ecx
    13d2:	52                   	push   %rdx
    13d3:	2a 02                	sub    (%rdx),%al
    13d5:	00 00                	add    %al,(%rax)
    13d7:	0a 4a 01             	or     0x1(%rdx),%cl
    13da:	e4 13                	in     $0x13,%al
    13dc:	00 00                	add    %al,(%rax)
    13de:	13 49 00             	adc    0x0(%rcx),%ecx
    13e1:	00 00                	add    %al,(%rax)
    13e3:	00 55 2b             	add    %dl,0x2b(%rbp)
    13e6:	02 00                	add    (%rax),%al
    13e8:	00 0a                	add    %cl,(%rdx)
    13ea:	47 01 65 00          	rex.RXB add %r12d,0x0(%r13)
    13ee:	00 00                	add    %al,(%rax)
    13f0:	50                   	push   %rax
    13f1:	c6 00 00             	movb   $0x0,(%rax)
    13f4:	00 10                	add    %dl,(%rax)
    13f6:	b1 01                	mov    $0x1,%cl
    13f8:	49 00 00             	rex.WB add %al,(%r8)
    13fb:	00 06                	add    %al,(%rsi)
    13fd:	14 00                	adc    $0x0,%al
    13ff:	00 13                	add    %dl,(%rbx)
    1401:	49 00 00             	rex.WB add %al,(%r8)
    1404:	00 00                	add    %al,(%rax)
    1406:	56                   	push   %rsi
    1407:	1d 02 00 00 04       	sbb    $0x4000002,%eax
    140c:	4d 03 13             	add    (%r11),%r10
    140f:	a0                   	.byte 0xa0
    1410:	02 00                	add    (%rax),%al
    1412:	00 00                	add    %al,(%rax)
	...

Disassembly of section .debug_abbrev:

0000000000000000 <.debug_abbrev>:
   0:	01 11                	add    %edx,(%rcx)
   2:	01 25 0e 13 0b 03    	add    %esp,0x30b130e(%rip)        # 30b1316 <_end+0x2aae3ce>
   8:	0e                   	(bad)  
   9:	1b 0e                	sbb    (%rsi),%ecx
   b:	55                   	push   %rbp
   c:	17                   	(bad)  
   d:	11 01                	adc    %eax,(%rcx)
   f:	10 17                	adc    %dl,(%rdi)
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
  35:	00 05 0f 00 0b 0b    	add    %al,0xb0b000f(%rip)        # b0b004a <_end+0xaaad102>
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
  4f:	3b 05 01 13 00 00    	cmp    0x1301(%rip),%eax        # 1356 <_init-0x3ff45a>
  55:	08 0d 00 03 0e 3a    	or     %cl,0x3a0e0300(%rip)        # 3a0e035b <_end+0x39add413>
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
  7e:	0b 0d 00 03 0e 3a    	or     0x3a0e0300(%rip),%ecx        # 3a0e0384 <_end+0x39add43c>
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
  a0:	16                   	(bad)  
  a1:	00 03                	add    %al,(%rbx)
  a3:	0e                   	(bad)  
  a4:	3a 0b                	cmp    (%rbx),%cl
  a6:	3b 05 49 13 00 00    	cmp    0x1349(%rip),%eax        # 13f5 <_init-0x3ff3bb>
  ac:	0f 26                	(bad)  
  ae:	00 49 13             	add    %cl,0x13(%rcx)
  b1:	00 00                	add    %al,(%rax)
  b3:	10 04 01             	adc    %al,(%rcx,%rax,1)
  b6:	0b 0b                	or     (%rbx),%ecx
  b8:	3a 0b                	cmp    (%rbx),%cl
  ba:	3b 0b                	cmp    (%rbx),%ecx
  bc:	01 13                	add    %edx,(%rbx)
  be:	00 00                	add    %al,(%rax)
  c0:	11 28                	adc    %ebp,(%rax)
  c2:	00 03                	add    %al,(%rbx)
  c4:	0e                   	(bad)  
  c5:	1c 0d                	sbb    $0xd,%al
  c7:	00 00                	add    %al,(%rax)
  c9:	12 15 01 27 19 01    	adc    0x1192701(%rip),%dl        # 11927d0 <_end+0xb8f888>
  cf:	13 00                	adc    (%rax),%eax
  d1:	00 13                	add    %dl,(%rbx)
  d3:	05 00 49 13 00       	add    $0x134900,%eax
  d8:	00 14 2e             	add    %dl,(%rsi,%rbp,1)
  db:	00 03                	add    %al,(%rbx)
  dd:	0e                   	(bad)  
  de:	3a 0b                	cmp    (%rbx),%cl
  e0:	3b 0b                	cmp    (%rbx),%ecx
  e2:	20 0b                	and    %cl,(%rbx)
  e4:	00 00                	add    %al,(%rax)
  e6:	15 2e 01 3f 19       	adc    $0x193f012e,%eax
  eb:	03 0e                	add    (%rsi),%ecx
  ed:	3a 0b                	cmp    (%rbx),%cl
  ef:	3b 0b                	cmp    (%rbx),%ecx
  f1:	27                   	(bad)  
  f2:	19 20                	sbb    %esp,(%rax)
  f4:	0b 01                	or     (%rcx),%eax
  f6:	13 00                	adc    (%rax),%eax
  f8:	00 16                	add    %dl,(%rsi)
  fa:	05 00 03 0e 3a       	add    $0x3a0e0300,%eax
  ff:	0b 3b                	or     (%rbx),%edi
 101:	0b 49 13             	or     0x13(%rcx),%ecx
 104:	00 00                	add    %al,(%rax)
 106:	17                   	(bad)  
 107:	2e 01 03             	add    %eax,%cs:(%rbx)
 10a:	0e                   	(bad)  
 10b:	3a 0b                	cmp    (%rbx),%cl
 10d:	3b 05 27 19 20 0b    	cmp    0xb201927(%rip),%eax        # b201a3a <_end+0xabfeaf2>
 113:	01 13                	add    %edx,(%rbx)
 115:	00 00                	add    %al,(%rax)
 117:	18 05 00 03 0e 3a    	sbb    %al,0x3a0e0300(%rip)        # 3a0e041d <_end+0x39add4d5>
 11d:	0b 3b                	or     (%rbx),%edi
 11f:	05 49 13 00 00       	add    $0x1349,%eax
 124:	19 34 00             	sbb    %esi,(%rax,%rax,1)
 127:	03 0e                	add    (%rsi),%ecx
 129:	3a 0b                	cmp    (%rbx),%cl
 12b:	3b 05 49 13 00 00    	cmp    0x1349(%rip),%eax        # 147a <_init-0x3ff336>
 131:	1a 2e                	sbb    (%rsi),%ch
 133:	01 3f                	add    %edi,(%rdi)
 135:	19 03                	sbb    %eax,(%rbx)
 137:	0e                   	(bad)  
 138:	3a 0b                	cmp    (%rbx),%cl
 13a:	3b 05 27 19 20 0b    	cmp    0xb201927(%rip),%eax        # b201a67 <_end+0xabfeb1f>
 140:	01 13                	add    %edx,(%rbx)
 142:	00 00                	add    %al,(%rax)
 144:	1b 15 01 01 13 00    	sbb    0x130101(%rip),%edx        # 13024b <_init-0x2d0565>
 14a:	00 1c 18             	add    %bl,(%rax,%rbx,1)
 14d:	00 00                	add    %al,(%rax)
 14f:	00 1d 2e 00 3f 19    	add    %bl,0x193f002e(%rip)        # 193f0183 <_end+0x18ded23b>
 155:	03 0e                	add    (%rsi),%ecx
 157:	3a 0b                	cmp    (%rbx),%cl
 159:	3b 05 20 0b 00 00    	cmp    0xb20(%rip),%eax        # c7f <_init-0x3ffb31>
 15f:	1e                   	(bad)  
 160:	2e 01 03             	add    %eax,%cs:(%rbx)
 163:	0e                   	(bad)  
 164:	3a 0b                	cmp    (%rbx),%cl
 166:	3b 0b                	cmp    (%rbx),%ecx
 168:	27                   	(bad)  
 169:	19 11                	sbb    %edx,(%rcx)
 16b:	01 12                	add    %edx,(%rdx)
 16d:	01 40 18             	add    %eax,0x18(%rax)
 170:	97                   	xchg   %eax,%edi
 171:	42 19 01             	rex.X sbb %eax,(%rcx)
 174:	13 00                	adc    (%rax),%eax
 176:	00 1f                	add    %bl,(%rdi)
 178:	05 00 03 08 3a       	add    $0x3a080300,%eax
 17d:	0b 3b                	or     (%rbx),%edi
 17f:	0b 49 13             	or     0x13(%rcx),%ecx
 182:	02 18                	add    (%rax),%bl
 184:	00 00                	add    %al,(%rax)
 186:	20 2e                	and    %ch,(%rsi)
 188:	01 03                	add    %eax,(%rbx)
 18a:	0e                   	(bad)  
 18b:	3a 0b                	cmp    (%rbx),%cl
 18d:	3b 05 27 19 11 01    	cmp    0x1111927(%rip),%eax        # 1111aba <_end+0xb0eb72>
 193:	12 01                	adc    (%rcx),%al
 195:	40 18 97 42 19 01 13 	sbb    %dl,0x13011942(%rdi)
 19c:	00 00                	add    %al,(%rax)
 19e:	21 05 00 03 0e 3a    	and    %eax,0x3a0e0300(%rip)        # 3a0e04a4 <_end+0x39add55c>
 1a4:	0b 3b                	or     (%rbx),%edi
 1a6:	05 49 13 02 17       	add    $0x17021349,%eax
 1ab:	00 00                	add    %al,(%rax)
 1ad:	22 89 82 01 01 11    	and    0x11010182(%rcx),%cl
 1b3:	01 31                	add    %esi,(%rcx)
 1b5:	13 01                	adc    (%rcx),%eax
 1b7:	13 00                	adc    (%rax),%eax
 1b9:	00 23                	add    %ah,(%rbx)
 1bb:	8a 82 01 00 02 18    	mov    0x18020001(%rdx),%al
 1c1:	91                   	xchg   %eax,%ecx
 1c2:	42 18 00             	rex.X sbb %al,(%rax)
 1c5:	00 24 89             	add    %ah,(%rcx,%rcx,4)
 1c8:	82                   	(bad)  
 1c9:	01 01                	add    %eax,(%rcx)
 1cb:	11 01                	adc    %eax,(%rcx)
 1cd:	31 13                	xor    %edx,(%rbx)
 1cf:	00 00                	add    %al,(%rax)
 1d1:	25 2e 01 3f 19       	and    $0x193f012e,%eax
 1d6:	03 0e                	add    (%rsi),%ecx
 1d8:	3a 0b                	cmp    (%rbx),%cl
 1da:	3b 05 27 19 11 01    	cmp    0x1111927(%rip),%eax        # 1111b07 <_end+0xb0ebbf>
 1e0:	12 01                	adc    (%rcx),%al
 1e2:	40 18 97 42 19 01 13 	sbb    %dl,0x13011942(%rdi)
 1e9:	00 00                	add    %al,(%rax)
 1eb:	26                   	es
 1ec:	05 00 03 08 3a       	add    $0x3a080300,%eax
 1f1:	0b 3b                	or     (%rbx),%edi
 1f3:	05 49 13 02 17       	add    $0x17021349,%eax
 1f8:	00 00                	add    %al,(%rax)
 1fa:	27                   	(bad)  
 1fb:	2e 01 3f             	add    %edi,%cs:(%rdi)
 1fe:	19 03                	sbb    %eax,(%rbx)
 200:	0e                   	(bad)  
 201:	3a 0b                	cmp    (%rbx),%cl
 203:	3b 0b                	cmp    (%rbx),%ecx
 205:	27                   	(bad)  
 206:	19 49 13             	sbb    %ecx,0x13(%rcx)
 209:	11 01                	adc    %eax,(%rcx)
 20b:	12 01                	adc    (%rcx),%al
 20d:	40 18 97 42 19 01 13 	sbb    %dl,0x13011942(%rdi)
 214:	00 00                	add    %al,(%rax)
 216:	28 05 00 03 0e 3a    	sub    %al,0x3a0e0300(%rip)        # 3a0e051c <_end+0x39add5d4>
 21c:	0b 3b                	or     (%rbx),%edi
 21e:	0b 49 13             	or     0x13(%rcx),%ecx
 221:	02 17                	add    (%rdi),%dl
 223:	00 00                	add    %al,(%rax)
 225:	29 34 00             	sub    %esi,(%rax,%rax,1)
 228:	03 08                	add    (%rax),%ecx
 22a:	3a 0b                	cmp    (%rbx),%cl
 22c:	3b 0b                	cmp    (%rbx),%ecx
 22e:	49 13 02             	adc    (%r10),%rax
 231:	17                   	(bad)  
 232:	00 00                	add    %al,(%rax)
 234:	2a 34 00             	sub    (%rax,%rax,1),%dh
 237:	03 0e                	add    (%rsi),%ecx
 239:	3a 0b                	cmp    (%rbx),%cl
 23b:	3b 0b                	cmp    (%rbx),%ecx
 23d:	49 13 02             	adc    (%r10),%rax
 240:	17                   	(bad)  
 241:	00 00                	add    %al,(%rax)
 243:	2b 0b                	sub    (%rbx),%ecx
 245:	01 55 17             	add    %edx,0x17(%rbp)
 248:	01 13                	add    %edx,(%rbx)
 24a:	00 00                	add    %al,(%rax)
 24c:	2c 89                	sub    $0x89,%al
 24e:	82                   	(bad)  
 24f:	01 00                	add    %eax,(%rax)
 251:	11 01                	adc    %eax,(%rcx)
 253:	31 13                	xor    %edx,(%rbx)
 255:	00 00                	add    %al,(%rax)
 257:	2d 1d 00 31 13       	sub    $0x1331001d,%eax
 25c:	52                   	push   %rdx
 25d:	01 55 17             	add    %edx,0x17(%rbp)
 260:	58                   	pop    %rax
 261:	0b 59 0b             	or     0xb(%rcx),%ebx
 264:	00 00                	add    %al,(%rax)
 266:	2e 2e 01 3f          	cs add %edi,%cs:(%rdi)
 26a:	19 03                	sbb    %eax,(%rbx)
 26c:	0e                   	(bad)  
 26d:	3a 0b                	cmp    (%rbx),%cl
 26f:	3b 0b                	cmp    (%rbx),%ecx
 271:	49 13 11             	adc    (%r9),%rdx
 274:	01 12                	add    %edx,(%rdx)
 276:	01 40 18             	add    %eax,0x18(%rax)
 279:	97                   	xchg   %eax,%edi
 27a:	42 19 01             	rex.X sbb %eax,(%rcx)
 27d:	13 00                	adc    (%rax),%eax
 27f:	00 2f                	add    %ch,(%rdi)
 281:	34 00                	xor    $0x0,%al
 283:	03 08                	add    (%rax),%ecx
 285:	3a 0b                	cmp    (%rbx),%cl
 287:	3b 0b                	cmp    (%rbx),%ecx
 289:	49 13 02             	adc    (%r10),%rax
 28c:	18 00                	sbb    %al,(%rax)
 28e:	00 30                	add    %dh,(%rax)
 290:	34 00                	xor    $0x0,%al
 292:	03 0e                	add    (%rsi),%ecx
 294:	3a 0b                	cmp    (%rbx),%cl
 296:	3b 0b                	cmp    (%rbx),%ecx
 298:	49 13 02             	adc    (%r10),%rax
 29b:	18 00                	sbb    %al,(%rax)
 29d:	00 31                	add    %dh,(%rcx)
 29f:	34 00                	xor    $0x0,%al
 2a1:	03 08                	add    (%rax),%ecx
 2a3:	3a 0b                	cmp    (%rbx),%cl
 2a5:	3b 0b                	cmp    (%rbx),%ecx
 2a7:	49 13 00             	adc    (%r8),%rax
 2aa:	00 32                	add    %dh,(%rdx)
 2ac:	35 00 49 13 00       	xor    $0x134900,%eax
 2b1:	00 33                	add    %dh,(%rbx)
 2b3:	2e 01 31             	add    %esi,%cs:(%rcx)
 2b6:	13 11                	adc    (%rcx),%edx
 2b8:	01 12                	add    %edx,(%rdx)
 2ba:	01 40 18             	add    %eax,0x18(%rax)
 2bd:	97                   	xchg   %eax,%edi
 2be:	42 19 01             	rex.X sbb %eax,(%rcx)
 2c1:	13 00                	adc    (%rax),%eax
 2c3:	00 34 05 00 31 13 02 	add    %dh,0x2133100(,%rax,1)
 2ca:	18 00                	sbb    %al,(%rax)
 2cc:	00 35 05 00 31 13    	add    %dh,0x13310005(%rip)        # 133102d7 <_end+0x12d0d38f>
 2d2:	02 17                	add    (%rdi),%dl
 2d4:	00 00                	add    %al,(%rax)
 2d6:	36                   	ss
 2d7:	1d 01 31 13 52       	sbb    $0x52133101,%eax
 2dc:	01 55 17             	add    %edx,0x17(%rbp)
 2df:	58                   	pop    %rax
 2e0:	0b 59 0b             	or     0xb(%rcx),%ebx
 2e3:	01 13                	add    %edx,(%rbx)
 2e5:	00 00                	add    %al,(%rax)
 2e7:	37                   	(bad)  
 2e8:	89 82 01 01 11 01    	mov    %eax,0x1110101(%rdx)
 2ee:	95                   	xchg   %eax,%ebp
 2ef:	42 19 31             	rex.X sbb %esi,(%rcx)
 2f2:	13 00                	adc    (%rax),%eax
 2f4:	00 38                	add    %bh,(%rax)
 2f6:	89 82 01 01 11 01    	mov    %eax,0x1110101(%rdx)
 2fc:	95                   	xchg   %eax,%ebp
 2fd:	42 19 31             	rex.X sbb %esi,(%rcx)
 300:	13 01                	adc    (%rcx),%eax
 302:	13 00                	adc    (%rax),%eax
 304:	00 39                	add    %bh,(%rcx)
 306:	2e 01 3f             	add    %edi,%cs:(%rdi)
 309:	19 03                	sbb    %eax,(%rbx)
 30b:	0e                   	(bad)  
 30c:	3a 0b                	cmp    (%rbx),%cl
 30e:	3b 0b                	cmp    (%rbx),%ecx
 310:	11 01                	adc    %eax,(%rcx)
 312:	12 01                	adc    (%rcx),%al
 314:	40 18 97 42 19 01 13 	sbb    %dl,0x13011942(%rdi)
 31b:	00 00                	add    %al,(%rax)
 31d:	3a 1d 01 31 13 11    	cmp    0x11133101(%rip),%bl        # 11133424 <_end+0x10b304dc>
 323:	01 12                	add    %edx,(%rdx)
 325:	01 58 0b             	add    %ebx,0xb(%rax)
 328:	59                   	pop    %rcx
 329:	0b 01                	or     (%rcx),%eax
 32b:	13 00                	adc    (%rax),%eax
 32d:	00 3b                	add    %bh,(%rbx)
 32f:	05 00 31 13 1c       	add    $0x1c133100,%eax
 334:	0b 00                	or     (%rax),%eax
 336:	00 3c 34             	add    %bh,(%rsp,%rsi,1)
 339:	00 31                	add    %dh,(%rcx)
 33b:	13 02                	adc    (%rdx),%eax
 33d:	18 00                	sbb    %al,(%rax)
 33f:	00 3d 34 00 31 13    	add    %bh,0x13310034(%rip)        # 13310379 <_end+0x12d0d431>
 345:	02 17                	add    (%rdi),%dl
 347:	00 00                	add    %al,(%rax)
 349:	3e 2e 01 3f          	ds add %edi,%cs:%ds:(%rdi)
 34d:	19 03                	sbb    %eax,(%rbx)
 34f:	0e                   	(bad)  
 350:	3a 0b                	cmp    (%rbx),%cl
 352:	3b 0b                	cmp    (%rbx),%ecx
 354:	27                   	(bad)  
 355:	19 11                	sbb    %edx,(%rcx)
 357:	01 12                	add    %edx,(%rdx)
 359:	01 40 18             	add    %eax,0x18(%rax)
 35c:	97                   	xchg   %eax,%edi
 35d:	42 19 01             	rex.X sbb %eax,(%rcx)
 360:	13 00                	adc    (%rax),%eax
 362:	00 3f                	add    %bh,(%rdi)
 364:	05 00 03 08 3a       	add    $0x3a080300,%eax
 369:	0b 3b                	or     (%rbx),%edi
 36b:	0b 49 13             	or     0x13(%rcx),%ecx
 36e:	02 17                	add    (%rdi),%dl
 370:	00 00                	add    %al,(%rax)
 372:	40                   	rex
 373:	2e 00 31             	add    %dh,%cs:(%rcx)
 376:	13 11                	adc    (%rcx),%edx
 378:	01 12                	add    %edx,(%rdx)
 37a:	01 40 18             	add    %eax,0x18(%rax)
 37d:	97                   	xchg   %eax,%edi
 37e:	42 19 00             	rex.X sbb %eax,(%rax)
 381:	00 41 89             	add    %al,-0x77(%rcx)
 384:	82                   	(bad)  
 385:	01 00                	add    %eax,(%rax)
 387:	11 01                	adc    %eax,(%rcx)
 389:	93                   	xchg   %eax,%ebx
 38a:	42 18 00             	rex.X sbb %al,(%rax)
 38d:	00 42 2e             	add    %al,0x2e(%rdx)
 390:	01 3f                	add    %edi,(%rdi)
 392:	19 03                	sbb    %eax,(%rbx)
 394:	0e                   	(bad)  
 395:	3a 0b                	cmp    (%rbx),%cl
 397:	3b 05 27 19 49 13    	cmp    0x13491927(%rip),%eax        # 13491cc4 <_end+0x12e8ed7c>
 39d:	11 01                	adc    %eax,(%rcx)
 39f:	12 01                	adc    (%rcx),%al
 3a1:	40 18 97 42 19 01 13 	sbb    %dl,0x13011942(%rdi)
 3a8:	00 00                	add    %al,(%rax)
 3aa:	43 34 00             	rex.XB xor $0x0,%al
 3ad:	03 0e                	add    (%rsi),%ecx
 3af:	3a 0b                	cmp    (%rbx),%cl
 3b1:	3b 05 49 13 02 17    	cmp    0x17021349(%rip),%eax        # 17021700 <_end+0x16a1e7b8>
 3b7:	00 00                	add    %al,(%rax)
 3b9:	44 34 00             	rex.R xor $0x0,%al
 3bc:	03 0e                	add    (%rsi),%ecx
 3be:	3a 0b                	cmp    (%rbx),%cl
 3c0:	3b 05 49 13 1c 0b    	cmp    0xb1c1349(%rip),%eax        # b1c170f <_end+0xabbe7c7>
 3c6:	00 00                	add    %al,(%rax)
 3c8:	45 34 00             	rex.RB xor $0x0,%al
 3cb:	03 08                	add    (%rax),%ecx
 3cd:	3a 0b                	cmp    (%rbx),%cl
 3cf:	3b 05 49 13 02 17    	cmp    0x17021349(%rip),%eax        # 1702171e <_end+0x16a1e7d6>
 3d5:	00 00                	add    %al,(%rax)
 3d7:	46 34 00             	rex.RX xor $0x0,%al
 3da:	03 08                	add    (%rax),%ecx
 3dc:	3a 0b                	cmp    (%rbx),%cl
 3de:	3b 05 49 13 1c 0b    	cmp    0xb1c1349(%rip),%eax        # b1c172d <_end+0xabbe7e5>
 3e4:	00 00                	add    %al,(%rax)
 3e6:	47                   	rex.RXB
 3e7:	2e 01 3f             	add    %edi,%cs:(%rdi)
 3ea:	19 03                	sbb    %eax,(%rbx)
 3ec:	0e                   	(bad)  
 3ed:	3a 0b                	cmp    (%rbx),%cl
 3ef:	3b 05 49 13 3c 19    	cmp    0x193c1349(%rip),%eax        # 193c173e <_end+0x18dbe7f6>
 3f5:	01 13                	add    %edx,(%rbx)
 3f7:	00 00                	add    %al,(%rax)
 3f9:	48 1d 01 31 13 52    	sbb    $0x52133101,%rax
 3ff:	01 55 17             	add    %edx,0x17(%rbp)
 402:	58                   	pop    %rax
 403:	0b 59 05             	or     0x5(%rcx),%ebx
 406:	01 13                	add    %edx,(%rbx)
 408:	00 00                	add    %al,(%rax)
 40a:	49 05 00 31 13 00    	rex.WB add $0x133100,%rax
 410:	00 4a 0b             	add    %cl,0xb(%rdx)
 413:	01 55 17             	add    %edx,0x17(%rbp)
 416:	00 00                	add    %al,(%rax)
 418:	4b 8a 82 01 00 31 13 	rex.WXB mov 0x13310001(%r10),%al
 41f:	91                   	xchg   %eax,%ecx
 420:	42 18 00             	rex.X sbb %al,(%rax)
 423:	00 4c 21 00          	add    %cl,0x0(%rcx,%riz,1)
 427:	49 13 2f             	adc    (%r15),%rbp
 42a:	05 00 00 4d 34       	add    $0x344d0000,%eax
 42f:	00 03                	add    %al,(%rbx)
 431:	0e                   	(bad)  
 432:	3a 0b                	cmp    (%rbx),%cl
 434:	3b 05 49 13 02 18    	cmp    0x18021349(%rip),%eax        # 18021783 <_end+0x17a1e83b>
 43a:	00 00                	add    %al,(%rax)
 43c:	4e 34 00             	rex.WRX xor $0x0,%al
 43f:	03 0e                	add    (%rsi),%ecx
 441:	3a 0b                	cmp    (%rbx),%cl
 443:	3b 0b                	cmp    (%rbx),%ecx
 445:	49 13 3f             	adc    (%r15),%rdi
 448:	19 3c 19             	sbb    %edi,(%rcx,%rbx,1)
 44b:	00 00                	add    %al,(%rax)
 44d:	4f 34 00             	rex.WRXB xor $0x0,%al
 450:	03 0e                	add    (%rsi),%ecx
 452:	3a 0b                	cmp    (%rbx),%cl
 454:	3b 0b                	cmp    (%rbx),%ecx
 456:	49 13 3f             	adc    (%r15),%rdi
 459:	19 02                	sbb    %eax,(%rdx)
 45b:	18 00                	sbb    %al,(%rax)
 45d:	00 50 2e             	add    %dl,0x2e(%rax)
 460:	01 3f                	add    %edi,(%rdi)
 462:	19 03                	sbb    %eax,(%rbx)
 464:	0e                   	(bad)  
 465:	3a 0b                	cmp    (%rbx),%cl
 467:	3b 05 27 19 49 13    	cmp    0x13491927(%rip),%eax        # 13491d94 <_end+0x12e8ee4c>
 46d:	3c 19                	cmp    $0x19,%al
 46f:	01 13                	add    %edx,(%rbx)
 471:	00 00                	add    %al,(%rax)
 473:	51                   	push   %rcx
 474:	2e 01 3f             	add    %edi,%cs:(%rdi)
 477:	19 03                	sbb    %eax,(%rbx)
 479:	0e                   	(bad)  
 47a:	3a 0b                	cmp    (%rbx),%cl
 47c:	3b 0b                	cmp    (%rbx),%ecx
 47e:	6e                   	outsb  %ds:(%rsi),(%dx)
 47f:	0e                   	(bad)  
 480:	27                   	(bad)  
 481:	19 49 13             	sbb    %ecx,0x13(%rcx)
 484:	3c 19                	cmp    $0x19,%al
 486:	01 13                	add    %edx,(%rbx)
 488:	00 00                	add    %al,(%rax)
 48a:	52                   	push   %rdx
 48b:	2e 01 3f             	add    %edi,%cs:(%rdi)
 48e:	19 03                	sbb    %eax,(%rbx)
 490:	0e                   	(bad)  
 491:	3a 0b                	cmp    (%rbx),%cl
 493:	3b 05 27 19 3c 19    	cmp    0x193c1927(%rip),%eax        # 193c1dc0 <_end+0x18dbee78>
 499:	01 13                	add    %edx,(%rbx)
 49b:	00 00                	add    %al,(%rax)
 49d:	53                   	push   %rbx
 49e:	2e 00 3f             	add    %bh,%cs:(%rdi)
 4a1:	19 03                	sbb    %eax,(%rbx)
 4a3:	0e                   	(bad)  
 4a4:	3a 0b                	cmp    (%rbx),%cl
 4a6:	3b 0b                	cmp    (%rbx),%ecx
 4a8:	27                   	(bad)  
 4a9:	19 49 13             	sbb    %ecx,0x13(%rcx)
 4ac:	3c 19                	cmp    $0x19,%al
 4ae:	00 00                	add    %al,(%rax)
 4b0:	54                   	push   %rsp
 4b1:	2e 01 3f             	add    %edi,%cs:(%rdi)
 4b4:	19 03                	sbb    %eax,(%rbx)
 4b6:	0e                   	(bad)  
 4b7:	3a 0b                	cmp    (%rbx),%cl
 4b9:	3b 0b                	cmp    (%rbx),%ecx
 4bb:	27                   	(bad)  
 4bc:	19 49 13             	sbb    %ecx,0x13(%rcx)
 4bf:	3c 19                	cmp    $0x19,%al
 4c1:	01 13                	add    %edx,(%rbx)
 4c3:	00 00                	add    %al,(%rax)
 4c5:	55                   	push   %rbp
 4c6:	2e 00 3f             	add    %bh,%cs:(%rdi)
 4c9:	19 03                	sbb    %eax,(%rbx)
 4cb:	0e                   	(bad)  
 4cc:	3a 0b                	cmp    (%rbx),%cl
 4ce:	3b 05 27 19 49 13    	cmp    0x13491927(%rip),%eax        # 13491dfb <_end+0x12e8eeb3>
 4d4:	3c 19                	cmp    $0x19,%al
 4d6:	00 00                	add    %al,(%rax)
 4d8:	56                   	push   %rsi
 4d9:	2e 01 3f             	add    %edi,%cs:(%rdi)
 4dc:	19 03                	sbb    %eax,(%rbx)
 4de:	0e                   	(bad)  
 4df:	3a 0b                	cmp    (%rbx),%cl
 4e1:	3b 05 27 19 3c 19    	cmp    0x193c1927(%rip),%eax        # 193c1e0e <_end+0x18dbeec6>
 4e7:	00 00                	add    %al,(%rax)
	...

Disassembly of section .debug_line:

0000000000000000 <.debug_line>:
   0:	08 03                	or     %al,(%rbx)
   2:	00 00                	add    %al,(%rax)
   4:	02 00                	add    (%rax),%al
   6:	33 01                	xor    (%rcx),%eax
   8:	00 00                	add    %al,(%rax)
   a:	01 01                	add    %eax,(%rcx)
   c:	fb                   	sti    
   d:	0e                   	(bad)  
   e:	0d 00 01 01 01       	or     $0x1010100,%eax
  13:	01 00                	add    %eax,(%rax)
  15:	00 00                	add    %al,(%rax)
  17:	01 00                	add    %eax,(%rax)
  19:	00 01                	add    %al,(%rcx)
  1b:	2f                   	(bad)  
  1c:	75 73                	jne    91 <_init-0x40071f>
  1e:	72 2f                	jb     4f <_init-0x400761>
  20:	6c                   	insb   (%dx),%es:(%rdi)
  21:	69 62 2f 67 63 63 2f 	imul   $0x2f636367,0x2f(%rdx),%esp
  28:	78 38                	js     62 <_init-0x40074e>
  2a:	36                   	ss
  2b:	5f                   	pop    %rdi
  2c:	36                   	ss
  2d:	34 2d                	xor    $0x2d,%al
  2f:	72 65                	jb     96 <_init-0x40071a>
  31:	64                   	fs
  32:	68 61 74 2d 6c       	pushq  $0x6c2d7461
  37:	69 6e 75 78 2f 34 2e 	imul   $0x2e342f78,0x75(%rsi),%ebp
  3e:	37                   	(bad)  
  3f:	2e 32 2f             	xor    %cs:(%rdi),%ch
  42:	69 6e 63 6c 75 64 65 	imul   $0x6564756c,0x63(%rsi),%ebp
  49:	00 2f                	add    %ch,(%rdi)
  4b:	75 73                	jne    c0 <_init-0x4006f0>
  4d:	72 2f                	jb     7e <_init-0x400732>
  4f:	69 6e 63 6c 75 64 65 	imul   $0x6564756c,0x63(%rsi),%ebp
  56:	2f                   	(bad)  
  57:	62                   	(bad)  
  58:	69 74 73 00 2f 75 73 	imul   $0x7273752f,0x0(%rbx,%rsi,2),%esi
  5f:	72 
  60:	2f                   	(bad)  
  61:	69 6e 63 6c 75 64 65 	imul   $0x6564756c,0x63(%rsi),%ebp
  68:	00 2f                	add    %ch,(%rdi)
  6a:	75 73                	jne    df <_init-0x4006d1>
  6c:	72 2f                	jb     9d <_init-0x400713>
  6e:	69 6e 63 6c 75 64 65 	imul   $0x6564756c,0x63(%rsi),%ebp
  75:	2f                   	(bad)  
  76:	73 79                	jae    f1 <_init-0x4006bf>
  78:	73 00                	jae    7a <_init-0x400736>
  7a:	00 62 75             	add    %ah,0x75(%rdx)
  7d:	66                   	data16
  7e:	62                   	(bad)  
  7f:	6f                   	outsl  %ds:(%rsi),(%dx)
  80:	6d                   	insl   (%dx),%es:(%rdi)
  81:	62                   	(bad)  
  82:	2e 63 00             	movslq %cs:(%rax),%eax
  85:	00 00                	add    %al,(%rax)
  87:	00 73 74             	add    %dh,0x74(%rbx)
  8a:	64                   	fs
  8b:	64                   	fs
  8c:	65                   	gs
  8d:	66                   	data16
  8e:	2e                   	cs
  8f:	68 00 01 00 00       	pushq  $0x100
  94:	74 79                	je     10f <_init-0x4006a1>
  96:	70 65                	jo     fd <_init-0x4006b3>
  98:	73 2e                	jae    c8 <_init-0x4006e8>
  9a:	68 00 02 00 00       	pushq  $0x200
  9f:	73 74                	jae    115 <_init-0x40069b>
  a1:	64 69 6f 2e 68 00 03 	imul   $0x30068,%fs:0x2e(%rdi),%ebp
  a8:	00 
  a9:	00 6c 69 62          	add    %ch,0x62(%rcx,%rbp,2)
  ad:	69 6f 2e 68 00 03 00 	imul   $0x30068,0x2e(%rdi),%ebp
  b4:	00 73 69             	add    %dh,0x69(%rbx)
  b7:	67 6e                	outsb  %ds:(%esi),(%dx)
  b9:	61                   	(bad)  
  ba:	6c                   	insb   (%dx),%es:(%rdi)
  bb:	2e                   	cs
  bc:	68 00 03 00 00       	pushq  $0x300
  c1:	73 74                	jae    137 <_init-0x400679>
  c3:	64 69 6e 74 2e 68 00 	imul   $0x300682e,%fs:0x74(%rsi),%ebp
  ca:	03 
  cb:	00 00                	add    %al,(%rax)
  cd:	67                   	addr32
  ce:	65                   	gs
  cf:	74 6f                	je     140 <_init-0x400670>
  d1:	70 74                	jo     147 <_init-0x400669>
  d3:	2e                   	cs
  d4:	68 00 03 00 00       	pushq  $0x300
  d9:	3c 62                	cmp    $0x62,%al
  db:	75 69                	jne    146 <_init-0x40066a>
  dd:	6c                   	insb   (%dx),%es:(%rdi)
  de:	74 2d                	je     10d <_init-0x4006a3>
  e0:	69 6e 3e 00 00 00 00 	imul   $0x0,0x3e(%rsi),%ebp
  e7:	73 74                	jae    15d <_init-0x400653>
  e9:	64                   	fs
  ea:	6c                   	insb   (%dx),%es:(%rdi)
  eb:	69 62 2e 68 00 03 00 	imul   $0x30068,0x2e(%rdx),%esp
  f2:	00 73 74             	add    %dh,0x74(%rbx)
  f5:	72 69                	jb     160 <_init-0x400650>
  f7:	6e                   	outsb  %ds:(%rsi),(%dx)
  f8:	67                   	addr32
  f9:	2e                   	cs
  fa:	68 00 03 00 00       	pushq  $0x300
  ff:	6d                   	insl   (%dx),%es:(%rdi)
 100:	6d                   	insl   (%dx),%es:(%rdi)
 101:	61                   	(bad)  
 102:	6e                   	outsb  %ds:(%rsi),(%dx)
 103:	2e                   	cs
 104:	68 00 04 00 00       	pushq  $0x400
 109:	73 74                	jae    17f <_init-0x400631>
 10b:	72 69                	jb     176 <_init-0x40063a>
 10d:	6e                   	outsb  %ds:(%rsi),(%dx)
 10e:	67 32 2e             	xor    (%esi),%ch
 111:	68 00 02 00 00       	pushq  $0x200
 116:	67 65 6e             	outsb  %gs:(%esi),(%dx)
 119:	63 6f 6f             	movslq 0x6f(%rdi),%ebp
 11c:	6b 69 65 2e          	imul   $0x2e,0x65(%rcx),%ebp
 120:	68 00 00 00 00       	pushq  $0x0
 125:	63 74 79 70          	movslq 0x70(%rcx,%rdi,2),%esi
 129:	65                   	gs
 12a:	2e                   	cs
 12b:	68 00 03 00 00       	pushq  $0x300
 130:	75 6e                	jne    1a0 <_init-0x400610>
 132:	69 73 74 64 2e 68 00 	imul   $0x682e64,0x74(%rbx),%esi
 139:	03 00                	add    (%rax),%eax
 13b:	00 00                	add    %al,(%rax)
 13d:	00 09                	add    %cl,(%rcx)
 13f:	02 90 0b 40 00 00    	add    0x400b(%rax),%dl
 145:	00 00                	add    %al,(%rax)
 147:	00 03                	add    %al,(%rbx)
 149:	bb 01 01 13 c7       	mov    $0xc7130101,%ebx
 14e:	22 83 3e 39 77 63    	and    0x6377393e(%rbx),%al
 154:	79 1b                	jns    171 <_init-0x40063f>
 156:	75 9f                	jne    f7 <_init-0x4006b9>
 158:	3b 3d 3b 75 77 03    	cmp    0x377753b(%rip),%edi        # 3777699 <_end+0x3174751>
 15e:	d3 00                	roll   %cl,(%rax)
 160:	74 75                	je     1d7 <_init-0x4005d9>
 162:	bb 9f 03 20 08       	mov    $0x820039f,%ebx
 167:	2e                   	cs
 168:	4b 9f                	rex.WXB lahf 
 16a:	9f                   	lahf   
 16b:	03 75 82             	add    -0x7e(%rbp),%esi
 16e:	4b 08 21             	rex.WXB or %spl,(%r9)
 171:	9f                   	lahf   
 172:	03 72 f2             	add    -0xe(%rdx),%esi
 175:	4b 9f                	rex.WXB lahf 
 177:	9f                   	lahf   
 178:	03 75 82             	add    -0x7e(%rbp),%esi
 17b:	4b 9f                	rex.WXB lahf 
 17d:	9f                   	lahf   
 17e:	03 aa 7f 82 35 65    	add    0x6535827f(%rdx),%ebp
 184:	03 7a 9e             	add    -0x62(%rdx),%edi
 187:	5f                   	pop    %rdi
 188:	03 79 2e             	add    0x2e(%rcx),%edi
 18b:	43 03 79 3c          	rex.XB add 0x3c(%r9),%edi
 18f:	27                   	(bad)  
 190:	00 02                	add    %al,(%rdx)
 192:	04 01                	add    $0x1,%al
 194:	f8                   	clc    
 195:	00 02                	add    %al,(%rdx)
 197:	04 02                	add    $0x2,%al
 199:	06                   	(bad)  
 19a:	08 2e                	or     %ch,(%rsi)
 19c:	06                   	(bad)  
 19d:	59                   	pop    %rcx
 19e:	08 22                	or     %ah,(%rdx)
 1a0:	84 3d bd 59 3d 00    	test   %bh,0x3d59bd(%rip)        # 3d5b63 <_init-0x2ac4d>
 1a6:	02 04 02             	add    (%rdx,%rax,1),%al
 1a9:	03 70 74             	add    0x74(%rax),%esi
 1ac:	59                   	pop    %rcx
 1ad:	3d 3b 4b 00 02       	cmp    $0x2004b3b,%eax
 1b2:	04 01                	add    $0x1,%al
 1b4:	56                   	push   %rsi
 1b5:	03 1a                	add    (%rdx),%ebx
 1b7:	08 12                	or     %dl,(%rdx)
 1b9:	03 5a 4a             	add    0x4a(%rdx),%ebx
 1bc:	03 29                	add    (%rcx),%ebp
 1be:	66 03 57 2e          	add    0x2e(%rdi),%dx
 1c2:	03 29                	add    (%rcx),%ebp
 1c4:	3c 03                	cmp    $0x3,%al
 1c6:	57                   	push   %rdi
 1c7:	2e 03 29             	add    %cs:(%rcx),%ebp
 1ca:	90                   	nop
 1cb:	03 75 08             	add    0x8(%rbp),%esi
 1ce:	12 3f                	adc    (%rdi),%bh
 1d0:	39 59 3d             	cmp    %ebx,0x3d(%rcx)
 1d3:	3b 4b 03             	cmp    0x3(%rbx),%ecx
 1d6:	9d                   	popfq  
 1d7:	7f ac                	jg     185 <_init-0x40062b>
 1d9:	86 91 9d 3d 00 02    	xchg   %dl,0x2003d9d(%rcx)
 1df:	04 02                	add    $0x2,%al
 1e1:	02 42 15             	add    0x15(%rdx),%al
 1e4:	00 02                	add    %al,(%rdx)
 1e6:	04 02                	add    $0x2,%al
 1e8:	03 77 58             	add    0x58(%rdi),%esi
 1eb:	00 02                	add    %al,(%rdx)
 1ed:	04 02                	add    $0x2,%al
 1ef:	89 00                	mov    %eax,(%rax)
 1f1:	02 04 02             	add    (%rdx,%rax,1),%al
 1f4:	4c 00 02             	rex.WR add %r8b,(%rdx)
 1f7:	04 02                	add    $0x2,%al
 1f9:	3a 33                	cmp    (%rbx),%dh
 1fb:	03 eb                	add    %ebx,%ebp
 1fd:	00 9e 13 f6 13 da    	add    %bl,-0x25ec09ed(%rsi)
 203:	5c                   	pop    %rsp
 204:	88 3b                	mov    %bh,(%rbx)
 206:	9f                   	lahf   
 207:	08 4c 03 79          	or     %cl,0x79(%rbx,%rax,1)
 20b:	08 2e                	or     %ch,(%rsi)
 20d:	fa                   	cli    
 20e:	03 74 f2 03          	add    0x3(%rdx,%rsi,8),%esi
 212:	0a f2                	or     %dl,%dh
 214:	03 72 f2             	add    -0xe(%rdx),%esi
 217:	03 e6                	add    %esi,%esp
 219:	7e f2                	jle    20d <_init-0x4005a3>
 21b:	22 5b 29             	and    0x29(%rbx),%bl
 21e:	84 03                	test   %al,(%rbx)
 220:	92                   	xchg   %eax,%edx
 221:	01 4a 03             	add    %ecx,0x3(%rdx)
 224:	f1                   	icebp  
 225:	7e 9e                	jle    1c5 <_init-0x4005eb>
 227:	59                   	pop    %rcx
 228:	6b 03 89             	imul   $0xffffff89,(%rbx),%eax
 22b:	01 90 03 f7 7e 9e    	add    %edx,-0x618108fd(%rax)
 231:	5b                   	pop    %rbx
 232:	75 3b                	jne    26f <_init-0x400541>
 234:	36                   	ss
 235:	bc 03 74 74 03       	mov    $0x3747403,%esp
 23a:	0c 9e                	or     $0x9e,%al
 23c:	03 6f 66             	add    0x66(%rdi),%ebp
 23f:	fa                   	cli    
 240:	bb 91 a0 a3 03       	mov    $0x3a3a091,%ebx
 245:	c1 01 74             	roll   $0x74,(%rcx)
 248:	03 0d 20 03 73 58    	add    0x58730320(%rip),%ecx        # 5873056e <_end+0x5812d626>
 24e:	03 0a                	add    (%rdx),%ecx
 250:	74 ad                	je     1ff <_init-0x4005b1>
 252:	08 68 5a             	or     %ch,0x5a(%rax)
 255:	bb 9f c0 75 a2       	mov    $0xa275c09f,%ebx
 25a:	8d 9f a0 03 77 ba    	lea    -0x4588fc60(%rdi),%ebx
 260:	03 86 7e f2 4c 03    	add    0x34cf27e(%rsi),%eax
 266:	a0 01 d6 03 e0 7e 9e 	movabs 0xbc329e7ee003d601,%al
 26d:	32 bc 
 26f:	6f                   	outsl  %ds:(%rsi),(%dx)
 270:	bb 03 6c 08 2e       	mov    $0x2e086c03,%ebx
 275:	03 b2 01 4a 03 ce    	add    -0x31fcb5ff(%rdx),%esi
 27b:	7e 9e                	jle    21b <_init-0x400595>
 27d:	5a                   	pop    %rdx
 27e:	94                   	xchg   %eax,%esp
 27f:	bc 6f bb 03 72       	mov    $0x7203bb6f,%esp
 284:	08 4a 4c             	or     %cl,0x4c(%rdx)
 287:	03 ba 01 58 03 c6    	add    -0x39fca7ff(%rdx),%edi
 28d:	7e 9e                	jle    22d <_init-0x400583>
 28f:	59                   	pop    %rcx
 290:	75 03                	jne    295 <_init-0x40051b>
 292:	9b                   	fwait
 293:	02 08                	add    (%rax),%cl
 295:	12 f8                	adc    %al,%bh
 297:	01 23                	add    %esp,(%rbx)
 299:	67 3d 4b 3d 02 02    	addr32 cmp $0x2023d4b,%eax
 29f:	00 01                	add    %al,(%rcx)
 2a1:	01 00                	add    %eax,(%rax)
 2a3:	09 02                	or     %eax,(%rdx)
 2a5:	f0 08 40 00          	lock or %al,0x0(%rax)
 2a9:	00 00                	add    %al,(%rax)
 2ab:	00 00                	add    %al,(%rax)
 2ad:	03 ed                	add    %ebp,%ebp
 2af:	02 01                	add    (%rcx),%al
 2b1:	36 03 78 2e          	add    %ss:0x2e(%rax),%edi
 2b5:	44 03 78 58          	add    0x58(%rax),%r15d
 2b9:	20 44 ca 03          	and    %al,0x3(%rdx,%rcx,8)
 2bd:	6f                   	outsl  %ds:(%rsi),(%dx)
 2be:	08 90 03 17 3c 03    	or     %dl,0x33c1703(%rax)
 2c4:	6a 74                	pushq  $0x74
 2c6:	3e 03 18             	add    %ds:(%rax),%ebx
 2c9:	3c e5                	cmp    $0xe5,%al
 2cb:	e5 e5                	in     $0xe5,%eax
 2cd:	e5 00                	in     $0x0,%eax
 2cf:	02 04 01             	add    (%rcx,%rax,1),%al
 2d2:	d9 08                	(bad)  (%rax)
 2d4:	67 03 2a             	add    (%edx),%ebp
 2d7:	08 12                	or     %dl,(%rdx)
 2d9:	03 6b e4             	add    -0x1c(%rbx),%ebp
 2dc:	bb 81 75 75 bb       	mov    $0xbb757581,%ebx
 2e1:	81 75 75 03 69 4a 9f 	xorl   $0x9f4a6903,0x75(%rbp)
 2e8:	9f                   	lahf   
 2e9:	9f                   	lahf   
 2ea:	03 23                	add    (%rbx),%esp
 2ec:	58                   	pop    %rax
 2ed:	a3 ad 03 0b 58 03 75 	movabs %eax,0x3667503580b03ad
 2f4:	66 03 
 2f6:	0b 3c 03             	or     (%rbx,%rax,1),%edi
 2f9:	75 58                	jne    353 <_init-0x40045d>
 2fb:	03 0e                	add    (%rsi),%ecx
 2fd:	90                   	nop
 2fe:	5b                   	pop    %rbx
 2ff:	03 b1 7f 74 9f 03    	add    0x39f747f(%rcx),%esi
 305:	38 74 02 0f          	cmp    %dh,0xf(%rdx,%rax,1)
 309:	00 01                	add    %al,(%rcx)
 30b:	01                   	.byte 0x1

Disassembly of section .debug_str:

0000000000000000 <.debug_str>:
   0:	70 72                	jo     74 <_init-0x40073c>
   2:	69 6e 74 66 00 5f 5f 	imul   $0x5f5f0066,0x74(%rsi),%ebp
   9:	6f                   	outsl  %ds:(%rsi),(%dx)
   a:	66 66 5f             	data32 pop %di
   d:	74 00                	je     f <_init-0x4007a1>
   f:	5f                   	pop    %rdi
  10:	49 53                	rex.WB push %r11
  12:	67 72 61             	addr32 jb 76 <_init-0x40073a>
  15:	70 68                	jo     7f <_init-0x400731>
  17:	00 5f 63             	add    %bl,0x63(%rdi)
  1a:	68 61 69 6e 00       	pushq  $0x6e6961
  1f:	73 69                	jae    8a <_init-0x400726>
  21:	7a 65                	jp     88 <_init-0x400728>
  23:	5f                   	pop    %rdi
  24:	74 00                	je     26 <_init-0x40078a>
  26:	5f                   	pop    %rdi
  27:	73 68                	jae    91 <_init-0x40071f>
  29:	6f                   	outsl  %ds:(%rsi),(%dx)
  2a:	72 74                	jb     a0 <_init-0x400710>
  2c:	62                   	(bad)  
  2d:	75 66                	jne    95 <_init-0x40071b>
  2f:	00 5f 49             	add    %bl,0x49(%rdi)
  32:	53                   	push   %rbx
  33:	73 70                	jae    a5 <_init-0x40070b>
  35:	61                   	(bad)  
  36:	63 65 00             	movslq 0x0(%rbp),%esp
  39:	5f                   	pop    %rdi
  3a:	49                   	rex.WB
  3b:	4f 5f                	rex.WRXB pop %r15
  3d:	62                   	(bad)  
  3e:	75 66                	jne    a6 <_init-0x40070a>
  40:	5f                   	pop    %rdi
  41:	62                   	(bad)  
  42:	61                   	(bad)  
  43:	73 65                	jae    aa <_init-0x400706>
  45:	00 73 61             	add    %dh,0x61(%rbx)
  48:	76 65                	jbe    af <_init-0x400701>
  4a:	5f                   	pop    %rdi
  4b:	74 65                	je     b2 <_init-0x4006fe>
  4d:	72 6d                	jb     bc <_init-0x4006f4>
  4f:	00 5f 5f             	add    %bl,0x5f(%rdi)
  52:	73 69                	jae    bd <_init-0x4006f3>
  54:	67 68 61 6e 64 6c    	addr32 pushq $0x6c646e61
  5a:	65                   	gs
  5b:	72 5f                	jb     bc <_init-0x4006f4>
  5d:	74 00                	je     5f <_init-0x400751>
  5f:	6c                   	insb   (%dx),%es:(%rdi)
  60:	6f                   	outsl  %ds:(%rsi),(%dx)
  61:	6e                   	outsb  %ds:(%rsi),(%dx)
  62:	67 20 6c 6f 6e       	and    %ch,0x6e(%edi,%ebp,2)
  67:	67 20 75 6e          	and    %dh,0x6e(%ebp)
  6b:	73 69                	jae    d6 <_init-0x4006da>
  6d:	67 6e                	outsb  %ds:(%esi),(%dx)
  6f:	65 64 20 69 6e       	gs and %ch,%fs:%gs:0x6e(%rcx)
  74:	74 00                	je     76 <_init-0x40073a>
  76:	74 65                	je     dd <_init-0x4006d3>
  78:	73 74                	jae    ee <_init-0x4006c2>
  7a:	00 5f 49             	add    %bl,0x49(%rdi)
  7d:	53                   	push   %rbx
  7e:	61                   	(bad)  
  7f:	6c                   	insb   (%dx),%es:(%rdi)
  80:	70 68                	jo     ea <_init-0x4006c6>
  82:	61                   	(bad)  
  83:	00 5f 49             	add    %bl,0x49(%rdi)
  86:	53                   	push   %rbx
  87:	64 69 67 69 74 00 6c 	imul   $0x6f6c0074,%fs:0x69(%rdi),%esp
  8e:	6f 
  8f:	6e                   	outsb  %ds:(%rsi),(%dx)
  90:	67 20 6c 6f 6e       	and    %ch,0x6e(%edi,%ebp,2)
  95:	67 20 69 6e          	and    %ch,0x6e(%ecx)
  99:	74 00                	je     9b <_init-0x400715>
  9b:	5f                   	pop    %rdi
  9c:	5f                   	pop    %rdi
  9d:	73 74                	jae    113 <_init-0x40069d>
  9f:	72 64                	jb     105 <_init-0x4006ab>
  a1:	75 70                	jne    113 <_init-0x40069d>
  a3:	00 5f 66             	add    %bl,0x66(%rdi)
  a6:	69 6c 65 6e 6f 00 5f 	imul   $0x495f006f,0x6e(%rbp,%riz,2),%ebp
  ad:	49 
  ae:	4f 5f                	rex.WRXB pop %r15
  b0:	72 65                	jb     117 <_init-0x400699>
  b2:	61                   	(bad)  
  b3:	64                   	fs
  b4:	5f                   	pop    %rdi
  b5:	65 6e                	outsb  %gs:(%rsi),(%dx)
  b7:	64 00 67 65          	add    %ah,%fs:0x65(%rdi)
  bb:	74 6f                	je     12c <_init-0x400684>
  bd:	70 74                	jo     133 <_init-0x40067d>
  bf:	00 6c 6f 63          	add    %ch,0x63(%rdi,%rbp,2)
  c3:	61                   	(bad)  
  c4:	6c                   	insb   (%dx),%es:(%rdi)
  c5:	00 61 6c             	add    %ah,0x6c(%rcx)
  c8:	61                   	(bad)  
  c9:	72 6d                	jb     138 <_init-0x400678>
  cb:	00 69 6e             	add    %ch,0x6e(%rcx)
  ce:	66 69 6c 65 00 5f 5f 	imul   $0x5f5f,0x0(%rbp,%riz,2),%bp
  d5:	62                   	(bad)  
  d6:	75 69                	jne    141 <_init-0x40066f>
  d8:	6c                   	insb   (%dx),%es:(%rdi)
  d9:	74 69                	je     144 <_init-0x40066c>
  db:	6e                   	outsb  %ds:(%rsi),(%dx)
  dc:	5f                   	pop    %rdi
  dd:	70 75                	jo     154 <_init-0x40065c>
  df:	74 73                	je     154 <_init-0x40065c>
  e1:	00 5f 63             	add    %bl,0x63(%rdi)
  e4:	75 72                	jne    158 <_init-0x400658>
  e6:	5f                   	pop    %rdi
  e7:	63 6f 6c             	movslq 0x6c(%rdi),%ebp
  ea:	75 6d                	jne    159 <_init-0x400657>
  ec:	6e                   	outsb  %ds:(%rsi),(%dx)
  ed:	00 5f 6f             	add    %bl,0x6f(%rdi)
  f0:	6c                   	insb   (%dx),%es:(%rdi)
  f1:	64                   	fs
  f2:	5f                   	pop    %rdi
  f3:	6f                   	outsl  %ds:(%rsi),(%dx)
  f4:	66                   	data16
  f5:	66                   	data16
  f6:	73 65                	jae    15d <_init-0x400653>
  f8:	74 00                	je     fa <_init-0x4006b6>
  fa:	73 6d                	jae    169 <_init-0x400647>
  fc:	6f                   	outsl  %ds:(%rsi),(%dx)
  fd:	6b 65 00 6d          	imul   $0x6d,0x0(%rbp),%esp
 101:	65                   	gs
 102:	6d                   	insl   (%dx),%es:(%rdi)
 103:	61                   	(bad)  
 104:	6c                   	insb   (%dx),%es:(%rdi)
 105:	69 67 6e 00 6d 70 72 	imul   $0x72706d00,0x6e(%rdi),%esp
 10c:	6f                   	outsl  %ds:(%rsi),(%dx)
 10d:	74 65                	je     174 <_init-0x40063c>
 10f:	63 74 00 73          	movslq 0x73(%rax,%rax,1),%esi
 113:	75 62                	jne    177 <_init-0x400639>
 115:	6d                   	insl   (%dx),%es:(%rdi)
 116:	69 74 00 5f 49 53 62 	imul   $0x6c625349,0x5f(%rax,%rax,1),%esi
 11d:	6c 
 11e:	61                   	(bad)  
 11f:	6e                   	outsb  %ds:(%rsi),(%dx)
 120:	6b 00 6e             	imul   $0x6e,(%rax),%eax
 123:	69 74 72 6f 00 5f 5f 	imul   $0x705f5f00,0x6f(%rdx,%rsi,2),%esi
 12a:	70 
 12b:	61                   	(bad)  
 12c:	64 31 00             	xor    %eax,%fs:(%rax)
 12f:	5f                   	pop    %rdi
 130:	5f                   	pop    %rdi
 131:	70 61                	jo     194 <_init-0x40061c>
 133:	64 32 00             	xor    %fs:(%rax),%al
 136:	61                   	(bad)  
 137:	6c                   	insb   (%dx),%es:(%rdi)
 138:	61                   	(bad)  
 139:	72 6d                	jb     1a8 <_init-0x400608>
 13b:	68 61 6e 64 6c       	pushq  $0x6c646e61
 140:	65                   	gs
 141:	72 00                	jb     143 <_init-0x40066d>
 143:	67                   	addr32
 144:	65                   	gs
 145:	74 73                	je     1ba <_init-0x4005f6>
 147:	5f                   	pop    %rdi
 148:	63 6e 74             	movslq 0x74(%rsi),%ebp
 14b:	00 68 65             	add    %ch,0x65(%rax)
 14e:	78 66                	js     1b6 <_init-0x4005fa>
 150:	6f                   	outsl  %ds:(%rsi),(%dx)
 151:	72 6d                	jb     1c0 <_init-0x4005f0>
 153:	61                   	(bad)  
 154:	74 00                	je     156 <_init-0x40065a>
 156:	5f                   	pop    %rdi
 157:	49 53                	rex.WB push %r11
 159:	70 75                	jo     1d0 <_init-0x4005e0>
 15b:	6e                   	outsb  %ds:(%rsi),(%dx)
 15c:	63 74 00 5f          	movslq 0x5f(%rax,%rax,1),%esi
 160:	49                   	rex.WB
 161:	4f 5f                	rex.WRXB pop %r15
 163:	6d                   	insl   (%dx),%es:(%rdi)
 164:	61                   	(bad)  
 165:	72 6b                	jb     1d2 <_init-0x4005de>
 167:	65                   	gs
 168:	72 00                	jb     16a <_init-0x400646>
 16a:	73 74                	jae    1e0 <_init-0x4005d0>
 16c:	64 69 6e 00 67 65 6e 	imul   $0x636e6567,%fs:0x0(%rsi),%ebp
 173:	63 
 174:	6f                   	outsl  %ds:(%rsi),(%dx)
 175:	6f                   	outsl  %ds:(%rsi),(%dx)
 176:	6b 69 65 00          	imul   $0x0,0x65(%rcx),%ebp
 17a:	5f                   	pop    %rdi
 17b:	49                   	rex.WB
 17c:	4f 5f                	rex.WRXB pop %r15
 17e:	77 72                	ja     1f2 <_init-0x4005be>
 180:	69 74 65 5f 70 74 72 	imul   $0x727470,0x5f(%rbp,%riz,2),%esi
 187:	00 
 188:	67                   	addr32
 189:	65                   	gs
 18a:	74 73                	je     1ff <_init-0x4005b1>
 18c:	5f                   	pop    %rdi
 18d:	62                   	(bad)  
 18e:	75 66                	jne    1f6 <_init-0x4005ba>
 190:	00 6e 61             	add    %ch,0x61(%rsi)
 193:	6d                   	insl   (%dx),%es:(%rdi)
 194:	65 00 73 74          	add    %dh,%gs:0x74(%rbx)
 198:	61                   	(bad)  
 199:	62                   	(bad)  
 19a:	6c                   	insb   (%dx),%es:(%rdi)
 19b:	65                   	gs
 19c:	5f                   	pop    %rdi
 19d:	74 77                	je     216 <_init-0x40059a>
 19f:	65                   	gs
 1a0:	61                   	(bad)  
 1a1:	6b 00 61             	imul   $0x61,(%rax),%eax
 1a4:	72 67                	jb     20d <_init-0x4005a3>
 1a6:	35 00 73 68 6f       	xor    $0x6f687300,%eax
 1ab:	72 74                	jb     221 <_init-0x40058f>
 1ad:	20 75 6e             	and    %dh,0x6e(%rbp)
 1b0:	73 69                	jae    21b <_init-0x400595>
 1b2:	67 6e                	outsb  %ds:(%esi),(%dx)
 1b4:	65 64 20 69 6e       	gs and %ch,%fs:%gs:0x6e(%rcx)
 1b9:	74 00                	je     1bb <_init-0x4005f5>
 1bb:	6f                   	outsl  %ds:(%rsi),(%dx)
 1bc:	70 74                	jo     232 <_init-0x40057e>
 1be:	61                   	(bad)  
 1bf:	72 67                	jb     228 <_init-0x400588>
 1c1:	00 5f 49             	add    %bl,0x49(%rdi)
 1c4:	4f 5f                	rex.WRXB pop %r15
 1c6:	73 61                	jae    229 <_init-0x400587>
 1c8:	76 65                	jbe    22f <_init-0x400581>
 1ca:	5f                   	pop    %rdi
 1cb:	62                   	(bad)  
 1cc:	61                   	(bad)  
 1cd:	73 65                	jae    234 <_init-0x40057c>
 1cf:	00 73 65             	add    %dh,0x65(%rbx)
 1d2:	67 68 61 6e 64 6c    	addr32 pushq $0x6c646e61
 1d8:	65                   	gs
 1d9:	72 00                	jb     1db <_init-0x4005d5>
 1db:	71 75                	jno    252 <_init-0x40055e>
 1dd:	69 65 74 00 69 6c 6c 	imul   $0x6c6c6900,0x74(%rbp),%esp
 1e4:	65                   	gs
 1e5:	67 61                	addr32 (bad) 
 1e7:	6c                   	insb   (%dx),%es:(%rdi)
 1e8:	68 61 6e 64 6c       	pushq  $0x6c646e61
 1ed:	65                   	gs
 1ee:	72 00                	jb     1f0 <_init-0x4005c0>
 1f0:	5f                   	pop    %rdi
 1f1:	6c                   	insb   (%dx),%es:(%rdi)
 1f2:	6f                   	outsl  %ds:(%rsi),(%dx)
 1f3:	63 6b 00             	movslq 0x0(%rbx),%ebp
 1f6:	5f                   	pop    %rdi
 1f7:	66                   	data16
 1f8:	6c                   	insb   (%dx),%es:(%rdi)
 1f9:	61                   	(bad)  
 1fa:	67 73 32             	addr32 jae 22f <_init-0x400581>
 1fd:	00 5f 6d             	add    %bl,0x6d(%rdi)
 200:	6f                   	outsl  %ds:(%rsi),(%dx)
 201:	64 65 00 73 74       	fs add %dh,%fs:%gs:0x74(%rbx)
 206:	64 6f                	outsl  %fs:(%rsi),(%dx)
 208:	75 74                	jne    27e <_init-0x400532>
 20a:	00 67 72             	add    %ah,0x72(%rdi)
 20d:	61                   	(bad)  
 20e:	64 65 00 65 6e       	fs add %ah,%fs:%gs:0x6e(%rbp)
 213:	74 72                	je     287 <_init-0x400529>
 215:	79 5f                	jns    276 <_init-0x40053a>
 217:	63 68 65             	movslq 0x65(%rax),%ebp
 21a:	63 6b 00             	movslq 0x0(%rbx),%ebp
 21d:	70 65                	jo     284 <_init-0x40052c>
 21f:	72 72                	jb     293 <_init-0x40051d>
 221:	6f                   	outsl  %ds:(%rsi),(%dx)
 222:	72 00                	jb     224 <_init-0x40058c>
 224:	75 73                	jne    299 <_init-0x400517>
 226:	61                   	(bad)  
 227:	67 65 00 73 72       	add    %dh,%gs:0x72(%ebx)
 22c:	61                   	(bad)  
 22d:	6e                   	outsb  %ds:(%rsi),(%dx)
 22e:	64 6f                	outsl  %fs:(%rsi),(%dx)
 230:	6d                   	insl   (%dx),%es:(%rdi)
 231:	00 73 69             	add    %dh,0x69(%rbx)
 234:	7a 65                	jp     29b <_init-0x400515>
 236:	74 79                	je     2b1 <_init-0x4004ff>
 238:	70 65                	jo     29f <_init-0x400511>
 23a:	00 65 76             	add    %ah,0x76(%rbp)
 23d:	65 6e                	outsb  %gs:(%rsi),(%dx)
 23f:	00 5f 49             	add    %bl,0x49(%rdi)
 242:	4f 5f                	rex.WRXB pop %r15
 244:	72 65                	jb     2ab <_init-0x400505>
 246:	61                   	(bad)  
 247:	64                   	fs
 248:	5f                   	pop    %rdi
 249:	70 74                	jo     2bf <_init-0x4004f1>
 24b:	72 00                	jb     24d <_init-0x400563>
 24d:	75 69                	jne    2b8 <_init-0x4004f8>
 24f:	6e                   	outsb  %ds:(%rsi),(%dx)
 250:	74 36                	je     288 <_init-0x400528>
 252:	34 5f                	xor    $0x5f,%al
 254:	74 00                	je     256 <_init-0x40055a>
 256:	66 69 7a 7a 00 5f    	imul   $0x5f00,0x7a(%rdx),%di
 25c:	49                   	rex.WB
 25d:	4f 5f                	rex.WRXB pop %r15
 25f:	6c                   	insb   (%dx),%es:(%rdi)
 260:	6f                   	outsl  %ds:(%rsi),(%dx)
 261:	63 6b 5f             	movslq 0x5f(%rbx),%ebp
 264:	74 00                	je     266 <_init-0x40054a>
 266:	5f                   	pop    %rdi
 267:	49                   	rex.WB
 268:	4f 5f                	rex.WRXB pop %r15
 26a:	46                   	rex.RX
 26b:	49                   	rex.WB
 26c:	4c                   	rex.WR
 26d:	45 00 5f 49          	add    %r11b,0x49(%r15)
 271:	4f 5f                	rex.WRXB pop %r15
 273:	67                   	addr32
 274:	65                   	gs
 275:	74 63                	je     2da <_init-0x4004d6>
 277:	00 62 75             	add    %ah,0x75(%rdx)
 27a:	66                   	data16
 27b:	62                   	(bad)  
 27c:	6f                   	outsl  %ds:(%rsi),(%dx)
 27d:	6d                   	insl   (%dx),%es:(%rdi)
 27e:	62                   	(bad)  
 27f:	2e 63 00             	movslq %cs:(%rax),%eax
 282:	5f                   	pop    %rdi
 283:	70 6f                	jo     2f4 <_init-0x4004bc>
 285:	73 00                	jae    287 <_init-0x400529>
 287:	5f                   	pop    %rdi
 288:	73 62                	jae    2ec <_init-0x4004c4>
 28a:	75 66                	jne    2f2 <_init-0x4004be>
 28c:	00 6f 74             	add    %ch,0x74(%rdi)
 28f:	68 65 72 64 00       	pushq  $0x647265
 294:	64                   	fs
 295:	65                   	gs
 296:	73 74                	jae    30c <_init-0x4004a4>
 298:	00 5f 6d             	add    %bl,0x6d(%rdi)
 29b:	61                   	(bad)  
 29c:	72 6b                	jb     309 <_init-0x4004a7>
 29e:	65                   	gs
 29f:	72 73                	jb     314 <_init-0x40049c>
 2a1:	00 6e 65             	add    %ch,0x65(%rsi)
 2a4:	77 5f                	ja     305 <_init-0x4004ab>
 2a6:	72 73                	jb     31b <_init-0x400495>
 2a8:	70 00                	jo     2aa <_init-0x400506>
 2aa:	2f                   	(bad)  
 2ab:	68 6f 6d 65 73       	pushq  $0x73656d6f
 2b0:	2f                   	(bad)  
 2b1:	69 77 73 2f 6a 6d 6c 	imul   $0x6c6d6a2f,0x73(%rdi),%esi
 2b8:	65 65 33 33          	gs xor %gs:(%rbx),%esi
 2bc:	37                   	(bad)  
 2bd:	2f                   	(bad)  
 2be:	63 75 72             	movslq 0x72(%rbp),%esi
 2c1:	72 65                	jb     328 <_init-0x400488>
 2c3:	6e                   	outsb  %ds:(%rsi),(%dx)
 2c4:	74 4c                	je     312 <_init-0x40049e>
 2c6:	61                   	(bad)  
 2c7:	62                   	(bad)  
 2c8:	33 2f                	xor    (%rdi),%ebp
 2ca:	73 72                	jae    33e <_init-0x400472>
 2cc:	63 00                	movslq (%rax),%eax
 2ce:	73 68                	jae    338 <_init-0x400478>
 2d0:	69 66 74 5f 73 74 61 	imul   $0x6174735f,0x74(%rsi),%esp
 2d7:	63 6b 5f             	movslq 0x5f(%rbx),%ebp
 2da:	61                   	(bad)  
 2db:	6e                   	outsb  %ds:(%rsi),(%dx)
 2dc:	64                   	fs
 2dd:	5f                   	pop    %rdi
 2de:	69 6e 76 6f 6b 65 5f 	imul   $0x5f656b6f,0x76(%rsi),%ebp
 2e5:	66                   	data16
 2e6:	75 6e                	jne    356 <_init-0x40045a>
 2e8:	63 74 69 6f          	movslq 0x6f(%rcx,%rbp,2),%esi
 2ec:	6e                   	outsb  %ds:(%rsi),(%dx)
 2ed:	00 75 6e             	add    %dh,0x6e(%rbp)
 2f0:	73 69                	jae    35b <_init-0x400455>
 2f2:	67 6e                	outsb  %ds:(%esi),(%dx)
 2f4:	65 64 20 63 68       	gs and %ah,%fs:%gs:0x68(%rbx)
 2f9:	61                   	(bad)  
 2fa:	72 00                	jb     2fc <_init-0x4004b4>
 2fc:	5f                   	pop    %rdi
 2fd:	49                   	rex.WB
 2fe:	4f 5f                	rex.WRXB pop %r15
 300:	62                   	(bad)  
 301:	75 66                	jne    369 <_init-0x400447>
 303:	5f                   	pop    %rdi
 304:	65 6e                	outsb  %gs:(%rsi),(%dx)
 306:	64 00 73 68          	add    %dh,%fs:0x68(%rbx)
 30a:	6f                   	outsl  %ds:(%rsi),(%dx)
 30b:	72 74                	jb     381 <_init-0x40042f>
 30d:	20 69 6e             	and    %ch,0x6e(%rcx)
 310:	74 00                	je     312 <_init-0x40049e>
 312:	6c                   	insb   (%dx),%es:(%rdi)
 313:	6f                   	outsl  %ds:(%rsi),(%dx)
 314:	63 61 6c             	movslq 0x6c(%rcx),%esp
 317:	62                   	(bad)  
 318:	75 66                	jne    380 <_init-0x400430>
 31a:	00 5f 76             	add    %bl,0x76(%rdi)
 31d:	74 61                	je     380 <_init-0x400430>
 31f:	62                   	(bad)  
 320:	6c                   	insb   (%dx),%es:(%rdi)
 321:	65                   	gs
 322:	5f                   	pop    %rdi
 323:	6f                   	outsl  %ds:(%rsi),(%dx)
 324:	66                   	data16
 325:	66                   	data16
 326:	73 65                	jae    38d <_init-0x400423>
 328:	74 00                	je     32a <_init-0x400486>
 32a:	76 61                	jbe    38d <_init-0x400423>
 32c:	6c                   	insb   (%dx),%es:(%rdi)
 32d:	69 64 61 74 65 00 61 	imul   $0x6c610065,0x74(%rcx,%riz,2),%esp
 334:	6c 
 335:	61                   	(bad)  
 336:	72 6d                	jb     3a5 <_init-0x40040b>
 338:	5f                   	pop    %rdi
 339:	74 69                	je     3a4 <_init-0x40040c>
 33b:	6d                   	insl   (%dx),%es:(%rdi)
 33c:	65 00 65 78          	add    %ah,%gs:0x78(%rbp)
 340:	69 74 00 62 75 73 68 	imul   $0x61687375,0x62(%rax,%rax,1),%esi
 347:	61 
 348:	6e                   	outsb  %ds:(%rsi),(%dx)
 349:	64                   	fs
 34a:	6c                   	insb   (%dx),%es:(%rdi)
 34b:	65                   	gs
 34c:	72 00                	jb     34e <_init-0x400462>
 34e:	76 61                	jbe    3b1 <_init-0x4003ff>
 350:	72 69                	jb     3bb <_init-0x4003f5>
 352:	61                   	(bad)  
 353:	62                   	(bad)  
 354:	6c                   	insb   (%dx),%es:(%rdi)
 355:	65                   	gs
 356:	5f                   	pop    %rdi
 357:	6c                   	insb   (%dx),%es:(%rdi)
 358:	65 6e                	outsb  %gs:(%rsi),(%dx)
 35a:	67 74 68             	addr32 je 3c5 <_init-0x4003eb>
 35d:	00 74 65 61          	add    %dh,0x61(%rbp,%riz,2)
 361:	6d                   	insl   (%dx),%es:(%rdi)
 362:	00 5f 5f             	add    %bl,0x5f(%rdi)
 365:	70 61                	jo     3c8 <_init-0x4003e8>
 367:	64 33 00             	xor    %fs:(%rax),%eax
 36a:	73 69                	jae    3d5 <_init-0x4003db>
 36c:	67 6e                	outsb  %ds:(%esi),(%dx)
 36e:	61                   	(bad)  
 36f:	6c                   	insb   (%dx),%es:(%rdi)
 370:	00 5f 5f             	add    %bl,0x5f(%rdi)
 373:	63 74 79 70          	movslq 0x70(%rcx,%rdi,2),%esi
 377:	65                   	gs
 378:	5f                   	pop    %rdi
 379:	62                   	(bad)  
 37a:	5f                   	pop    %rdi
 37b:	6c                   	insb   (%dx),%es:(%rdi)
 37c:	6f                   	outsl  %ds:(%rsi),(%dx)
 37d:	63 00                	movslq (%rax),%eax
 37f:	6f                   	outsl  %ds:(%rsi),(%dx)
 380:	6c                   	insb   (%dx),%es:(%rdi)
 381:	64                   	fs
 382:	5f                   	pop    %rdi
 383:	72 73                	jb     3f8 <_init-0x4003b8>
 385:	70 00                	jo     387 <_init-0x400429>
 387:	5f                   	pop    %rdi
 388:	49 53                	rex.WB push %r11
 38a:	63 6e 74             	movslq 0x74(%rsi),%ebp
 38d:	72 6c                	jb     3fb <_init-0x4003b5>
 38f:	00 5f 49             	add    %bl,0x49(%rdi)
 392:	53                   	push   %rbx
 393:	78 64                	js     3f9 <_init-0x4003b7>
 395:	69 67 69 74 00 6c 65 	imul   $0x656c0074,0x69(%rdi),%esp
 39c:	76 65                	jbe    403 <_init-0x4003ad>
 39e:	6c                   	insb   (%dx),%es:(%rdi)
 39f:	5f                   	pop    %rdi
 3a0:	63 6f 75             	movslq 0x75(%rdi),%ebp
 3a3:	6e                   	outsb  %ds:(%rsi),(%dx)
 3a4:	74 73                	je     419 <_init-0x400397>
 3a6:	00 5f 49             	add    %bl,0x49(%rdi)
 3a9:	53                   	push   %rbx
 3aa:	6c                   	insb   (%dx),%es:(%rdi)
 3ab:	6f                   	outsl  %ds:(%rsi),(%dx)
 3ac:	77 65                	ja     413 <_init-0x40039d>
 3ae:	72 00                	jb     3b0 <_init-0x400400>
 3b0:	5f                   	pop    %rdi
 3b1:	6e                   	outsb  %ds:(%rsi),(%dx)
 3b2:	65                   	gs
 3b3:	78 74                	js     429 <_init-0x400387>
 3b5:	00 5f 5f             	add    %bl,0x5f(%rdi)
 3b8:	6f                   	outsl  %ds:(%rsi),(%dx)
 3b9:	66                   	data16
 3ba:	66                   	data16
 3bb:	36                   	ss
 3bc:	34 5f                	xor    $0x5f,%al
 3be:	74 00                	je     3c0 <_init-0x4003f0>
 3c0:	5f                   	pop    %rdi
 3c1:	49                   	rex.WB
 3c2:	4f 5f                	rex.WRXB pop %r15
 3c4:	72 65                	jb     42b <_init-0x400385>
 3c6:	61                   	(bad)  
 3c7:	64                   	fs
 3c8:	5f                   	pop    %rdi
 3c9:	62                   	(bad)  
 3ca:	61                   	(bad)  
 3cb:	73 65                	jae    432 <_init-0x40037e>
 3cd:	00 47 4e             	add    %al,0x4e(%rdi)
 3d0:	55                   	push   %rbp
 3d1:	20 43 20             	and    %al,0x20(%rbx)
 3d4:	34 2e                	xor    $0x2e,%al
 3d6:	37                   	(bad)  
 3d7:	2e 32 20             	xor    %cs:(%rax),%ah
 3da:	32 30                	xor    (%rax),%dh
 3dc:	31 32                	xor    %esi,(%rdx)
 3de:	30 39                	xor    %bh,(%rcx)
 3e0:	32 31                	xor    (%rcx),%dh
 3e2:	20 28                	and    %ch,(%rax)
 3e4:	52                   	push   %rdx
 3e5:	65 64 20 48 61       	gs and %cl,%fs:%gs:0x61(%rax)
 3ea:	74 20                	je     40c <_init-0x4003a4>
 3ec:	34 2e                	xor    $0x2e,%al
 3ee:	37                   	(bad)  
 3ef:	2e 32 2d 32 29 20 2d 	xor    %cs:0x2d202932(%rip),%ch        # 2d202d28 <_end+0x2cbffde0>
 3f6:	6d                   	insl   (%dx),%es:(%rdi)
 3f7:	74 75                	je     46e <_init-0x400342>
 3f9:	6e                   	outsb  %ds:(%rsi),(%dx)
 3fa:	65                   	gs
 3fb:	3d 67 65 6e 65       	cmp    $0x656e6567,%eax
 400:	72 69                	jb     46b <_init-0x400345>
 402:	63 20                	movslq (%rax),%esp
 404:	2d 6d 61 72 63       	sub    $0x6372616d,%eax
 409:	68 3d 78 38 36       	pushq  $0x3638783d
 40e:	2d 36 34 20 2d       	sub    $0x2d203436,%eax
 413:	67 20 2d 4f 32 20 2d 	and    %ch,0x2d20324f(%eip)        # 2d203669 <_end+0x2cc00721>
 41a:	66                   	data16
 41b:	6e                   	outsb  %ds:(%rsi),(%dx)
 41c:	6f                   	outsl  %ds:(%rsi),(%dx)
 41d:	2d 73 74 61 63       	sub    $0x63617473,%eax
 422:	6b 2d 70 72 6f 74 65 	imul   $0x65,0x746f7270(%rip),%ebp        # 746f7699 <_end+0x740f4751>
 429:	63 74 6f 72          	movslq 0x72(%rdi,%rbp,2),%esi
 42d:	00 5f 49             	add    %bl,0x49(%rdi)
 430:	4f 5f                	rex.WRXB pop %r15
 432:	73 61                	jae    495 <_init-0x40031b>
 434:	76 65                	jbe    49b <_init-0x400315>
 436:	5f                   	pop    %rdi
 437:	65 6e                	outsb  %gs:(%rsi),(%dx)
 439:	64 00 67 6c          	add    %ah,%fs:0x6c(%rdi)
 43d:	6f                   	outsl  %ds:(%rsi),(%dx)
 43e:	62                   	(bad)  
 43f:	61                   	(bad)  
 440:	6c                   	insb   (%dx),%es:(%rdi)
 441:	5f                   	pop    %rdi
 442:	76 61                	jbe    4a5 <_init-0x40030b>
 444:	6c                   	insb   (%dx),%es:(%rdi)
 445:	75 65                	jne    4ac <_init-0x400304>
 447:	00 62 61             	add    %ah,0x61(%rdx)
 44a:	6e                   	outsb  %ds:(%rsi),(%dx)
 44b:	67 00 61 72          	add    %ah,0x72(%ecx)
 44f:	67 31 00             	xor    %eax,(%eax)
 452:	61                   	(bad)  
 453:	72 67                	jb     4bc <_init-0x4002f4>
 455:	32 00                	xor    (%rax),%al
 457:	61                   	(bad)  
 458:	72 67                	jb     4c1 <_init-0x4002ef>
 45a:	33 00                	xor    (%rax),%eax
 45c:	61                   	(bad)  
 45d:	72 67                	jb     4c6 <_init-0x4002ea>
 45f:	34 00                	xor    $0x0,%al
 461:	74 72                	je     4d5 <_init-0x4002db>
 463:	61                   	(bad)  
 464:	6e                   	outsb  %ds:(%rsi),(%dx)
 465:	73 5f                	jae    4c6 <_init-0x4002ea>
 467:	63 68 61             	movslq 0x61(%rax),%ebp
 46a:	72 00                	jb     46c <_init-0x400344>
 46c:	61                   	(bad)  
 46d:	72 67                	jb     4d6 <_init-0x4002da>
 46f:	36 00 5f 5f          	add    %bl,%ss:0x5f(%rdi)
 473:	70 61                	jo     4d6 <_init-0x4002da>
 475:	64                   	fs
 476:	34 00                	xor    $0x0,%al
 478:	5f                   	pop    %rdi
 479:	5f                   	pop    %rdi
 47a:	70 61                	jo     4dd <_init-0x4002d3>
 47c:	64                   	fs
 47d:	35 00 6f 66 66       	xor    $0x66666f00,%eax
 482:	73 65                	jae    4e9 <_init-0x4002c7>
 484:	74 73                	je     4f9 <_init-0x4002b7>
 486:	00 5f 49             	add    %bl,0x49(%rdi)
 489:	4f 5f                	rex.WRXB pop %r15
 48b:	77 72                	ja     4ff <_init-0x4002b1>
 48d:	69 74 65 5f 65 6e 64 	imul   $0x646e65,0x5f(%rbp,%riz,2),%esi
 494:	00 
 495:	5f                   	pop    %rdi
 496:	75 6e                	jne    506 <_init-0x4002aa>
 498:	75 73                	jne    50d <_init-0x4002a3>
 49a:	65 64 32 00          	gs xor %fs:%gs:(%rax),%al
 49e:	61                   	(bad)  
 49f:	72 67                	jb     508 <_init-0x4002a8>
 4a1:	76 00                	jbe    4a3 <_init-0x40030d>
 4a3:	6d                   	insl   (%dx),%es:(%rdi)
 4a4:	65                   	gs
 4a5:	6d                   	insl   (%dx),%es:(%rdi)
 4a6:	73 65                	jae    50d <_init-0x4002a3>
 4a8:	74 00                	je     4aa <_init-0x400306>
 4aa:	66                   	data16
 4ab:	75 6e                	jne    51b <_init-0x400295>
 4ad:	63 5f 70             	movslq 0x70(%rdi),%ebx
 4b0:	74 72                	je     524 <_init-0x40028c>
 4b2:	00 5f 49             	add    %bl,0x49(%rdi)
 4b5:	53                   	push   %rbx
 4b6:	61                   	(bad)  
 4b7:	6c                   	insb   (%dx),%es:(%rdi)
 4b8:	6e                   	outsb  %ds:(%rsi),(%dx)
 4b9:	75 6d                	jne    528 <_init-0x400288>
 4bb:	00 47 65             	add    %al,0x65(%rdi)
 4be:	74 73                	je     533 <_init-0x40027d>
 4c0:	00 5f 49             	add    %bl,0x49(%rdi)
 4c3:	53                   	push   %rbx
 4c4:	75 70                	jne    536 <_init-0x40027a>
 4c6:	70 65                	jo     52d <_init-0x400283>
 4c8:	72 00                	jb     4ca <_init-0x4002e6>
 4ca:	5f                   	pop    %rdi
 4cb:	66                   	data16
 4cc:	6c                   	insb   (%dx),%es:(%rdi)
 4cd:	61                   	(bad)  
 4ce:	67 73 00             	addr32 jae 4d1 <_init-0x4002df>
 4d1:	63 6f 6f             	movslq 0x6f(%rdi),%ebp
 4d4:	6b 69 65 5f          	imul   $0x5f,0x65(%rcx),%ebp
 4d8:	74 77                	je     551 <_init-0x40025f>
 4da:	65                   	gs
 4db:	61                   	(bad)  
 4dc:	6b 00 5f             	imul   $0x5f,(%rax),%eax
 4df:	49                   	rex.WB
 4e0:	4f 5f                	rex.WRXB pop %r15
 4e2:	62                   	(bad)  
 4e3:	61                   	(bad)  
 4e4:	63 6b 75             	movslq 0x75(%rbx),%ebp
 4e7:	70 5f                	jo     548 <_init-0x400268>
 4e9:	62                   	(bad)  
 4ea:	61                   	(bad)  
 4eb:	73 65                	jae    552 <_init-0x40025e>
 4ed:	00 63 68             	add    %ah,0x68(%rbx)
 4f0:	65 63 6b 5f          	movslq %gs:0x5f(%rbx),%ebp
 4f4:	6c                   	insb   (%dx),%es:(%rdi)
 4f5:	65                   	gs
 4f6:	76 65                	jbe    55d <_init-0x400253>
 4f8:	6c                   	insb   (%dx),%es:(%rdi)
 4f9:	00 67 65             	add    %ah,0x65(%rdi)
 4fc:	74 62                	je     560 <_init-0x400250>
 4fe:	75 66                	jne    566 <_init-0x40024a>
 500:	00 61 72             	add    %ah,0x72(%rcx)
 503:	67 63 00             	movslq (%eax),%eax
 506:	74 65                	je     56d <_init-0x400243>
 508:	73 74                	jae    57e <_init-0x400232>
 50a:	5f                   	pop    %rdi
 50b:	66                   	data16
 50c:	75 6e                	jne    57c <_init-0x400234>
 50e:	63 74 69 6f          	movslq 0x6f(%rcx,%rbp,2),%esi
 512:	6e                   	outsb  %ds:(%rsi),(%dx)
 513:	00 6c 61 75          	add    %ch,0x75(%rcx,%riz,2)
 517:	6e                   	outsb  %ds:(%rsi),(%dx)
 518:	63 68 00             	movslq 0x0(%rax),%ebp
 51b:	6d                   	insl   (%dx),%es:(%rdi)
 51c:	61                   	(bad)  
 51d:	69 6e 00 5f 49 4f 5f 	imul   $0x5f4f495f,0x0(%rsi),%ebp
 524:	77 72                	ja     598 <_init-0x400218>
 526:	69 74 65 5f 62 61 73 	imul   $0x65736162,0x5f(%rbp,%riz,2),%esi
 52d:	65 
 52e:	00 5f 49             	add    %bl,0x49(%rdi)
 531:	53                   	push   %rbx
 532:	70 72                	jo     5a6 <_init-0x40020a>
 534:	69 6e 74 00 73 61 76 	imul   $0x76617300,0x74(%rsi),%ebp
 53b:	65                   	gs
 53c:	5f                   	pop    %rdi
 53d:	63 68 61             	movslq 0x61(%rax),%ebp
 540:	72 00                	jb     542 <_init-0x40026e>
 542:	73 75                	jae    5b9 <_init-0x4001f7>
 544:	63 63 65             	movslq 0x65(%rbx),%esp
 547:	73 73                	jae    5bc <_init-0x4001f4>
	...

Disassembly of section .debug_loc:

0000000000000000 <.debug_loc>:
   0:	f0 0b 40 00          	lock or 0x0(%rax),%eax
   4:	00 00                	add    %al,(%rax)
   6:	00 00                	add    %al,(%rax)
   8:	fc                   	cld    
   9:	0b 40 00             	or     0x0(%rax),%eax
   c:	00 00                	add    %al,(%rax)
   e:	00 00                	add    %al,(%rax)
  10:	01 00                	add    %eax,(%rax)
  12:	55                   	push   %rbp
  13:	fc                   	cld    
  14:	0b 40 00             	or     0x0(%rax),%eax
  17:	00 00                	add    %al,(%rax)
  19:	00 00                	add    %al,(%rax)
  1b:	02 0c 40             	add    (%rax,%rax,2),%cl
  1e:	00 00                	add    %al,(%rax)
  20:	00 00                	add    %al,(%rax)
  22:	00 01                	add    %al,(%rcx)
  24:	00 54 02 0c          	add    %dl,0xc(%rdx,%rax,1)
  28:	40 00 00             	add    %al,(%rax)
  2b:	00 00                	add    %al,(%rax)
  2d:	00 14 0c             	add    %dl,(%rsp,%rcx,1)
  30:	40 00 00             	add    %al,(%rax)
  33:	00 00                	add    %al,(%rax)
  35:	00 04 00             	add    %al,(%rax,%rax,1)
  38:	f3 01 55 9f          	repz add %edx,-0x61(%rbp)
	...
  4c:	20 0c 40             	and    %cl,(%rax,%rax,2)
  4f:	00 00                	add    %al,(%rax)
  51:	00 00                	add    %al,(%rax)
  53:	00 29                	add    %ch,(%rcx)
  55:	0c 40                	or     $0x40,%al
  57:	00 00                	add    %al,(%rax)
  59:	00 00                	add    %al,(%rax)
  5b:	00 01                	add    %al,(%rcx)
  5d:	00 55 29             	add    %dl,0x29(%rbp)
  60:	0c 40                	or     $0x40,%al
  62:	00 00                	add    %al,(%rax)
  64:	00 00                	add    %al,(%rax)
  66:	00 3f                	add    %bh,(%rdi)
  68:	0c 40                	or     $0x40,%al
  6a:	00 00                	add    %al,(%rax)
  6c:	00 00                	add    %al,(%rax)
  6e:	00 04 00             	add    %al,(%rax,%rax,1)
  71:	f3 01 55 9f          	repz add %edx,-0x61(%rbp)
	...
  85:	40 0c 40             	or     $0x40,%al
  88:	00 00                	add    %al,(%rax)
  8a:	00 00                	add    %al,(%rax)
  8c:	00 4f 0c             	add    %cl,0xc(%rdi)
  8f:	40 00 00             	add    %al,(%rax)
  92:	00 00                	add    %al,(%rax)
  94:	00 01                	add    %al,(%rcx)
  96:	00 55 4f             	add    %dl,0x4f(%rbp)
  99:	0c 40                	or     $0x40,%al
  9b:	00 00                	add    %al,(%rax)
  9d:	00 00                	add    %al,(%rax)
  9f:	00 67 0c             	add    %ah,0xc(%rdi)
  a2:	40 00 00             	add    %al,(%rax)
  a5:	00 00                	add    %al,(%rax)
  a7:	00 04 00             	add    %al,(%rax,%rax,1)
  aa:	f3 01 55 9f          	repz add %edx,-0x61(%rbp)
	...
  be:	70 0c                	jo     cc <_init-0x4006e4>
  c0:	40 00 00             	add    %al,(%rax)
  c3:	00 00                	add    %al,(%rax)
  c5:	00 79 0c             	add    %bh,0xc(%rcx)
  c8:	40 00 00             	add    %al,(%rax)
  cb:	00 00                	add    %al,(%rax)
  cd:	00 01                	add    %al,(%rcx)
  cf:	00 55 79             	add    %dl,0x79(%rbp)
  d2:	0c 40                	or     $0x40,%al
  d4:	00 00                	add    %al,(%rax)
  d6:	00 00                	add    %al,(%rax)
  d8:	00 8f 0c 40 00 00    	add    %cl,0x400c(%rdi)
  de:	00 00                	add    %al,(%rax)
  e0:	00 04 00             	add    %al,(%rax,%rax,1)
  e3:	f3 01 55 9f          	repz add %edx,-0x61(%rbp)
	...
  f7:	90                   	nop
  f8:	0c 40                	or     $0x40,%al
  fa:	00 00                	add    %al,(%rax)
  fc:	00 00                	add    %al,(%rax)
  fe:	00 99 0c 40 00 00    	add    %bl,0x400c(%rcx)
 104:	00 00                	add    %al,(%rax)
 106:	00 01                	add    %al,(%rcx)
 108:	00 55 99             	add    %dl,-0x67(%rbp)
 10b:	0c 40                	or     $0x40,%al
 10d:	00 00                	add    %al,(%rax)
 10f:	00 00                	add    %al,(%rax)
 111:	00 af 0c 40 00 00    	add    %ch,0x400c(%rdi)
 117:	00 00                	add    %al,(%rax)
 119:	00 04 00             	add    %al,(%rax,%rax,1)
 11c:	f3 01 55 9f          	repz add %edx,-0x61(%rbp)
	...
 130:	b0 0c                	mov    $0xc,%al
 132:	40 00 00             	add    %al,(%rax)
 135:	00 00                	add    %al,(%rax)
 137:	00 db                	add    %bl,%bl
 139:	0c 40                	or     $0x40,%al
 13b:	00 00                	add    %al,(%rax)
 13d:	00 00                	add    %al,(%rax)
 13f:	00 01                	add    %al,(%rcx)
 141:	00 55 db             	add    %dl,-0x25(%rbp)
 144:	0c 40                	or     $0x40,%al
 146:	00 00                	add    %al,(%rax)
 148:	00 00                	add    %al,(%rax)
 14a:	00 74 0d 40          	add    %dh,0x40(%rbp,%rcx,1)
 14e:	00 00                	add    %al,(%rax)
 150:	00 00                	add    %al,(%rax)
 152:	00 01                	add    %al,(%rcx)
 154:	00 5d 74             	add    %bl,0x74(%rbp)
 157:	0d 40 00 00 00       	or     $0x40,%eax
 15c:	00 00                	add    %al,(%rax)
 15e:	77 0d                	ja     16d <_init-0x400643>
 160:	40 00 00             	add    %al,(%rax)
 163:	00 00                	add    %al,(%rax)
 165:	00 01                	add    %al,(%rcx)
 167:	00 50 77             	add    %dl,0x77(%rax)
 16a:	0d 40 00 00 00       	or     $0x40,%eax
 16f:	00 00                	add    %al,(%rax)
 171:	9f                   	lahf   
 172:	0d 40 00 00 00       	or     $0x40,%eax
 177:	00 00                	add    %al,(%rax)
 179:	01 00                	add    %eax,(%rax)
 17b:	5d                   	pop    %rbp
	...
 18c:	2e                   	cs
 18d:	0d 40 00 00 00       	or     $0x40,%eax
 192:	00 00                	add    %al,(%rax)
 194:	43 0d 40 00 00 00    	rex.XB or $0x40,%eax
 19a:	00 00                	add    %al,(%rax)
 19c:	01 00                	add    %eax,(%rax)
 19e:	50                   	push   %rax
 19f:	50                   	push   %rax
 1a0:	0d 40 00 00 00       	or     $0x40,%eax
 1a5:	00 00                	add    %al,(%rax)
 1a7:	55                   	push   %rbp
 1a8:	0d 40 00 00 00       	or     $0x40,%eax
 1ad:	00 00                	add    %al,(%rax)
 1af:	01 00                	add    %eax,(%rax)
 1b1:	50                   	push   %rax
 1b2:	77 0d                	ja     1c1 <_init-0x4005ef>
 1b4:	40 00 00             	add    %al,(%rax)
 1b7:	00 00                	add    %al,(%rax)
 1b9:	00 8b 0d 40 00 00    	add    %cl,0x400d(%rbx)
 1bf:	00 00                	add    %al,(%rax)
 1c1:	00 08                	add    %cl,(%rax)
 1c3:	00 7e 00             	add    %bh,0x0(%rsi)
 1c6:	34 24                	xor    $0x24,%al
 1c8:	70 00                	jo     1ca <_init-0x4005e6>
 1ca:	22 9f 8b 0d 40 00    	and    0x400d8b(%rdi),%bl
 1d0:	00 00                	add    %al,(%rax)
 1d2:	00 00                	add    %al,(%rax)
 1d4:	99                   	cltd   
 1d5:	0d 40 00 00 00       	or     $0x40,%eax
 1da:	00 00                	add    %al,(%rax)
 1dc:	01 00                	add    %eax,(%rax)
 1de:	50                   	push   %rax
	...
 1ef:	f1                   	icebp  
 1f0:	0c 40                	or     $0x40,%al
 1f2:	00 00                	add    %al,(%rax)
 1f4:	00 00                	add    %al,(%rax)
 1f6:	00 fc                	add    %bh,%ah
 1f8:	0c 40                	or     $0x40,%al
 1fa:	00 00                	add    %al,(%rax)
 1fc:	00 00                	add    %al,(%rax)
 1fe:	00 01                	add    %al,(%rcx)
 200:	00 50 fc             	add    %dl,-0x4(%rax)
 203:	0c 40                	or     $0x40,%al
 205:	00 00                	add    %al,(%rax)
 207:	00 00                	add    %al,(%rax)
 209:	00 1b                	add    %bl,(%rbx)
 20b:	0d 40 00 00 00       	or     $0x40,%eax
 210:	00 00                	add    %al,(%rax)
 212:	01 00                	add    %eax,(%rax)
 214:	53                   	push   %rbx
 215:	1b 0d 40 00 00 00    	sbb    0x40(%rip),%ecx        # 25b <_init-0x400555>
 21b:	00 00                	add    %al,(%rax)
 21d:	21 0d 40 00 00 00    	and    %ecx,0x40(%rip)        # 263 <_init-0x40054d>
 223:	00 00                	add    %al,(%rax)
 225:	04 00                	add    $0x0,%al
 227:	73 d7                	jae    200 <_init-0x4005b0>
 229:	00 9f 21 0d 40 00    	add    %bl,0x400d21(%rdi)
 22f:	00 00                	add    %al,(%rax)
 231:	00 00                	add    %al,(%rax)
 233:	2e                   	cs
 234:	0d 40 00 00 00       	or     $0x40,%eax
 239:	00 00                	add    %al,(%rax)
 23b:	01 00                	add    %eax,(%rax)
 23d:	52                   	push   %rdx
 23e:	77 0d                	ja     24d <_init-0x400563>
 240:	40 00 00             	add    %al,(%rax)
 243:	00 00                	add    %al,(%rax)
 245:	00 99 0d 40 00 00    	add    %bl,0x400d(%rcx)
 24b:	00 00                	add    %al,(%rax)
 24d:	00 01                	add    %al,(%rcx)
 24f:	00 52 00             	add    %dl,0x0(%rdx)
	...
 25e:	00 00                	add    %al,(%rax)
 260:	00 b0 0c 40 00 00    	add    %dh,0x400c(%rax)
 266:	00 00                	add    %al,(%rax)
 268:	00 db                	add    %bl,%bl
 26a:	0c 40                	or     $0x40,%al
 26c:	00 00                	add    %al,(%rax)
 26e:	00 00                	add    %al,(%rax)
 270:	00 02                	add    %al,(%rdx)
 272:	00 31                	add    %dh,(%rcx)
 274:	9f                   	lahf   
 275:	db 0c 40             	fisttpl (%rax,%rax,2)
 278:	00 00                	add    %al,(%rax)
 27a:	00 00                	add    %al,(%rax)
 27c:	00 2c 0d 40 00 00 00 	add    %ch,0x40(,%rcx,1)
 283:	00 00                	add    %al,(%rax)
 285:	01 00                	add    %eax,(%rax)
 287:	5c                   	pop    %rsp
 288:	2e                   	cs
 289:	0d 40 00 00 00       	or     $0x40,%eax
 28e:	00 00                	add    %al,(%rax)
 290:	55                   	push   %rbp
 291:	0d 40 00 00 00       	or     $0x40,%eax
 296:	00 00                	add    %al,(%rax)
 298:	02 00                	add    (%rax),%al
 29a:	31 9f 77 0d 40 00    	xor    %ebx,0x400d77(%rdi)
 2a0:	00 00                	add    %al,(%rax)
 2a2:	00 00                	add    %al,(%rax)
 2a4:	86 0d 40 00 00 00    	xchg   %cl,0x40(%rip)        # 2ea <_init-0x4004c6>
 2aa:	00 00                	add    %al,(%rax)
 2ac:	01 00                	add    %eax,(%rax)
 2ae:	5c                   	pop    %rsp
 2af:	9a                   	(bad)  
 2b0:	0d 40 00 00 00       	or     $0x40,%eax
 2b5:	00 00                	add    %al,(%rax)
 2b7:	9f                   	lahf   
 2b8:	0d 40 00 00 00       	or     $0x40,%eax
 2bd:	00 00                	add    %al,(%rax)
 2bf:	02 00                	add    (%rax),%al
 2c1:	31 9f 00 00 00 00    	xor    %ebx,0x0(%rdi)
	...
 2d3:	b0 0c                	mov    $0xc,%al
 2d5:	40 00 00             	add    %al,(%rax)
 2d8:	00 00                	add    %al,(%rax)
 2da:	00 db                	add    %bl,%bl
 2dc:	0c 40                	or     $0x40,%al
 2de:	00 00                	add    %al,(%rax)
 2e0:	00 00                	add    %al,(%rax)
 2e2:	00 02                	add    %al,(%rdx)
 2e4:	00 30                	add    %dh,(%rax)
 2e6:	9f                   	lahf   
 2e7:	db 0c 40             	fisttpl (%rax,%rax,2)
 2ea:	00 00                	add    %al,(%rax)
 2ec:	00 00                	add    %al,(%rax)
 2ee:	00 29                	add    %ch,(%rcx)
 2f0:	0d 40 00 00 00       	or     $0x40,%eax
 2f5:	00 00                	add    %al,(%rax)
 2f7:	01 00                	add    %eax,(%rax)
 2f9:	5e                   	pop    %rsi
 2fa:	2e                   	cs
 2fb:	0d 40 00 00 00       	or     $0x40,%eax
 300:	00 00                	add    %al,(%rax)
 302:	55                   	push   %rbp
 303:	0d 40 00 00 00       	or     $0x40,%eax
 308:	00 00                	add    %al,(%rax)
 30a:	02 00                	add    (%rax),%al
 30c:	30 9f 77 0d 40 00    	xor    %bl,0x400d77(%rdi)
 312:	00 00                	add    %al,(%rax)
 314:	00 00                	add    %al,(%rax)
 316:	9f                   	lahf   
 317:	0d 40 00 00 00       	or     $0x40,%eax
 31c:	00 00                	add    %al,(%rax)
 31e:	01 00                	add    %eax,(%rax)
 320:	5e                   	pop    %rsi
	...
 331:	b0 0c                	mov    $0xc,%al
 333:	40 00 00             	add    %al,(%rax)
 336:	00 00                	add    %al,(%rax)
 338:	00 db                	add    %bl,%bl
 33a:	0c 40                	or     $0x40,%al
 33c:	00 00                	add    %al,(%rax)
 33e:	00 00                	add    %al,(%rax)
 340:	00 01                	add    %al,(%rcx)
 342:	00 55 db             	add    %dl,-0x25(%rbp)
 345:	0c 40                	or     $0x40,%al
 347:	00 00                	add    %al,(%rax)
 349:	00 00                	add    %al,(%rax)
 34b:	00 59 0d             	add    %bl,0xd(%rcx)
 34e:	40 00 00             	add    %al,(%rax)
 351:	00 00                	add    %al,(%rax)
 353:	00 01                	add    %al,(%rcx)
 355:	00 56 59             	add    %dl,0x59(%rsi)
 358:	0d 40 00 00 00       	or     $0x40,%eax
 35d:	00 00                	add    %al,(%rax)
 35f:	61                   	(bad)  
 360:	0d 40 00 00 00       	or     $0x40,%eax
 365:	00 00                	add    %al,(%rax)
 367:	03 00                	add    (%rax),%eax
 369:	76 01                	jbe    36c <_init-0x400444>
 36b:	9f                   	lahf   
 36c:	77 0d                	ja     37b <_init-0x400435>
 36e:	40 00 00             	add    %al,(%rax)
 371:	00 00                	add    %al,(%rax)
 373:	00 9f 0d 40 00 00    	add    %bl,0x400d(%rdi)
 379:	00 00                	add    %al,(%rax)
 37b:	00 01                	add    %al,(%rcx)
 37d:	00 56 00             	add    %dl,0x0(%rsi)
	...
 38c:	00 00                	add    %al,(%rax)
 38e:	00 21                	add    %ah,(%rcx)
 390:	0d 40 00 00 00       	or     $0x40,%eax
 395:	00 00                	add    %al,(%rax)
 397:	2e                   	cs
 398:	0d 40 00 00 00       	or     $0x40,%eax
 39d:	00 00                	add    %al,(%rax)
 39f:	01 00                	add    %eax,(%rax)
 3a1:	50                   	push   %rax
 3a2:	77 0d                	ja     3b1 <_init-0x4003ff>
 3a4:	40 00 00             	add    %al,(%rax)
 3a7:	00 00                	add    %al,(%rax)
 3a9:	00 8b 0d 40 00 00    	add    %cl,0x400d(%rbx)
 3af:	00 00                	add    %al,(%rax)
 3b1:	00 01                	add    %al,(%rcx)
 3b3:	00 50 00             	add    %dl,0x0(%rax)
	...
 3c2:	00 00                	add    %al,(%rax)
 3c4:	00 be 0d 40 00 00    	add    %bh,0x400d(%rsi)
 3ca:	00 00                	add    %al,(%rax)
 3cc:	00 c1                	add    %al,%cl
 3ce:	0d 40 00 00 00       	or     $0x40,%eax
 3d3:	00 00                	add    %al,(%rax)
 3d5:	01 00                	add    %eax,(%rax)
 3d7:	50                   	push   %rax
 3d8:	c1 0d 40 00 00 00 00 	rorl   $0x0,0x40(%rip)        # 41f <_init-0x400391>
 3df:	00 e2                	add    %ah,%dl
 3e1:	0d 40 00 00 00       	or     $0x40,%eax
 3e6:	00 00                	add    %al,(%rax)
 3e8:	01 00                	add    %eax,(%rax)
 3ea:	52                   	push   %rdx
	...
 3fb:	30 0e                	xor    %cl,(%rsi)
 3fd:	40 00 00             	add    %al,(%rax)
 400:	00 00                	add    %al,(%rax)
 402:	00 85 0e 40 00 00    	add    %al,0x400e(%rbp)
 408:	00 00                	add    %al,(%rax)
 40a:	00 01                	add    %al,(%rcx)
 40c:	00 55 85             	add    %dl,-0x7b(%rbp)
 40f:	0e                   	(bad)  
 410:	40 00 00             	add    %al,(%rax)
 413:	00 00                	add    %al,(%rax)
 415:	00 8a 0e 40 00 00    	add    %cl,0x400e(%rdx)
 41b:	00 00                	add    %al,(%rax)
 41d:	00 04 00             	add    %al,(%rax,%rax,1)
 420:	f3 01 55 9f          	repz add %edx,-0x61(%rbp)
 424:	8a 0e                	mov    (%rsi),%cl
 426:	40 00 00             	add    %al,(%rax)
 429:	00 00                	add    %al,(%rax)
 42b:	00 99 0e 40 00 00    	add    %bl,0x400e(%rcx)
 431:	00 00                	add    %al,(%rax)
 433:	00 01                	add    %al,(%rcx)
 435:	00 55 99             	add    %dl,-0x67(%rbp)
 438:	0e                   	(bad)  
 439:	40 00 00             	add    %al,(%rax)
 43c:	00 00                	add    %al,(%rax)
 43e:	00 9d 0e 40 00 00    	add    %bl,0x400e(%rbp)
 444:	00 00                	add    %al,(%rax)
 446:	00 01                	add    %al,(%rcx)
 448:	00 54 9d 0e          	add    %dl,0xe(%rbp,%rbx,4)
 44c:	40 00 00             	add    %al,(%rax)
 44f:	00 00                	add    %al,(%rax)
 451:	00 9e 0e 40 00 00    	add    %bl,0x400e(%rsi)
 457:	00 00                	add    %al,(%rax)
 459:	00 04 00             	add    %al,(%rax,%rax,1)
 45c:	f3 01 55 9f          	repz add %edx,-0x61(%rbp)
 460:	9e                   	sahf   
 461:	0e                   	(bad)  
 462:	40 00 00             	add    %al,(%rax)
 465:	00 00                	add    %al,(%rax)
 467:	00 a5 0e 40 00 00    	add    %ah,0x400e(%rbp)
 46d:	00 00                	add    %al,(%rax)
 46f:	00 01                	add    %al,(%rcx)
 471:	00 55 a5             	add    %dl,-0x5b(%rbp)
 474:	0e                   	(bad)  
 475:	40 00 00             	add    %al,(%rax)
 478:	00 00                	add    %al,(%rax)
 47a:	00 aa 0e 40 00 00    	add    %ch,0x400e(%rdx)
 480:	00 00                	add    %al,(%rax)
 482:	00 04 00             	add    %al,(%rax,%rax,1)
 485:	f3 01 55 9f          	repz add %edx,-0x61(%rbp)
 489:	aa                   	stos   %al,%es:(%rdi)
 48a:	0e                   	(bad)  
 48b:	40 00 00             	add    %al,(%rax)
 48e:	00 00                	add    %al,(%rax)
 490:	00 b5 0e 40 00 00    	add    %dh,0x400e(%rbp)
 496:	00 00                	add    %al,(%rax)
 498:	00 01                	add    %al,(%rcx)
 49a:	00 55 b5             	add    %dl,-0x4b(%rbp)
 49d:	0e                   	(bad)  
 49e:	40 00 00             	add    %al,(%rax)
 4a1:	00 00                	add    %al,(%rax)
 4a3:	00 b9 0e 40 00 00    	add    %bh,0x400e(%rcx)
 4a9:	00 00                	add    %al,(%rax)
 4ab:	00 01                	add    %al,(%rcx)
 4ad:	00 51 b9             	add    %dl,-0x47(%rcx)
 4b0:	0e                   	(bad)  
 4b1:	40 00 00             	add    %al,(%rax)
 4b4:	00 00                	add    %al,(%rax)
 4b6:	00 ba 0e 40 00 00    	add    %bh,0x400e(%rdx)
 4bc:	00 00                	add    %al,(%rax)
 4be:	00 04 00             	add    %al,(%rax,%rax,1)
 4c1:	f3 01 55 9f          	repz add %edx,-0x61(%rbp)
 4c5:	ba 0e 40 00 00       	mov    $0x400e,%edx
 4ca:	00 00                	add    %al,(%rax)
 4cc:	00 c5                	add    %al,%ch
 4ce:	0e                   	(bad)  
 4cf:	40 00 00             	add    %al,(%rax)
 4d2:	00 00                	add    %al,(%rax)
 4d4:	00 01                	add    %al,(%rcx)
 4d6:	00 55 c5             	add    %dl,-0x3b(%rbp)
 4d9:	0e                   	(bad)  
 4da:	40 00 00             	add    %al,(%rax)
 4dd:	00 00                	add    %al,(%rax)
 4df:	00 ca                	add    %cl,%dl
 4e1:	0e                   	(bad)  
 4e2:	40 00 00             	add    %al,(%rax)
 4e5:	00 00                	add    %al,(%rax)
 4e7:	00 04 00             	add    %al,(%rax,%rax,1)
 4ea:	f3 01 55 9f          	repz add %edx,-0x61(%rbp)
	...
 4fe:	6d                   	insl   (%dx),%es:(%rdi)
 4ff:	0e                   	(bad)  
 500:	40 00 00             	add    %al,(%rax)
 503:	00 00                	add    %al,(%rax)
 505:	00 79 0e             	add    %bh,0xe(%rcx)
 508:	40 00 00             	add    %al,(%rax)
 50b:	00 00                	add    %al,(%rax)
 50d:	00 01                	add    %al,(%rcx)
 50f:	00 55 8a             	add    %dl,-0x76(%rbp)
 512:	0e                   	(bad)  
 513:	40 00 00             	add    %al,(%rax)
 516:	00 00                	add    %al,(%rax)
 518:	00 99 0e 40 00 00    	add    %bl,0x400e(%rcx)
 51e:	00 00                	add    %al,(%rax)
 520:	00 01                	add    %al,(%rcx)
 522:	00 55 99             	add    %dl,-0x67(%rbp)
 525:	0e                   	(bad)  
 526:	40 00 00             	add    %al,(%rax)
 529:	00 00                	add    %al,(%rax)
 52b:	00 9d 0e 40 00 00    	add    %bl,0x400e(%rbp)
 531:	00 00                	add    %al,(%rax)
 533:	00 01                	add    %al,(%rcx)
 535:	00 54 9d 0e          	add    %dl,0xe(%rbp,%rbx,4)
 539:	40 00 00             	add    %al,(%rax)
 53c:	00 00                	add    %al,(%rax)
 53e:	00 9e 0e 40 00 00    	add    %bl,0x400e(%rsi)
 544:	00 00                	add    %al,(%rax)
 546:	00 04 00             	add    %al,(%rax,%rax,1)
 549:	f3 01 55 9f          	repz add %edx,-0x61(%rbp)
	...
 55d:	f3 0e                	repz (bad) 
 55f:	40 00 00             	add    %al,(%rax)
 562:	00 00                	add    %al,(%rax)
 564:	00 24 0f             	add    %ah,(%rdi,%rcx,1)
 567:	40 00 00             	add    %al,(%rax)
 56a:	00 00                	add    %al,(%rax)
 56c:	00 01                	add    %al,(%rcx)
 56e:	00 50 24             	add    %dl,0x24(%rax)
 571:	0f 40 00             	cmovo  (%rax),%eax
 574:	00 00                	add    %al,(%rax)
 576:	00 00                	add    %al,(%rax)
 578:	28 0f                	sub    %cl,(%rdi)
 57a:	40 00 00             	add    %al,(%rax)
 57d:	00 00                	add    %al,(%rax)
 57f:	00 01                	add    %al,(%rcx)
 581:	00 54 2f 0f          	add    %dl,0xf(%rdi,%rbp,1)
 585:	40 00 00             	add    %al,(%rax)
 588:	00 00                	add    %al,(%rax)
 58a:	00 39                	add    %bh,(%rcx)
 58c:	0f 40 00             	cmovo  (%rax),%eax
 58f:	00 00                	add    %al,(%rax)
 591:	00 00                	add    %al,(%rax)
 593:	01 00                	add    %eax,(%rax)
 595:	50                   	push   %rax
 596:	40 0f 40 00          	rex cmovo (%rax),%eax
 59a:	00 00                	add    %al,(%rax)
 59c:	00 00                	add    %al,(%rax)
 59e:	52                   	push   %rdx
 59f:	0f 40 00             	cmovo  (%rax),%eax
 5a2:	00 00                	add    %al,(%rax)
 5a4:	00 00                	add    %al,(%rax)
 5a6:	01 00                	add    %eax,(%rax)
 5a8:	50                   	push   %rax
 5a9:	52                   	push   %rdx
 5aa:	0f 40 00             	cmovo  (%rax),%eax
 5ad:	00 00                	add    %al,(%rax)
 5af:	00 00                	add    %al,(%rax)
 5b1:	5b                   	pop    %rbx
 5b2:	0f 40 00             	cmovo  (%rax),%eax
 5b5:	00 00                	add    %al,(%rax)
 5b7:	00 00                	add    %al,(%rax)
 5b9:	01 00                	add    %eax,(%rax)
 5bb:	54                   	push   %rsp
	...
 5cc:	4b 0f 40 00          	rex.WXB cmovo (%r8),%rax
 5d0:	00 00                	add    %al,(%rax)
 5d2:	00 00                	add    %al,(%rax)
 5d4:	4d 0f 40 00          	cmovo  (%r8),%r8
 5d8:	00 00                	add    %al,(%rax)
 5da:	00 00                	add    %al,(%rax)
 5dc:	07                   	(bad)  
 5dd:	00 77 0f             	add    %dh,0xf(%rdi)
 5e0:	34 25                	xor    $0x25,%al
 5e2:	34 24                	xor    $0x24,%al
 5e4:	9f                   	lahf   
	...
 5f5:	f9                   	stc    
 5f6:	0e                   	(bad)  
 5f7:	40 00 00             	add    %al,(%rax)
 5fa:	00 00                	add    %al,(%rax)
 5fc:	00 40 0f             	add    %al,0xf(%rax)
 5ff:	40 00 00             	add    %al,(%rax)
 602:	00 00                	add    %al,(%rax)
 604:	00 02                	add    %al,(%rdx)
 606:	00 33                	add    %dh,(%rbx)
 608:	9f                   	lahf   
 609:	4d 0f 40 00          	cmovo  (%r8),%r8
 60d:	00 00                	add    %al,(%rax)
 60f:	00 00                	add    %al,(%rax)
 611:	7f 0f                	jg     622 <_init-0x40018e>
 613:	40 00 00             	add    %al,(%rax)
 616:	00 00                	add    %al,(%rax)
 618:	00 02                	add    %al,(%rdx)
 61a:	00 33                	add    %dh,(%rbx)
 61c:	9f                   	lahf   
	...
 62d:	80 0f 40             	orb    $0x40,(%rdi)
 630:	00 00                	add    %al,(%rax)
 632:	00 00                	add    %al,(%rax)
 634:	00 ab 0f 40 00 00    	add    %ch,0x400f(%rbx)
 63a:	00 00                	add    %al,(%rax)
 63c:	00 01                	add    %al,(%rcx)
 63e:	00 55 ab             	add    %dl,-0x55(%rbp)
 641:	0f 40 00             	cmovo  (%rax),%eax
 644:	00 00                	add    %al,(%rax)
 646:	00 00                	add    %al,(%rax)
 648:	1e                   	(bad)  
 649:	10 40 00             	adc    %al,0x0(%rax)
 64c:	00 00                	add    %al,(%rax)
 64e:	00 00                	add    %al,(%rax)
 650:	04 00                	add    $0x0,%al
 652:	f3 01 55 9f          	repz add %edx,-0x61(%rbp)
	...
 666:	89 0f                	mov    %ecx,(%rdi)
 668:	40 00 00             	add    %al,(%rax)
 66b:	00 00                	add    %al,(%rax)
 66d:	00 98 0f 40 00 00    	add    %bl,0x400f(%rax)
 673:	00 00                	add    %al,(%rax)
 675:	00 0b                	add    %cl,(%rbx)
 677:	00 91 b0 7f 0a f8    	add    %dl,-0x7f58050(%rcx)
 67d:	3f                   	(bad)  
 67e:	1a 75 00             	sbb    0x0(%rbp),%dh
 681:	22 9f 98 0f 40 00    	and    0x400f98(%rdi),%bl
 687:	00 00                	add    %al,(%rax)
 689:	00 00                	add    %al,(%rax)
 68b:	9f                   	lahf   
 68c:	0f 40 00             	cmovo  (%rax),%eax
 68f:	00 00                	add    %al,(%rax)
 691:	00 00                	add    %al,(%rax)
 693:	01 00                	add    %eax,(%rax)
 695:	50                   	push   %rax
 696:	9f                   	lahf   
 697:	0f 40 00             	cmovo  (%rax),%eax
 69a:	00 00                	add    %al,(%rax)
 69c:	00 00                	add    %al,(%rax)
 69e:	b3 0f                	mov    $0xf,%bl
 6a0:	40 00 00             	add    %al,(%rax)
 6a3:	00 00                	add    %al,(%rax)
 6a5:	00 01                	add    %al,(%rcx)
 6a7:	00 51 b3             	add    %dl,-0x4d(%rcx)
 6aa:	0f 40 00             	cmovo  (%rax),%eax
 6ad:	00 00                	add    %al,(%rax)
 6af:	00 00                	add    %al,(%rax)
 6b1:	1e                   	(bad)  
 6b2:	10 40 00             	adc    %al,0x0(%rax)
 6b5:	00 00                	add    %al,(%rax)
 6b7:	00 00                	add    %al,(%rax)
 6b9:	0c 00                	or     $0x0,%al
 6bb:	91                   	xchg   %eax,%ecx
 6bc:	b0 7f                	mov    $0x7f,%al
 6be:	0a f8                	or     %al,%bh
 6c0:	3f                   	(bad)  
 6c1:	1a f3                	sbb    %bl,%dh
 6c3:	01 55 22             	add    %edx,0x22(%rbp)
 6c6:	9f                   	lahf   
	...
 6d7:	af                   	scas   %es:(%rdi),%eax
 6d8:	0f 40 00             	cmovo  (%rax),%eax
 6db:	00 00                	add    %al,(%rax)
 6dd:	00 00                	add    %al,(%rax)
 6df:	b3 0f                	mov    $0xf,%bl
 6e1:	40 00 00             	add    %al,(%rax)
 6e4:	00 00                	add    %al,(%rax)
 6e6:	00 01                	add    %al,(%rcx)
 6e8:	00 55 b3             	add    %dl,-0x4d(%rbp)
 6eb:	0f 40 00             	cmovo  (%rax),%eax
 6ee:	00 00                	add    %al,(%rax)
 6f0:	00 00                	add    %al,(%rax)
 6f2:	e8 0f 40 00 00       	callq  4706 <_init-0x3fc0aa>
 6f7:	00 00                	add    %al,(%rax)
 6f9:	00 06                	add    %al,(%rsi)
 6fb:	00 77 0f             	add    %dh,0xf(%rdi)
 6fe:	09 f0                	or     %esi,%eax
 700:	1a 9f e9 0f 40 00    	sbb    0x400fe9(%rdi),%bl
 706:	00 00                	add    %al,(%rax)
 708:	00 00                	add    %al,(%rax)
 70a:	05 10 40 00 00       	add    $0x4010,%eax
 70f:	00 00                	add    %al,(%rax)
 711:	00 06                	add    %al,(%rsi)
 713:	00 77 0f             	add    %dh,0xf(%rdi)
 716:	09 f0                	or     %esi,%eax
 718:	1a 9f 06 10 40 00    	sbb    0x401006(%rdi),%bl
 71e:	00 00                	add    %al,(%rax)
 720:	00 00                	add    %al,(%rax)
 722:	1e                   	(bad)  
 723:	10 40 00             	adc    %al,0x0(%rax)
 726:	00 00                	add    %al,(%rax)
 728:	00 00                	add    %al,(%rax)
 72a:	06                   	(bad)  
 72b:	00 77 0f             	add    %dh,0xf(%rdi)
 72e:	09 f0                	or     %esi,%eax
 730:	1a 9f 00 00 00 00    	sbb    0x0(%rdi),%bl
	...
 742:	20 10                	and    %dl,(%rax)
 744:	40 00 00             	add    %al,(%rax)
 747:	00 00                	add    %al,(%rax)
 749:	00 43 10             	add    %al,0x10(%rbx)
 74c:	40 00 00             	add    %al,(%rax)
 74f:	00 00                	add    %al,(%rax)
 751:	00 01                	add    %al,(%rcx)
 753:	00 55 43             	add    %dl,0x43(%rbp)
 756:	10 40 00             	adc    %al,0x0(%rax)
 759:	00 00                	add    %al,(%rax)
 75b:	00 00                	add    %al,(%rax)
 75d:	51                   	push   %rcx
 75e:	10 40 00             	adc    %al,0x0(%rax)
 761:	00 00                	add    %al,(%rax)
 763:	00 00                	add    %al,(%rax)
 765:	04 00                	add    $0x0,%al
 767:	f3 01 55 9f          	repz add %edx,-0x61(%rbp)
 76b:	51                   	push   %rcx
 76c:	10 40 00             	adc    %al,0x0(%rax)
 76f:	00 00                	add    %al,(%rax)
 771:	00 00                	add    %al,(%rax)
 773:	56                   	push   %rsi
 774:	10 40 00             	adc    %al,0x0(%rax)
 777:	00 00                	add    %al,(%rax)
 779:	00 00                	add    %al,(%rax)
 77b:	01 00                	add    %eax,(%rax)
 77d:	55                   	push   %rbp
 77e:	56                   	push   %rsi
 77f:	10 40 00             	adc    %al,0x0(%rax)
 782:	00 00                	add    %al,(%rax)
 784:	00 00                	add    %al,(%rax)
 786:	69 10 40 00 00 00    	imul   $0x40,(%rax),%edx
 78c:	00 00                	add    %al,(%rax)
 78e:	04 00                	add    $0x0,%al
 790:	f3 01 55 9f          	repz add %edx,-0x61(%rbp)
	...
 7a4:	70 10                	jo     7b6 <_init-0x3ffffa>
 7a6:	40 00 00             	add    %al,(%rax)
 7a9:	00 00                	add    %al,(%rax)
 7ab:	00 91 10 40 00 00    	add    %dl,0x4010(%rcx)
 7b1:	00 00                	add    %al,(%rax)
 7b3:	00 01                	add    %al,(%rcx)
 7b5:	00 55 91             	add    %dl,-0x6f(%rbp)
 7b8:	10 40 00             	adc    %al,0x0(%rax)
 7bb:	00 00                	add    %al,(%rax)
 7bd:	00 00                	add    %al,(%rax)
 7bf:	9f                   	lahf   
 7c0:	10 40 00             	adc    %al,0x0(%rax)
 7c3:	00 00                	add    %al,(%rax)
 7c5:	00 00                	add    %al,(%rax)
 7c7:	04 00                	add    $0x0,%al
 7c9:	f3 01 55 9f          	repz add %edx,-0x61(%rbp)
 7cd:	9f                   	lahf   
 7ce:	10 40 00             	adc    %al,0x0(%rax)
 7d1:	00 00                	add    %al,(%rax)
 7d3:	00 00                	add    %al,(%rax)
 7d5:	a4                   	movsb  %ds:(%rsi),%es:(%rdi)
 7d6:	10 40 00             	adc    %al,0x0(%rax)
 7d9:	00 00                	add    %al,(%rax)
 7db:	00 00                	add    %al,(%rax)
 7dd:	01 00                	add    %eax,(%rax)
 7df:	55                   	push   %rbp
 7e0:	a4                   	movsb  %ds:(%rsi),%es:(%rdi)
 7e1:	10 40 00             	adc    %al,0x0(%rax)
 7e4:	00 00                	add    %al,(%rax)
 7e6:	00 00                	add    %al,(%rax)
 7e8:	b7 10                	mov    $0x10,%bh
 7ea:	40 00 00             	add    %al,(%rax)
 7ed:	00 00                	add    %al,(%rax)
 7ef:	00 04 00             	add    %al,(%rax,%rax,1)
 7f2:	f3 01 55 9f          	repz add %edx,-0x61(%rbp)
	...
 806:	70 10                	jo     818 <_init-0x3fff98>
 808:	40 00 00             	add    %al,(%rax)
 80b:	00 00                	add    %al,(%rax)
 80d:	00 83 10 40 00 00    	add    %al,0x4010(%rbx)
 813:	00 00                	add    %al,(%rax)
 815:	00 01                	add    %al,(%rcx)
 817:	00 54 83 10          	add    %dl,0x10(%rbx,%rax,4)
 81b:	40 00 00             	add    %al,(%rax)
 81e:	00 00                	add    %al,(%rax)
 820:	00 b7 10 40 00 00    	add    %dh,0x4010(%rdi)
 826:	00 00                	add    %al,(%rax)
 828:	00 04 00             	add    %al,(%rax,%rax,1)
 82b:	f3 01 54 9f 00       	repz add %edx,0x0(%rdi,%rbx,4)
	...
 83c:	00 00                	add    %al,(%rax)
 83e:	00 70 10             	add    %dh,0x10(%rax)
 841:	40 00 00             	add    %al,(%rax)
 844:	00 00                	add    %al,(%rax)
 846:	00 97 10 40 00 00    	add    %dl,0x4010(%rdi)
 84c:	00 00                	add    %al,(%rax)
 84e:	00 01                	add    %al,(%rcx)
 850:	00 51 97             	add    %dl,-0x69(%rcx)
 853:	10 40 00             	adc    %al,0x0(%rax)
 856:	00 00                	add    %al,(%rax)
 858:	00 00                	add    %al,(%rax)
 85a:	9f                   	lahf   
 85b:	10 40 00             	adc    %al,0x0(%rax)
 85e:	00 00                	add    %al,(%rax)
 860:	00 00                	add    %al,(%rax)
 862:	04 00                	add    $0x0,%al
 864:	f3 01 51 9f          	repz add %edx,-0x61(%rcx)
 868:	9f                   	lahf   
 869:	10 40 00             	adc    %al,0x0(%rax)
 86c:	00 00                	add    %al,(%rax)
 86e:	00 00                	add    %al,(%rax)
 870:	aa                   	stos   %al,%es:(%rdi)
 871:	10 40 00             	adc    %al,0x0(%rax)
 874:	00 00                	add    %al,(%rax)
 876:	00 00                	add    %al,(%rax)
 878:	01 00                	add    %eax,(%rax)
 87a:	51                   	push   %rcx
 87b:	aa                   	stos   %al,%es:(%rdi)
 87c:	10 40 00             	adc    %al,0x0(%rax)
 87f:	00 00                	add    %al,(%rax)
 881:	00 00                	add    %al,(%rax)
 883:	b7 10                	mov    $0x10,%bh
 885:	40 00 00             	add    %al,(%rax)
 888:	00 00                	add    %al,(%rax)
 88a:	00 04 00             	add    %al,(%rax,%rax,1)
 88d:	f3 01 51 9f          	repz add %edx,-0x61(%rcx)
	...
 8a1:	70 10                	jo     8b3 <_init-0x3ffefd>
 8a3:	40 00 00             	add    %al,(%rax)
 8a6:	00 00                	add    %al,(%rax)
 8a8:	00 97 10 40 00 00    	add    %dl,0x4010(%rdi)
 8ae:	00 00                	add    %al,(%rax)
 8b0:	00 01                	add    %al,(%rcx)
 8b2:	00 52 97             	add    %dl,-0x69(%rdx)
 8b5:	10 40 00             	adc    %al,0x0(%rax)
 8b8:	00 00                	add    %al,(%rax)
 8ba:	00 00                	add    %al,(%rax)
 8bc:	9f                   	lahf   
 8bd:	10 40 00             	adc    %al,0x0(%rax)
 8c0:	00 00                	add    %al,(%rax)
 8c2:	00 00                	add    %al,(%rax)
 8c4:	04 00                	add    $0x0,%al
 8c6:	f3 01 52 9f          	repz add %edx,-0x61(%rdx)
 8ca:	9f                   	lahf   
 8cb:	10 40 00             	adc    %al,0x0(%rax)
 8ce:	00 00                	add    %al,(%rax)
 8d0:	00 00                	add    %al,(%rax)
 8d2:	aa                   	stos   %al,%es:(%rdi)
 8d3:	10 40 00             	adc    %al,0x0(%rax)
 8d6:	00 00                	add    %al,(%rax)
 8d8:	00 00                	add    %al,(%rax)
 8da:	01 00                	add    %eax,(%rax)
 8dc:	52                   	push   %rdx
 8dd:	aa                   	stos   %al,%es:(%rdi)
 8de:	10 40 00             	adc    %al,0x0(%rax)
 8e1:	00 00                	add    %al,(%rax)
 8e3:	00 00                	add    %al,(%rax)
 8e5:	b7 10                	mov    $0x10,%bh
 8e7:	40 00 00             	add    %al,(%rax)
 8ea:	00 00                	add    %al,(%rax)
 8ec:	00 04 00             	add    %al,(%rax,%rax,1)
 8ef:	f3 01 52 9f          	repz add %edx,-0x61(%rdx)
	...
 903:	70 10                	jo     915 <_init-0x3ffe9b>
 905:	40 00 00             	add    %al,(%rax)
 908:	00 00                	add    %al,(%rax)
 90a:	00 97 10 40 00 00    	add    %dl,0x4010(%rdi)
 910:	00 00                	add    %al,(%rax)
 912:	00 01                	add    %al,(%rcx)
 914:	00 58 97             	add    %bl,-0x69(%rax)
 917:	10 40 00             	adc    %al,0x0(%rax)
 91a:	00 00                	add    %al,(%rax)
 91c:	00 00                	add    %al,(%rax)
 91e:	9f                   	lahf   
 91f:	10 40 00             	adc    %al,0x0(%rax)
 922:	00 00                	add    %al,(%rax)
 924:	00 00                	add    %al,(%rax)
 926:	04 00                	add    $0x0,%al
 928:	f3 01 58 9f          	repz add %ebx,-0x61(%rax)
 92c:	9f                   	lahf   
 92d:	10 40 00             	adc    %al,0x0(%rax)
 930:	00 00                	add    %al,(%rax)
 932:	00 00                	add    %al,(%rax)
 934:	aa                   	stos   %al,%es:(%rdi)
 935:	10 40 00             	adc    %al,0x0(%rax)
 938:	00 00                	add    %al,(%rax)
 93a:	00 00                	add    %al,(%rax)
 93c:	01 00                	add    %eax,(%rax)
 93e:	58                   	pop    %rax
 93f:	aa                   	stos   %al,%es:(%rdi)
 940:	10 40 00             	adc    %al,0x0(%rax)
 943:	00 00                	add    %al,(%rax)
 945:	00 00                	add    %al,(%rax)
 947:	b7 10                	mov    $0x10,%bh
 949:	40 00 00             	add    %al,(%rax)
 94c:	00 00                	add    %al,(%rax)
 94e:	00 04 00             	add    %al,(%rax,%rax,1)
 951:	f3 01 58 9f          	repz add %ebx,-0x61(%rax)
	...
 965:	70 10                	jo     977 <_init-0x3ffe39>
 967:	40 00 00             	add    %al,(%rax)
 96a:	00 00                	add    %al,(%rax)
 96c:	00 97 10 40 00 00    	add    %dl,0x4010(%rdi)
 972:	00 00                	add    %al,(%rax)
 974:	00 01                	add    %al,(%rcx)
 976:	00 59 97             	add    %bl,-0x69(%rcx)
 979:	10 40 00             	adc    %al,0x0(%rax)
 97c:	00 00                	add    %al,(%rax)
 97e:	00 00                	add    %al,(%rax)
 980:	9f                   	lahf   
 981:	10 40 00             	adc    %al,0x0(%rax)
 984:	00 00                	add    %al,(%rax)
 986:	00 00                	add    %al,(%rax)
 988:	04 00                	add    $0x0,%al
 98a:	f3 01 59 9f          	repz add %ebx,-0x61(%rcx)
 98e:	9f                   	lahf   
 98f:	10 40 00             	adc    %al,0x0(%rax)
 992:	00 00                	add    %al,(%rax)
 994:	00 00                	add    %al,(%rax)
 996:	aa                   	stos   %al,%es:(%rdi)
 997:	10 40 00             	adc    %al,0x0(%rax)
 99a:	00 00                	add    %al,(%rax)
 99c:	00 00                	add    %al,(%rax)
 99e:	01 00                	add    %eax,(%rax)
 9a0:	59                   	pop    %rcx
 9a1:	aa                   	stos   %al,%es:(%rdi)
 9a2:	10 40 00             	adc    %al,0x0(%rax)
 9a5:	00 00                	add    %al,(%rax)
 9a7:	00 00                	add    %al,(%rax)
 9a9:	b7 10                	mov    $0x10,%bh
 9ab:	40 00 00             	add    %al,(%rax)
 9ae:	00 00                	add    %al,(%rax)
 9b0:	00 04 00             	add    %al,(%rax,%rax,1)
 9b3:	f3 01 59 9f          	repz add %ebx,-0x61(%rcx)
	...
 9c7:	00 11                	add    %dl,(%rcx)
 9c9:	40 00 00             	add    %al,(%rax)
 9cc:	00 00                	add    %al,(%rax)
 9ce:	00 0d 11 40 00 00    	add    %cl,0x4011(%rip)        # 49e5 <_init-0x3fbdcb>
 9d4:	00 00                	add    %al,(%rax)
 9d6:	00 01                	add    %al,(%rcx)
 9d8:	00 55 0d             	add    %dl,0xd(%rbp)
 9db:	11 40 00             	adc    %eax,0x0(%rax)
 9de:	00 00                	add    %al,(%rax)
 9e0:	00 00                	add    %al,(%rax)
 9e2:	13 11                	adc    (%rcx),%edx
 9e4:	40 00 00             	add    %al,(%rax)
 9e7:	00 00                	add    %al,(%rax)
 9e9:	00 04 00             	add    %al,(%rax,%rax,1)
 9ec:	f3 01 55 9f          	repz add %edx,-0x61(%rbp)
	...
 a00:	00 11                	add    %dl,(%rcx)
 a02:	40 00 00             	add    %al,(%rax)
 a05:	00 00                	add    %al,(%rax)
 a07:	00 0d 11 40 00 00    	add    %cl,0x4011(%rip)        # 4a1e <_init-0x3fbd92>
 a0d:	00 00                	add    %al,(%rax)
 a0f:	00 01                	add    %al,(%rcx)
 a11:	00 54 0d 11          	add    %dl,0x11(%rbp,%rcx,1)
 a15:	40 00 00             	add    %al,(%rax)
 a18:	00 00                	add    %al,(%rax)
 a1a:	00 13                	add    %dl,(%rbx)
 a1c:	11 40 00             	adc    %eax,0x0(%rax)
 a1f:	00 00                	add    %al,(%rax)
 a21:	00 00                	add    %al,(%rax)
 a23:	04 00                	add    $0x0,%al
 a25:	f3 01 54 9f 00       	repz add %edx,0x0(%rdi,%rbx,4)
	...
 a36:	00 00                	add    %al,(%rax)
 a38:	00 07                	add    %al,(%rdi)
 a3a:	11 40 00             	adc    %eax,0x0(%rax)
 a3d:	00 00                	add    %al,(%rax)
 a3f:	00 00                	add    %al,(%rax)
 a41:	0c 11                	or     $0x11,%al
 a43:	40 00 00             	add    %al,(%rax)
 a46:	00 00                	add    %al,(%rax)
 a48:	00 01                	add    %al,(%rcx)
 a4a:	00 50 0c             	add    %dl,0xc(%rax)
 a4d:	11 40 00             	adc    %eax,0x0(%rax)
 a50:	00 00                	add    %al,(%rax)
 a52:	00 00                	add    %al,(%rax)
 a54:	12 11                	adc    (%rcx),%dl
 a56:	40 00 00             	add    %al,(%rax)
 a59:	00 00                	add    %al,(%rax)
 a5b:	00 01                	add    %al,(%rcx)
 a5d:	00 53 00             	add    %dl,0x0(%rbx)
	...
 a6c:	00 00                	add    %al,(%rax)
 a6e:	00 f0                	add    %dh,%al
 a70:	08 40 00             	or     %al,0x0(%rax)
 a73:	00 00                	add    %al,(%rax)
 a75:	00 00                	add    %al,(%rax)
 a77:	fc                   	cld    
 a78:	08 40 00             	or     %al,0x0(%rax)
 a7b:	00 00                	add    %al,(%rax)
 a7d:	00 00                	add    %al,(%rax)
 a7f:	01 00                	add    %eax,(%rax)
 a81:	55                   	push   %rbp
 a82:	fc                   	cld    
 a83:	08 40 00             	or     %al,0x0(%rax)
 a86:	00 00                	add    %al,(%rax)
 a88:	00 00                	add    %al,(%rax)
 a8a:	5b                   	pop    %rbx
 a8b:	0a 40 00             	or     0x0(%rax),%al
 a8e:	00 00                	add    %al,(%rax)
 a90:	00 00                	add    %al,(%rax)
 a92:	01 00                	add    %eax,(%rax)
 a94:	56                   	push   %rsi
 a95:	5b                   	pop    %rbx
 a96:	0a 40 00             	or     0x0(%rax),%al
 a99:	00 00                	add    %al,(%rax)
 a9b:	00 00                	add    %al,(%rax)
 a9d:	60                   	(bad)  
 a9e:	0a 40 00             	or     0x0(%rax),%al
 aa1:	00 00                	add    %al,(%rax)
 aa3:	00 00                	add    %al,(%rax)
 aa5:	04 00                	add    $0x0,%al
 aa7:	f3 01 55 9f          	repz add %edx,-0x61(%rbp)
 aab:	60                   	(bad)  
 aac:	0a 40 00             	or     0x0(%rax),%al
 aaf:	00 00                	add    %al,(%rax)
 ab1:	00 00                	add    %al,(%rax)
 ab3:	80 0a 40             	orb    $0x40,(%rdx)
 ab6:	00 00                	add    %al,(%rax)
 ab8:	00 00                	add    %al,(%rax)
 aba:	00 01                	add    %al,(%rcx)
 abc:	00 56 00             	add    %dl,0x0(%rsi)
	...
 acb:	00 00                	add    %al,(%rax)
 acd:	00 f0                	add    %dh,%al
 acf:	08 40 00             	or     %al,0x0(%rax)
 ad2:	00 00                	add    %al,(%rax)
 ad4:	00 00                	add    %al,(%rax)
 ad6:	05 09 40 00 00       	add    $0x4009,%eax
 adb:	00 00                	add    %al,(%rax)
 add:	00 01                	add    %al,(%rcx)
 adf:	00 54 05 09          	add    %dl,0x9(%rbp,%rax,1)
 ae3:	40 00 00             	add    %al,(%rax)
 ae6:	00 00                	add    %al,(%rax)
 ae8:	00 46 0a             	add    %al,0xa(%rsi)
 aeb:	40 00 00             	add    %al,(%rax)
 aee:	00 00                	add    %al,(%rax)
 af0:	00 01                	add    %al,(%rcx)
 af2:	00 53 46             	add    %dl,0x46(%rbx)
 af5:	0a 40 00             	or     0x0(%rax),%al
 af8:	00 00                	add    %al,(%rax)
 afa:	00 00                	add    %al,(%rax)
 afc:	60                   	(bad)  
 afd:	0a 40 00             	or     0x0(%rax),%al
 b00:	00 00                	add    %al,(%rax)
 b02:	00 00                	add    %al,(%rax)
 b04:	04 00                	add    $0x0,%al
 b06:	f3 01 54 9f 60       	repz add %edx,0x60(%rdi,%rbx,4)
 b0b:	0a 40 00             	or     0x0(%rax),%al
 b0e:	00 00                	add    %al,(%rax)
 b10:	00 00                	add    %al,(%rax)
 b12:	80 0a 40             	orb    $0x40,(%rdx)
 b15:	00 00                	add    %al,(%rax)
 b17:	00 00                	add    %al,(%rax)
 b19:	00 01                	add    %al,(%rcx)
 b1b:	00 53 00             	add    %dl,0x0(%rbx)
	...
 b2a:	00 00                	add    %al,(%rax)
 b2c:	00 f0                	add    %dh,%al
 b2e:	08 40 00             	or     %al,0x0(%rax)
 b31:	00 00                	add    %al,(%rax)
 b33:	00 00                	add    %al,(%rax)
 b35:	46 0a 40 00          	rex.RX or 0x0(%rax),%r8b
 b39:	00 00                	add    %al,(%rax)
 b3b:	00 00                	add    %al,(%rax)
 b3d:	02 00                	add    (%rax),%al
 b3f:	30 9f 46 0a 40 00    	xor    %bl,0x400a46(%rdi)
 b45:	00 00                	add    %al,(%rax)
 b47:	00 00                	add    %al,(%rax)
 b49:	4a 0a 40 00          	rex.WX or 0x0(%rax),%al
 b4d:	00 00                	add    %al,(%rax)
 b4f:	00 00                	add    %al,(%rax)
 b51:	07                   	(bad)  
 b52:	00 70 00             	add    %dh,0x0(%rax)
 b55:	0a f8                	or     %al,%bh
 b57:	0f 1a 9f 4a 0a 40 00 	nopl   0x400a4a(%rdi)
 b5e:	00 00                	add    %al,(%rax)
 b60:	00 00                	add    %al,(%rax)
 b62:	5a                   	pop    %rdx
 b63:	0a 40 00             	or     0x0(%rax),%al
 b66:	00 00                	add    %al,(%rax)
 b68:	00 00                	add    %al,(%rax)
 b6a:	07                   	(bad)  
 b6b:	00 73 00             	add    %dh,0x0(%rbx)
 b6e:	0a f8                	or     %al,%bh
 b70:	0f 1a 9f 60 0a 40 00 	nopl   0x400a60(%rdi)
 b77:	00 00                	add    %al,(%rax)
 b79:	00 00                	add    %al,(%rax)
 b7b:	80 0a 40             	orb    $0x40,(%rdx)
 b7e:	00 00                	add    %al,(%rax)
 b80:	00 00                	add    %al,(%rax)
 b82:	00 02                	add    %al,(%rdx)
 b84:	00 30                	add    %dh,(%rax)
 b86:	9f                   	lahf   
	...
 b97:	46 0a 40 00          	rex.RX or 0x0(%rax),%r8b
 b9b:	00 00                	add    %al,(%rax)
 b9d:	00 00                	add    %al,(%rax)
 b9f:	59                   	pop    %rcx
 ba0:	0a 40 00             	or     0x0(%rax),%al
 ba3:	00 00                	add    %al,(%rax)
 ba5:	00 00                	add    %al,(%rax)
 ba7:	02 00                	add    (%rax),%al
 ba9:	30 9f 59 0a 40 00    	xor    %bl,0x400a59(%rdi)
 baf:	00 00                	add    %al,(%rax)
 bb1:	00 00                	add    %al,(%rax)
 bb3:	60                   	(bad)  
 bb4:	0a 40 00             	or     0x0(%rax),%al
 bb7:	00 00                	add    %al,(%rax)
 bb9:	00 00                	add    %al,(%rax)
 bbb:	02 00                	add    (%rax),%al
 bbd:	31 9f 00 00 00 00    	xor    %ebx,0x0(%rdi)
	...
 bcf:	90                   	nop
 bd0:	09 40 00             	or     %eax,0x0(%rax)
 bd3:	00 00                	add    %al,(%rax)
 bd5:	00 00                	add    %al,(%rax)
 bd7:	a5                   	movsl  %ds:(%rsi),%es:(%rdi)
 bd8:	09 40 00             	or     %eax,0x0(%rax)
 bdb:	00 00                	add    %al,(%rax)
 bdd:	00 00                	add    %al,(%rax)
 bdf:	01 00                	add    %eax,(%rax)
 be1:	50                   	push   %rax
 be2:	fe 09                	decb   (%rcx)
 be4:	40 00 00             	add    %al,(%rax)
 be7:	00 00                	add    %al,(%rax)
 be9:	00 37                	add    %dh,(%rdi)
 beb:	0a 40 00             	or     0x0(%rax),%al
 bee:	00 00                	add    %al,(%rax)
 bf0:	00 00                	add    %al,(%rax)
 bf2:	01 00                	add    %eax,(%rax)
 bf4:	50                   	push   %rax
 bf5:	71 0a                	jno    c01 <_init-0x3ffbaf>
 bf7:	40 00 00             	add    %al,(%rax)
 bfa:	00 00                	add    %al,(%rax)
 bfc:	00 7a 0a             	add    %bh,0xa(%rdx)
 bff:	40 00 00             	add    %al,(%rax)
 c02:	00 00                	add    %al,(%rax)
 c04:	00 01                	add    %al,(%rcx)
 c06:	00 50 00             	add    %dl,0x0(%rax)
	...
 c15:	00 00                	add    %al,(%rax)
 c17:	00 0a                	add    %cl,(%rdx)
 c19:	09 40 00             	or     %eax,0x0(%rax)
 c1c:	00 00                	add    %al,(%rax)
 c1e:	00 00                	add    %al,(%rax)
 c20:	0d 09 40 00 00       	or     $0x4009,%eax
 c25:	00 00                	add    %al,(%rax)
 c27:	00 09                	add    %cl,(%rcx)
 c29:	00 70 00             	add    %dh,0x0(%rax)
 c2c:	08 20                	or     %ah,(%rax)
 c2e:	24 08                	and    $0x8,%al
 c30:	20 26                	and    %ah,(%rsi)
 c32:	9f                   	lahf   
 c33:	0d 09 40 00 00       	or     $0x4009,%eax
 c38:	00 00                	add    %al,(%rax)
 c3a:	00 31                	add    %dh,(%rcx)
 c3c:	09 40 00             	or     %eax,0x0(%rax)
 c3f:	00 00                	add    %al,(%rax)
 c41:	00 00                	add    %al,(%rax)
 c43:	01 00                	add    %eax,(%rax)
 c45:	5c                   	pop    %rsp
 c46:	31 09                	xor    %ecx,(%rcx)
 c48:	40 00 00             	add    %al,(%rax)
 c4b:	00 00                	add    %al,(%rax)
 c4d:	00 5f 0a             	add    %bl,0xa(%rdi)
 c50:	40 00 00             	add    %al,(%rax)
 c53:	00 00                	add    %al,(%rax)
 c55:	00 05 00 7c 80 81    	add    %al,-0x7e7f8400(%rip)        # ffffffff8180885b <_end+0xffffffff81205913>
 c5b:	7f 9f                	jg     bfc <_init-0x3ffbb4>
 c5d:	60                   	(bad)  
 c5e:	0a 40 00             	or     0x0(%rax),%al
 c61:	00 00                	add    %al,(%rax)
 c63:	00 00                	add    %al,(%rax)
 c65:	71 0a                	jno    c71 <_init-0x3ffb3f>
 c67:	40 00 00             	add    %al,(%rax)
 c6a:	00 00                	add    %al,(%rax)
 c6c:	00 01                	add    %al,(%rcx)
 c6e:	00 5c 71 0a          	add    %bl,0xa(%rcx,%rsi,2)
 c72:	40 00 00             	add    %al,(%rax)
 c75:	00 00                	add    %al,(%rax)
 c77:	00 80 0a 40 00 00    	add    %al,0x400a(%rax)
 c7d:	00 00                	add    %al,(%rax)
 c7f:	00 05 00 7c 80 81    	add    %al,-0x7e7f8400(%rip)        # ffffffff81808885 <_end+0xffffffff8120593d>
 c85:	7f 9f                	jg     c26 <_init-0x3ffb8a>
	...
 c97:	27                   	(bad)  
 c98:	09 40 00             	or     %eax,0x0(%rax)
 c9b:	00 00                	add    %al,(%rax)
 c9d:	00 00                	add    %al,(%rax)
 c9f:	60                   	(bad)  
 ca0:	0a 40 00             	or     0x0(%rax),%al
 ca3:	00 00                	add    %al,(%rax)
 ca5:	00 00                	add    %al,(%rax)
 ca7:	0a 00                	or     (%rax),%al
 ca9:	03 f0                	add    %eax,%esi
 cab:	10 40 00             	adc    %al,0x0(%rax)
 cae:	00 00                	add    %al,(%rax)
 cb0:	00 00                	add    %al,(%rax)
 cb2:	9f                   	lahf   
 cb3:	71 0a                	jno    cbf <_init-0x3ffaf1>
 cb5:	40 00 00             	add    %al,(%rax)
 cb8:	00 00                	add    %al,(%rax)
 cba:	00 80 0a 40 00 00    	add    %al,0x400a(%rax)
 cc0:	00 00                	add    %al,(%rax)
 cc2:	00 0a                	add    %cl,(%rdx)
 cc4:	00 03                	add    %al,(%rbx)
 cc6:	f0 10 40 00          	lock adc %al,0x0(%rax)
 cca:	00 00                	add    %al,(%rax)
 ccc:	00 00                	add    %al,(%rax)
 cce:	9f                   	lahf   
	...
 cdf:	2a 09                	sub    (%rcx),%cl
 ce1:	40 00 00             	add    %al,(%rax)
 ce4:	00 00                	add    %al,(%rax)
 ce6:	00 45 09             	add    %al,0x9(%rbp)
 ce9:	40 00 00             	add    %al,(%rax)
 cec:	00 00                	add    %al,(%rax)
 cee:	00 01                	add    %al,(%rcx)
 cf0:	00 50 00             	add    %dl,0x0(%rax)
	...

Disassembly of section .debug_ranges:

0000000000000000 <.debug_ranges>:
   0:	0a 0d 40 00 00 00    	or     0x40(%rip),%cl        # 46 <_init-0x40076a>
   6:	00 00                	add    %al,(%rax)
   8:	30 0d 40 00 00 00    	xor    %cl,0x40(%rip)        # 4e <_init-0x400762>
   e:	00 00                	add    %al,(%rax)
  10:	80 0d 40 00 00 00 00 	orb    $0x0,0x40(%rip)        # 57 <_init-0x400759>
  17:	00 9f 0d 40 00 00    	add    %bl,0x400d(%rdi)
	...
  2d:	00 00                	add    %al,(%rax)
  2f:	00 59 0d             	add    %bl,0xd(%rcx)
  32:	40 00 00             	add    %al,(%rax)
  35:	00 00                	add    %al,(%rax)
  37:	00 5f 0d             	add    %bl,0xd(%rdi)
  3a:	40 00 00             	add    %al,(%rax)
  3d:	00 00                	add    %al,(%rax)
  3f:	00 61 0d             	add    %ah,0xd(%rcx)
  42:	40 00 00             	add    %al,(%rax)
  45:	00 00                	add    %al,(%rax)
  47:	00 64 0d 40          	add    %ah,0x40(%rbp,%rcx,1)
  4b:	00 00                	add    %al,(%rax)
  4d:	00 00                	add    %al,(%rax)
  4f:	00 66 0d             	add    %ah,0xd(%rsi)
  52:	40 00 00             	add    %al,(%rax)
  55:	00 00                	add    %al,(%rax)
  57:	00 6f 0d             	add    %ch,0xd(%rdi)
  5a:	40 00 00             	add    %al,(%rax)
	...
  6d:	00 00                	add    %al,(%rax)
  6f:	00 6d 0e             	add    %ch,0xe(%rbp)
  72:	40 00 00             	add    %al,(%rax)
  75:	00 00                	add    %al,(%rax)
  77:	00 80 0e 40 00 00    	add    %al,0x400e(%rax)
  7d:	00 00                	add    %al,(%rax)
  7f:	00 90 0e 40 00 00    	add    %dl,0x400e(%rax)
  85:	00 00                	add    %al,(%rax)
  87:	00 a0 0e 40 00 00    	add    %ah,0x400e(%rax)
	...
  9d:	00 00                	add    %al,(%rax)
  9f:	00 27                	add    %ah,(%rdi)
  a1:	09 40 00             	or     %eax,0x0(%rax)
  a4:	00 00                	add    %al,(%rax)
  a6:	00 00                	add    %al,(%rax)
  a8:	2a 09                	sub    (%rcx),%cl
  aa:	40 00 00             	add    %al,(%rax)
  ad:	00 00                	add    %al,(%rax)
  af:	00 31                	add    %dh,(%rcx)
  b1:	09 40 00             	or     %eax,0x0(%rax)
  b4:	00 00                	add    %al,(%rax)
  b6:	00 00                	add    %al,(%rax)
  b8:	37                   	(bad)  
  b9:	09 40 00             	or     %eax,0x0(%rax)
	...
  d0:	90                   	nop
  d1:	0b 40 00             	or     0x0(%rax),%eax
  d4:	00 00                	add    %al,(%rax)
  d6:	00 00                	add    %al,(%rax)
  d8:	13 11                	adc    (%rcx),%edx
  da:	40 00 00             	add    %al,(%rax)
  dd:	00 00                	add    %al,(%rax)
  df:	00 f0                	add    %dh,%al
  e1:	08 40 00             	or     %al,0x0(%rax)
  e4:	00 00                	add    %al,(%rax)
  e6:	00 00                	add    %al,(%rax)
  e8:	80 0a 40             	orb    $0x40,(%rdx)
	...
