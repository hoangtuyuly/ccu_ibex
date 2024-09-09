
main.elf:     file format elf32-littleriscv


Disassembly of section .vectors:

00100000 <_vectors_start>:
	...
  100080:	0040006f          	j	100084 <_vectors_end>

Disassembly of section .text:

00100084 <reset_handler>:
  100084:	00000093          	li	ra,0
  100088:	8106                	mv	sp,ra
  10008a:	8186                	mv	gp,ra
  10008c:	8206                	mv	tp,ra
  10008e:	8286                	mv	t0,ra
  100090:	8306                	mv	t1,ra
  100092:	8386                	mv	t2,ra
  100094:	8406                	mv	s0,ra
  100096:	8486                	mv	s1,ra
  100098:	8506                	mv	a0,ra
  10009a:	8586                	mv	a1,ra
  10009c:	8606                	mv	a2,ra
  10009e:	8686                	mv	a3,ra
  1000a0:	8706                	mv	a4,ra
  1000a2:	8786                	mv	a5,ra
  1000a4:	8806                	mv	a6,ra
  1000a6:	8886                	mv	a7,ra
  1000a8:	8906                	mv	s2,ra
  1000aa:	8986                	mv	s3,ra
  1000ac:	8a06                	mv	s4,ra
  1000ae:	8a86                	mv	s5,ra
  1000b0:	8b06                	mv	s6,ra
  1000b2:	8b86                	mv	s7,ra
  1000b4:	8c06                	mv	s8,ra
  1000b6:	8c86                	mv	s9,ra
  1000b8:	8d06                	mv	s10,ra
  1000ba:	8d86                	mv	s11,ra
  1000bc:	8e06                	mv	t3,ra
  1000be:	8e86                	mv	t4,ra
  1000c0:	8f06                	mv	t5,ra
  1000c2:	8f86                	mv	t6,ra
  1000c4:	000c8117          	auipc	sp,0xc8
  1000c8:	f3c10113          	addi	sp,sp,-196 # 1c8000 <_stack_start>

001000cc <_start>:
  1000cc:	00000d17          	auipc	s10,0x0
  1000d0:	664d0d13          	addi	s10,s10,1636 # 100730 <_bss_end>
  1000d4:	00000d97          	auipc	s11,0x0
  1000d8:	65cd8d93          	addi	s11,s11,1628 # 100730 <_bss_end>
  1000dc:	01bd5763          	bge	s10,s11,1000ea <main_entry>

001000e0 <zero_loop>:
  1000e0:	000d2023          	sw	zero,0(s10)
  1000e4:	0d11                	addi	s10,s10,4
  1000e6:	ffaddde3          	bge	s11,s10,1000e0 <zero_loop>

001000ea <main_entry>:
  1000ea:	4501                	li	a0,0
  1000ec:	4581                	li	a1,0
  1000ee:	016000ef          	jal	100104 <main>
  1000f2:	000202b7          	lui	t0,0x20
  1000f6:	02a1                	addi	t0,t0,8 # 20008 <tohost>
  1000f8:	4305                	li	t1,1
  1000fa:	0062a023          	sw	t1,0(t0)

001000fe <sleep_loop>:
  1000fe:	10500073          	wfi
  100102:	bff5                	j	1000fe <sleep_loop>

00100104 <main>:
  100104:	7179                	addi	sp,sp,-48
  100106:	d606                	sw	ra,44(sp)
  100108:	d422                	sw	s0,40(sp)
  10010a:	1800                	addi	s0,sp,48
  10010c:	fc042a23          	sw	zero,-44(s0)
  100110:	04500513          	li	a0,69
  100114:	217d                	jal	1005c2 <print_char>
  100116:	06e00513          	li	a0,110
  10011a:	2165                	jal	1005c2 <print_char>
  10011c:	07400513          	li	a0,116
  100120:	214d                	jal	1005c2 <print_char>
  100122:	06500513          	li	a0,101
  100126:	2971                	jal	1005c2 <print_char>
  100128:	07200513          	li	a0,114
  10012c:	2959                	jal	1005c2 <print_char>
  10012e:	02000513          	li	a0,32
  100132:	2941                	jal	1005c2 <print_char>
  100134:	07400513          	li	a0,116
  100138:	2169                	jal	1005c2 <print_char>
  10013a:	06800513          	li	a0,104
  10013e:	2151                	jal	1005c2 <print_char>
  100140:	06500513          	li	a0,101
  100144:	29bd                	jal	1005c2 <print_char>
  100146:	02000513          	li	a0,32
  10014a:	29a5                	jal	1005c2 <print_char>
  10014c:	06e00513          	li	a0,110
  100150:	298d                	jal	1005c2 <print_char>
  100152:	07500513          	li	a0,117
  100156:	21b5                	jal	1005c2 <print_char>
  100158:	06d00513          	li	a0,109
  10015c:	219d                	jal	1005c2 <print_char>
  10015e:	06200513          	li	a0,98
  100162:	2185                	jal	1005c2 <print_char>
  100164:	06500513          	li	a0,101
  100168:	29a9                	jal	1005c2 <print_char>
  10016a:	07200513          	li	a0,114
  10016e:	2991                	jal	1005c2 <print_char>
  100170:	02000513          	li	a0,32
  100174:	21b9                	jal	1005c2 <print_char>
  100176:	06f00513          	li	a0,111
  10017a:	21a1                	jal	1005c2 <print_char>
  10017c:	06600513          	li	a0,102
  100180:	2189                	jal	1005c2 <print_char>
  100182:	02000513          	li	a0,32
  100186:	2935                	jal	1005c2 <print_char>
  100188:	06500513          	li	a0,101
  10018c:	291d                	jal	1005c2 <print_char>
  10018e:	06c00513          	li	a0,108
  100192:	2905                	jal	1005c2 <print_char>
  100194:	06500513          	li	a0,101
  100198:	212d                	jal	1005c2 <print_char>
  10019a:	06d00513          	li	a0,109
  10019e:	2115                	jal	1005c2 <print_char>
  1001a0:	06500513          	li	a0,101
  1001a4:	2939                	jal	1005c2 <print_char>
  1001a6:	06e00513          	li	a0,110
  1001aa:	2921                	jal	1005c2 <print_char>
  1001ac:	07400513          	li	a0,116
  1001b0:	2909                	jal	1005c2 <print_char>
  1001b2:	07300513          	li	a0,115
  1001b6:	2131                	jal	1005c2 <print_char>
  1001b8:	03a00513          	li	a0,58
  1001bc:	2119                	jal	1005c2 <print_char>
  1001be:	29e1                	jal	100696 <newline>
  1001c0:	266d                	jal	10056a <get_input>
  1001c2:	fea42423          	sw	a0,-24(s0)
  1001c6:	04500513          	li	a0,69
  1001ca:	2ee5                	jal	1005c2 <print_char>
  1001cc:	06e00513          	li	a0,110
  1001d0:	2ecd                	jal	1005c2 <print_char>
  1001d2:	07400513          	li	a0,116
  1001d6:	26f5                	jal	1005c2 <print_char>
  1001d8:	06500513          	li	a0,101
  1001dc:	26dd                	jal	1005c2 <print_char>
  1001de:	07200513          	li	a0,114
  1001e2:	26c5                	jal	1005c2 <print_char>
  1001e4:	02000513          	li	a0,32
  1001e8:	2ee9                	jal	1005c2 <print_char>
  1001ea:	07400513          	li	a0,116
  1001ee:	2ed1                	jal	1005c2 <print_char>
  1001f0:	06800513          	li	a0,104
  1001f4:	26f9                	jal	1005c2 <print_char>
  1001f6:	06500513          	li	a0,101
  1001fa:	26e1                	jal	1005c2 <print_char>
  1001fc:	02000513          	li	a0,32
  100200:	26c9                	jal	1005c2 <print_char>
  100202:	06500513          	li	a0,101
  100206:	2e75                	jal	1005c2 <print_char>
  100208:	06c00513          	li	a0,108
  10020c:	2e5d                	jal	1005c2 <print_char>
  10020e:	06500513          	li	a0,101
  100212:	2e45                	jal	1005c2 <print_char>
  100214:	06d00513          	li	a0,109
  100218:	266d                	jal	1005c2 <print_char>
  10021a:	06500513          	li	a0,101
  10021e:	2655                	jal	1005c2 <print_char>
  100220:	06e00513          	li	a0,110
  100224:	2e79                	jal	1005c2 <print_char>
  100226:	07400513          	li	a0,116
  10022a:	2e61                	jal	1005c2 <print_char>
  10022c:	07300513          	li	a0,115
  100230:	2e49                	jal	1005c2 <print_char>
  100232:	03a00513          	li	a0,58
  100236:	2671                	jal	1005c2 <print_char>
  100238:	29b9                	jal	100696 <newline>
  10023a:	fe042623          	sw	zero,-20(s0)
  10023e:	a839                	j	10025c <main+0x158>
  100240:	262d                	jal	10056a <get_input>
  100242:	fca42c23          	sw	a0,-40(s0)
  100246:	fd440793          	addi	a5,s0,-44
  10024a:	fd842583          	lw	a1,-40(s0)
  10024e:	853e                	mv	a0,a5
  100250:	20dd                	jal	100336 <append>
  100252:	fec42783          	lw	a5,-20(s0)
  100256:	0785                	addi	a5,a5,1
  100258:	fef42623          	sw	a5,-20(s0)
  10025c:	fec42703          	lw	a4,-20(s0)
  100260:	fe842783          	lw	a5,-24(s0)
  100264:	fcf74ee3          	blt	a4,a5,100240 <main+0x13c>
  100268:	fd442783          	lw	a5,-44(s0)
  10026c:	853e                	mv	a0,a5
  10026e:	2a59                	jal	100404 <merge_sort>
  100270:	87aa                	mv	a5,a0
  100272:	fcf42a23          	sw	a5,-44(s0)
  100276:	05300513          	li	a0,83
  10027a:	26a1                	jal	1005c2 <print_char>
  10027c:	06f00513          	li	a0,111
  100280:	2689                	jal	1005c2 <print_char>
  100282:	07200513          	li	a0,114
  100286:	2e35                	jal	1005c2 <print_char>
  100288:	07400513          	li	a0,116
  10028c:	2e1d                	jal	1005c2 <print_char>
  10028e:	06500513          	li	a0,101
  100292:	2e05                	jal	1005c2 <print_char>
  100294:	06400513          	li	a0,100
  100298:	262d                	jal	1005c2 <print_char>
  10029a:	02000513          	li	a0,32
  10029e:	2615                	jal	1005c2 <print_char>
  1002a0:	06c00513          	li	a0,108
  1002a4:	2e39                	jal	1005c2 <print_char>
  1002a6:	06900513          	li	a0,105
  1002aa:	2e21                	jal	1005c2 <print_char>
  1002ac:	07300513          	li	a0,115
  1002b0:	2e09                	jal	1005c2 <print_char>
  1002b2:	07400513          	li	a0,116
  1002b6:	2631                	jal	1005c2 <print_char>
  1002b8:	03a00513          	li	a0,58
  1002bc:	2619                	jal	1005c2 <print_char>
  1002be:	2ee1                	jal	100696 <newline>
  1002c0:	fd442783          	lw	a5,-44(s0)
  1002c4:	853e                	mv	a0,a5
  1002c6:	20f1                	jal	100392 <print_list>
  1002c8:	fd442783          	lw	a5,-44(s0)
  1002cc:	853e                	mv	a0,a5
  1002ce:	28fd                	jal	1003cc <free_list>
  1002d0:	4795                	li	a5,5
  1002d2:	fef42223          	sw	a5,-28(s0)
  1002d6:	478d                	li	a5,3
  1002d8:	fef42023          	sw	a5,-32(s0)
  1002dc:	fe442783          	lw	a5,-28(s0)
  1002e0:	fe042703          	lw	a4,-32(s0)
  1002e4:	00e7878b          	ccu	a5,a5,a4
  1002e8:	fcf42e23          	sw	a5,-36(s0)
  1002ec:	fe042583          	lw	a1,-32(s0)
  1002f0:	fe442503          	lw	a0,-28(s0)
  1002f4:	2921                	jal	10070c <calculate_area>
  1002f6:	4781                	li	a5,0
  1002f8:	853e                	mv	a0,a5
  1002fa:	50b2                	lw	ra,44(sp)
  1002fc:	5422                	lw	s0,40(sp)
  1002fe:	6145                	addi	sp,sp,48
  100300:	8082                	ret

00100302 <create_node>:
  100302:	7179                	addi	sp,sp,-48
  100304:	d606                	sw	ra,44(sp)
  100306:	d422                	sw	s0,40(sp)
  100308:	1800                	addi	s0,sp,48
  10030a:	fca42e23          	sw	a0,-36(s0)
  10030e:	4521                	li	a0,8
  100310:	2e71                	jal	1006ac <my_malloc>
  100312:	fea42623          	sw	a0,-20(s0)
  100316:	fec42783          	lw	a5,-20(s0)
  10031a:	fdc42703          	lw	a4,-36(s0)
  10031e:	c398                	sw	a4,0(a5)
  100320:	fec42783          	lw	a5,-20(s0)
  100324:	0007a223          	sw	zero,4(a5)
  100328:	fec42783          	lw	a5,-20(s0)
  10032c:	853e                	mv	a0,a5
  10032e:	50b2                	lw	ra,44(sp)
  100330:	5422                	lw	s0,40(sp)
  100332:	6145                	addi	sp,sp,48
  100334:	8082                	ret

00100336 <append>:
  100336:	7179                	addi	sp,sp,-48
  100338:	d606                	sw	ra,44(sp)
  10033a:	d422                	sw	s0,40(sp)
  10033c:	1800                	addi	s0,sp,48
  10033e:	fca42e23          	sw	a0,-36(s0)
  100342:	fcb42c23          	sw	a1,-40(s0)
  100346:	fd842503          	lw	a0,-40(s0)
  10034a:	3f65                	jal	100302 <create_node>
  10034c:	fea42423          	sw	a0,-24(s0)
  100350:	fdc42783          	lw	a5,-36(s0)
  100354:	439c                	lw	a5,0(a5)
  100356:	fef42623          	sw	a5,-20(s0)
  10035a:	fdc42783          	lw	a5,-36(s0)
  10035e:	439c                	lw	a5,0(a5)
  100360:	ef81                	bnez	a5,100378 <append+0x42>
  100362:	fdc42783          	lw	a5,-36(s0)
  100366:	fe842703          	lw	a4,-24(s0)
  10036a:	c398                	sw	a4,0(a5)
  10036c:	a839                	j	10038a <append+0x54>
  10036e:	fec42783          	lw	a5,-20(s0)
  100372:	43dc                	lw	a5,4(a5)
  100374:	fef42623          	sw	a5,-20(s0)
  100378:	fec42783          	lw	a5,-20(s0)
  10037c:	43dc                	lw	a5,4(a5)
  10037e:	fbe5                	bnez	a5,10036e <append+0x38>
  100380:	fec42783          	lw	a5,-20(s0)
  100384:	fe842703          	lw	a4,-24(s0)
  100388:	c3d8                	sw	a4,4(a5)
  10038a:	50b2                	lw	ra,44(sp)
  10038c:	5422                	lw	s0,40(sp)
  10038e:	6145                	addi	sp,sp,48
  100390:	8082                	ret

00100392 <print_list>:
  100392:	1101                	addi	sp,sp,-32
  100394:	ce06                	sw	ra,28(sp)
  100396:	cc22                	sw	s0,24(sp)
  100398:	1000                	addi	s0,sp,32
  10039a:	fea42623          	sw	a0,-20(s0)
  10039e:	a831                	j	1003ba <print_list+0x28>
  1003a0:	fec42783          	lw	a5,-20(s0)
  1003a4:	439c                	lw	a5,0(a5)
  1003a6:	853e                	mv	a0,a5
  1003a8:	2c2d                	jal	1005e2 <print_number>
  1003aa:	02000513          	li	a0,32
  1003ae:	2c11                	jal	1005c2 <print_char>
  1003b0:	fec42783          	lw	a5,-20(s0)
  1003b4:	43dc                	lw	a5,4(a5)
  1003b6:	fef42623          	sw	a5,-20(s0)
  1003ba:	fec42783          	lw	a5,-20(s0)
  1003be:	f3ed                	bnez	a5,1003a0 <print_list+0xe>
  1003c0:	2cd9                	jal	100696 <newline>
  1003c2:	0001                	nop
  1003c4:	40f2                	lw	ra,28(sp)
  1003c6:	4462                	lw	s0,24(sp)
  1003c8:	6105                	addi	sp,sp,32
  1003ca:	8082                	ret

001003cc <free_list>:
  1003cc:	7179                	addi	sp,sp,-48
  1003ce:	d606                	sw	ra,44(sp)
  1003d0:	d422                	sw	s0,40(sp)
  1003d2:	1800                	addi	s0,sp,48
  1003d4:	fca42e23          	sw	a0,-36(s0)
  1003d8:	a829                	j	1003f2 <free_list+0x26>
  1003da:	fdc42783          	lw	a5,-36(s0)
  1003de:	fef42623          	sw	a5,-20(s0)
  1003e2:	fdc42783          	lw	a5,-36(s0)
  1003e6:	43dc                	lw	a5,4(a5)
  1003e8:	fcf42e23          	sw	a5,-36(s0)
  1003ec:	fec42503          	lw	a0,-20(s0)
  1003f0:	2cd9                	jal	1006c6 <my_free>
  1003f2:	fdc42783          	lw	a5,-36(s0)
  1003f6:	f3f5                	bnez	a5,1003da <free_list+0xe>
  1003f8:	0001                	nop
  1003fa:	0001                	nop
  1003fc:	50b2                	lw	ra,44(sp)
  1003fe:	5422                	lw	s0,40(sp)
  100400:	6145                	addi	sp,sp,48
  100402:	8082                	ret

00100404 <merge_sort>:
  100404:	7179                	addi	sp,sp,-48
  100406:	d606                	sw	ra,44(sp)
  100408:	d422                	sw	s0,40(sp)
  10040a:	1800                	addi	s0,sp,48
  10040c:	fca42e23          	sw	a0,-36(s0)
  100410:	fdc42783          	lw	a5,-36(s0)
  100414:	c789                	beqz	a5,10041e <merge_sort+0x1a>
  100416:	fdc42783          	lw	a5,-36(s0)
  10041a:	43dc                	lw	a5,4(a5)
  10041c:	e781                	bnez	a5,100424 <merge_sort+0x20>
  10041e:	fdc42783          	lw	a5,-36(s0)
  100422:	a081                	j	100462 <merge_sort+0x5e>
  100424:	fe840713          	addi	a4,s0,-24
  100428:	fec40793          	addi	a5,s0,-20
  10042c:	863a                	mv	a2,a4
  10042e:	85be                	mv	a1,a5
  100430:	fdc42503          	lw	a0,-36(s0)
  100434:	20c1                	jal	1004f4 <split_list>
  100436:	fec42783          	lw	a5,-20(s0)
  10043a:	853e                	mv	a0,a5
  10043c:	37e1                	jal	100404 <merge_sort>
  10043e:	87aa                	mv	a5,a0
  100440:	fef42623          	sw	a5,-20(s0)
  100444:	fe842783          	lw	a5,-24(s0)
  100448:	853e                	mv	a0,a5
  10044a:	3f6d                	jal	100404 <merge_sort>
  10044c:	87aa                	mv	a5,a0
  10044e:	fef42423          	sw	a5,-24(s0)
  100452:	fec42783          	lw	a5,-20(s0)
  100456:	fe842703          	lw	a4,-24(s0)
  10045a:	85ba                	mv	a1,a4
  10045c:	853e                	mv	a0,a5
  10045e:	2039                	jal	10046c <sorted_merge>
  100460:	87aa                	mv	a5,a0
  100462:	853e                	mv	a0,a5
  100464:	50b2                	lw	ra,44(sp)
  100466:	5422                	lw	s0,40(sp)
  100468:	6145                	addi	sp,sp,48
  10046a:	8082                	ret

0010046c <sorted_merge>:
  10046c:	7179                	addi	sp,sp,-48
  10046e:	d606                	sw	ra,44(sp)
  100470:	d422                	sw	s0,40(sp)
  100472:	1800                	addi	s0,sp,48
  100474:	fca42e23          	sw	a0,-36(s0)
  100478:	fcb42c23          	sw	a1,-40(s0)
  10047c:	fe042623          	sw	zero,-20(s0)
  100480:	fdc42783          	lw	a5,-36(s0)
  100484:	e781                	bnez	a5,10048c <sorted_merge+0x20>
  100486:	fd842783          	lw	a5,-40(s0)
  10048a:	a085                	j	1004ea <sorted_merge+0x7e>
  10048c:	fd842783          	lw	a5,-40(s0)
  100490:	e781                	bnez	a5,100498 <sorted_merge+0x2c>
  100492:	fdc42783          	lw	a5,-36(s0)
  100496:	a891                	j	1004ea <sorted_merge+0x7e>
  100498:	fdc42783          	lw	a5,-36(s0)
  10049c:	4398                	lw	a4,0(a5)
  10049e:	fd842783          	lw	a5,-40(s0)
  1004a2:	439c                	lw	a5,0(a5)
  1004a4:	02e7c263          	blt	a5,a4,1004c8 <sorted_merge+0x5c>
  1004a8:	fdc42783          	lw	a5,-36(s0)
  1004ac:	fef42623          	sw	a5,-20(s0)
  1004b0:	fdc42783          	lw	a5,-36(s0)
  1004b4:	43dc                	lw	a5,4(a5)
  1004b6:	fd842583          	lw	a1,-40(s0)
  1004ba:	853e                	mv	a0,a5
  1004bc:	3f45                	jal	10046c <sorted_merge>
  1004be:	872a                	mv	a4,a0
  1004c0:	fec42783          	lw	a5,-20(s0)
  1004c4:	c3d8                	sw	a4,4(a5)
  1004c6:	a005                	j	1004e6 <sorted_merge+0x7a>
  1004c8:	fd842783          	lw	a5,-40(s0)
  1004cc:	fef42623          	sw	a5,-20(s0)
  1004d0:	fd842783          	lw	a5,-40(s0)
  1004d4:	43dc                	lw	a5,4(a5)
  1004d6:	85be                	mv	a1,a5
  1004d8:	fdc42503          	lw	a0,-36(s0)
  1004dc:	3f41                	jal	10046c <sorted_merge>
  1004de:	872a                	mv	a4,a0
  1004e0:	fec42783          	lw	a5,-20(s0)
  1004e4:	c3d8                	sw	a4,4(a5)
  1004e6:	fec42783          	lw	a5,-20(s0)
  1004ea:	853e                	mv	a0,a5
  1004ec:	50b2                	lw	ra,44(sp)
  1004ee:	5422                	lw	s0,40(sp)
  1004f0:	6145                	addi	sp,sp,48
  1004f2:	8082                	ret

001004f4 <split_list>:
  1004f4:	7179                	addi	sp,sp,-48
  1004f6:	d622                	sw	s0,44(sp)
  1004f8:	1800                	addi	s0,sp,48
  1004fa:	fca42e23          	sw	a0,-36(s0)
  1004fe:	fcb42c23          	sw	a1,-40(s0)
  100502:	fcc42a23          	sw	a2,-44(s0)
  100506:	fdc42783          	lw	a5,-36(s0)
  10050a:	fef42423          	sw	a5,-24(s0)
  10050e:	fdc42783          	lw	a5,-36(s0)
  100512:	43dc                	lw	a5,4(a5)
  100514:	fef42623          	sw	a5,-20(s0)
  100518:	a01d                	j	10053e <split_list+0x4a>
  10051a:	fec42783          	lw	a5,-20(s0)
  10051e:	43dc                	lw	a5,4(a5)
  100520:	fef42623          	sw	a5,-20(s0)
  100524:	fec42783          	lw	a5,-20(s0)
  100528:	cb99                	beqz	a5,10053e <split_list+0x4a>
  10052a:	fe842783          	lw	a5,-24(s0)
  10052e:	43dc                	lw	a5,4(a5)
  100530:	fef42423          	sw	a5,-24(s0)
  100534:	fec42783          	lw	a5,-20(s0)
  100538:	43dc                	lw	a5,4(a5)
  10053a:	fef42623          	sw	a5,-20(s0)
  10053e:	fec42783          	lw	a5,-20(s0)
  100542:	ffe1                	bnez	a5,10051a <split_list+0x26>
  100544:	fd842783          	lw	a5,-40(s0)
  100548:	fdc42703          	lw	a4,-36(s0)
  10054c:	c398                	sw	a4,0(a5)
  10054e:	fe842783          	lw	a5,-24(s0)
  100552:	43d8                	lw	a4,4(a5)
  100554:	fd442783          	lw	a5,-44(s0)
  100558:	c398                	sw	a4,0(a5)
  10055a:	fe842783          	lw	a5,-24(s0)
  10055e:	0007a223          	sw	zero,4(a5)
  100562:	0001                	nop
  100564:	5432                	lw	s0,44(sp)
  100566:	6145                	addi	sp,sp,48
  100568:	8082                	ret

0010056a <get_input>:
  10056a:	1101                	addi	sp,sp,-32
  10056c:	ce06                	sw	ra,28(sp)
  10056e:	cc22                	sw	s0,24(sp)
  100570:	1000                	addi	s0,sp,32
  100572:	fe042623          	sw	zero,-20(s0)
  100576:	228d                	jal	1006d8 <my_getchar>
  100578:	87aa                	mv	a5,a0
  10057a:	fef405a3          	sb	a5,-21(s0)
  10057e:	feb44703          	lbu	a4,-21(s0)
  100582:	02f00793          	li	a5,47
  100586:	02e7f763          	bgeu	a5,a4,1005b4 <get_input+0x4a>
  10058a:	feb44703          	lbu	a4,-21(s0)
  10058e:	03900793          	li	a5,57
  100592:	02e7e163          	bltu	a5,a4,1005b4 <get_input+0x4a>
  100596:	fec42703          	lw	a4,-20(s0)
  10059a:	87ba                	mv	a5,a4
  10059c:	078a                	slli	a5,a5,0x2
  10059e:	97ba                	add	a5,a5,a4
  1005a0:	0786                	slli	a5,a5,0x1
  1005a2:	873e                	mv	a4,a5
  1005a4:	feb44783          	lbu	a5,-21(s0)
  1005a8:	fd078793          	addi	a5,a5,-48
  1005ac:	97ba                	add	a5,a5,a4
  1005ae:	fef42623          	sw	a5,-20(s0)
  1005b2:	b7d1                	j	100576 <get_input+0xc>
  1005b4:	fec42783          	lw	a5,-20(s0)
  1005b8:	853e                	mv	a0,a5
  1005ba:	40f2                	lw	ra,28(sp)
  1005bc:	4462                	lw	s0,24(sp)
  1005be:	6105                	addi	sp,sp,32
  1005c0:	8082                	ret

001005c2 <print_char>:
  1005c2:	1101                	addi	sp,sp,-32
  1005c4:	ce06                	sw	ra,28(sp)
  1005c6:	cc22                	sw	s0,24(sp)
  1005c8:	1000                	addi	s0,sp,32
  1005ca:	87aa                	mv	a5,a0
  1005cc:	fef407a3          	sb	a5,-17(s0)
  1005d0:	fef44783          	lbu	a5,-17(s0)
  1005d4:	853e                	mv	a0,a5
  1005d6:	2a21                	jal	1006ee <my_putchar>
  1005d8:	0001                	nop
  1005da:	40f2                	lw	ra,28(sp)
  1005dc:	4462                	lw	s0,24(sp)
  1005de:	6105                	addi	sp,sp,32
  1005e0:	8082                	ret

001005e2 <print_number>:
  1005e2:	715d                	addi	sp,sp,-80
  1005e4:	c686                	sw	ra,76(sp)
  1005e6:	c4a2                	sw	s0,72(sp)
  1005e8:	0880                	addi	s0,sp,80
  1005ea:	faa42e23          	sw	a0,-68(s0)
  1005ee:	fbc42783          	lw	a5,-68(s0)
  1005f2:	e789                	bnez	a5,1005fc <print_number+0x1a>
  1005f4:	03000513          	li	a0,48
  1005f8:	37e9                	jal	1005c2 <print_char>
  1005fa:	a851                	j	10068e <print_number+0xac>
  1005fc:	fbc42783          	lw	a5,-68(s0)
  100600:	0007db63          	bgez	a5,100616 <print_number+0x34>
  100604:	02d00513          	li	a0,45
  100608:	3f6d                	jal	1005c2 <print_char>
  10060a:	fbc42783          	lw	a5,-68(s0)
  10060e:	40f007b3          	neg	a5,a5
  100612:	faf42e23          	sw	a5,-68(s0)
  100616:	fe042623          	sw	zero,-20(s0)
  10061a:	a805                	j	10064a <print_number+0x68>
  10061c:	fec42783          	lw	a5,-20(s0)
  100620:	00178713          	addi	a4,a5,1
  100624:	fee42623          	sw	a4,-20(s0)
  100628:	fbc42683          	lw	a3,-68(s0)
  10062c:	4729                	li	a4,10
  10062e:	02e6e733          	rem	a4,a3,a4
  100632:	078a                	slli	a5,a5,0x2
  100634:	17c1                	addi	a5,a5,-16
  100636:	97a2                	add	a5,a5,s0
  100638:	fce7aa23          	sw	a4,-44(a5)
  10063c:	fbc42703          	lw	a4,-68(s0)
  100640:	47a9                	li	a5,10
  100642:	02f747b3          	div	a5,a4,a5
  100646:	faf42e23          	sw	a5,-68(s0)
  10064a:	fbc42783          	lw	a5,-68(s0)
  10064e:	fcf047e3          	bgtz	a5,10061c <print_number+0x3a>
  100652:	fec42783          	lw	a5,-20(s0)
  100656:	17fd                	addi	a5,a5,-1
  100658:	fef42623          	sw	a5,-20(s0)
  10065c:	a02d                	j	100686 <print_number+0xa4>
  10065e:	fec42783          	lw	a5,-20(s0)
  100662:	078a                	slli	a5,a5,0x2
  100664:	17c1                	addi	a5,a5,-16
  100666:	97a2                	add	a5,a5,s0
  100668:	fd47a783          	lw	a5,-44(a5)
  10066c:	0ff7f793          	zext.b	a5,a5
  100670:	03078793          	addi	a5,a5,48
  100674:	0ff7f793          	zext.b	a5,a5
  100678:	853e                	mv	a0,a5
  10067a:	37a1                	jal	1005c2 <print_char>
  10067c:	fec42783          	lw	a5,-20(s0)
  100680:	17fd                	addi	a5,a5,-1
  100682:	fef42623          	sw	a5,-20(s0)
  100686:	fec42783          	lw	a5,-20(s0)
  10068a:	fc07dae3          	bgez	a5,10065e <print_number+0x7c>
  10068e:	40b6                	lw	ra,76(sp)
  100690:	4426                	lw	s0,72(sp)
  100692:	6161                	addi	sp,sp,80
  100694:	8082                	ret

00100696 <newline>:
  100696:	1141                	addi	sp,sp,-16
  100698:	c606                	sw	ra,12(sp)
  10069a:	c422                	sw	s0,8(sp)
  10069c:	0800                	addi	s0,sp,16
  10069e:	4529                	li	a0,10
  1006a0:	370d                	jal	1005c2 <print_char>
  1006a2:	0001                	nop
  1006a4:	40b2                	lw	ra,12(sp)
  1006a6:	4422                	lw	s0,8(sp)
  1006a8:	0141                	addi	sp,sp,16
  1006aa:	8082                	ret

001006ac <my_malloc>:
  1006ac:	7179                	addi	sp,sp,-48
  1006ae:	d622                	sw	s0,44(sp)
  1006b0:	1800                	addi	s0,sp,48
  1006b2:	fca42e23          	sw	a0,-36(s0)
  1006b6:	fe042623          	sw	zero,-20(s0)
  1006ba:	fec42783          	lw	a5,-20(s0)
  1006be:	853e                	mv	a0,a5
  1006c0:	5432                	lw	s0,44(sp)
  1006c2:	6145                	addi	sp,sp,48
  1006c4:	8082                	ret

001006c6 <my_free>:
  1006c6:	1101                	addi	sp,sp,-32
  1006c8:	ce22                	sw	s0,28(sp)
  1006ca:	1000                	addi	s0,sp,32
  1006cc:	fea42623          	sw	a0,-20(s0)
  1006d0:	0001                	nop
  1006d2:	4472                	lw	s0,28(sp)
  1006d4:	6105                	addi	sp,sp,32
  1006d6:	8082                	ret

001006d8 <my_getchar>:
  1006d8:	1101                	addi	sp,sp,-32
  1006da:	ce22                	sw	s0,28(sp)
  1006dc:	1000                	addi	s0,sp,32
  1006de:	fe0407a3          	sb	zero,-17(s0)
  1006e2:	fef44783          	lbu	a5,-17(s0)
  1006e6:	853e                	mv	a0,a5
  1006e8:	4472                	lw	s0,28(sp)
  1006ea:	6105                	addi	sp,sp,32
  1006ec:	8082                	ret

001006ee <my_putchar>:
  1006ee:	1101                	addi	sp,sp,-32
  1006f0:	ce22                	sw	s0,28(sp)
  1006f2:	1000                	addi	s0,sp,32
  1006f4:	87aa                	mv	a5,a0
  1006f6:	fef407a3          	sb	a5,-17(s0)
  1006fa:	000207b7          	lui	a5,0x20
  1006fe:	fef44703          	lbu	a4,-17(s0)
  100702:	c398                	sw	a4,0(a5)
  100704:	0001                	nop
  100706:	4472                	lw	s0,28(sp)
  100708:	6105                	addi	sp,sp,32
  10070a:	8082                	ret

0010070c <calculate_area>:
  10070c:	1101                	addi	sp,sp,-32
  10070e:	ce22                	sw	s0,28(sp)
  100710:	1000                	addi	s0,sp,32
  100712:	fea42623          	sw	a0,-20(s0)
  100716:	feb42423          	sw	a1,-24(s0)
  10071a:	fec42703          	lw	a4,-20(s0)
  10071e:	fe842783          	lw	a5,-24(s0)
  100722:	02f707b3          	mul	a5,a4,a5
  100726:	853e                	mv	a0,a5
  100728:	4472                	lw	s0,28(sp)
  10072a:	6105                	addi	sp,sp,32
  10072c:	8082                	ret
