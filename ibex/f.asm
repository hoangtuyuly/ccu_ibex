
./examples/sw/simple_system/hello_test/hello_test.elf:     file format elf32-littleriscv


Disassembly of section .vectors:

00100000 <_vectors_start>:
  100000:	3800006f          	j	100380 <default_exc_handler>
  100004:	37c0006f          	j	100380 <default_exc_handler>
  100008:	3780006f          	j	100380 <default_exc_handler>
  10000c:	3740006f          	j	100380 <default_exc_handler>
  100010:	3700006f          	j	100380 <default_exc_handler>
  100014:	36c0006f          	j	100380 <default_exc_handler>
  100018:	3680006f          	j	100380 <default_exc_handler>
  10001c:	3680006f          	j	100384 <timer_handler>
  100020:	3600006f          	j	100380 <default_exc_handler>
  100024:	35c0006f          	j	100380 <default_exc_handler>
  100028:	3580006f          	j	100380 <default_exc_handler>
  10002c:	3540006f          	j	100380 <default_exc_handler>
  100030:	3500006f          	j	100380 <default_exc_handler>
  100034:	34c0006f          	j	100380 <default_exc_handler>
  100038:	3480006f          	j	100380 <default_exc_handler>
  10003c:	3440006f          	j	100380 <default_exc_handler>
  100040:	3400006f          	j	100380 <default_exc_handler>
  100044:	33c0006f          	j	100380 <default_exc_handler>
  100048:	3380006f          	j	100380 <default_exc_handler>
  10004c:	3340006f          	j	100380 <default_exc_handler>
  100050:	3300006f          	j	100380 <default_exc_handler>
  100054:	32c0006f          	j	100380 <default_exc_handler>
  100058:	3280006f          	j	100380 <default_exc_handler>
  10005c:	3240006f          	j	100380 <default_exc_handler>
  100060:	3200006f          	j	100380 <default_exc_handler>
  100064:	31c0006f          	j	100380 <default_exc_handler>
  100068:	3180006f          	j	100380 <default_exc_handler>
  10006c:	3140006f          	j	100380 <default_exc_handler>
  100070:	3100006f          	j	100380 <default_exc_handler>
  100074:	30c0006f          	j	100380 <default_exc_handler>
  100078:	3080006f          	j	100380 <default_exc_handler>
  10007c:	0000                	.insn	2, 0x
  10007e:	0000                	.insn	2, 0x
  100080:	3080006f          	j	100388 <reset_handler>

Disassembly of section .text:

00100084 <putchar>:
  100084:	0ff57793          	zext.b	a5,a0
  100088:	00020737          	lui	a4,0x20
  10008c:	c31c                	sw	a5,0(a4)
  10008e:	8082                	ret

00100090 <puts>:
  100090:	00020737          	lui	a4,0x20
  100094:	00054783          	lbu	a5,0(a0)
  100098:	e399                	bnez	a5,10009e <puts+0xe>
  10009a:	4501                	li	a0,0
  10009c:	8082                	ret
  10009e:	0505                	addi	a0,a0,1
  1000a0:	c31c                	sw	a5,0(a4)
  1000a2:	bfcd                	j	100094 <puts+0x4>

001000a4 <puthex>:
  1000a4:	4721                	li	a4,8
  1000a6:	4625                	li	a2,9
  1000a8:	000206b7          	lui	a3,0x20
  1000ac:	01c55793          	srli	a5,a0,0x1c
  1000b0:	00f66963          	bltu	a2,a5,1000c2 <puthex+0x1e>
  1000b4:	03078793          	addi	a5,a5,48
  1000b8:	c29c                	sw	a5,0(a3)
  1000ba:	177d                	addi	a4,a4,-1 # 1ffff <_stack_len+0x17fff>
  1000bc:	0512                	slli	a0,a0,0x4
  1000be:	f77d                	bnez	a4,1000ac <puthex+0x8>
  1000c0:	8082                	ret
  1000c2:	03778793          	addi	a5,a5,55
  1000c6:	bfcd                	j	1000b8 <puthex+0x14>

001000c8 <sim_halt>:
  1000c8:	000207b7          	lui	a5,0x20
  1000cc:	4705                	li	a4,1
  1000ce:	c798                	sw	a4,8(a5)
  1000d0:	8082                	ret

001000d2 <pcount_reset>:
  1000d2:	b0201073          	csrw	minstret,zero
  1000d6:	b0001073          	csrw	mcycle,zero
  1000da:	b0301073          	csrw	mhpmcounter3,zero
  1000de:	b0401073          	csrw	mhpmcounter4,zero
  1000e2:	b0501073          	csrw	mhpmcounter5,zero
  1000e6:	b0601073          	csrw	mhpmcounter6,zero
  1000ea:	b0701073          	csrw	mhpmcounter7,zero
  1000ee:	b0801073          	csrw	mhpmcounter8,zero
  1000f2:	b0901073          	csrw	mhpmcounter9,zero
  1000f6:	b0a01073          	csrw	mhpmcounter10,zero
  1000fa:	b0b01073          	csrw	mhpmcounter11,zero
  1000fe:	b0c01073          	csrw	mhpmcounter12,zero
  100102:	b0d01073          	csrw	mhpmcounter13,zero
  100106:	b0e01073          	csrw	mhpmcounter14,zero
  10010a:	b0f01073          	csrw	mhpmcounter15,zero
  10010e:	b1001073          	csrw	mhpmcounter16,zero
  100112:	b1101073          	csrw	mhpmcounter17,zero
  100116:	b1201073          	csrw	mhpmcounter18,zero
  10011a:	b1301073          	csrw	mhpmcounter19,zero
  10011e:	b1401073          	csrw	mhpmcounter20,zero
  100122:	b1501073          	csrw	mhpmcounter21,zero
  100126:	b1601073          	csrw	mhpmcounter22,zero
  10012a:	b1701073          	csrw	mhpmcounter23,zero
  10012e:	b1801073          	csrw	mhpmcounter24,zero
  100132:	b1901073          	csrw	mhpmcounter25,zero
  100136:	b1a01073          	csrw	mhpmcounter26,zero
  10013a:	b1b01073          	csrw	mhpmcounter27,zero
  10013e:	b1c01073          	csrw	mhpmcounter28,zero
  100142:	b1d01073          	csrw	mhpmcounter29,zero
  100146:	b1e01073          	csrw	mhpmcounter30,zero
  10014a:	b1f01073          	csrw	mhpmcounter31,zero
  10014e:	b8201073          	csrw	minstreth,zero
  100152:	b8001073          	csrw	mcycleh,zero
  100156:	b8301073          	csrw	mhpmcounter3h,zero
  10015a:	b8401073          	csrw	mhpmcounter4h,zero
  10015e:	b8501073          	csrw	mhpmcounter5h,zero
  100162:	b8601073          	csrw	mhpmcounter6h,zero
  100166:	b8701073          	csrw	mhpmcounter7h,zero
  10016a:	b8801073          	csrw	mhpmcounter8h,zero
  10016e:	b8901073          	csrw	mhpmcounter9h,zero
  100172:	b8a01073          	csrw	mhpmcounter10h,zero
  100176:	b8b01073          	csrw	mhpmcounter11h,zero
  10017a:	b8c01073          	csrw	mhpmcounter12h,zero
  10017e:	b8d01073          	csrw	mhpmcounter13h,zero
  100182:	b8e01073          	csrw	mhpmcounter14h,zero
  100186:	b8f01073          	csrw	mhpmcounter15h,zero
  10018a:	b9001073          	csrw	mhpmcounter16h,zero
  10018e:	b9101073          	csrw	mhpmcounter17h,zero
  100192:	b9201073          	csrw	mhpmcounter18h,zero
  100196:	b9301073          	csrw	mhpmcounter19h,zero
  10019a:	b9401073          	csrw	mhpmcounter20h,zero
  10019e:	b9501073          	csrw	mhpmcounter21h,zero
  1001a2:	b9601073          	csrw	mhpmcounter22h,zero
  1001a6:	b9701073          	csrw	mhpmcounter23h,zero
  1001aa:	b9801073          	csrw	mhpmcounter24h,zero
  1001ae:	b9901073          	csrw	mhpmcounter25h,zero
  1001b2:	b9a01073          	csrw	mhpmcounter26h,zero
  1001b6:	b9b01073          	csrw	mhpmcounter27h,zero
  1001ba:	b9c01073          	csrw	mhpmcounter28h,zero
  1001be:	b9d01073          	csrw	mhpmcounter29h,zero
  1001c2:	b9e01073          	csrw	mhpmcounter30h,zero
  1001c6:	b9f01073          	csrw	mhpmcounter31h,zero
  1001ca:	8082                	ret

001001cc <get_mepc>:
  1001cc:	34102573          	csrr	a0,mepc
  1001d0:	8082                	ret

001001d2 <get_mcause>:
  1001d2:	34202573          	csrr	a0,mcause
  1001d6:	8082                	ret

001001d8 <get_mtval>:
  1001d8:	34302573          	csrr	a0,mtval
  1001dc:	8082                	ret

001001de <simple_exc_handler>:
  1001de:	1141                	addi	sp,sp,-16
  1001e0:	00000517          	auipc	a0,0x0
  1001e4:	2d050513          	addi	a0,a0,720 # 1004b0 <main+0xa8>
  1001e8:	c606                	sw	ra,12(sp)
  1001ea:	355d                	jal	100090 <puts>
  1001ec:	00000517          	auipc	a0,0x0
  1001f0:	2d450513          	addi	a0,a0,724 # 1004c0 <main+0xb8>
  1001f4:	3d71                	jal	100090 <puts>
  1001f6:	00000517          	auipc	a0,0x0
  1001fa:	2da50513          	addi	a0,a0,730 # 1004d0 <main+0xc8>
  1001fe:	3d49                	jal	100090 <puts>
  100200:	34102573          	csrr	a0,mepc
  100204:	3545                	jal	1000a4 <puthex>
  100206:	00000517          	auipc	a0,0x0
  10020a:	2d650513          	addi	a0,a0,726 # 1004dc <main+0xd4>
  10020e:	3549                	jal	100090 <puts>
  100210:	34202573          	csrr	a0,mcause
  100214:	3d41                	jal	1000a4 <puthex>
  100216:	00000517          	auipc	a0,0x0
  10021a:	2d250513          	addi	a0,a0,722 # 1004e8 <main+0xe0>
  10021e:	3d8d                	jal	100090 <puts>
  100220:	34302573          	csrr	a0,mtval
  100224:	3541                	jal	1000a4 <puthex>
  100226:	000207b7          	lui	a5,0x20
  10022a:	4729                	li	a4,10
  10022c:	c398                	sw	a4,0(a5)
  10022e:	4705                	li	a4,1
  100230:	c798                	sw	a4,8(a5)
  100232:	a001                	j	100232 <simple_exc_handler+0x54>

00100234 <timer_disable>:
  100234:	08000793          	li	a5,128
  100238:	3047b073          	csrc	mie,a5
  10023c:	8082                	ret

0010023e <timer_read>:
  10023e:	000307b7          	lui	a5,0x30
  100242:	000306b7          	lui	a3,0x30
  100246:	0791                	addi	a5,a5,4 # 30004 <tohost+0xfffc>
  100248:	4398                	lw	a4,0(a5)
  10024a:	4288                	lw	a0,0(a3)
  10024c:	438c                	lw	a1,0(a5)
  10024e:	fee59de3          	bne	a1,a4,100248 <timer_read+0xa>
  100252:	8082                	ret

00100254 <timecmp_update>:
  100254:	000307b7          	lui	a5,0x30
  100258:	577d                	li	a4,-1
  10025a:	c798                	sw	a4,8(a5)
  10025c:	00030737          	lui	a4,0x30
  100260:	c74c                	sw	a1,12(a4)
  100262:	c788                	sw	a0,8(a5)
  100264:	8082                	ret

00100266 <timer_enable>:
  100266:	1141                	addi	sp,sp,-16
  100268:	c606                	sw	ra,12(sp)
  10026a:	c422                	sw	s0,8(sp)
  10026c:	c226                	sw	s1,4(sp)
  10026e:	4681                	li	a3,0
  100270:	00000797          	auipc	a5,0x0
  100274:	2b878793          	addi	a5,a5,696 # 100528 <time_elapsed>
  100278:	c394                	sw	a3,0(a5)
  10027a:	4701                	li	a4,0
  10027c:	c3d8                	sw	a4,4(a5)
  10027e:	00000797          	auipc	a5,0x0
  100282:	2a278793          	addi	a5,a5,674 # 100520 <time_increment>
  100286:	842a                	mv	s0,a0
  100288:	84ae                	mv	s1,a1
  10028a:	c388                	sw	a0,0(a5)
  10028c:	c3cc                	sw	a1,4(a5)
  10028e:	3f45                	jal	10023e <timer_read>
  100290:	9522                	add	a0,a0,s0
  100292:	00853433          	sltu	s0,a0,s0
  100296:	95a6                	add	a1,a1,s1
  100298:	95a2                	add	a1,a1,s0
  10029a:	3f6d                	jal	100254 <timecmp_update>
  10029c:	08000793          	li	a5,128
  1002a0:	3047a073          	csrs	mie,a5
  1002a4:	47a1                	li	a5,8
  1002a6:	3007a073          	csrs	mstatus,a5
  1002aa:	40b2                	lw	ra,12(sp)
  1002ac:	4422                	lw	s0,8(sp)
  1002ae:	4492                	lw	s1,4(sp)
  1002b0:	0141                	addi	sp,sp,16
  1002b2:	8082                	ret

001002b4 <get_elapsed_time>:
  1002b4:	00000797          	auipc	a5,0x0
  1002b8:	27478793          	addi	a5,a5,628 # 100528 <time_elapsed>
  1002bc:	4388                	lw	a0,0(a5)
  1002be:	43cc                	lw	a1,4(a5)
  1002c0:	8082                	ret

001002c2 <simple_timer_handler>:
  1002c2:	715d                	addi	sp,sp,-80
  1002c4:	d03e                	sw	a5,32(sp)
  1002c6:	00000797          	auipc	a5,0x0
  1002ca:	25a78793          	addi	a5,a5,602 # 100520 <time_increment>
  1002ce:	de22                	sw	s0,60(sp)
  1002d0:	4380                	lw	s0,0(a5)
  1002d2:	dc26                	sw	s1,56(sp)
  1002d4:	43c4                	lw	s1,4(a5)
  1002d6:	d632                	sw	a2,44(sp)
  1002d8:	c686                	sw	ra,76(sp)
  1002da:	c496                	sw	t0,72(sp)
  1002dc:	c29a                	sw	t1,68(sp)
  1002de:	c09e                	sw	t2,64(sp)
  1002e0:	d436                	sw	a3,40(sp)
  1002e2:	d23a                	sw	a4,36(sp)
  1002e4:	ce42                	sw	a6,28(sp)
  1002e6:	cc46                	sw	a7,24(sp)
  1002e8:	ca72                	sw	t3,20(sp)
  1002ea:	c876                	sw	t4,16(sp)
  1002ec:	c67a                	sw	t5,12(sp)
  1002ee:	c47e                	sw	t6,8(sp)
  1002f0:	da2a                	sw	a0,52(sp)
  1002f2:	d82e                	sw	a1,48(sp)
  1002f4:	37a9                	jal	10023e <timer_read>
  1002f6:	9522                	add	a0,a0,s0
  1002f8:	00853433          	sltu	s0,a0,s0
  1002fc:	95a6                	add	a1,a1,s1
  1002fe:	95a2                	add	a1,a1,s0
  100300:	3f91                	jal	100254 <timecmp_update>
  100302:	00000597          	auipc	a1,0x0
  100306:	22658593          	addi	a1,a1,550 # 100528 <time_elapsed>
  10030a:	4180                	lw	s0,0(a1)
  10030c:	41c4                	lw	s1,4(a1)
  10030e:	40b6                	lw	ra,76(sp)
  100310:	00140513          	addi	a0,s0,1
  100314:	00853633          	sltu	a2,a0,s0
  100318:	5472                	lw	s0,60(sp)
  10031a:	009607b3          	add	a5,a2,s1
  10031e:	c188                	sw	a0,0(a1)
  100320:	c1dc                	sw	a5,4(a1)
  100322:	42a6                	lw	t0,72(sp)
  100324:	4316                	lw	t1,68(sp)
  100326:	4386                	lw	t2,64(sp)
  100328:	54e2                	lw	s1,56(sp)
  10032a:	5552                	lw	a0,52(sp)
  10032c:	55c2                	lw	a1,48(sp)
  10032e:	5632                	lw	a2,44(sp)
  100330:	56a2                	lw	a3,40(sp)
  100332:	5712                	lw	a4,36(sp)
  100334:	5782                	lw	a5,32(sp)
  100336:	4872                	lw	a6,28(sp)
  100338:	48e2                	lw	a7,24(sp)
  10033a:	4e52                	lw	t3,20(sp)
  10033c:	4ec2                	lw	t4,16(sp)
  10033e:	4f32                	lw	t5,12(sp)
  100340:	4fa2                	lw	t6,8(sp)
  100342:	6161                	addi	sp,sp,80
  100344:	30200073          	mret

00100348 <putint>:
  100348:	e519                	bnez	a0,100356 <putint+0xe>
  10034a:	000207b7          	lui	a5,0x20
  10034e:	03000713          	li	a4,48
  100352:	c398                	sw	a4,0(a5)
  100354:	8082                	ret
  100356:	00055963          	bgez	a0,100368 <putint+0x20>
  10035a:	000207b7          	lui	a5,0x20
  10035e:	02d00713          	li	a4,45
  100362:	c398                	sw	a4,0(a5)
  100364:	40a00533          	neg	a0,a0
  100368:	4729                	li	a4,10
  10036a:	000206b7          	lui	a3,0x20
  10036e:	02e567b3          	rem	a5,a0,a4
  100372:	02e54533          	div	a0,a0,a4
  100376:	03078793          	addi	a5,a5,48 # 20030 <tohost+0x28>
  10037a:	c29c                	sw	a5,0(a3)
  10037c:	f96d                	bnez	a0,10036e <putint+0x26>
  10037e:	8082                	ret

00100380 <default_exc_handler>:
  100380:	e5fff06f          	j	1001de <simple_exc_handler>

00100384 <timer_handler>:
  100384:	f3fff06f          	j	1002c2 <simple_timer_handler>

00100388 <reset_handler>:
  100388:	00000093          	li	ra,0
  10038c:	8106                	mv	sp,ra
  10038e:	8186                	mv	gp,ra
  100390:	8206                	mv	tp,ra
  100392:	8286                	mv	t0,ra
  100394:	8306                	mv	t1,ra
  100396:	8386                	mv	t2,ra
  100398:	8406                	mv	s0,ra
  10039a:	8486                	mv	s1,ra
  10039c:	8506                	mv	a0,ra
  10039e:	8586                	mv	a1,ra
  1003a0:	8606                	mv	a2,ra
  1003a2:	8686                	mv	a3,ra
  1003a4:	8706                	mv	a4,ra
  1003a6:	8786                	mv	a5,ra
  1003a8:	8806                	mv	a6,ra
  1003aa:	8886                	mv	a7,ra
  1003ac:	8906                	mv	s2,ra
  1003ae:	8986                	mv	s3,ra
  1003b0:	8a06                	mv	s4,ra
  1003b2:	8a86                	mv	s5,ra
  1003b4:	8b06                	mv	s6,ra
  1003b6:	8b86                	mv	s7,ra
  1003b8:	8c06                	mv	s8,ra
  1003ba:	8c86                	mv	s9,ra
  1003bc:	8d06                	mv	s10,ra
  1003be:	8d86                	mv	s11,ra
  1003c0:	8e06                	mv	t3,ra
  1003c2:	8e86                	mv	t4,ra
  1003c4:	8f06                	mv	t5,ra
  1003c6:	8f86                	mv	t6,ra
  1003c8:	00038117          	auipc	sp,0x38
  1003cc:	c3810113          	addi	sp,sp,-968 # 138000 <_stack_start>

001003d0 <_start>:
  1003d0:	00000d17          	auipc	s10,0x0
  1003d4:	150d0d13          	addi	s10,s10,336 # 100520 <time_increment>
  1003d8:	00000d97          	auipc	s11,0x0
  1003dc:	158d8d93          	addi	s11,s11,344 # 100530 <_bss_end>
  1003e0:	01bd5763          	bge	s10,s11,1003ee <main_entry>

001003e4 <zero_loop>:
  1003e4:	000d2023          	sw	zero,0(s10)
  1003e8:	0d11                	addi	s10,s10,4
  1003ea:	ffaddde3          	bge	s11,s10,1003e4 <zero_loop>

001003ee <main_entry>:
  1003ee:	4501                	li	a0,0
  1003f0:	4581                	li	a1,0
  1003f2:	016000ef          	jal	100408 <main>
  1003f6:	000202b7          	lui	t0,0x20
  1003fa:	02a1                	addi	t0,t0,8 # 20008 <tohost>
  1003fc:	4305                	li	t1,1
  1003fe:	0062a023          	sw	t1,0(t0)

00100402 <sleep_loop>:
  100402:	10500073          	wfi
  100406:	bff5                	j	100402 <sleep_loop>

00100408 <main>:
  100408:	1101                	addi	sp,sp,-32
  10040a:	cc22                	sw	s0,24(sp)
  10040c:	ce06                	sw	ra,28(sp)
  10040e:	ca26                	sw	s1,20(sp)
  100410:	c84a                	sw	s2,16(sp)
  100412:	c64e                	sw	s3,12(sp)
  100414:	c452                	sw	s4,8(sp)
  100416:	c256                	sw	s5,4(sp)
  100418:	547d                	li	s0,-1
  10041a:	32041073          	csrw	mcountinhibit,s0
  10041e:	3955                	jal	1000d2 <pcount_reset>
  100420:	4781                	li	a5,0
  100422:	32079073          	csrw	mcountinhibit,a5
  100426:	00000517          	auipc	a0,0x0
  10042a:	0ce50513          	addi	a0,a0,206 # 1004f4 <main+0xec>
  10042e:	318d                	jal	100090 <puts>
  100430:	deadc537          	lui	a0,0xdeadc
  100434:	eef50513          	addi	a0,a0,-273 # deadbeef <fromhost+0xde9a3edf>
  100438:	31b5                	jal	1000a4 <puthex>
  10043a:	4529                	li	a0,10
  10043c:	31a1                	jal	100084 <putchar>
  10043e:	baadf537          	lui	a0,0xbaadf
  100442:	0535                	addi	a0,a0,13 # baadf00d <fromhost+0xba9a6ffd>
  100444:	3185                	jal	1000a4 <puthex>
  100446:	4529                	li	a0,10
  100448:	3935                	jal	100084 <putchar>
  10044a:	32041073          	csrw	mcountinhibit,s0
  10044e:	7d000513          	li	a0,2000
  100452:	4581                	li	a1,0
  100454:	3d09                	jal	100266 <timer_enable>
  100456:	3db9                	jal	1002b4 <get_elapsed_time>
  100458:	84aa                	mv	s1,a0
  10045a:	842e                	mv	s0,a1
  10045c:	4991                	li	s3,4
  10045e:	00000a17          	auipc	s4,0x0
  100462:	0b6a0a13          	addi	s4,s4,182 # 100514 <main+0x10c>
  100466:	00000a97          	auipc	s5,0x0
  10046a:	0a6a8a93          	addi	s5,s5,166 # 10050c <main+0x104>
  10046e:	e019                	bnez	s0,100474 <main+0x6c>
  100470:	0299f063          	bgeu	s3,s1,100490 <main+0x88>
  100474:	4795                	li	a5,5
  100476:	470d                	li	a4,3
  100478:	04e7878b          	ccu1	a5,a5,a4
  10047c:	40f2                	lw	ra,28(sp)
  10047e:	4462                	lw	s0,24(sp)
  100480:	44d2                	lw	s1,20(sp)
  100482:	4942                	lw	s2,16(sp)
  100484:	49b2                	lw	s3,12(sp)
  100486:	4a22                	lw	s4,8(sp)
  100488:	4a92                	lw	s5,4(sp)
  10048a:	4501                	li	a0,0
  10048c:	6105                	addi	sp,sp,32
  10048e:	8082                	ret
  100490:	3515                	jal	1002b4 <get_elapsed_time>
  100492:	892a                	mv	s2,a0
  100494:	842e                	mv	s0,a1
  100496:	00a49363          	bne	s1,a0,10049c <main+0x94>
  10049a:	c599                	beqz	a1,1004a8 <main+0xa0>
  10049c:	00197793          	andi	a5,s2,1
  1004a0:	8556                	mv	a0,s5
  1004a2:	e391                	bnez	a5,1004a6 <main+0x9e>
  1004a4:	8552                	mv	a0,s4
  1004a6:	36ed                	jal	100090 <puts>
  1004a8:	10500073          	wfi
  1004ac:	84ca                	mv	s1,s2
  1004ae:	b7c1                	j	10046e <main+0x66>
