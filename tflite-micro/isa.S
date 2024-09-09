
gen/riscv32_generic_riscv32-unknown-elf_default_gcc/bin/person_detection:     file format elf32-littleriscv


Disassembly of section .text:

00010094 <exit>:
   10094:	1141                	addi	sp,sp,-16
   10096:	4581                	li	a1,0
   10098:	c422                	sw	s0,8(sp)
   1009a:	c606                	sw	ra,12(sp)
   1009c:	842a                	mv	s0,a0
   1009e:	00007097          	auipc	ra,0x7
   100a2:	846080e7          	jalr	-1978(ra) # 168e4 <__call_exitprocs>
   100a6:	0001e7b7          	lui	a5,0x1e
   100aa:	7347a783          	lw	a5,1844(a5) # 1e734 <__stdio_exit_handler>
   100ae:	c391                	beqz	a5,100b2 <exit+0x1e>
   100b0:	9782                	jalr	a5
   100b2:	8522                	mv	a0,s0
   100b4:	0000a097          	auipc	ra,0xa
   100b8:	eb0080e7          	jalr	-336(ra) # 19f64 <_exit>

000100bc <main>:
   100bc:	1141                	addi	sp,sp,-16
   100be:	c606                	sw	ra,12(sp)
   100c0:	00000097          	auipc	ra,0x0
   100c4:	120080e7          	jalr	288(ra) # 101e0 <loop>
   100c8:	40b2                	lw	ra,12(sp)
   100ca:	4501                	li	a0,0
   100cc:	0141                	addi	sp,sp,16
   100ce:	8082                	ret

000100d0 <register_fini>:
   100d0:	000007b7          	lui	a5,0x0
   100d4:	00078793          	mv	a5,a5
   100d8:	cb89                	beqz	a5,100ea <register_fini+0x1a>
   100da:	0001a537          	lui	a0,0x1a
   100de:	de850513          	addi	a0,a0,-536 # 19de8 <__libc_fini_array>
   100e2:	00003317          	auipc	t1,0x3
   100e6:	ba830067          	jr	-1112(t1) # 12c8a <atexit>
   100ea:	8082                	ret

000100ec <_start>:
   100ec:	0000e197          	auipc	gp,0xe
   100f0:	72418193          	addi	gp,gp,1828 # 1e810 <__global_pointer$>
   100f4:	0000e517          	auipc	a0,0xe
   100f8:	63050513          	addi	a0,a0,1584 # 1e724 <_ZN12_GLOBAL__N_15inputE>
   100fc:	0000f617          	auipc	a2,0xf
   10100:	96060613          	addi	a2,a2,-1696 # 1ea5c <__BSS_END__>
   10104:	8e09                	sub	a2,a2,a0
   10106:	4581                	li	a1,0
   10108:	00006097          	auipc	ra,0x6
   1010c:	41e080e7          	jalr	1054(ra) # 16526 <memset>
   10110:	00003517          	auipc	a0,0x3
   10114:	b7a50513          	addi	a0,a0,-1158 # 12c8a <atexit>
   10118:	c909                	beqz	a0,1012a <_start+0x3e>
   1011a:	0000a517          	auipc	a0,0xa
   1011e:	cce50513          	addi	a0,a0,-818 # 19de8 <__libc_fini_array>
   10122:	00003097          	auipc	ra,0x3
   10126:	b68080e7          	jalr	-1176(ra) # 12c8a <atexit>
   1012a:	00006097          	auipc	ra,0x6
   1012e:	2be080e7          	jalr	702(ra) # 163e8 <__libc_init_array>
   10132:	4502                	lw	a0,0(sp)
   10134:	004c                	addi	a1,sp,4
   10136:	4601                	li	a2,0
   10138:	00000097          	auipc	ra,0x0
   1013c:	f84080e7          	jalr	-124(ra) # 100bc <main>
   10140:	00000317          	auipc	t1,0x0
   10144:	f5430067          	jr	-172(t1) # 10094 <exit>

00010148 <__do_global_dtors_aux>:
   10148:	1141                	addi	sp,sp,-16
   1014a:	c422                	sw	s0,8(sp)
   1014c:	0001e437          	lui	s0,0x1e
   10150:	75044783          	lbu	a5,1872(s0) # 1e750 <completed.1>
   10154:	c606                	sw	ra,12(sp)
   10156:	e38d                	bnez	a5,10178 <__do_global_dtors_aux+0x30>
   10158:	000007b7          	lui	a5,0x0
   1015c:	00078793          	mv	a5,a5
   10160:	cb89                	beqz	a5,10172 <__do_global_dtors_aux+0x2a>
   10162:	0001e537          	lui	a0,0x1e
   10166:	00050513          	mv	a0,a0
   1016a:	00000097          	auipc	ra,0x0
   1016e:	000000e7          	jalr	zero # 0 <exit-0x10094>
   10172:	4785                	li	a5,1
   10174:	74f40823          	sb	a5,1872(s0)
   10178:	40b2                	lw	ra,12(sp)
   1017a:	4422                	lw	s0,8(sp)
   1017c:	0141                	addi	sp,sp,16
   1017e:	8082                	ret

00010180 <frame_dummy>:
   10180:	000007b7          	lui	a5,0x0
   10184:	00078793          	mv	a5,a5
   10188:	cf89                	beqz	a5,101a2 <frame_dummy+0x22>
   1018a:	0001e5b7          	lui	a1,0x1e
   1018e:	0001e537          	lui	a0,0x1e
   10192:	75458593          	addi	a1,a1,1876 # 1e754 <object.0>
   10196:	00050513          	mv	a0,a0
   1019a:	00000317          	auipc	t1,0x0
   1019e:	00000067          	jr	zero # 0 <exit-0x10094>
   101a2:	8082                	ret

000101a4 <_Z18RespondToDetectionaa>:
   101a4:	862e                	mv	a2,a1
   101a6:	85aa                	mv	a1,a0
   101a8:	0000c517          	auipc	a0,0xc
   101ac:	f3850513          	addi	a0,a0,-200 # 1c0e0 <__extenddftf2+0x17c>
   101b0:	00001317          	auipc	t1,0x1
   101b4:	cdc30067          	jr	-804(t1) # 10e8c <_Z11MicroPrintfPKcz>

000101b8 <_Z8GetImageiiiPa>:
   101b8:	87aa                	mv	a5,a0
   101ba:	02b787b3          	mul	a5,a5,a1
   101be:	1141                	addi	sp,sp,-16
   101c0:	c606                	sw	ra,12(sp)
   101c2:	8536                	mv	a0,a3
   101c4:	02c78633          	mul	a2,a5,a2
   101c8:	00065363          	bgez	a2,101ce <_Z8GetImageiiiPa+0x16>
   101cc:	4601                	li	a2,0
   101ce:	4581                	li	a1,0
   101d0:	00006097          	auipc	ra,0x6
   101d4:	356080e7          	jalr	854(ra) # 16526 <memset>
   101d8:	40b2                	lw	ra,12(sp)
   101da:	4501                	li	a0,0
   101dc:	0141                	addi	sp,sp,16
   101de:	8082                	ret

000101e0 <loop>:
   101e0:	0000e797          	auipc	a5,0xe
   101e4:	5447a783          	lw	a5,1348(a5) # 1e724 <_ZN12_GLOBAL__N_15inputE>
   101e8:	1141                	addi	sp,sp,-16
   101ea:	4605                	li	a2,1
   101ec:	4b94                	lw	a3,16(a5)
   101ee:	06000593          	li	a1,96
   101f2:	06000513          	li	a0,96
   101f6:	c606                	sw	ra,12(sp)
   101f8:	00000097          	auipc	ra,0x0
   101fc:	fc0080e7          	jalr	-64(ra) # 101b8 <_Z8GetImageiiiPa>
   10200:	c909                	beqz	a0,10212 <loop+0x32>
   10202:	0000c517          	auipc	a0,0xc
   10206:	f0250513          	addi	a0,a0,-254 # 1c104 <__extenddftf2+0x1a0>
   1020a:	00001097          	auipc	ra,0x1
   1020e:	c82080e7          	jalr	-894(ra) # 10e8c <_Z11MicroPrintfPKcz>
   10212:	0000e797          	auipc	a5,0xe
   10216:	5167a503          	lw	a0,1302(a5) # 1e728 <_ZN12_GLOBAL__N_111interpreterE>
   1021a:	00000097          	auipc	ra,0x0
   1021e:	738080e7          	jalr	1848(ra) # 10952 <_ZN6tflite16MicroInterpreter6InvokeEv>
   10222:	c909                	beqz	a0,10234 <loop+0x54>
   10224:	0000c517          	auipc	a0,0xc
   10228:	ef850513          	addi	a0,a0,-264 # 1c11c <__extenddftf2+0x1b8>
   1022c:	00001097          	auipc	ra,0x1
   10230:	c60080e7          	jalr	-928(ra) # 10e8c <_Z11MicroPrintfPKcz>
   10234:	0000e797          	auipc	a5,0xe
   10238:	4f47a503          	lw	a0,1268(a5) # 1e728 <_ZN12_GLOBAL__N_111interpreterE>
   1023c:	4581                	li	a1,0
   1023e:	00000097          	auipc	ra,0x0
   10242:	164080e7          	jalr	356(ra) # 103a2 <_ZN6tflite16MicroInterpreter6outputEj>
   10246:	491c                	lw	a5,16(a0)
   10248:	40b2                	lw	ra,12(sp)
   1024a:	00078583          	lb	a1,0(a5)
   1024e:	00178503          	lb	a0,1(a5)
   10252:	0141                	addi	sp,sp,16
   10254:	00000317          	auipc	t1,0x0
   10258:	f5030067          	jr	-176(t1) # 101a4 <_Z18RespondToDetectionaa>

0001025c <_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt>:
   1025c:	411c                	lw	a5,0(a0)
   1025e:	8d1d                	sub	a0,a0,a5
   10260:	00055783          	lhu	a5,0(a0)
   10264:	00f5f663          	bgeu	a1,a5,10270 <_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt+0x14>
   10268:	952e                	add	a0,a0,a1
   1026a:	00055503          	lhu	a0,0(a0)
   1026e:	8082                	ret
   10270:	4501                	li	a0,0
   10272:	8082                	ret

00010274 <_ZN6tflite23EnumNameBuiltinOperatorENS_15BuiltinOperatorE>:
   10274:	0ce00793          	li	a5,206
   10278:	00a7ea63          	bltu	a5,a0,1028c <_ZN6tflite23EnumNameBuiltinOperatorENS_15BuiltinOperatorE+0x18>
   1027c:	0000d797          	auipc	a5,0xd
   10280:	2a878793          	addi	a5,a5,680 # 1d524 <_ZZN6tflite24EnumNamesBuiltinOperatorEvE5names>
   10284:	050a                	slli	a0,a0,0x2
   10286:	953e                	add	a0,a0,a5
   10288:	4108                	lw	a0,0(a0)
   1028a:	8082                	ret
   1028c:	0000c517          	auipc	a0,0xc
   10290:	1f450513          	addi	a0,a0,500 # 1c480 <__extenddftf2+0x51c>
   10294:	8082                	ret

00010296 <_ZNK6tflite5Model9subgraphsEv>:
   10296:	1141                	addi	sp,sp,-16
   10298:	45a1                	li	a1,8
   1029a:	c422                	sw	s0,8(sp)
   1029c:	c606                	sw	ra,12(sp)
   1029e:	842a                	mv	s0,a0
   102a0:	00000097          	auipc	ra,0x0
   102a4:	fbc080e7          	jalr	-68(ra) # 1025c <_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt>
   102a8:	c901                	beqz	a0,102b8 <_ZNK6tflite5Model9subgraphsEv+0x22>
   102aa:	9522                	add	a0,a0,s0
   102ac:	411c                	lw	a5,0(a0)
   102ae:	953e                	add	a0,a0,a5
   102b0:	40b2                	lw	ra,12(sp)
   102b2:	4422                	lw	s0,8(sp)
   102b4:	0141                	addi	sp,sp,16
   102b6:	8082                	ret
   102b8:	4501                	li	a0,0
   102ba:	bfdd                	j	102b0 <_ZNK6tflite5Model9subgraphsEv+0x1a>

000102bc <_ZNK11flatbuffers6VectorIlmE3GetEm>:
   102bc:	411c                	lw	a5,0(a0)
   102be:	02f5e663          	bltu	a1,a5,102ea <_ZNK11flatbuffers6VectorIlmE3GetEm+0x2e>
   102c2:	0000c697          	auipc	a3,0xc
   102c6:	0000c617          	auipc	a2,0xc
   102ca:	0000c517          	auipc	a0,0xc
   102ce:	1141                	addi	sp,sp,-16
   102d0:	e6a68693          	addi	a3,a3,-406 # 1c12c <__extenddftf2+0x1c8>
   102d4:	e7260613          	addi	a2,a2,-398 # 1c138 <__extenddftf2+0x1d4>
   102d8:	0b000593          	li	a1,176
   102dc:	f1250513          	addi	a0,a0,-238 # 1c1dc <__extenddftf2+0x278>
   102e0:	c606                	sw	ra,12(sp)
   102e2:	00003097          	auipc	ra,0x3
   102e6:	95a080e7          	jalr	-1702(ra) # 12c3c <__assert_func>
   102ea:	0585                	addi	a1,a1,1
   102ec:	058a                	slli	a1,a1,0x2
   102ee:	952e                	add	a0,a0,a1
   102f0:	4108                	lw	a0,0(a0)
   102f2:	8082                	ret

000102f4 <_ZNK11flatbuffers6VectorINS_6OffsetIN6tflite8SubGraphEEEmE3GetEm>:
   102f4:	411c                	lw	a5,0(a0)
   102f6:	02f5e663          	bltu	a1,a5,10322 <_ZNK11flatbuffers6VectorINS_6OffsetIN6tflite8SubGraphEEEmE3GetEm+0x2e>
   102fa:	0000c697          	auipc	a3,0xc
   102fe:	0000c617          	auipc	a2,0xc
   10302:	0000c517          	auipc	a0,0xc
   10306:	1141                	addi	sp,sp,-16
   10308:	e3268693          	addi	a3,a3,-462 # 1c12c <__extenddftf2+0x1c8>
   1030c:	f3260613          	addi	a2,a2,-206 # 1c230 <__extenddftf2+0x2cc>
   10310:	0b000593          	li	a1,176
   10314:	eda50513          	addi	a0,a0,-294 # 1c1dc <__extenddftf2+0x278>
   10318:	c606                	sw	ra,12(sp)
   1031a:	00003097          	auipc	ra,0x3
   1031e:	922080e7          	jalr	-1758(ra) # 12c3c <__assert_func>
   10322:	0585                	addi	a1,a1,1
   10324:	058a                	slli	a1,a1,0x2
   10326:	952e                	add	a0,a0,a1
   10328:	411c                	lw	a5,0(a0)
   1032a:	953e                	add	a0,a0,a5
   1032c:	8082                	ret

0001032e <_ZN11flatbuffers5Table10GetPointerIPKNS_6VectorIlmEEmEET_t>:
   1032e:	1141                	addi	sp,sp,-16
   10330:	c422                	sw	s0,8(sp)
   10332:	c606                	sw	ra,12(sp)
   10334:	842a                	mv	s0,a0
   10336:	00000097          	auipc	ra,0x0
   1033a:	f26080e7          	jalr	-218(ra) # 1025c <_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt>
   1033e:	c901                	beqz	a0,1034e <_ZN11flatbuffers5Table10GetPointerIPKNS_6VectorIlmEEmEET_t+0x20>
   10340:	9522                	add	a0,a0,s0
   10342:	411c                	lw	a5,0(a0)
   10344:	953e                	add	a0,a0,a5
   10346:	40b2                	lw	ra,12(sp)
   10348:	4422                	lw	s0,8(sp)
   1034a:	0141                	addi	sp,sp,16
   1034c:	8082                	ret
   1034e:	4501                	li	a0,0
   10350:	bfdd                	j	10346 <_ZN11flatbuffers5Table10GetPointerIPKNS_6VectorIlmEEmEET_t+0x18>

00010352 <_ZNK6tflite16MicroInterpreter11inputs_sizeEv.isra.0>:
   10352:	1141                	addi	sp,sp,-16
   10354:	c606                	sw	ra,12(sp)
   10356:	00000097          	auipc	ra,0x0
   1035a:	f40080e7          	jalr	-192(ra) # 10296 <_ZNK6tflite5Model9subgraphsEv>
   1035e:	4581                	li	a1,0
   10360:	00000097          	auipc	ra,0x0
   10364:	f94080e7          	jalr	-108(ra) # 102f4 <_ZNK11flatbuffers6VectorINS_6OffsetIN6tflite8SubGraphEEEmE3GetEm>
   10368:	4599                	li	a1,6
   1036a:	00000097          	auipc	ra,0x0
   1036e:	fc4080e7          	jalr	-60(ra) # 1032e <_ZN11flatbuffers5Table10GetPointerIPKNS_6VectorIlmEEmEET_t>
   10372:	40b2                	lw	ra,12(sp)
   10374:	4108                	lw	a0,0(a0)
   10376:	0141                	addi	sp,sp,16
   10378:	8082                	ret

0001037a <_ZNK6tflite16MicroInterpreter12outputs_sizeEv.isra.0>:
   1037a:	1141                	addi	sp,sp,-16
   1037c:	c606                	sw	ra,12(sp)
   1037e:	00000097          	auipc	ra,0x0
   10382:	f18080e7          	jalr	-232(ra) # 10296 <_ZNK6tflite5Model9subgraphsEv>
   10386:	4581                	li	a1,0
   10388:	00000097          	auipc	ra,0x0
   1038c:	f6c080e7          	jalr	-148(ra) # 102f4 <_ZNK11flatbuffers6VectorINS_6OffsetIN6tflite8SubGraphEEEmE3GetEm>
   10390:	45a1                	li	a1,8
   10392:	00000097          	auipc	ra,0x0
   10396:	f9c080e7          	jalr	-100(ra) # 1032e <_ZN11flatbuffers5Table10GetPointerIPKNS_6VectorIlmEEmEET_t>
   1039a:	40b2                	lw	ra,12(sp)
   1039c:	4108                	lw	a0,0(a0)
   1039e:	0141                	addi	sp,sp,16
   103a0:	8082                	ret

000103a2 <_ZN6tflite16MicroInterpreter6outputEj>:
   103a2:	1101                	addi	sp,sp,-32
   103a4:	cc22                	sw	s0,24(sp)
   103a6:	842a                	mv	s0,a0
   103a8:	4108                	lw	a0,0(a0)
   103aa:	c62e                	sw	a1,12(sp)
   103ac:	ce06                	sw	ra,28(sp)
   103ae:	00000097          	auipc	ra,0x0
   103b2:	fcc080e7          	jalr	-52(ra) # 1037a <_ZNK6tflite16MicroInterpreter12outputs_sizeEv.isra.0>
   103b6:	45b2                	lw	a1,12(sp)
   103b8:	02a5e063          	bltu	a1,a0,103d8 <_ZN6tflite16MicroInterpreter6outputEj+0x36>
   103bc:	862a                	mv	a2,a0
   103be:	0000c517          	auipc	a0,0xc
   103c2:	f4250513          	addi	a0,a0,-190 # 1c300 <__extenddftf2+0x39c>
   103c6:	00001097          	auipc	ra,0x1
   103ca:	ac6080e7          	jalr	-1338(ra) # 10e8c <_Z11MicroPrintfPKcz>
   103ce:	4501                	li	a0,0
   103d0:	40f2                	lw	ra,28(sp)
   103d2:	4462                	lw	s0,24(sp)
   103d4:	6105                	addi	sp,sp,32
   103d6:	8082                	ret
   103d8:	0a442783          	lw	a5,164(s0)
   103dc:	058a                	slli	a1,a1,0x2
   103de:	97ae                	add	a5,a5,a1
   103e0:	4388                	lw	a0,0(a5)
   103e2:	b7fd                	j	103d0 <_ZN6tflite16MicroInterpreter6outputEj+0x2e>

000103e4 <_ZN6tflite16MicroInterpreter44PrepareNodeAndRegistrationDataFromFlatbufferEv>:
   103e4:	7159                	addi	sp,sp,-112
   103e6:	07050793          	addi	a5,a0,112
   103ea:	d2a6                	sw	s1,100(sp)
   103ec:	c8da                	sw	s6,80(sp)
   103ee:	de6e                	sw	s11,60(sp)
   103f0:	d686                	sw	ra,108(sp)
   103f2:	d4a2                	sw	s0,104(sp)
   103f4:	d0ca                	sw	s2,96(sp)
   103f6:	cece                	sw	s3,92(sp)
   103f8:	ccd2                	sw	s4,88(sp)
   103fa:	cad6                	sw	s5,84(sp)
   103fc:	c6de                	sw	s7,76(sp)
   103fe:	c4e2                	sw	s8,72(sp)
   10400:	c2e6                	sw	s9,68(sp)
   10402:	c0ea                	sw	s10,64(sp)
   10404:	84aa                	mv	s1,a0
   10406:	4b01                	li	s6,0
   10408:	c83e                	sw	a5,16(sp)
   1040a:	02000d93          	li	s11,32
   1040e:	4542                	lw	a0,16(sp)
   10410:	00000097          	auipc	ra,0x0
   10414:	7aa080e7          	jalr	1962(ra) # 10bba <_ZN6tflite21MicroInterpreterGraph12NumSubgraphsEv>
   10418:	00ab4463          	blt	s6,a0,10420 <_ZN6tflite16MicroInterpreter44PrepareNodeAndRegistrationDataFromFlatbufferEv+0x3c>
   1041c:	4501                	li	a0,0
   1041e:	a291                	j	10562 <_ZN6tflite16MicroInterpreter44PrepareNodeAndRegistrationDataFromFlatbufferEv+0x17e>
   10420:	4080                	lw	s0,0(s1)
   10422:	8522                	mv	a0,s0
   10424:	00000097          	auipc	ra,0x0
   10428:	e72080e7          	jalr	-398(ra) # 10296 <_ZNK6tflite5Model9subgraphsEv>
   1042c:	85da                	mv	a1,s6
   1042e:	00000097          	auipc	ra,0x0
   10432:	ec6080e7          	jalr	-314(ra) # 102f4 <_ZNK11flatbuffers6VectorINS_6OffsetIN6tflite8SubGraphEEEmE3GetEm>
   10436:	8a2a                	mv	s4,a0
   10438:	e911                	bnez	a0,1044c <_ZN6tflite16MicroInterpreter44PrepareNodeAndRegistrationDataFromFlatbufferEv+0x68>
   1043a:	0000c517          	auipc	a0,0xc
   1043e:	ef250513          	addi	a0,a0,-270 # 1c32c <__extenddftf2+0x3c8>
   10442:	00001097          	auipc	ra,0x1
   10446:	a4a080e7          	jalr	-1462(ra) # 10e8c <_Z11MicroPrintfPKcz>
   1044a:	a001                	j	1044a <_ZN6tflite16MicroInterpreter44PrepareNodeAndRegistrationDataFromFlatbufferEv+0x66>
   1044c:	4599                	li	a1,6
   1044e:	8522                	mv	a0,s0
   10450:	00000097          	auipc	ra,0x0
   10454:	e0c080e7          	jalr	-500(ra) # 1025c <_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt>
   10458:	4b81                	li	s7,0
   1045a:	c509                	beqz	a0,10464 <_ZN6tflite16MicroInterpreter44PrepareNodeAndRegistrationDataFromFlatbufferEv+0x80>
   1045c:	942a                	add	s0,s0,a0
   1045e:	00042b83          	lw	s7,0(s0)
   10462:	9ba2                	add	s7,s7,s0
   10464:	54e8                	lw	a0,108(s1)
   10466:	003b1d13          	slli	s10,s6,0x3
   1046a:	4981                	li	s3,0
   1046c:	00001097          	auipc	ra,0x1
   10470:	f44080e7          	jalr	-188(ra) # 113b0 <_ZN6tflite14MicroAllocator23GetBuiltinDataAllocatorEv>
   10474:	c62a                	sw	a0,12(sp)
   10476:	8552                	mv	a0,s4
   10478:	00001097          	auipc	ra,0x1
   1047c:	c34080e7          	jalr	-972(ra) # 110ac <_ZN6tflite20NumSubgraphOperatorsEPKNS_8SubGraphE>
   10480:	8caa                	mv	s9,a0
   10482:	01999463          	bne	s3,s9,1048a <_ZN6tflite16MicroInterpreter44PrepareNodeAndRegistrationDataFromFlatbufferEv+0xa6>
   10486:	0b05                	addi	s6,s6,1
   10488:	b759                	j	1040e <_ZN6tflite16MicroInterpreter44PrepareNodeAndRegistrationDataFromFlatbufferEv+0x2a>
   1048a:	45a9                	li	a1,10
   1048c:	8552                	mv	a0,s4
   1048e:	00000097          	auipc	ra,0x0
   10492:	dce080e7          	jalr	-562(ra) # 1025c <_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt>
   10496:	4401                	li	s0,0
   10498:	c501                	beqz	a0,104a0 <_ZN6tflite16MicroInterpreter44PrepareNodeAndRegistrationDataFromFlatbufferEv+0xbc>
   1049a:	9552                	add	a0,a0,s4
   1049c:	4100                	lw	s0,0(a0)
   1049e:	942a                	add	s0,s0,a0
   104a0:	401c                	lw	a5,0(s0)
   104a2:	02f9e463          	bltu	s3,a5,104ca <_ZN6tflite16MicroInterpreter44PrepareNodeAndRegistrationDataFromFlatbufferEv+0xe6>
   104a6:	0000c697          	auipc	a3,0xc
   104aa:	0000c617          	auipc	a2,0xc
   104ae:	0000c517          	auipc	a0,0xc
   104b2:	c8668693          	addi	a3,a3,-890 # 1c12c <__extenddftf2+0x1c8>
   104b6:	e8a60613          	addi	a2,a2,-374 # 1c334 <__extenddftf2+0x3d0>
   104ba:	0b000593          	li	a1,176
   104be:	d2e50513          	addi	a0,a0,-722 # 1c1dc <__extenddftf2+0x278>
   104c2:	00002097          	auipc	ra,0x2
   104c6:	77a080e7          	jalr	1914(ra) # 12c3c <__assert_func>
   104ca:	0985                	addi	s3,s3,1
   104cc:	00299793          	slli	a5,s3,0x2
   104d0:	943e                	add	s0,s0,a5
   104d2:	401c                	lw	a5,0(s0)
   104d4:	4591                	li	a1,4
   104d6:	943e                	add	s0,s0,a5
   104d8:	8522                	mv	a0,s0
   104da:	00000097          	auipc	ra,0x0
   104de:	d82080e7          	jalr	-638(ra) # 1025c <_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt>
   104e2:	4781                	li	a5,0
   104e4:	c119                	beqz	a0,104ea <_ZN6tflite16MicroInterpreter44PrepareNodeAndRegistrationDataFromFlatbufferEv+0x106>
   104e6:	9522                	add	a0,a0,s0
   104e8:	411c                	lw	a5,0(a0)
   104ea:	000ba703          	lw	a4,0(s7)
   104ee:	00e7ed63          	bltu	a5,a4,10508 <_ZN6tflite16MicroInterpreter44PrepareNodeAndRegistrationDataFromFlatbufferEv+0x124>
   104f2:	0000c517          	auipc	a0,0xc
   104f6:	85be                	mv	a1,a5
   104f8:	f1250513          	addi	a0,a0,-238 # 1c404 <__extenddftf2+0x4a0>
   104fc:	00001097          	auipc	ra,0x1
   10500:	990080e7          	jalr	-1648(ra) # 10e8c <_Z11MicroPrintfPKcz>
   10504:	4505                	li	a0,1
   10506:	a8b1                	j	10562 <_ZN6tflite16MicroInterpreter44PrepareNodeAndRegistrationDataFromFlatbufferEv+0x17e>
   10508:	00178913          	addi	s2,a5,1
   1050c:	090a                	slli	s2,s2,0x2
   1050e:	995e                	add	s2,s2,s7
   10510:	00092703          	lw	a4,0(s2)
   10514:	00599c13          	slli	s8,s3,0x5
   10518:	40cc                	lw	a1,4(s1)
   1051a:	993a                	add	s2,s2,a4
   1051c:	0804a703          	lw	a4,128(s1)
   10520:	1c01                	addi	s8,s8,-32
   10522:	854a                	mv	a0,s2
   10524:	976a                	add	a4,a4,s10
   10526:	4310                	lw	a2,0(a4)
   10528:	ca3e                	sw	a5,20(sp)
   1052a:	9662                	add	a2,a2,s8
   1052c:	0671                	addi	a2,a2,28
   1052e:	00001097          	auipc	ra,0x1
   10532:	982080e7          	jalr	-1662(ra) # 10eb0 <_ZN6tflite25GetRegistrationFromOpCodeEPKNS_12OperatorCodeERKNS_15MicroOpResolverEPPK16TFLMRegistration>
   10536:	47d2                	lw	a5,20(sp)
   10538:	8aaa                	mv	s5,a0
   1053a:	c139                	beqz	a0,10580 <_ZN6tflite16MicroInterpreter44PrepareNodeAndRegistrationDataFromFlatbufferEv+0x19c>
   1053c:	854a                	mv	a0,s2
   1053e:	00001097          	auipc	ra,0x1
   10542:	b00080e7          	jalr	-1280(ra) # 1103e <_ZN6tflite14GetBuiltinCodeEPKNS_12OperatorCodeE>
   10546:	00000097          	auipc	ra,0x0
   1054a:	d2e080e7          	jalr	-722(ra) # 10274 <_ZN6tflite23EnumNameBuiltinOperatorENS_15BuiltinOperatorE>
   1054e:	85aa                	mv	a1,a0
   10550:	0000c517          	auipc	a0,0xc
   10554:	ee050513          	addi	a0,a0,-288 # 1c430 <__extenddftf2+0x4cc>
   10558:	00001097          	auipc	ra,0x1
   1055c:	934080e7          	jalr	-1740(ra) # 10e8c <_Z11MicroPrintfPKcz>
   10560:	8556                	mv	a0,s5
   10562:	50b6                	lw	ra,108(sp)
   10564:	5426                	lw	s0,104(sp)
   10566:	5496                	lw	s1,100(sp)
   10568:	5906                	lw	s2,96(sp)
   1056a:	49f6                	lw	s3,92(sp)
   1056c:	4a66                	lw	s4,88(sp)
   1056e:	4ad6                	lw	s5,84(sp)
   10570:	4b46                	lw	s6,80(sp)
   10572:	4bb6                	lw	s7,76(sp)
   10574:	4c26                	lw	s8,72(sp)
   10576:	4c96                	lw	s9,68(sp)
   10578:	4d06                	lw	s10,64(sp)
   1057a:	5df2                	lw	s11,60(sp)
   1057c:	6165                	addi	sp,sp,112
   1057e:	8082                	ret
   10580:	0804a703          	lw	a4,128(s1)
   10584:	976a                	add	a4,a4,s10
   10586:	4318                	lw	a4,0(a4)
   10588:	9762                	add	a4,a4,s8
   1058a:	4f58                	lw	a4,28(a4)
   1058c:	e719                	bnez	a4,1059a <_ZN6tflite16MicroInterpreter44PrepareNodeAndRegistrationDataFromFlatbufferEv+0x1b6>
   1058e:	0000c517          	auipc	a0,0xc
   10592:	85be                	mv	a1,a5
   10594:	ed250513          	addi	a0,a0,-302 # 1c460 <__extenddftf2+0x4fc>
   10598:	b795                	j	104fc <_ZN6tflite16MicroInterpreter44PrepareNodeAndRegistrationDataFromFlatbufferEv+0x118>
   1059a:	01472903          	lw	s2,20(a4)
   1059e:	d602                	sw	zero,44(sp)
   105a0:	45b9                	li	a1,14
   105a2:	8522                	mv	a0,s0
   105a4:	0bb91563          	bne	s2,s11,1064e <_ZN6tflite16MicroInterpreter44PrepareNodeAndRegistrationDataFromFlatbufferEv+0x26a>
   105a8:	00000097          	auipc	ra,0x0
   105ac:	cb4080e7          	jalr	-844(ra) # 1025c <_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt>
   105b0:	e551                	bnez	a0,1063c <_ZN6tflite16MicroInterpreter44PrepareNodeAndRegistrationDataFromFlatbufferEv+0x258>
   105b2:	4801                	li	a6,0
   105b4:	4599                	li	a1,6
   105b6:	8522                	mv	a0,s0
   105b8:	ce42                	sw	a6,28(sp)
   105ba:	00000097          	auipc	ra,0x0
   105be:	d74080e7          	jalr	-652(ra) # 1032e <_ZN11flatbuffers5Table10GetPointerIPKNS_6VectorIlmEEmEET_t>
   105c2:	00001097          	auipc	ra,0x1
   105c6:	b72080e7          	jalr	-1166(ra) # 11134 <_ZN6tflite33FlatBufferVectorToTfLiteTypeArrayEPKN11flatbuffers6VectorIlmEE>
   105ca:	45a1                	li	a1,8
   105cc:	cc2a                	sw	a0,24(sp)
   105ce:	8522                	mv	a0,s0
   105d0:	00000097          	auipc	ra,0x0
   105d4:	d5e080e7          	jalr	-674(ra) # 1032e <_ZN11flatbuffers5Table10GetPointerIPKNS_6VectorIlmEEmEET_t>
   105d8:	00001097          	auipc	ra,0x1
   105dc:	b5c080e7          	jalr	-1188(ra) # 11134 <_ZN6tflite33FlatBufferVectorToTfLiteTypeArrayEPKN11flatbuffers6VectorIlmEE>
   105e0:	0804a683          	lw	a3,128(s1)
   105e4:	ca2a                	sw	a0,20(sp)
   105e6:	4581                	li	a1,0
   105e8:	96ea                	add	a3,a3,s10
   105ea:	0006a903          	lw	s2,0(a3)
   105ee:	4671                	li	a2,28
   105f0:	9962                	add	s2,s2,s8
   105f2:	854a                	mv	a0,s2
   105f4:	00006097          	auipc	ra,0x6
   105f8:	f32080e7          	jalr	-206(ra) # 16526 <memset>
   105fc:	47d2                	lw	a5,20(sp)
   105fe:	4762                	lw	a4,24(sp)
   10600:	4872                	lw	a6,28(sp)
   10602:	00f92223          	sw	a5,4(s2)
   10606:	57b2                	lw	a5,44(sp)
   10608:	00e92023          	sw	a4,0(s2)
   1060c:	01092a23          	sw	a6,20(s2)
   10610:	00f92823          	sw	a5,16(s2)
   10614:	01592c23          	sw	s5,24(s2)
   10618:	45d1                	li	a1,20
   1061a:	8522                	mv	a0,s0
   1061c:	00000097          	auipc	ra,0x0
   10620:	d12080e7          	jalr	-750(ra) # 1032e <_ZN11flatbuffers5Table10GetPointerIPKNS_6VectorIlmEEmEET_t>
   10624:	e4050fe3          	beqz	a0,10482 <_ZN6tflite16MicroInterpreter44PrepareNodeAndRegistrationDataFromFlatbufferEv+0x9e>
   10628:	411c                	lw	a5,0(a0)
   1062a:	e4078ce3          	beqz	a5,10482 <_ZN6tflite16MicroInterpreter44PrepareNodeAndRegistrationDataFromFlatbufferEv+0x9e>
   1062e:	00001097          	auipc	ra,0x1
   10632:	b06080e7          	jalr	-1274(ra) # 11134 <_ZN6tflite33FlatBufferVectorToTfLiteTypeArrayEPKN11flatbuffers6VectorIlmEE>
   10636:	00a92423          	sw	a0,8(s2)
   1063a:	b5a1                	j	10482 <_ZN6tflite16MicroInterpreter44PrepareNodeAndRegistrationDataFromFlatbufferEv+0x9e>
   1063c:	9522                	add	a0,a0,s0
   1063e:	411c                	lw	a5,0(a0)
   10640:	953e                	add	a0,a0,a5
   10642:	d925                	beqz	a0,105b2 <_ZN6tflite16MicroInterpreter44PrepareNodeAndRegistrationDataFromFlatbufferEv+0x1ce>
   10644:	00052a83          	lw	s5,0(a0)
   10648:	00450813          	addi	a6,a0,4
   1064c:	b7a5                	j	105b4 <_ZN6tflite16MicroInterpreter44PrepareNodeAndRegistrationDataFromFlatbufferEv+0x1d0>
   1064e:	00000097          	auipc	ra,0x0
   10652:	c0e080e7          	jalr	-1010(ra) # 1025c <_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt>
   10656:	c105                	beqz	a0,10676 <_ZN6tflite16MicroInterpreter44PrepareNodeAndRegistrationDataFromFlatbufferEv+0x292>
   10658:	9522                	add	a0,a0,s0
   1065a:	411c                	lw	a5,0(a0)
   1065c:	953e                	add	a0,a0,a5
   1065e:	cd01                	beqz	a0,10676 <_ZN6tflite16MicroInterpreter44PrepareNodeAndRegistrationDataFromFlatbufferEv+0x292>
   10660:	854a                	mv	a0,s2
   10662:	00000097          	auipc	ra,0x0
   10666:	c12080e7          	jalr	-1006(ra) # 10274 <_ZN6tflite23EnumNameBuiltinOperatorENS_15BuiltinOperatorE>
   1066a:	85aa                	mv	a1,a0
   1066c:	0000c517          	auipc	a0,0xc
   10670:	e1850513          	addi	a0,a0,-488 # 1c484 <__extenddftf2+0x520>
   10674:	b561                	j	104fc <_ZN6tflite16MicroInterpreter44PrepareNodeAndRegistrationDataFromFlatbufferEv+0x118>
   10676:	40c8                	lw	a0,4(s1)
   10678:	85ca                	mv	a1,s2
   1067a:	411c                	lw	a5,0(a0)
   1067c:	479c                	lw	a5,8(a5)
   1067e:	9782                	jalr	a5
   10680:	ed01                	bnez	a0,10698 <_ZN6tflite16MicroInterpreter44PrepareNodeAndRegistrationDataFromFlatbufferEv+0x2b4>
   10682:	854a                	mv	a0,s2
   10684:	00000097          	auipc	ra,0x0
   10688:	bf0080e7          	jalr	-1040(ra) # 10274 <_ZN6tflite23EnumNameBuiltinOperatorENS_15BuiltinOperatorE>
   1068c:	85aa                	mv	a1,a0
   1068e:	0000c517          	auipc	a0,0xc
   10692:	e3e50513          	addi	a0,a0,-450 # 1c4cc <__extenddftf2+0x568>
   10696:	b59d                	j	104fc <_ZN6tflite16MicroInterpreter44PrepareNodeAndRegistrationDataFromFlatbufferEv+0x118>
   10698:	4632                	lw	a2,12(sp)
   1069a:	1074                	addi	a3,sp,44
   1069c:	85a2                	mv	a1,s0
   1069e:	00001097          	auipc	ra,0x1
   106a2:	926080e7          	jalr	-1754(ra) # 10fc4 <_ZN6tflite24CallBuiltinParseFunctionEPF12TfLiteStatusPKNS_8OperatorEPNS_13ErrorReporterEPNS_20BuiltinDataAllocatorEPPvES3_S7_S9_>
   106a6:	d511                	beqz	a0,105b2 <_ZN6tflite16MicroInterpreter44PrepareNodeAndRegistrationDataFromFlatbufferEv+0x1ce>
   106a8:	bd6d                	j	10562 <_ZN6tflite16MicroInterpreter44PrepareNodeAndRegistrationDataFromFlatbufferEv+0x17e>

000106aa <_ZN6tflite16MicroInterpreter5ResetEv>:
   106aa:	1141                	addi	sp,sp,-16
   106ac:	c422                	sw	s0,8(sp)
   106ae:	07050413          	addi	s0,a0,112
   106b2:	8522                	mv	a0,s0
   106b4:	c606                	sw	ra,12(sp)
   106b6:	00000097          	auipc	ra,0x0
   106ba:	3a2080e7          	jalr	930(ra) # 10a58 <_ZN6tflite21MicroInterpreterGraph14ResetSubgraphsEv>
   106be:	e909                	bnez	a0,106d0 <_ZN6tflite16MicroInterpreter5ResetEv+0x26>
   106c0:	8522                	mv	a0,s0
   106c2:	4422                	lw	s0,8(sp)
   106c4:	40b2                	lw	ra,12(sp)
   106c6:	0141                	addi	sp,sp,16
   106c8:	00000317          	auipc	t1,0x0
   106cc:	62a30067          	jr	1578(t1) # 10cf2 <_ZN6tflite21MicroInterpreterGraph20ResetVariableTensorsEv>
   106d0:	40b2                	lw	ra,12(sp)
   106d2:	4422                	lw	s0,8(sp)
   106d4:	0141                	addi	sp,sp,16
   106d6:	8082                	ret

000106d8 <_ZN6tflite16MicroInterpreter15AllocateTensorsEv>:
   106d8:	7139                	addi	sp,sp,-64
   106da:	dc22                	sw	s0,56(sp)
   106dc:	410c                	lw	a1,0(a0)
   106de:	842a                	mv	s0,a0
   106e0:	5568                	lw	a0,108(a0)
   106e2:	de06                	sw	ra,60(sp)
   106e4:	da26                	sw	s1,52(sp)
   106e6:	d84a                	sw	s2,48(sp)
   106e8:	d64e                	sw	s3,44(sp)
   106ea:	d452                	sw	s4,40(sp)
   106ec:	d256                	sw	s5,36(sp)
   106ee:	d05a                	sw	s6,32(sp)
   106f0:	ce5e                	sw	s7,28(sp)
   106f2:	cc62                	sw	s8,24(sp)
   106f4:	00001097          	auipc	ra,0x1
   106f8:	b9c080e7          	jalr	-1124(ra) # 11290 <_ZN6tflite14MicroAllocator20StartModelAllocationEPKNS_5ModelE>
   106fc:	e915                	bnez	a0,10730 <_ZN6tflite16MicroInterpreter15AllocateTensorsEv+0x58>
   106fe:	0000c517          	auipc	a0,0xc
   10702:	dee50513          	addi	a0,a0,-530 # 1c4ec <__extenddftf2+0x588>
   10706:	00000097          	auipc	ra,0x0
   1070a:	786080e7          	jalr	1926(ra) # 10e8c <_Z11MicroPrintfPKcz>
   1070e:	4785                	li	a5,1
   10710:	08f42c23          	sw	a5,152(s0)
   10714:	4485                	li	s1,1
   10716:	50f2                	lw	ra,60(sp)
   10718:	5462                	lw	s0,56(sp)
   1071a:	5942                	lw	s2,48(sp)
   1071c:	59b2                	lw	s3,44(sp)
   1071e:	5a22                	lw	s4,40(sp)
   10720:	5a92                	lw	s5,36(sp)
   10722:	5b02                	lw	s6,32(sp)
   10724:	4bf2                	lw	s7,28(sp)
   10726:	4c62                	lw	s8,24(sp)
   10728:	8526                	mv	a0,s1
   1072a:	54d2                	lw	s1,52(sp)
   1072c:	6121                	addi	sp,sp,64
   1072e:	8082                	ret
   10730:	07040913          	addi	s2,s0,112
   10734:	85aa                	mv	a1,a0
   10736:	854a                	mv	a0,s2
   10738:	00000097          	auipc	ra,0x0
   1073c:	5b6080e7          	jalr	1462(ra) # 10cee <_ZN6tflite21MicroInterpreterGraph22SetSubgraphAllocationsEPNS_19SubgraphAllocationsE>
   10740:	8522                	mv	a0,s0
   10742:	00000097          	auipc	ra,0x0
   10746:	ca2080e7          	jalr	-862(ra) # 103e4 <_ZN6tflite16MicroInterpreter44PrepareNodeAndRegistrationDataFromFlatbufferEv>
   1074a:	84aa                	mv	s1,a0
   1074c:	f569                	bnez	a0,10716 <_ZN6tflite16MicroInterpreter15AllocateTensorsEv+0x3e>
   1074e:	0a840993          	addi	s3,s0,168
   10752:	4581                	li	a1,0
   10754:	854e                	mv	a0,s3
   10756:	00000097          	auipc	ra,0x0
   1075a:	264080e7          	jalr	612(ra) # 109ba <_ZN6tflite23MicroInterpreterContext19SetInterpreterStateENS0_16InterpreterStateE>
   1075e:	854a                	mv	a0,s2
   10760:	00000097          	auipc	ra,0x0
   10764:	25e080e7          	jalr	606(ra) # 109be <_ZN6tflite21MicroInterpreterGraph13InitSubgraphsEv>
   10768:	84aa                	mv	s1,a0
   1076a:	f555                	bnez	a0,10716 <_ZN6tflite16MicroInterpreter15AllocateTensorsEv+0x3e>
   1076c:	4585                	li	a1,1
   1076e:	854e                	mv	a0,s3
   10770:	00000097          	auipc	ra,0x0
   10774:	24a080e7          	jalr	586(ra) # 109ba <_ZN6tflite23MicroInterpreterContext19SetInterpreterStateENS0_16InterpreterStateE>
   10778:	854a                	mv	a0,s2
   1077a:	00000097          	auipc	ra,0x0
   1077e:	38a080e7          	jalr	906(ra) # 10b04 <_ZN6tflite21MicroInterpreterGraph16PrepareSubgraphsEv>
   10782:	84aa                	mv	s1,a0
   10784:	f949                	bnez	a0,10716 <_ZN6tflite16MicroInterpreter15AllocateTensorsEv+0x3e>
   10786:	4589                	li	a1,2
   10788:	854e                	mv	a0,s3
   1078a:	00000097          	auipc	ra,0x0
   1078e:	230080e7          	jalr	560(ra) # 109ba <_ZN6tflite23MicroInterpreterContext19SetInterpreterStateENS0_16InterpreterStateE>
   10792:	08042603          	lw	a2,128(s0)
   10796:	400c                	lw	a1,0(s0)
   10798:	5468                	lw	a0,108(s0)
   1079a:	09c40693          	addi	a3,s0,156
   1079e:	00001097          	auipc	ra,0x1
   107a2:	a6e080e7          	jalr	-1426(ra) # 1120c <_ZN6tflite14MicroAllocator21FinishModelAllocationEPKNS_5ModelEPNS_19SubgraphAllocationsEPPNS_19ScratchBufferHandleE>
   107a6:	84aa                	mv	s1,a0
   107a8:	f53d                	bnez	a0,10716 <_ZN6tflite16MicroInterpreter15AllocateTensorsEv+0x3e>
   107aa:	09c42583          	lw	a1,156(s0)
   107ae:	854e                	mv	a0,s3
   107b0:	00000097          	auipc	ra,0x0
   107b4:	206080e7          	jalr	518(ra) # 109b6 <_ZN6tflite23MicroInterpreterContext23SetScratchBufferHandlesEPNS_19ScratchBufferHandleE>
   107b8:	06c42903          	lw	s2,108(s0)
   107bc:	4008                	lw	a0,0(s0)
   107be:	00092783          	lw	a5,0(s2)
   107c2:	01c7aa03          	lw	s4,28(a5)
   107c6:	00000097          	auipc	ra,0x0
   107ca:	b8c080e7          	jalr	-1140(ra) # 10352 <_ZNK6tflite16MicroInterpreter11inputs_sizeEv.isra.0>
   107ce:	00251593          	slli	a1,a0,0x2
   107d2:	854a                	mv	a0,s2
   107d4:	9a02                	jalr	s4
   107d6:	0aa42023          	sw	a0,160(s0)
   107da:	4901                	li	s2,0
   107dc:	e159                	bnez	a0,10862 <_ZN6tflite16MicroInterpreter15AllocateTensorsEv+0x18a>
   107de:	4008                	lw	a0,0(s0)
   107e0:	00000097          	auipc	ra,0x0
   107e4:	b72080e7          	jalr	-1166(ra) # 10352 <_ZNK6tflite16MicroInterpreter11inputs_sizeEv.isra.0>
   107e8:	00251593          	slli	a1,a0,0x2
   107ec:	0000c517          	auipc	a0,0xc
   107f0:	d2450513          	addi	a0,a0,-732 # 1c510 <__extenddftf2+0x5ac>
   107f4:	00000097          	auipc	ra,0x0
   107f8:	698080e7          	jalr	1688(ra) # 10e8c <_Z11MicroPrintfPKcz>
   107fc:	bf21                	j	10714 <_ZN6tflite16MicroInterpreter15AllocateTensorsEv+0x3c>
   107fe:	08042603          	lw	a2,128(s0)
   10802:	8556                	mv	a0,s5
   10804:	0007ac03          	lw	s8,0(a5)
   10808:	c632                	sw	a2,12(sp)
   1080a:	00000097          	auipc	ra,0x0
   1080e:	a8c080e7          	jalr	-1396(ra) # 10296 <_ZNK6tflite5Model9subgraphsEv>
   10812:	4581                	li	a1,0
   10814:	00000097          	auipc	ra,0x0
   10818:	ae0080e7          	jalr	-1312(ra) # 102f4 <_ZNK11flatbuffers6VectorINS_6OffsetIN6tflite8SubGraphEEEmE3GetEm>
   1081c:	4599                	li	a1,6
   1081e:	00000097          	auipc	ra,0x0
   10822:	b10080e7          	jalr	-1264(ra) # 1032e <_ZN11flatbuffers5Table10GetPointerIPKNS_6VectorIlmEEmEET_t>
   10826:	85ca                	mv	a1,s2
   10828:	00000097          	auipc	ra,0x0
   1082c:	a94080e7          	jalr	-1388(ra) # 102bc <_ZNK11flatbuffers6VectorIlmE3GetEm>
   10830:	4632                	lw	a2,12(sp)
   10832:	86aa                	mv	a3,a0
   10834:	4701                	li	a4,0
   10836:	85d6                	mv	a1,s5
   10838:	8552                	mv	a0,s4
   1083a:	0a042b83          	lw	s7,160(s0)
   1083e:	9c02                	jalr	s8
   10840:	0a042783          	lw	a5,160(s0)
   10844:	00291b13          	slli	s6,s2,0x2
   10848:	9bda                	add	s7,s7,s6
   1084a:	00aba023          	sw	a0,0(s7)
   1084e:	97da                	add	a5,a5,s6
   10850:	439c                	lw	a5,0(a5)
   10852:	e799                	bnez	a5,10860 <_ZN6tflite16MicroInterpreter15AllocateTensorsEv+0x188>
   10854:	0000c517          	auipc	a0,0xc
   10858:	85ca                	mv	a1,s2
   1085a:	d0850513          	addi	a0,a0,-760 # 1c55c <__extenddftf2+0x5f8>
   1085e:	bf59                	j	107f4 <_ZN6tflite16MicroInterpreter15AllocateTensorsEv+0x11c>
   10860:	0905                	addi	s2,s2,1
   10862:	00042a83          	lw	s5,0(s0)
   10866:	8556                	mv	a0,s5
   10868:	00000097          	auipc	ra,0x0
   1086c:	aea080e7          	jalr	-1302(ra) # 10352 <_ZNK6tflite16MicroInterpreter11inputs_sizeEv.isra.0>
   10870:	06c42a03          	lw	s4,108(s0)
   10874:	000a2783          	lw	a5,0(s4)
   10878:	f8a963e3          	bltu	s2,a0,107fe <_ZN6tflite16MicroInterpreter15AllocateTensorsEv+0x126>
   1087c:	01c7a903          	lw	s2,28(a5)
   10880:	8556                	mv	a0,s5
   10882:	00000097          	auipc	ra,0x0
   10886:	af8080e7          	jalr	-1288(ra) # 1037a <_ZNK6tflite16MicroInterpreter12outputs_sizeEv.isra.0>
   1088a:	00251593          	slli	a1,a0,0x2
   1088e:	8552                	mv	a0,s4
   10890:	9902                	jalr	s2
   10892:	0aa42223          	sw	a0,164(s0)
   10896:	e159                	bnez	a0,1091c <_ZN6tflite16MicroInterpreter15AllocateTensorsEv+0x244>
   10898:	4008                	lw	a0,0(s0)
   1089a:	00000097          	auipc	ra,0x0
   1089e:	ae0080e7          	jalr	-1312(ra) # 1037a <_ZNK6tflite16MicroInterpreter12outputs_sizeEv.isra.0>
   108a2:	00251593          	slli	a1,a0,0x2
   108a6:	0000c517          	auipc	a0,0xc
   108aa:	cde50513          	addi	a0,a0,-802 # 1c584 <__extenddftf2+0x620>
   108ae:	b799                	j	107f4 <_ZN6tflite16MicroInterpreter15AllocateTensorsEv+0x11c>
   108b0:	06c42b83          	lw	s7,108(s0)
   108b4:	08042603          	lw	a2,128(s0)
   108b8:	8552                	mv	a0,s4
   108ba:	000ba783          	lw	a5,0(s7)
   108be:	c632                	sw	a2,12(sp)
   108c0:	00249913          	slli	s2,s1,0x2
   108c4:	0007ac03          	lw	s8,0(a5)
   108c8:	00000097          	auipc	ra,0x0
   108cc:	9ce080e7          	jalr	-1586(ra) # 10296 <_ZNK6tflite5Model9subgraphsEv>
   108d0:	4581                	li	a1,0
   108d2:	00000097          	auipc	ra,0x0
   108d6:	a22080e7          	jalr	-1502(ra) # 102f4 <_ZNK11flatbuffers6VectorINS_6OffsetIN6tflite8SubGraphEEEmE3GetEm>
   108da:	45a1                	li	a1,8
   108dc:	00000097          	auipc	ra,0x0
   108e0:	a52080e7          	jalr	-1454(ra) # 1032e <_ZN11flatbuffers5Table10GetPointerIPKNS_6VectorIlmEEmEET_t>
   108e4:	85a6                	mv	a1,s1
   108e6:	00000097          	auipc	ra,0x0
   108ea:	9d6080e7          	jalr	-1578(ra) # 102bc <_ZNK11flatbuffers6VectorIlmE3GetEm>
   108ee:	4632                	lw	a2,12(sp)
   108f0:	86aa                	mv	a3,a0
   108f2:	4701                	li	a4,0
   108f4:	85d2                	mv	a1,s4
   108f6:	855e                	mv	a0,s7
   108f8:	0a442b03          	lw	s6,164(s0)
   108fc:	9c02                	jalr	s8
   108fe:	0a442783          	lw	a5,164(s0)
   10902:	9b4a                	add	s6,s6,s2
   10904:	00ab2023          	sw	a0,0(s6)
   10908:	97ca                	add	a5,a5,s2
   1090a:	439c                	lw	a5,0(a5)
   1090c:	e799                	bnez	a5,1091a <_ZN6tflite16MicroInterpreter15AllocateTensorsEv+0x242>
   1090e:	0000c517          	auipc	a0,0xc
   10912:	85a6                	mv	a1,s1
   10914:	cc250513          	addi	a0,a0,-830 # 1c5d0 <__extenddftf2+0x66c>
   10918:	bdf1                	j	107f4 <_ZN6tflite16MicroInterpreter15AllocateTensorsEv+0x11c>
   1091a:	0485                	addi	s1,s1,1
   1091c:	00042a03          	lw	s4,0(s0)
   10920:	8552                	mv	a0,s4
   10922:	00000097          	auipc	ra,0x0
   10926:	a58080e7          	jalr	-1448(ra) # 1037a <_ZNK6tflite16MicroInterpreter12outputs_sizeEv.isra.0>
   1092a:	f8a4e3e3          	bltu	s1,a0,108b0 <_ZN6tflite16MicroInterpreter15AllocateTensorsEv+0x1d8>
   1092e:	8522                	mv	a0,s0
   10930:	00000097          	auipc	ra,0x0
   10934:	d7a080e7          	jalr	-646(ra) # 106aa <_ZN6tflite16MicroInterpreter5ResetEv>
   10938:	84aa                	mv	s1,a0
   1093a:	dc051ee3          	bnez	a0,10716 <_ZN6tflite16MicroInterpreter15AllocateTensorsEv+0x3e>
   1093e:	4785                	li	a5,1
   10940:	08f40a23          	sb	a5,148(s0)
   10944:	458d                	li	a1,3
   10946:	854e                	mv	a0,s3
   10948:	00000097          	auipc	ra,0x0
   1094c:	072080e7          	jalr	114(ra) # 109ba <_ZN6tflite23MicroInterpreterContext19SetInterpreterStateENS0_16InterpreterStateE>
   10950:	b3d9                	j	10716 <_ZN6tflite16MicroInterpreter15AllocateTensorsEv+0x3e>

00010952 <_ZN6tflite16MicroInterpreter6InvokeEv>:
   10952:	09852783          	lw	a5,152(a0)
   10956:	1141                	addi	sp,sp,-16
   10958:	c606                	sw	ra,12(sp)
   1095a:	c422                	sw	s0,8(sp)
   1095c:	cf91                	beqz	a5,10978 <_ZN6tflite16MicroInterpreter6InvokeEv+0x26>
   1095e:	0000c517          	auipc	a0,0xc
   10962:	c9a50513          	addi	a0,a0,-870 # 1c5f8 <__extenddftf2+0x694>
   10966:	00000097          	auipc	ra,0x0
   1096a:	526080e7          	jalr	1318(ra) # 10e8c <_Z11MicroPrintfPKcz>
   1096e:	4505                	li	a0,1
   10970:	40b2                	lw	ra,12(sp)
   10972:	4422                	lw	s0,8(sp)
   10974:	0141                	addi	sp,sp,16
   10976:	8082                	ret
   10978:	09454783          	lbu	a5,148(a0)
   1097c:	842a                	mv	s0,a0
   1097e:	cb99                	beqz	a5,10994 <_ZN6tflite16MicroInterpreter6InvokeEv+0x42>
   10980:	07040513          	addi	a0,s0,112
   10984:	4422                	lw	s0,8(sp)
   10986:	40b2                	lw	ra,12(sp)
   10988:	4581                	li	a1,0
   1098a:	0141                	addi	sp,sp,16
   1098c:	00000317          	auipc	t1,0x0
   10990:	25430067          	jr	596(t1) # 10be0 <_ZN6tflite21MicroInterpreterGraph14InvokeSubgraphEi>
   10994:	00000097          	auipc	ra,0x0
   10998:	d44080e7          	jalr	-700(ra) # 106d8 <_ZN6tflite16MicroInterpreter15AllocateTensorsEv>
   1099c:	d175                	beqz	a0,10980 <_ZN6tflite16MicroInterpreter6InvokeEv+0x2e>
   1099e:	bfc9                	j	10970 <_ZN6tflite16MicroInterpreter6InvokeEv+0x1e>

000109a0 <_Z9AbortImplv>:
   109a0:	0000c517          	auipc	a0,0xc
   109a4:	1141                	addi	sp,sp,-16
   109a6:	98c50513          	addi	a0,a0,-1652 # 1c32c <__extenddftf2+0x3c8>
   109aa:	c606                	sw	ra,12(sp)
   109ac:	00000097          	auipc	ra,0x0
   109b0:	4e0080e7          	jalr	1248(ra) # 10e8c <_Z11MicroPrintfPKcz>
   109b4:	a001                	j	109b4 <_Z9AbortImplv+0x14>

000109b6 <_ZN6tflite23MicroInterpreterContext23SetScratchBufferHandlesEPNS_19ScratchBufferHandleE>:
   109b6:	c94c                	sw	a1,20(a0)
   109b8:	8082                	ret

000109ba <_ZN6tflite23MicroInterpreterContext19SetInterpreterStateENS0_16InterpreterStateE>:
   109ba:	c90c                	sw	a1,16(a0)
   109bc:	8082                	ret

000109be <_ZN6tflite21MicroInterpreterGraph13InitSubgraphsEv>:
   109be:	7179                	addi	sp,sp,-48
   109c0:	cc52                	sw	s4,24(sp)
   109c2:	ca56                	sw	s5,20(sp)
   109c4:	01852a03          	lw	s4,24(a0)
   109c8:	01452a83          	lw	s5,20(a0)
   109cc:	d422                	sw	s0,40(sp)
   109ce:	d04a                	sw	s2,32(sp)
   109d0:	c85a                	sw	s6,16(sp)
   109d2:	d606                	sw	ra,44(sp)
   109d4:	d226                	sw	s1,36(sp)
   109d6:	ce4e                	sw	s3,28(sp)
   109d8:	c65e                	sw	s7,12(sp)
   109da:	842a                	mv	s0,a0
   109dc:	4901                	li	s2,0
   109de:	02000b13          	li	s6,32
   109e2:	501c                	lw	a5,32(s0)
   109e4:	439c                	lw	a5,0(a5)
   109e6:	02f96263          	bltu	s2,a5,10a0a <_ZN6tflite21MicroInterpreterGraph13InitSubgraphsEv+0x4c>
   109ea:	01542a23          	sw	s5,20(s0)
   109ee:	01442c23          	sw	s4,24(s0)
   109f2:	50b2                	lw	ra,44(sp)
   109f4:	5422                	lw	s0,40(sp)
   109f6:	5492                	lw	s1,36(sp)
   109f8:	5902                	lw	s2,32(sp)
   109fa:	49f2                	lw	s3,28(sp)
   109fc:	4a62                	lw	s4,24(sp)
   109fe:	4ad2                	lw	s5,20(sp)
   10a00:	4b42                	lw	s6,16(sp)
   10a02:	4bb2                	lw	s7,12(sp)
   10a04:	4501                	li	a0,0
   10a06:	6145                	addi	sp,sp,48
   10a08:	8082                	ret
   10a0a:	4408                	lw	a0,8(s0)
   10a0c:	01242a23          	sw	s2,20(s0)
   10a10:	85ca                	mv	a1,s2
   10a12:	00000097          	auipc	ra,0x0
   10a16:	6c4080e7          	jalr	1732(ra) # 110d6 <_ZN6tflite20NumSubgraphOperatorsEPKNS_5ModelEi>
   10a1a:	89aa                	mv	s3,a0
   10a1c:	00391b93          	slli	s7,s2,0x3
   10a20:	4781                	li	a5,0
   10a22:	cc1c                	sw	a5,24(s0)
   10a24:	0137e463          	bltu	a5,s3,10a2c <_ZN6tflite21MicroInterpreterGraph13InitSubgraphsEv+0x6e>
   10a28:	0905                	addi	s2,s2,1
   10a2a:	bf65                	j	109e2 <_ZN6tflite21MicroInterpreterGraph13InitSubgraphsEv+0x24>
   10a2c:	4818                	lw	a4,16(s0)
   10a2e:	0796                	slli	a5,a5,0x5
   10a30:	975e                	add	a4,a4,s7
   10a32:	4304                	lw	s1,0(a4)
   10a34:	94be                	add	s1,s1,a5
   10a36:	4cdc                	lw	a5,28(s1)
   10a38:	4bd8                	lw	a4,20(a5)
   10a3a:	01671c63          	bne	a4,s6,10a52 <_ZN6tflite21MicroInterpreterGraph13InitSubgraphsEv+0x94>
   10a3e:	48cc                	lw	a1,20(s1)
   10a40:	4c90                	lw	a2,24(s1)
   10a42:	439c                	lw	a5,0(a5)
   10a44:	c781                	beqz	a5,10a4c <_ZN6tflite21MicroInterpreterGraph13InitSubgraphsEv+0x8e>
   10a46:	4048                	lw	a0,4(s0)
   10a48:	9782                	jalr	a5
   10a4a:	c4c8                	sw	a0,12(s1)
   10a4c:	4c1c                	lw	a5,24(s0)
   10a4e:	0785                	addi	a5,a5,1
   10a50:	bfc9                	j	10a22 <_ZN6tflite21MicroInterpreterGraph13InitSubgraphsEv+0x64>
   10a52:	488c                	lw	a1,16(s1)
   10a54:	4601                	li	a2,0
   10a56:	b7f5                	j	10a42 <_ZN6tflite21MicroInterpreterGraph13InitSubgraphsEv+0x84>

00010a58 <_ZN6tflite21MicroInterpreterGraph14ResetSubgraphsEv>:
   10a58:	1101                	addi	sp,sp,-32
   10a5a:	c64e                	sw	s3,12(sp)
   10a5c:	c452                	sw	s4,8(sp)
   10a5e:	01852983          	lw	s3,24(a0)
   10a62:	01452a03          	lw	s4,20(a0)
   10a66:	cc22                	sw	s0,24(sp)
   10a68:	ca26                	sw	s1,20(sp)
   10a6a:	ce06                	sw	ra,28(sp)
   10a6c:	c84a                	sw	s2,16(sp)
   10a6e:	c256                	sw	s5,4(sp)
   10a70:	842a                	mv	s0,a0
   10a72:	4481                	li	s1,0
   10a74:	501c                	lw	a5,32(s0)
   10a76:	439c                	lw	a5,0(a5)
   10a78:	02f4e063          	bltu	s1,a5,10a98 <_ZN6tflite21MicroInterpreterGraph14ResetSubgraphsEv+0x40>
   10a7c:	01442a23          	sw	s4,20(s0)
   10a80:	01342c23          	sw	s3,24(s0)
   10a84:	40f2                	lw	ra,28(sp)
   10a86:	4462                	lw	s0,24(sp)
   10a88:	44d2                	lw	s1,20(sp)
   10a8a:	4942                	lw	s2,16(sp)
   10a8c:	49b2                	lw	s3,12(sp)
   10a8e:	4a22                	lw	s4,8(sp)
   10a90:	4a92                	lw	s5,4(sp)
   10a92:	4501                	li	a0,0
   10a94:	6105                	addi	sp,sp,32
   10a96:	8082                	ret
   10a98:	4408                	lw	a0,8(s0)
   10a9a:	c844                	sw	s1,20(s0)
   10a9c:	85a6                	mv	a1,s1
   10a9e:	00000097          	auipc	ra,0x0
   10aa2:	638080e7          	jalr	1592(ra) # 110d6 <_ZN6tflite20NumSubgraphOperatorsEPKNS_5ModelEi>
   10aa6:	892a                	mv	s2,a0
   10aa8:	00349a93          	slli	s5,s1,0x3
   10aac:	4781                	li	a5,0
   10aae:	cc1c                	sw	a5,24(s0)
   10ab0:	0127e463          	bltu	a5,s2,10ab8 <_ZN6tflite21MicroInterpreterGraph14ResetSubgraphsEv+0x60>
   10ab4:	0485                	addi	s1,s1,1
   10ab6:	bf7d                	j	10a74 <_ZN6tflite21MicroInterpreterGraph14ResetSubgraphsEv+0x1c>
   10ab8:	4818                	lw	a4,16(s0)
   10aba:	0796                	slli	a5,a5,0x5
   10abc:	9756                	add	a4,a4,s5
   10abe:	4318                	lw	a4,0(a4)
   10ac0:	97ba                	add	a5,a5,a4
   10ac2:	4fd8                	lw	a4,28(a5)
   10ac4:	c711                	beqz	a4,10ad0 <_ZN6tflite21MicroInterpreterGraph14ResetSubgraphsEv+0x78>
   10ac6:	4b18                	lw	a4,16(a4)
   10ac8:	c701                	beqz	a4,10ad0 <_ZN6tflite21MicroInterpreterGraph14ResetSubgraphsEv+0x78>
   10aca:	47cc                	lw	a1,12(a5)
   10acc:	4048                	lw	a0,4(s0)
   10ace:	9702                	jalr	a4
   10ad0:	4c1c                	lw	a5,24(s0)
   10ad2:	0785                	addi	a5,a5,1
   10ad4:	bfe9                	j	10aae <_ZN6tflite21MicroInterpreterGraph14ResetSubgraphsEv+0x56>

00010ad6 <_ZN6tflite12_GLOBAL__N_122OpNameFromRegistrationEPK16TFLMRegistration>:
   10ad6:	495c                	lw	a5,20(a0)
   10ad8:	02000713          	li	a4,32
   10adc:	00e79463          	bne	a5,a4,10ae4 <_ZN6tflite12_GLOBAL__N_122OpNameFromRegistrationEPK16TFLMRegistration+0xe>
   10ae0:	4d08                	lw	a0,24(a0)
   10ae2:	8082                	ret
   10ae4:	0000c517          	auipc	a0,0xc
   10ae8:	0ce00713          	li	a4,206
   10aec:	99c50513          	addi	a0,a0,-1636 # 1c480 <__extenddftf2+0x51c>
   10af0:	00f76963          	bltu	a4,a5,10b02 <_ZN6tflite12_GLOBAL__N_122OpNameFromRegistrationEPK16TFLMRegistration+0x2c>
   10af4:	0000d717          	auipc	a4,0xd
   10af8:	078a                	slli	a5,a5,0x2
   10afa:	a3070713          	addi	a4,a4,-1488 # 1d524 <_ZZN6tflite24EnumNamesBuiltinOperatorEvE5names>
   10afe:	97ba                	add	a5,a5,a4
   10b00:	4388                	lw	a0,0(a5)
   10b02:	8082                	ret

00010b04 <_ZN6tflite21MicroInterpreterGraph16PrepareSubgraphsEv>:
   10b04:	7179                	addi	sp,sp,-48
   10b06:	ce4e                	sw	s3,28(sp)
   10b08:	cc52                	sw	s4,24(sp)
   10b0a:	01852983          	lw	s3,24(a0)
   10b0e:	01452a03          	lw	s4,20(a0)
   10b12:	d422                	sw	s0,40(sp)
   10b14:	d226                	sw	s1,36(sp)
   10b16:	d606                	sw	ra,44(sp)
   10b18:	d04a                	sw	s2,32(sp)
   10b1a:	ca56                	sw	s5,20(sp)
   10b1c:	c85a                	sw	s6,16(sp)
   10b1e:	842a                	mv	s0,a0
   10b20:	4481                	li	s1,0
   10b22:	501c                	lw	a5,32(s0)
   10b24:	439c                	lw	a5,0(a5)
   10b26:	00f4e863          	bltu	s1,a5,10b36 <_ZN6tflite21MicroInterpreterGraph16PrepareSubgraphsEv+0x32>
   10b2a:	01442a23          	sw	s4,20(s0)
   10b2e:	01342c23          	sw	s3,24(s0)
   10b32:	4501                	li	a0,0
   10b34:	a085                	j	10b94 <_ZN6tflite21MicroInterpreterGraph16PrepareSubgraphsEv+0x90>
   10b36:	4408                	lw	a0,8(s0)
   10b38:	85a6                	mv	a1,s1
   10b3a:	c844                	sw	s1,20(s0)
   10b3c:	00000097          	auipc	ra,0x0
   10b40:	59a080e7          	jalr	1434(ra) # 110d6 <_ZN6tflite20NumSubgraphOperatorsEPKNS_5ModelEi>
   10b44:	892a                	mv	s2,a0
   10b46:	00349a93          	slli	s5,s1,0x3
   10b4a:	4581                	li	a1,0
   10b4c:	cc0c                	sw	a1,24(s0)
   10b4e:	0125e463          	bltu	a1,s2,10b56 <_ZN6tflite21MicroInterpreterGraph16PrepareSubgraphsEv+0x52>
   10b52:	0485                	addi	s1,s1,1
   10b54:	b7f9                	j	10b22 <_ZN6tflite21MicroInterpreterGraph16PrepareSubgraphsEv+0x1e>
   10b56:	481c                	lw	a5,16(s0)
   10b58:	0596                	slli	a1,a1,0x5
   10b5a:	97d6                	add	a5,a5,s5
   10b5c:	439c                	lw	a5,0(a5)
   10b5e:	95be                	add	a1,a1,a5
   10b60:	01c5ab03          	lw	s6,28(a1)
   10b64:	008b2783          	lw	a5,8(s6)
   10b68:	c3a1                	beqz	a5,10ba8 <_ZN6tflite21MicroInterpreterGraph16PrepareSubgraphsEv+0xa4>
   10b6a:	4048                	lw	a0,4(s0)
   10b6c:	9782                	jalr	a5
   10b6e:	cd0d                	beqz	a0,10ba8 <_ZN6tflite21MicroInterpreterGraph16PrepareSubgraphsEv+0xa4>
   10b70:	c62a                	sw	a0,12(sp)
   10b72:	855a                	mv	a0,s6
   10b74:	00000097          	auipc	ra,0x0
   10b78:	f62080e7          	jalr	-158(ra) # 10ad6 <_ZN6tflite12_GLOBAL__N_122OpNameFromRegistrationEPK16TFLMRegistration>
   10b7c:	46b2                	lw	a3,12(sp)
   10b7e:	4c10                	lw	a2,24(s0)
   10b80:	85aa                	mv	a1,a0
   10b82:	0000c517          	auipc	a0,0xc
   10b86:	5a250513          	addi	a0,a0,1442 # 1d124 <__extenddftf2+0x11c0>
   10b8a:	00000097          	auipc	ra,0x0
   10b8e:	302080e7          	jalr	770(ra) # 10e8c <_Z11MicroPrintfPKcz>
   10b92:	4505                	li	a0,1
   10b94:	50b2                	lw	ra,44(sp)
   10b96:	5422                	lw	s0,40(sp)
   10b98:	5492                	lw	s1,36(sp)
   10b9a:	5902                	lw	s2,32(sp)
   10b9c:	49f2                	lw	s3,28(sp)
   10b9e:	4a62                	lw	s4,24(sp)
   10ba0:	4ad2                	lw	s5,20(sp)
   10ba2:	4b42                	lw	s6,16(sp)
   10ba4:	6145                	addi	sp,sp,48
   10ba6:	8082                	ret
   10ba8:	4c0c                	lw	a1,24(s0)
   10baa:	4448                	lw	a0,12(s0)
   10bac:	00000097          	auipc	ra,0x0
   10bb0:	7a6080e7          	jalr	1958(ra) # 11352 <_ZN6tflite14MicroAllocator28FinishPrepareNodeAllocationsEi>
   10bb4:	4c0c                	lw	a1,24(s0)
   10bb6:	0585                	addi	a1,a1,1
   10bb8:	bf51                	j	10b4c <_ZN6tflite21MicroInterpreterGraph16PrepareSubgraphsEv+0x48>

00010bba <_ZN6tflite21MicroInterpreterGraph12NumSubgraphsEv>:
   10bba:	4508                	lw	a0,8(a0)
   10bbc:	1141                	addi	sp,sp,-16
   10bbe:	c606                	sw	ra,12(sp)
   10bc0:	fffff097          	auipc	ra,0xfffff
   10bc4:	6d6080e7          	jalr	1750(ra) # 10296 <_ZNK6tflite5Model9subgraphsEv>
   10bc8:	40b2                	lw	ra,12(sp)
   10bca:	4108                	lw	a0,0(a0)
   10bcc:	0141                	addi	sp,sp,16
   10bce:	8082                	ret

00010bd0 <_ZN6tflite19ScopedMicroProfilerD1Ev>:
   10bd0:	87aa                	mv	a5,a0
   10bd2:	4148                	lw	a0,4(a0)
   10bd4:	c509                	beqz	a0,10bde <_ZN6tflite19ScopedMicroProfilerD1Ev+0xe>
   10bd6:	4118                	lw	a4,0(a0)
   10bd8:	438c                	lw	a1,0(a5)
   10bda:	4758                	lw	a4,12(a4)
   10bdc:	8702                	jr	a4
   10bde:	8082                	ret

00010be0 <_ZN6tflite21MicroInterpreterGraph14InvokeSubgraphEi>:
   10be0:	511c                	lw	a5,32(a0)
   10be2:	7139                	addi	sp,sp,-64
   10be4:	dc22                	sw	s0,56(sp)
   10be6:	4390                	lw	a2,0(a5)
   10be8:	d452                	sw	s4,40(sp)
   10bea:	d256                	sw	s5,36(sp)
   10bec:	de06                	sw	ra,60(sp)
   10bee:	da26                	sw	s1,52(sp)
   10bf0:	d84a                	sw	s2,48(sp)
   10bf2:	d64e                	sw	s3,44(sp)
   10bf4:	d05a                	sw	s6,32(sp)
   10bf6:	ce5e                	sw	s7,28(sp)
   10bf8:	01452a83          	lw	s5,20(a0)
   10bfc:	c94c                	sw	a1,20(a0)
   10bfe:	01852a03          	lw	s4,24(a0)
   10c02:	842a                	mv	s0,a0
   10c04:	02c5e763          	bltu	a1,a2,10c32 <_ZN6tflite21MicroInterpreterGraph14InvokeSubgraphEi+0x52>
   10c08:	0000c517          	auipc	a0,0xc
   10c0c:	55450513          	addi	a0,a0,1364 # 1d15c <__extenddftf2+0x11f8>
   10c10:	00000097          	auipc	ra,0x0
   10c14:	27c080e7          	jalr	636(ra) # 10e8c <_Z11MicroPrintfPKcz>
   10c18:	4485                	li	s1,1
   10c1a:	50f2                	lw	ra,60(sp)
   10c1c:	5462                	lw	s0,56(sp)
   10c1e:	5942                	lw	s2,48(sp)
   10c20:	59b2                	lw	s3,44(sp)
   10c22:	5a22                	lw	s4,40(sp)
   10c24:	5a92                	lw	s5,36(sp)
   10c26:	5b02                	lw	s6,32(sp)
   10c28:	4bf2                	lw	s7,28(sp)
   10c2a:	8526                	mv	a0,s1
   10c2c:	54d2                	lw	s1,52(sp)
   10c2e:	6121                	addi	sp,sp,64
   10c30:	8082                	ret
   10c32:	4508                	lw	a0,8(a0)
   10c34:	892e                	mv	s2,a1
   10c36:	090e                	slli	s2,s2,0x3
   10c38:	00000097          	auipc	ra,0x0
   10c3c:	49e080e7          	jalr	1182(ra) # 110d6 <_ZN6tflite20NumSubgraphOperatorsEPKNS_5ModelEi>
   10c40:	89aa                	mv	s3,a0
   10c42:	4781                	li	a5,0
   10c44:	4b05                	li	s6,1
   10c46:	cc1c                	sw	a5,24(s0)
   10c48:	0137e863          	bltu	a5,s3,10c58 <_ZN6tflite21MicroInterpreterGraph14InvokeSubgraphEi+0x78>
   10c4c:	01542a23          	sw	s5,20(s0)
   10c50:	01442c23          	sw	s4,24(s0)
   10c54:	4481                	li	s1,0
   10c56:	b7d1                	j	10c1a <_ZN6tflite21MicroInterpreterGraph14InvokeSubgraphEi+0x3a>
   10c58:	4818                	lw	a4,16(s0)
   10c5a:	0796                	slli	a5,a5,0x5
   10c5c:	974a                	add	a4,a4,s2
   10c5e:	4304                	lw	s1,0(a4)
   10c60:	94be                	add	s1,s1,a5
   10c62:	01c4ab83          	lw	s7,28(s1)
   10c66:	855e                	mv	a0,s7
   10c68:	00000097          	auipc	ra,0x0
   10c6c:	e6e080e7          	jalr	-402(ra) # 10ad6 <_ZN6tflite12_GLOBAL__N_122OpNameFromRegistrationEPK16TFLMRegistration>
   10c70:	405c                	lw	a5,4(s0)
   10c72:	85aa                	mv	a1,a0
   10c74:	c402                	sw	zero,8(sp)
   10c76:	5bc8                	lw	a0,52(a5)
   10c78:	c62a                	sw	a0,12(sp)
   10c7a:	c509                	beqz	a0,10c84 <_ZN6tflite21MicroInterpreterGraph14InvokeSubgraphEi+0xa4>
   10c7c:	411c                	lw	a5,0(a0)
   10c7e:	479c                	lw	a5,8(a5)
   10c80:	9782                	jalr	a5
   10c82:	c42a                	sw	a0,8(sp)
   10c84:	00cba783          	lw	a5,12(s7)
   10c88:	eb91                	bnez	a5,10c9c <_ZN6tflite21MicroInterpreterGraph14InvokeSubgraphEi+0xbc>
   10c8a:	0000b517          	auipc	a0,0xb
   10c8e:	6a250513          	addi	a0,a0,1698 # 1c32c <__extenddftf2+0x3c8>
   10c92:	00000097          	auipc	ra,0x0
   10c96:	1fa080e7          	jalr	506(ra) # 10e8c <_Z11MicroPrintfPKcz>
   10c9a:	a001                	j	10c9a <_ZN6tflite21MicroInterpreterGraph14InvokeSubgraphEi+0xba>
   10c9c:	4048                	lw	a0,4(s0)
   10c9e:	85a6                	mv	a1,s1
   10ca0:	9782                	jalr	a5
   10ca2:	84aa                	mv	s1,a0
   10ca4:	4448                	lw	a0,12(s0)
   10ca6:	411c                	lw	a5,0(a0)
   10ca8:	4bdc                	lw	a5,20(a5)
   10caa:	9782                	jalr	a5
   10cac:	03649863          	bne	s1,s6,10cdc <_ZN6tflite21MicroInterpreterGraph14InvokeSubgraphEi+0xfc>
   10cb0:	855e                	mv	a0,s7
   10cb2:	00000097          	auipc	ra,0x0
   10cb6:	e24080e7          	jalr	-476(ra) # 10ad6 <_ZN6tflite12_GLOBAL__N_122OpNameFromRegistrationEPK16TFLMRegistration>
   10cba:	4c10                	lw	a2,24(s0)
   10cbc:	85aa                	mv	a1,a0
   10cbe:	0000c517          	auipc	a0,0xc
   10cc2:	4685                	li	a3,1
   10cc4:	4d250513          	addi	a0,a0,1234 # 1d190 <__extenddftf2+0x122c>
   10cc8:	00000097          	auipc	ra,0x0
   10ccc:	1c4080e7          	jalr	452(ra) # 10e8c <_Z11MicroPrintfPKcz>
   10cd0:	0028                	addi	a0,sp,8
   10cd2:	00000097          	auipc	ra,0x0
   10cd6:	efe080e7          	jalr	-258(ra) # 10bd0 <_ZN6tflite19ScopedMicroProfilerD1Ev>
   10cda:	b781                	j	10c1a <_ZN6tflite21MicroInterpreterGraph14InvokeSubgraphEi+0x3a>
   10cdc:	f8f5                	bnez	s1,10cd0 <_ZN6tflite21MicroInterpreterGraph14InvokeSubgraphEi+0xf0>
   10cde:	0028                	addi	a0,sp,8
   10ce0:	00000097          	auipc	ra,0x0
   10ce4:	ef0080e7          	jalr	-272(ra) # 10bd0 <_ZN6tflite19ScopedMicroProfilerD1Ev>
   10ce8:	4c1c                	lw	a5,24(s0)
   10cea:	0785                	addi	a5,a5,1
   10cec:	bfa9                	j	10c46 <_ZN6tflite21MicroInterpreterGraph14InvokeSubgraphEi+0x66>

00010cee <_ZN6tflite21MicroInterpreterGraph22SetSubgraphAllocationsEPNS_19SubgraphAllocationsE>:
   10cee:	c90c                	sw	a1,16(a0)
   10cf0:	8082                	ret

00010cf2 <_ZN6tflite21MicroInterpreterGraph20ResetVariableTensorsEv>:
   10cf2:	7139                	addi	sp,sp,-64
   10cf4:	da26                	sw	s1,52(sp)
   10cf6:	d84a                	sw	s2,48(sp)
   10cf8:	d05a                	sw	s6,32(sp)
   10cfa:	ce5e                	sw	s7,28(sp)
   10cfc:	de06                	sw	ra,60(sp)
   10cfe:	dc22                	sw	s0,56(sp)
   10d00:	d64e                	sw	s3,44(sp)
   10d02:	d452                	sw	s4,40(sp)
   10d04:	d256                	sw	s5,36(sp)
   10d06:	cc62                	sw	s8,24(sp)
   10d08:	ca66                	sw	s9,20(sp)
   10d0a:	84aa                	mv	s1,a0
   10d0c:	4901                	li	s2,0
   10d0e:	4b31                	li	s6,12
   10d10:	4ba5                	li	s7,9
   10d12:	5088                	lw	a0,32(s1)
   10d14:	411c                	lw	a5,0(a0)
   10d16:	02f96363          	bltu	s2,a5,10d3c <_ZN6tflite21MicroInterpreterGraph20ResetVariableTensorsEv+0x4a>
   10d1a:	4cc8                	lw	a0,28(s1)
   10d1c:	10051d63          	bnez	a0,10e36 <_ZN6tflite21MicroInterpreterGraph20ResetVariableTensorsEv+0x144>
   10d20:	4501                	li	a0,0
   10d22:	50f2                	lw	ra,60(sp)
   10d24:	5462                	lw	s0,56(sp)
   10d26:	54d2                	lw	s1,52(sp)
   10d28:	5942                	lw	s2,48(sp)
   10d2a:	59b2                	lw	s3,44(sp)
   10d2c:	5a22                	lw	s4,40(sp)
   10d2e:	5a92                	lw	s5,36(sp)
   10d30:	5b02                	lw	s6,32(sp)
   10d32:	4bf2                	lw	s7,28(sp)
   10d34:	4c62                	lw	s8,24(sp)
   10d36:	4cd2                	lw	s9,20(sp)
   10d38:	6121                	addi	sp,sp,64
   10d3a:	8082                	ret
   10d3c:	85ca                	mv	a1,s2
   10d3e:	fffff097          	auipc	ra,0xfffff
   10d42:	5b6080e7          	jalr	1462(ra) # 102f4 <_ZNK11flatbuffers6VectorINS_6OffsetIN6tflite8SubGraphEEEmE3GetEm>
   10d46:	8a2a                	mv	s4,a0
   10d48:	00391a93          	slli	s5,s2,0x3
   10d4c:	4981                	li	s3,0
   10d4e:	4591                	li	a1,4
   10d50:	8552                	mv	a0,s4
   10d52:	fffff097          	auipc	ra,0xfffff
   10d56:	50a080e7          	jalr	1290(ra) # 1025c <_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt>
   10d5a:	4401                	li	s0,0
   10d5c:	c501                	beqz	a0,10d64 <_ZN6tflite21MicroInterpreterGraph20ResetVariableTensorsEv+0x72>
   10d5e:	9552                	add	a0,a0,s4
   10d60:	4100                	lw	s0,0(a0)
   10d62:	942a                	add	s0,s0,a0
   10d64:	401c                	lw	a5,0(s0)
   10d66:	00f9e463          	bltu	s3,a5,10d6e <_ZN6tflite21MicroInterpreterGraph20ResetVariableTensorsEv+0x7c>
   10d6a:	0905                	addi	s2,s2,1
   10d6c:	b75d                	j	10d12 <_ZN6tflite21MicroInterpreterGraph20ResetVariableTensorsEv+0x20>
   10d6e:	0985                	addi	s3,s3,1
   10d70:	00299793          	slli	a5,s3,0x2
   10d74:	943e                	add	s0,s0,a5
   10d76:	401c                	lw	a5,0(s0)
   10d78:	45b9                	li	a1,14
   10d7a:	943e                	add	s0,s0,a5
   10d7c:	8522                	mv	a0,s0
   10d7e:	fffff097          	auipc	ra,0xfffff
   10d82:	4de080e7          	jalr	1246(ra) # 1025c <_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt>
   10d86:	d561                	beqz	a0,10d4e <_ZN6tflite21MicroInterpreterGraph20ResetVariableTensorsEv+0x5c>
   10d88:	9522                	add	a0,a0,s0
   10d8a:	00054783          	lbu	a5,0(a0)
   10d8e:	d3e1                	beqz	a5,10d4e <_ZN6tflite21MicroInterpreterGraph20ResetVariableTensorsEv+0x5c>
   10d90:	03698cb3          	mul	s9,s3,s6
   10d94:	489c                	lw	a5,16(s1)
   10d96:	006c                	addi	a1,sp,12
   10d98:	97d6                	add	a5,a5,s5
   10d9a:	43c8                	lw	a0,4(a5)
   10d9c:	1cd1                	addi	s9,s9,-12
   10d9e:	9566                	add	a0,a0,s9
   10da0:	00000097          	auipc	ra,0x0
   10da4:	406080e7          	jalr	1030(ra) # 111a6 <_ZN6tflite26TfLiteEvalTensorByteLengthEPK16TfLiteEvalTensorPj>
   10da8:	fd2d                	bnez	a0,10d22 <_ZN6tflite21MicroInterpreterGraph20ResetVariableTensorsEv+0x30>
   10daa:	4599                	li	a1,6
   10dac:	8522                	mv	a0,s0
   10dae:	fffff097          	auipc	ra,0xfffff
   10db2:	4ae080e7          	jalr	1198(ra) # 1025c <_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt>
   10db6:	cd35                	beqz	a0,10e32 <_ZN6tflite21MicroInterpreterGraph20ResetVariableTensorsEv+0x140>
   10db8:	9522                	add	a0,a0,s0
   10dba:	00050783          	lb	a5,0(a0)
   10dbe:	07779a63          	bne	a5,s7,10e32 <_ZN6tflite21MicroInterpreterGraph20ResetVariableTensorsEv+0x140>
   10dc2:	45b1                	li	a1,12
   10dc4:	8522                	mv	a0,s0
   10dc6:	fffff097          	auipc	ra,0xfffff
   10dca:	496080e7          	jalr	1174(ra) # 1025c <_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt>
   10dce:	4c01                	li	s8,0
   10dd0:	c509                	beqz	a0,10dda <_ZN6tflite21MicroInterpreterGraph20ResetVariableTensorsEv+0xe8>
   10dd2:	942a                	add	s0,s0,a0
   10dd4:	00042c03          	lw	s8,0(s0)
   10dd8:	9c22                	add	s8,s8,s0
   10dda:	45a9                	li	a1,10
   10ddc:	8562                	mv	a0,s8
   10dde:	fffff097          	auipc	ra,0xfffff
   10de2:	47e080e7          	jalr	1150(ra) # 1025c <_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt>
   10de6:	4781                	li	a5,0
   10de8:	c509                	beqz	a0,10df2 <_ZN6tflite21MicroInterpreterGraph20ResetVariableTensorsEv+0x100>
   10dea:	9c2a                	add	s8,s8,a0
   10dec:	000c2783          	lw	a5,0(s8)
   10df0:	97e2                	add	a5,a5,s8
   10df2:	4398                	lw	a4,0(a5)
   10df4:	e31d                	bnez	a4,10e1a <_ZN6tflite21MicroInterpreterGraph20ResetVariableTensorsEv+0x128>
   10df6:	0000b697          	auipc	a3,0xb
   10dfa:	0000c617          	auipc	a2,0xc
   10dfe:	0000b517          	auipc	a0,0xb
   10e02:	33668693          	addi	a3,a3,822 # 1c12c <__extenddftf2+0x1c8>
   10e06:	3ca60613          	addi	a2,a2,970 # 1d1c4 <__extenddftf2+0x1260>
   10e0a:	0b000593          	li	a1,176
   10e0e:	3de50513          	addi	a0,a0,990 # 1c1dc <__extenddftf2+0x278>
   10e12:	00002097          	auipc	ra,0x2
   10e16:	e2a080e7          	jalr	-470(ra) # 12c3c <__assert_func>
   10e1a:	43cc                	lw	a1,4(a5)
   10e1c:	489c                	lw	a5,16(s1)
   10e1e:	4632                	lw	a2,12(sp)
   10e20:	97d6                	add	a5,a5,s5
   10e22:	43dc                	lw	a5,4(a5)
   10e24:	97e6                	add	a5,a5,s9
   10e26:	4388                	lw	a0,0(a5)
   10e28:	00005097          	auipc	ra,0x5
   10e2c:	6fe080e7          	jalr	1790(ra) # 16526 <memset>
   10e30:	bf39                	j	10d4e <_ZN6tflite21MicroInterpreterGraph20ResetVariableTensorsEv+0x5c>
   10e32:	4581                	li	a1,0
   10e34:	b7e5                	j	10e1c <_ZN6tflite21MicroInterpreterGraph20ResetVariableTensorsEv+0x12a>
   10e36:	00000097          	auipc	ra,0x0
   10e3a:	14e080e7          	jalr	334(ra) # 10f84 <_ZN6tflite22MicroResourceVariables8ResetAllEv>
   10e3e:	b5cd                	j	10d20 <_ZN6tflite21MicroInterpreterGraph20ResetVariableTensorsEv+0x2e>

00010e40 <_ZN12_GLOBAL__N_19VDebugLogEPKcz.constprop.0>:
   10e40:	7139                	addi	sp,sp,-64
   10e42:	0000c517          	auipc	a0,0xc
   10e46:	d22e                	sw	a1,36(sp)
   10e48:	42e50513          	addi	a0,a0,1070 # 1d270 <__extenddftf2+0x130c>
   10e4c:	104c                	addi	a1,sp,36
   10e4e:	ce06                	sw	ra,28(sp)
   10e50:	d432                	sw	a2,40(sp)
   10e52:	d636                	sw	a3,44(sp)
   10e54:	d83a                	sw	a4,48(sp)
   10e56:	da3e                	sw	a5,52(sp)
   10e58:	dc42                	sw	a6,56(sp)
   10e5a:	de46                	sw	a7,60(sp)
   10e5c:	c62e                	sw	a1,12(sp)
   10e5e:	00000097          	auipc	ra,0x0
   10e62:	238080e7          	jalr	568(ra) # 11096 <DebugLog>
   10e66:	40f2                	lw	ra,28(sp)
   10e68:	6121                	addi	sp,sp,64
   10e6a:	8082                	ret

00010e6c <_Z12VMicroPrintfPKcPv>:
   10e6c:	1141                	addi	sp,sp,-16
   10e6e:	c606                	sw	ra,12(sp)
   10e70:	00000097          	auipc	ra,0x0
   10e74:	226080e7          	jalr	550(ra) # 11096 <DebugLog>
   10e78:	40b2                	lw	ra,12(sp)
   10e7a:	0000c517          	auipc	a0,0xc
   10e7e:	3f650513          	addi	a0,a0,1014 # 1d270 <__extenddftf2+0x130c>
   10e82:	0141                	addi	sp,sp,16
   10e84:	00000317          	auipc	t1,0x0
   10e88:	fbc30067          	jr	-68(t1) # 10e40 <_ZN12_GLOBAL__N_19VDebugLogEPKcz.constprop.0>

00010e8c <_Z11MicroPrintfPKcz>:
   10e8c:	7139                	addi	sp,sp,-64
   10e8e:	d22e                	sw	a1,36(sp)
   10e90:	104c                	addi	a1,sp,36
   10e92:	ce06                	sw	ra,28(sp)
   10e94:	d432                	sw	a2,40(sp)
   10e96:	d636                	sw	a3,44(sp)
   10e98:	d83a                	sw	a4,48(sp)
   10e9a:	da3e                	sw	a5,52(sp)
   10e9c:	dc42                	sw	a6,56(sp)
   10e9e:	de46                	sw	a7,60(sp)
   10ea0:	c62e                	sw	a1,12(sp)
   10ea2:	00000097          	auipc	ra,0x0
   10ea6:	fca080e7          	jalr	-54(ra) # 10e6c <_Z12VMicroPrintfPKcPv>
   10eaa:	40f2                	lw	ra,28(sp)
   10eac:	6121                	addi	sp,sp,64
   10eae:	8082                	ret

00010eb0 <_ZN6tflite25GetRegistrationFromOpCodeEPKNS_12OperatorCodeERKNS_15MicroOpResolverEPPK16TFLMRegistration>:
   10eb0:	1101                	addi	sp,sp,-32
   10eb2:	00062023          	sw	zero,0(a2)
   10eb6:	cc22                	sw	s0,24(sp)
   10eb8:	ca26                	sw	s1,20(sp)
   10eba:	c84a                	sw	s2,16(sp)
   10ebc:	c64e                	sw	s3,12(sp)
   10ebe:	ce06                	sw	ra,28(sp)
   10ec0:	84aa                	mv	s1,a0
   10ec2:	892e                	mv	s2,a1
   10ec4:	89b2                	mv	s3,a2
   10ec6:	00000097          	auipc	ra,0x0
   10eca:	178080e7          	jalr	376(ra) # 1103e <_ZN6tflite14GetBuiltinCodeEPKNS_12OperatorCodeE>
   10ece:	0ce00793          	li	a5,206
   10ed2:	842a                	mv	s0,a0
   10ed4:	02a7d363          	bge	a5,a0,10efa <_ZN6tflite25GetRegistrationFromOpCodeEPKNS_12OperatorCodeERKNS_15MicroOpResolverEPPK16TFLMRegistration+0x4a>
   10ed8:	85aa                	mv	a1,a0
   10eda:	0000c517          	auipc	a0,0xc
   10ede:	39a50513          	addi	a0,a0,922 # 1d274 <__extenddftf2+0x1310>
   10ee2:	00000097          	auipc	ra,0x0
   10ee6:	faa080e7          	jalr	-86(ra) # 10e8c <_Z11MicroPrintfPKcz>
   10eea:	4505                	li	a0,1
   10eec:	40f2                	lw	ra,28(sp)
   10eee:	4462                	lw	s0,24(sp)
   10ef0:	44d2                	lw	s1,20(sp)
   10ef2:	4942                	lw	s2,16(sp)
   10ef4:	49b2                	lw	s3,12(sp)
   10ef6:	6105                	addi	sp,sp,32
   10ef8:	8082                	ret
   10efa:	02000793          	li	a5,32
   10efe:	02f50f63          	beq	a0,a5,10f3c <_ZN6tflite25GetRegistrationFromOpCodeEPKNS_12OperatorCodeERKNS_15MicroOpResolverEPPK16TFLMRegistration+0x8c>
   10f02:	00092783          	lw	a5,0(s2)
   10f06:	85aa                	mv	a1,a0
   10f08:	854a                	mv	a0,s2
   10f0a:	439c                	lw	a5,0(a5)
   10f0c:	9782                	jalr	a5
   10f0e:	87aa                	mv	a5,a0
   10f10:	00a9a023          	sw	a0,0(s3)
   10f14:	4501                	li	a0,0
   10f16:	fbf9                	bnez	a5,10eec <_ZN6tflite25GetRegistrationFromOpCodeEPKNS_12OperatorCodeERKNS_15MicroOpResolverEPPK16TFLMRegistration+0x3c>
   10f18:	0000b597          	auipc	a1,0xb
   10f1c:	56858593          	addi	a1,a1,1384 # 1c480 <__extenddftf2+0x51c>
   10f20:	00044963          	bltz	s0,10f32 <_ZN6tflite25GetRegistrationFromOpCodeEPKNS_12OperatorCodeERKNS_15MicroOpResolverEPPK16TFLMRegistration+0x82>
   10f24:	0000c797          	auipc	a5,0xc
   10f28:	040a                	slli	s0,s0,0x2
   10f2a:	60078793          	addi	a5,a5,1536 # 1d524 <_ZZN6tflite24EnumNamesBuiltinOperatorEvE5names>
   10f2e:	943e                	add	s0,s0,a5
   10f30:	400c                	lw	a1,0(s0)
   10f32:	0000c517          	auipc	a0,0xc
   10f36:	36650513          	addi	a0,a0,870 # 1d298 <__extenddftf2+0x1334>
   10f3a:	b765                	j	10ee2 <_ZN6tflite25GetRegistrationFromOpCodeEPKNS_12OperatorCodeERKNS_15MicroOpResolverEPPK16TFLMRegistration+0x32>
   10f3c:	409c                	lw	a5,0(s1)
   10f3e:	4719                	li	a4,6
   10f40:	40f487b3          	sub	a5,s1,a5
   10f44:	0007d683          	lhu	a3,0(a5)
   10f48:	00d77963          	bgeu	a4,a3,10f5a <_ZN6tflite25GetRegistrationFromOpCodeEPKNS_12OperatorCodeERKNS_15MicroOpResolverEPPK16TFLMRegistration+0xaa>
   10f4c:	0067d783          	lhu	a5,6(a5)
   10f50:	94be                	add	s1,s1,a5
   10f52:	c781                	beqz	a5,10f5a <_ZN6tflite25GetRegistrationFromOpCodeEPKNS_12OperatorCodeERKNS_15MicroOpResolverEPPK16TFLMRegistration+0xaa>
   10f54:	409c                	lw	a5,0(s1)
   10f56:	94be                	add	s1,s1,a5
   10f58:	e891                	bnez	s1,10f6c <_ZN6tflite25GetRegistrationFromOpCodeEPKNS_12OperatorCodeERKNS_15MicroOpResolverEPPK16TFLMRegistration+0xbc>
   10f5a:	0000c517          	auipc	a0,0xc
   10f5e:	36650513          	addi	a0,a0,870 # 1d2c0 <__extenddftf2+0x135c>
   10f62:	00000097          	auipc	ra,0x0
   10f66:	f2a080e7          	jalr	-214(ra) # 10e8c <_Z11MicroPrintfPKcz>
   10f6a:	b741                	j	10eea <_ZN6tflite25GetRegistrationFromOpCodeEPKNS_12OperatorCodeERKNS_15MicroOpResolverEPPK16TFLMRegistration+0x3a>
   10f6c:	00092783          	lw	a5,0(s2)
   10f70:	00448593          	addi	a1,s1,4
   10f74:	854a                	mv	a0,s2
   10f76:	43dc                	lw	a5,4(a5)
   10f78:	9782                	jalr	a5
   10f7a:	00a9a023          	sw	a0,0(s3)
   10f7e:	00153513          	seqz	a0,a0
   10f82:	b7ad                	j	10eec <_ZN6tflite25GetRegistrationFromOpCodeEPKNS_12OperatorCodeERKNS_15MicroOpResolverEPPK16TFLMRegistration+0x3c>

00010f84 <_ZN6tflite22MicroResourceVariables8ResetAllEv>:
   10f84:	1141                	addi	sp,sp,-16
   10f86:	c422                	sw	s0,8(sp)
   10f88:	c226                	sw	s1,4(sp)
   10f8a:	c04a                	sw	s2,0(sp)
   10f8c:	c606                	sw	ra,12(sp)
   10f8e:	84aa                	mv	s1,a0
   10f90:	4401                	li	s0,0
   10f92:	4951                	li	s2,20
   10f94:	449c                	lw	a5,8(s1)
   10f96:	00f44963          	blt	s0,a5,10fa8 <_ZN6tflite22MicroResourceVariables8ResetAllEv+0x24>
   10f9a:	40b2                	lw	ra,12(sp)
   10f9c:	4422                	lw	s0,8(sp)
   10f9e:	4492                	lw	s1,4(sp)
   10fa0:	4902                	lw	s2,0(sp)
   10fa2:	4501                	li	a0,0
   10fa4:	0141                	addi	sp,sp,16
   10fa6:	8082                	ret
   10fa8:	03240733          	mul	a4,s0,s2
   10fac:	409c                	lw	a5,0(s1)
   10fae:	0405                	addi	s0,s0,1
   10fb0:	97ba                	add	a5,a5,a4
   10fb2:	47d0                	lw	a2,12(a5)
   10fb4:	01078583          	lb	a1,16(a5)
   10fb8:	4788                	lw	a0,8(a5)
   10fba:	00005097          	auipc	ra,0x5
   10fbe:	56c080e7          	jalr	1388(ra) # 16526 <memset>
   10fc2:	bfc9                	j	10f94 <_ZN6tflite22MicroResourceVariables8ResetAllEv+0x10>

00010fc4 <_ZN6tflite24CallBuiltinParseFunctionEPF12TfLiteStatusPKNS_8OperatorEPNS_13ErrorReporterEPNS_20BuiltinDataAllocatorEPPvES3_S7_S9_>:
   10fc4:	1101                	addi	sp,sp,-32
   10fc6:	cc22                	sw	s0,24(sp)
   10fc8:	ca26                	sw	s1,20(sp)
   10fca:	ce06                	sw	ra,28(sp)
   10fcc:	84ae                	mv	s1,a1
   10fce:	842a                	mv	s0,a0
   10fd0:	c632                	sw	a2,12(sp)
   10fd2:	c436                	sw	a3,8(sp)
   10fd4:	00000097          	auipc	ra,0x0
   10fd8:	036080e7          	jalr	54(ra) # 1100a <_ZN6tflite21GetMicroErrorReporterEv>
   10fdc:	87a2                	mv	a5,s0
   10fde:	4462                	lw	s0,24(sp)
   10fe0:	46a2                	lw	a3,8(sp)
   10fe2:	4632                	lw	a2,12(sp)
   10fe4:	40f2                	lw	ra,28(sp)
   10fe6:	85aa                	mv	a1,a0
   10fe8:	8526                	mv	a0,s1
   10fea:	44d2                	lw	s1,20(sp)
   10fec:	6105                	addi	sp,sp,32
   10fee:	8782                	jr	a5

00010ff0 <_ZN6tflite18MicroErrorReporterD0Ev>:
   10ff0:	8082                	ret

00010ff2 <_ZN6tflite18MicroErrorReporter6ReportEPKcPv>:
   10ff2:	1141                	addi	sp,sp,-16
   10ff4:	852e                	mv	a0,a1
   10ff6:	85b2                	mv	a1,a2
   10ff8:	c606                	sw	ra,12(sp)
   10ffa:	00000097          	auipc	ra,0x0
   10ffe:	e72080e7          	jalr	-398(ra) # 10e6c <_Z12VMicroPrintfPKcPv>
   11002:	40b2                	lw	ra,12(sp)
   11004:	4501                	li	a0,0
   11006:	0141                	addi	sp,sp,16
   11008:	8082                	ret

0001100a <_ZN6tflite21GetMicroErrorReporterEv>:
   1100a:	0000d797          	auipc	a5,0xd
   1100e:	7227a783          	lw	a5,1826(a5) # 1e72c <_ZN12_GLOBAL__N_115error_reporter_E>
   11012:	e38d                	bnez	a5,11034 <_ZN6tflite21GetMicroErrorReporterEv+0x2a>
   11014:	0000d797          	auipc	a5,0xd
   11018:	85878793          	addi	a5,a5,-1960 # 1d86c <_ZTVN6tflite18MicroErrorReporterE+0x8>
   1101c:	0000d717          	auipc	a4,0xd
   11020:	70f72a23          	sw	a5,1812(a4) # 1e730 <_ZN12_GLOBAL__N_127micro_error_reporter_bufferE>
   11024:	0000d797          	auipc	a5,0xd
   11028:	70c78793          	addi	a5,a5,1804 # 1e730 <_ZN12_GLOBAL__N_127micro_error_reporter_bufferE>
   1102c:	0000d717          	auipc	a4,0xd
   11030:	70f72023          	sw	a5,1792(a4) # 1e72c <_ZN12_GLOBAL__N_115error_reporter_E>
   11034:	0000d797          	auipc	a5,0xd
   11038:	6f87a503          	lw	a0,1784(a5) # 1e72c <_ZN12_GLOBAL__N_115error_reporter_E>
   1103c:	8082                	ret

0001103e <_ZN6tflite14GetBuiltinCodeEPKNS_12OperatorCodeE>:
   1103e:	ed01                	bnez	a0,11056 <_ZN6tflite14GetBuiltinCodeEPKNS_12OperatorCodeE+0x18>
   11040:	0000b517          	auipc	a0,0xb
   11044:	1141                	addi	sp,sp,-16
   11046:	2ec50513          	addi	a0,a0,748 # 1c32c <__extenddftf2+0x3c8>
   1104a:	c606                	sw	ra,12(sp)
   1104c:	00000097          	auipc	ra,0x0
   11050:	e40080e7          	jalr	-448(ra) # 10e8c <_Z11MicroPrintfPKcz>
   11054:	a001                	j	11054 <_ZN6tflite14GetBuiltinCodeEPKNS_12OperatorCodeE+0x16>
   11056:	4118                	lw	a4,0(a0)
   11058:	47a9                	li	a5,10
   1105a:	40e50733          	sub	a4,a0,a4
   1105e:	00075603          	lhu	a2,0(a4)
   11062:	02c7f063          	bgeu	a5,a2,11082 <_ZN6tflite14GetBuiltinCodeEPKNS_12OperatorCodeE+0x44>
   11066:	00a75783          	lhu	a5,10(a4)
   1106a:	4681                	li	a3,0
   1106c:	c399                	beqz	a5,11072 <_ZN6tflite14GetBuiltinCodeEPKNS_12OperatorCodeE+0x34>
   1106e:	97aa                	add	a5,a5,a0
   11070:	4394                	lw	a3,0(a5)
   11072:	00475703          	lhu	a4,4(a4)
   11076:	4781                	li	a5,0
   11078:	cb11                	beqz	a4,1108c <_ZN6tflite14GetBuiltinCodeEPKNS_12OperatorCodeE+0x4e>
   1107a:	953a                	add	a0,a0,a4
   1107c:	00050783          	lb	a5,0(a0)
   11080:	a031                	j	1108c <_ZN6tflite14GetBuiltinCodeEPKNS_12OperatorCodeE+0x4e>
   11082:	4591                	li	a1,4
   11084:	4681                	li	a3,0
   11086:	4781                	li	a5,0
   11088:	fec5e5e3          	bltu	a1,a2,11072 <_ZN6tflite14GetBuiltinCodeEPKNS_12OperatorCodeE+0x34>
   1108c:	853e                	mv	a0,a5
   1108e:	00d7d363          	bge	a5,a3,11094 <_ZN6tflite14GetBuiltinCodeEPKNS_12OperatorCodeE+0x56>
   11092:	8536                	mv	a0,a3
   11094:	8082                	ret

00011096 <DebugLog>:
   11096:	0000d797          	auipc	a5,0xd
   1109a:	6827a783          	lw	a5,1666(a5) # 1e718 <_impure_ptr>
   1109e:	862e                	mv	a2,a1
   110a0:	85aa                	mv	a1,a0
   110a2:	47c8                	lw	a0,12(a5)
   110a4:	00004317          	auipc	t1,0x4
   110a8:	92630067          	jr	-1754(t1) # 149ca <vfprintf>

000110ac <_ZN6tflite20NumSubgraphOperatorsEPKNS_8SubGraphE>:
   110ac:	411c                	lw	a5,0(a0)
   110ae:	4729                	li	a4,10
   110b0:	40f507b3          	sub	a5,a0,a5
   110b4:	0007d683          	lhu	a3,0(a5)
   110b8:	00d77d63          	bgeu	a4,a3,110d2 <_ZN6tflite20NumSubgraphOperatorsEPKNS_8SubGraphE+0x26>
   110bc:	00a7d703          	lhu	a4,10(a5)
   110c0:	00e507b3          	add	a5,a0,a4
   110c4:	4501                	li	a0,0
   110c6:	c719                	beqz	a4,110d4 <_ZN6tflite20NumSubgraphOperatorsEPKNS_8SubGraphE+0x28>
   110c8:	4398                	lw	a4,0(a5)
   110ca:	97ba                	add	a5,a5,a4
   110cc:	c781                	beqz	a5,110d4 <_ZN6tflite20NumSubgraphOperatorsEPKNS_8SubGraphE+0x28>
   110ce:	4388                	lw	a0,0(a5)
   110d0:	8082                	ret
   110d2:	4501                	li	a0,0
   110d4:	8082                	ret

000110d6 <_ZN6tflite20NumSubgraphOperatorsEPKNS_5ModelEi>:
   110d6:	4118                	lw	a4,0(a0)
   110d8:	46a1                	li	a3,8
   110da:	4781                	li	a5,0
   110dc:	40e50733          	sub	a4,a0,a4
   110e0:	00075603          	lhu	a2,0(a4)
   110e4:	00c6f863          	bgeu	a3,a2,110f4 <_ZN6tflite20NumSubgraphOperatorsEPKNS_5ModelEi+0x1e>
   110e8:	00875703          	lhu	a4,8(a4)
   110ec:	953a                	add	a0,a0,a4
   110ee:	c319                	beqz	a4,110f4 <_ZN6tflite20NumSubgraphOperatorsEPKNS_5ModelEi+0x1e>
   110f0:	411c                	lw	a5,0(a0)
   110f2:	97aa                	add	a5,a5,a0
   110f4:	4398                	lw	a4,0(a5)
   110f6:	02e5e663          	bltu	a1,a4,11122 <_ZN6tflite20NumSubgraphOperatorsEPKNS_5ModelEi+0x4c>
   110fa:	0000b697          	auipc	a3,0xb
   110fe:	0000b617          	auipc	a2,0xb
   11102:	0000b517          	auipc	a0,0xb
   11106:	1141                	addi	sp,sp,-16
   11108:	03268693          	addi	a3,a3,50 # 1c12c <__extenddftf2+0x1c8>
   1110c:	13260613          	addi	a2,a2,306 # 1c230 <__extenddftf2+0x2cc>
   11110:	0b000593          	li	a1,176
   11114:	0da50513          	addi	a0,a0,218 # 1c1dc <__extenddftf2+0x278>
   11118:	c606                	sw	ra,12(sp)
   1111a:	00002097          	auipc	ra,0x2
   1111e:	b22080e7          	jalr	-1246(ra) # 12c3c <__assert_func>
   11122:	0585                	addi	a1,a1,1
   11124:	058a                	slli	a1,a1,0x2
   11126:	97ae                	add	a5,a5,a1
   11128:	4388                	lw	a0,0(a5)
   1112a:	953e                	add	a0,a0,a5
   1112c:	00000317          	auipc	t1,0x0
   11130:	f8030067          	jr	-128(t1) # 110ac <_ZN6tflite20NumSubgraphOperatorsEPKNS_8SubGraphE>

00011134 <_ZN6tflite33FlatBufferVectorToTfLiteTypeArrayEPKN11flatbuffers6VectorIlmEE>:
   11134:	8082                	ret

00011136 <_ZN6tflite14AlignPointerUpEPhj>:
   11136:	fff58793          	addi	a5,a1,-1
   1113a:	953e                	add	a0,a0,a5
   1113c:	02b55533          	divu	a0,a0,a1
   11140:	02b50533          	mul	a0,a0,a1
   11144:	8082                	ret

00011146 <_ZN6tflite16TfLiteTypeSizeOfE10TfLiteTypePj>:
   11146:	47cd                	li	a5,19
   11148:	00a7e963          	bltu	a5,a0,1115a <_ZN6tflite16TfLiteTypeSizeOfE10TfLiteTypePj+0x14>
   1114c:	47a5                	li	a5,9
   1114e:	00a7e863          	bltu	a5,a0,1115e <_ZN6tflite16TfLiteTypeSizeOfE10TfLiteTypePj+0x18>
   11152:	4789                	li	a5,2
   11154:	02a7eb63          	bltu	a5,a0,1118a <_ZN6tflite16TfLiteTypeSizeOfE10TfLiteTypePj+0x44>
   11158:	e129                	bnez	a0,1119a <_ZN6tflite16TfLiteTypeSizeOfE10TfLiteTypePj+0x54>
   1115a:	4505                	li	a0,1
   1115c:	8082                	ret
   1115e:	1559                	addi	a0,a0,-10
   11160:	fea7ede3          	bltu	a5,a0,1115a <_ZN6tflite16TfLiteTypeSizeOfE10TfLiteTypePj+0x14>
   11164:	0000c797          	auipc	a5,0xc
   11168:	71478793          	addi	a5,a5,1812 # 1d878 <_ZTVN6tflite18MicroErrorReporterE+0x14>
   1116c:	050a                	slli	a0,a0,0x2
   1116e:	953e                	add	a0,a0,a5
   11170:	4118                	lw	a4,0(a0)
   11172:	97ba                	add	a5,a5,a4
   11174:	8782                	jr	a5
   11176:	1107f793          	andi	a5,a5,272
   1117a:	e395                	bnez	a5,1119e <_ZN6tflite16TfLiteTypeSizeOfE10TfLiteTypePj+0x58>
   1117c:	479d                	li	a5,7
   1117e:	fcf51ee3          	bne	a0,a5,1115a <_ZN6tflite16TfLiteTypeSizeOfE10TfLiteTypePj+0x14>
   11182:	4789                	li	a5,2
   11184:	c19c                	sw	a5,0(a1)
   11186:	4501                	li	a0,0
   11188:	8082                	ret
   1118a:	4785                	li	a5,1
   1118c:	00a797b3          	sll	a5,a5,a0
   11190:	2487f713          	andi	a4,a5,584
   11194:	d36d                	beqz	a4,11176 <_ZN6tflite16TfLiteTypeSizeOfE10TfLiteTypePj+0x30>
   11196:	4785                	li	a5,1
   11198:	b7f5                	j	11184 <_ZN6tflite16TfLiteTypeSizeOfE10TfLiteTypePj+0x3e>
   1119a:	4791                	li	a5,4
   1119c:	b7e5                	j	11184 <_ZN6tflite16TfLiteTypeSizeOfE10TfLiteTypePj+0x3e>
   1119e:	47a1                	li	a5,8
   111a0:	b7d5                	j	11184 <_ZN6tflite16TfLiteTypeSizeOfE10TfLiteTypePj+0x3e>
   111a2:	47c1                	li	a5,16
   111a4:	b7c5                	j	11184 <_ZN6tflite16TfLiteTypeSizeOfE10TfLiteTypePj+0x3e>

000111a6 <_ZN6tflite26TfLiteEvalTensorByteLengthEPK16TfLiteEvalTensorPj>:
   111a6:	1101                	addi	sp,sp,-32
   111a8:	ce06                	sw	ra,28(sp)
   111aa:	cc22                	sw	s0,24(sp)
   111ac:	ca26                	sw	s1,20(sp)
   111ae:	e991                	bnez	a1,111c2 <_ZN6tflite26TfLiteEvalTensorByteLengthEPK16TfLiteEvalTensorPj+0x1c>
   111b0:	0000b517          	auipc	a0,0xb
   111b4:	17c50513          	addi	a0,a0,380 # 1c32c <__extenddftf2+0x3c8>
   111b8:	00000097          	auipc	ra,0x0
   111bc:	cd4080e7          	jalr	-812(ra) # 10e8c <_Z11MicroPrintfPKcz>
   111c0:	a001                	j	111c0 <_ZN6tflite26TfLiteEvalTensorByteLengthEPK16TfLiteEvalTensorPj+0x1a>
   111c2:	415c                	lw	a5,4(a0)
   111c4:	842e                	mv	s0,a1
   111c6:	4485                	li	s1,1
   111c8:	c791                	beqz	a5,111d4 <_ZN6tflite26TfLiteEvalTensorByteLengthEPK16TfLiteEvalTensorPj+0x2e>
   111ca:	4394                	lw	a3,0(a5)
   111cc:	4701                	li	a4,0
   111ce:	0791                	addi	a5,a5,4
   111d0:	02d74263          	blt	a4,a3,111f4 <_ZN6tflite26TfLiteEvalTensorByteLengthEPK16TfLiteEvalTensorPj+0x4e>
   111d4:	4508                	lw	a0,8(a0)
   111d6:	006c                	addi	a1,sp,12
   111d8:	00000097          	auipc	ra,0x0
   111dc:	f6e080e7          	jalr	-146(ra) # 11146 <_ZN6tflite16TfLiteTypeSizeOfE10TfLiteTypePj>
   111e0:	e509                	bnez	a0,111ea <_ZN6tflite26TfLiteEvalTensorByteLengthEPK16TfLiteEvalTensorPj+0x44>
   111e2:	47b2                	lw	a5,12(sp)
   111e4:	029787b3          	mul	a5,a5,s1
   111e8:	c01c                	sw	a5,0(s0)
   111ea:	40f2                	lw	ra,28(sp)
   111ec:	4462                	lw	s0,24(sp)
   111ee:	44d2                	lw	s1,20(sp)
   111f0:	6105                	addi	sp,sp,32
   111f2:	8082                	ret
   111f4:	4390                	lw	a2,0(a5)
   111f6:	0705                	addi	a4,a4,1
   111f8:	0791                	addi	a5,a5,4
   111fa:	02c484b3          	mul	s1,s1,a2
   111fe:	bfc9                	j	111d0 <_ZN6tflite26TfLiteEvalTensorByteLengthEPK16TfLiteEvalTensorPj+0x2a>

00011200 <_ZN6tflite12_GLOBAL__N_125MicroBuiltinDataAllocator8AllocateEjj>:
   11200:	4148                	lw	a0,4(a0)
   11202:	411c                	lw	a5,0(a0)
   11204:	479c                	lw	a5,8(a5)
   11206:	8782                	jr	a5

00011208 <_ZN6tflite12_GLOBAL__N_125MicroBuiltinDataAllocator10DeallocateEPv>:
   11208:	8082                	ret

0001120a <_ZN6tflite12_GLOBAL__N_125MicroBuiltinDataAllocatorD0Ev>:
   1120a:	8082                	ret

0001120c <_ZN6tflite14MicroAllocator21FinishModelAllocationEPKNS_5ModelEPNS_19SubgraphAllocationsEPPNS_19ScratchBufferHandleE>:
   1120c:	01454783          	lbu	a5,20(a0)
   11210:	1101                	addi	sp,sp,-32
   11212:	ce06                	sw	ra,28(sp)
   11214:	cc22                	sw	s0,24(sp)
   11216:	ca26                	sw	s1,20(sp)
   11218:	c84a                	sw	s2,16(sp)
   1121a:	c64e                	sw	s3,12(sp)
   1121c:	e38d                	bnez	a5,1123e <_ZN6tflite14MicroAllocator21FinishModelAllocationEPKNS_5ModelEPNS_19SubgraphAllocationsEPPNS_19ScratchBufferHandleE+0x32>
   1121e:	0000c517          	auipc	a0,0xc
   11222:	0da50513          	addi	a0,a0,218 # 1d2f8 <__extenddftf2+0x1394>
   11226:	00000097          	auipc	ra,0x0
   1122a:	c66080e7          	jalr	-922(ra) # 10e8c <_Z11MicroPrintfPKcz>
   1122e:	4505                	li	a0,1
   11230:	40f2                	lw	ra,28(sp)
   11232:	4462                	lw	s0,24(sp)
   11234:	44d2                	lw	s1,20(sp)
   11236:	4942                	lw	s2,16(sp)
   11238:	49b2                	lw	s3,12(sp)
   1123a:	6105                	addi	sp,sp,32
   1123c:	8082                	ret
   1123e:	411c                	lw	a5,0(a0)
   11240:	89b2                	mv	s3,a2
   11242:	4d10                	lw	a2,24(a0)
   11244:	43bc                	lw	a5,64(a5)
   11246:	892e                	mv	s2,a1
   11248:	85b6                	mv	a1,a3
   1124a:	842a                	mv	s0,a0
   1124c:	84b6                	mv	s1,a3
   1124e:	9782                	jalr	a5
   11250:	f165                	bnez	a0,11230 <_ZN6tflite14MicroAllocator21FinishModelAllocationEPKNS_5ModelEPNS_19SubgraphAllocationsEPPNS_19ScratchBufferHandleE+0x24>
   11252:	401c                	lw	a5,0(s0)
   11254:	4094                	lw	a3,0(s1)
   11256:	864e                	mv	a2,s3
   11258:	5fdc                	lw	a5,60(a5)
   1125a:	85ca                	mv	a1,s2
   1125c:	8522                	mv	a0,s0
   1125e:	9782                	jalr	a5
   11260:	f961                	bnez	a0,11230 <_ZN6tflite14MicroAllocator21FinishModelAllocationEPKNS_5ModelEPNS_19SubgraphAllocationsEPPNS_19ScratchBufferHandleE+0x24>
   11262:	00040a23          	sb	zero,20(s0)
   11266:	b7e9                	j	11230 <_ZN6tflite14MicroAllocator21FinishModelAllocationEPKNS_5ModelEPNS_19SubgraphAllocationsEPPNS_19ScratchBufferHandleE+0x24>

00011268 <_ZN6tflite14MicroAllocator21InitScratchBufferDataEv>:
   11268:	1141                	addi	sp,sp,-16
   1126a:	c422                	sw	s0,8(sp)
   1126c:	c606                	sw	ra,12(sp)
   1126e:	842a                	mv	s0,a0
   11270:	00052c23          	sw	zero,24(a0)
   11274:	4148                	lw	a0,4(a0)
   11276:	4611                	li	a2,4
   11278:	09000593          	li	a1,144
   1127c:	411c                	lw	a5,0(a0)
   1127e:	4f9c                	lw	a5,24(a5)
   11280:	9782                	jalr	a5
   11282:	cc48                	sw	a0,28(s0)
   11284:	40b2                	lw	ra,12(sp)
   11286:	4422                	lw	s0,8(sp)
   11288:	00153513          	seqz	a0,a0
   1128c:	0141                	addi	sp,sp,16
   1128e:	8082                	ret

00011290 <_ZN6tflite14MicroAllocator20StartModelAllocationEPKNS_5ModelE>:
   11290:	1101                	addi	sp,sp,-32
   11292:	ce06                	sw	ra,28(sp)
   11294:	cc22                	sw	s0,24(sp)
   11296:	ca26                	sw	s1,20(sp)
   11298:	c84a                	sw	s2,16(sp)
   1129a:	c64e                	sw	s3,12(sp)
   1129c:	e589                	bnez	a1,112a6 <_ZN6tflite14MicroAllocator20StartModelAllocationEPKNS_5ModelE+0x16>
   1129e:	fffff097          	auipc	ra,0xfffff
   112a2:	702080e7          	jalr	1794(ra) # 109a0 <_Z9AbortImplv>
   112a6:	01454783          	lbu	a5,20(a0)
   112aa:	842a                	mv	s0,a0
   112ac:	0000c517          	auipc	a0,0xc
   112b0:	09850513          	addi	a0,a0,152 # 1d344 <__extenddftf2+0x13e0>
   112b4:	efa9                	bnez	a5,1130e <_ZN6tflite14MicroAllocator20StartModelAllocationEPKNS_5ModelE+0x7e>
   112b6:	4408                	lw	a0,8(s0)
   112b8:	4785                	li	a5,1
   112ba:	00f40a23          	sb	a5,20(s0)
   112be:	411c                	lw	a5,0(a0)
   112c0:	892e                	mv	s2,a1
   112c2:	4611                	li	a2,4
   112c4:	479c                	lw	a5,8(a5)
   112c6:	45a1                	li	a1,8
   112c8:	9782                	jalr	a5
   112ca:	4418                	lw	a4,8(s0)
   112cc:	0000c797          	auipc	a5,0xc
   112d0:	5dc78793          	addi	a5,a5,1500 # 1d8a8 <_ZTVN6tflite12_GLOBAL__N_125MicroBuiltinDataAllocatorE+0x8>
   112d4:	c11c                	sw	a5,0(a0)
   112d6:	c158                	sw	a4,4(a0)
   112d8:	c448                	sw	a0,12(s0)
   112da:	8522                	mv	a0,s0
   112dc:	00000097          	auipc	ra,0x0
   112e0:	f8c080e7          	jalr	-116(ra) # 11268 <_ZN6tflite14MicroAllocator21InitScratchBufferDataEv>
   112e4:	e90d                	bnez	a0,11316 <_ZN6tflite14MicroAllocator20StartModelAllocationEPKNS_5ModelE+0x86>
   112e6:	4404                	lw	s1,8(s0)
   112e8:	854a                	mv	a0,s2
   112ea:	409c                	lw	a5,0(s1)
   112ec:	0087a983          	lw	s3,8(a5)
   112f0:	fffff097          	auipc	ra,0xfffff
   112f4:	fa6080e7          	jalr	-90(ra) # 10296 <_ZNK6tflite5Model9subgraphsEv>
   112f8:	410c                	lw	a1,0(a0)
   112fa:	4611                	li	a2,4
   112fc:	8526                	mv	a0,s1
   112fe:	058e                	slli	a1,a1,0x3
   11300:	9982                	jalr	s3
   11302:	84aa                	mv	s1,a0
   11304:	e115                	bnez	a0,11328 <_ZN6tflite14MicroAllocator20StartModelAllocationEPKNS_5ModelE+0x98>
   11306:	0000c517          	auipc	a0,0xc
   1130a:	09650513          	addi	a0,a0,150 # 1d39c <__extenddftf2+0x1438>
   1130e:	00000097          	auipc	ra,0x0
   11312:	b7e080e7          	jalr	-1154(ra) # 10e8c <_Z11MicroPrintfPKcz>
   11316:	4481                	li	s1,0
   11318:	40f2                	lw	ra,28(sp)
   1131a:	4462                	lw	s0,24(sp)
   1131c:	4942                	lw	s2,16(sp)
   1131e:	49b2                	lw	s3,12(sp)
   11320:	8526                	mv	a0,s1
   11322:	44d2                	lw	s1,20(sp)
   11324:	6105                	addi	sp,sp,32
   11326:	8082                	ret
   11328:	401c                	lw	a5,0(s0)
   1132a:	862a                	mv	a2,a0
   1132c:	85ca                	mv	a1,s2
   1132e:	57dc                	lw	a5,44(a5)
   11330:	8522                	mv	a0,s0
   11332:	9782                	jalr	a5
   11334:	f16d                	bnez	a0,11316 <_ZN6tflite14MicroAllocator20StartModelAllocationEPKNS_5ModelE+0x86>
   11336:	401c                	lw	a5,0(s0)
   11338:	8626                	mv	a2,s1
   1133a:	85ca                	mv	a1,s2
   1133c:	579c                	lw	a5,40(a5)
   1133e:	8522                	mv	a0,s0
   11340:	9782                	jalr	a5
   11342:	d979                	beqz	a0,11318 <_ZN6tflite14MicroAllocator20StartModelAllocationEPKNS_5ModelE+0x88>
   11344:	bfc9                	j	11316 <_ZN6tflite14MicroAllocator20StartModelAllocationEPKNS_5ModelE+0x86>

00011346 <_ZN6tflite14MicroAllocator24GetScratchBufferRequestsEv>:
   11346:	4d48                	lw	a0,28(a0)
   11348:	4591                	li	a1,4
   1134a:	00000317          	auipc	t1,0x0
   1134e:	dec30067          	jr	-532(t1) # 11136 <_ZN6tflite14AlignPointerUpEPhj>

00011352 <_ZN6tflite14MicroAllocator28FinishPrepareNodeAllocationsEi>:
   11352:	411c                	lw	a5,0(a0)
   11354:	1141                	addi	sp,sp,-16
   11356:	c422                	sw	s0,8(sp)
   11358:	4bdc                	lw	a5,20(a5)
   1135a:	c226                	sw	s1,4(sp)
   1135c:	c606                	sw	ra,12(sp)
   1135e:	842a                	mv	s0,a0
   11360:	84ae                	mv	s1,a1
   11362:	9782                	jalr	a5
   11364:	e129                	bnez	a0,113a6 <_ZN6tflite14MicroAllocator28FinishPrepareNodeAllocationsEi+0x54>
   11366:	8522                	mv	a0,s0
   11368:	00000097          	auipc	ra,0x0
   1136c:	fde080e7          	jalr	-34(ra) # 11346 <_ZN6tflite14MicroAllocator24GetScratchBufferRequestsEv>
   11370:	4c1c                	lw	a5,24(s0)
   11372:	4631                	li	a2,12
   11374:	577d                	li	a4,-1
   11376:	02f60633          	mul	a2,a2,a5
   1137a:	00c507b3          	add	a5,a0,a2
   1137e:	00f51e63          	bne	a0,a5,1139a <_ZN6tflite14MicroAllocator28FinishPrepareNodeAllocationsEi+0x48>
   11382:	4048                	lw	a0,4(s0)
   11384:	4c4c                	lw	a1,28(s0)
   11386:	4422                	lw	s0,8(sp)
   11388:	411c                	lw	a5,0(a0)
   1138a:	40b2                	lw	ra,12(sp)
   1138c:	4492                	lw	s1,4(sp)
   1138e:	4fdc                	lw	a5,28(a5)
   11390:	4691                	li	a3,4
   11392:	09060613          	addi	a2,a2,144
   11396:	0141                	addi	sp,sp,16
   11398:	8782                	jr	a5
   1139a:	4154                	lw	a3,4(a0)
   1139c:	00e69363          	bne	a3,a4,113a2 <_ZN6tflite14MicroAllocator28FinishPrepareNodeAllocationsEi+0x50>
   113a0:	c144                	sw	s1,4(a0)
   113a2:	0531                	addi	a0,a0,12
   113a4:	bfe9                	j	1137e <_ZN6tflite14MicroAllocator28FinishPrepareNodeAllocationsEi+0x2c>
   113a6:	40b2                	lw	ra,12(sp)
   113a8:	4422                	lw	s0,8(sp)
   113aa:	4492                	lw	s1,4(sp)
   113ac:	0141                	addi	sp,sp,16
   113ae:	8082                	ret

000113b0 <_ZN6tflite14MicroAllocator23GetBuiltinDataAllocatorEv>:
   113b0:	4548                	lw	a0,12(a0)
   113b2:	8082                	ret

000113b4 <__clzsi2>:
   113b4:	67c1                	lui	a5,0x10
   113b6:	02f57663          	bgeu	a0,a5,113e2 <__clzsi2+0x2e>
   113ba:	10053793          	sltiu	a5,a0,256
   113be:	0017b793          	seqz	a5,a5
   113c2:	078e                	slli	a5,a5,0x3
   113c4:	0001e737          	lui	a4,0x1e
   113c8:	02000693          	li	a3,32
   113cc:	8e9d                	sub	a3,a3,a5
   113ce:	00f55533          	srl	a0,a0,a5
   113d2:	8f470793          	addi	a5,a4,-1804 # 1d8f4 <__clz_tab>
   113d6:	97aa                	add	a5,a5,a0
   113d8:	0007c503          	lbu	a0,0(a5) # 10000 <exit-0x94>
   113dc:	40a68533          	sub	a0,a3,a0
   113e0:	8082                	ret
   113e2:	01000737          	lui	a4,0x1000
   113e6:	47e1                	li	a5,24
   113e8:	fce57ee3          	bgeu	a0,a4,113c4 <__clzsi2+0x10>
   113ec:	47c1                	li	a5,16
   113ee:	bfd9                	j	113c4 <__clzsi2+0x10>

000113f0 <__adddf3>:
   113f0:	00100837          	lui	a6,0x100
   113f4:	187d                	addi	a6,a6,-1 # fffff <__BSS_END__+0xe15a3>
   113f6:	1101                	addi	sp,sp,-32
   113f8:	00b878b3          	and	a7,a6,a1
   113fc:	0145d713          	srli	a4,a1,0x14
   11400:	01d55793          	srli	a5,a0,0x1d
   11404:	00d87833          	and	a6,a6,a3
   11408:	ca26                	sw	s1,20(sp)
   1140a:	7ff77493          	andi	s1,a4,2047
   1140e:	00389713          	slli	a4,a7,0x3
   11412:	0146d893          	srli	a7,a3,0x14
   11416:	080e                	slli	a6,a6,0x3
   11418:	c84a                	sw	s2,16(sp)
   1141a:	8fd9                	or	a5,a5,a4
   1141c:	7ff8f893          	andi	a7,a7,2047
   11420:	01d65713          	srli	a4,a2,0x1d
   11424:	ce06                	sw	ra,28(sp)
   11426:	cc22                	sw	s0,24(sp)
   11428:	c64e                	sw	s3,12(sp)
   1142a:	01f5d913          	srli	s2,a1,0x1f
   1142e:	82fd                	srli	a3,a3,0x1f
   11430:	01076733          	or	a4,a4,a6
   11434:	050e                	slli	a0,a0,0x3
   11436:	060e                	slli	a2,a2,0x3
   11438:	41148833          	sub	a6,s1,a7
   1143c:	22d91963          	bne	s2,a3,1166e <__adddf3+0x27e>
   11440:	0f005563          	blez	a6,1152a <__adddf3+0x13a>
   11444:	02089963          	bnez	a7,11476 <__adddf3+0x86>
   11448:	00c766b3          	or	a3,a4,a2
   1144c:	52068263          	beqz	a3,11970 <__adddf3+0x580>
   11450:	fff80593          	addi	a1,a6,-1
   11454:	e991                	bnez	a1,11468 <__adddf3+0x78>
   11456:	962a                	add	a2,a2,a0
   11458:	00a636b3          	sltu	a3,a2,a0
   1145c:	973e                	add	a4,a4,a5
   1145e:	8532                	mv	a0,a2
   11460:	00d707b3          	add	a5,a4,a3
   11464:	4485                	li	s1,1
   11466:	a8b9                	j	114c4 <__adddf3+0xd4>
   11468:	7ff00693          	li	a3,2047
   1146c:	00d81d63          	bne	a6,a3,11486 <__adddf3+0x96>
   11470:	7ff00493          	li	s1,2047
   11474:	a24d                	j	11616 <__adddf3+0x226>
   11476:	7ff00693          	li	a3,2047
   1147a:	18d48e63          	beq	s1,a3,11616 <__adddf3+0x226>
   1147e:	008006b7          	lui	a3,0x800
   11482:	8f55                	or	a4,a4,a3
   11484:	85c2                	mv	a1,a6
   11486:	03800693          	li	a3,56
   1148a:	08b6cb63          	blt	a3,a1,11520 <__adddf3+0x130>
   1148e:	46fd                	li	a3,31
   11490:	06b6c163          	blt	a3,a1,114f2 <__adddf3+0x102>
   11494:	02000813          	li	a6,32
   11498:	40b80833          	sub	a6,a6,a1
   1149c:	010716b3          	sll	a3,a4,a6
   114a0:	00b658b3          	srl	a7,a2,a1
   114a4:	01061833          	sll	a6,a2,a6
   114a8:	0116e6b3          	or	a3,a3,a7
   114ac:	01003833          	snez	a6,a6
   114b0:	0106e6b3          	or	a3,a3,a6
   114b4:	00b755b3          	srl	a1,a4,a1
   114b8:	9536                	add	a0,a0,a3
   114ba:	95be                	add	a1,a1,a5
   114bc:	00d536b3          	sltu	a3,a0,a3
   114c0:	00d587b3          	add	a5,a1,a3
   114c4:	00879713          	slli	a4,a5,0x8
   114c8:	14075763          	bgez	a4,11616 <__adddf3+0x226>
   114cc:	0485                	addi	s1,s1,1
   114ce:	7ff00713          	li	a4,2047
   114d2:	48e48c63          	beq	s1,a4,1196a <__adddf3+0x57a>
   114d6:	ff800737          	lui	a4,0xff800
   114da:	177d                	addi	a4,a4,-1 # ff7fffff <__BSS_END__+0xff7e15a3>
   114dc:	8f7d                	and	a4,a4,a5
   114de:	00155793          	srli	a5,a0,0x1
   114e2:	8905                	andi	a0,a0,1
   114e4:	8fc9                	or	a5,a5,a0
   114e6:	01f71513          	slli	a0,a4,0x1f
   114ea:	8d5d                	or	a0,a0,a5
   114ec:	00175793          	srli	a5,a4,0x1
   114f0:	a21d                	j	11616 <__adddf3+0x226>
   114f2:	fe058693          	addi	a3,a1,-32
   114f6:	02000893          	li	a7,32
   114fa:	00d756b3          	srl	a3,a4,a3
   114fe:	4801                	li	a6,0
   11500:	01158863          	beq	a1,a7,11510 <__adddf3+0x120>
   11504:	04000813          	li	a6,64
   11508:	40b80833          	sub	a6,a6,a1
   1150c:	01071833          	sll	a6,a4,a6
   11510:	00c86833          	or	a6,a6,a2
   11514:	01003833          	snez	a6,a6
   11518:	0106e6b3          	or	a3,a3,a6
   1151c:	4581                	li	a1,0
   1151e:	bf69                	j	114b8 <__adddf3+0xc8>
   11520:	00c766b3          	or	a3,a4,a2
   11524:	00d036b3          	snez	a3,a3
   11528:	bfd5                	j	1151c <__adddf3+0x12c>
   1152a:	0a080963          	beqz	a6,115dc <__adddf3+0x1ec>
   1152e:	409886b3          	sub	a3,a7,s1
   11532:	ec99                	bnez	s1,11550 <__adddf3+0x160>
   11534:	00a7e5b3          	or	a1,a5,a0
   11538:	42058163          	beqz	a1,1195a <__adddf3+0x56a>
   1153c:	fff68593          	addi	a1,a3,-1 # 7fffff <__BSS_END__+0x7e15a3>
   11540:	d999                	beqz	a1,11456 <__adddf3+0x66>
   11542:	7ff00813          	li	a6,2047
   11546:	01069d63          	bne	a3,a6,11560 <__adddf3+0x170>
   1154a:	87ba                	mv	a5,a4
   1154c:	8532                	mv	a0,a2
   1154e:	b70d                	j	11470 <__adddf3+0x80>
   11550:	7ff00593          	li	a1,2047
   11554:	feb88be3          	beq	a7,a1,1154a <__adddf3+0x15a>
   11558:	008005b7          	lui	a1,0x800
   1155c:	8fcd                	or	a5,a5,a1
   1155e:	85b6                	mv	a1,a3
   11560:	03800693          	li	a3,56
   11564:	06b6c763          	blt	a3,a1,115d2 <__adddf3+0x1e2>
   11568:	46fd                	li	a3,31
   1156a:	02b6cd63          	blt	a3,a1,115a4 <__adddf3+0x1b4>
   1156e:	02000813          	li	a6,32
   11572:	40b80833          	sub	a6,a6,a1
   11576:	010796b3          	sll	a3,a5,a6
   1157a:	00b55333          	srl	t1,a0,a1
   1157e:	01051833          	sll	a6,a0,a6
   11582:	0066e6b3          	or	a3,a3,t1
   11586:	01003833          	snez	a6,a6
   1158a:	0106e6b3          	or	a3,a3,a6
   1158e:	00b7d5b3          	srl	a1,a5,a1
   11592:	9636                	add	a2,a2,a3
   11594:	95ba                	add	a1,a1,a4
   11596:	00d636b3          	sltu	a3,a2,a3
   1159a:	8532                	mv	a0,a2
   1159c:	00d587b3          	add	a5,a1,a3
   115a0:	84c6                	mv	s1,a7
   115a2:	b70d                	j	114c4 <__adddf3+0xd4>
   115a4:	fe058693          	addi	a3,a1,-32 # 7fffe0 <__BSS_END__+0x7e1584>
   115a8:	02000313          	li	t1,32
   115ac:	00d7d6b3          	srl	a3,a5,a3
   115b0:	4801                	li	a6,0
   115b2:	00658863          	beq	a1,t1,115c2 <__adddf3+0x1d2>
   115b6:	04000813          	li	a6,64
   115ba:	40b80833          	sub	a6,a6,a1
   115be:	01079833          	sll	a6,a5,a6
   115c2:	00a86833          	or	a6,a6,a0
   115c6:	01003833          	snez	a6,a6
   115ca:	0106e6b3          	or	a3,a3,a6
   115ce:	4581                	li	a1,0
   115d0:	b7c9                	j	11592 <__adddf3+0x1a2>
   115d2:	00a7e6b3          	or	a3,a5,a0
   115d6:	00d036b3          	snez	a3,a3
   115da:	bfd5                	j	115ce <__adddf3+0x1de>
   115dc:	00148693          	addi	a3,s1,1
   115e0:	7fe6f593          	andi	a1,a3,2046
   115e4:	e5a5                	bnez	a1,1164c <__adddf3+0x25c>
   115e6:	00a7e6b3          	or	a3,a5,a0
   115ea:	e4b1                	bnez	s1,11636 <__adddf3+0x246>
   115ec:	36068a63          	beqz	a3,11960 <__adddf3+0x570>
   115f0:	00c766b3          	or	a3,a4,a2
   115f4:	c28d                	beqz	a3,11616 <__adddf3+0x226>
   115f6:	962a                	add	a2,a2,a0
   115f8:	00a636b3          	sltu	a3,a2,a0
   115fc:	973e                	add	a4,a4,a5
   115fe:	00d707b3          	add	a5,a4,a3
   11602:	00879713          	slli	a4,a5,0x8
   11606:	8532                	mv	a0,a2
   11608:	00075763          	bgez	a4,11616 <__adddf3+0x226>
   1160c:	ff800737          	lui	a4,0xff800
   11610:	177d                	addi	a4,a4,-1 # ff7fffff <__BSS_END__+0xff7e15a3>
   11612:	8ff9                	and	a5,a5,a4
   11614:	4485                	li	s1,1
   11616:	00757713          	andi	a4,a0,7
   1161a:	36070363          	beqz	a4,11980 <__adddf3+0x590>
   1161e:	00f57713          	andi	a4,a0,15
   11622:	4691                	li	a3,4
   11624:	34d70e63          	beq	a4,a3,11980 <__adddf3+0x590>
   11628:	00450713          	addi	a4,a0,4
   1162c:	00a736b3          	sltu	a3,a4,a0
   11630:	97b6                	add	a5,a5,a3
   11632:	853a                	mv	a0,a4
   11634:	a6b1                	j	11980 <__adddf3+0x590>
   11636:	da91                	beqz	a3,1154a <__adddf3+0x15a>
   11638:	8e59                	or	a2,a2,a4
   1163a:	e2060be3          	beqz	a2,11470 <__adddf3+0x80>
   1163e:	4901                	li	s2,0
   11640:	004007b7          	lui	a5,0x400
   11644:	4501                	li	a0,0
   11646:	7ff00493          	li	s1,2047
   1164a:	ae1d                	j	11980 <__adddf3+0x590>
   1164c:	7ff00593          	li	a1,2047
   11650:	30b68b63          	beq	a3,a1,11966 <__adddf3+0x576>
   11654:	962a                	add	a2,a2,a0
   11656:	00a63533          	sltu	a0,a2,a0
   1165a:	973e                	add	a4,a4,a5
   1165c:	972a                	add	a4,a4,a0
   1165e:	01f71513          	slli	a0,a4,0x1f
   11662:	8205                	srli	a2,a2,0x1
   11664:	8d51                	or	a0,a0,a2
   11666:	00175793          	srli	a5,a4,0x1
   1166a:	84b6                	mv	s1,a3
   1166c:	b76d                	j	11616 <__adddf3+0x226>
   1166e:	0d005a63          	blez	a6,11742 <__adddf3+0x352>
   11672:	08089463          	bnez	a7,116fa <__adddf3+0x30a>
   11676:	00c766b3          	or	a3,a4,a2
   1167a:	2e068b63          	beqz	a3,11970 <__adddf3+0x580>
   1167e:	fff80693          	addi	a3,a6,-1
   11682:	ee81                	bnez	a3,1169a <__adddf3+0x2aa>
   11684:	40c50633          	sub	a2,a0,a2
   11688:	00c536b3          	sltu	a3,a0,a2
   1168c:	40e78733          	sub	a4,a5,a4
   11690:	8532                	mv	a0,a2
   11692:	40d707b3          	sub	a5,a4,a3
   11696:	4485                	li	s1,1
   11698:	a0b9                	j	116e6 <__adddf3+0x2f6>
   1169a:	7ff00593          	li	a1,2047
   1169e:	dcb809e3          	beq	a6,a1,11470 <__adddf3+0x80>
   116a2:	03800593          	li	a1,56
   116a6:	08d5ca63          	blt	a1,a3,1173a <__adddf3+0x34a>
   116aa:	45fd                	li	a1,31
   116ac:	06d5c063          	blt	a1,a3,1170c <__adddf3+0x31c>
   116b0:	02000813          	li	a6,32
   116b4:	40d80833          	sub	a6,a6,a3
   116b8:	00d658b3          	srl	a7,a2,a3
   116bc:	010715b3          	sll	a1,a4,a6
   116c0:	01061833          	sll	a6,a2,a6
   116c4:	0115e5b3          	or	a1,a1,a7
   116c8:	01003833          	snez	a6,a6
   116cc:	0105e633          	or	a2,a1,a6
   116d0:	00d756b3          	srl	a3,a4,a3
   116d4:	40c50633          	sub	a2,a0,a2
   116d8:	00c53733          	sltu	a4,a0,a2
   116dc:	40d786b3          	sub	a3,a5,a3
   116e0:	8532                	mv	a0,a2
   116e2:	40e687b3          	sub	a5,a3,a4
   116e6:	00879713          	slli	a4,a5,0x8
   116ea:	f20756e3          	bgez	a4,11616 <__adddf3+0x226>
   116ee:	00800437          	lui	s0,0x800
   116f2:	147d                	addi	s0,s0,-1 # 7fffff <__BSS_END__+0x7e15a3>
   116f4:	8c7d                	and	s0,s0,a5
   116f6:	89aa                	mv	s3,a0
   116f8:	aa45                	j	118a8 <__adddf3+0x4b8>
   116fa:	7ff00693          	li	a3,2047
   116fe:	f0d48ce3          	beq	s1,a3,11616 <__adddf3+0x226>
   11702:	008006b7          	lui	a3,0x800
   11706:	8f55                	or	a4,a4,a3
   11708:	86c2                	mv	a3,a6
   1170a:	bf61                	j	116a2 <__adddf3+0x2b2>
   1170c:	fe068593          	addi	a1,a3,-32 # 7fffe0 <__BSS_END__+0x7e1584>
   11710:	02000893          	li	a7,32
   11714:	00b755b3          	srl	a1,a4,a1
   11718:	4801                	li	a6,0
   1171a:	01168863          	beq	a3,a7,1172a <__adddf3+0x33a>
   1171e:	04000813          	li	a6,64
   11722:	40d80833          	sub	a6,a6,a3
   11726:	01071833          	sll	a6,a4,a6
   1172a:	00c86833          	or	a6,a6,a2
   1172e:	01003833          	snez	a6,a6
   11732:	0105e633          	or	a2,a1,a6
   11736:	4681                	li	a3,0
   11738:	bf71                	j	116d4 <__adddf3+0x2e4>
   1173a:	8e59                	or	a2,a2,a4
   1173c:	00c03633          	snez	a2,a2
   11740:	bfdd                	j	11736 <__adddf3+0x346>
   11742:	0c080563          	beqz	a6,1180c <__adddf3+0x41c>
   11746:	40988833          	sub	a6,a7,s1
   1174a:	e895                	bnez	s1,1177e <__adddf3+0x38e>
   1174c:	00a7e5b3          	or	a1,a5,a0
   11750:	22058263          	beqz	a1,11974 <__adddf3+0x584>
   11754:	fff80593          	addi	a1,a6,-1
   11758:	e991                	bnez	a1,1176c <__adddf3+0x37c>
   1175a:	40a60533          	sub	a0,a2,a0
   1175e:	8f1d                	sub	a4,a4,a5
   11760:	00a63633          	sltu	a2,a2,a0
   11764:	40c707b3          	sub	a5,a4,a2
   11768:	8936                	mv	s2,a3
   1176a:	b735                	j	11696 <__adddf3+0x2a6>
   1176c:	7ff00313          	li	t1,2047
   11770:	00681f63          	bne	a6,t1,1178e <__adddf3+0x39e>
   11774:	87ba                	mv	a5,a4
   11776:	8532                	mv	a0,a2
   11778:	7ff00493          	li	s1,2047
   1177c:	a07d                	j	1182a <__adddf3+0x43a>
   1177e:	7ff00593          	li	a1,2047
   11782:	feb889e3          	beq	a7,a1,11774 <__adddf3+0x384>
   11786:	008005b7          	lui	a1,0x800
   1178a:	8fcd                	or	a5,a5,a1
   1178c:	85c2                	mv	a1,a6
   1178e:	03800813          	li	a6,56
   11792:	06b84963          	blt	a6,a1,11804 <__adddf3+0x414>
   11796:	487d                	li	a6,31
   11798:	02b84f63          	blt	a6,a1,117d6 <__adddf3+0x3e6>
   1179c:	02000313          	li	t1,32
   117a0:	40b30333          	sub	t1,t1,a1
   117a4:	00b55e33          	srl	t3,a0,a1
   117a8:	00679833          	sll	a6,a5,t1
   117ac:	00651333          	sll	t1,a0,t1
   117b0:	01c86833          	or	a6,a6,t3
   117b4:	00603333          	snez	t1,t1
   117b8:	00686533          	or	a0,a6,t1
   117bc:	00b7d5b3          	srl	a1,a5,a1
   117c0:	40a60533          	sub	a0,a2,a0
   117c4:	40b705b3          	sub	a1,a4,a1
   117c8:	00a63633          	sltu	a2,a2,a0
   117cc:	40c587b3          	sub	a5,a1,a2
   117d0:	84c6                	mv	s1,a7
   117d2:	8936                	mv	s2,a3
   117d4:	bf09                	j	116e6 <__adddf3+0x2f6>
   117d6:	fe058813          	addi	a6,a1,-32 # 7fffe0 <__BSS_END__+0x7e1584>
   117da:	02000e13          	li	t3,32
   117de:	0107d833          	srl	a6,a5,a6
   117e2:	4301                	li	t1,0
   117e4:	01c58863          	beq	a1,t3,117f4 <__adddf3+0x404>
   117e8:	04000313          	li	t1,64
   117ec:	40b30333          	sub	t1,t1,a1
   117f0:	00679333          	sll	t1,a5,t1
   117f4:	00a36333          	or	t1,t1,a0
   117f8:	00603333          	snez	t1,t1
   117fc:	00686533          	or	a0,a6,t1
   11800:	4581                	li	a1,0
   11802:	bf7d                	j	117c0 <__adddf3+0x3d0>
   11804:	8d5d                	or	a0,a0,a5
   11806:	00a03533          	snez	a0,a0
   1180a:	bfdd                	j	11800 <__adddf3+0x410>
   1180c:	00148593          	addi	a1,s1,1
   11810:	7fe5f593          	andi	a1,a1,2046
   11814:	e5ad                	bnez	a1,1187e <__adddf3+0x48e>
   11816:	00a7e833          	or	a6,a5,a0
   1181a:	00c765b3          	or	a1,a4,a2
   1181e:	e4a9                	bnez	s1,11868 <__adddf3+0x478>
   11820:	00081763          	bnez	a6,1182e <__adddf3+0x43e>
   11824:	c1e5                	beqz	a1,11904 <__adddf3+0x514>
   11826:	87ba                	mv	a5,a4
   11828:	8532                	mv	a0,a2
   1182a:	8936                	mv	s2,a3
   1182c:	b3ed                	j	11616 <__adddf3+0x226>
   1182e:	de0584e3          	beqz	a1,11616 <__adddf3+0x226>
   11832:	40c50833          	sub	a6,a0,a2
   11836:	010538b3          	sltu	a7,a0,a6
   1183a:	40e785b3          	sub	a1,a5,a4
   1183e:	411585b3          	sub	a1,a1,a7
   11842:	00859893          	slli	a7,a1,0x8
   11846:	0008da63          	bgez	a7,1185a <__adddf3+0x46a>
   1184a:	40a60533          	sub	a0,a2,a0
   1184e:	8f1d                	sub	a4,a4,a5
   11850:	00a63633          	sltu	a2,a2,a0
   11854:	40c707b3          	sub	a5,a4,a2
   11858:	bfc9                	j	1182a <__adddf3+0x43a>
   1185a:	00b86533          	or	a0,a6,a1
   1185e:	10050f63          	beqz	a0,1197c <__adddf3+0x58c>
   11862:	87ae                	mv	a5,a1
   11864:	8542                	mv	a0,a6
   11866:	bb45                	j	11616 <__adddf3+0x226>
   11868:	00081863          	bnez	a6,11878 <__adddf3+0x488>
   1186c:	dc0589e3          	beqz	a1,1163e <__adddf3+0x24e>
   11870:	87ba                	mv	a5,a4
   11872:	8532                	mv	a0,a2
   11874:	8936                	mv	s2,a3
   11876:	beed                	j	11470 <__adddf3+0x80>
   11878:	be058ce3          	beqz	a1,11470 <__adddf3+0x80>
   1187c:	b3c9                	j	1163e <__adddf3+0x24e>
   1187e:	40c505b3          	sub	a1,a0,a2
   11882:	00b53833          	sltu	a6,a0,a1
   11886:	40e78433          	sub	s0,a5,a4
   1188a:	41040433          	sub	s0,s0,a6
   1188e:	00841813          	slli	a6,s0,0x8
   11892:	89ae                	mv	s3,a1
   11894:	06085563          	bgez	a6,118fe <__adddf3+0x50e>
   11898:	40a609b3          	sub	s3,a2,a0
   1189c:	40f70433          	sub	s0,a4,a5
   118a0:	01363633          	sltu	a2,a2,s3
   118a4:	8c11                	sub	s0,s0,a2
   118a6:	8936                	mv	s2,a3
   118a8:	c025                	beqz	s0,11908 <__adddf3+0x518>
   118aa:	8522                	mv	a0,s0
   118ac:	00000097          	auipc	ra,0x0
   118b0:	b08080e7          	jalr	-1272(ra) # 113b4 <__clzsi2>
   118b4:	ff850693          	addi	a3,a0,-8
   118b8:	02000793          	li	a5,32
   118bc:	8f95                	sub	a5,a5,a3
   118be:	00d41433          	sll	s0,s0,a3
   118c2:	00f9d7b3          	srl	a5,s3,a5
   118c6:	8fc1                	or	a5,a5,s0
   118c8:	00d99433          	sll	s0,s3,a3
   118cc:	0896c063          	blt	a3,s1,1194c <__adddf3+0x55c>
   118d0:	8e85                	sub	a3,a3,s1
   118d2:	00168613          	addi	a2,a3,1
   118d6:	477d                	li	a4,31
   118d8:	04c74763          	blt	a4,a2,11926 <__adddf3+0x536>
   118dc:	02000713          	li	a4,32
   118e0:	8f11                	sub	a4,a4,a2
   118e2:	00e79533          	sll	a0,a5,a4
   118e6:	00c456b3          	srl	a3,s0,a2
   118ea:	00e41733          	sll	a4,s0,a4
   118ee:	8d55                	or	a0,a0,a3
   118f0:	00e03733          	snez	a4,a4
   118f4:	8d59                	or	a0,a0,a4
   118f6:	00c7d7b3          	srl	a5,a5,a2
   118fa:	4481                	li	s1,0
   118fc:	bb29                	j	11616 <__adddf3+0x226>
   118fe:	8dc1                	or	a1,a1,s0
   11900:	f5c5                	bnez	a1,118a8 <__adddf3+0x4b8>
   11902:	4481                	li	s1,0
   11904:	4901                	li	s2,0
   11906:	a095                	j	1196a <__adddf3+0x57a>
   11908:	854e                	mv	a0,s3
   1190a:	00000097          	auipc	ra,0x0
   1190e:	aaa080e7          	jalr	-1366(ra) # 113b4 <__clzsi2>
   11912:	01850693          	addi	a3,a0,24
   11916:	47fd                	li	a5,31
   11918:	fad7d0e3          	bge	a5,a3,118b8 <__adddf3+0x4c8>
   1191c:	ff850793          	addi	a5,a0,-8
   11920:	00f997b3          	sll	a5,s3,a5
   11924:	b765                	j	118cc <__adddf3+0x4dc>
   11926:	1685                	addi	a3,a3,-31
   11928:	00d7d533          	srl	a0,a5,a3
   1192c:	02000693          	li	a3,32
   11930:	4701                	li	a4,0
   11932:	00d60763          	beq	a2,a3,11940 <__adddf3+0x550>
   11936:	04000713          	li	a4,64
   1193a:	8f11                	sub	a4,a4,a2
   1193c:	00e79733          	sll	a4,a5,a4
   11940:	8f41                	or	a4,a4,s0
   11942:	00e03733          	snez	a4,a4
   11946:	8d59                	or	a0,a0,a4
   11948:	4781                	li	a5,0
   1194a:	bf45                	j	118fa <__adddf3+0x50a>
   1194c:	ff800737          	lui	a4,0xff800
   11950:	177d                	addi	a4,a4,-1 # ff7fffff <__BSS_END__+0xff7e15a3>
   11952:	8c95                	sub	s1,s1,a3
   11954:	8ff9                	and	a5,a5,a4
   11956:	8522                	mv	a0,s0
   11958:	b97d                	j	11616 <__adddf3+0x226>
   1195a:	87ba                	mv	a5,a4
   1195c:	8532                	mv	a0,a2
   1195e:	b331                	j	1166a <__adddf3+0x27a>
   11960:	87ba                	mv	a5,a4
   11962:	8532                	mv	a0,a2
   11964:	b94d                	j	11616 <__adddf3+0x226>
   11966:	7ff00493          	li	s1,2047
   1196a:	4781                	li	a5,0
   1196c:	4501                	li	a0,0
   1196e:	a809                	j	11980 <__adddf3+0x590>
   11970:	84c2                	mv	s1,a6
   11972:	b155                	j	11616 <__adddf3+0x226>
   11974:	87ba                	mv	a5,a4
   11976:	8532                	mv	a0,a2
   11978:	84c2                	mv	s1,a6
   1197a:	bd45                	j	1182a <__adddf3+0x43a>
   1197c:	4781                	li	a5,0
   1197e:	4901                	li	s2,0
   11980:	00879713          	slli	a4,a5,0x8
   11984:	00075b63          	bgez	a4,1199a <__adddf3+0x5aa>
   11988:	0485                	addi	s1,s1,1
   1198a:	7ff00713          	li	a4,2047
   1198e:	04e48b63          	beq	s1,a4,119e4 <__adddf3+0x5f4>
   11992:	ff800737          	lui	a4,0xff800
   11996:	177d                	addi	a4,a4,-1 # ff7fffff <__BSS_END__+0xff7e15a3>
   11998:	8ff9                	and	a5,a5,a4
   1199a:	01d79693          	slli	a3,a5,0x1d
   1199e:	810d                	srli	a0,a0,0x3
   119a0:	7ff00713          	li	a4,2047
   119a4:	8ec9                	or	a3,a3,a0
   119a6:	838d                	srli	a5,a5,0x3
   119a8:	00e49963          	bne	s1,a4,119ba <__adddf3+0x5ca>
   119ac:	8edd                	or	a3,a3,a5
   119ae:	4781                	li	a5,0
   119b0:	c689                	beqz	a3,119ba <__adddf3+0x5ca>
   119b2:	000807b7          	lui	a5,0x80
   119b6:	4681                	li	a3,0
   119b8:	4901                	li	s2,0
   119ba:	01449713          	slli	a4,s1,0x14
   119be:	7ff00637          	lui	a2,0x7ff00
   119c2:	07b2                	slli	a5,a5,0xc
   119c4:	8f71                	and	a4,a4,a2
   119c6:	40f2                	lw	ra,28(sp)
   119c8:	4462                	lw	s0,24(sp)
   119ca:	83b1                	srli	a5,a5,0xc
   119cc:	8fd9                	or	a5,a5,a4
   119ce:	01f91713          	slli	a4,s2,0x1f
   119d2:	00e7e633          	or	a2,a5,a4
   119d6:	44d2                	lw	s1,20(sp)
   119d8:	4942                	lw	s2,16(sp)
   119da:	49b2                	lw	s3,12(sp)
   119dc:	8536                	mv	a0,a3
   119de:	85b2                	mv	a1,a2
   119e0:	6105                	addi	sp,sp,32
   119e2:	8082                	ret
   119e4:	4781                	li	a5,0
   119e6:	4501                	li	a0,0
   119e8:	bf4d                	j	1199a <__adddf3+0x5aa>

000119ea <__divdf3>:
   119ea:	7179                	addi	sp,sp,-48
   119ec:	0145d813          	srli	a6,a1,0x14
   119f0:	d226                	sw	s1,36(sp)
   119f2:	d04a                	sw	s2,32(sp)
   119f4:	ce4e                	sw	s3,28(sp)
   119f6:	c85a                	sw	s6,16(sp)
   119f8:	c65e                	sw	s7,12(sp)
   119fa:	00c59493          	slli	s1,a1,0xc
   119fe:	d606                	sw	ra,44(sp)
   11a00:	d422                	sw	s0,40(sp)
   11a02:	cc52                	sw	s4,24(sp)
   11a04:	ca56                	sw	s5,20(sp)
   11a06:	7ff87813          	andi	a6,a6,2047
   11a0a:	8b2a                	mv	s6,a0
   11a0c:	8bb2                	mv	s7,a2
   11a0e:	8936                	mv	s2,a3
   11a10:	80b1                	srli	s1,s1,0xc
   11a12:	01f5d993          	srli	s3,a1,0x1f
   11a16:	08080163          	beqz	a6,11a98 <__divdf3+0xae>
   11a1a:	7ff00793          	li	a5,2047
   11a1e:	0cf80c63          	beq	a6,a5,11af6 <__divdf3+0x10c>
   11a22:	01d55a13          	srli	s4,a0,0x1d
   11a26:	048e                	slli	s1,s1,0x3
   11a28:	009a6a33          	or	s4,s4,s1
   11a2c:	008007b7          	lui	a5,0x800
   11a30:	00fa6a33          	or	s4,s4,a5
   11a34:	00351413          	slli	s0,a0,0x3
   11a38:	c0180a93          	addi	s5,a6,-1023
   11a3c:	4b01                	li	s6,0
   11a3e:	01495713          	srli	a4,s2,0x14
   11a42:	00c91493          	slli	s1,s2,0xc
   11a46:	7ff77713          	andi	a4,a4,2047
   11a4a:	80b1                	srli	s1,s1,0xc
   11a4c:	01f95913          	srli	s2,s2,0x1f
   11a50:	c771                	beqz	a4,11b1c <__divdf3+0x132>
   11a52:	7ff00793          	li	a5,2047
   11a56:	12f70163          	beq	a4,a5,11b78 <__divdf3+0x18e>
   11a5a:	048e                	slli	s1,s1,0x3
   11a5c:	01dbd793          	srli	a5,s7,0x1d
   11a60:	8fc5                	or	a5,a5,s1
   11a62:	008004b7          	lui	s1,0x800
   11a66:	8cdd                	or	s1,s1,a5
   11a68:	003b9f13          	slli	t5,s7,0x3
   11a6c:	c0170713          	addi	a4,a4,-1023
   11a70:	4781                	li	a5,0
   11a72:	40ea8833          	sub	a6,s5,a4
   11a76:	002b1713          	slli	a4,s6,0x2
   11a7a:	8f5d                	or	a4,a4,a5
   11a7c:	177d                	addi	a4,a4,-1
   11a7e:	46b9                	li	a3,14
   11a80:	0129c633          	xor	a2,s3,s2
   11a84:	10e6ec63          	bltu	a3,a4,11b9c <__divdf3+0x1b2>
   11a88:	0001e6b7          	lui	a3,0x1e
   11a8c:	070a                	slli	a4,a4,0x2
   11a8e:	8b868693          	addi	a3,a3,-1864 # 1d8b8 <_ZTVN6tflite12_GLOBAL__N_125MicroBuiltinDataAllocatorE+0x18>
   11a92:	9736                	add	a4,a4,a3
   11a94:	4318                	lw	a4,0(a4)
   11a96:	8702                	jr	a4
   11a98:	00a4ea33          	or	s4,s1,a0
   11a9c:	060a0663          	beqz	s4,11b08 <__divdf3+0x11e>
   11aa0:	c89d                	beqz	s1,11ad6 <__divdf3+0xec>
   11aa2:	8526                	mv	a0,s1
   11aa4:	00000097          	auipc	ra,0x0
   11aa8:	910080e7          	jalr	-1776(ra) # 113b4 <__clzsi2>
   11aac:	ff550793          	addi	a5,a0,-11
   11ab0:	4a75                	li	s4,29
   11ab2:	ff850713          	addi	a4,a0,-8
   11ab6:	40fa0a33          	sub	s4,s4,a5
   11aba:	00e494b3          	sll	s1,s1,a4
   11abe:	014b5a33          	srl	s4,s6,s4
   11ac2:	009a6a33          	or	s4,s4,s1
   11ac6:	00eb14b3          	sll	s1,s6,a4
   11aca:	c0d00813          	li	a6,-1011
   11ace:	40a80ab3          	sub	s5,a6,a0
   11ad2:	8426                	mv	s0,s1
   11ad4:	b7a5                	j	11a3c <__divdf3+0x52>
   11ad6:	00000097          	auipc	ra,0x0
   11ada:	8de080e7          	jalr	-1826(ra) # 113b4 <__clzsi2>
   11ade:	8a2a                	mv	s4,a0
   11ae0:	015a0793          	addi	a5,s4,21
   11ae4:	4771                	li	a4,28
   11ae6:	02050513          	addi	a0,a0,32
   11aea:	fcf753e3          	bge	a4,a5,11ab0 <__divdf3+0xc6>
   11aee:	1a61                	addi	s4,s4,-8
   11af0:	014b1a33          	sll	s4,s6,s4
   11af4:	bfd9                	j	11aca <__divdf3+0xe0>
   11af6:	00a4ea33          	or	s4,s1,a0
   11afa:	000a1b63          	bnez	s4,11b10 <__divdf3+0x126>
   11afe:	4401                	li	s0,0
   11b00:	7ff00a93          	li	s5,2047
   11b04:	4b09                	li	s6,2
   11b06:	bf25                	j	11a3e <__divdf3+0x54>
   11b08:	4401                	li	s0,0
   11b0a:	4a81                	li	s5,0
   11b0c:	4b05                	li	s6,1
   11b0e:	bf05                	j	11a3e <__divdf3+0x54>
   11b10:	842a                	mv	s0,a0
   11b12:	8a26                	mv	s4,s1
   11b14:	7ff00a93          	li	s5,2047
   11b18:	4b0d                	li	s6,3
   11b1a:	b715                	j	11a3e <__divdf3+0x54>
   11b1c:	0174ef33          	or	t5,s1,s7
   11b20:	060f0563          	beqz	t5,11b8a <__divdf3+0x1a0>
   11b24:	c88d                	beqz	s1,11b56 <__divdf3+0x16c>
   11b26:	8526                	mv	a0,s1
   11b28:	00000097          	auipc	ra,0x0
   11b2c:	88c080e7          	jalr	-1908(ra) # 113b4 <__clzsi2>
   11b30:	ff550713          	addi	a4,a0,-11
   11b34:	47f5                	li	a5,29
   11b36:	ff850693          	addi	a3,a0,-8
   11b3a:	8f99                	sub	a5,a5,a4
   11b3c:	00d494b3          	sll	s1,s1,a3
   11b40:	00fbd7b3          	srl	a5,s7,a5
   11b44:	8fc5                	or	a5,a5,s1
   11b46:	00db94b3          	sll	s1,s7,a3
   11b4a:	c0d00713          	li	a4,-1011
   11b4e:	8f26                	mv	t5,s1
   11b50:	8f09                	sub	a4,a4,a0
   11b52:	84be                	mv	s1,a5
   11b54:	bf31                	j	11a70 <__divdf3+0x86>
   11b56:	855e                	mv	a0,s7
   11b58:	00000097          	auipc	ra,0x0
   11b5c:	85c080e7          	jalr	-1956(ra) # 113b4 <__clzsi2>
   11b60:	87aa                	mv	a5,a0
   11b62:	01578713          	addi	a4,a5,21 # 800015 <__BSS_END__+0x7e15b9>
   11b66:	46f1                	li	a3,28
   11b68:	02050513          	addi	a0,a0,32
   11b6c:	fce6d4e3          	bge	a3,a4,11b34 <__divdf3+0x14a>
   11b70:	17e1                	addi	a5,a5,-8
   11b72:	00fb97b3          	sll	a5,s7,a5
   11b76:	bfd1                	j	11b4a <__divdf3+0x160>
   11b78:	0174ef33          	or	t5,s1,s7
   11b7c:	000f1b63          	bnez	t5,11b92 <__divdf3+0x1a8>
   11b80:	4481                	li	s1,0
   11b82:	7ff00713          	li	a4,2047
   11b86:	4789                	li	a5,2
   11b88:	b5ed                	j	11a72 <__divdf3+0x88>
   11b8a:	4481                	li	s1,0
   11b8c:	4701                	li	a4,0
   11b8e:	4785                	li	a5,1
   11b90:	b5cd                	j	11a72 <__divdf3+0x88>
   11b92:	8f5e                	mv	t5,s7
   11b94:	7ff00713          	li	a4,2047
   11b98:	478d                	li	a5,3
   11b9a:	bde1                	j	11a72 <__divdf3+0x88>
   11b9c:	0144e663          	bltu	s1,s4,11ba8 <__divdf3+0x1be>
   11ba0:	2a9a1a63          	bne	s4,s1,11e54 <__divdf3+0x46a>
   11ba4:	2be46863          	bltu	s0,t5,11e54 <__divdf3+0x46a>
   11ba8:	01fa1693          	slli	a3,s4,0x1f
   11bac:	00145793          	srli	a5,s0,0x1
   11bb0:	01f41713          	slli	a4,s0,0x1f
   11bb4:	001a5a13          	srli	s4,s4,0x1
   11bb8:	00f6e433          	or	s0,a3,a5
   11bbc:	00849893          	slli	a7,s1,0x8
   11bc0:	018f5593          	srli	a1,t5,0x18
   11bc4:	0115e5b3          	or	a1,a1,a7
   11bc8:	0108d893          	srli	a7,a7,0x10
   11bcc:	031a5eb3          	divu	t4,s4,a7
   11bd0:	01059313          	slli	t1,a1,0x10
   11bd4:	01035313          	srli	t1,t1,0x10
   11bd8:	01045793          	srli	a5,s0,0x10
   11bdc:	008f1513          	slli	a0,t5,0x8
   11be0:	031a7a33          	remu	s4,s4,a7
   11be4:	86f6                	mv	a3,t4
   11be6:	03d30e33          	mul	t3,t1,t4
   11bea:	0a42                	slli	s4,s4,0x10
   11bec:	0147e7b3          	or	a5,a5,s4
   11bf0:	01c7fc63          	bgeu	a5,t3,11c08 <__divdf3+0x21e>
   11bf4:	97ae                	add	a5,a5,a1
   11bf6:	fffe8693          	addi	a3,t4,-1
   11bfa:	00b7e763          	bltu	a5,a1,11c08 <__divdf3+0x21e>
   11bfe:	01c7f563          	bgeu	a5,t3,11c08 <__divdf3+0x21e>
   11c02:	ffee8693          	addi	a3,t4,-2
   11c06:	97ae                	add	a5,a5,a1
   11c08:	41c787b3          	sub	a5,a5,t3
   11c0c:	0317df33          	divu	t5,a5,a7
   11c10:	0442                	slli	s0,s0,0x10
   11c12:	8041                	srli	s0,s0,0x10
   11c14:	0317f7b3          	remu	a5,a5,a7
   11c18:	8e7a                	mv	t3,t5
   11c1a:	03e30eb3          	mul	t4,t1,t5
   11c1e:	07c2                	slli	a5,a5,0x10
   11c20:	8fc1                	or	a5,a5,s0
   11c22:	01d7fc63          	bgeu	a5,t4,11c3a <__divdf3+0x250>
   11c26:	97ae                	add	a5,a5,a1
   11c28:	ffff0e13          	addi	t3,t5,-1
   11c2c:	00b7e763          	bltu	a5,a1,11c3a <__divdf3+0x250>
   11c30:	01d7f563          	bgeu	a5,t4,11c3a <__divdf3+0x250>
   11c34:	ffef0e13          	addi	t3,t5,-2
   11c38:	97ae                	add	a5,a5,a1
   11c3a:	06c2                	slli	a3,a3,0x10
   11c3c:	6441                	lui	s0,0x10
   11c3e:	01c6e2b3          	or	t0,a3,t3
   11c42:	fff40e13          	addi	t3,s0,-1 # ffff <exit-0x95>
   11c46:	01c2f6b3          	and	a3,t0,t3
   11c4a:	0102df93          	srli	t6,t0,0x10
   11c4e:	01c57e33          	and	t3,a0,t3
   11c52:	41d787b3          	sub	a5,a5,t4
   11c56:	01055e93          	srli	t4,a0,0x10
   11c5a:	02de03b3          	mul	t2,t3,a3
   11c5e:	03cf84b3          	mul	s1,t6,t3
   11c62:	02de86b3          	mul	a3,t4,a3
   11c66:	00968f33          	add	t5,a3,s1
   11c6a:	0103d693          	srli	a3,t2,0x10
   11c6e:	96fa                	add	a3,a3,t5
   11c70:	03df8fb3          	mul	t6,t6,t4
   11c74:	0096f363          	bgeu	a3,s1,11c7a <__divdf3+0x290>
   11c78:	9fa2                	add	t6,t6,s0
   11c7a:	0106df13          	srli	t5,a3,0x10
   11c7e:	9f7e                	add	t5,t5,t6
   11c80:	6fc1                	lui	t6,0x10
   11c82:	1ffd                	addi	t6,t6,-1 # ffff <exit-0x95>
   11c84:	01f6f6b3          	and	a3,a3,t6
   11c88:	06c2                	slli	a3,a3,0x10
   11c8a:	01f3f3b3          	and	t2,t2,t6
   11c8e:	969e                	add	a3,a3,t2
   11c90:	01e7e763          	bltu	a5,t5,11c9e <__divdf3+0x2b4>
   11c94:	8496                	mv	s1,t0
   11c96:	05e79263          	bne	a5,t5,11cda <__divdf3+0x2f0>
   11c9a:	04d77063          	bgeu	a4,a3,11cda <__divdf3+0x2f0>
   11c9e:	00a70fb3          	add	t6,a4,a0
   11ca2:	00efb3b3          	sltu	t2,t6,a4
   11ca6:	00b38433          	add	s0,t2,a1
   11caa:	97a2                	add	a5,a5,s0
   11cac:	fff28493          	addi	s1,t0,-1
   11cb0:	877e                	mv	a4,t6
   11cb2:	00f5e663          	bltu	a1,a5,11cbe <__divdf3+0x2d4>
   11cb6:	02f59263          	bne	a1,a5,11cda <__divdf3+0x2f0>
   11cba:	02039063          	bnez	t2,11cda <__divdf3+0x2f0>
   11cbe:	01e7e663          	bltu	a5,t5,11cca <__divdf3+0x2e0>
   11cc2:	00ff1c63          	bne	t5,a5,11cda <__divdf3+0x2f0>
   11cc6:	00dffa63          	bgeu	t6,a3,11cda <__divdf3+0x2f0>
   11cca:	9faa                	add	t6,t6,a0
   11ccc:	877e                	mv	a4,t6
   11cce:	00afbfb3          	sltu	t6,t6,a0
   11cd2:	9fae                	add	t6,t6,a1
   11cd4:	ffe28493          	addi	s1,t0,-2
   11cd8:	97fe                	add	a5,a5,t6
   11cda:	40d706b3          	sub	a3,a4,a3
   11cde:	41e787b3          	sub	a5,a5,t5
   11ce2:	00d73733          	sltu	a4,a4,a3
   11ce6:	8f99                	sub	a5,a5,a4
   11ce8:	5f7d                	li	t5,-1
   11cea:	0ef58963          	beq	a1,a5,11ddc <__divdf3+0x3f2>
   11cee:	0317dfb3          	divu	t6,a5,a7
   11cf2:	0106d713          	srli	a4,a3,0x10
   11cf6:	0317f7b3          	remu	a5,a5,a7
   11cfa:	03f30f33          	mul	t5,t1,t6
   11cfe:	07c2                	slli	a5,a5,0x10
   11d00:	8fd9                	or	a5,a5,a4
   11d02:	877e                	mv	a4,t6
   11d04:	01e7fc63          	bgeu	a5,t5,11d1c <__divdf3+0x332>
   11d08:	97ae                	add	a5,a5,a1
   11d0a:	ffff8713          	addi	a4,t6,-1
   11d0e:	00b7e763          	bltu	a5,a1,11d1c <__divdf3+0x332>
   11d12:	01e7f563          	bgeu	a5,t5,11d1c <__divdf3+0x332>
   11d16:	ffef8713          	addi	a4,t6,-2
   11d1a:	97ae                	add	a5,a5,a1
   11d1c:	41e787b3          	sub	a5,a5,t5
   11d20:	0317df33          	divu	t5,a5,a7
   11d24:	06c2                	slli	a3,a3,0x10
   11d26:	82c1                	srli	a3,a3,0x10
   11d28:	0317f7b3          	remu	a5,a5,a7
   11d2c:	88fa                	mv	a7,t5
   11d2e:	03e30333          	mul	t1,t1,t5
   11d32:	07c2                	slli	a5,a5,0x10
   11d34:	8fd5                	or	a5,a5,a3
   11d36:	0067fc63          	bgeu	a5,t1,11d4e <__divdf3+0x364>
   11d3a:	97ae                	add	a5,a5,a1
   11d3c:	ffff0893          	addi	a7,t5,-1
   11d40:	00b7e763          	bltu	a5,a1,11d4e <__divdf3+0x364>
   11d44:	0067f563          	bgeu	a5,t1,11d4e <__divdf3+0x364>
   11d48:	ffef0893          	addi	a7,t5,-2
   11d4c:	97ae                	add	a5,a5,a1
   11d4e:	01071693          	slli	a3,a4,0x10
   11d52:	0116e6b3          	or	a3,a3,a7
   11d56:	01069713          	slli	a4,a3,0x10
   11d5a:	8341                	srli	a4,a4,0x10
   11d5c:	406787b3          	sub	a5,a5,t1
   11d60:	0106d313          	srli	t1,a3,0x10
   11d64:	03c70f33          	mul	t5,a4,t3
   11d68:	03c30e33          	mul	t3,t1,t3
   11d6c:	026e8333          	mul	t1,t4,t1
   11d70:	02ee8eb3          	mul	t4,t4,a4
   11d74:	010f5713          	srli	a4,t5,0x10
   11d78:	9ef2                	add	t4,t4,t3
   11d7a:	9776                	add	a4,a4,t4
   11d7c:	01c77463          	bgeu	a4,t3,11d84 <__divdf3+0x39a>
   11d80:	68c1                	lui	a7,0x10
   11d82:	9346                	add	t1,t1,a7
   11d84:	01075893          	srli	a7,a4,0x10
   11d88:	989a                	add	a7,a7,t1
   11d8a:	6341                	lui	t1,0x10
   11d8c:	137d                	addi	t1,t1,-1 # ffff <exit-0x95>
   11d8e:	00677733          	and	a4,a4,t1
   11d92:	0742                	slli	a4,a4,0x10
   11d94:	006f7f33          	and	t5,t5,t1
   11d98:	977a                	add	a4,a4,t5
   11d9a:	0117e663          	bltu	a5,a7,11da6 <__divdf3+0x3bc>
   11d9e:	19179d63          	bne	a5,a7,11f38 <__divdf3+0x54e>
   11da2:	8f36                	mv	t5,a3
   11da4:	cf05                	beqz	a4,11ddc <__divdf3+0x3f2>
   11da6:	97ae                	add	a5,a5,a1
   11da8:	fff68f13          	addi	t5,a3,-1
   11dac:	833e                	mv	t1,a5
   11dae:	02b7e163          	bltu	a5,a1,11dd0 <__divdf3+0x3e6>
   11db2:	0117e663          	bltu	a5,a7,11dbe <__divdf3+0x3d4>
   11db6:	19179063          	bne	a5,a7,11f36 <__divdf3+0x54c>
   11dba:	00e57d63          	bgeu	a0,a4,11dd4 <__divdf3+0x3ea>
   11dbe:	ffe68f13          	addi	t5,a3,-2
   11dc2:	00151693          	slli	a3,a0,0x1
   11dc6:	00a6b333          	sltu	t1,a3,a0
   11dca:	932e                	add	t1,t1,a1
   11dcc:	933e                	add	t1,t1,a5
   11dce:	8536                	mv	a0,a3
   11dd0:	01131463          	bne	t1,a7,11dd8 <__divdf3+0x3ee>
   11dd4:	00a70463          	beq	a4,a0,11ddc <__divdf3+0x3f2>
   11dd8:	001f6f13          	ori	t5,t5,1
   11ddc:	3ff80713          	addi	a4,a6,1023
   11de0:	0ae05763          	blez	a4,11e8e <__divdf3+0x4a4>
   11de4:	007f7793          	andi	a5,t5,7
   11de8:	cf81                	beqz	a5,11e00 <__divdf3+0x416>
   11dea:	00ff7793          	andi	a5,t5,15
   11dee:	4691                	li	a3,4
   11df0:	00d78863          	beq	a5,a3,11e00 <__divdf3+0x416>
   11df4:	004f0793          	addi	a5,t5,4
   11df8:	01e7b6b3          	sltu	a3,a5,t5
   11dfc:	94b6                	add	s1,s1,a3
   11dfe:	8f3e                	mv	t5,a5
   11e00:	00749793          	slli	a5,s1,0x7
   11e04:	0007d863          	bgez	a5,11e14 <__divdf3+0x42a>
   11e08:	ff0007b7          	lui	a5,0xff000
   11e0c:	17fd                	addi	a5,a5,-1 # feffffff <__BSS_END__+0xfefe15a3>
   11e0e:	8cfd                	and	s1,s1,a5
   11e10:	40080713          	addi	a4,a6,1024
   11e14:	7fe00793          	li	a5,2046
   11e18:	04e7ce63          	blt	a5,a4,11e74 <__divdf3+0x48a>
   11e1c:	003f5f13          	srli	t5,t5,0x3
   11e20:	01d49793          	slli	a5,s1,0x1d
   11e24:	01e7ef33          	or	t5,a5,t5
   11e28:	0034d513          	srli	a0,s1,0x3
   11e2c:	0532                	slli	a0,a0,0xc
   11e2e:	50b2                	lw	ra,44(sp)
   11e30:	5422                	lw	s0,40(sp)
   11e32:	8131                	srli	a0,a0,0xc
   11e34:	0752                	slli	a4,a4,0x14
   11e36:	8f49                	or	a4,a4,a0
   11e38:	067e                	slli	a2,a2,0x1f
   11e3a:	00c767b3          	or	a5,a4,a2
   11e3e:	5492                	lw	s1,36(sp)
   11e40:	5902                	lw	s2,32(sp)
   11e42:	49f2                	lw	s3,28(sp)
   11e44:	4a62                	lw	s4,24(sp)
   11e46:	4ad2                	lw	s5,20(sp)
   11e48:	4b42                	lw	s6,16(sp)
   11e4a:	4bb2                	lw	s7,12(sp)
   11e4c:	857a                	mv	a0,t5
   11e4e:	85be                	mv	a1,a5
   11e50:	6145                	addi	sp,sp,48
   11e52:	8082                	ret
   11e54:	187d                	addi	a6,a6,-1
   11e56:	4701                	li	a4,0
   11e58:	b395                	j	11bbc <__divdf3+0x1d2>
   11e5a:	864e                	mv	a2,s3
   11e5c:	84d2                	mv	s1,s4
   11e5e:	8f22                	mv	t5,s0
   11e60:	87da                	mv	a5,s6
   11e62:	470d                	li	a4,3
   11e64:	0ae78b63          	beq	a5,a4,11f1a <__divdf3+0x530>
   11e68:	4705                	li	a4,1
   11e6a:	0ae78f63          	beq	a5,a4,11f28 <__divdf3+0x53e>
   11e6e:	4709                	li	a4,2
   11e70:	f6e796e3          	bne	a5,a4,11ddc <__divdf3+0x3f2>
   11e74:	4501                	li	a0,0
   11e76:	4f01                	li	t5,0
   11e78:	7ff00713          	li	a4,2047
   11e7c:	bf45                	j	11e2c <__divdf3+0x442>
   11e7e:	864a                	mv	a2,s2
   11e80:	b7cd                	j	11e62 <__divdf3+0x478>
   11e82:	000804b7          	lui	s1,0x80
   11e86:	4f01                	li	t5,0
   11e88:	4601                	li	a2,0
   11e8a:	478d                	li	a5,3
   11e8c:	bfd9                	j	11e62 <__divdf3+0x478>
   11e8e:	4505                	li	a0,1
   11e90:	8d19                	sub	a0,a0,a4
   11e92:	03800793          	li	a5,56
   11e96:	08a7c963          	blt	a5,a0,11f28 <__divdf3+0x53e>
   11e9a:	47fd                	li	a5,31
   11e9c:	04a7cb63          	blt	a5,a0,11ef2 <__divdf3+0x508>
   11ea0:	41e80813          	addi	a6,a6,1054
   11ea4:	010497b3          	sll	a5,s1,a6
   11ea8:	00af5733          	srl	a4,t5,a0
   11eac:	010f1833          	sll	a6,t5,a6
   11eb0:	8fd9                	or	a5,a5,a4
   11eb2:	01003833          	snez	a6,a6
   11eb6:	0107e7b3          	or	a5,a5,a6
   11eba:	00a4d533          	srl	a0,s1,a0
   11ebe:	0077f713          	andi	a4,a5,7
   11ec2:	cf01                	beqz	a4,11eda <__divdf3+0x4f0>
   11ec4:	00f7f713          	andi	a4,a5,15
   11ec8:	4691                	li	a3,4
   11eca:	00d70863          	beq	a4,a3,11eda <__divdf3+0x4f0>
   11ece:	00478713          	addi	a4,a5,4
   11ed2:	00f736b3          	sltu	a3,a4,a5
   11ed6:	9536                	add	a0,a0,a3
   11ed8:	87ba                	mv	a5,a4
   11eda:	00851713          	slli	a4,a0,0x8
   11ede:	04074863          	bltz	a4,11f2e <__divdf3+0x544>
   11ee2:	01d51f13          	slli	t5,a0,0x1d
   11ee6:	838d                	srli	a5,a5,0x3
   11ee8:	00ff6f33          	or	t5,t5,a5
   11eec:	810d                	srli	a0,a0,0x3
   11eee:	4701                	li	a4,0
   11ef0:	bf35                	j	11e2c <__divdf3+0x442>
   11ef2:	5785                	li	a5,-31
   11ef4:	8f99                	sub	a5,a5,a4
   11ef6:	02000693          	li	a3,32
   11efa:	00f4d7b3          	srl	a5,s1,a5
   11efe:	4701                	li	a4,0
   11f00:	00d50663          	beq	a0,a3,11f0c <__divdf3+0x522>
   11f04:	43e80713          	addi	a4,a6,1086
   11f08:	00e49733          	sll	a4,s1,a4
   11f0c:	01e76733          	or	a4,a4,t5
   11f10:	00e03733          	snez	a4,a4
   11f14:	8fd9                	or	a5,a5,a4
   11f16:	4501                	li	a0,0
   11f18:	b75d                	j	11ebe <__divdf3+0x4d4>
   11f1a:	00080537          	lui	a0,0x80
   11f1e:	4f01                	li	t5,0
   11f20:	7ff00713          	li	a4,2047
   11f24:	4601                	li	a2,0
   11f26:	b719                	j	11e2c <__divdf3+0x442>
   11f28:	4501                	li	a0,0
   11f2a:	4f01                	li	t5,0
   11f2c:	b7c9                	j	11eee <__divdf3+0x504>
   11f2e:	4501                	li	a0,0
   11f30:	4f01                	li	t5,0
   11f32:	4705                	li	a4,1
   11f34:	bde5                	j	11e2c <__divdf3+0x442>
   11f36:	86fa                	mv	a3,t5
   11f38:	8f36                	mv	t5,a3
   11f3a:	bd79                	j	11dd8 <__divdf3+0x3ee>

00011f3c <__eqdf2>:
   11f3c:	0145d713          	srli	a4,a1,0x14
   11f40:	001007b7          	lui	a5,0x100
   11f44:	17fd                	addi	a5,a5,-1 # fffff <__BSS_END__+0xe15a3>
   11f46:	0146d813          	srli	a6,a3,0x14
   11f4a:	832a                	mv	t1,a0
   11f4c:	8eaa                	mv	t4,a0
   11f4e:	7ff77713          	andi	a4,a4,2047
   11f52:	7ff00513          	li	a0,2047
   11f56:	00b7f8b3          	and	a7,a5,a1
   11f5a:	8f32                	mv	t5,a2
   11f5c:	8ff5                	and	a5,a5,a3
   11f5e:	81fd                	srli	a1,a1,0x1f
   11f60:	7ff87813          	andi	a6,a6,2047
   11f64:	82fd                	srli	a3,a3,0x1f
   11f66:	00a71a63          	bne	a4,a0,11f7a <__eqdf2+0x3e>
   11f6a:	0068ee33          	or	t3,a7,t1
   11f6e:	4505                	li	a0,1
   11f70:	000e1463          	bnez	t3,11f78 <__eqdf2+0x3c>
   11f74:	00e80563          	beq	a6,a4,11f7e <__eqdf2+0x42>
   11f78:	8082                	ret
   11f7a:	00a81563          	bne	a6,a0,11f84 <__eqdf2+0x48>
   11f7e:	8e5d                	or	a2,a2,a5
   11f80:	4505                	li	a0,1
   11f82:	fa7d                	bnez	a2,11f78 <__eqdf2+0x3c>
   11f84:	4505                	li	a0,1
   11f86:	ff0719e3          	bne	a4,a6,11f78 <__eqdf2+0x3c>
   11f8a:	fef897e3          	bne	a7,a5,11f78 <__eqdf2+0x3c>
   11f8e:	ffee95e3          	bne	t4,t5,11f78 <__eqdf2+0x3c>
   11f92:	00d58863          	beq	a1,a3,11fa2 <__eqdf2+0x66>
   11f96:	f36d                	bnez	a4,11f78 <__eqdf2+0x3c>
   11f98:	0068e8b3          	or	a7,a7,t1
   11f9c:	01103533          	snez	a0,a7
   11fa0:	8082                	ret
   11fa2:	4501                	li	a0,0
   11fa4:	8082                	ret

00011fa6 <__gedf2>:
   11fa6:	0146d793          	srli	a5,a3,0x14
   11faa:	0145d893          	srli	a7,a1,0x14
   11fae:	00100737          	lui	a4,0x100
   11fb2:	177d                	addi	a4,a4,-1 # fffff <__BSS_END__+0xe15a3>
   11fb4:	882a                	mv	a6,a0
   11fb6:	8e2a                	mv	t3,a0
   11fb8:	7ff8f893          	andi	a7,a7,2047
   11fbc:	7ff7f513          	andi	a0,a5,2047
   11fc0:	7ff00793          	li	a5,2047
   11fc4:	00b77333          	and	t1,a4,a1
   11fc8:	8eb2                	mv	t4,a2
   11fca:	8f75                	and	a4,a4,a3
   11fcc:	81fd                	srli	a1,a1,0x1f
   11fce:	82fd                	srli	a3,a3,0x1f
   11fd0:	00f89563          	bne	a7,a5,11fda <__gedf2+0x34>
   11fd4:	010367b3          	or	a5,t1,a6
   11fd8:	eba9                	bnez	a5,1202a <__gedf2+0x84>
   11fda:	7ff00793          	li	a5,2047
   11fde:	00f51563          	bne	a0,a5,11fe8 <__gedf2+0x42>
   11fe2:	00c767b3          	or	a5,a4,a2
   11fe6:	e3b1                	bnez	a5,1202a <__gedf2+0x84>
   11fe8:	4781                	li	a5,0
   11fea:	00089663          	bnez	a7,11ff6 <__gedf2+0x50>
   11fee:	01036833          	or	a6,t1,a6
   11ff2:	00183793          	seqz	a5,a6
   11ff6:	ed05                	bnez	a0,1202e <__gedf2+0x88>
   11ff8:	8e59                	or	a2,a2,a4
   11ffa:	c791                	beqz	a5,12006 <__gedf2+0x60>
   11ffc:	ca01                	beqz	a2,1200c <__gedf2+0x66>
   11ffe:	4505                	li	a0,1
   12000:	e691                	bnez	a3,1200c <__gedf2+0x66>
   12002:	557d                	li	a0,-1
   12004:	8082                	ret
   12006:	e60d                	bnez	a2,12030 <__gedf2+0x8a>
   12008:	557d                	li	a0,-1
   1200a:	c98d                	beqz	a1,1203c <__gedf2+0x96>
   1200c:	8082                	ret
   1200e:	fea8c8e3          	blt	a7,a0,11ffe <__gedf2+0x58>
   12012:	fe676be3          	bltu	a4,t1,12008 <__gedf2+0x62>
   12016:	00e31763          	bne	t1,a4,12024 <__gedf2+0x7e>
   1201a:	ffcee7e3          	bltu	t4,t3,12008 <__gedf2+0x62>
   1201e:	4501                	li	a0,0
   12020:	ffde76e3          	bgeu	t3,t4,1200c <__gedf2+0x66>
   12024:	4505                	li	a0,1
   12026:	f1fd                	bnez	a1,1200c <__gedf2+0x66>
   12028:	bfe9                	j	12002 <__gedf2+0x5c>
   1202a:	5579                	li	a0,-2
   1202c:	8082                	ret
   1202e:	fbe1                	bnez	a5,11ffe <__gedf2+0x58>
   12030:	fcb69ce3          	bne	a3,a1,12008 <__gedf2+0x62>
   12034:	fd155de3          	bge	a0,a7,1200e <__gedf2+0x68>
   12038:	557d                	li	a0,-1
   1203a:	fae9                	bnez	a3,1200c <__gedf2+0x66>
   1203c:	4505                	li	a0,1
   1203e:	8082                	ret

00012040 <__ledf2>:
   12040:	0146d793          	srli	a5,a3,0x14
   12044:	0145d893          	srli	a7,a1,0x14
   12048:	00100737          	lui	a4,0x100
   1204c:	177d                	addi	a4,a4,-1 # fffff <__BSS_END__+0xe15a3>
   1204e:	882a                	mv	a6,a0
   12050:	8e2a                	mv	t3,a0
   12052:	7ff8f893          	andi	a7,a7,2047
   12056:	7ff7f513          	andi	a0,a5,2047
   1205a:	7ff00793          	li	a5,2047
   1205e:	00b77333          	and	t1,a4,a1
   12062:	8eb2                	mv	t4,a2
   12064:	8f75                	and	a4,a4,a3
   12066:	81fd                	srli	a1,a1,0x1f
   12068:	82fd                	srli	a3,a3,0x1f
   1206a:	00f89563          	bne	a7,a5,12074 <__ledf2+0x34>
   1206e:	010367b3          	or	a5,t1,a6
   12072:	eba9                	bnez	a5,120c4 <__ledf2+0x84>
   12074:	7ff00793          	li	a5,2047
   12078:	00f51563          	bne	a0,a5,12082 <__ledf2+0x42>
   1207c:	00c767b3          	or	a5,a4,a2
   12080:	e3b1                	bnez	a5,120c4 <__ledf2+0x84>
   12082:	4781                	li	a5,0
   12084:	00089663          	bnez	a7,12090 <__ledf2+0x50>
   12088:	01036833          	or	a6,t1,a6
   1208c:	00183793          	seqz	a5,a6
   12090:	ed05                	bnez	a0,120c8 <__ledf2+0x88>
   12092:	8e59                	or	a2,a2,a4
   12094:	c791                	beqz	a5,120a0 <__ledf2+0x60>
   12096:	ca01                	beqz	a2,120a6 <__ledf2+0x66>
   12098:	4505                	li	a0,1
   1209a:	e691                	bnez	a3,120a6 <__ledf2+0x66>
   1209c:	557d                	li	a0,-1
   1209e:	8082                	ret
   120a0:	e60d                	bnez	a2,120ca <__ledf2+0x8a>
   120a2:	557d                	li	a0,-1
   120a4:	c98d                	beqz	a1,120d6 <__ledf2+0x96>
   120a6:	8082                	ret
   120a8:	fea8c8e3          	blt	a7,a0,12098 <__ledf2+0x58>
   120ac:	fe676be3          	bltu	a4,t1,120a2 <__ledf2+0x62>
   120b0:	00e31763          	bne	t1,a4,120be <__ledf2+0x7e>
   120b4:	ffcee7e3          	bltu	t4,t3,120a2 <__ledf2+0x62>
   120b8:	4501                	li	a0,0
   120ba:	ffde76e3          	bgeu	t3,t4,120a6 <__ledf2+0x66>
   120be:	4505                	li	a0,1
   120c0:	f1fd                	bnez	a1,120a6 <__ledf2+0x66>
   120c2:	bfe9                	j	1209c <__ledf2+0x5c>
   120c4:	4509                	li	a0,2
   120c6:	8082                	ret
   120c8:	fbe1                	bnez	a5,12098 <__ledf2+0x58>
   120ca:	fcb69ce3          	bne	a3,a1,120a2 <__ledf2+0x62>
   120ce:	fd155de3          	bge	a0,a7,120a8 <__ledf2+0x68>
   120d2:	557d                	li	a0,-1
   120d4:	fae9                	bnez	a3,120a6 <__ledf2+0x66>
   120d6:	4505                	li	a0,1
   120d8:	8082                	ret

000120da <__muldf3>:
   120da:	7179                	addi	sp,sp,-48
   120dc:	ca56                	sw	s5,20(sp)
   120de:	0145da93          	srli	s5,a1,0x14
   120e2:	d422                	sw	s0,40(sp)
   120e4:	d226                	sw	s1,36(sp)
   120e6:	ce4e                	sw	s3,28(sp)
   120e8:	cc52                	sw	s4,24(sp)
   120ea:	c85a                	sw	s6,16(sp)
   120ec:	00c59493          	slli	s1,a1,0xc
   120f0:	d606                	sw	ra,44(sp)
   120f2:	d04a                	sw	s2,32(sp)
   120f4:	c65e                	sw	s7,12(sp)
   120f6:	7ffafa93          	andi	s5,s5,2047
   120fa:	842a                	mv	s0,a0
   120fc:	8b32                	mv	s6,a2
   120fe:	89b6                	mv	s3,a3
   12100:	80b1                	srli	s1,s1,0xc
   12102:	01f5da13          	srli	s4,a1,0x1f
   12106:	1e0a8163          	beqz	s5,122e8 <__muldf3+0x20e>
   1210a:	7ff00793          	li	a5,2047
   1210e:	22fa8b63          	beq	s5,a5,12344 <__muldf3+0x26a>
   12112:	048e                	slli	s1,s1,0x3
   12114:	01d55793          	srli	a5,a0,0x1d
   12118:	8fc5                	or	a5,a5,s1
   1211a:	008004b7          	lui	s1,0x800
   1211e:	8cdd                	or	s1,s1,a5
   12120:	00351913          	slli	s2,a0,0x3
   12124:	c01a8a93          	addi	s5,s5,-1023
   12128:	4b81                	li	s7,0
   1212a:	0149d713          	srli	a4,s3,0x14
   1212e:	00c99413          	slli	s0,s3,0xc
   12132:	7ff77713          	andi	a4,a4,2047
   12136:	8031                	srli	s0,s0,0xc
   12138:	01f9d993          	srli	s3,s3,0x1f
   1213c:	22070663          	beqz	a4,12368 <__muldf3+0x28e>
   12140:	7ff00793          	li	a5,2047
   12144:	26f70f63          	beq	a4,a5,123c2 <__muldf3+0x2e8>
   12148:	040e                	slli	s0,s0,0x3
   1214a:	01db5793          	srli	a5,s6,0x1d
   1214e:	8fc1                	or	a5,a5,s0
   12150:	00800437          	lui	s0,0x800
   12154:	8c5d                	or	s0,s0,a5
   12156:	c0170693          	addi	a3,a4,-1023
   1215a:	003b1793          	slli	a5,s6,0x3
   1215e:	4701                	li	a4,0
   12160:	9ab6                	add	s5,s5,a3
   12162:	002b9693          	slli	a3,s7,0x2
   12166:	8ed9                	or	a3,a3,a4
   12168:	4629                	li	a2,10
   1216a:	001a8513          	addi	a0,s5,1
   1216e:	30d64d63          	blt	a2,a3,12488 <__muldf3+0x3ae>
   12172:	4609                	li	a2,2
   12174:	013a45b3          	xor	a1,s4,s3
   12178:	26d64663          	blt	a2,a3,123e4 <__muldf3+0x30a>
   1217c:	16fd                	addi	a3,a3,-1
   1217e:	4605                	li	a2,1
   12180:	28d67163          	bgeu	a2,a3,12402 <__muldf3+0x328>
   12184:	6341                	lui	t1,0x10
   12186:	fff30e13          	addi	t3,t1,-1 # ffff <exit-0x95>
   1218a:	01095713          	srli	a4,s2,0x10
   1218e:	0107d893          	srli	a7,a5,0x10
   12192:	01c97933          	and	s2,s2,t3
   12196:	01c7ff33          	and	t5,a5,t3
   1219a:	03e907b3          	mul	a5,s2,t5
   1219e:	03e70eb3          	mul	t4,a4,t5
   121a2:	0107d813          	srli	a6,a5,0x10
   121a6:	03288633          	mul	a2,a7,s2
   121aa:	9676                	add	a2,a2,t4
   121ac:	9832                	add	a6,a6,a2
   121ae:	031706b3          	mul	a3,a4,a7
   121b2:	01d87363          	bgeu	a6,t4,121b8 <__muldf3+0xde>
   121b6:	969a                	add	a3,a3,t1
   121b8:	01085293          	srli	t0,a6,0x10
   121bc:	01c87833          	and	a6,a6,t3
   121c0:	01c7f7b3          	and	a5,a5,t3
   121c4:	01045613          	srli	a2,s0,0x10
   121c8:	01c47e33          	and	t3,s0,t3
   121cc:	0842                	slli	a6,a6,0x10
   121ce:	983e                	add	a6,a6,a5
   121d0:	03c90eb3          	mul	t4,s2,t3
   121d4:	03c707b3          	mul	a5,a4,t3
   121d8:	03260933          	mul	s2,a2,s2
   121dc:	02c70333          	mul	t1,a4,a2
   121e0:	993e                	add	s2,s2,a5
   121e2:	010ed713          	srli	a4,t4,0x10
   121e6:	974a                	add	a4,a4,s2
   121e8:	00f77463          	bgeu	a4,a5,121f0 <__muldf3+0x116>
   121ec:	67c1                	lui	a5,0x10
   121ee:	933e                	add	t1,t1,a5
   121f0:	6441                	lui	s0,0x10
   121f2:	01075793          	srli	a5,a4,0x10
   121f6:	fff40f93          	addi	t6,s0,-1 # ffff <exit-0x95>
   121fa:	933e                	add	t1,t1,a5
   121fc:	01f777b3          	and	a5,a4,t6
   12200:	01fefeb3          	and	t4,t4,t6
   12204:	07c2                	slli	a5,a5,0x10
   12206:	01f4ffb3          	and	t6,s1,t6
   1220a:	97f6                	add	a5,a5,t4
   1220c:	0104de93          	srli	t4,s1,0x10
   12210:	03ff03b3          	mul	t2,t5,t6
   12214:	92be                	add	t0,t0,a5
   12216:	03ee8f33          	mul	t5,t4,t5
   1221a:	0103d713          	srli	a4,t2,0x10
   1221e:	03d884b3          	mul	s1,a7,t4
   12222:	03f888b3          	mul	a7,a7,t6
   12226:	98fa                	add	a7,a7,t5
   12228:	9746                	add	a4,a4,a7
   1222a:	01e77363          	bgeu	a4,t5,12230 <__muldf3+0x156>
   1222e:	94a2                	add	s1,s1,s0
   12230:	01075f13          	srli	t5,a4,0x10
   12234:	9f26                	add	t5,t5,s1
   12236:	64c1                	lui	s1,0x10
   12238:	fff48413          	addi	s0,s1,-1 # ffff <exit-0x95>
   1223c:	8f61                	and	a4,a4,s0
   1223e:	0083f3b3          	and	t2,t2,s0
   12242:	0742                	slli	a4,a4,0x10
   12244:	007708b3          	add	a7,a4,t2
   12248:	03fe03b3          	mul	t2,t3,t6
   1224c:	03ce8e33          	mul	t3,t4,t3
   12250:	03d60eb3          	mul	t4,a2,t4
   12254:	03f60633          	mul	a2,a2,t6
   12258:	0103df93          	srli	t6,t2,0x10
   1225c:	9672                	add	a2,a2,t3
   1225e:	9fb2                	add	t6,t6,a2
   12260:	01cff363          	bgeu	t6,t3,12266 <__muldf3+0x18c>
   12264:	9ea6                	add	t4,t4,s1
   12266:	008ff733          	and	a4,t6,s0
   1226a:	0083f3b3          	and	t2,t2,s0
   1226e:	0742                	slli	a4,a4,0x10
   12270:	9696                	add	a3,a3,t0
   12272:	971e                	add	a4,a4,t2
   12274:	933a                	add	t1,t1,a4
   12276:	00f6b7b3          	sltu	a5,a3,a5
   1227a:	979a                	add	a5,a5,t1
   1227c:	00e33633          	sltu	a2,t1,a4
   12280:	98b6                	add	a7,a7,a3
   12282:	0067b333          	sltu	t1,a5,t1
   12286:	00666633          	or	a2,a2,t1
   1228a:	00d8b6b3          	sltu	a3,a7,a3
   1228e:	01e78333          	add	t1,a5,t5
   12292:	969a                	add	a3,a3,t1
   12294:	00f33733          	sltu	a4,t1,a5
   12298:	010fdf93          	srli	t6,t6,0x10
   1229c:	0066b333          	sltu	t1,a3,t1
   122a0:	00989793          	slli	a5,a7,0x9
   122a4:	967e                	add	a2,a2,t6
   122a6:	00676733          	or	a4,a4,t1
   122aa:	9732                	add	a4,a4,a2
   122ac:	0107e7b3          	or	a5,a5,a6
   122b0:	9776                	add	a4,a4,t4
   122b2:	00f037b3          	snez	a5,a5
   122b6:	0178d893          	srli	a7,a7,0x17
   122ba:	0726                	slli	a4,a4,0x9
   122bc:	0176d413          	srli	s0,a3,0x17
   122c0:	0117e7b3          	or	a5,a5,a7
   122c4:	06a6                	slli	a3,a3,0x9
   122c6:	8fd5                	or	a5,a5,a3
   122c8:	00771693          	slli	a3,a4,0x7
   122cc:	8c59                	or	s0,s0,a4
   122ce:	0006db63          	bgez	a3,122e4 <__muldf3+0x20a>
   122d2:	0017d713          	srli	a4,a5,0x1
   122d6:	8b85                	andi	a5,a5,1
   122d8:	8f5d                	or	a4,a4,a5
   122da:	01f41793          	slli	a5,s0,0x1f
   122de:	8fd9                	or	a5,a5,a4
   122e0:	8005                	srli	s0,s0,0x1
   122e2:	8aaa                	mv	s5,a0
   122e4:	8556                	mv	a0,s5
   122e6:	a23d                	j	12414 <__muldf3+0x33a>
   122e8:	00a4e933          	or	s2,s1,a0
   122ec:	06090563          	beqz	s2,12356 <__muldf3+0x27c>
   122f0:	c895                	beqz	s1,12324 <__muldf3+0x24a>
   122f2:	8526                	mv	a0,s1
   122f4:	fffff097          	auipc	ra,0xfffff
   122f8:	0c0080e7          	jalr	192(ra) # 113b4 <__clzsi2>
   122fc:	ff550713          	addi	a4,a0,-11 # 7fff5 <__BSS_END__+0x61599>
   12300:	47f5                	li	a5,29
   12302:	ff850693          	addi	a3,a0,-8
   12306:	8f99                	sub	a5,a5,a4
   12308:	00d494b3          	sll	s1,s1,a3
   1230c:	00f457b3          	srl	a5,s0,a5
   12310:	8fc5                	or	a5,a5,s1
   12312:	00d414b3          	sll	s1,s0,a3
   12316:	c0d00a93          	li	s5,-1011
   1231a:	8926                	mv	s2,s1
   1231c:	40aa8ab3          	sub	s5,s5,a0
   12320:	84be                	mv	s1,a5
   12322:	b519                	j	12128 <__muldf3+0x4e>
   12324:	fffff097          	auipc	ra,0xfffff
   12328:	090080e7          	jalr	144(ra) # 113b4 <__clzsi2>
   1232c:	87aa                	mv	a5,a0
   1232e:	01578713          	addi	a4,a5,21 # 10015 <exit-0x7f>
   12332:	46f1                	li	a3,28
   12334:	02050513          	addi	a0,a0,32
   12338:	fce6d4e3          	bge	a3,a4,12300 <__muldf3+0x226>
   1233c:	17e1                	addi	a5,a5,-8
   1233e:	00f417b3          	sll	a5,s0,a5
   12342:	bfd1                	j	12316 <__muldf3+0x23c>
   12344:	00a4e933          	or	s2,s1,a0
   12348:	00091b63          	bnez	s2,1235e <__muldf3+0x284>
   1234c:	4481                	li	s1,0
   1234e:	7ff00a93          	li	s5,2047
   12352:	4b89                	li	s7,2
   12354:	bbd9                	j	1212a <__muldf3+0x50>
   12356:	4481                	li	s1,0
   12358:	4a81                	li	s5,0
   1235a:	4b85                	li	s7,1
   1235c:	b3f9                	j	1212a <__muldf3+0x50>
   1235e:	892a                	mv	s2,a0
   12360:	7ff00a93          	li	s5,2047
   12364:	4b8d                	li	s7,3
   12366:	b3d1                	j	1212a <__muldf3+0x50>
   12368:	016467b3          	or	a5,s0,s6
   1236c:	c3bd                	beqz	a5,123d2 <__muldf3+0x2f8>
   1236e:	c80d                	beqz	s0,123a0 <__muldf3+0x2c6>
   12370:	8522                	mv	a0,s0
   12372:	fffff097          	auipc	ra,0xfffff
   12376:	042080e7          	jalr	66(ra) # 113b4 <__clzsi2>
   1237a:	ff550693          	addi	a3,a0,-11
   1237e:	4775                	li	a4,29
   12380:	ff850793          	addi	a5,a0,-8
   12384:	8f15                	sub	a4,a4,a3
   12386:	00f41433          	sll	s0,s0,a5
   1238a:	00eb5733          	srl	a4,s6,a4
   1238e:	8f41                	or	a4,a4,s0
   12390:	00fb1433          	sll	s0,s6,a5
   12394:	c0d00693          	li	a3,-1011
   12398:	87a2                	mv	a5,s0
   1239a:	8e89                	sub	a3,a3,a0
   1239c:	843a                	mv	s0,a4
   1239e:	b3c1                	j	1215e <__muldf3+0x84>
   123a0:	855a                	mv	a0,s6
   123a2:	fffff097          	auipc	ra,0xfffff
   123a6:	012080e7          	jalr	18(ra) # 113b4 <__clzsi2>
   123aa:	87aa                	mv	a5,a0
   123ac:	01578693          	addi	a3,a5,21
   123b0:	4771                	li	a4,28
   123b2:	02050513          	addi	a0,a0,32
   123b6:	fcd754e3          	bge	a4,a3,1237e <__muldf3+0x2a4>
   123ba:	17e1                	addi	a5,a5,-8
   123bc:	00fb1733          	sll	a4,s6,a5
   123c0:	bfd1                	j	12394 <__muldf3+0x2ba>
   123c2:	016467b3          	or	a5,s0,s6
   123c6:	eb91                	bnez	a5,123da <__muldf3+0x300>
   123c8:	4401                	li	s0,0
   123ca:	7ff00693          	li	a3,2047
   123ce:	4709                	li	a4,2
   123d0:	bb41                	j	12160 <__muldf3+0x86>
   123d2:	4401                	li	s0,0
   123d4:	4681                	li	a3,0
   123d6:	4705                	li	a4,1
   123d8:	b361                	j	12160 <__muldf3+0x86>
   123da:	87da                	mv	a5,s6
   123dc:	7ff00693          	li	a3,2047
   123e0:	470d                	li	a4,3
   123e2:	bbbd                	j	12160 <__muldf3+0x86>
   123e4:	4605                	li	a2,1
   123e6:	00d61633          	sll	a2,a2,a3
   123ea:	53067693          	andi	a3,a2,1328
   123ee:	e6c5                	bnez	a3,12496 <__muldf3+0x3bc>
   123f0:	24067813          	andi	a6,a2,576
   123f4:	12081f63          	bnez	a6,12532 <__muldf3+0x458>
   123f8:	08867613          	andi	a2,a2,136
   123fc:	d80604e3          	beqz	a2,12184 <__muldf3+0xaa>
   12400:	85ce                	mv	a1,s3
   12402:	4689                	li	a3,2
   12404:	12d70263          	beq	a4,a3,12528 <__muldf3+0x44e>
   12408:	468d                	li	a3,3
   1240a:	12d70a63          	beq	a4,a3,1253e <__muldf3+0x464>
   1240e:	4685                	li	a3,1
   12410:	12d70b63          	beq	a4,a3,12546 <__muldf3+0x46c>
   12414:	3ff50613          	addi	a2,a0,1023
   12418:	08c05363          	blez	a2,1249e <__muldf3+0x3c4>
   1241c:	0077f713          	andi	a4,a5,7
   12420:	cf01                	beqz	a4,12438 <__muldf3+0x35e>
   12422:	00f7f713          	andi	a4,a5,15
   12426:	4691                	li	a3,4
   12428:	00d70863          	beq	a4,a3,12438 <__muldf3+0x35e>
   1242c:	00478713          	addi	a4,a5,4
   12430:	00f736b3          	sltu	a3,a4,a5
   12434:	9436                	add	s0,s0,a3
   12436:	87ba                	mv	a5,a4
   12438:	00741713          	slli	a4,s0,0x7
   1243c:	00075863          	bgez	a4,1244c <__muldf3+0x372>
   12440:	ff000737          	lui	a4,0xff000
   12444:	177d                	addi	a4,a4,-1 # feffffff <__BSS_END__+0xfefe15a3>
   12446:	8c79                	and	s0,s0,a4
   12448:	40050613          	addi	a2,a0,1024
   1244c:	7fe00713          	li	a4,2046
   12450:	0cc74c63          	blt	a4,a2,12528 <__muldf3+0x44e>
   12454:	838d                	srli	a5,a5,0x3
   12456:	01d41693          	slli	a3,s0,0x1d
   1245a:	8edd                	or	a3,a3,a5
   1245c:	00345713          	srli	a4,s0,0x3
   12460:	0732                	slli	a4,a4,0xc
   12462:	50b2                	lw	ra,44(sp)
   12464:	5422                	lw	s0,40(sp)
   12466:	0652                	slli	a2,a2,0x14
   12468:	8331                	srli	a4,a4,0xc
   1246a:	05fe                	slli	a1,a1,0x1f
   1246c:	8e59                	or	a2,a2,a4
   1246e:	00b667b3          	or	a5,a2,a1
   12472:	5492                	lw	s1,36(sp)
   12474:	5902                	lw	s2,32(sp)
   12476:	49f2                	lw	s3,28(sp)
   12478:	4a62                	lw	s4,24(sp)
   1247a:	4ad2                	lw	s5,20(sp)
   1247c:	4b42                	lw	s6,16(sp)
   1247e:	4bb2                	lw	s7,12(sp)
   12480:	8536                	mv	a0,a3
   12482:	85be                	mv	a1,a5
   12484:	6145                	addi	sp,sp,48
   12486:	8082                	ret
   12488:	463d                	li	a2,15
   1248a:	0ac68a63          	beq	a3,a2,1253e <__muldf3+0x464>
   1248e:	462d                	li	a2,11
   12490:	85d2                	mv	a1,s4
   12492:	f6c687e3          	beq	a3,a2,12400 <__muldf3+0x326>
   12496:	8426                	mv	s0,s1
   12498:	87ca                	mv	a5,s2
   1249a:	875e                	mv	a4,s7
   1249c:	b79d                	j	12402 <__muldf3+0x328>
   1249e:	4705                	li	a4,1
   124a0:	8f11                	sub	a4,a4,a2
   124a2:	03800693          	li	a3,56
   124a6:	0ae6c063          	blt	a3,a4,12546 <__muldf3+0x46c>
   124aa:	46fd                	li	a3,31
   124ac:	04e6ca63          	blt	a3,a4,12500 <__muldf3+0x426>
   124b0:	41e50513          	addi	a0,a0,1054
   124b4:	00e7d633          	srl	a2,a5,a4
   124b8:	00a416b3          	sll	a3,s0,a0
   124bc:	00a79533          	sll	a0,a5,a0
   124c0:	8ed1                	or	a3,a3,a2
   124c2:	00a03533          	snez	a0,a0
   124c6:	00a6e7b3          	or	a5,a3,a0
   124ca:	00e45733          	srl	a4,s0,a4
   124ce:	0077f693          	andi	a3,a5,7
   124d2:	ce81                	beqz	a3,124ea <__muldf3+0x410>
   124d4:	00f7f693          	andi	a3,a5,15
   124d8:	4611                	li	a2,4
   124da:	00c68863          	beq	a3,a2,124ea <__muldf3+0x410>
   124de:	00478693          	addi	a3,a5,4
   124e2:	00f6b633          	sltu	a2,a3,a5
   124e6:	9732                	add	a4,a4,a2
   124e8:	87b6                	mv	a5,a3
   124ea:	00871693          	slli	a3,a4,0x8
   124ee:	0406cf63          	bltz	a3,1254c <__muldf3+0x472>
   124f2:	01d71693          	slli	a3,a4,0x1d
   124f6:	838d                	srli	a5,a5,0x3
   124f8:	8edd                	or	a3,a3,a5
   124fa:	830d                	srli	a4,a4,0x3
   124fc:	4601                	li	a2,0
   124fe:	b78d                	j	12460 <__muldf3+0x386>
   12500:	5685                	li	a3,-31
   12502:	8e91                	sub	a3,a3,a2
   12504:	02000813          	li	a6,32
   12508:	00d456b3          	srl	a3,s0,a3
   1250c:	4601                	li	a2,0
   1250e:	01070663          	beq	a4,a6,1251a <__muldf3+0x440>
   12512:	43e50613          	addi	a2,a0,1086
   12516:	00c41633          	sll	a2,s0,a2
   1251a:	8e5d                	or	a2,a2,a5
   1251c:	00c03633          	snez	a2,a2
   12520:	00c6e7b3          	or	a5,a3,a2
   12524:	4701                	li	a4,0
   12526:	b765                	j	124ce <__muldf3+0x3f4>
   12528:	4701                	li	a4,0
   1252a:	4681                	li	a3,0
   1252c:	7ff00613          	li	a2,2047
   12530:	bf05                	j	12460 <__muldf3+0x386>
   12532:	00080737          	lui	a4,0x80
   12536:	7ff00613          	li	a2,2047
   1253a:	4581                	li	a1,0
   1253c:	b715                	j	12460 <__muldf3+0x386>
   1253e:	00080737          	lui	a4,0x80
   12542:	4681                	li	a3,0
   12544:	bfcd                	j	12536 <__muldf3+0x45c>
   12546:	4701                	li	a4,0
   12548:	4681                	li	a3,0
   1254a:	bf4d                	j	124fc <__muldf3+0x422>
   1254c:	4701                	li	a4,0
   1254e:	4681                	li	a3,0
   12550:	4605                	li	a2,1
   12552:	b739                	j	12460 <__muldf3+0x386>

00012554 <__subdf3>:
   12554:	00100837          	lui	a6,0x100
   12558:	187d                	addi	a6,a6,-1 # fffff <__BSS_END__+0xe15a3>
   1255a:	1101                	addi	sp,sp,-32
   1255c:	00b878b3          	and	a7,a6,a1
   12560:	0145d713          	srli	a4,a1,0x14
   12564:	01d55793          	srli	a5,a0,0x1d
   12568:	00d87833          	and	a6,a6,a3
   1256c:	c84a                	sw	s2,16(sp)
   1256e:	7ff77913          	andi	s2,a4,2047
   12572:	00389713          	slli	a4,a7,0x3
   12576:	0146d893          	srli	a7,a3,0x14
   1257a:	ca26                	sw	s1,20(sp)
   1257c:	8fd9                	or	a5,a5,a4
   1257e:	01f5d493          	srli	s1,a1,0x1f
   12582:	01d65713          	srli	a4,a2,0x1d
   12586:	080e                	slli	a6,a6,0x3
   12588:	ce06                	sw	ra,28(sp)
   1258a:	cc22                	sw	s0,24(sp)
   1258c:	c64e                	sw	s3,12(sp)
   1258e:	7ff8f893          	andi	a7,a7,2047
   12592:	7ff00593          	li	a1,2047
   12596:	050e                	slli	a0,a0,0x3
   12598:	82fd                	srli	a3,a3,0x1f
   1259a:	01076733          	or	a4,a4,a6
   1259e:	060e                	slli	a2,a2,0x3
   125a0:	00b89563          	bne	a7,a1,125aa <__subdf3+0x56>
   125a4:	00c765b3          	or	a1,a4,a2
   125a8:	e199                	bnez	a1,125ae <__subdf3+0x5a>
   125aa:	0016c693          	xori	a3,a3,1
   125ae:	41190833          	sub	a6,s2,a7
   125b2:	22969b63          	bne	a3,s1,127e8 <__subdf3+0x294>
   125b6:	0f005563          	blez	a6,126a0 <__subdf3+0x14c>
   125ba:	02089963          	bnez	a7,125ec <__subdf3+0x98>
   125be:	00c766b3          	or	a3,a4,a2
   125c2:	52068863          	beqz	a3,12af2 <__subdf3+0x59e>
   125c6:	fff80593          	addi	a1,a6,-1
   125ca:	e991                	bnez	a1,125de <__subdf3+0x8a>
   125cc:	962a                	add	a2,a2,a0
   125ce:	00a636b3          	sltu	a3,a2,a0
   125d2:	973e                	add	a4,a4,a5
   125d4:	8532                	mv	a0,a2
   125d6:	00d707b3          	add	a5,a4,a3
   125da:	4905                	li	s2,1
   125dc:	a8b9                	j	1263a <__subdf3+0xe6>
   125de:	7ff00693          	li	a3,2047
   125e2:	00d81d63          	bne	a6,a3,125fc <__subdf3+0xa8>
   125e6:	7ff00913          	li	s2,2047
   125ea:	a25d                	j	12790 <__subdf3+0x23c>
   125ec:	7ff00693          	li	a3,2047
   125f0:	1ad90063          	beq	s2,a3,12790 <__subdf3+0x23c>
   125f4:	008006b7          	lui	a3,0x800
   125f8:	8f55                	or	a4,a4,a3
   125fa:	85c2                	mv	a1,a6
   125fc:	03800693          	li	a3,56
   12600:	08b6cb63          	blt	a3,a1,12696 <__subdf3+0x142>
   12604:	46fd                	li	a3,31
   12606:	06b6c163          	blt	a3,a1,12668 <__subdf3+0x114>
   1260a:	02000813          	li	a6,32
   1260e:	40b80833          	sub	a6,a6,a1
   12612:	010716b3          	sll	a3,a4,a6
   12616:	00b658b3          	srl	a7,a2,a1
   1261a:	01061833          	sll	a6,a2,a6
   1261e:	0116e6b3          	or	a3,a3,a7
   12622:	01003833          	snez	a6,a6
   12626:	0106e6b3          	or	a3,a3,a6
   1262a:	00b755b3          	srl	a1,a4,a1
   1262e:	9536                	add	a0,a0,a3
   12630:	95be                	add	a1,a1,a5
   12632:	00d536b3          	sltu	a3,a0,a3
   12636:	00d587b3          	add	a5,a1,a3
   1263a:	00879713          	slli	a4,a5,0x8
   1263e:	14075963          	bgez	a4,12790 <__subdf3+0x23c>
   12642:	0905                	addi	s2,s2,1
   12644:	7ff00713          	li	a4,2047
   12648:	4ae90263          	beq	s2,a4,12aec <__subdf3+0x598>
   1264c:	ff800737          	lui	a4,0xff800
   12650:	177d                	addi	a4,a4,-1 # ff7fffff <__BSS_END__+0xff7e15a3>
   12652:	8f7d                	and	a4,a4,a5
   12654:	00155793          	srli	a5,a0,0x1
   12658:	8905                	andi	a0,a0,1
   1265a:	8fc9                	or	a5,a5,a0
   1265c:	01f71513          	slli	a0,a4,0x1f
   12660:	8d5d                	or	a0,a0,a5
   12662:	00175793          	srli	a5,a4,0x1
   12666:	a22d                	j	12790 <__subdf3+0x23c>
   12668:	fe058693          	addi	a3,a1,-32
   1266c:	02000893          	li	a7,32
   12670:	00d756b3          	srl	a3,a4,a3
   12674:	4801                	li	a6,0
   12676:	01158863          	beq	a1,a7,12686 <__subdf3+0x132>
   1267a:	04000813          	li	a6,64
   1267e:	40b80833          	sub	a6,a6,a1
   12682:	01071833          	sll	a6,a4,a6
   12686:	00c86833          	or	a6,a6,a2
   1268a:	01003833          	snez	a6,a6
   1268e:	0106e6b3          	or	a3,a3,a6
   12692:	4581                	li	a1,0
   12694:	bf69                	j	1262e <__subdf3+0xda>
   12696:	00c766b3          	or	a3,a4,a2
   1269a:	00d036b3          	snez	a3,a3
   1269e:	bfd5                	j	12692 <__subdf3+0x13e>
   126a0:	0a080a63          	beqz	a6,12754 <__subdf3+0x200>
   126a4:	412886b3          	sub	a3,a7,s2
   126a8:	02091063          	bnez	s2,126c8 <__subdf3+0x174>
   126ac:	00a7e5b3          	or	a1,a5,a0
   126b0:	42058663          	beqz	a1,12adc <__subdf3+0x588>
   126b4:	fff68593          	addi	a1,a3,-1 # 7fffff <__BSS_END__+0x7e15a3>
   126b8:	d991                	beqz	a1,125cc <__subdf3+0x78>
   126ba:	7ff00813          	li	a6,2047
   126be:	01069d63          	bne	a3,a6,126d8 <__subdf3+0x184>
   126c2:	87ba                	mv	a5,a4
   126c4:	8532                	mv	a0,a2
   126c6:	b705                	j	125e6 <__subdf3+0x92>
   126c8:	7ff00593          	li	a1,2047
   126cc:	feb88be3          	beq	a7,a1,126c2 <__subdf3+0x16e>
   126d0:	008005b7          	lui	a1,0x800
   126d4:	8fcd                	or	a5,a5,a1
   126d6:	85b6                	mv	a1,a3
   126d8:	03800693          	li	a3,56
   126dc:	06b6c763          	blt	a3,a1,1274a <__subdf3+0x1f6>
   126e0:	46fd                	li	a3,31
   126e2:	02b6cd63          	blt	a3,a1,1271c <__subdf3+0x1c8>
   126e6:	02000813          	li	a6,32
   126ea:	40b80833          	sub	a6,a6,a1
   126ee:	010796b3          	sll	a3,a5,a6
   126f2:	00b55333          	srl	t1,a0,a1
   126f6:	01051833          	sll	a6,a0,a6
   126fa:	0066e6b3          	or	a3,a3,t1
   126fe:	01003833          	snez	a6,a6
   12702:	0106e6b3          	or	a3,a3,a6
   12706:	00b7d5b3          	srl	a1,a5,a1
   1270a:	9636                	add	a2,a2,a3
   1270c:	95ba                	add	a1,a1,a4
   1270e:	00d636b3          	sltu	a3,a2,a3
   12712:	8532                	mv	a0,a2
   12714:	00d587b3          	add	a5,a1,a3
   12718:	8946                	mv	s2,a7
   1271a:	b705                	j	1263a <__subdf3+0xe6>
   1271c:	fe058693          	addi	a3,a1,-32 # 7fffe0 <__BSS_END__+0x7e1584>
   12720:	02000313          	li	t1,32
   12724:	00d7d6b3          	srl	a3,a5,a3
   12728:	4801                	li	a6,0
   1272a:	00658863          	beq	a1,t1,1273a <__subdf3+0x1e6>
   1272e:	04000813          	li	a6,64
   12732:	40b80833          	sub	a6,a6,a1
   12736:	01079833          	sll	a6,a5,a6
   1273a:	00a86833          	or	a6,a6,a0
   1273e:	01003833          	snez	a6,a6
   12742:	0106e6b3          	or	a3,a3,a6
   12746:	4581                	li	a1,0
   12748:	b7c9                	j	1270a <__subdf3+0x1b6>
   1274a:	00a7e6b3          	or	a3,a5,a0
   1274e:	00d036b3          	snez	a3,a3
   12752:	bfd5                	j	12746 <__subdf3+0x1f2>
   12754:	00190693          	addi	a3,s2,1
   12758:	7fe6f593          	andi	a1,a3,2046
   1275c:	e5ad                	bnez	a1,127c6 <__subdf3+0x272>
   1275e:	00a7e6b3          	or	a3,a5,a0
   12762:	04091763          	bnez	s2,127b0 <__subdf3+0x25c>
   12766:	36068e63          	beqz	a3,12ae2 <__subdf3+0x58e>
   1276a:	00c766b3          	or	a3,a4,a2
   1276e:	c28d                	beqz	a3,12790 <__subdf3+0x23c>
   12770:	962a                	add	a2,a2,a0
   12772:	00a636b3          	sltu	a3,a2,a0
   12776:	973e                	add	a4,a4,a5
   12778:	00d707b3          	add	a5,a4,a3
   1277c:	00879713          	slli	a4,a5,0x8
   12780:	8532                	mv	a0,a2
   12782:	00075763          	bgez	a4,12790 <__subdf3+0x23c>
   12786:	ff800737          	lui	a4,0xff800
   1278a:	177d                	addi	a4,a4,-1 # ff7fffff <__BSS_END__+0xff7e15a3>
   1278c:	8ff9                	and	a5,a5,a4
   1278e:	4905                	li	s2,1
   12790:	00757713          	andi	a4,a0,7
   12794:	36070763          	beqz	a4,12b02 <__subdf3+0x5ae>
   12798:	00f57713          	andi	a4,a0,15
   1279c:	4691                	li	a3,4
   1279e:	36d70263          	beq	a4,a3,12b02 <__subdf3+0x5ae>
   127a2:	00450713          	addi	a4,a0,4
   127a6:	00a736b3          	sltu	a3,a4,a0
   127aa:	97b6                	add	a5,a5,a3
   127ac:	853a                	mv	a0,a4
   127ae:	ae91                	j	12b02 <__subdf3+0x5ae>
   127b0:	da89                	beqz	a3,126c2 <__subdf3+0x16e>
   127b2:	8e59                	or	a2,a2,a4
   127b4:	e20609e3          	beqz	a2,125e6 <__subdf3+0x92>
   127b8:	4481                	li	s1,0
   127ba:	004007b7          	lui	a5,0x400
   127be:	4501                	li	a0,0
   127c0:	7ff00913          	li	s2,2047
   127c4:	ae3d                	j	12b02 <__subdf3+0x5ae>
   127c6:	7ff00593          	li	a1,2047
   127ca:	30b68f63          	beq	a3,a1,12ae8 <__subdf3+0x594>
   127ce:	962a                	add	a2,a2,a0
   127d0:	00a63533          	sltu	a0,a2,a0
   127d4:	973e                	add	a4,a4,a5
   127d6:	972a                	add	a4,a4,a0
   127d8:	01f71513          	slli	a0,a4,0x1f
   127dc:	8205                	srli	a2,a2,0x1
   127de:	8d51                	or	a0,a0,a2
   127e0:	00175793          	srli	a5,a4,0x1
   127e4:	8936                	mv	s2,a3
   127e6:	b76d                	j	12790 <__subdf3+0x23c>
   127e8:	0d005a63          	blez	a6,128bc <__subdf3+0x368>
   127ec:	08089463          	bnez	a7,12874 <__subdf3+0x320>
   127f0:	00c766b3          	or	a3,a4,a2
   127f4:	2e068f63          	beqz	a3,12af2 <__subdf3+0x59e>
   127f8:	fff80693          	addi	a3,a6,-1
   127fc:	ee81                	bnez	a3,12814 <__subdf3+0x2c0>
   127fe:	40c50633          	sub	a2,a0,a2
   12802:	00c536b3          	sltu	a3,a0,a2
   12806:	40e78733          	sub	a4,a5,a4
   1280a:	8532                	mv	a0,a2
   1280c:	40d707b3          	sub	a5,a4,a3
   12810:	4905                	li	s2,1
   12812:	a0b9                	j	12860 <__subdf3+0x30c>
   12814:	7ff00593          	li	a1,2047
   12818:	dcb807e3          	beq	a6,a1,125e6 <__subdf3+0x92>
   1281c:	03800593          	li	a1,56
   12820:	08d5ca63          	blt	a1,a3,128b4 <__subdf3+0x360>
   12824:	45fd                	li	a1,31
   12826:	06d5c063          	blt	a1,a3,12886 <__subdf3+0x332>
   1282a:	02000813          	li	a6,32
   1282e:	40d80833          	sub	a6,a6,a3
   12832:	00d658b3          	srl	a7,a2,a3
   12836:	010715b3          	sll	a1,a4,a6
   1283a:	01061833          	sll	a6,a2,a6
   1283e:	0115e5b3          	or	a1,a1,a7
   12842:	01003833          	snez	a6,a6
   12846:	0105e633          	or	a2,a1,a6
   1284a:	00d756b3          	srl	a3,a4,a3
   1284e:	40c50633          	sub	a2,a0,a2
   12852:	00c53733          	sltu	a4,a0,a2
   12856:	40d786b3          	sub	a3,a5,a3
   1285a:	8532                	mv	a0,a2
   1285c:	40e687b3          	sub	a5,a3,a4
   12860:	00879713          	slli	a4,a5,0x8
   12864:	f20756e3          	bgez	a4,12790 <__subdf3+0x23c>
   12868:	00800437          	lui	s0,0x800
   1286c:	147d                	addi	s0,s0,-1 # 7fffff <__BSS_END__+0x7e15a3>
   1286e:	8c7d                	and	s0,s0,a5
   12870:	89aa                	mv	s3,a0
   12872:	aa55                	j	12a26 <__subdf3+0x4d2>
   12874:	7ff00693          	li	a3,2047
   12878:	f0d90ce3          	beq	s2,a3,12790 <__subdf3+0x23c>
   1287c:	008006b7          	lui	a3,0x800
   12880:	8f55                	or	a4,a4,a3
   12882:	86c2                	mv	a3,a6
   12884:	bf61                	j	1281c <__subdf3+0x2c8>
   12886:	fe068593          	addi	a1,a3,-32 # 7fffe0 <__BSS_END__+0x7e1584>
   1288a:	02000893          	li	a7,32
   1288e:	00b755b3          	srl	a1,a4,a1
   12892:	4801                	li	a6,0
   12894:	01168863          	beq	a3,a7,128a4 <__subdf3+0x350>
   12898:	04000813          	li	a6,64
   1289c:	40d80833          	sub	a6,a6,a3
   128a0:	01071833          	sll	a6,a4,a6
   128a4:	00c86833          	or	a6,a6,a2
   128a8:	01003833          	snez	a6,a6
   128ac:	0105e633          	or	a2,a1,a6
   128b0:	4681                	li	a3,0
   128b2:	bf71                	j	1284e <__subdf3+0x2fa>
   128b4:	8e59                	or	a2,a2,a4
   128b6:	00c03633          	snez	a2,a2
   128ba:	bfdd                	j	128b0 <__subdf3+0x35c>
   128bc:	0c080663          	beqz	a6,12988 <__subdf3+0x434>
   128c0:	41288833          	sub	a6,a7,s2
   128c4:	02091b63          	bnez	s2,128fa <__subdf3+0x3a6>
   128c8:	00a7e5b3          	or	a1,a5,a0
   128cc:	22058563          	beqz	a1,12af6 <__subdf3+0x5a2>
   128d0:	fff80593          	addi	a1,a6,-1
   128d4:	e991                	bnez	a1,128e8 <__subdf3+0x394>
   128d6:	40a60533          	sub	a0,a2,a0
   128da:	8f1d                	sub	a4,a4,a5
   128dc:	00a63633          	sltu	a2,a2,a0
   128e0:	40c707b3          	sub	a5,a4,a2
   128e4:	84b6                	mv	s1,a3
   128e6:	b72d                	j	12810 <__subdf3+0x2bc>
   128e8:	7ff00313          	li	t1,2047
   128ec:	00681f63          	bne	a6,t1,1290a <__subdf3+0x3b6>
   128f0:	87ba                	mv	a5,a4
   128f2:	8532                	mv	a0,a2
   128f4:	7ff00913          	li	s2,2047
   128f8:	a845                	j	129a8 <__subdf3+0x454>
   128fa:	7ff00593          	li	a1,2047
   128fe:	feb889e3          	beq	a7,a1,128f0 <__subdf3+0x39c>
   12902:	008005b7          	lui	a1,0x800
   12906:	8fcd                	or	a5,a5,a1
   12908:	85c2                	mv	a1,a6
   1290a:	03800813          	li	a6,56
   1290e:	06b84963          	blt	a6,a1,12980 <__subdf3+0x42c>
   12912:	487d                	li	a6,31
   12914:	02b84f63          	blt	a6,a1,12952 <__subdf3+0x3fe>
   12918:	02000313          	li	t1,32
   1291c:	40b30333          	sub	t1,t1,a1
   12920:	00b55e33          	srl	t3,a0,a1
   12924:	00679833          	sll	a6,a5,t1
   12928:	00651333          	sll	t1,a0,t1
   1292c:	01c86833          	or	a6,a6,t3
   12930:	00603333          	snez	t1,t1
   12934:	00686533          	or	a0,a6,t1
   12938:	00b7d5b3          	srl	a1,a5,a1
   1293c:	40a60533          	sub	a0,a2,a0
   12940:	40b705b3          	sub	a1,a4,a1
   12944:	00a63633          	sltu	a2,a2,a0
   12948:	40c587b3          	sub	a5,a1,a2
   1294c:	8946                	mv	s2,a7
   1294e:	84b6                	mv	s1,a3
   12950:	bf01                	j	12860 <__subdf3+0x30c>
   12952:	fe058813          	addi	a6,a1,-32 # 7fffe0 <__BSS_END__+0x7e1584>
   12956:	02000e13          	li	t3,32
   1295a:	0107d833          	srl	a6,a5,a6
   1295e:	4301                	li	t1,0
   12960:	01c58863          	beq	a1,t3,12970 <__subdf3+0x41c>
   12964:	04000313          	li	t1,64
   12968:	40b30333          	sub	t1,t1,a1
   1296c:	00679333          	sll	t1,a5,t1
   12970:	00a36333          	or	t1,t1,a0
   12974:	00603333          	snez	t1,t1
   12978:	00686533          	or	a0,a6,t1
   1297c:	4581                	li	a1,0
   1297e:	bf7d                	j	1293c <__subdf3+0x3e8>
   12980:	8d5d                	or	a0,a0,a5
   12982:	00a03533          	snez	a0,a0
   12986:	bfdd                	j	1297c <__subdf3+0x428>
   12988:	00190593          	addi	a1,s2,1
   1298c:	7fe5f593          	andi	a1,a1,2046
   12990:	e5b5                	bnez	a1,129fc <__subdf3+0x4a8>
   12992:	00c765b3          	or	a1,a4,a2
   12996:	00a7e833          	or	a6,a5,a0
   1299a:	04091663          	bnez	s2,129e6 <__subdf3+0x492>
   1299e:	00081763          	bnez	a6,129ac <__subdf3+0x458>
   129a2:	c1ed                	beqz	a1,12a84 <__subdf3+0x530>
   129a4:	87ba                	mv	a5,a4
   129a6:	8532                	mv	a0,a2
   129a8:	84b6                	mv	s1,a3
   129aa:	b3dd                	j	12790 <__subdf3+0x23c>
   129ac:	de0582e3          	beqz	a1,12790 <__subdf3+0x23c>
   129b0:	40c50833          	sub	a6,a0,a2
   129b4:	010538b3          	sltu	a7,a0,a6
   129b8:	40e785b3          	sub	a1,a5,a4
   129bc:	411585b3          	sub	a1,a1,a7
   129c0:	00859893          	slli	a7,a1,0x8
   129c4:	0008da63          	bgez	a7,129d8 <__subdf3+0x484>
   129c8:	40a60533          	sub	a0,a2,a0
   129cc:	8f1d                	sub	a4,a4,a5
   129ce:	00a63633          	sltu	a2,a2,a0
   129d2:	40c707b3          	sub	a5,a4,a2
   129d6:	bfc9                	j	129a8 <__subdf3+0x454>
   129d8:	00b86533          	or	a0,a6,a1
   129dc:	12050163          	beqz	a0,12afe <__subdf3+0x5aa>
   129e0:	87ae                	mv	a5,a1
   129e2:	8542                	mv	a0,a6
   129e4:	b375                	j	12790 <__subdf3+0x23c>
   129e6:	00081863          	bnez	a6,129f6 <__subdf3+0x4a2>
   129ea:	dc0587e3          	beqz	a1,127b8 <__subdf3+0x264>
   129ee:	87ba                	mv	a5,a4
   129f0:	8532                	mv	a0,a2
   129f2:	84b6                	mv	s1,a3
   129f4:	becd                	j	125e6 <__subdf3+0x92>
   129f6:	be0588e3          	beqz	a1,125e6 <__subdf3+0x92>
   129fa:	bb7d                	j	127b8 <__subdf3+0x264>
   129fc:	40c505b3          	sub	a1,a0,a2
   12a00:	00b53833          	sltu	a6,a0,a1
   12a04:	40e78433          	sub	s0,a5,a4
   12a08:	41040433          	sub	s0,s0,a6
   12a0c:	00841813          	slli	a6,s0,0x8
   12a10:	89ae                	mv	s3,a1
   12a12:	06085663          	bgez	a6,12a7e <__subdf3+0x52a>
   12a16:	40a609b3          	sub	s3,a2,a0
   12a1a:	40f70433          	sub	s0,a4,a5
   12a1e:	01363633          	sltu	a2,a2,s3
   12a22:	8c11                	sub	s0,s0,a2
   12a24:	84b6                	mv	s1,a3
   12a26:	c02d                	beqz	s0,12a88 <__subdf3+0x534>
   12a28:	8522                	mv	a0,s0
   12a2a:	fffff097          	auipc	ra,0xfffff
   12a2e:	98a080e7          	jalr	-1654(ra) # 113b4 <__clzsi2>
   12a32:	ff850693          	addi	a3,a0,-8
   12a36:	02000793          	li	a5,32
   12a3a:	8f95                	sub	a5,a5,a3
   12a3c:	00d41433          	sll	s0,s0,a3
   12a40:	00f9d7b3          	srl	a5,s3,a5
   12a44:	8fc1                	or	a5,a5,s0
   12a46:	00d99433          	sll	s0,s3,a3
   12a4a:	0926c163          	blt	a3,s2,12acc <__subdf3+0x578>
   12a4e:	412686b3          	sub	a3,a3,s2
   12a52:	00168613          	addi	a2,a3,1
   12a56:	477d                	li	a4,31
   12a58:	04c74763          	blt	a4,a2,12aa6 <__subdf3+0x552>
   12a5c:	02000713          	li	a4,32
   12a60:	8f11                	sub	a4,a4,a2
   12a62:	00e79533          	sll	a0,a5,a4
   12a66:	00c456b3          	srl	a3,s0,a2
   12a6a:	00e41733          	sll	a4,s0,a4
   12a6e:	8d55                	or	a0,a0,a3
   12a70:	00e03733          	snez	a4,a4
   12a74:	8d59                	or	a0,a0,a4
   12a76:	00c7d7b3          	srl	a5,a5,a2
   12a7a:	4901                	li	s2,0
   12a7c:	bb11                	j	12790 <__subdf3+0x23c>
   12a7e:	8dc1                	or	a1,a1,s0
   12a80:	f1dd                	bnez	a1,12a26 <__subdf3+0x4d2>
   12a82:	4901                	li	s2,0
   12a84:	4481                	li	s1,0
   12a86:	a09d                	j	12aec <__subdf3+0x598>
   12a88:	854e                	mv	a0,s3
   12a8a:	fffff097          	auipc	ra,0xfffff
   12a8e:	92a080e7          	jalr	-1750(ra) # 113b4 <__clzsi2>
   12a92:	01850693          	addi	a3,a0,24
   12a96:	47fd                	li	a5,31
   12a98:	f8d7dfe3          	bge	a5,a3,12a36 <__subdf3+0x4e2>
   12a9c:	ff850793          	addi	a5,a0,-8
   12aa0:	00f997b3          	sll	a5,s3,a5
   12aa4:	b75d                	j	12a4a <__subdf3+0x4f6>
   12aa6:	1685                	addi	a3,a3,-31
   12aa8:	00d7d533          	srl	a0,a5,a3
   12aac:	02000693          	li	a3,32
   12ab0:	4701                	li	a4,0
   12ab2:	00d60763          	beq	a2,a3,12ac0 <__subdf3+0x56c>
   12ab6:	04000713          	li	a4,64
   12aba:	8f11                	sub	a4,a4,a2
   12abc:	00e79733          	sll	a4,a5,a4
   12ac0:	8f41                	or	a4,a4,s0
   12ac2:	00e03733          	snez	a4,a4
   12ac6:	8d59                	or	a0,a0,a4
   12ac8:	4781                	li	a5,0
   12aca:	bf45                	j	12a7a <__subdf3+0x526>
   12acc:	ff800737          	lui	a4,0xff800
   12ad0:	177d                	addi	a4,a4,-1 # ff7fffff <__BSS_END__+0xff7e15a3>
   12ad2:	40d90933          	sub	s2,s2,a3
   12ad6:	8ff9                	and	a5,a5,a4
   12ad8:	8522                	mv	a0,s0
   12ada:	b95d                	j	12790 <__subdf3+0x23c>
   12adc:	87ba                	mv	a5,a4
   12ade:	8532                	mv	a0,a2
   12ae0:	b311                	j	127e4 <__subdf3+0x290>
   12ae2:	87ba                	mv	a5,a4
   12ae4:	8532                	mv	a0,a2
   12ae6:	b16d                	j	12790 <__subdf3+0x23c>
   12ae8:	7ff00913          	li	s2,2047
   12aec:	4781                	li	a5,0
   12aee:	4501                	li	a0,0
   12af0:	a809                	j	12b02 <__subdf3+0x5ae>
   12af2:	8942                	mv	s2,a6
   12af4:	b971                	j	12790 <__subdf3+0x23c>
   12af6:	87ba                	mv	a5,a4
   12af8:	8532                	mv	a0,a2
   12afa:	8942                	mv	s2,a6
   12afc:	b575                	j	129a8 <__subdf3+0x454>
   12afe:	4781                	li	a5,0
   12b00:	4481                	li	s1,0
   12b02:	00879713          	slli	a4,a5,0x8
   12b06:	00075b63          	bgez	a4,12b1c <__subdf3+0x5c8>
   12b0a:	0905                	addi	s2,s2,1
   12b0c:	7ff00713          	li	a4,2047
   12b10:	04e90b63          	beq	s2,a4,12b66 <__subdf3+0x612>
   12b14:	ff800737          	lui	a4,0xff800
   12b18:	177d                	addi	a4,a4,-1 # ff7fffff <__BSS_END__+0xff7e15a3>
   12b1a:	8ff9                	and	a5,a5,a4
   12b1c:	01d79693          	slli	a3,a5,0x1d
   12b20:	810d                	srli	a0,a0,0x3
   12b22:	7ff00713          	li	a4,2047
   12b26:	8ec9                	or	a3,a3,a0
   12b28:	838d                	srli	a5,a5,0x3
   12b2a:	00e91963          	bne	s2,a4,12b3c <__subdf3+0x5e8>
   12b2e:	8edd                	or	a3,a3,a5
   12b30:	4781                	li	a5,0
   12b32:	c689                	beqz	a3,12b3c <__subdf3+0x5e8>
   12b34:	000807b7          	lui	a5,0x80
   12b38:	4681                	li	a3,0
   12b3a:	4481                	li	s1,0
   12b3c:	01491713          	slli	a4,s2,0x14
   12b40:	7ff00637          	lui	a2,0x7ff00
   12b44:	07b2                	slli	a5,a5,0xc
   12b46:	8f71                	and	a4,a4,a2
   12b48:	40f2                	lw	ra,28(sp)
   12b4a:	4462                	lw	s0,24(sp)
   12b4c:	83b1                	srli	a5,a5,0xc
   12b4e:	8fd9                	or	a5,a5,a4
   12b50:	01f49713          	slli	a4,s1,0x1f
   12b54:	00e7e633          	or	a2,a5,a4
   12b58:	44d2                	lw	s1,20(sp)
   12b5a:	4942                	lw	s2,16(sp)
   12b5c:	49b2                	lw	s3,12(sp)
   12b5e:	8536                	mv	a0,a3
   12b60:	85b2                	mv	a1,a2
   12b62:	6105                	addi	sp,sp,32
   12b64:	8082                	ret
   12b66:	4781                	li	a5,0
   12b68:	4501                	li	a0,0
   12b6a:	bf4d                	j	12b1c <__subdf3+0x5c8>

00012b6c <__fixdfsi>:
   12b6c:	0145d713          	srli	a4,a1,0x14
   12b70:	001006b7          	lui	a3,0x100
   12b74:	fff68793          	addi	a5,a3,-1 # fffff <__BSS_END__+0xe15a3>
   12b78:	7ff77713          	andi	a4,a4,2047
   12b7c:	3fe00613          	li	a2,1022
   12b80:	8fed                	and	a5,a5,a1
   12b82:	81fd                	srli	a1,a1,0x1f
   12b84:	04e65463          	bge	a2,a4,12bcc <__fixdfsi+0x60>
   12b88:	41d00613          	li	a2,1053
   12b8c:	00e65763          	bge	a2,a4,12b9a <__fixdfsi+0x2e>
   12b90:	80000537          	lui	a0,0x80000
   12b94:	157d                	addi	a0,a0,-1 # 7fffffff <__BSS_END__+0x7ffe15a3>
   12b96:	952e                	add	a0,a0,a1
   12b98:	8082                	ret
   12b9a:	8fd5                	or	a5,a5,a3
   12b9c:	43300693          	li	a3,1075
   12ba0:	8e99                	sub	a3,a3,a4
   12ba2:	467d                	li	a2,31
   12ba4:	00d64d63          	blt	a2,a3,12bbe <__fixdfsi+0x52>
   12ba8:	bed70713          	addi	a4,a4,-1043
   12bac:	00e797b3          	sll	a5,a5,a4
   12bb0:	00d55533          	srl	a0,a0,a3
   12bb4:	8d5d                	or	a0,a0,a5
   12bb6:	cd81                	beqz	a1,12bce <__fixdfsi+0x62>
   12bb8:	40a00533          	neg	a0,a0
   12bbc:	8082                	ret
   12bbe:	41300693          	li	a3,1043
   12bc2:	40e68733          	sub	a4,a3,a4
   12bc6:	00e7d533          	srl	a0,a5,a4
   12bca:	b7f5                	j	12bb6 <__fixdfsi+0x4a>
   12bcc:	4501                	li	a0,0
   12bce:	8082                	ret

00012bd0 <__floatsidf>:
   12bd0:	1141                	addi	sp,sp,-16
   12bd2:	c606                	sw	ra,12(sp)
   12bd4:	c422                	sw	s0,8(sp)
   12bd6:	c226                	sw	s1,4(sp)
   12bd8:	cd39                	beqz	a0,12c36 <__floatsidf+0x66>
   12bda:	41f55793          	srai	a5,a0,0x1f
   12bde:	00a7c433          	xor	s0,a5,a0
   12be2:	8c1d                	sub	s0,s0,a5
   12be4:	01f55493          	srli	s1,a0,0x1f
   12be8:	8522                	mv	a0,s0
   12bea:	ffffe097          	auipc	ra,0xffffe
   12bee:	7ca080e7          	jalr	1994(ra) # 113b4 <__clzsi2>
   12bf2:	41e00713          	li	a4,1054
   12bf6:	47a9                	li	a5,10
   12bf8:	8f09                	sub	a4,a4,a0
   12bfa:	02a7c863          	blt	a5,a0,12c2a <__floatsidf+0x5a>
   12bfe:	47ad                	li	a5,11
   12c00:	8f89                	sub	a5,a5,a0
   12c02:	0555                	addi	a0,a0,21
   12c04:	00f457b3          	srl	a5,s0,a5
   12c08:	00a41433          	sll	s0,s0,a0
   12c0c:	8526                	mv	a0,s1
   12c0e:	07b2                	slli	a5,a5,0xc
   12c10:	83b1                	srli	a5,a5,0xc
   12c12:	0752                	slli	a4,a4,0x14
   12c14:	057e                	slli	a0,a0,0x1f
   12c16:	8f5d                	or	a4,a4,a5
   12c18:	40b2                	lw	ra,12(sp)
   12c1a:	00a767b3          	or	a5,a4,a0
   12c1e:	8522                	mv	a0,s0
   12c20:	4422                	lw	s0,8(sp)
   12c22:	4492                	lw	s1,4(sp)
   12c24:	85be                	mv	a1,a5
   12c26:	0141                	addi	sp,sp,16
   12c28:	8082                	ret
   12c2a:	1555                	addi	a0,a0,-11
   12c2c:	00a417b3          	sll	a5,s0,a0
   12c30:	8526                	mv	a0,s1
   12c32:	4401                	li	s0,0
   12c34:	bfe9                	j	12c0e <__floatsidf+0x3e>
   12c36:	4701                	li	a4,0
   12c38:	4781                	li	a5,0
   12c3a:	bfe5                	j	12c32 <__floatsidf+0x62>

00012c3c <__assert_func>:
   12c3c:	0001e7b7          	lui	a5,0x1e
   12c40:	7187a703          	lw	a4,1816(a5) # 1e718 <_impure_ptr>
   12c44:	1141                	addi	sp,sp,-16
   12c46:	87b6                	mv	a5,a3
   12c48:	8832                	mv	a6,a2
   12c4a:	c606                	sw	ra,12(sp)
   12c4c:	00c72883          	lw	a7,12(a4)
   12c50:	86aa                	mv	a3,a0
   12c52:	872e                	mv	a4,a1
   12c54:	863e                	mv	a2,a5
   12c56:	02080363          	beqz	a6,12c7c <__assert_func+0x40>
   12c5a:	0001d7b7          	lui	a5,0x1d
   12c5e:	3cc78793          	addi	a5,a5,972 # 1d3cc <__extenddftf2+0x1468>
   12c62:	0001d5b7          	lui	a1,0x1d
   12c66:	3dc58593          	addi	a1,a1,988 # 1d3dc <__extenddftf2+0x1478>
   12c6a:	8546                	mv	a0,a7
   12c6c:	00000097          	auipc	ra,0x0
   12c70:	02e080e7          	jalr	46(ra) # 12c9a <fiprintf>
   12c74:	00004097          	auipc	ra,0x4
   12c78:	d42080e7          	jalr	-702(ra) # 169b6 <abort>
   12c7c:	0001c837          	lui	a6,0x1c
   12c80:	48080793          	addi	a5,a6,1152 # 1c480 <__extenddftf2+0x51c>
   12c84:	48080813          	addi	a6,a6,1152
   12c88:	bfe9                	j	12c62 <__assert_func+0x26>

00012c8a <atexit>:
   12c8a:	85aa                	mv	a1,a0
   12c8c:	4681                	li	a3,0
   12c8e:	4601                	li	a2,0
   12c90:	4501                	li	a0,0
   12c92:	00004317          	auipc	t1,0x4
   12c96:	bde30067          	jr	-1058(t1) # 16870 <__register_exitproc>

00012c9a <fiprintf>:
   12c9a:	8e2a                	mv	t3,a0
   12c9c:	0001e537          	lui	a0,0x1e
   12ca0:	7139                	addi	sp,sp,-64
   12ca2:	71852503          	lw	a0,1816(a0) # 1e718 <_impure_ptr>
   12ca6:	02810313          	addi	t1,sp,40
   12caa:	d432                	sw	a2,40(sp)
   12cac:	d636                	sw	a3,44(sp)
   12cae:	862e                	mv	a2,a1
   12cb0:	869a                	mv	a3,t1
   12cb2:	85f2                	mv	a1,t3
   12cb4:	ce06                	sw	ra,28(sp)
   12cb6:	d83a                	sw	a4,48(sp)
   12cb8:	da3e                	sw	a5,52(sp)
   12cba:	dc42                	sw	a6,56(sp)
   12cbc:	de46                	sw	a7,60(sp)
   12cbe:	c61a                	sw	t1,12(sp)
   12cc0:	00002097          	auipc	ra,0x2
   12cc4:	dc0080e7          	jalr	-576(ra) # 14a80 <_vfiprintf_r>
   12cc8:	40f2                	lw	ra,28(sp)
   12cca:	6121                	addi	sp,sp,64
   12ccc:	8082                	ret

00012cce <_vfprintf_r>:
   12cce:	7145                	addi	sp,sp,-464
   12cd0:	1c112623          	sw	ra,460(sp)
   12cd4:	1c812423          	sw	s0,456(sp)
   12cd8:	1c912223          	sw	s1,452(sp)
   12cdc:	1b612823          	sw	s6,432(sp)
   12ce0:	84ae                	mv	s1,a1
   12ce2:	8b32                	mv	s6,a2
   12ce4:	ca36                	sw	a3,20(sp)
   12ce6:	842a                	mv	s0,a0
   12ce8:	c42a                	sw	a0,8(sp)
   12cea:	00003097          	auipc	ra,0x3
   12cee:	5e0080e7          	jalr	1504(ra) # 162ca <_localeconv_r>
   12cf2:	4118                	lw	a4,0(a0)
   12cf4:	853a                	mv	a0,a4
   12cf6:	d83a                	sw	a4,48(sp)
   12cf8:	00004097          	auipc	ra,0x4
   12cfc:	a1c080e7          	jalr	-1508(ra) # 16714 <strlen>
   12d00:	d62a                	sw	a0,44(sp)
   12d02:	c982                	sw	zero,208(sp)
   12d04:	cb82                	sw	zero,212(sp)
   12d06:	cd82                	sw	zero,216(sp)
   12d08:	cf82                	sw	zero,220(sp)
   12d0a:	c409                	beqz	s0,12d14 <_vfprintf_r+0x46>
   12d0c:	5858                	lw	a4,52(s0)
   12d0e:	e319                	bnez	a4,12d14 <_vfprintf_r+0x46>
   12d10:	2480106f          	j	13f58 <_vfprintf_r+0x128a>
   12d14:	00c49683          	lh	a3,12(s1)
   12d18:	50f8                	lw	a4,100(s1)
   12d1a:	01269613          	slli	a2,a3,0x12
   12d1e:	00064a63          	bltz	a2,12d32 <_vfprintf_r+0x64>
   12d22:	7679                	lui	a2,0xffffe
   12d24:	167d                	addi	a2,a2,-1 # ffffdfff <__BSS_END__+0xfffdf5a3>
   12d26:	6589                	lui	a1,0x2
   12d28:	8ecd                	or	a3,a3,a1
   12d2a:	8f71                	and	a4,a4,a2
   12d2c:	00d49623          	sh	a3,12(s1)
   12d30:	d0f8                	sw	a4,100(s1)
   12d32:	01271693          	slli	a3,a4,0x12
   12d36:	0006d463          	bgez	a3,12d3e <_vfprintf_r+0x70>
   12d3a:	1ad0106f          	j	146e6 <_vfprintf_r+0x1a18>
   12d3e:	00c49703          	lh	a4,12(s1)
   12d42:	00877693          	andi	a3,a4,8
   12d46:	22068e63          	beqz	a3,12f82 <_vfprintf_r+0x2b4>
   12d4a:	4894                	lw	a3,16(s1)
   12d4c:	22068b63          	beqz	a3,12f82 <_vfprintf_r+0x2b4>
   12d50:	8b69                	andi	a4,a4,26
   12d52:	46a9                	li	a3,10
   12d54:	24d70663          	beq	a4,a3,12fa0 <_vfprintf_r+0x2d2>
   12d58:	1b312e23          	sw	s3,444(sp)
   12d5c:	1b412c23          	sw	s4,440(sp)
   12d60:	1ba12023          	sw	s10,416(sp)
   12d64:	0001e737          	lui	a4,0x1e
   12d68:	1d212023          	sw	s2,448(sp)
   12d6c:	1b512a23          	sw	s5,436(sp)
   12d70:	1b712623          	sw	s7,428(sp)
   12d74:	1b812423          	sw	s8,424(sp)
   12d78:	1b912223          	sw	s9,420(sp)
   12d7c:	19b12e23          	sw	s11,412(sp)
   12d80:	8d5a                	mv	s10,s6
   12d82:	9f470793          	addi	a5,a4,-1548 # 1d9f4 <__clz_tab+0x100>
   12d86:	000d4703          	lbu	a4,0(s10)
   12d8a:	0ec10993          	addi	s3,sp,236
   12d8e:	0001ea37          	lui	s4,0x1e
   12d92:	c3ce                	sw	s3,196(sp)
   12d94:	c782                	sw	zero,204(sp)
   12d96:	c582                	sw	zero,200(sp)
   12d98:	d002                	sw	zero,32(sp)
   12d9a:	da02                	sw	zero,52(sp)
   12d9c:	c082                	sw	zero,64(sp)
   12d9e:	de02                	sw	zero,60(sp)
   12da0:	c482                	sw	zero,72(sp)
   12da2:	c282                	sw	zero,68(sp)
   12da4:	c602                	sw	zero,12(sp)
   12da6:	cc3e                	sw	a5,24(sp)
   12da8:	844e                	mv	s0,s3
   12daa:	bf8a0a13          	addi	s4,s4,-1032 # 1dbf8 <zeroes.0>
   12dae:	18070263          	beqz	a4,12f32 <_vfprintf_r+0x264>
   12db2:	896a                	mv	s2,s10
   12db4:	02500693          	li	a3,37
   12db8:	30d70663          	beq	a4,a3,130c4 <_vfprintf_r+0x3f6>
   12dbc:	00194703          	lbu	a4,1(s2)
   12dc0:	0905                	addi	s2,s2,1
   12dc2:	fb7d                	bnez	a4,12db8 <_vfprintf_r+0xea>
   12dc4:	41a90ab3          	sub	s5,s2,s10
   12dc8:	17a90563          	beq	s2,s10,12f32 <_vfprintf_r+0x264>
   12dcc:	46be                	lw	a3,204(sp)
   12dce:	472e                	lw	a4,200(sp)
   12dd0:	01a42023          	sw	s10,0(s0)
   12dd4:	96d6                	add	a3,a3,s5
   12dd6:	0705                	addi	a4,a4,1
   12dd8:	01542223          	sw	s5,4(s0)
   12ddc:	c7b6                	sw	a3,204(sp)
   12dde:	c5ba                	sw	a4,200(sp)
   12de0:	469d                	li	a3,7
   12de2:	0421                	addi	s0,s0,8
   12de4:	2ee6c763          	blt	a3,a4,130d2 <_vfprintf_r+0x404>
   12de8:	47b2                	lw	a5,12(sp)
   12dea:	00094703          	lbu	a4,0(s2)
   12dee:	97d6                	add	a5,a5,s5
   12df0:	c63e                	sw	a5,12(sp)
   12df2:	14070063          	beqz	a4,12f32 <_vfprintf_r+0x264>
   12df6:	00194883          	lbu	a7,1(s2)
   12dfa:	0a0103a3          	sb	zero,167(sp)
   12dfe:	0905                	addi	s2,s2,1
   12e00:	5afd                	li	s5,-1
   12e02:	4b81                	li	s7,0
   12e04:	4c81                	li	s9,0
   12e06:	05a00b13          	li	s6,90
   12e0a:	0905                	addi	s2,s2,1
   12e0c:	fe088793          	addi	a5,a7,-32 # ffe0 <exit-0xb4>
   12e10:	02fb6b63          	bltu	s6,a5,12e46 <_vfprintf_r+0x178>
   12e14:	4762                	lw	a4,24(sp)
   12e16:	078a                	slli	a5,a5,0x2
   12e18:	97ba                	add	a5,a5,a4
   12e1a:	439c                	lw	a5,0(a5)
   12e1c:	8782                	jr	a5
   12e1e:	4b81                	li	s7,0
   12e20:	fd088793          	addi	a5,a7,-48
   12e24:	46a5                	li	a3,9
   12e26:	00094883          	lbu	a7,0(s2)
   12e2a:	002b9713          	slli	a4,s7,0x2
   12e2e:	9bba                	add	s7,s7,a4
   12e30:	0b86                	slli	s7,s7,0x1
   12e32:	9bbe                	add	s7,s7,a5
   12e34:	fd088793          	addi	a5,a7,-48
   12e38:	0905                	addi	s2,s2,1
   12e3a:	fef6f6e3          	bgeu	a3,a5,12e26 <_vfprintf_r+0x158>
   12e3e:	fe088793          	addi	a5,a7,-32
   12e42:	fcfb79e3          	bgeu	s6,a5,12e14 <_vfprintf_r+0x146>
   12e46:	0e088663          	beqz	a7,12f32 <_vfprintf_r+0x264>
   12e4a:	13110623          	sb	a7,300(sp)
   12e4e:	0a0103a3          	sb	zero,167(sp)
   12e52:	4d85                	li	s11,1
   12e54:	4b05                	li	s6,1
   12e56:	12c10d13          	addi	s10,sp,300
   12e5a:	c802                	sw	zero,16(sp)
   12e5c:	4a81                	li	s5,0
   12e5e:	d402                	sw	zero,40(sp)
   12e60:	d202                	sw	zero,36(sp)
   12e62:	ce02                	sw	zero,28(sp)
   12e64:	002cf293          	andi	t0,s9,2
   12e68:	00028363          	beqz	t0,12e6e <_vfprintf_r+0x1a0>
   12e6c:	0d89                	addi	s11,s11,2
   12e6e:	084cff93          	andi	t6,s9,132
   12e72:	463e                	lw	a2,204(sp)
   12e74:	000f9663          	bnez	t6,12e80 <_vfprintf_r+0x1b2>
   12e78:	41bb8733          	sub	a4,s7,s11
   12e7c:	12e047e3          	bgtz	a4,137aa <_vfprintf_r+0xadc>
   12e80:	0a714703          	lbu	a4,167(sp)
   12e84:	cf19                	beqz	a4,12ea2 <_vfprintf_r+0x1d4>
   12e86:	472e                	lw	a4,200(sp)
   12e88:	0a710593          	addi	a1,sp,167
   12e8c:	c00c                	sw	a1,0(s0)
   12e8e:	0605                	addi	a2,a2,1
   12e90:	4585                	li	a1,1
   12e92:	0705                	addi	a4,a4,1
   12e94:	c04c                	sw	a1,4(s0)
   12e96:	c7b2                	sw	a2,204(sp)
   12e98:	c5ba                	sw	a4,200(sp)
   12e9a:	459d                	li	a1,7
   12e9c:	0421                	addi	s0,s0,8
   12e9e:	30e5ca63          	blt	a1,a4,131b2 <_vfprintf_r+0x4e4>
   12ea2:	00028f63          	beqz	t0,12ec0 <_vfprintf_r+0x1f2>
   12ea6:	472e                	lw	a4,200(sp)
   12ea8:	4589                	li	a1,2
   12eaa:	0609                	addi	a2,a2,2
   12eac:	0705                	addi	a4,a4,1
   12eae:	113c                	addi	a5,sp,168
   12eb0:	c04c                	sw	a1,4(s0)
   12eb2:	c01c                	sw	a5,0(s0)
   12eb4:	c7b2                	sw	a2,204(sp)
   12eb6:	c5ba                	sw	a4,200(sp)
   12eb8:	459d                	li	a1,7
   12eba:	0421                	addi	s0,s0,8
   12ebc:	18e5cfe3          	blt	a1,a4,1385a <_vfprintf_r+0xb8c>
   12ec0:	08000713          	li	a4,128
   12ec4:	78ef8063          	beq	t6,a4,13644 <_vfprintf_r+0x976>
   12ec8:	416a8ab3          	sub	s5,s5,s6
   12ecc:	035041e3          	bgtz	s5,136ee <_vfprintf_r+0xa20>
   12ed0:	100cf713          	andi	a4,s9,256
   12ed4:	64071a63          	bnez	a4,13528 <_vfprintf_r+0x85a>
   12ed8:	47ae                	lw	a5,200(sp)
   12eda:	965a                	add	a2,a2,s6
   12edc:	01a42023          	sw	s10,0(s0)
   12ee0:	0785                	addi	a5,a5,1
   12ee2:	01642223          	sw	s6,4(s0)
   12ee6:	c7b2                	sw	a2,204(sp)
   12ee8:	c5be                	sw	a5,200(sp)
   12eea:	471d                	li	a4,7
   12eec:	38f74c63          	blt	a4,a5,13284 <_vfprintf_r+0x5b6>
   12ef0:	0421                	addi	s0,s0,8
   12ef2:	004cfe13          	andi	t3,s9,4
   12ef6:	000e0663          	beqz	t3,12f02 <_vfprintf_r+0x234>
   12efa:	41bb8ab3          	sub	s5,s7,s11
   12efe:	17504ee3          	bgtz	s5,1387a <_vfprintf_r+0xbac>
   12f02:	835e                	mv	t1,s7
   12f04:	01bbd363          	bge	s7,s11,12f0a <_vfprintf_r+0x23c>
   12f08:	836e                	mv	t1,s11
   12f0a:	47b2                	lw	a5,12(sp)
   12f0c:	979a                	add	a5,a5,t1
   12f0e:	c63e                	sw	a5,12(sp)
   12f10:	060618e3          	bnez	a2,13780 <_vfprintf_r+0xab2>
   12f14:	47c2                	lw	a5,16(sp)
   12f16:	c582                	sw	zero,200(sp)
   12f18:	c799                	beqz	a5,12f26 <_vfprintf_r+0x258>
   12f1a:	45c2                	lw	a1,16(sp)
   12f1c:	4522                	lw	a0,8(sp)
   12f1e:	00004097          	auipc	ra,0x4
   12f22:	ba2080e7          	jalr	-1118(ra) # 16ac0 <_free_r>
   12f26:	844e                	mv	s0,s3
   12f28:	8d4a                	mv	s10,s2
   12f2a:	000d4703          	lbu	a4,0(s10)
   12f2e:	e80712e3          	bnez	a4,12db2 <_vfprintf_r+0xe4>
   12f32:	47be                	lw	a5,204(sp)
   12f34:	c399                	beqz	a5,12f3a <_vfprintf_r+0x26c>
   12f36:	4000106f          	j	14336 <_vfprintf_r+0x1668>
   12f3a:	00c4d783          	lhu	a5,12(s1)
   12f3e:	1c012903          	lw	s2,448(sp)
   12f42:	1bc12983          	lw	s3,444(sp)
   12f46:	0407f793          	andi	a5,a5,64
   12f4a:	1b812a03          	lw	s4,440(sp)
   12f4e:	1b412a83          	lw	s5,436(sp)
   12f52:	1ac12b83          	lw	s7,428(sp)
   12f56:	1a812c03          	lw	s8,424(sp)
   12f5a:	1a412c83          	lw	s9,420(sp)
   12f5e:	1a012d03          	lw	s10,416(sp)
   12f62:	19c12d83          	lw	s11,412(sp)
   12f66:	c399                	beqz	a5,12f6c <_vfprintf_r+0x29e>
   12f68:	77e0106f          	j	146e6 <_vfprintf_r+0x1a18>
   12f6c:	1cc12083          	lw	ra,460(sp)
   12f70:	1c812403          	lw	s0,456(sp)
   12f74:	4532                	lw	a0,12(sp)
   12f76:	1c412483          	lw	s1,452(sp)
   12f7a:	1b012b03          	lw	s6,432(sp)
   12f7e:	6179                	addi	sp,sp,464
   12f80:	8082                	ret
   12f82:	4522                	lw	a0,8(sp)
   12f84:	85a6                	mv	a1,s1
   12f86:	00003097          	auipc	ra,0x3
   12f8a:	152080e7          	jalr	338(ra) # 160d8 <__swsetup_r>
   12f8e:	c119                	beqz	a0,12f94 <_vfprintf_r+0x2c6>
   12f90:	7560106f          	j	146e6 <_vfprintf_r+0x1a18>
   12f94:	00c49703          	lh	a4,12(s1)
   12f98:	46a9                	li	a3,10
   12f9a:	8b69                	andi	a4,a4,26
   12f9c:	dad71ee3          	bne	a4,a3,12d58 <_vfprintf_r+0x8a>
   12fa0:	00e49703          	lh	a4,14(s1)
   12fa4:	da074ae3          	bltz	a4,12d58 <_vfprintf_r+0x8a>
   12fa8:	46d2                	lw	a3,20(sp)
   12faa:	4522                	lw	a0,8(sp)
   12fac:	865a                	mv	a2,s6
   12fae:	85a6                	mv	a1,s1
   12fb0:	00002097          	auipc	ra,0x2
   12fb4:	a32080e7          	jalr	-1486(ra) # 149e2 <__sbprintf>
   12fb8:	c62a                	sw	a0,12(sp)
   12fba:	bf4d                	j	12f6c <_vfprintf_r+0x29e>
   12fbc:	4c22                	lw	s8,8(sp)
   12fbe:	8562                	mv	a0,s8
   12fc0:	00003097          	auipc	ra,0x3
   12fc4:	30a080e7          	jalr	778(ra) # 162ca <_localeconv_r>
   12fc8:	415c                	lw	a5,4(a0)
   12fca:	853e                	mv	a0,a5
   12fcc:	c2be                	sw	a5,68(sp)
   12fce:	00003097          	auipc	ra,0x3
   12fd2:	746080e7          	jalr	1862(ra) # 16714 <strlen>
   12fd6:	87aa                	mv	a5,a0
   12fd8:	8562                	mv	a0,s8
   12fda:	c4be                	sw	a5,72(sp)
   12fdc:	8c3e                	mv	s8,a5
   12fde:	00003097          	auipc	ra,0x3
   12fe2:	2ec080e7          	jalr	748(ra) # 162ca <_localeconv_r>
   12fe6:	4518                	lw	a4,8(a0)
   12fe8:	de3a                	sw	a4,60(sp)
   12fea:	2e0c1ee3          	bnez	s8,13ae6 <_vfprintf_r+0xe18>
   12fee:	00094883          	lbu	a7,0(s2)
   12ff2:	bd21                	j	12e0a <_vfprintf_r+0x13c>
   12ff4:	00094883          	lbu	a7,0(s2)
   12ff8:	020cec93          	ori	s9,s9,32
   12ffc:	b539                	j	12e0a <_vfprintf_r+0x13c>
   12ffe:	010cec93          	ori	s9,s9,16
   13002:	020cf793          	andi	a5,s9,32
   13006:	28078b63          	beqz	a5,1329c <_vfprintf_r+0x5ce>
   1300a:	47d2                	lw	a5,20(sp)
   1300c:	00778c13          	addi	s8,a5,7
   13010:	ff8c7c13          	andi	s8,s8,-8
   13014:	004c2783          	lw	a5,4(s8)
   13018:	000c2b03          	lw	s6,0(s8)
   1301c:	008c0713          	addi	a4,s8,8
   13020:	ca3a                	sw	a4,20(sp)
   13022:	8dbe                	mv	s11,a5
   13024:	2a07c163          	bltz	a5,132c6 <_vfprintf_r+0x5f8>
   13028:	8ee6                	mv	t4,s9
   1302a:	3a0ac463          	bltz	s5,133d2 <_vfprintf_r+0x704>
   1302e:	01bb67b3          	or	a5,s6,s11
   13032:	f7fcfe93          	andi	t4,s9,-129
   13036:	38079e63          	bnez	a5,133d2 <_vfprintf_r+0x704>
   1303a:	3a0a9163          	bnez	s5,133dc <_vfprintf_r+0x70e>
   1303e:	4b01                	li	s6,0
   13040:	8cf6                	mv	s9,t4
   13042:	19010d13          	addi	s10,sp,400
   13046:	0a714703          	lbu	a4,167(sp)
   1304a:	8dd6                	mv	s11,s5
   1304c:	016ad363          	bge	s5,s6,13052 <_vfprintf_r+0x384>
   13050:	8dda                	mv	s11,s6
   13052:	c802                	sw	zero,16(sp)
   13054:	d402                	sw	zero,40(sp)
   13056:	d202                	sw	zero,36(sp)
   13058:	ce02                	sw	zero,28(sp)
   1305a:	e00705e3          	beqz	a4,12e64 <_vfprintf_r+0x196>
   1305e:	0d85                	addi	s11,s11,1
   13060:	b511                	j	12e64 <_vfprintf_r+0x196>
   13062:	010cec93          	ori	s9,s9,16
   13066:	020cf793          	andi	a5,s9,32
   1306a:	2c078a63          	beqz	a5,1333e <_vfprintf_r+0x670>
   1306e:	47d2                	lw	a5,20(sp)
   13070:	00778c13          	addi	s8,a5,7
   13074:	ff8c7c13          	andi	s8,s8,-8
   13078:	000c2b03          	lw	s6,0(s8)
   1307c:	004c2d83          	lw	s11,4(s8)
   13080:	008c0793          	addi	a5,s8,8
   13084:	ca3e                	sw	a5,20(sp)
   13086:	bffcfe93          	andi	t4,s9,-1025
   1308a:	4781                	li	a5,0
   1308c:	4701                	li	a4,0
   1308e:	0ae103a3          	sb	a4,167(sp)
   13092:	240aca63          	bltz	s5,132e6 <_vfprintf_r+0x618>
   13096:	01bb6733          	or	a4,s6,s11
   1309a:	f7fefc93          	andi	s9,t4,-129
   1309e:	70071463          	bnez	a4,137a6 <_vfprintf_r+0xad8>
   130a2:	540a9d63          	bnez	s5,135fc <_vfprintf_r+0x92e>
   130a6:	1e0798e3          	bnez	a5,13a96 <_vfprintf_r+0xdc8>
   130aa:	001efb13          	andi	s6,t4,1
   130ae:	19010d13          	addi	s10,sp,400
   130b2:	f80b0ae3          	beqz	s6,13046 <_vfprintf_r+0x378>
   130b6:	03000793          	li	a5,48
   130ba:	18f107a3          	sb	a5,399(sp)
   130be:	18f10d13          	addi	s10,sp,399
   130c2:	b751                	j	13046 <_vfprintf_r+0x378>
   130c4:	41a90ab3          	sub	s5,s2,s10
   130c8:	d1a912e3          	bne	s2,s10,12dcc <_vfprintf_r+0xfe>
   130cc:	00094703          	lbu	a4,0(s2)
   130d0:	b30d                	j	12df2 <_vfprintf_r+0x124>
   130d2:	4522                	lw	a0,8(sp)
   130d4:	01d0                	addi	a2,sp,196
   130d6:	85a6                	mv	a1,s1
   130d8:	00002097          	auipc	ra,0x2
   130dc:	722080e7          	jalr	1826(ra) # 157fa <__sprint_r>
   130e0:	e4051de3          	bnez	a0,12f3a <_vfprintf_r+0x26c>
   130e4:	844e                	mv	s0,s3
   130e6:	b309                	j	12de8 <_vfprintf_r+0x11a>
   130e8:	008cf713          	andi	a4,s9,8
   130ec:	22071ce3          	bnez	a4,13b24 <_vfprintf_r+0xe56>
   130f0:	47d2                	lw	a5,20(sp)
   130f2:	0908                	addi	a0,sp,144
   130f4:	c846                	sw	a7,16(sp)
   130f6:	00778c13          	addi	s8,a5,7
   130fa:	ff8c7c13          	andi	s8,s8,-8
   130fe:	000c2583          	lw	a1,0(s8)
   13102:	004c2603          	lw	a2,4(s8)
   13106:	008c0793          	addi	a5,s8,8
   1310a:	ca3e                	sw	a5,20(sp)
   1310c:	00009097          	auipc	ra,0x9
   13110:	e58080e7          	jalr	-424(ra) # 1bf64 <__extenddftf2>
   13114:	45ca                	lw	a1,144(sp)
   13116:	465a                	lw	a2,148(sp)
   13118:	46ea                	lw	a3,152(sp)
   1311a:	477a                	lw	a4,156(sp)
   1311c:	48c2                	lw	a7,16(sp)
   1311e:	0988                	addi	a0,sp,208
   13120:	c846                	sw	a7,16(sp)
   13122:	cfba                	sw	a4,220(sp)
   13124:	c9ae                	sw	a1,208(sp)
   13126:	cbb2                	sw	a2,212(sp)
   13128:	cdb6                	sw	a3,216(sp)
   1312a:	00004097          	auipc	ra,0x4
   1312e:	d9c080e7          	jalr	-612(ra) # 16ec6 <_ldcheck>
   13132:	d72a                	sw	a0,172(sp)
   13134:	4709                	li	a4,2
   13136:	48c2                	lw	a7,16(sp)
   13138:	66e504e3          	beq	a0,a4,13fa0 <_vfprintf_r+0x12d2>
   1313c:	4705                	li	a4,1
   1313e:	74e503e3          	beq	a0,a4,14084 <_vfprintf_r+0x13b6>
   13142:	06100713          	li	a4,97
   13146:	32e888e3          	beq	a7,a4,13c76 <_vfprintf_r+0xfa8>
   1314a:	04100713          	li	a4,65
   1314e:	05800793          	li	a5,88
   13152:	32e884e3          	beq	a7,a4,13c7a <_vfprintf_r+0xfac>
   13156:	577d                	li	a4,-1
   13158:	00ea9463          	bne	s5,a4,13160 <_vfprintf_r+0x492>
   1315c:	74a0106f          	j	148a6 <_vfprintf_r+0x1bd8>
   13160:	fdf8f713          	andi	a4,a7,-33
   13164:	04700693          	li	a3,71
   13168:	c802                	sw	zero,16(sp)
   1316a:	00d71563          	bne	a4,a3,13174 <_vfprintf_r+0x4a6>
   1316e:	000a9363          	bnez	s5,13174 <_vfprintf_r+0x4a6>
   13172:	4a85                	li	s5,1
   13174:	4c7e                	lw	s8,220(sp)
   13176:	100ce793          	ori	a5,s9,256
   1317a:	c6be                	sw	a5,76(sp)
   1317c:	dc02                	sw	zero,56(sp)
   1317e:	4fce                	lw	t6,208(sp)
   13180:	4f5e                	lw	t5,212(sp)
   13182:	4eee                	lw	t4,216(sp)
   13184:	000c5963          	bgez	s8,13196 <_vfprintf_r+0x4c8>
   13188:	80000737          	lui	a4,0x80000
   1318c:	02d00793          	li	a5,45
   13190:	01874c33          	xor	s8,a4,s8
   13194:	dc3e                	sw	a5,56(sp)
   13196:	fbf88713          	addi	a4,a7,-65
   1319a:	02500693          	li	a3,37
   1319e:	30e6ece3          	bltu	a3,a4,13cb6 <_vfprintf_r+0xfe8>
   131a2:	0001e6b7          	lui	a3,0x1e
   131a6:	070a                	slli	a4,a4,0x2
   131a8:	b6068693          	addi	a3,a3,-1184 # 1db60 <__clz_tab+0x26c>
   131ac:	9736                	add	a4,a4,a3
   131ae:	4318                	lw	a4,0(a4)
   131b0:	8702                	jr	a4
   131b2:	4522                	lw	a0,8(sp)
   131b4:	01d0                	addi	a2,sp,196
   131b6:	85a6                	mv	a1,s1
   131b8:	c8c6                	sw	a7,80(sp)
   131ba:	c6fe                	sw	t6,76(sp)
   131bc:	dc16                	sw	t0,56(sp)
   131be:	00002097          	auipc	ra,0x2
   131c2:	63c080e7          	jalr	1596(ra) # 157fa <__sprint_r>
   131c6:	5c051663          	bnez	a0,13792 <_vfprintf_r+0xac4>
   131ca:	463e                	lw	a2,204(sp)
   131cc:	48c6                	lw	a7,80(sp)
   131ce:	4fb6                	lw	t6,76(sp)
   131d0:	52e2                	lw	t0,56(sp)
   131d2:	844e                	mv	s0,s3
   131d4:	b1f9                	j	12ea2 <_vfprintf_r+0x1d4>
   131d6:	4aae                	lw	s5,200(sp)
   131d8:	5782                	lw	a5,32(sp)
   131da:	4705                	li	a4,1
   131dc:	01a42023          	sw	s10,0(s0)
   131e0:	00160c13          	addi	s8,a2,1
   131e4:	0a85                	addi	s5,s5,1
   131e6:	00840b13          	addi	s6,s0,8
   131ea:	00f751e3          	bge	a4,a5,139ec <_vfprintf_r+0xd1e>
   131ee:	4705                	li	a4,1
   131f0:	c058                	sw	a4,4(s0)
   131f2:	c7e2                	sw	s8,204(sp)
   131f4:	c5d6                	sw	s5,200(sp)
   131f6:	471d                	li	a4,7
   131f8:	3f574ee3          	blt	a4,s5,13df4 <_vfprintf_r+0x1126>
   131fc:	57b2                	lw	a5,44(sp)
   131fe:	5742                	lw	a4,48(sp)
   13200:	0a85                	addi	s5,s5,1
   13202:	9c3e                	add	s8,s8,a5
   13204:	00eb2023          	sw	a4,0(s6)
   13208:	00fb2223          	sw	a5,4(s6)
   1320c:	c7e2                	sw	s8,204(sp)
   1320e:	c5d6                	sw	s5,200(sp)
   13210:	471d                	li	a4,7
   13212:	0b21                	addi	s6,s6,8
   13214:	3f574ee3          	blt	a4,s5,13e10 <_vfprintf_r+0x1142>
   13218:	474e                	lw	a4,208(sp)
   1321a:	5782                	lw	a5,32(sp)
   1321c:	010c                	addi	a1,sp,128
   1321e:	c93a                	sw	a4,144(sp)
   13220:	475e                	lw	a4,212(sp)
   13222:	0908                	addi	a0,sp,144
   13224:	c102                	sw	zero,128(sp)
   13226:	cb3a                	sw	a4,148(sp)
   13228:	476e                	lw	a4,216(sp)
   1322a:	c302                	sw	zero,132(sp)
   1322c:	c502                	sw	zero,136(sp)
   1322e:	cd3a                	sw	a4,152(sp)
   13230:	477e                	lw	a4,220(sp)
   13232:	c702                	sw	zero,140(sp)
   13234:	fff78413          	addi	s0,a5,-1
   13238:	cf3a                	sw	a4,156(sp)
   1323a:	00007097          	auipc	ra,0x7
   1323e:	f46080e7          	jalr	-186(ra) # 1a180 <__eqtf2>
   13242:	7c050c63          	beqz	a0,13a1a <_vfprintf_r+0xd4c>
   13246:	001d0793          	addi	a5,s10,1
   1324a:	0a85                	addi	s5,s5,1
   1324c:	9c22                	add	s8,s8,s0
   1324e:	00fb2023          	sw	a5,0(s6)
   13252:	008b2223          	sw	s0,4(s6)
   13256:	c7e2                	sw	s8,204(sp)
   13258:	c5d6                	sw	s5,200(sp)
   1325a:	479d                	li	a5,7
   1325c:	0b21                	addi	s6,s6,8
   1325e:	7b57c163          	blt	a5,s5,13a00 <_vfprintf_r+0xd32>
   13262:	4686                	lw	a3,64(sp)
   13264:	1958                	addi	a4,sp,180
   13266:	001a8793          	addi	a5,s5,1
   1326a:	01868633          	add	a2,a3,s8
   1326e:	00eb2023          	sw	a4,0(s6)
   13272:	00db2223          	sw	a3,4(s6)
   13276:	c7b2                	sw	a2,204(sp)
   13278:	c5be                	sw	a5,200(sp)
   1327a:	471d                	li	a4,7
   1327c:	008b0413          	addi	s0,s6,8
   13280:	c6f759e3          	bge	a4,a5,12ef2 <_vfprintf_r+0x224>
   13284:	4522                	lw	a0,8(sp)
   13286:	01d0                	addi	a2,sp,196
   13288:	85a6                	mv	a1,s1
   1328a:	00002097          	auipc	ra,0x2
   1328e:	570080e7          	jalr	1392(ra) # 157fa <__sprint_r>
   13292:	50051063          	bnez	a0,13792 <_vfprintf_r+0xac4>
   13296:	463e                	lw	a2,204(sp)
   13298:	844e                	mv	s0,s3
   1329a:	b9a1                	j	12ef2 <_vfprintf_r+0x224>
   1329c:	4752                	lw	a4,20(sp)
   1329e:	010cf793          	andi	a5,s9,16
   132a2:	00072b03          	lw	s6,0(a4) # 80000000 <__BSS_END__+0x7ffe15a4>
   132a6:	0711                	addi	a4,a4,4
   132a8:	ca3a                	sw	a4,20(sp)
   132aa:	020799e3          	bnez	a5,13adc <_vfprintf_r+0xe0e>
   132ae:	040cf793          	andi	a5,s9,64
   132b2:	020781e3          	beqz	a5,13ad4 <_vfprintf_r+0xe06>
   132b6:	0b42                	slli	s6,s6,0x10
   132b8:	410b5b13          	srai	s6,s6,0x10
   132bc:	41fb5d93          	srai	s11,s6,0x1f
   132c0:	87ee                	mv	a5,s11
   132c2:	d607d3e3          	bgez	a5,13028 <_vfprintf_r+0x35a>
   132c6:	02d00713          	li	a4,45
   132ca:	016037b3          	snez	a5,s6
   132ce:	41b00db3          	neg	s11,s11
   132d2:	0ae103a3          	sb	a4,167(sp)
   132d6:	40fd8db3          	sub	s11,s11,a5
   132da:	41600b33          	neg	s6,s6
   132de:	8ee6                	mv	t4,s9
   132e0:	4785                	li	a5,1
   132e2:	da0adae3          	bgez	s5,13096 <_vfprintf_r+0x3c8>
   132e6:	4705                	li	a4,1
   132e8:	0ee78563          	beq	a5,a4,133d2 <_vfprintf_r+0x704>
   132ec:	4709                	li	a4,2
   132ee:	32e78063          	beq	a5,a4,1360e <_vfprintf_r+0x940>
   132f2:	19010d13          	addi	s10,sp,400
   132f6:	01dd9793          	slli	a5,s11,0x1d
   132fa:	007b7713          	andi	a4,s6,7
   132fe:	003b5b13          	srli	s6,s6,0x3
   13302:	03070713          	addi	a4,a4,48
   13306:	0167eb33          	or	s6,a5,s6
   1330a:	003ddd93          	srli	s11,s11,0x3
   1330e:	feed0fa3          	sb	a4,-1(s10)
   13312:	01bb67b3          	or	a5,s6,s11
   13316:	866a                	mv	a2,s10
   13318:	1d7d                	addi	s10,s10,-1
   1331a:	fff1                	bnez	a5,132f6 <_vfprintf_r+0x628>
   1331c:	001ef693          	andi	a3,t4,1
   13320:	30068d63          	beqz	a3,1363a <_vfprintf_r+0x96c>
   13324:	03000693          	li	a3,48
   13328:	30d70963          	beq	a4,a3,1363a <_vfprintf_r+0x96c>
   1332c:	1679                	addi	a2,a2,-2
   1332e:	0b1c                	addi	a5,sp,400
   13330:	fedd0fa3          	sb	a3,-1(s10)
   13334:	40c78b33          	sub	s6,a5,a2
   13338:	8cf6                	mv	s9,t4
   1333a:	8d32                	mv	s10,a2
   1333c:	b329                	j	13046 <_vfprintf_r+0x378>
   1333e:	4752                	lw	a4,20(sp)
   13340:	010cf793          	andi	a5,s9,16
   13344:	00072b03          	lw	s6,0(a4)
   13348:	0711                	addi	a4,a4,4
   1334a:	ca3a                	sw	a4,20(sp)
   1334c:	78079163          	bnez	a5,13ace <_vfprintf_r+0xe00>
   13350:	040cf793          	andi	a5,s9,64
   13354:	76078963          	beqz	a5,13ac6 <_vfprintf_r+0xdf8>
   13358:	0b42                	slli	s6,s6,0x10
   1335a:	010b5b13          	srli	s6,s6,0x10
   1335e:	4d81                	li	s11,0
   13360:	b31d                	j	13086 <_vfprintf_r+0x3b8>
   13362:	4752                	lw	a4,20(sp)
   13364:	0a0103a3          	sb	zero,167(sp)
   13368:	4d85                	li	s11,1
   1336a:	431c                	lw	a5,0(a4)
   1336c:	0711                	addi	a4,a4,4
   1336e:	ca3a                	sw	a4,20(sp)
   13370:	12f10623          	sb	a5,300(sp)
   13374:	4b05                	li	s6,1
   13376:	12c10d13          	addi	s10,sp,300
   1337a:	b4c5                	j	12e5a <_vfprintf_r+0x18c>
   1337c:	47d2                	lw	a5,20(sp)
   1337e:	0a0103a3          	sb	zero,167(sp)
   13382:	0007ad03          	lw	s10,0(a5)
   13386:	00478c13          	addi	s8,a5,4
   1338a:	040d09e3          	beqz	s10,13bdc <_vfprintf_r+0xf0e>
   1338e:	4a0ac9e3          	bltz	s5,14040 <_vfprintf_r+0x1372>
   13392:	8656                	mv	a2,s5
   13394:	4581                	li	a1,0
   13396:	856a                	mv	a0,s10
   13398:	ca46                	sw	a7,20(sp)
   1339a:	00003097          	auipc	ra,0x3
   1339e:	e28080e7          	jalr	-472(ra) # 161c2 <memchr>
   133a2:	c82a                	sw	a0,16(sp)
   133a4:	48d2                	lw	a7,20(sp)
   133a6:	e119                	bnez	a0,133ac <_vfprintf_r+0x6de>
   133a8:	3540106f          	j	146fc <_vfprintf_r+0x1a2e>
   133ac:	47c2                	lw	a5,16(sp)
   133ae:	0a714703          	lbu	a4,167(sp)
   133b2:	ca62                	sw	s8,20(sp)
   133b4:	41a78b33          	sub	s6,a5,s10
   133b8:	fffb4693          	not	a3,s6
   133bc:	86fd                	srai	a3,a3,0x1f
   133be:	c802                	sw	zero,16(sp)
   133c0:	d402                	sw	zero,40(sp)
   133c2:	d202                	sw	zero,36(sp)
   133c4:	ce02                	sw	zero,28(sp)
   133c6:	00db7db3          	and	s11,s6,a3
   133ca:	4a81                	li	s5,0
   133cc:	c80719e3          	bnez	a4,1305e <_vfprintf_r+0x390>
   133d0:	bc51                	j	12e64 <_vfprintf_r+0x196>
   133d2:	260d93e3          	bnez	s11,13e38 <_vfprintf_r+0x116a>
   133d6:	47a5                	li	a5,9
   133d8:	2767e0e3          	bltu	a5,s6,13e38 <_vfprintf_r+0x116a>
   133dc:	030b0b13          	addi	s6,s6,48
   133e0:	196107a3          	sb	s6,399(sp)
   133e4:	8cf6                	mv	s9,t4
   133e6:	4b05                	li	s6,1
   133e8:	18f10d13          	addi	s10,sp,399
   133ec:	b9a9                	j	13046 <_vfprintf_r+0x378>
   133ee:	47d2                	lw	a5,20(sp)
   133f0:	0007ab83          	lw	s7,0(a5)
   133f4:	0791                	addi	a5,a5,4
   133f6:	6a0bda63          	bgez	s7,13aaa <_vfprintf_r+0xddc>
   133fa:	41700bb3          	neg	s7,s7
   133fe:	ca3e                	sw	a5,20(sp)
   13400:	00094883          	lbu	a7,0(s2)
   13404:	004cec93          	ori	s9,s9,4
   13408:	b409                	j	12e0a <_vfprintf_r+0x13c>
   1340a:	02b00793          	li	a5,43
   1340e:	00094883          	lbu	a7,0(s2)
   13412:	0af103a3          	sb	a5,167(sp)
   13416:	bad5                	j	12e0a <_vfprintf_r+0x13c>
   13418:	00094883          	lbu	a7,0(s2)
   1341c:	080cec93          	ori	s9,s9,128
   13420:	b2ed                	j	12e0a <_vfprintf_r+0x13c>
   13422:	00094883          	lbu	a7,0(s2)
   13426:	02a00793          	li	a5,42
   1342a:	00190693          	addi	a3,s2,1
   1342e:	00f89463          	bne	a7,a5,13436 <_vfprintf_r+0x768>
   13432:	5600106f          	j	14992 <_vfprintf_r+0x1cc4>
   13436:	fd088793          	addi	a5,a7,-48
   1343a:	4725                	li	a4,9
   1343c:	4a81                	li	s5,0
   1343e:	4625                	li	a2,9
   13440:	02f76063          	bltu	a4,a5,13460 <_vfprintf_r+0x792>
   13444:	0006c883          	lbu	a7,0(a3)
   13448:	002a9713          	slli	a4,s5,0x2
   1344c:	9aba                	add	s5,s5,a4
   1344e:	0a86                	slli	s5,s5,0x1
   13450:	9abe                	add	s5,s5,a5
   13452:	fd088793          	addi	a5,a7,-48
   13456:	0685                	addi	a3,a3,1
   13458:	fef676e3          	bgeu	a2,a5,13444 <_vfprintf_r+0x776>
   1345c:	6e0ac263          	bltz	s5,13b40 <_vfprintf_r+0xe72>
   13460:	8936                	mv	s2,a3
   13462:	b26d                	j	12e0c <_vfprintf_r+0x13e>
   13464:	00094883          	lbu	a7,0(s2)
   13468:	001cec93          	ori	s9,s9,1
   1346c:	ba79                	j	12e0a <_vfprintf_r+0x13c>
   1346e:	0a714783          	lbu	a5,167(sp)
   13472:	00094883          	lbu	a7,0(s2)
   13476:	98079ae3          	bnez	a5,12e0a <_vfprintf_r+0x13c>
   1347a:	02000793          	li	a5,32
   1347e:	0af103a3          	sb	a5,167(sp)
   13482:	b261                	j	12e0a <_vfprintf_r+0x13c>
   13484:	010cee93          	ori	t4,s9,16
   13488:	020ef793          	andi	a5,t4,32
   1348c:	5e078363          	beqz	a5,13a72 <_vfprintf_r+0xda4>
   13490:	47d2                	lw	a5,20(sp)
   13492:	00778c13          	addi	s8,a5,7
   13496:	ff8c7c13          	andi	s8,s8,-8
   1349a:	008c0793          	addi	a5,s8,8
   1349e:	ca3e                	sw	a5,20(sp)
   134a0:	000c2b03          	lw	s6,0(s8)
   134a4:	004c2d83          	lw	s11,4(s8)
   134a8:	4785                	li	a5,1
   134aa:	b6cd                	j	1308c <_vfprintf_r+0x3be>
   134ac:	00094883          	lbu	a7,0(s2)
   134b0:	008cec93          	ori	s9,s9,8
   134b4:	ba99                	j	12e0a <_vfprintf_r+0x13c>
   134b6:	4752                	lw	a4,20(sp)
   134b8:	67a1                	lui	a5,0x8
   134ba:	83078793          	addi	a5,a5,-2000 # 7830 <exit-0x8864>
   134be:	0af11423          	sh	a5,168(sp)
   134c2:	00470793          	addi	a5,a4,4
   134c6:	ca3e                	sw	a5,20(sp)
   134c8:	0001d7b7          	lui	a5,0x1d
   134cc:	41c78793          	addi	a5,a5,1052 # 1d41c <__extenddftf2+0x14b8>
   134d0:	da3e                	sw	a5,52(sp)
   134d2:	00072b03          	lw	s6,0(a4)
   134d6:	4d81                	li	s11,0
   134d8:	002cee93          	ori	t4,s9,2
   134dc:	4789                	li	a5,2
   134de:	07800893          	li	a7,120
   134e2:	b66d                	j	1308c <_vfprintf_r+0x3be>
   134e4:	020cf793          	andi	a5,s9,32
   134e8:	60078c63          	beqz	a5,13b00 <_vfprintf_r+0xe32>
   134ec:	47d2                	lw	a5,20(sp)
   134ee:	46b2                	lw	a3,12(sp)
   134f0:	439c                	lw	a5,0(a5)
   134f2:	41f6d713          	srai	a4,a3,0x1f
   134f6:	c394                	sw	a3,0(a5)
   134f8:	c3d8                	sw	a4,4(a5)
   134fa:	47d2                	lw	a5,20(sp)
   134fc:	8d4a                	mv	s10,s2
   134fe:	0791                	addi	a5,a5,4
   13500:	ca3e                	sw	a5,20(sp)
   13502:	b425                	j	12f2a <_vfprintf_r+0x25c>
   13504:	00094883          	lbu	a7,0(s2)
   13508:	06c00793          	li	a5,108
   1350c:	6af88563          	beq	a7,a5,13bb6 <_vfprintf_r+0xee8>
   13510:	010cec93          	ori	s9,s9,16
   13514:	b8dd                	j	12e0a <_vfprintf_r+0x13c>
   13516:	00094883          	lbu	a7,0(s2)
   1351a:	06800793          	li	a5,104
   1351e:	68f88563          	beq	a7,a5,13ba8 <_vfprintf_r+0xeda>
   13522:	040cec93          	ori	s9,s9,64
   13526:	b0d5                	j	12e0a <_vfprintf_r+0x13c>
   13528:	06500713          	li	a4,101
   1352c:	cb1755e3          	bge	a4,a7,131d6 <_vfprintf_r+0x508>
   13530:	474e                	lw	a4,208(sp)
   13532:	010c                	addi	a1,sp,128
   13534:	0908                	addi	a0,sp,144
   13536:	c93a                	sw	a4,144(sp)
   13538:	475e                	lw	a4,212(sp)
   1353a:	dc32                	sw	a2,56(sp)
   1353c:	c102                	sw	zero,128(sp)
   1353e:	cb3a                	sw	a4,148(sp)
   13540:	476e                	lw	a4,216(sp)
   13542:	c302                	sw	zero,132(sp)
   13544:	c502                	sw	zero,136(sp)
   13546:	cd3a                	sw	a4,152(sp)
   13548:	477e                	lw	a4,220(sp)
   1354a:	c702                	sw	zero,140(sp)
   1354c:	cf3a                	sw	a4,156(sp)
   1354e:	00007097          	auipc	ra,0x7
   13552:	c32080e7          	jalr	-974(ra) # 1a180 <__eqtf2>
   13556:	5662                	lw	a2,56(sp)
   13558:	3a051163          	bnez	a0,138fa <_vfprintf_r+0xc2c>
   1355c:	47ae                	lw	a5,200(sp)
   1355e:	0001d737          	lui	a4,0x1d
   13562:	44c70713          	addi	a4,a4,1100 # 1d44c <__extenddftf2+0x14e8>
   13566:	c018                	sw	a4,0(s0)
   13568:	0605                	addi	a2,a2,1
   1356a:	4705                	li	a4,1
   1356c:	0785                	addi	a5,a5,1
   1356e:	c058                	sw	a4,4(s0)
   13570:	c7b2                	sw	a2,204(sp)
   13572:	c5be                	sw	a5,200(sp)
   13574:	471d                	li	a4,7
   13576:	0421                	addi	s0,s0,8
   13578:	1ef747e3          	blt	a4,a5,13f66 <_vfprintf_r+0x1298>
   1357c:	57ba                	lw	a5,172(sp)
   1357e:	5702                	lw	a4,32(sp)
   13580:	52e7d063          	bge	a5,a4,13aa0 <_vfprintf_r+0xdd2>
   13584:	57c2                	lw	a5,48(sp)
   13586:	5732                	lw	a4,44(sp)
   13588:	0421                	addi	s0,s0,8
   1358a:	fef42c23          	sw	a5,-8(s0)
   1358e:	47ae                	lw	a5,200(sp)
   13590:	963a                	add	a2,a2,a4
   13592:	fee42e23          	sw	a4,-4(s0)
   13596:	0785                	addi	a5,a5,1
   13598:	c7b2                	sw	a2,204(sp)
   1359a:	c5be                	sw	a5,200(sp)
   1359c:	471d                	li	a4,7
   1359e:	62f74363          	blt	a4,a5,13bc4 <_vfprintf_r+0xef6>
   135a2:	5782                	lw	a5,32(sp)
   135a4:	fff78a93          	addi	s5,a5,-1
   135a8:	955055e3          	blez	s5,12ef2 <_vfprintf_r+0x224>
   135ac:	0001e837          	lui	a6,0x1e
   135b0:	bf880813          	addi	a6,a6,-1032 # 1dbf8 <zeroes.0>
   135b4:	4741                	li	a4,16
   135b6:	47ae                	lw	a5,200(sp)
   135b8:	4b41                	li	s6,16
   135ba:	4c1d                	li	s8,7
   135bc:	8d42                	mv	s10,a6
   135be:	01574763          	blt	a4,s5,135cc <_vfprintf_r+0x8fe>
   135c2:	1c10006f          	j	13f82 <_vfprintf_r+0x12b4>
   135c6:	1ac1                	addi	s5,s5,-16
   135c8:	1b5b5ce3          	bge	s6,s5,13f80 <_vfprintf_r+0x12b2>
   135cc:	0641                	addi	a2,a2,16
   135ce:	0785                	addi	a5,a5,1
   135d0:	01a42023          	sw	s10,0(s0)
   135d4:	01642223          	sw	s6,4(s0)
   135d8:	c7b2                	sw	a2,204(sp)
   135da:	c5be                	sw	a5,200(sp)
   135dc:	0421                	addi	s0,s0,8
   135de:	fefc54e3          	bge	s8,a5,135c6 <_vfprintf_r+0x8f8>
   135e2:	4522                	lw	a0,8(sp)
   135e4:	01d0                	addi	a2,sp,196
   135e6:	85a6                	mv	a1,s1
   135e8:	00002097          	auipc	ra,0x2
   135ec:	212080e7          	jalr	530(ra) # 157fa <__sprint_r>
   135f0:	1a051163          	bnez	a0,13792 <_vfprintf_r+0xac4>
   135f4:	463e                	lw	a2,204(sp)
   135f6:	47ae                	lw	a5,200(sp)
   135f8:	844e                	mv	s0,s3
   135fa:	b7f1                	j	135c6 <_vfprintf_r+0x8f8>
   135fc:	4705                	li	a4,1
   135fe:	00e79463          	bne	a5,a4,13606 <_vfprintf_r+0x938>
   13602:	1e80106f          	j	147ea <_vfprintf_r+0x1b1c>
   13606:	4709                	li	a4,2
   13608:	8ee6                	mv	t4,s9
   1360a:	cee794e3          	bne	a5,a4,132f2 <_vfprintf_r+0x624>
   1360e:	56d2                	lw	a3,52(sp)
   13610:	19010d13          	addi	s10,sp,400
   13614:	00fb7793          	andi	a5,s6,15
   13618:	97b6                	add	a5,a5,a3
   1361a:	0007c703          	lbu	a4,0(a5)
   1361e:	004b5b13          	srli	s6,s6,0x4
   13622:	01cd9793          	slli	a5,s11,0x1c
   13626:	0167eb33          	or	s6,a5,s6
   1362a:	004ddd93          	srli	s11,s11,0x4
   1362e:	feed0fa3          	sb	a4,-1(s10)
   13632:	01bb67b3          	or	a5,s6,s11
   13636:	1d7d                	addi	s10,s10,-1
   13638:	fff1                	bnez	a5,13614 <_vfprintf_r+0x946>
   1363a:	0b1c                	addi	a5,sp,400
   1363c:	41a78b33          	sub	s6,a5,s10
   13640:	8cf6                	mv	s9,t4
   13642:	b411                	j	13046 <_vfprintf_r+0x378>
   13644:	41bb8c33          	sub	s8,s7,s11
   13648:	898050e3          	blez	s8,12ec8 <_vfprintf_r+0x1fa>
   1364c:	0001e837          	lui	a6,0x1e
   13650:	4541                	li	a0,16
   13652:	45ae                	lw	a1,200(sp)
   13654:	bf880813          	addi	a6,a6,-1032 # 1dbf8 <zeroes.0>
   13658:	07855163          	bge	a0,s8,136ba <_vfprintf_r+0x9ec>
   1365c:	dc4a                	sw	s2,56(sp)
   1365e:	87a2                	mv	a5,s0
   13660:	4ec1                	li	t4,16
   13662:	8462                	mv	s0,s8
   13664:	4f9d                	li	t6,7
   13666:	8c5a                	mv	s8,s6
   13668:	8942                	mv	s2,a6
   1366a:	8b56                	mv	s6,s5
   1366c:	8ac6                	mv	s5,a7
   1366e:	a021                	j	13676 <_vfprintf_r+0x9a8>
   13670:	1441                	addi	s0,s0,-16
   13672:	028edd63          	bge	t4,s0,136ac <_vfprintf_r+0x9de>
   13676:	0641                	addi	a2,a2,16
   13678:	0585                	addi	a1,a1,1 # 2001 <exit-0xe093>
   1367a:	0127a023          	sw	s2,0(a5)
   1367e:	01d7a223          	sw	t4,4(a5)
   13682:	c7b2                	sw	a2,204(sp)
   13684:	c5ae                	sw	a1,200(sp)
   13686:	07a1                	addi	a5,a5,8
   13688:	febfd4e3          	bge	t6,a1,13670 <_vfprintf_r+0x9a2>
   1368c:	4522                	lw	a0,8(sp)
   1368e:	01d0                	addi	a2,sp,196
   13690:	85a6                	mv	a1,s1
   13692:	00002097          	auipc	ra,0x2
   13696:	168080e7          	jalr	360(ra) # 157fa <__sprint_r>
   1369a:	ed65                	bnez	a0,13792 <_vfprintf_r+0xac4>
   1369c:	4ec1                	li	t4,16
   1369e:	1441                	addi	s0,s0,-16
   136a0:	463e                	lw	a2,204(sp)
   136a2:	45ae                	lw	a1,200(sp)
   136a4:	87ce                	mv	a5,s3
   136a6:	4f9d                	li	t6,7
   136a8:	fc8ec7e3          	blt	t4,s0,13676 <_vfprintf_r+0x9a8>
   136ac:	884a                	mv	a6,s2
   136ae:	5962                	lw	s2,56(sp)
   136b0:	88d6                	mv	a7,s5
   136b2:	8ada                	mv	s5,s6
   136b4:	8b62                	mv	s6,s8
   136b6:	8c22                	mv	s8,s0
   136b8:	843e                	mv	s0,a5
   136ba:	9662                	add	a2,a2,s8
   136bc:	0585                	addi	a1,a1,1
   136be:	01042023          	sw	a6,0(s0)
   136c2:	01842223          	sw	s8,4(s0)
   136c6:	c7b2                	sw	a2,204(sp)
   136c8:	c5ae                	sw	a1,200(sp)
   136ca:	471d                	li	a4,7
   136cc:	0421                	addi	s0,s0,8
   136ce:	feb75d63          	bge	a4,a1,12ec8 <_vfprintf_r+0x1fa>
   136d2:	4522                	lw	a0,8(sp)
   136d4:	01d0                	addi	a2,sp,196
   136d6:	85a6                	mv	a1,s1
   136d8:	dc46                	sw	a7,56(sp)
   136da:	00002097          	auipc	ra,0x2
   136de:	120080e7          	jalr	288(ra) # 157fa <__sprint_r>
   136e2:	e945                	bnez	a0,13792 <_vfprintf_r+0xac4>
   136e4:	463e                	lw	a2,204(sp)
   136e6:	58e2                	lw	a7,56(sp)
   136e8:	844e                	mv	s0,s3
   136ea:	fdeff06f          	j	12ec8 <_vfprintf_r+0x1fa>
   136ee:	0001e837          	lui	a6,0x1e
   136f2:	4741                	li	a4,16
   136f4:	45ae                	lw	a1,200(sp)
   136f6:	bf880813          	addi	a6,a6,-1032 # 1dbf8 <zeroes.0>
   136fa:	05575963          	bge	a4,s5,1374c <_vfprintf_r+0xa7e>
   136fe:	87a2                	mv	a5,s0
   13700:	4741                	li	a4,16
   13702:	8456                	mv	s0,s5
   13704:	4c1d                	li	s8,7
   13706:	dc46                	sw	a7,56(sp)
   13708:	8ad2                	mv	s5,s4
   1370a:	a021                	j	13712 <_vfprintf_r+0xa44>
   1370c:	1441                	addi	s0,s0,-16
   1370e:	02875b63          	bge	a4,s0,13744 <_vfprintf_r+0xa76>
   13712:	0641                	addi	a2,a2,16
   13714:	0585                	addi	a1,a1,1
   13716:	0147a023          	sw	s4,0(a5)
   1371a:	c3d8                	sw	a4,4(a5)
   1371c:	c7b2                	sw	a2,204(sp)
   1371e:	c5ae                	sw	a1,200(sp)
   13720:	07a1                	addi	a5,a5,8
   13722:	febc55e3          	bge	s8,a1,1370c <_vfprintf_r+0xa3e>
   13726:	4522                	lw	a0,8(sp)
   13728:	01d0                	addi	a2,sp,196
   1372a:	85a6                	mv	a1,s1
   1372c:	00002097          	auipc	ra,0x2
   13730:	0ce080e7          	jalr	206(ra) # 157fa <__sprint_r>
   13734:	ed39                	bnez	a0,13792 <_vfprintf_r+0xac4>
   13736:	4741                	li	a4,16
   13738:	1441                	addi	s0,s0,-16
   1373a:	463e                	lw	a2,204(sp)
   1373c:	45ae                	lw	a1,200(sp)
   1373e:	87ce                	mv	a5,s3
   13740:	fc8749e3          	blt	a4,s0,13712 <_vfprintf_r+0xa44>
   13744:	58e2                	lw	a7,56(sp)
   13746:	8856                	mv	a6,s5
   13748:	8aa2                	mv	s5,s0
   1374a:	843e                	mv	s0,a5
   1374c:	9656                	add	a2,a2,s5
   1374e:	0585                	addi	a1,a1,1
   13750:	01042023          	sw	a6,0(s0)
   13754:	01542223          	sw	s5,4(s0)
   13758:	c7b2                	sw	a2,204(sp)
   1375a:	c5ae                	sw	a1,200(sp)
   1375c:	471d                	li	a4,7
   1375e:	0421                	addi	s0,s0,8
   13760:	f6b75863          	bge	a4,a1,12ed0 <_vfprintf_r+0x202>
   13764:	4522                	lw	a0,8(sp)
   13766:	01d0                	addi	a2,sp,196
   13768:	85a6                	mv	a1,s1
   1376a:	dc46                	sw	a7,56(sp)
   1376c:	00002097          	auipc	ra,0x2
   13770:	08e080e7          	jalr	142(ra) # 157fa <__sprint_r>
   13774:	ed19                	bnez	a0,13792 <_vfprintf_r+0xac4>
   13776:	463e                	lw	a2,204(sp)
   13778:	58e2                	lw	a7,56(sp)
   1377a:	844e                	mv	s0,s3
   1377c:	f54ff06f          	j	12ed0 <_vfprintf_r+0x202>
   13780:	4522                	lw	a0,8(sp)
   13782:	01d0                	addi	a2,sp,196
   13784:	85a6                	mv	a1,s1
   13786:	00002097          	auipc	ra,0x2
   1378a:	074080e7          	jalr	116(ra) # 157fa <__sprint_r>
   1378e:	f8050363          	beqz	a0,12f14 <_vfprintf_r+0x246>
   13792:	45c2                	lw	a1,16(sp)
   13794:	fa058363          	beqz	a1,12f3a <_vfprintf_r+0x26c>
   13798:	4522                	lw	a0,8(sp)
   1379a:	00003097          	auipc	ra,0x3
   1379e:	326080e7          	jalr	806(ra) # 16ac0 <_free_r>
   137a2:	f98ff06f          	j	12f3a <_vfprintf_r+0x26c>
   137a6:	8ee6                	mv	t4,s9
   137a8:	be3d                	j	132e6 <_vfprintf_r+0x618>
   137aa:	0001e837          	lui	a6,0x1e
   137ae:	4541                	li	a0,16
   137b0:	45ae                	lw	a1,200(sp)
   137b2:	c0880c13          	addi	s8,a6,-1016 # 1dc08 <blanks.1>
   137b6:	06e55563          	bge	a0,a4,13820 <_vfprintf_r+0xb52>
   137ba:	c8ca                	sw	s2,80(sp)
   137bc:	87a2                	mv	a5,s0
   137be:	8962                	mv	s2,s8
   137c0:	4ec1                	li	t4,16
   137c2:	8c5a                	mv	s8,s6
   137c4:	439d                	li	t2,7
   137c6:	8b56                	mv	s6,s5
   137c8:	dc16                	sw	t0,56(sp)
   137ca:	c6fe                	sw	t6,76(sp)
   137cc:	843a                	mv	s0,a4
   137ce:	8ac6                	mv	s5,a7
   137d0:	a021                	j	137d8 <_vfprintf_r+0xb0a>
   137d2:	1441                	addi	s0,s0,-16
   137d4:	028edd63          	bge	t4,s0,1380e <_vfprintf_r+0xb40>
   137d8:	0641                	addi	a2,a2,16
   137da:	0585                	addi	a1,a1,1
   137dc:	0127a023          	sw	s2,0(a5)
   137e0:	01d7a223          	sw	t4,4(a5)
   137e4:	c7b2                	sw	a2,204(sp)
   137e6:	c5ae                	sw	a1,200(sp)
   137e8:	07a1                	addi	a5,a5,8
   137ea:	feb3d4e3          	bge	t2,a1,137d2 <_vfprintf_r+0xb04>
   137ee:	4522                	lw	a0,8(sp)
   137f0:	01d0                	addi	a2,sp,196
   137f2:	85a6                	mv	a1,s1
   137f4:	00002097          	auipc	ra,0x2
   137f8:	006080e7          	jalr	6(ra) # 157fa <__sprint_r>
   137fc:	f959                	bnez	a0,13792 <_vfprintf_r+0xac4>
   137fe:	4ec1                	li	t4,16
   13800:	1441                	addi	s0,s0,-16
   13802:	463e                	lw	a2,204(sp)
   13804:	45ae                	lw	a1,200(sp)
   13806:	87ce                	mv	a5,s3
   13808:	439d                	li	t2,7
   1380a:	fc8ec7e3          	blt	t4,s0,137d8 <_vfprintf_r+0xb0a>
   1380e:	88d6                	mv	a7,s5
   13810:	52e2                	lw	t0,56(sp)
   13812:	8ada                	mv	s5,s6
   13814:	4fb6                	lw	t6,76(sp)
   13816:	8b62                	mv	s6,s8
   13818:	8c4a                	mv	s8,s2
   1381a:	4946                	lw	s2,80(sp)
   1381c:	8722                	mv	a4,s0
   1381e:	843e                	mv	s0,a5
   13820:	963a                	add	a2,a2,a4
   13822:	0585                	addi	a1,a1,1
   13824:	c058                	sw	a4,4(s0)
   13826:	01842023          	sw	s8,0(s0)
   1382a:	c7b2                	sw	a2,204(sp)
   1382c:	c5ae                	sw	a1,200(sp)
   1382e:	471d                	li	a4,7
   13830:	0421                	addi	s0,s0,8
   13832:	e4b75763          	bge	a4,a1,12e80 <_vfprintf_r+0x1b2>
   13836:	4522                	lw	a0,8(sp)
   13838:	01d0                	addi	a2,sp,196
   1383a:	85a6                	mv	a1,s1
   1383c:	c8c6                	sw	a7,80(sp)
   1383e:	c6fe                	sw	t6,76(sp)
   13840:	dc16                	sw	t0,56(sp)
   13842:	00002097          	auipc	ra,0x2
   13846:	fb8080e7          	jalr	-72(ra) # 157fa <__sprint_r>
   1384a:	f521                	bnez	a0,13792 <_vfprintf_r+0xac4>
   1384c:	463e                	lw	a2,204(sp)
   1384e:	48c6                	lw	a7,80(sp)
   13850:	4fb6                	lw	t6,76(sp)
   13852:	52e2                	lw	t0,56(sp)
   13854:	844e                	mv	s0,s3
   13856:	e2aff06f          	j	12e80 <_vfprintf_r+0x1b2>
   1385a:	4522                	lw	a0,8(sp)
   1385c:	01d0                	addi	a2,sp,196
   1385e:	85a6                	mv	a1,s1
   13860:	c6c6                	sw	a7,76(sp)
   13862:	dc7e                	sw	t6,56(sp)
   13864:	00002097          	auipc	ra,0x2
   13868:	f96080e7          	jalr	-106(ra) # 157fa <__sprint_r>
   1386c:	f11d                	bnez	a0,13792 <_vfprintf_r+0xac4>
   1386e:	463e                	lw	a2,204(sp)
   13870:	48b6                	lw	a7,76(sp)
   13872:	5fe2                	lw	t6,56(sp)
   13874:	844e                	mv	s0,s3
   13876:	e4aff06f          	j	12ec0 <_vfprintf_r+0x1f2>
   1387a:	0001e837          	lui	a6,0x1e
   1387e:	4741                	li	a4,16
   13880:	47ae                	lw	a5,200(sp)
   13882:	c0880c13          	addi	s8,a6,-1016 # 1dc08 <blanks.1>
   13886:	05575363          	bge	a4,s5,138cc <_vfprintf_r+0xbfe>
   1388a:	4d22                	lw	s10,8(sp)
   1388c:	4b41                	li	s6,16
   1388e:	4c9d                	li	s9,7
   13890:	a021                	j	13898 <_vfprintf_r+0xbca>
   13892:	1ac1                	addi	s5,s5,-16
   13894:	035b5c63          	bge	s6,s5,138cc <_vfprintf_r+0xbfe>
   13898:	0641                	addi	a2,a2,16
   1389a:	0785                	addi	a5,a5,1
   1389c:	01842023          	sw	s8,0(s0)
   138a0:	01642223          	sw	s6,4(s0)
   138a4:	c7b2                	sw	a2,204(sp)
   138a6:	c5be                	sw	a5,200(sp)
   138a8:	0421                	addi	s0,s0,8
   138aa:	fefcd4e3          	bge	s9,a5,13892 <_vfprintf_r+0xbc4>
   138ae:	01d0                	addi	a2,sp,196
   138b0:	85a6                	mv	a1,s1
   138b2:	856a                	mv	a0,s10
   138b4:	00002097          	auipc	ra,0x2
   138b8:	f46080e7          	jalr	-186(ra) # 157fa <__sprint_r>
   138bc:	ec051be3          	bnez	a0,13792 <_vfprintf_r+0xac4>
   138c0:	1ac1                	addi	s5,s5,-16
   138c2:	463e                	lw	a2,204(sp)
   138c4:	47ae                	lw	a5,200(sp)
   138c6:	844e                	mv	s0,s3
   138c8:	fd5b48e3          	blt	s6,s5,13898 <_vfprintf_r+0xbca>
   138cc:	9656                	add	a2,a2,s5
   138ce:	0785                	addi	a5,a5,1
   138d0:	01842023          	sw	s8,0(s0)
   138d4:	01542223          	sw	s5,4(s0)
   138d8:	c7b2                	sw	a2,204(sp)
   138da:	c5be                	sw	a5,200(sp)
   138dc:	471d                	li	a4,7
   138de:	e2f75263          	bge	a4,a5,12f02 <_vfprintf_r+0x234>
   138e2:	4522                	lw	a0,8(sp)
   138e4:	01d0                	addi	a2,sp,196
   138e6:	85a6                	mv	a1,s1
   138e8:	00002097          	auipc	ra,0x2
   138ec:	f12080e7          	jalr	-238(ra) # 157fa <__sprint_r>
   138f0:	ea0511e3          	bnez	a0,13792 <_vfprintf_r+0xac4>
   138f4:	463e                	lw	a2,204(sp)
   138f6:	e0cff06f          	j	12f02 <_vfprintf_r+0x234>
   138fa:	553a                	lw	a0,172(sp)
   138fc:	60a05863          	blez	a0,13f0c <_vfprintf_r+0x123e>
   13900:	47f2                	lw	a5,28(sp)
   13902:	5702                	lw	a4,32(sp)
   13904:	8abe                	mv	s5,a5
   13906:	22f74963          	blt	a4,a5,13b38 <_vfprintf_r+0xe6a>
   1390a:	01505f63          	blez	s5,13928 <_vfprintf_r+0xc5a>
   1390e:	472e                	lw	a4,200(sp)
   13910:	9656                	add	a2,a2,s5
   13912:	01a42023          	sw	s10,0(s0)
   13916:	0705                	addi	a4,a4,1
   13918:	01542223          	sw	s5,4(s0)
   1391c:	c7b2                	sw	a2,204(sp)
   1391e:	c5ba                	sw	a4,200(sp)
   13920:	459d                	li	a1,7
   13922:	0421                	addi	s0,s0,8
   13924:	1ae5cbe3          	blt	a1,a4,142da <_vfprintf_r+0x160c>
   13928:	fffac713          	not	a4,s5
   1392c:	47f2                	lw	a5,28(sp)
   1392e:	877d                	srai	a4,a4,0x1f
   13930:	00eafab3          	and	s5,s5,a4
   13934:	41578ab3          	sub	s5,a5,s5
   13938:	2b504e63          	bgtz	s5,13bf4 <_vfprintf_r+0xf26>
   1393c:	47f2                	lw	a5,28(sp)
   1393e:	400cf713          	andi	a4,s9,1024
   13942:	00fd0c33          	add	s8,s10,a5
   13946:	000717e3          	bnez	a4,14154 <_vfprintf_r+0x1486>
   1394a:	5aba                	lw	s5,172(sp)
   1394c:	5782                	lw	a5,32(sp)
   1394e:	2efaca63          	blt	s5,a5,13c42 <_vfprintf_r+0xf74>
   13952:	001cf713          	andi	a4,s9,1
   13956:	2e071663          	bnez	a4,13c42 <_vfprintf_r+0xf74>
   1395a:	5702                	lw	a4,32(sp)
   1395c:	00ed07b3          	add	a5,s10,a4
   13960:	41570ab3          	sub	s5,a4,s5
   13964:	41878b33          	sub	s6,a5,s8
   13968:	016ad363          	bge	s5,s6,1396e <_vfprintf_r+0xca0>
   1396c:	8b56                	mv	s6,s5
   1396e:	01605f63          	blez	s6,1398c <_vfprintf_r+0xcbe>
   13972:	47ae                	lw	a5,200(sp)
   13974:	965a                	add	a2,a2,s6
   13976:	01842023          	sw	s8,0(s0)
   1397a:	0785                	addi	a5,a5,1
   1397c:	01642223          	sw	s6,4(s0)
   13980:	c7b2                	sw	a2,204(sp)
   13982:	c5be                	sw	a5,200(sp)
   13984:	471d                	li	a4,7
   13986:	0421                	addi	s0,s0,8
   13988:	58f748e3          	blt	a4,a5,14718 <_vfprintf_r+0x1a4a>
   1398c:	fffb4793          	not	a5,s6
   13990:	87fd                	srai	a5,a5,0x1f
   13992:	00fb7b33          	and	s6,s6,a5
   13996:	416a8ab3          	sub	s5,s5,s6
   1399a:	d5505c63          	blez	s5,12ef2 <_vfprintf_r+0x224>
   1399e:	0001e837          	lui	a6,0x1e
   139a2:	bf880813          	addi	a6,a6,-1032 # 1dbf8 <zeroes.0>
   139a6:	4741                	li	a4,16
   139a8:	47ae                	lw	a5,200(sp)
   139aa:	4b41                	li	s6,16
   139ac:	4c1d                	li	s8,7
   139ae:	8d42                	mv	s10,a6
   139b0:	01574663          	blt	a4,s5,139bc <_vfprintf_r+0xcee>
   139b4:	a3f9                	j	13f82 <_vfprintf_r+0x12b4>
   139b6:	1ac1                	addi	s5,s5,-16
   139b8:	5d5b5463          	bge	s6,s5,13f80 <_vfprintf_r+0x12b2>
   139bc:	0641                	addi	a2,a2,16
   139be:	0785                	addi	a5,a5,1
   139c0:	01a42023          	sw	s10,0(s0)
   139c4:	01642223          	sw	s6,4(s0)
   139c8:	c7b2                	sw	a2,204(sp)
   139ca:	c5be                	sw	a5,200(sp)
   139cc:	0421                	addi	s0,s0,8
   139ce:	fefc54e3          	bge	s8,a5,139b6 <_vfprintf_r+0xce8>
   139d2:	4522                	lw	a0,8(sp)
   139d4:	01d0                	addi	a2,sp,196
   139d6:	85a6                	mv	a1,s1
   139d8:	00002097          	auipc	ra,0x2
   139dc:	e22080e7          	jalr	-478(ra) # 157fa <__sprint_r>
   139e0:	da0519e3          	bnez	a0,13792 <_vfprintf_r+0xac4>
   139e4:	463e                	lw	a2,204(sp)
   139e6:	47ae                	lw	a5,200(sp)
   139e8:	844e                	mv	s0,s3
   139ea:	b7f1                	j	139b6 <_vfprintf_r+0xce8>
   139ec:	001cf593          	andi	a1,s9,1
   139f0:	fe059f63          	bnez	a1,131ee <_vfprintf_r+0x520>
   139f4:	c058                	sw	a4,4(s0)
   139f6:	c7e2                	sw	s8,204(sp)
   139f8:	c5d6                	sw	s5,200(sp)
   139fa:	479d                	li	a5,7
   139fc:	8757d3e3          	bge	a5,s5,13262 <_vfprintf_r+0x594>
   13a00:	4522                	lw	a0,8(sp)
   13a02:	01d0                	addi	a2,sp,196
   13a04:	85a6                	mv	a1,s1
   13a06:	00002097          	auipc	ra,0x2
   13a0a:	df4080e7          	jalr	-524(ra) # 157fa <__sprint_r>
   13a0e:	d80512e3          	bnez	a0,13792 <_vfprintf_r+0xac4>
   13a12:	4c3e                	lw	s8,204(sp)
   13a14:	4aae                	lw	s5,200(sp)
   13a16:	8b4e                	mv	s6,s3
   13a18:	b0a9                	j	13262 <_vfprintf_r+0x594>
   13a1a:	5702                	lw	a4,32(sp)
   13a1c:	4785                	li	a5,1
   13a1e:	84e7d2e3          	bge	a5,a4,13262 <_vfprintf_r+0x594>
   13a22:	0001e837          	lui	a6,0x1e
   13a26:	47c5                	li	a5,17
   13a28:	bf880813          	addi	a6,a6,-1032 # 1dbf8 <zeroes.0>
   13a2c:	64e7d663          	bge	a5,a4,14078 <_vfprintf_r+0x13aa>
   13a30:	ce4a                	sw	s2,28(sp)
   13a32:	47c1                	li	a5,16
   13a34:	4d1d                	li	s10,7
   13a36:	8942                	mv	s2,a6
   13a38:	a021                	j	13a40 <_vfprintf_r+0xd72>
   13a3a:	1441                	addi	s0,s0,-16
   13a3c:	6287dc63          	bge	a5,s0,14074 <_vfprintf_r+0x13a6>
   13a40:	0c41                	addi	s8,s8,16
   13a42:	0a85                	addi	s5,s5,1
   13a44:	012b2023          	sw	s2,0(s6)
   13a48:	00fb2223          	sw	a5,4(s6)
   13a4c:	c7e2                	sw	s8,204(sp)
   13a4e:	c5d6                	sw	s5,200(sp)
   13a50:	0b21                	addi	s6,s6,8
   13a52:	ff5d54e3          	bge	s10,s5,13a3a <_vfprintf_r+0xd6c>
   13a56:	4522                	lw	a0,8(sp)
   13a58:	01d0                	addi	a2,sp,196
   13a5a:	85a6                	mv	a1,s1
   13a5c:	00002097          	auipc	ra,0x2
   13a60:	d9e080e7          	jalr	-610(ra) # 157fa <__sprint_r>
   13a64:	d20517e3          	bnez	a0,13792 <_vfprintf_r+0xac4>
   13a68:	4c3e                	lw	s8,204(sp)
   13a6a:	4aae                	lw	s5,200(sp)
   13a6c:	8b4e                	mv	s6,s3
   13a6e:	47c1                	li	a5,16
   13a70:	b7e9                	j	13a3a <_vfprintf_r+0xd6c>
   13a72:	4752                	lw	a4,20(sp)
   13a74:	010ef793          	andi	a5,t4,16
   13a78:	00072b03          	lw	s6,0(a4)
   13a7c:	0711                	addi	a4,a4,4
   13a7e:	ca3a                	sw	a4,20(sp)
   13a80:	ef9d                	bnez	a5,13abe <_vfprintf_r+0xdf0>
   13a82:	040ef793          	andi	a5,t4,64
   13a86:	c79d                	beqz	a5,13ab4 <_vfprintf_r+0xde6>
   13a88:	0b42                	slli	s6,s6,0x10
   13a8a:	010b5b13          	srli	s6,s6,0x10
   13a8e:	4d81                	li	s11,0
   13a90:	4785                	li	a5,1
   13a92:	dfaff06f          	j	1308c <_vfprintf_r+0x3be>
   13a96:	4b01                	li	s6,0
   13a98:	19010d13          	addi	s10,sp,400
   13a9c:	daaff06f          	j	13046 <_vfprintf_r+0x378>
   13aa0:	001cf793          	andi	a5,s9,1
   13aa4:	c4078763          	beqz	a5,12ef2 <_vfprintf_r+0x224>
   13aa8:	bcf1                	j	13584 <_vfprintf_r+0x8b6>
   13aaa:	00094883          	lbu	a7,0(s2)
   13aae:	ca3e                	sw	a5,20(sp)
   13ab0:	b5aff06f          	j	12e0a <_vfprintf_r+0x13c>
   13ab4:	200ef793          	andi	a5,t4,512
   13ab8:	c399                	beqz	a5,13abe <_vfprintf_r+0xdf0>
   13aba:	0ffb7b13          	zext.b	s6,s6
   13abe:	4d81                	li	s11,0
   13ac0:	4785                	li	a5,1
   13ac2:	dcaff06f          	j	1308c <_vfprintf_r+0x3be>
   13ac6:	200cf793          	andi	a5,s9,512
   13aca:	040796e3          	bnez	a5,14316 <_vfprintf_r+0x1648>
   13ace:	4d81                	li	s11,0
   13ad0:	db6ff06f          	j	13086 <_vfprintf_r+0x3b8>
   13ad4:	200cf793          	andi	a5,s9,512
   13ad8:	020797e3          	bnez	a5,14306 <_vfprintf_r+0x1638>
   13adc:	41fb5d93          	srai	s11,s6,0x1f
   13ae0:	87ee                	mv	a5,s11
   13ae2:	d42ff06f          	j	13024 <_vfprintf_r+0x356>
   13ae6:	57f2                	lw	a5,60(sp)
   13ae8:	00094883          	lbu	a7,0(s2)
   13aec:	b0078f63          	beqz	a5,12e0a <_vfprintf_r+0x13c>
   13af0:	0007c783          	lbu	a5,0(a5)
   13af4:	b0078b63          	beqz	a5,12e0a <_vfprintf_r+0x13c>
   13af8:	400cec93          	ori	s9,s9,1024
   13afc:	b0eff06f          	j	12e0a <_vfprintf_r+0x13c>
   13b00:	010cf793          	andi	a5,s9,16
   13b04:	4e079a63          	bnez	a5,13ff8 <_vfprintf_r+0x132a>
   13b08:	040cf793          	andi	a5,s9,64
   13b0c:	7e079663          	bnez	a5,142f8 <_vfprintf_r+0x162a>
   13b10:	200cfe13          	andi	t3,s9,512
   13b14:	4e0e0263          	beqz	t3,13ff8 <_vfprintf_r+0x132a>
   13b18:	47d2                	lw	a5,20(sp)
   13b1a:	4732                	lw	a4,12(sp)
   13b1c:	439c                	lw	a5,0(a5)
   13b1e:	00e78023          	sb	a4,0(a5)
   13b22:	bae1                	j	134fa <_vfprintf_r+0x82c>
   13b24:	47d2                	lw	a5,20(sp)
   13b26:	4398                	lw	a4,0(a5)
   13b28:	0791                	addi	a5,a5,4
   13b2a:	ca3e                	sw	a5,20(sp)
   13b2c:	430c                	lw	a1,0(a4)
   13b2e:	4350                	lw	a2,4(a4)
   13b30:	4714                	lw	a3,8(a4)
   13b32:	4758                	lw	a4,12(a4)
   13b34:	deaff06f          	j	1311e <_vfprintf_r+0x450>
   13b38:	8aba                	mv	s5,a4
   13b3a:	dd504ae3          	bgtz	s5,1390e <_vfprintf_r+0xc40>
   13b3e:	b3ed                	j	13928 <_vfprintf_r+0xc5a>
   13b40:	5afd                	li	s5,-1
   13b42:	8936                	mv	s2,a3
   13b44:	ac8ff06f          	j	12e0c <_vfprintf_r+0x13e>
   13b48:	0001d7b7          	lui	a5,0x1d
   13b4c:	43078793          	addi	a5,a5,1072 # 1d430 <__extenddftf2+0x14cc>
   13b50:	da3e                	sw	a5,52(sp)
   13b52:	020cf793          	andi	a5,s9,32
   13b56:	26078f63          	beqz	a5,13dd4 <_vfprintf_r+0x1106>
   13b5a:	47d2                	lw	a5,20(sp)
   13b5c:	00778c13          	addi	s8,a5,7
   13b60:	ff8c7c13          	andi	s8,s8,-8
   13b64:	000c2b03          	lw	s6,0(s8)
   13b68:	004c2d83          	lw	s11,4(s8)
   13b6c:	008c0793          	addi	a5,s8,8
   13b70:	ca3e                	sw	a5,20(sp)
   13b72:	001cf793          	andi	a5,s9,1
   13b76:	cf81                	beqz	a5,13b8e <_vfprintf_r+0xec0>
   13b78:	01bb67b3          	or	a5,s6,s11
   13b7c:	cb89                	beqz	a5,13b8e <_vfprintf_r+0xec0>
   13b7e:	03000793          	li	a5,48
   13b82:	0af10423          	sb	a5,168(sp)
   13b86:	0b1104a3          	sb	a7,169(sp)
   13b8a:	002cec93          	ori	s9,s9,2
   13b8e:	bffcfe93          	andi	t4,s9,-1025
   13b92:	4789                	li	a5,2
   13b94:	cf8ff06f          	j	1308c <_vfprintf_r+0x3be>
   13b98:	8ee6                	mv	t4,s9
   13b9a:	b0fd                	j	13488 <_vfprintf_r+0x7ba>
   13b9c:	0001d7b7          	lui	a5,0x1d
   13ba0:	41c78793          	addi	a5,a5,1052 # 1d41c <__extenddftf2+0x14b8>
   13ba4:	da3e                	sw	a5,52(sp)
   13ba6:	b775                	j	13b52 <_vfprintf_r+0xe84>
   13ba8:	00194883          	lbu	a7,1(s2)
   13bac:	200cec93          	ori	s9,s9,512
   13bb0:	0905                	addi	s2,s2,1
   13bb2:	a58ff06f          	j	12e0a <_vfprintf_r+0x13c>
   13bb6:	00194883          	lbu	a7,1(s2)
   13bba:	020cec93          	ori	s9,s9,32
   13bbe:	0905                	addi	s2,s2,1
   13bc0:	a4aff06f          	j	12e0a <_vfprintf_r+0x13c>
   13bc4:	4522                	lw	a0,8(sp)
   13bc6:	01d0                	addi	a2,sp,196
   13bc8:	85a6                	mv	a1,s1
   13bca:	00002097          	auipc	ra,0x2
   13bce:	c30080e7          	jalr	-976(ra) # 157fa <__sprint_r>
   13bd2:	bc0510e3          	bnez	a0,13792 <_vfprintf_r+0xac4>
   13bd6:	463e                	lw	a2,204(sp)
   13bd8:	844e                	mv	s0,s3
   13bda:	b2e1                	j	135a2 <_vfprintf_r+0x8d4>
   13bdc:	4799                	li	a5,6
   13bde:	8b56                	mv	s6,s5
   13be0:	7157ea63          	bltu	a5,s5,142f4 <_vfprintf_r+0x1626>
   13be4:	0001d7b7          	lui	a5,0x1d
   13be8:	8dda                	mv	s11,s6
   13bea:	ca62                	sw	s8,20(sp)
   13bec:	44478d13          	addi	s10,a5,1092 # 1d444 <__extenddftf2+0x14e0>
   13bf0:	a6aff06f          	j	12e5a <_vfprintf_r+0x18c>
   13bf4:	0001e837          	lui	a6,0x1e
   13bf8:	45c1                	li	a1,16
   13bfa:	472e                	lw	a4,200(sp)
   13bfc:	bf880813          	addi	a6,a6,-1032 # 1dbf8 <zeroes.0>
   13c00:	4b55d263          	bge	a1,s5,140a4 <_vfprintf_r+0x13d6>
   13c04:	87a2                	mv	a5,s0
   13c06:	4c41                	li	s8,16
   13c08:	4b1d                	li	s6,7
   13c0a:	8442                	mv	s0,a6
   13c0c:	a021                	j	13c14 <_vfprintf_r+0xf46>
   13c0e:	1ac1                	addi	s5,s5,-16
   13c10:	495c5863          	bge	s8,s5,140a0 <_vfprintf_r+0x13d2>
   13c14:	0641                	addi	a2,a2,16
   13c16:	0705                	addi	a4,a4,1
   13c18:	c380                	sw	s0,0(a5)
   13c1a:	0187a223          	sw	s8,4(a5)
   13c1e:	c7b2                	sw	a2,204(sp)
   13c20:	c5ba                	sw	a4,200(sp)
   13c22:	07a1                	addi	a5,a5,8
   13c24:	feeb55e3          	bge	s6,a4,13c0e <_vfprintf_r+0xf40>
   13c28:	4522                	lw	a0,8(sp)
   13c2a:	01d0                	addi	a2,sp,196
   13c2c:	85a6                	mv	a1,s1
   13c2e:	00002097          	auipc	ra,0x2
   13c32:	bcc080e7          	jalr	-1076(ra) # 157fa <__sprint_r>
   13c36:	b4051ee3          	bnez	a0,13792 <_vfprintf_r+0xac4>
   13c3a:	463e                	lw	a2,204(sp)
   13c3c:	472e                	lw	a4,200(sp)
   13c3e:	87ce                	mv	a5,s3
   13c40:	b7f9                	j	13c0e <_vfprintf_r+0xf40>
   13c42:	5742                	lw	a4,48(sp)
   13c44:	57b2                	lw	a5,44(sp)
   13c46:	459d                	li	a1,7
   13c48:	c018                	sw	a4,0(s0)
   13c4a:	472e                	lw	a4,200(sp)
   13c4c:	963e                	add	a2,a2,a5
   13c4e:	c05c                	sw	a5,4(s0)
   13c50:	0705                	addi	a4,a4,1
   13c52:	c7b2                	sw	a2,204(sp)
   13c54:	c5ba                	sw	a4,200(sp)
   13c56:	0421                	addi	s0,s0,8
   13c58:	d0e5d1e3          	bge	a1,a4,1395a <_vfprintf_r+0xc8c>
   13c5c:	4522                	lw	a0,8(sp)
   13c5e:	01d0                	addi	a2,sp,196
   13c60:	85a6                	mv	a1,s1
   13c62:	00002097          	auipc	ra,0x2
   13c66:	b98080e7          	jalr	-1128(ra) # 157fa <__sprint_r>
   13c6a:	b20514e3          	bnez	a0,13792 <_vfprintf_r+0xac4>
   13c6e:	5aba                	lw	s5,172(sp)
   13c70:	463e                	lw	a2,204(sp)
   13c72:	844e                	mv	s0,s3
   13c74:	b1dd                	j	1395a <_vfprintf_r+0xc8c>
   13c76:	07800793          	li	a5,120
   13c7a:	03000713          	li	a4,48
   13c7e:	0ae10423          	sb	a4,168(sp)
   13c82:	0af104a3          	sb	a5,169(sp)
   13c86:	06300713          	li	a4,99
   13c8a:	c802                	sw	zero,16(sp)
   13c8c:	002cec93          	ori	s9,s9,2
   13c90:	12c10d13          	addi	s10,sp,300
   13c94:	cf575063          	bge	a4,s5,13174 <_vfprintf_r+0x4a6>
   13c98:	4522                	lw	a0,8(sp)
   13c9a:	001a8593          	addi	a1,s5,1
   13c9e:	c846                	sw	a7,16(sp)
   13ca0:	00005097          	auipc	ra,0x5
   13ca4:	a6a080e7          	jalr	-1430(ra) # 1870a <_malloc_r>
   13ca8:	48c2                	lw	a7,16(sp)
   13caa:	8d2a                	mv	s10,a0
   13cac:	500507e3          	beqz	a0,149ba <_vfprintf_r+0x1cec>
   13cb0:	c82a                	sw	a0,16(sp)
   13cb2:	cc2ff06f          	j	13174 <_vfprintf_r+0x4a6>
   13cb6:	4522                	lw	a0,8(sp)
   13cb8:	09010b13          	addi	s6,sp,144
   13cbc:	1178                	addi	a4,sp,172
   13cbe:	0bc10813          	addi	a6,sp,188
   13cc2:	191c                	addi	a5,sp,176
   13cc4:	86d6                	mv	a3,s5
   13cc6:	4609                	li	a2,2
   13cc8:	85da                	mv	a1,s6
   13cca:	d446                	sw	a7,40(sp)
   13ccc:	c97e                	sw	t6,144(sp)
   13cce:	d27e                	sw	t6,36(sp)
   13cd0:	cb7a                	sw	t5,148(sp)
   13cd2:	d07a                	sw	t5,32(sp)
   13cd4:	cd76                	sw	t4,152(sp)
   13cd6:	ce76                	sw	t4,28(sp)
   13cd8:	cf62                	sw	s8,156(sp)
   13cda:	00003097          	auipc	ra,0x3
   13cde:	02c080e7          	jalr	44(ra) # 16d06 <_ldtoa_r>
   13ce2:	001cf713          	andi	a4,s9,1
   13ce6:	4ef2                	lw	t4,28(sp)
   13ce8:	5f02                	lw	t5,32(sp)
   13cea:	5f92                	lw	t6,36(sp)
   13cec:	58a2                	lw	a7,40(sp)
   13cee:	8d2a                	mv	s10,a0
   13cf0:	66071a63          	bnez	a4,14364 <_vfprintf_r+0x1696>
   13cf4:	57ba                	lw	a5,172(sp)
   13cf6:	ce3e                	sw	a5,28(sp)
   13cf8:	57fa                	lw	a5,188(sp)
   13cfa:	8f89                	sub	a5,a5,a0
   13cfc:	d03e                	sw	a5,32(sp)
   13cfe:	47f2                	lw	a5,28(sp)
   13d00:	5775                	li	a4,-3
   13d02:	00e7c463          	blt	a5,a4,13d0a <_vfprintf_r+0x103c>
   13d06:	16fadde3          	bge	s5,a5,14680 <_vfprintf_r+0x19b2>
   13d0a:	47f2                	lw	a5,28(sp)
   13d0c:	18f9                	addi	a7,a7,-2
   13d0e:	fff78713          	addi	a4,a5,-1
   13d12:	d73a                	sw	a4,172(sp)
   13d14:	0ff8f693          	zext.b	a3,a7
   13d18:	4601                	li	a2,0
   13d1a:	0ad10a23          	sb	a3,180(sp)
   13d1e:	02b00693          	li	a3,43
   13d22:	00075763          	bgez	a4,13d30 <_vfprintf_r+0x1062>
   13d26:	47f2                	lw	a5,28(sp)
   13d28:	4705                	li	a4,1
   13d2a:	02d00693          	li	a3,45
   13d2e:	8f1d                	sub	a4,a4,a5
   13d30:	0ad10aa3          	sb	a3,181(sp)
   13d34:	46a5                	li	a3,9
   13d36:	34e6d3e3          	bge	a3,a4,1487c <_vfprintf_r+0x1bae>
   13d3a:	0c310813          	addi	a6,sp,195
   13d3e:	85c2                	mv	a1,a6
   13d40:	4529                	li	a0,10
   13d42:	06300f13          	li	t5,99
   13d46:	02a767b3          	rem	a5,a4,a0
   13d4a:	862e                	mv	a2,a1
   13d4c:	86ba                	mv	a3,a4
   13d4e:	15fd                	addi	a1,a1,-1
   13d50:	03078793          	addi	a5,a5,48
   13d54:	fef60fa3          	sb	a5,-1(a2)
   13d58:	02a74733          	div	a4,a4,a0
   13d5c:	fedf45e3          	blt	t5,a3,13d46 <_vfprintf_r+0x1078>
   13d60:	03070713          	addi	a4,a4,48
   13d64:	ffe60693          	addi	a3,a2,-2
   13d68:	fee58fa3          	sb	a4,-1(a1)
   13d6c:	4106ffe3          	bgeu	a3,a6,1498a <_vfprintf_r+0x1cbc>
   13d70:	0b610713          	addi	a4,sp,182
   13d74:	0006c783          	lbu	a5,0(a3)
   13d78:	0685                	addi	a3,a3,1
   13d7a:	0705                	addi	a4,a4,1
   13d7c:	fef70fa3          	sb	a5,-1(a4)
   13d80:	ff069ae3          	bne	a3,a6,13d74 <_vfprintf_r+0x10a6>
   13d84:	0b1c                	addi	a5,sp,400
   13d86:	40c78733          	sub	a4,a5,a2
   13d8a:	f3770793          	addi	a5,a4,-201
   13d8e:	c0be                	sw	a5,64(sp)
   13d90:	5782                	lw	a5,32(sp)
   13d92:	4686                	lw	a3,64(sp)
   13d94:	4705                	li	a4,1
   13d96:	00d78b33          	add	s6,a5,a3
   13d9a:	30f75ae3          	bge	a4,a5,148ae <_vfprintf_r+0x1be0>
   13d9e:	57b2                	lw	a5,44(sp)
   13da0:	9b3e                	add	s6,s6,a5
   13da2:	fffb4693          	not	a3,s6
   13da6:	bffcfe13          	andi	t3,s9,-1025
   13daa:	86fd                	srai	a3,a3,0x1f
   13dac:	100e6793          	ori	a5,t3,256
   13db0:	c6be                	sw	a5,76(sp)
   13db2:	00db7db3          	and	s11,s6,a3
   13db6:	d402                	sw	zero,40(sp)
   13db8:	d202                	sw	zero,36(sp)
   13dba:	ce02                	sw	zero,28(sp)
   13dbc:	57e2                	lw	a5,56(sp)
   13dbe:	0a0788e3          	beqz	a5,1466e <_vfprintf_r+0x19a0>
   13dc2:	02d00713          	li	a4,45
   13dc6:	4cb6                	lw	s9,76(sp)
   13dc8:	0ae103a3          	sb	a4,167(sp)
   13dcc:	4a81                	li	s5,0
   13dce:	0d85                	addi	s11,s11,1
   13dd0:	894ff06f          	j	12e64 <_vfprintf_r+0x196>
   13dd4:	4752                	lw	a4,20(sp)
   13dd6:	010cf793          	andi	a5,s9,16
   13dda:	00072b03          	lw	s6,0(a4)
   13dde:	0711                	addi	a4,a4,4
   13de0:	ca3a                	sw	a4,20(sp)
   13de2:	eba9                	bnez	a5,13e34 <_vfprintf_r+0x1166>
   13de4:	040cf793          	andi	a5,s9,64
   13de8:	c3b1                	beqz	a5,13e2c <_vfprintf_r+0x115e>
   13dea:	0b42                	slli	s6,s6,0x10
   13dec:	010b5b13          	srli	s6,s6,0x10
   13df0:	4d81                	li	s11,0
   13df2:	b341                	j	13b72 <_vfprintf_r+0xea4>
   13df4:	4522                	lw	a0,8(sp)
   13df6:	01d0                	addi	a2,sp,196
   13df8:	85a6                	mv	a1,s1
   13dfa:	00002097          	auipc	ra,0x2
   13dfe:	a00080e7          	jalr	-1536(ra) # 157fa <__sprint_r>
   13e02:	980518e3          	bnez	a0,13792 <_vfprintf_r+0xac4>
   13e06:	4c3e                	lw	s8,204(sp)
   13e08:	4aae                	lw	s5,200(sp)
   13e0a:	8b4e                	mv	s6,s3
   13e0c:	bf0ff06f          	j	131fc <_vfprintf_r+0x52e>
   13e10:	4522                	lw	a0,8(sp)
   13e12:	01d0                	addi	a2,sp,196
   13e14:	85a6                	mv	a1,s1
   13e16:	00002097          	auipc	ra,0x2
   13e1a:	9e4080e7          	jalr	-1564(ra) # 157fa <__sprint_r>
   13e1e:	96051ae3          	bnez	a0,13792 <_vfprintf_r+0xac4>
   13e22:	4c3e                	lw	s8,204(sp)
   13e24:	4aae                	lw	s5,200(sp)
   13e26:	8b4e                	mv	s6,s3
   13e28:	bf0ff06f          	j	13218 <_vfprintf_r+0x54a>
   13e2c:	200cf793          	andi	a5,s9,512
   13e30:	4e079863          	bnez	a5,14320 <_vfprintf_r+0x1652>
   13e34:	4d81                	li	s11,0
   13e36:	bb35                	j	13b72 <_vfprintf_r+0xea4>
   13e38:	ccccd837          	lui	a6,0xccccd
   13e3c:	ccccdcb7          	lui	s9,0xccccd
   13e40:	5772                	lw	a4,60(sp)
   13e42:	400eff13          	andi	t5,t4,1024
   13e46:	4601                	li	a2,0
   13e48:	0b0c                	addi	a1,sp,400
   13e4a:	4e15                	li	t3,5
   13e4c:	ccd80813          	addi	a6,a6,-819 # cccccccd <__BSS_END__+0xcccae271>
   13e50:	cccc8c93          	addi	s9,s9,-820 # cccccccc <__BSS_END__+0xcccae270>
   13e54:	0ff00c13          	li	s8,255
   13e58:	a081                	j	13e98 <_vfprintf_r+0x11ca>
   13e5a:	016d37b3          	sltu	a5,s10,s6
   13e5e:	97ea                	add	a5,a5,s10
   13e60:	03c7f7b3          	remu	a5,a5,t3
   13e64:	40fb07b3          	sub	a5,s6,a5
   13e68:	00fb35b3          	sltu	a1,s6,a5
   13e6c:	40bd85b3          	sub	a1,s11,a1
   13e70:	03978333          	mul	t1,a5,s9
   13e74:	030585b3          	mul	a1,a1,a6
   13e78:	0307b533          	mulhu	a0,a5,a6
   13e7c:	959a                	add	a1,a1,t1
   13e7e:	030787b3          	mul	a5,a5,a6
   13e82:	95aa                	add	a1,a1,a0
   13e84:	01f59513          	slli	a0,a1,0x1f
   13e88:	8185                	srli	a1,a1,0x1
   13e8a:	8385                	srli	a5,a5,0x1
   13e8c:	8fc9                	or	a5,a5,a0
   13e8e:	040d88e3          	beqz	s11,146de <_vfprintf_r+0x1a10>
   13e92:	8dae                	mv	s11,a1
   13e94:	8b3e                	mv	s6,a5
   13e96:	85b6                	mv	a1,a3
   13e98:	01bb0d33          	add	s10,s6,s11
   13e9c:	016d37b3          	sltu	a5,s10,s6
   13ea0:	97ea                	add	a5,a5,s10
   13ea2:	03c7f7b3          	remu	a5,a5,t3
   13ea6:	fff58693          	addi	a3,a1,-1
   13eaa:	0605                	addi	a2,a2,1
   13eac:	40fb07b3          	sub	a5,s6,a5
   13eb0:	00fb3533          	sltu	a0,s6,a5
   13eb4:	40ad8533          	sub	a0,s11,a0
   13eb8:	0307b333          	mulhu	t1,a5,a6
   13ebc:	03050533          	mul	a0,a0,a6
   13ec0:	030787b3          	mul	a5,a5,a6
   13ec4:	951a                	add	a0,a0,t1
   13ec6:	057e                	slli	a0,a0,0x1f
   13ec8:	8385                	srli	a5,a5,0x1
   13eca:	8fc9                	or	a5,a5,a0
   13ecc:	00279513          	slli	a0,a5,0x2
   13ed0:	97aa                	add	a5,a5,a0
   13ed2:	0786                	slli	a5,a5,0x1
   13ed4:	40fb07b3          	sub	a5,s6,a5
   13ed8:	03078793          	addi	a5,a5,48
   13edc:	fef58fa3          	sb	a5,-1(a1)
   13ee0:	f60f0de3          	beqz	t5,13e5a <_vfprintf_r+0x118c>
   13ee4:	00074783          	lbu	a5,0(a4)
   13ee8:	f6f619e3          	bne	a2,a5,13e5a <_vfprintf_r+0x118c>
   13eec:	f78607e3          	beq	a2,s8,13e5a <_vfprintf_r+0x118c>
   13ef0:	1e0d9263          	bnez	s11,140d4 <_vfprintf_r+0x1406>
   13ef4:	47a5                	li	a5,9
   13ef6:	1d67ef63          	bltu	a5,s6,140d4 <_vfprintf_r+0x1406>
   13efa:	8d36                	mv	s10,a3
   13efc:	0b1c                	addi	a5,sp,400
   13efe:	d032                	sw	a2,32(sp)
   13f00:	de3a                	sw	a4,60(sp)
   13f02:	41a78b33          	sub	s6,a5,s10
   13f06:	8cf6                	mv	s9,t4
   13f08:	93eff06f          	j	13046 <_vfprintf_r+0x378>
   13f0c:	472e                	lw	a4,200(sp)
   13f0e:	0001d5b7          	lui	a1,0x1d
   13f12:	44c58593          	addi	a1,a1,1100 # 1d44c <__extenddftf2+0x14e8>
   13f16:	c00c                	sw	a1,0(s0)
   13f18:	0605                	addi	a2,a2,1
   13f1a:	4585                	li	a1,1
   13f1c:	0705                	addi	a4,a4,1
   13f1e:	c04c                	sw	a1,4(s0)
   13f20:	c7b2                	sw	a2,204(sp)
   13f22:	c5ba                	sw	a4,200(sp)
   13f24:	459d                	li	a1,7
   13f26:	0421                	addi	s0,s0,8
   13f28:	38e5c763          	blt	a1,a4,142b6 <_vfprintf_r+0x15e8>
   13f2c:	ed61                	bnez	a0,14004 <_vfprintf_r+0x1336>
   13f2e:	5782                	lw	a5,32(sp)
   13f30:	001cf713          	andi	a4,s9,1
   13f34:	8f5d                	or	a4,a4,a5
   13f36:	e319                	bnez	a4,13f3c <_vfprintf_r+0x126e>
   13f38:	fbbfe06f          	j	12ef2 <_vfprintf_r+0x224>
   13f3c:	5742                	lw	a4,48(sp)
   13f3e:	57b2                	lw	a5,44(sp)
   13f40:	459d                	li	a1,7
   13f42:	c018                	sw	a4,0(s0)
   13f44:	472e                	lw	a4,200(sp)
   13f46:	963e                	add	a2,a2,a5
   13f48:	c05c                	sw	a5,4(s0)
   13f4a:	0705                	addi	a4,a4,1
   13f4c:	c7b2                	sw	a2,204(sp)
   13f4e:	c5ba                	sw	a4,200(sp)
   13f50:	3ee5cc63          	blt	a1,a4,14348 <_vfprintf_r+0x167a>
   13f54:	0421                	addi	s0,s0,8
   13f56:	a0f1                	j	14022 <_vfprintf_r+0x1354>
   13f58:	4522                	lw	a0,8(sp)
   13f5a:	00002097          	auipc	ra,0x2
   13f5e:	c64080e7          	jalr	-924(ra) # 15bbe <__sinit>
   13f62:	db3fe06f          	j	12d14 <_vfprintf_r+0x46>
   13f66:	4522                	lw	a0,8(sp)
   13f68:	01d0                	addi	a2,sp,196
   13f6a:	85a6                	mv	a1,s1
   13f6c:	00002097          	auipc	ra,0x2
   13f70:	88e080e7          	jalr	-1906(ra) # 157fa <__sprint_r>
   13f74:	80051fe3          	bnez	a0,13792 <_vfprintf_r+0xac4>
   13f78:	463e                	lw	a2,204(sp)
   13f7a:	844e                	mv	s0,s3
   13f7c:	e00ff06f          	j	1357c <_vfprintf_r+0x8ae>
   13f80:	886a                	mv	a6,s10
   13f82:	01042023          	sw	a6,0(s0)
   13f86:	01542223          	sw	s5,4(s0)
   13f8a:	9656                	add	a2,a2,s5
   13f8c:	0785                	addi	a5,a5,1
   13f8e:	c7b2                	sw	a2,204(sp)
   13f90:	c5be                	sw	a5,200(sp)
   13f92:	471d                	li	a4,7
   13f94:	00f74463          	blt	a4,a5,13f9c <_vfprintf_r+0x12ce>
   13f98:	f59fe06f          	j	12ef0 <_vfprintf_r+0x222>
   13f9c:	ae8ff06f          	j	13284 <_vfprintf_r+0x5b6>
   13fa0:	47ce                	lw	a5,208(sp)
   13fa2:	010c                	addi	a1,sp,128
   13fa4:	0908                	addi	a0,sp,144
   13fa6:	c93e                	sw	a5,144(sp)
   13fa8:	47de                	lw	a5,212(sp)
   13faa:	c102                	sw	zero,128(sp)
   13fac:	c302                	sw	zero,132(sp)
   13fae:	cb3e                	sw	a5,148(sp)
   13fb0:	47ee                	lw	a5,216(sp)
   13fb2:	c502                	sw	zero,136(sp)
   13fb4:	c702                	sw	zero,140(sp)
   13fb6:	cd3e                	sw	a5,152(sp)
   13fb8:	47fe                	lw	a5,220(sp)
   13fba:	cf3e                	sw	a5,156(sp)
   13fbc:	00006097          	auipc	ra,0x6
   13fc0:	34e080e7          	jalr	846(ra) # 1a30a <__letf2>
   13fc4:	48c2                	lw	a7,16(sp)
   13fc6:	72054463          	bltz	a0,146ee <_vfprintf_r+0x1a20>
   13fca:	0a714703          	lbu	a4,167(sp)
   13fce:	04700793          	li	a5,71
   13fd2:	2f17df63          	bge	a5,a7,142d0 <_vfprintf_r+0x1602>
   13fd6:	0001d7b7          	lui	a5,0x1d
   13fda:	41078d13          	addi	s10,a5,1040 # 1d410 <__extenddftf2+0x14ac>
   13fde:	c802                	sw	zero,16(sp)
   13fe0:	d402                	sw	zero,40(sp)
   13fe2:	d202                	sw	zero,36(sp)
   13fe4:	ce02                	sw	zero,28(sp)
   13fe6:	f7fcfc93          	andi	s9,s9,-129
   13fea:	4d8d                	li	s11,3
   13fec:	4b0d                	li	s6,3
   13fee:	4a81                	li	s5,0
   13ff0:	86071763          	bnez	a4,1305e <_vfprintf_r+0x390>
   13ff4:	e71fe06f          	j	12e64 <_vfprintf_r+0x196>
   13ff8:	47d2                	lw	a5,20(sp)
   13ffa:	4732                	lw	a4,12(sp)
   13ffc:	439c                	lw	a5,0(a5)
   13ffe:	c398                	sw	a4,0(a5)
   14000:	cfaff06f          	j	134fa <_vfprintf_r+0x82c>
   14004:	5742                	lw	a4,48(sp)
   14006:	57b2                	lw	a5,44(sp)
   14008:	459d                	li	a1,7
   1400a:	c018                	sw	a4,0(s0)
   1400c:	472e                	lw	a4,200(sp)
   1400e:	963e                	add	a2,a2,a5
   14010:	c05c                	sw	a5,4(s0)
   14012:	0705                	addi	a4,a4,1
   14014:	c7b2                	sw	a2,204(sp)
   14016:	c5ba                	sw	a4,200(sp)
   14018:	0421                	addi	s0,s0,8
   1401a:	32e5c763          	blt	a1,a4,14348 <_vfprintf_r+0x167a>
   1401e:	7c054963          	bltz	a0,147f0 <_vfprintf_r+0x1b22>
   14022:	5782                	lw	a5,32(sp)
   14024:	0705                	addi	a4,a4,1
   14026:	01a42023          	sw	s10,0(s0)
   1402a:	963e                	add	a2,a2,a5
   1402c:	c05c                	sw	a5,4(s0)
   1402e:	c7b2                	sw	a2,204(sp)
   14030:	c5ba                	sw	a4,200(sp)
   14032:	479d                	li	a5,7
   14034:	00e7c463          	blt	a5,a4,1403c <_vfprintf_r+0x136e>
   14038:	eb9fe06f          	j	12ef0 <_vfprintf_r+0x222>
   1403c:	a48ff06f          	j	13284 <_vfprintf_r+0x5b6>
   14040:	856a                	mv	a0,s10
   14042:	dc46                	sw	a7,56(sp)
   14044:	00002097          	auipc	ra,0x2
   14048:	6d0080e7          	jalr	1744(ra) # 16714 <strlen>
   1404c:	0a714703          	lbu	a4,167(sp)
   14050:	fff54693          	not	a3,a0
   14054:	86fd                	srai	a3,a3,0x1f
   14056:	ca62                	sw	s8,20(sp)
   14058:	c802                	sw	zero,16(sp)
   1405a:	d402                	sw	zero,40(sp)
   1405c:	d202                	sw	zero,36(sp)
   1405e:	ce02                	sw	zero,28(sp)
   14060:	58e2                	lw	a7,56(sp)
   14062:	8b2a                	mv	s6,a0
   14064:	00d57db3          	and	s11,a0,a3
   14068:	4a81                	li	s5,0
   1406a:	c319                	beqz	a4,14070 <_vfprintf_r+0x13a2>
   1406c:	ff3fe06f          	j	1305e <_vfprintf_r+0x390>
   14070:	df5fe06f          	j	12e64 <_vfprintf_r+0x196>
   14074:	884a                	mv	a6,s2
   14076:	4972                	lw	s2,28(sp)
   14078:	9c22                	add	s8,s8,s0
   1407a:	0a85                	addi	s5,s5,1
   1407c:	010b2023          	sw	a6,0(s6)
   14080:	9d2ff06f          	j	13252 <_vfprintf_r+0x584>
   14084:	47fe                	lw	a5,220(sp)
   14086:	2a07c163          	bltz	a5,14328 <_vfprintf_r+0x165a>
   1408a:	0a714703          	lbu	a4,167(sp)
   1408e:	04700793          	li	a5,71
   14092:	6b17c463          	blt	a5,a7,1473a <_vfprintf_r+0x1a6c>
   14096:	0001d7b7          	lui	a5,0x1d
   1409a:	41478d13          	addi	s10,a5,1044 # 1d414 <__extenddftf2+0x14b0>
   1409e:	b781                	j	13fde <_vfprintf_r+0x1310>
   140a0:	8822                	mv	a6,s0
   140a2:	843e                	mv	s0,a5
   140a4:	9656                	add	a2,a2,s5
   140a6:	0705                	addi	a4,a4,1
   140a8:	01042023          	sw	a6,0(s0)
   140ac:	01542223          	sw	s5,4(s0)
   140b0:	c7b2                	sw	a2,204(sp)
   140b2:	c5ba                	sw	a4,200(sp)
   140b4:	459d                	li	a1,7
   140b6:	0421                	addi	s0,s0,8
   140b8:	88e5d2e3          	bge	a1,a4,1393c <_vfprintf_r+0xc6e>
   140bc:	4522                	lw	a0,8(sp)
   140be:	01d0                	addi	a2,sp,196
   140c0:	85a6                	mv	a1,s1
   140c2:	00001097          	auipc	ra,0x1
   140c6:	738080e7          	jalr	1848(ra) # 157fa <__sprint_r>
   140ca:	ec051463          	bnez	a0,13792 <_vfprintf_r+0xac4>
   140ce:	463e                	lw	a2,204(sp)
   140d0:	844e                	mv	s0,s3
   140d2:	b0ad                	j	1393c <_vfprintf_r+0xc6e>
   140d4:	47a6                	lw	a5,72(sp)
   140d6:	4596                	lw	a1,68(sp)
   140d8:	dc42                	sw	a6,56(sp)
   140da:	8e9d                	sub	a3,a3,a5
   140dc:	863e                	mv	a2,a5
   140de:	8536                	mv	a0,a3
   140e0:	d47a                	sw	t5,40(sp)
   140e2:	d276                	sw	t4,36(sp)
   140e4:	d046                	sw	a7,32(sp)
   140e6:	ce3a                	sw	a4,28(sp)
   140e8:	c836                	sw	a3,16(sp)
   140ea:	00002097          	auipc	ra,0x2
   140ee:	166080e7          	jalr	358(ra) # 16250 <strncpy>
   140f2:	016d37b3          	sltu	a5,s10,s6
   140f6:	4615                	li	a2,5
   140f8:	97ea                	add	a5,a5,s10
   140fa:	02c7f7b3          	remu	a5,a5,a2
   140fe:	4772                	lw	a4,28(sp)
   14100:	ccccd337          	lui	t1,0xccccd
   14104:	ccccd537          	lui	a0,0xccccd
   14108:	00174583          	lbu	a1,1(a4)
   1410c:	ccd30313          	addi	t1,t1,-819 # cccccccd <__BSS_END__+0xcccae271>
   14110:	ccc50513          	addi	a0,a0,-820 # cccccccc <__BSS_END__+0xcccae270>
   14114:	00b035b3          	snez	a1,a1
   14118:	972e                	add	a4,a4,a1
   1411a:	46c2                	lw	a3,16(sp)
   1411c:	5882                	lw	a7,32(sp)
   1411e:	5e92                	lw	t4,36(sp)
   14120:	5f22                	lw	t5,40(sp)
   14122:	5862                	lw	a6,56(sp)
   14124:	4601                	li	a2,0
   14126:	4e15                	li	t3,5
   14128:	40fb07b3          	sub	a5,s6,a5
   1412c:	00fb35b3          	sltu	a1,s6,a5
   14130:	40bd85b3          	sub	a1,s11,a1
   14134:	02a78533          	mul	a0,a5,a0
   14138:	026585b3          	mul	a1,a1,t1
   1413c:	0267bfb3          	mulhu	t6,a5,t1
   14140:	95aa                	add	a1,a1,a0
   14142:	02678533          	mul	a0,a5,t1
   14146:	95fe                	add	a1,a1,t6
   14148:	01f59793          	slli	a5,a1,0x1f
   1414c:	8185                	srli	a1,a1,0x1
   1414e:	8105                	srli	a0,a0,0x1
   14150:	8fc9                	or	a5,a5,a0
   14152:	b381                	j	13e92 <_vfprintf_r+0x11c4>
   14154:	5782                	lw	a5,32(sp)
   14156:	5b12                	lw	s6,36(sp)
   14158:	0001e8b7          	lui	a7,0x1e
   1415c:	97ea                	add	a5,a5,s10
   1415e:	dc4a                	sw	s2,56(sp)
   14160:	c6e6                	sw	s9,76(sp)
   14162:	c8de                	sw	s7,80(sp)
   14164:	d26e                	sw	s11,36(sp)
   14166:	5da2                	lw	s11,40(sp)
   14168:	d46a                	sw	s10,40(sp)
   1416a:	5cf2                	lw	s9,60(sp)
   1416c:	8d62                	mv	s10,s8
   1416e:	4922                	lw	s2,8(sp)
   14170:	4c26                	lw	s8,72(sp)
   14172:	481d                	li	a6,7
   14174:	4741                	li	a4,16
   14176:	bf888a93          	addi	s5,a7,-1032 # 1dbf8 <zeroes.0>
   1417a:	85a2                	mv	a1,s0
   1417c:	8bbe                	mv	s7,a5
   1417e:	07605363          	blez	s6,141e4 <_vfprintf_r+0x1516>
   14182:	0fb05963          	blez	s11,14274 <_vfprintf_r+0x15a6>
   14186:	1dfd                	addi	s11,s11,-1
   14188:	4796                	lw	a5,68(sp)
   1418a:	9662                	add	a2,a2,s8
   1418c:	0185a223          	sw	s8,4(a1)
   14190:	c19c                	sw	a5,0(a1)
   14192:	47ae                	lw	a5,200(sp)
   14194:	c7b2                	sw	a2,204(sp)
   14196:	05a1                	addi	a1,a1,8
   14198:	0785                	addi	a5,a5,1
   1419a:	c5be                	sw	a5,200(sp)
   1419c:	0cf84f63          	blt	a6,a5,1427a <_vfprintf_r+0x15ac>
   141a0:	000cc683          	lbu	a3,0(s9)
   141a4:	41ab8433          	sub	s0,s7,s10
   141a8:	0086d363          	bge	a3,s0,141ae <_vfprintf_r+0x14e0>
   141ac:	8436                	mv	s0,a3
   141ae:	00805f63          	blez	s0,141cc <_vfprintf_r+0x14fe>
   141b2:	46ae                	lw	a3,200(sp)
   141b4:	9622                	add	a2,a2,s0
   141b6:	01a5a023          	sw	s10,0(a1)
   141ba:	0685                	addi	a3,a3,1
   141bc:	c1c0                	sw	s0,4(a1)
   141be:	c7b2                	sw	a2,204(sp)
   141c0:	c5b6                	sw	a3,200(sp)
   141c2:	0cd84a63          	blt	a6,a3,14296 <_vfprintf_r+0x15c8>
   141c6:	000cc683          	lbu	a3,0(s9)
   141ca:	05a1                	addi	a1,a1,8
   141cc:	fff44513          	not	a0,s0
   141d0:	857d                	srai	a0,a0,0x1f
   141d2:	00a477b3          	and	a5,s0,a0
   141d6:	40f68433          	sub	s0,a3,a5
   141da:	02804763          	bgtz	s0,14208 <_vfprintf_r+0x153a>
   141de:	9d36                	add	s10,s10,a3
   141e0:	fb6041e3          	bgtz	s6,14182 <_vfprintf_r+0x14b4>
   141e4:	fbb041e3          	bgtz	s11,14186 <_vfprintf_r+0x14b8>
   141e8:	5782                	lw	a5,32(sp)
   141ea:	8c6a                	mv	s8,s10
   141ec:	5d22                	lw	s10,40(sp)
   141ee:	de66                	sw	s9,60(sp)
   141f0:	5962                	lw	s2,56(sp)
   141f2:	00fd0733          	add	a4,s10,a5
   141f6:	4cb6                	lw	s9,76(sp)
   141f8:	4bc6                	lw	s7,80(sp)
   141fa:	5d92                	lw	s11,36(sp)
   141fc:	842e                	mv	s0,a1
   141fe:	f5877663          	bgeu	a4,s8,1394a <_vfprintf_r+0xc7c>
   14202:	8c3a                	mv	s8,a4
   14204:	f46ff06f          	j	1394a <_vfprintf_r+0xc7c>
   14208:	0001ef37          	lui	t5,0x1e
   1420c:	46ae                	lw	a3,200(sp)
   1420e:	bf8f0f13          	addi	t5,t5,-1032 # 1dbf8 <zeroes.0>
   14212:	04875363          	bge	a4,s0,14258 <_vfprintf_r+0x158a>
   14216:	ce56                	sw	s5,28(sp)
   14218:	a021                	j	14220 <_vfprintf_r+0x1552>
   1421a:	1441                	addi	s0,s0,-16
   1421c:	02875d63          	bge	a4,s0,14256 <_vfprintf_r+0x1588>
   14220:	0641                	addi	a2,a2,16
   14222:	0685                	addi	a3,a3,1
   14224:	0155a023          	sw	s5,0(a1)
   14228:	c1d8                	sw	a4,4(a1)
   1422a:	c7b2                	sw	a2,204(sp)
   1422c:	c5b6                	sw	a3,200(sp)
   1422e:	05a1                	addi	a1,a1,8
   14230:	fed855e3          	bge	a6,a3,1421a <_vfprintf_r+0x154c>
   14234:	01d0                	addi	a2,sp,196
   14236:	85a6                	mv	a1,s1
   14238:	854a                	mv	a0,s2
   1423a:	00001097          	auipc	ra,0x1
   1423e:	5c0080e7          	jalr	1472(ra) # 157fa <__sprint_r>
   14242:	d4051863          	bnez	a0,13792 <_vfprintf_r+0xac4>
   14246:	4741                	li	a4,16
   14248:	1441                	addi	s0,s0,-16
   1424a:	463e                	lw	a2,204(sp)
   1424c:	46ae                	lw	a3,200(sp)
   1424e:	85ce                	mv	a1,s3
   14250:	481d                	li	a6,7
   14252:	fc8747e3          	blt	a4,s0,14220 <_vfprintf_r+0x1552>
   14256:	4f72                	lw	t5,28(sp)
   14258:	9622                	add	a2,a2,s0
   1425a:	0685                	addi	a3,a3,1
   1425c:	01e5a023          	sw	t5,0(a1)
   14260:	c1c0                	sw	s0,4(a1)
   14262:	c7b2                	sw	a2,204(sp)
   14264:	c5b6                	sw	a3,200(sp)
   14266:	44d84b63          	blt	a6,a3,146bc <_vfprintf_r+0x19ee>
   1426a:	000cc683          	lbu	a3,0(s9)
   1426e:	05a1                	addi	a1,a1,8
   14270:	9d36                	add	s10,s10,a3
   14272:	b7bd                	j	141e0 <_vfprintf_r+0x1512>
   14274:	1cfd                	addi	s9,s9,-1
   14276:	1b7d                	addi	s6,s6,-1
   14278:	bf01                	j	14188 <_vfprintf_r+0x14ba>
   1427a:	01d0                	addi	a2,sp,196
   1427c:	85a6                	mv	a1,s1
   1427e:	854a                	mv	a0,s2
   14280:	00001097          	auipc	ra,0x1
   14284:	57a080e7          	jalr	1402(ra) # 157fa <__sprint_r>
   14288:	d0051563          	bnez	a0,13792 <_vfprintf_r+0xac4>
   1428c:	463e                	lw	a2,204(sp)
   1428e:	85ce                	mv	a1,s3
   14290:	4741                	li	a4,16
   14292:	481d                	li	a6,7
   14294:	b731                	j	141a0 <_vfprintf_r+0x14d2>
   14296:	01d0                	addi	a2,sp,196
   14298:	85a6                	mv	a1,s1
   1429a:	854a                	mv	a0,s2
   1429c:	00001097          	auipc	ra,0x1
   142a0:	55e080e7          	jalr	1374(ra) # 157fa <__sprint_r>
   142a4:	ce051763          	bnez	a0,13792 <_vfprintf_r+0xac4>
   142a8:	000cc683          	lbu	a3,0(s9)
   142ac:	463e                	lw	a2,204(sp)
   142ae:	85ce                	mv	a1,s3
   142b0:	4741                	li	a4,16
   142b2:	481d                	li	a6,7
   142b4:	bf21                	j	141cc <_vfprintf_r+0x14fe>
   142b6:	4522                	lw	a0,8(sp)
   142b8:	01d0                	addi	a2,sp,196
   142ba:	85a6                	mv	a1,s1
   142bc:	00001097          	auipc	ra,0x1
   142c0:	53e080e7          	jalr	1342(ra) # 157fa <__sprint_r>
   142c4:	cc051763          	bnez	a0,13792 <_vfprintf_r+0xac4>
   142c8:	553a                	lw	a0,172(sp)
   142ca:	463e                	lw	a2,204(sp)
   142cc:	844e                	mv	s0,s3
   142ce:	b9b9                	j	13f2c <_vfprintf_r+0x125e>
   142d0:	0001d7b7          	lui	a5,0x1d
   142d4:	40c78d13          	addi	s10,a5,1036 # 1d40c <__extenddftf2+0x14a8>
   142d8:	b319                	j	13fde <_vfprintf_r+0x1310>
   142da:	4522                	lw	a0,8(sp)
   142dc:	01d0                	addi	a2,sp,196
   142de:	85a6                	mv	a1,s1
   142e0:	00001097          	auipc	ra,0x1
   142e4:	51a080e7          	jalr	1306(ra) # 157fa <__sprint_r>
   142e8:	ca051563          	bnez	a0,13792 <_vfprintf_r+0xac4>
   142ec:	463e                	lw	a2,204(sp)
   142ee:	844e                	mv	s0,s3
   142f0:	e38ff06f          	j	13928 <_vfprintf_r+0xc5a>
   142f4:	4b19                	li	s6,6
   142f6:	b0fd                	j	13be4 <_vfprintf_r+0xf16>
   142f8:	47d2                	lw	a5,20(sp)
   142fa:	4732                	lw	a4,12(sp)
   142fc:	439c                	lw	a5,0(a5)
   142fe:	00e79023          	sh	a4,0(a5)
   14302:	9f8ff06f          	j	134fa <_vfprintf_r+0x82c>
   14306:	0b62                	slli	s6,s6,0x18
   14308:	418b5b13          	srai	s6,s6,0x18
   1430c:	41fb5d93          	srai	s11,s6,0x1f
   14310:	87ee                	mv	a5,s11
   14312:	d13fe06f          	j	13024 <_vfprintf_r+0x356>
   14316:	0ffb7b13          	zext.b	s6,s6
   1431a:	4d81                	li	s11,0
   1431c:	d6bfe06f          	j	13086 <_vfprintf_r+0x3b8>
   14320:	0ffb7b13          	zext.b	s6,s6
   14324:	4d81                	li	s11,0
   14326:	b0b1                	j	13b72 <_vfprintf_r+0xea4>
   14328:	02d00793          	li	a5,45
   1432c:	0af103a3          	sb	a5,167(sp)
   14330:	02d00713          	li	a4,45
   14334:	bba9                	j	1408e <_vfprintf_r+0x13c0>
   14336:	4522                	lw	a0,8(sp)
   14338:	01d0                	addi	a2,sp,196
   1433a:	85a6                	mv	a1,s1
   1433c:	00001097          	auipc	ra,0x1
   14340:	4be080e7          	jalr	1214(ra) # 157fa <__sprint_r>
   14344:	bf7fe06f          	j	12f3a <_vfprintf_r+0x26c>
   14348:	4522                	lw	a0,8(sp)
   1434a:	01d0                	addi	a2,sp,196
   1434c:	85a6                	mv	a1,s1
   1434e:	00001097          	auipc	ra,0x1
   14352:	4ac080e7          	jalr	1196(ra) # 157fa <__sprint_r>
   14356:	c2051e63          	bnez	a0,13792 <_vfprintf_r+0xac4>
   1435a:	553a                	lw	a0,172(sp)
   1435c:	463e                	lw	a2,204(sp)
   1435e:	472e                	lw	a4,200(sp)
   14360:	844e                	mv	s0,s3
   14362:	b975                	j	1401e <_vfprintf_r+0x1350>
   14364:	01550733          	add	a4,a0,s5
   14368:	04700613          	li	a2,71
   1436c:	010c                	addi	a1,sp,128
   1436e:	855a                	mv	a0,s6
   14370:	d23a                	sw	a4,36(sp)
   14372:	d032                	sw	a2,32(sp)
   14374:	ce46                	sw	a7,28(sp)
   14376:	c97e                	sw	t6,144(sp)
   14378:	cb7a                	sw	t5,148(sp)
   1437a:	cd76                	sw	t4,152(sp)
   1437c:	cf62                	sw	s8,156(sp)
   1437e:	c102                	sw	zero,128(sp)
   14380:	c302                	sw	zero,132(sp)
   14382:	c502                	sw	zero,136(sp)
   14384:	c702                	sw	zero,140(sp)
   14386:	00006097          	auipc	ra,0x6
   1438a:	dfa080e7          	jalr	-518(ra) # 1a180 <__eqtf2>
   1438e:	48f2                	lw	a7,28(sp)
   14390:	5602                	lw	a2,32(sp)
   14392:	5712                	lw	a4,36(sp)
   14394:	3a050863          	beqz	a0,14744 <_vfprintf_r+0x1a76>
   14398:	57fa                	lw	a5,188(sp)
   1439a:	00e7fc63          	bgeu	a5,a4,143b2 <_vfprintf_r+0x16e4>
   1439e:	03000593          	li	a1,48
   143a2:	00178693          	addi	a3,a5,1
   143a6:	df36                	sw	a3,188(sp)
   143a8:	00b78023          	sb	a1,0(a5)
   143ac:	57fa                	lw	a5,188(sp)
   143ae:	fee7eae3          	bltu	a5,a4,143a2 <_vfprintf_r+0x16d4>
   143b2:	573a                	lw	a4,172(sp)
   143b4:	ce3a                	sw	a4,28(sp)
   143b6:	41a787b3          	sub	a5,a5,s10
   143ba:	04700713          	li	a4,71
   143be:	d03e                	sw	a5,32(sp)
   143c0:	92e60fe3          	beq	a2,a4,13cfe <_vfprintf_r+0x1030>
   143c4:	04600713          	li	a4,70
   143c8:	3ce60863          	beq	a2,a4,14798 <_vfprintf_r+0x1aca>
   143cc:	47f2                	lw	a5,28(sp)
   143ce:	fff78713          	addi	a4,a5,-1
   143d2:	b281                	j	13d12 <_vfprintf_r+0x1044>
   143d4:	001a8693          	addi	a3,s5,1
   143d8:	4609                	li	a2,2
   143da:	4522                	lw	a0,8(sp)
   143dc:	09010b13          	addi	s6,sp,144
   143e0:	1178                	addi	a4,sp,172
   143e2:	85da                	mv	a1,s6
   143e4:	0bc10813          	addi	a6,sp,188
   143e8:	191c                	addi	a5,sp,176
   143ea:	c8c6                	sw	a7,80(sp)
   143ec:	d436                	sw	a3,40(sp)
   143ee:	c97e                	sw	t6,144(sp)
   143f0:	d27e                	sw	t6,36(sp)
   143f2:	cb7a                	sw	t5,148(sp)
   143f4:	d07a                	sw	t5,32(sp)
   143f6:	cd76                	sw	t4,152(sp)
   143f8:	ce76                	sw	t4,28(sp)
   143fa:	cf62                	sw	s8,156(sp)
   143fc:	00003097          	auipc	ra,0x3
   14400:	90a080e7          	jalr	-1782(ra) # 16d06 <_ldtoa_r>
   14404:	48c6                	lw	a7,80(sp)
   14406:	56a2                	lw	a3,40(sp)
   14408:	04600593          	li	a1,70
   1440c:	fdf8f613          	andi	a2,a7,-33
   14410:	4ef2                	lw	t4,28(sp)
   14412:	5f02                	lw	t5,32(sp)
   14414:	5f92                	lw	t6,36(sp)
   14416:	8d2a                	mv	s10,a0
   14418:	00d50733          	add	a4,a0,a3
   1441c:	58b61b63          	bne	a2,a1,149b2 <_vfprintf_r+0x1ce4>
   14420:	000d4503          	lbu	a0,0(s10)
   14424:	03000593          	li	a1,48
   14428:	32b50263          	beq	a0,a1,1474c <_vfprintf_r+0x1a7e>
   1442c:	56ba                	lw	a3,172(sp)
   1442e:	010c                	addi	a1,sp,128
   14430:	9736                	add	a4,a4,a3
   14432:	bf35                	j	1436e <_vfprintf_r+0x16a0>
   14434:	09010b13          	addi	s6,sp,144
   14438:	010c                	addi	a1,sp,128
   1443a:	1170                	addi	a2,sp,172
   1443c:	855a                	mv	a0,s6
   1443e:	c0c6                	sw	a7,64(sp)
   14440:	c17e                	sw	t6,128(sp)
   14442:	c37a                	sw	t5,132(sp)
   14444:	c576                	sw	t4,136(sp)
   14446:	ce2e                	sw	a1,28(sp)
   14448:	c762                	sw	s8,140(sp)
   1444a:	00002097          	auipc	ra,0x2
   1444e:	32e080e7          	jalr	814(ra) # 16778 <frexpl>
   14452:	474a                	lw	a4,144(sp)
   14454:	45f2                	lw	a1,28(sp)
   14456:	1890                	addi	a2,sp,112
   14458:	c13a                	sw	a4,128(sp)
   1445a:	475a                	lw	a4,148(sp)
   1445c:	855a                	mv	a0,s6
   1445e:	d882                	sw	zero,112(sp)
   14460:	c33a                	sw	a4,132(sp)
   14462:	476a                	lw	a4,152(sp)
   14464:	da82                	sw	zero,116(sp)
   14466:	dc82                	sw	zero,120(sp)
   14468:	c53a                	sw	a4,136(sp)
   1446a:	477a                	lw	a4,156(sp)
   1446c:	c73a                	sw	a4,140(sp)
   1446e:	3ffc0737          	lui	a4,0x3ffc0
   14472:	deba                	sw	a4,124(sp)
   14474:	00006097          	auipc	ra,0x6
   14478:	f7a080e7          	jalr	-134(ra) # 1a3ee <__multf3>
   1447c:	45f2                	lw	a1,28(sp)
   1447e:	4f4a                	lw	t5,144(sp)
   14480:	4eda                	lw	t4,148(sp)
   14482:	486a                	lw	a6,152(sp)
   14484:	855a                	mv	a0,s6
   14486:	d42e                	sw	a1,40(sp)
   14488:	d27a                	sw	t5,36(sp)
   1448a:	d076                	sw	t4,32(sp)
   1448c:	ce42                	sw	a6,28(sp)
   1448e:	c102                	sw	zero,128(sp)
   14490:	c302                	sw	zero,132(sp)
   14492:	c502                	sw	zero,136(sp)
   14494:	c702                	sw	zero,140(sp)
   14496:	00006097          	auipc	ra,0x6
   1449a:	cea080e7          	jalr	-790(ra) # 1a180 <__eqtf2>
   1449e:	4dfa                	lw	s11,156(sp)
   144a0:	4872                	lw	a6,28(sp)
   144a2:	5e82                	lw	t4,32(sp)
   144a4:	5f12                	lw	t5,36(sp)
   144a6:	55a2                	lw	a1,40(sp)
   144a8:	4886                	lw	a7,64(sp)
   144aa:	e119                	bnez	a0,144b0 <_vfprintf_r+0x17e2>
   144ac:	4705                	li	a4,1
   144ae:	d73a                	sw	a4,172(sp)
   144b0:	06100713          	li	a4,97
   144b4:	48e88c63          	beq	a7,a4,1494c <_vfprintf_r+0x1c7e>
   144b8:	0001d737          	lui	a4,0x1d
   144bc:	43070793          	addi	a5,a4,1072 # 1d430 <__extenddftf2+0x14cc>
   144c0:	ce3e                	sw	a5,28(sp)
   144c2:	d04a                	sw	s2,32(sp)
   144c4:	d466                	sw	s9,40(sp)
   144c6:	c0de                	sw	s7,64(sp)
   144c8:	c6a2                	sw	s0,76(sp)
   144ca:	896a                	mv	s2,s10
   144cc:	c8a6                	sw	s1,80(sp)
   144ce:	caea                	sw	s10,84(sp)
   144d0:	44f2                	lw	s1,28(sp)
   144d2:	1afd                	addi	s5,s5,-1
   144d4:	d246                	sw	a7,36(sp)
   144d6:	8bfa                	mv	s7,t5
   144d8:	8c76                	mv	s8,t4
   144da:	8cc2                	mv	s9,a6
   144dc:	8d6e                	mv	s10,s11
   144de:	842e                	mv	s0,a1
   144e0:	a025                	j	14508 <_vfprintf_r+0x183a>
   144e2:	85a2                	mv	a1,s0
   144e4:	855a                	mv	a0,s6
   144e6:	c95e                	sw	s7,144(sp)
   144e8:	cb62                	sw	s8,148(sp)
   144ea:	cd66                	sw	s9,152(sp)
   144ec:	cf6a                	sw	s10,156(sp)
   144ee:	c102                	sw	zero,128(sp)
   144f0:	c302                	sw	zero,132(sp)
   144f2:	c502                	sw	zero,136(sp)
   144f4:	c702                	sw	zero,140(sp)
   144f6:	fffa8d93          	addi	s11,s5,-1
   144fa:	00006097          	auipc	ra,0x6
   144fe:	c86080e7          	jalr	-890(ra) # 1a180 <__eqtf2>
   14502:	40050863          	beqz	a0,14912 <_vfprintf_r+0x1c44>
   14506:	8aee                	mv	s5,s11
   14508:	400307b7          	lui	a5,0x40030
   1450c:	1890                	addi	a2,sp,112
   1450e:	85a2                	mv	a1,s0
   14510:	855a                	mv	a0,s6
   14512:	debe                	sw	a5,124(sp)
   14514:	c15e                	sw	s7,128(sp)
   14516:	c362                	sw	s8,132(sp)
   14518:	c566                	sw	s9,136(sp)
   1451a:	c76a                	sw	s10,140(sp)
   1451c:	d882                	sw	zero,112(sp)
   1451e:	da82                	sw	zero,116(sp)
   14520:	dc82                	sw	zero,120(sp)
   14522:	00006097          	auipc	ra,0x6
   14526:	ecc080e7          	jalr	-308(ra) # 1a3ee <__multf3>
   1452a:	855a                	mv	a0,s6
   1452c:	00008097          	auipc	ra,0x8
   14530:	8be080e7          	jalr	-1858(ra) # 1bdea <__fixtfsi>
   14534:	85aa                	mv	a1,a0
   14536:	8daa                	mv	s11,a0
   14538:	855a                	mv	a0,s6
   1453a:	4d4a                	lw	s10,144(sp)
   1453c:	4cda                	lw	s9,148(sp)
   1453e:	4c6a                	lw	s8,152(sp)
   14540:	4bfa                	lw	s7,156(sp)
   14542:	00008097          	auipc	ra,0x8
   14546:	94a080e7          	jalr	-1718(ra) # 1be8c <__floatsitf>
   1454a:	46ca                	lw	a3,144(sp)
   1454c:	1090                	addi	a2,sp,96
   1454e:	188c                	addi	a1,sp,112
   14550:	d0b6                	sw	a3,96(sp)
   14552:	46da                	lw	a3,148(sp)
   14554:	8522                	mv	a0,s0
   14556:	d8ea                	sw	s10,112(sp)
   14558:	d2b6                	sw	a3,100(sp)
   1455a:	46ea                	lw	a3,152(sp)
   1455c:	dae6                	sw	s9,116(sp)
   1455e:	dce2                	sw	s8,120(sp)
   14560:	d4b6                	sw	a3,104(sp)
   14562:	46fa                	lw	a3,156(sp)
   14564:	dede                	sw	s7,124(sp)
   14566:	d6b6                	sw	a3,108(sp)
   14568:	00007097          	auipc	ra,0x7
   1456c:	9e8080e7          	jalr	-1560(ra) # 1af50 <__subtf3>
   14570:	01b486b3          	add	a3,s1,s11
   14574:	0006c603          	lbu	a2,0(a3)
   14578:	8fca                	mv	t6,s2
   1457a:	0905                	addi	s2,s2,1
   1457c:	4b8a                	lw	s7,128(sp)
   1457e:	4c1a                	lw	s8,132(sp)
   14580:	4caa                	lw	s9,136(sp)
   14582:	4d3a                	lw	s10,140(sp)
   14584:	57fd                	li	a5,-1
   14586:	fec90fa3          	sb	a2,-1(s2)
   1458a:	f4fa9ce3          	bne	s5,a5,144e2 <_vfprintf_r+0x1814>
   1458e:	5892                	lw	a7,36(sp)
   14590:	8f5e                	mv	t5,s7
   14592:	8ee2                	mv	t4,s8
   14594:	8866                	mv	a6,s9
   14596:	85a2                	mv	a1,s0
   14598:	ccee                	sw	s11,88(sp)
   1459a:	3ffe0ab7          	lui	s5,0x3ffe0
   1459e:	8dea                	mv	s11,s10
   145a0:	855a                	mv	a0,s6
   145a2:	cec6                	sw	a7,92(sp)
   145a4:	d27e                	sw	t6,36(sp)
   145a6:	44c6                	lw	s1,80(sp)
   145a8:	4b86                	lw	s7,64(sp)
   145aa:	5ca2                	lw	s9,40(sp)
   145ac:	4436                	lw	s0,76(sp)
   145ae:	c97a                	sw	t5,144(sp)
   145b0:	c8fa                	sw	t5,80(sp)
   145b2:	cb76                	sw	t4,148(sp)
   145b4:	c6f6                	sw	t4,76(sp)
   145b6:	cd42                	sw	a6,152(sp)
   145b8:	c0c2                	sw	a6,64(sp)
   145ba:	cf6e                	sw	s11,156(sp)
   145bc:	c102                	sw	zero,128(sp)
   145be:	c302                	sw	zero,132(sp)
   145c0:	c502                	sw	zero,136(sp)
   145c2:	c756                	sw	s5,140(sp)
   145c4:	d42e                	sw	a1,40(sp)
   145c6:	00006097          	auipc	ra,0x6
   145ca:	c60080e7          	jalr	-928(ra) # 1a226 <__getf2>
   145ce:	8c4a                	mv	s8,s2
   145d0:	4d56                	lw	s10,84(sp)
   145d2:	5902                	lw	s2,32(sp)
   145d4:	5f92                	lw	t6,36(sp)
   145d6:	48f6                	lw	a7,92(sp)
   145d8:	02a04063          	bgtz	a0,145f8 <_vfprintf_r+0x192a>
   145dc:	55a2                	lw	a1,40(sp)
   145de:	855a                	mv	a0,s6
   145e0:	d046                	sw	a7,32(sp)
   145e2:	00006097          	auipc	ra,0x6
   145e6:	b9e080e7          	jalr	-1122(ra) # 1a180 <__eqtf2>
   145ea:	5882                	lw	a7,32(sp)
   145ec:	e529                	bnez	a0,14636 <_vfprintf_r+0x1968>
   145ee:	47e6                	lw	a5,88(sp)
   145f0:	5f92                	lw	t6,36(sp)
   145f2:	0017f693          	andi	a3,a5,1
   145f6:	c2a1                	beqz	a3,14636 <_vfprintf_r+0x1968>
   145f8:	47f2                	lw	a5,28(sp)
   145fa:	df7e                	sw	t6,188(sp)
   145fc:	fffc4603          	lbu	a2,-1(s8)
   14600:	00f7c583          	lbu	a1,15(a5) # 4003000f <__BSS_END__+0x400115b3>
   14604:	86e2                	mv	a3,s8
   14606:	00b61e63          	bne	a2,a1,14622 <_vfprintf_r+0x1954>
   1460a:	03000513          	li	a0,48
   1460e:	fea68fa3          	sb	a0,-1(a3)
   14612:	56fa                	lw	a3,188(sp)
   14614:	fff68793          	addi	a5,a3,-1
   14618:	df3e                	sw	a5,188(sp)
   1461a:	fff6c603          	lbu	a2,-1(a3)
   1461e:	fec588e3          	beq	a1,a2,1460e <_vfprintf_r+0x1940>
   14622:	00160593          	addi	a1,a2,1
   14626:	03900513          	li	a0,57
   1462a:	0ff5f593          	zext.b	a1,a1
   1462e:	02a60c63          	beq	a2,a0,14666 <_vfprintf_r+0x1998>
   14632:	feb68fa3          	sb	a1,-1(a3)
   14636:	57ba                	lw	a5,172(sp)
   14638:	41ac0733          	sub	a4,s8,s10
   1463c:	d03a                	sw	a4,32(sp)
   1463e:	fff78713          	addi	a4,a5,-1
   14642:	ce3e                	sw	a5,28(sp)
   14644:	06100613          	li	a2,97
   14648:	d73a                	sw	a4,172(sp)
   1464a:	07000693          	li	a3,112
   1464e:	00c88663          	beq	a7,a2,1465a <_vfprintf_r+0x198c>
   14652:	05000693          	li	a3,80
   14656:	04100893          	li	a7,65
   1465a:	4605                	li	a2,1
   1465c:	ebeff06f          	j	13d1a <_vfprintf_r+0x104c>
   14660:	86d6                	mv	a3,s5
   14662:	460d                	li	a2,3
   14664:	bb9d                	j	143da <_vfprintf_r+0x170c>
   14666:	47f2                	lw	a5,28(sp)
   14668:	00a7c583          	lbu	a1,10(a5)
   1466c:	b7d9                	j	14632 <_vfprintf_r+0x1964>
   1466e:	0a714703          	lbu	a4,167(sp)
   14672:	4cb6                	lw	s9,76(sp)
   14674:	4a81                	li	s5,0
   14676:	c319                	beqz	a4,1467c <_vfprintf_r+0x19ae>
   14678:	9e7fe06f          	j	1305e <_vfprintf_r+0x390>
   1467c:	fe8fe06f          	j	12e64 <_vfprintf_r+0x196>
   14680:	5782                	lw	a5,32(sp)
   14682:	4772                	lw	a4,28(sp)
   14684:	14f74063          	blt	a4,a5,147c4 <_vfprintf_r+0x1af6>
   14688:	47f2                	lw	a5,28(sp)
   1468a:	001cf713          	andi	a4,s9,1
   1468e:	8b3e                	mv	s6,a5
   14690:	c701                	beqz	a4,14698 <_vfprintf_r+0x19ca>
   14692:	5732                	lw	a4,44(sp)
   14694:	00e78b33          	add	s6,a5,a4
   14698:	400cfe13          	andi	t3,s9,1024
   1469c:	000e0563          	beqz	t3,146a6 <_vfprintf_r+0x19d8>
   146a0:	47f2                	lw	a5,28(sp)
   146a2:	20f04c63          	bgtz	a5,148ba <_vfprintf_r+0x1bec>
   146a6:	fffb4693          	not	a3,s6
   146aa:	86fd                	srai	a3,a3,0x1f
   146ac:	00db7db3          	and	s11,s6,a3
   146b0:	06700893          	li	a7,103
   146b4:	d402                	sw	zero,40(sp)
   146b6:	d202                	sw	zero,36(sp)
   146b8:	f04ff06f          	j	13dbc <_vfprintf_r+0x10ee>
   146bc:	01d0                	addi	a2,sp,196
   146be:	85a6                	mv	a1,s1
   146c0:	854a                	mv	a0,s2
   146c2:	00001097          	auipc	ra,0x1
   146c6:	138080e7          	jalr	312(ra) # 157fa <__sprint_r>
   146ca:	8c051463          	bnez	a0,13792 <_vfprintf_r+0xac4>
   146ce:	000cc683          	lbu	a3,0(s9)
   146d2:	463e                	lw	a2,204(sp)
   146d4:	85ce                	mv	a1,s3
   146d6:	4741                	li	a4,16
   146d8:	481d                	li	a6,7
   146da:	9d36                	add	s10,s10,a3
   146dc:	b611                	j	141e0 <_vfprintf_r+0x1512>
   146de:	4525                	li	a0,9
   146e0:	fb656963          	bltu	a0,s6,13e92 <_vfprintf_r+0x11c4>
   146e4:	b819                	j	13efa <_vfprintf_r+0x122c>
   146e6:	57fd                	li	a5,-1
   146e8:	c63e                	sw	a5,12(sp)
   146ea:	883fe06f          	j	12f6c <_vfprintf_r+0x29e>
   146ee:	02d00793          	li	a5,45
   146f2:	0af103a3          	sb	a5,167(sp)
   146f6:	02d00713          	li	a4,45
   146fa:	b8d1                	j	13fce <_vfprintf_r+0x1300>
   146fc:	0a714703          	lbu	a4,167(sp)
   14700:	ca62                	sw	s8,20(sp)
   14702:	d402                	sw	zero,40(sp)
   14704:	d202                	sw	zero,36(sp)
   14706:	ce02                	sw	zero,28(sp)
   14708:	8dd6                	mv	s11,s5
   1470a:	8b56                	mv	s6,s5
   1470c:	4a81                	li	s5,0
   1470e:	c319                	beqz	a4,14714 <_vfprintf_r+0x1a46>
   14710:	94ffe06f          	j	1305e <_vfprintf_r+0x390>
   14714:	f50fe06f          	j	12e64 <_vfprintf_r+0x196>
   14718:	4522                	lw	a0,8(sp)
   1471a:	01d0                	addi	a2,sp,196
   1471c:	85a6                	mv	a1,s1
   1471e:	00001097          	auipc	ra,0x1
   14722:	0dc080e7          	jalr	220(ra) # 157fa <__sprint_r>
   14726:	86051663          	bnez	a0,13792 <_vfprintf_r+0xac4>
   1472a:	5aba                	lw	s5,172(sp)
   1472c:	5782                	lw	a5,32(sp)
   1472e:	463e                	lw	a2,204(sp)
   14730:	844e                	mv	s0,s3
   14732:	41578ab3          	sub	s5,a5,s5
   14736:	a56ff06f          	j	1398c <_vfprintf_r+0xcbe>
   1473a:	0001d7b7          	lui	a5,0x1d
   1473e:	41878d13          	addi	s10,a5,1048 # 1d418 <__extenddftf2+0x14b4>
   14742:	b871                	j	13fde <_vfprintf_r+0x1310>
   14744:	57ba                	lw	a5,172(sp)
   14746:	ce3e                	sw	a5,28(sp)
   14748:	87ba                	mv	a5,a4
   1474a:	b1b5                	j	143b6 <_vfprintf_r+0x16e8>
   1474c:	010c                	addi	a1,sp,128
   1474e:	855a                	mv	a0,s6
   14750:	ceba                	sw	a4,92(sp)
   14752:	ccb2                	sw	a2,88(sp)
   14754:	cac6                	sw	a7,84(sp)
   14756:	c8b6                	sw	a3,80(sp)
   14758:	c97e                	sw	t6,144(sp)
   1475a:	d47e                	sw	t6,40(sp)
   1475c:	cb7a                	sw	t5,148(sp)
   1475e:	d27a                	sw	t5,36(sp)
   14760:	cd76                	sw	t4,152(sp)
   14762:	d076                	sw	t4,32(sp)
   14764:	ce2e                	sw	a1,28(sp)
   14766:	cf62                	sw	s8,156(sp)
   14768:	c102                	sw	zero,128(sp)
   1476a:	c302                	sw	zero,132(sp)
   1476c:	c502                	sw	zero,136(sp)
   1476e:	c702                	sw	zero,140(sp)
   14770:	00006097          	auipc	ra,0x6
   14774:	a10080e7          	jalr	-1520(ra) # 1a180 <__eqtf2>
   14778:	45f2                	lw	a1,28(sp)
   1477a:	5e82                	lw	t4,32(sp)
   1477c:	5f12                	lw	t5,36(sp)
   1477e:	5fa2                	lw	t6,40(sp)
   14780:	46c6                	lw	a3,80(sp)
   14782:	48d6                	lw	a7,84(sp)
   14784:	4666                	lw	a2,88(sp)
   14786:	4776                	lw	a4,92(sp)
   14788:	1c051863          	bnez	a0,14958 <_vfprintf_r+0x1c8a>
   1478c:	57ba                	lw	a5,172(sp)
   1478e:	973e                	add	a4,a4,a5
   14790:	ce3e                	sw	a5,28(sp)
   14792:	41a707b3          	sub	a5,a4,s10
   14796:	d03e                	sw	a5,32(sp)
   14798:	47f2                	lw	a5,28(sp)
   1479a:	001cf713          	andi	a4,s9,1
   1479e:	01576733          	or	a4,a4,s5
   147a2:	1cf05163          	blez	a5,14964 <_vfprintf_r+0x1c96>
   147a6:	18071b63          	bnez	a4,1493c <_vfprintf_r+0x1c6e>
   147aa:	4b72                	lw	s6,28(sp)
   147ac:	06600893          	li	a7,102
   147b0:	400cfe13          	andi	t3,s9,1024
   147b4:	100e1563          	bnez	t3,148be <_vfprintf_r+0x1bf0>
   147b8:	fffb4693          	not	a3,s6
   147bc:	86fd                	srai	a3,a3,0x1f
   147be:	00db7db3          	and	s11,s6,a3
   147c2:	bdcd                	j	146b4 <_vfprintf_r+0x19e6>
   147c4:	5782                	lw	a5,32(sp)
   147c6:	5732                	lw	a4,44(sp)
   147c8:	06700893          	li	a7,103
   147cc:	00e78b33          	add	s6,a5,a4
   147d0:	47f2                	lw	a5,28(sp)
   147d2:	fcf04fe3          	bgtz	a5,147b0 <_vfprintf_r+0x1ae2>
   147d6:	40fb0f33          	sub	t5,s6,a5
   147da:	001f0b13          	addi	s6,t5,1
   147de:	fffb4693          	not	a3,s6
   147e2:	86fd                	srai	a3,a3,0x1f
   147e4:	00db7db3          	and	s11,s6,a3
   147e8:	b5f1                	j	146b4 <_vfprintf_r+0x19e6>
   147ea:	8ee6                	mv	t4,s9
   147ec:	bf1fe06f          	j	133dc <_vfprintf_r+0x70e>
   147f0:	0001e837          	lui	a6,0x1e
   147f4:	55c1                	li	a1,-16
   147f6:	40a00ab3          	neg	s5,a0
   147fa:	bf880813          	addi	a6,a6,-1032 # 1dbf8 <zeroes.0>
   147fe:	04b55563          	bge	a0,a1,14848 <_vfprintf_r+0x1b7a>
   14802:	ce4a                	sw	s2,28(sp)
   14804:	4b41                	li	s6,16
   14806:	4c1d                	li	s8,7
   14808:	8942                	mv	s2,a6
   1480a:	a021                	j	14812 <_vfprintf_r+0x1b44>
   1480c:	1ac1                	addi	s5,s5,-16 # 3ffdfff0 <__BSS_END__+0x3ffc1594>
   1480e:	035b5b63          	bge	s6,s5,14844 <_vfprintf_r+0x1b76>
   14812:	0641                	addi	a2,a2,16
   14814:	0705                	addi	a4,a4,1
   14816:	01242023          	sw	s2,0(s0)
   1481a:	01642223          	sw	s6,4(s0)
   1481e:	c7b2                	sw	a2,204(sp)
   14820:	c5ba                	sw	a4,200(sp)
   14822:	0421                	addi	s0,s0,8
   14824:	feec54e3          	bge	s8,a4,1480c <_vfprintf_r+0x1b3e>
   14828:	4522                	lw	a0,8(sp)
   1482a:	01d0                	addi	a2,sp,196
   1482c:	85a6                	mv	a1,s1
   1482e:	00001097          	auipc	ra,0x1
   14832:	fcc080e7          	jalr	-52(ra) # 157fa <__sprint_r>
   14836:	c119                	beqz	a0,1483c <_vfprintf_r+0x1b6e>
   14838:	f5bfe06f          	j	13792 <_vfprintf_r+0xac4>
   1483c:	463e                	lw	a2,204(sp)
   1483e:	472e                	lw	a4,200(sp)
   14840:	844e                	mv	s0,s3
   14842:	b7e9                	j	1480c <_vfprintf_r+0x1b3e>
   14844:	884a                	mv	a6,s2
   14846:	4972                	lw	s2,28(sp)
   14848:	9656                	add	a2,a2,s5
   1484a:	0705                	addi	a4,a4,1
   1484c:	01042023          	sw	a6,0(s0)
   14850:	01542223          	sw	s5,4(s0)
   14854:	c7b2                	sw	a2,204(sp)
   14856:	c5ba                	sw	a4,200(sp)
   14858:	459d                	li	a1,7
   1485a:	eee5dd63          	bge	a1,a4,13f54 <_vfprintf_r+0x1286>
   1485e:	4522                	lw	a0,8(sp)
   14860:	01d0                	addi	a2,sp,196
   14862:	85a6                	mv	a1,s1
   14864:	00001097          	auipc	ra,0x1
   14868:	f96080e7          	jalr	-106(ra) # 157fa <__sprint_r>
   1486c:	c119                	beqz	a0,14872 <_vfprintf_r+0x1ba4>
   1486e:	f25fe06f          	j	13792 <_vfprintf_r+0xac4>
   14872:	463e                	lw	a2,204(sp)
   14874:	472e                	lw	a4,200(sp)
   14876:	844e                	mv	s0,s3
   14878:	faaff06f          	j	14022 <_vfprintf_r+0x1354>
   1487c:	0b610693          	addi	a3,sp,182
   14880:	e619                	bnez	a2,1488e <_vfprintf_r+0x1bc0>
   14882:	03000693          	li	a3,48
   14886:	0ad10b23          	sb	a3,182(sp)
   1488a:	0b710693          	addi	a3,sp,183
   1488e:	0b1c                	addi	a5,sp,400
   14890:	40f68633          	sub	a2,a3,a5
   14894:	03070713          	addi	a4,a4,48
   14898:	0dd60793          	addi	a5,a2,221
   1489c:	00e68023          	sb	a4,0(a3)
   148a0:	c0be                	sw	a5,64(sp)
   148a2:	ceeff06f          	j	13d90 <_vfprintf_r+0x10c2>
   148a6:	c802                	sw	zero,16(sp)
   148a8:	4a99                	li	s5,6
   148aa:	8cbfe06f          	j	13174 <_vfprintf_r+0x4a6>
   148ae:	001cf713          	andi	a4,s9,1
   148b2:	ce070863          	beqz	a4,13da2 <_vfprintf_r+0x10d4>
   148b6:	ce8ff06f          	j	13d9e <_vfprintf_r+0x10d0>
   148ba:	06700893          	li	a7,103
   148be:	5672                	lw	a2,60(sp)
   148c0:	0ff00693          	li	a3,255
   148c4:	00064703          	lbu	a4,0(a2)
   148c8:	0ed70263          	beq	a4,a3,149ac <_vfprintf_r+0x1cde>
   148cc:	47f2                	lw	a5,28(sp)
   148ce:	4501                	li	a0,0
   148d0:	4581                	li	a1,0
   148d2:	00f75a63          	bge	a4,a5,148e6 <_vfprintf_r+0x1c18>
   148d6:	8f99                	sub	a5,a5,a4
   148d8:	00164703          	lbu	a4,1(a2)
   148dc:	c71d                	beqz	a4,1490a <_vfprintf_r+0x1c3c>
   148de:	0585                	addi	a1,a1,1
   148e0:	0605                	addi	a2,a2,1
   148e2:	fed718e3          	bne	a4,a3,148d2 <_vfprintf_r+0x1c04>
   148e6:	de32                	sw	a2,60(sp)
   148e8:	d22e                	sw	a1,36(sp)
   148ea:	d42a                	sw	a0,40(sp)
   148ec:	ce3e                	sw	a5,28(sp)
   148ee:	57a2                	lw	a5,40(sp)
   148f0:	5712                	lw	a4,36(sp)
   148f2:	973e                	add	a4,a4,a5
   148f4:	47a6                	lw	a5,72(sp)
   148f6:	02f70733          	mul	a4,a4,a5
   148fa:	9b3a                	add	s6,s6,a4
   148fc:	fffb4693          	not	a3,s6
   14900:	86fd                	srai	a3,a3,0x1f
   14902:	00db7db3          	and	s11,s6,a3
   14906:	cb6ff06f          	j	13dbc <_vfprintf_r+0x10ee>
   1490a:	00064703          	lbu	a4,0(a2)
   1490e:	0505                	addi	a0,a0,1
   14910:	bfc9                	j	148e2 <_vfprintf_r+0x1c14>
   14912:	8c4a                	mv	s8,s2
   14914:	001a8693          	addi	a3,s5,1
   14918:	5892                	lw	a7,36(sp)
   1491a:	5ca2                	lw	s9,40(sp)
   1491c:	4b86                	lw	s7,64(sp)
   1491e:	4436                	lw	s0,76(sp)
   14920:	5902                	lw	s2,32(sp)
   14922:	44c6                	lw	s1,80(sp)
   14924:	4d56                	lw	s10,84(sp)
   14926:	96e2                	add	a3,a3,s8
   14928:	03000613          	li	a2,48
   1492c:	d00ac5e3          	bltz	s5,14636 <_vfprintf_r+0x1968>
   14930:	0c05                	addi	s8,s8,1
   14932:	fecc0fa3          	sb	a2,-1(s8)
   14936:	fedc1de3          	bne	s8,a3,14930 <_vfprintf_r+0x1c62>
   1493a:	b9f5                	j	14636 <_vfprintf_r+0x1968>
   1493c:	5732                	lw	a4,44(sp)
   1493e:	06600893          	li	a7,102
   14942:	00ea8f33          	add	t5,s5,a4
   14946:	00ff0b33          	add	s6,t5,a5
   1494a:	b59d                	j	147b0 <_vfprintf_r+0x1ae2>
   1494c:	0001d737          	lui	a4,0x1d
   14950:	41c70793          	addi	a5,a4,1052 # 1d41c <__extenddftf2+0x14b8>
   14954:	ce3e                	sw	a5,28(sp)
   14956:	b6b5                	j	144c2 <_vfprintf_r+0x17f4>
   14958:	4505                	li	a0,1
   1495a:	40d506b3          	sub	a3,a0,a3
   1495e:	d736                	sw	a3,172(sp)
   14960:	9736                	add	a4,a4,a3
   14962:	b431                	j	1436e <_vfprintf_r+0x16a0>
   14964:	e711                	bnez	a4,14970 <_vfprintf_r+0x1ca2>
   14966:	4d85                	li	s11,1
   14968:	06600893          	li	a7,102
   1496c:	4b05                	li	s6,1
   1496e:	b399                	j	146b4 <_vfprintf_r+0x19e6>
   14970:	57b2                	lw	a5,44(sp)
   14972:	06600893          	li	a7,102
   14976:	00178f13          	addi	t5,a5,1
   1497a:	015f0b33          	add	s6,t5,s5
   1497e:	fffb4693          	not	a3,s6
   14982:	86fd                	srai	a3,a3,0x1f
   14984:	00db7db3          	and	s11,s6,a3
   14988:	b335                	j	146b4 <_vfprintf_r+0x19e6>
   1498a:	4789                	li	a5,2
   1498c:	c0be                	sw	a5,64(sp)
   1498e:	c02ff06f          	j	13d90 <_vfprintf_r+0x10c2>
   14992:	47d2                	lw	a5,20(sp)
   14994:	0007aa83          	lw	s5,0(a5)
   14998:	0791                	addi	a5,a5,4
   1499a:	000ad363          	bgez	s5,149a0 <_vfprintf_r+0x1cd2>
   1499e:	5afd                	li	s5,-1
   149a0:	00194883          	lbu	a7,1(s2)
   149a4:	ca3e                	sw	a5,20(sp)
   149a6:	8936                	mv	s2,a3
   149a8:	c62fe06f          	j	12e0a <_vfprintf_r+0x13c>
   149ac:	d402                	sw	zero,40(sp)
   149ae:	d202                	sw	zero,36(sp)
   149b0:	bf3d                	j	148ee <_vfprintf_r+0x1c20>
   149b2:	04500613          	li	a2,69
   149b6:	010c                	addi	a1,sp,128
   149b8:	ba5d                	j	1436e <_vfprintf_r+0x16a0>
   149ba:	00c4d783          	lhu	a5,12(s1)
   149be:	0407e793          	ori	a5,a5,64
   149c2:	00f49623          	sh	a5,12(s1)
   149c6:	d74fe06f          	j	12f3a <_vfprintf_r+0x26c>

000149ca <vfprintf>:
   149ca:	0001e737          	lui	a4,0x1e
   149ce:	87aa                	mv	a5,a0
   149d0:	71872503          	lw	a0,1816(a4) # 1e718 <_impure_ptr>
   149d4:	86b2                	mv	a3,a2
   149d6:	862e                	mv	a2,a1
   149d8:	85be                	mv	a1,a5
   149da:	ffffe317          	auipc	t1,0xffffe
   149de:	2f430067          	jr	756(t1) # 12cce <_vfprintf_r>

000149e2 <__sbprintf>:
   149e2:	b8010113          	addi	sp,sp,-1152
   149e6:	00c59783          	lh	a5,12(a1)
   149ea:	00e5d703          	lhu	a4,14(a1)
   149ee:	46812c23          	sw	s0,1144(sp)
   149f2:	842e                	mv	s0,a1
   149f4:	65c1                	lui	a1,0x10
   149f6:	15f5                	addi	a1,a1,-3 # fffd <exit-0x97>
   149f8:	06442e03          	lw	t3,100(s0)
   149fc:	01c42303          	lw	t1,28(s0)
   14a00:	02442883          	lw	a7,36(s0)
   14a04:	0742                	slli	a4,a4,0x10
   14a06:	8fed                	and	a5,a5,a1
   14a08:	8fd9                	or	a5,a5,a4
   14a0a:	40000813          	li	a6,1024
   14a0e:	ca3e                	sw	a5,20(sp)
   14a10:	002c                	addi	a1,sp,8
   14a12:	189c                	addi	a5,sp,112
   14a14:	46912a23          	sw	s1,1140(sp)
   14a18:	47212823          	sw	s2,1136(sp)
   14a1c:	46112e23          	sw	ra,1148(sp)
   14a20:	892a                	mv	s2,a0
   14a22:	d6f2                	sw	t3,108(sp)
   14a24:	d21a                	sw	t1,36(sp)
   14a26:	d646                	sw	a7,44(sp)
   14a28:	c43e                	sw	a5,8(sp)
   14a2a:	cc3e                	sw	a5,24(sp)
   14a2c:	c842                	sw	a6,16(sp)
   14a2e:	ce42                	sw	a6,28(sp)
   14a30:	d002                	sw	zero,32(sp)
   14a32:	ffffe097          	auipc	ra,0xffffe
   14a36:	29c080e7          	jalr	668(ra) # 12cce <_vfprintf_r>
   14a3a:	84aa                	mv	s1,a0
   14a3c:	02055963          	bgez	a0,14a6e <__sbprintf+0x8c>
   14a40:	01415783          	lhu	a5,20(sp)
   14a44:	0407f793          	andi	a5,a5,64
   14a48:	c799                	beqz	a5,14a56 <__sbprintf+0x74>
   14a4a:	00c45783          	lhu	a5,12(s0)
   14a4e:	0407e793          	ori	a5,a5,64
   14a52:	00f41623          	sh	a5,12(s0)
   14a56:	47c12083          	lw	ra,1148(sp)
   14a5a:	47812403          	lw	s0,1144(sp)
   14a5e:	47012903          	lw	s2,1136(sp)
   14a62:	8526                	mv	a0,s1
   14a64:	47412483          	lw	s1,1140(sp)
   14a68:	48010113          	addi	sp,sp,1152
   14a6c:	8082                	ret
   14a6e:	002c                	addi	a1,sp,8
   14a70:	854a                	mv	a0,s2
   14a72:	00001097          	auipc	ra,0x1
   14a76:	f52080e7          	jalr	-174(ra) # 159c4 <_fflush_r>
   14a7a:	d179                	beqz	a0,14a40 <__sbprintf+0x5e>
   14a7c:	54fd                	li	s1,-1
   14a7e:	b7c9                	j	14a40 <__sbprintf+0x5e>

00014a80 <_vfiprintf_r>:
   14a80:	7169                	addi	sp,sp,-304
   14a82:	11312e23          	sw	s3,284(sp)
   14a86:	11512a23          	sw	s5,276(sp)
   14a8a:	11612823          	sw	s6,272(sp)
   14a8e:	11712623          	sw	s7,268(sp)
   14a92:	12112623          	sw	ra,300(sp)
   14a96:	11a12023          	sw	s10,256(sp)
   14a9a:	8baa                	mv	s7,a0
   14a9c:	8aae                	mv	s5,a1
   14a9e:	89b2                	mv	s3,a2
   14aa0:	8b36                	mv	s6,a3
   14aa2:	c501                	beqz	a0,14aaa <_vfiprintf_r+0x2a>
   14aa4:	595c                	lw	a5,52(a0)
   14aa6:	360786e3          	beqz	a5,15612 <_vfiprintf_r+0xb92>
   14aaa:	00ca9703          	lh	a4,12(s5)
   14aae:	064aa783          	lw	a5,100(s5)
   14ab2:	01271693          	slli	a3,a4,0x12
   14ab6:	0006cb63          	bltz	a3,14acc <_vfiprintf_r+0x4c>
   14aba:	76f9                	lui	a3,0xffffe
   14abc:	16fd                	addi	a3,a3,-1 # ffffdfff <__BSS_END__+0xfffdf5a3>
   14abe:	6609                	lui	a2,0x2
   14ac0:	8f51                	or	a4,a4,a2
   14ac2:	8ff5                	and	a5,a5,a3
   14ac4:	00ea9623          	sh	a4,12(s5)
   14ac8:	06faa223          	sw	a5,100(s5)
   14acc:	01279713          	slli	a4,a5,0x12
   14ad0:	460748e3          	bltz	a4,15740 <_vfiprintf_r+0xcc0>
   14ad4:	00ca9783          	lh	a5,12(s5)
   14ad8:	0087f713          	andi	a4,a5,8
   14adc:	22070763          	beqz	a4,14d0a <_vfiprintf_r+0x28a>
   14ae0:	010aa703          	lw	a4,16(s5)
   14ae4:	22070363          	beqz	a4,14d0a <_vfiprintf_r+0x28a>
   14ae8:	8be9                	andi	a5,a5,26
   14aea:	4729                	li	a4,10
   14aec:	22e78d63          	beq	a5,a4,14d26 <_vfiprintf_r+0x2a6>
   14af0:	0001e7b7          	lui	a5,0x1e
   14af4:	4d01                	li	s10,0
   14af6:	11812423          	sw	s8,264(sp)
   14afa:	11912223          	sw	s9,260(sp)
   14afe:	04c10c13          	addi	s8,sp,76
   14b02:	c1878793          	addi	a5,a5,-1000 # 1dc18 <blanks.1+0x10>
   14b06:	0001ecb7          	lui	s9,0x1e
   14b0a:	12812423          	sw	s0,296(sp)
   14b0e:	13212023          	sw	s2,288(sp)
   14b12:	11412c23          	sw	s4,280(sp)
   14b16:	896a                	mv	s2,s10
   14b18:	12912223          	sw	s1,292(sp)
   14b1c:	dfee                	sw	s11,252(sp)
   14b1e:	c0e2                	sw	s8,64(sp)
   14b20:	c482                	sw	zero,72(sp)
   14b22:	c282                	sw	zero,68(sp)
   14b24:	8462                	mv	s0,s8
   14b26:	c202                	sw	zero,4(sp)
   14b28:	ca02                	sw	zero,20(sp)
   14b2a:	cc02                	sw	zero,24(sp)
   14b2c:	ce02                	sw	zero,28(sp)
   14b2e:	c03e                	sw	a5,0(sp)
   14b30:	4a41                	li	s4,16
   14b32:	d84c8c93          	addi	s9,s9,-636 # 1dd84 <zeroes.0>
   14b36:	8d5a                	mv	s10,s6
   14b38:	0009c783          	lbu	a5,0(s3)
   14b3c:	14078563          	beqz	a5,14c86 <_vfiprintf_r+0x206>
   14b40:	84ce                	mv	s1,s3
   14b42:	02500713          	li	a4,37
   14b46:	20e78963          	beq	a5,a4,14d58 <_vfiprintf_r+0x2d8>
   14b4a:	0014c783          	lbu	a5,1(s1)
   14b4e:	0485                	addi	s1,s1,1
   14b50:	fbfd                	bnez	a5,14b46 <_vfiprintf_r+0xc6>
   14b52:	41348b33          	sub	s6,s1,s3
   14b56:	13348863          	beq	s1,s3,14c86 <_vfiprintf_r+0x206>
   14b5a:	4726                	lw	a4,72(sp)
   14b5c:	4796                	lw	a5,68(sp)
   14b5e:	01342023          	sw	s3,0(s0)
   14b62:	975a                	add	a4,a4,s6
   14b64:	0785                	addi	a5,a5,1
   14b66:	01642223          	sw	s6,4(s0)
   14b6a:	c4ba                	sw	a4,72(sp)
   14b6c:	c2be                	sw	a5,68(sp)
   14b6e:	471d                	li	a4,7
   14b70:	0421                	addi	s0,s0,8
   14b72:	1ef74a63          	blt	a4,a5,14d66 <_vfiprintf_r+0x2e6>
   14b76:	0004c783          	lbu	a5,0(s1)
   14b7a:	995a                	add	s2,s2,s6
   14b7c:	10078563          	beqz	a5,14c86 <_vfiprintf_r+0x206>
   14b80:	0014c783          	lbu	a5,1(s1)
   14b84:	00148993          	addi	s3,s1,1
   14b88:	02010da3          	sb	zero,59(sp)
   14b8c:	5dfd                	li	s11,-1
   14b8e:	4b01                	li	s6,0
   14b90:	4801                	li	a6,0
   14b92:	05a00493          	li	s1,90
   14b96:	0985                	addi	s3,s3,1
   14b98:	863e                	mv	a2,a5
   14b9a:	fe060713          	addi	a4,a2,-32 # 1fe0 <exit-0xe0b4>
   14b9e:	02e4eb63          	bltu	s1,a4,14bd4 <_vfiprintf_r+0x154>
   14ba2:	4782                	lw	a5,0(sp)
   14ba4:	070a                	slli	a4,a4,0x2
   14ba6:	973e                	add	a4,a4,a5
   14ba8:	431c                	lw	a5,0(a4)
   14baa:	8782                	jr	a5
   14bac:	4b01                	li	s6,0
   14bae:	fd060793          	addi	a5,a2,-48
   14bb2:	46a5                	li	a3,9
   14bb4:	0009c603          	lbu	a2,0(s3)
   14bb8:	002b1713          	slli	a4,s6,0x2
   14bbc:	9b3a                	add	s6,s6,a4
   14bbe:	0b06                	slli	s6,s6,0x1
   14bc0:	9b3e                	add	s6,s6,a5
   14bc2:	fd060793          	addi	a5,a2,-48
   14bc6:	0985                	addi	s3,s3,1
   14bc8:	fef6f6e3          	bgeu	a3,a5,14bb4 <_vfiprintf_r+0x134>
   14bcc:	fe060713          	addi	a4,a2,-32
   14bd0:	fce4f9e3          	bgeu	s1,a4,14ba2 <_vfiprintf_r+0x122>
   14bd4:	ca4d                	beqz	a2,14c86 <_vfiprintf_r+0x206>
   14bd6:	08c10623          	sb	a2,140(sp)
   14bda:	02010da3          	sb	zero,59(sp)
   14bde:	4885                	li	a7,1
   14be0:	4e05                	li	t3,1
   14be2:	0164                	addi	s1,sp,140
   14be4:	4d81                	li	s11,0
   14be6:	4281                	li	t0,0
   14be8:	08487f93          	andi	t6,a6,132
   14bec:	4726                	lw	a4,72(sp)
   14bee:	4796                	lw	a5,68(sp)
   14bf0:	000f9663          	bnez	t6,14bfc <_vfiprintf_r+0x17c>
   14bf4:	411b0eb3          	sub	t4,s6,a7
   14bf8:	77d04163          	bgtz	t4,1535a <_vfiprintf_r+0x8da>
   14bfc:	03b14603          	lbu	a2,59(sp)
   14c00:	ce11                	beqz	a2,14c1c <_vfiprintf_r+0x19c>
   14c02:	03b10613          	addi	a2,sp,59
   14c06:	c010                	sw	a2,0(s0)
   14c08:	0785                	addi	a5,a5,1
   14c0a:	4605                	li	a2,1
   14c0c:	0705                	addi	a4,a4,1
   14c0e:	c050                	sw	a2,4(s0)
   14c10:	c4ba                	sw	a4,72(sp)
   14c12:	c2be                	sw	a5,68(sp)
   14c14:	461d                	li	a2,7
   14c16:	0421                	addi	s0,s0,8
   14c18:	1af64d63          	blt	a2,a5,14dd2 <_vfiprintf_r+0x352>
   14c1c:	00028e63          	beqz	t0,14c38 <_vfiprintf_r+0x1b8>
   14c20:	1870                	addi	a2,sp,60
   14c22:	c010                	sw	a2,0(s0)
   14c24:	0785                	addi	a5,a5,1
   14c26:	4609                	li	a2,2
   14c28:	0709                	addi	a4,a4,2
   14c2a:	c050                	sw	a2,4(s0)
   14c2c:	c4ba                	sw	a4,72(sp)
   14c2e:	c2be                	sw	a5,68(sp)
   14c30:	461d                	li	a2,7
   14c32:	0421                	addi	s0,s0,8
   14c34:	7ef64163          	blt	a2,a5,15416 <_vfiprintf_r+0x996>
   14c38:	08000613          	li	a2,128
   14c3c:	56cf8463          	beq	t6,a2,151a4 <_vfiprintf_r+0x724>
   14c40:	41cd8db3          	sub	s11,s11,t3
   14c44:	61b04c63          	bgtz	s11,1525c <_vfiprintf_r+0x7dc>
   14c48:	9772                	add	a4,a4,t3
   14c4a:	0785                	addi	a5,a5,1
   14c4c:	c004                	sw	s1,0(s0)
   14c4e:	01c42223          	sw	t3,4(s0)
   14c52:	c4ba                	sw	a4,72(sp)
   14c54:	c2be                	sw	a5,68(sp)
   14c56:	461d                	li	a2,7
   14c58:	0421                	addi	s0,s0,8
   14c5a:	6af64263          	blt	a2,a5,152fe <_vfiprintf_r+0x87e>
   14c5e:	00487813          	andi	a6,a6,4
   14c62:	00080663          	beqz	a6,14c6e <_vfiprintf_r+0x1ee>
   14c66:	411b04b3          	sub	s1,s6,a7
   14c6a:	18904a63          	bgtz	s1,14dfe <_vfiprintf_r+0x37e>
   14c6e:	011b5363          	bge	s6,a7,14c74 <_vfiprintf_r+0x1f4>
   14c72:	8b46                	mv	s6,a7
   14c74:	995a                	add	s2,s2,s6
   14c76:	10071263          	bnez	a4,14d7a <_vfiprintf_r+0x2fa>
   14c7a:	0009c783          	lbu	a5,0(s3)
   14c7e:	c282                	sw	zero,68(sp)
   14c80:	8462                	mv	s0,s8
   14c82:	ea079fe3          	bnez	a5,14b40 <_vfiprintf_r+0xc0>
   14c86:	47a6                	lw	a5,72(sp)
   14c88:	8d4a                	mv	s10,s2
   14c8a:	10078263          	beqz	a5,14d8e <_vfiprintf_r+0x30e>
   14c8e:	0090                	addi	a2,sp,64
   14c90:	85d6                	mv	a1,s5
   14c92:	855e                	mv	a0,s7
   14c94:	00001097          	auipc	ra,0x1
   14c98:	b66080e7          	jalr	-1178(ra) # 157fa <__sprint_r>
   14c9c:	a8cd                	j	14d8e <_vfiprintf_r+0x30e>
   14c9e:	000d2b03          	lw	s6,0(s10)
   14ca2:	0d11                	addi	s10,s10,4
   14ca4:	2a0b4d63          	bltz	s6,14f5e <_vfiprintf_r+0x4de>
   14ca8:	0009c783          	lbu	a5,0(s3)
   14cac:	b5ed                	j	14b96 <_vfiprintf_r+0x116>
   14cae:	0009c783          	lbu	a5,0(s3)
   14cb2:	02086813          	ori	a6,a6,32
   14cb6:	b5c5                	j	14b96 <_vfiprintf_r+0x116>
   14cb8:	01086813          	ori	a6,a6,16
   14cbc:	02087793          	andi	a5,a6,32
   14cc0:	1c078263          	beqz	a5,14e84 <_vfiprintf_r+0x404>
   14cc4:	0d1d                	addi	s10,s10,7
   14cc6:	ff8d7d13          	andi	s10,s10,-8
   14cca:	004d2703          	lw	a4,4(s10)
   14cce:	000d2783          	lw	a5,0(s10)
   14cd2:	0d21                	addi	s10,s10,8
   14cd4:	88ba                	mv	a7,a4
   14cd6:	1c074763          	bltz	a4,14ea4 <_vfiprintf_r+0x424>
   14cda:	1e0dc563          	bltz	s11,14ec4 <_vfiprintf_r+0x444>
   14cde:	0117e733          	or	a4,a5,a7
   14ce2:	f7f87813          	andi	a6,a6,-129
   14ce6:	1c071f63          	bnez	a4,14ec4 <_vfiprintf_r+0x444>
   14cea:	240d97e3          	bnez	s11,15738 <_vfiprintf_r+0xcb8>
   14cee:	03b14783          	lbu	a5,59(sp)
   14cf2:	4881                	li	a7,0
   14cf4:	4e01                	li	t3,0
   14cf6:	1984                	addi	s1,sp,240
   14cf8:	c391                	beqz	a5,14cfc <_vfiprintf_r+0x27c>
   14cfa:	0885                	addi	a7,a7,1
   14cfc:	00287293          	andi	t0,a6,2
   14d00:	ee0284e3          	beqz	t0,14be8 <_vfiprintf_r+0x168>
   14d04:	0889                	addi	a7,a7,2
   14d06:	4289                	li	t0,2
   14d08:	b5c5                	j	14be8 <_vfiprintf_r+0x168>
   14d0a:	85d6                	mv	a1,s5
   14d0c:	855e                	mv	a0,s7
   14d0e:	00001097          	auipc	ra,0x1
   14d12:	3ca080e7          	jalr	970(ra) # 160d8 <__swsetup_r>
   14d16:	220515e3          	bnez	a0,15740 <_vfiprintf_r+0xcc0>
   14d1a:	00ca9783          	lh	a5,12(s5)
   14d1e:	4729                	li	a4,10
   14d20:	8be9                	andi	a5,a5,26
   14d22:	dce797e3          	bne	a5,a4,14af0 <_vfiprintf_r+0x70>
   14d26:	00ea9783          	lh	a5,14(s5)
   14d2a:	dc07c3e3          	bltz	a5,14af0 <_vfiprintf_r+0x70>
   14d2e:	12c12083          	lw	ra,300(sp)
   14d32:	10012d03          	lw	s10,256(sp)
   14d36:	86da                	mv	a3,s6
   14d38:	864e                	mv	a2,s3
   14d3a:	11012b03          	lw	s6,272(sp)
   14d3e:	11c12983          	lw	s3,284(sp)
   14d42:	85d6                	mv	a1,s5
   14d44:	855e                	mv	a0,s7
   14d46:	11412a83          	lw	s5,276(sp)
   14d4a:	10c12b83          	lw	s7,268(sp)
   14d4e:	6155                	addi	sp,sp,304
   14d50:	00001317          	auipc	t1,0x1
   14d54:	a0c30067          	jr	-1524(t1) # 1575c <__sbprintf>
   14d58:	41348b33          	sub	s6,s1,s3
   14d5c:	df349fe3          	bne	s1,s3,14b5a <_vfiprintf_r+0xda>
   14d60:	0004c783          	lbu	a5,0(s1)
   14d64:	bd21                	j	14b7c <_vfiprintf_r+0xfc>
   14d66:	0090                	addi	a2,sp,64
   14d68:	85d6                	mv	a1,s5
   14d6a:	855e                	mv	a0,s7
   14d6c:	00001097          	auipc	ra,0x1
   14d70:	a8e080e7          	jalr	-1394(ra) # 157fa <__sprint_r>
   14d74:	ed01                	bnez	a0,14d8c <_vfiprintf_r+0x30c>
   14d76:	8462                	mv	s0,s8
   14d78:	bbfd                	j	14b76 <_vfiprintf_r+0xf6>
   14d7a:	0090                	addi	a2,sp,64
   14d7c:	85d6                	mv	a1,s5
   14d7e:	855e                	mv	a0,s7
   14d80:	00001097          	auipc	ra,0x1
   14d84:	a7a080e7          	jalr	-1414(ra) # 157fa <__sprint_r>
   14d88:	ee0509e3          	beqz	a0,14c7a <_vfiprintf_r+0x1fa>
   14d8c:	8d4a                	mv	s10,s2
   14d8e:	00cad783          	lhu	a5,12(s5)
   14d92:	12812403          	lw	s0,296(sp)
   14d96:	12412483          	lw	s1,292(sp)
   14d9a:	0407f793          	andi	a5,a5,64
   14d9e:	12012903          	lw	s2,288(sp)
   14da2:	11812a03          	lw	s4,280(sp)
   14da6:	10812c03          	lw	s8,264(sp)
   14daa:	10412c83          	lw	s9,260(sp)
   14dae:	5dfe                	lw	s11,252(sp)
   14db0:	180798e3          	bnez	a5,15740 <_vfiprintf_r+0xcc0>
   14db4:	12c12083          	lw	ra,300(sp)
   14db8:	11c12983          	lw	s3,284(sp)
   14dbc:	11412a83          	lw	s5,276(sp)
   14dc0:	11012b03          	lw	s6,272(sp)
   14dc4:	10c12b83          	lw	s7,268(sp)
   14dc8:	856a                	mv	a0,s10
   14dca:	10012d03          	lw	s10,256(sp)
   14dce:	6155                	addi	sp,sp,304
   14dd0:	8082                	ret
   14dd2:	0090                	addi	a2,sp,64
   14dd4:	85d6                	mv	a1,s5
   14dd6:	855e                	mv	a0,s7
   14dd8:	d246                	sw	a7,36(sp)
   14dda:	d072                	sw	t3,32(sp)
   14ddc:	c842                	sw	a6,16(sp)
   14dde:	c67e                	sw	t6,12(sp)
   14de0:	c416                	sw	t0,8(sp)
   14de2:	00001097          	auipc	ra,0x1
   14de6:	a18080e7          	jalr	-1512(ra) # 157fa <__sprint_r>
   14dea:	f14d                	bnez	a0,14d8c <_vfiprintf_r+0x30c>
   14dec:	4726                	lw	a4,72(sp)
   14dee:	4796                	lw	a5,68(sp)
   14df0:	5892                	lw	a7,36(sp)
   14df2:	5e02                	lw	t3,32(sp)
   14df4:	4842                	lw	a6,16(sp)
   14df6:	4fb2                	lw	t6,12(sp)
   14df8:	42a2                	lw	t0,8(sp)
   14dfa:	8462                	mv	s0,s8
   14dfc:	b505                	j	14c1c <_vfiprintf_r+0x19c>
   14dfe:	0001e337          	lui	t1,0x1e
   14e02:	4641                	li	a2,16
   14e04:	4796                	lw	a5,68(sp)
   14e06:	d9430313          	addi	t1,t1,-620 # 1dd94 <blanks.1>
   14e0a:	04965763          	bge	a2,s1,14e58 <_vfiprintf_r+0x3d8>
   14e0e:	86a2                	mv	a3,s0
   14e10:	4dc1                	li	s11,16
   14e12:	481d                	li	a6,7
   14e14:	c446                	sw	a7,8(sp)
   14e16:	841a                	mv	s0,t1
   14e18:	a021                	j	14e20 <_vfiprintf_r+0x3a0>
   14e1a:	14c1                	addi	s1,s1,-16
   14e1c:	029ddb63          	bge	s11,s1,14e52 <_vfiprintf_r+0x3d2>
   14e20:	0741                	addi	a4,a4,16
   14e22:	0785                	addi	a5,a5,1
   14e24:	c280                	sw	s0,0(a3)
   14e26:	01b6a223          	sw	s11,4(a3)
   14e2a:	c4ba                	sw	a4,72(sp)
   14e2c:	c2be                	sw	a5,68(sp)
   14e2e:	06a1                	addi	a3,a3,8
   14e30:	fef855e3          	bge	a6,a5,14e1a <_vfiprintf_r+0x39a>
   14e34:	0090                	addi	a2,sp,64
   14e36:	85d6                	mv	a1,s5
   14e38:	855e                	mv	a0,s7
   14e3a:	00001097          	auipc	ra,0x1
   14e3e:	9c0080e7          	jalr	-1600(ra) # 157fa <__sprint_r>
   14e42:	f529                	bnez	a0,14d8c <_vfiprintf_r+0x30c>
   14e44:	14c1                	addi	s1,s1,-16
   14e46:	4726                	lw	a4,72(sp)
   14e48:	4796                	lw	a5,68(sp)
   14e4a:	86e2                	mv	a3,s8
   14e4c:	481d                	li	a6,7
   14e4e:	fc9dc9e3          	blt	s11,s1,14e20 <_vfiprintf_r+0x3a0>
   14e52:	48a2                	lw	a7,8(sp)
   14e54:	8322                	mv	t1,s0
   14e56:	8436                	mv	s0,a3
   14e58:	9726                	add	a4,a4,s1
   14e5a:	0785                	addi	a5,a5,1
   14e5c:	00642023          	sw	t1,0(s0)
   14e60:	c044                	sw	s1,4(s0)
   14e62:	c4ba                	sw	a4,72(sp)
   14e64:	c2be                	sw	a5,68(sp)
   14e66:	461d                	li	a2,7
   14e68:	e0f653e3          	bge	a2,a5,14c6e <_vfiprintf_r+0x1ee>
   14e6c:	0090                	addi	a2,sp,64
   14e6e:	85d6                	mv	a1,s5
   14e70:	855e                	mv	a0,s7
   14e72:	c446                	sw	a7,8(sp)
   14e74:	00001097          	auipc	ra,0x1
   14e78:	986080e7          	jalr	-1658(ra) # 157fa <__sprint_r>
   14e7c:	f901                	bnez	a0,14d8c <_vfiprintf_r+0x30c>
   14e7e:	4726                	lw	a4,72(sp)
   14e80:	48a2                	lw	a7,8(sp)
   14e82:	b3f5                	j	14c6e <_vfiprintf_r+0x1ee>
   14e84:	01087713          	andi	a4,a6,16
   14e88:	000d2783          	lw	a5,0(s10)
   14e8c:	0d11                	addi	s10,s10,4
   14e8e:	e761                	bnez	a4,14f56 <_vfiprintf_r+0x4d6>
   14e90:	04087713          	andi	a4,a6,64
   14e94:	cf4d                	beqz	a4,14f4e <_vfiprintf_r+0x4ce>
   14e96:	07c2                	slli	a5,a5,0x10
   14e98:	87c1                	srai	a5,a5,0x10
   14e9a:	41f7d893          	srai	a7,a5,0x1f
   14e9e:	8746                	mv	a4,a7
   14ea0:	e2075de3          	bgez	a4,14cda <_vfiprintf_r+0x25a>
   14ea4:	02d00613          	li	a2,45
   14ea8:	00f03733          	snez	a4,a5
   14eac:	411008b3          	neg	a7,a7
   14eb0:	02c10da3          	sb	a2,59(sp)
   14eb4:	40e888b3          	sub	a7,a7,a4
   14eb8:	40f007b3          	neg	a5,a5
   14ebc:	000dc463          	bltz	s11,14ec4 <_vfiprintf_r+0x444>
   14ec0:	f7f87813          	andi	a6,a6,-129
   14ec4:	66089c63          	bnez	a7,1553c <_vfiprintf_r+0xabc>
   14ec8:	4725                	li	a4,9
   14eca:	66f76963          	bltu	a4,a5,1553c <_vfiprintf_r+0xabc>
   14ece:	03078793          	addi	a5,a5,48
   14ed2:	0ff7f793          	zext.b	a5,a5
   14ed6:	0ef107a3          	sb	a5,239(sp)
   14eda:	88ee                	mv	a7,s11
   14edc:	01b04363          	bgtz	s11,14ee2 <_vfiprintf_r+0x462>
   14ee0:	4885                	li	a7,1
   14ee2:	4e05                	li	t3,1
   14ee4:	0ef10493          	addi	s1,sp,239
   14ee8:	03b14783          	lbu	a5,59(sp)
   14eec:	e00797e3          	bnez	a5,14cfa <_vfiprintf_r+0x27a>
   14ef0:	b531                	j	14cfc <_vfiprintf_r+0x27c>
   14ef2:	000d2483          	lw	s1,0(s10)
   14ef6:	02010da3          	sb	zero,59(sp)
   14efa:	0d11                	addi	s10,s10,4
   14efc:	74048663          	beqz	s1,15648 <_vfiprintf_r+0xbc8>
   14f00:	c442                	sw	a6,8(sp)
   14f02:	600dcf63          	bltz	s11,15520 <_vfiprintf_r+0xaa0>
   14f06:	866e                	mv	a2,s11
   14f08:	4581                	li	a1,0
   14f0a:	8526                	mv	a0,s1
   14f0c:	00001097          	auipc	ra,0x1
   14f10:	2b6080e7          	jalr	694(ra) # 161c2 <memchr>
   14f14:	4822                	lw	a6,8(sp)
   14f16:	8e6e                	mv	t3,s11
   14f18:	c119                	beqz	a0,14f1e <_vfiprintf_r+0x49e>
   14f1a:	40950e33          	sub	t3,a0,s1
   14f1e:	03b14783          	lbu	a5,59(sp)
   14f22:	fffe4893          	not	a7,t3
   14f26:	41f8d893          	srai	a7,a7,0x1f
   14f2a:	011e78b3          	and	a7,t3,a7
   14f2e:	4d81                	li	s11,0
   14f30:	4281                	li	t0,0
   14f32:	dc0794e3          	bnez	a5,14cfa <_vfiprintf_r+0x27a>
   14f36:	b94d                	j	14be8 <_vfiprintf_r+0x168>
   14f38:	000d2783          	lw	a5,0(s10)
   14f3c:	02010da3          	sb	zero,59(sp)
   14f40:	0d11                	addi	s10,s10,4
   14f42:	08f10623          	sb	a5,140(sp)
   14f46:	4885                	li	a7,1
   14f48:	4e05                	li	t3,1
   14f4a:	0164                	addi	s1,sp,140
   14f4c:	b961                	j	14be4 <_vfiprintf_r+0x164>
   14f4e:	20087713          	andi	a4,a6,512
   14f52:	7c071163          	bnez	a4,15714 <_vfiprintf_r+0xc94>
   14f56:	41f7d893          	srai	a7,a5,0x1f
   14f5a:	8746                	mv	a4,a7
   14f5c:	bbad                	j	14cd6 <_vfiprintf_r+0x256>
   14f5e:	41600b33          	neg	s6,s6
   14f62:	0009c783          	lbu	a5,0(s3)
   14f66:	00486813          	ori	a6,a6,4
   14f6a:	b135                	j	14b96 <_vfiprintf_r+0x116>
   14f6c:	02b00713          	li	a4,43
   14f70:	0009c783          	lbu	a5,0(s3)
   14f74:	02e10da3          	sb	a4,59(sp)
   14f78:	b939                	j	14b96 <_vfiprintf_r+0x116>
   14f7a:	0009c783          	lbu	a5,0(s3)
   14f7e:	08086813          	ori	a6,a6,128
   14f82:	b911                	j	14b96 <_vfiprintf_r+0x116>
   14f84:	0009c603          	lbu	a2,0(s3)
   14f88:	02a00793          	li	a5,42
   14f8c:	00198693          	addi	a3,s3,1
   14f90:	7af60b63          	beq	a2,a5,15746 <_vfiprintf_r+0xcc6>
   14f94:	fd060793          	addi	a5,a2,-48
   14f98:	4725                	li	a4,9
   14f9a:	4d81                	li	s11,0
   14f9c:	45a5                	li	a1,9
   14f9e:	02f76063          	bltu	a4,a5,14fbe <_vfiprintf_r+0x53e>
   14fa2:	0006c603          	lbu	a2,0(a3)
   14fa6:	002d9713          	slli	a4,s11,0x2
   14faa:	9dba                	add	s11,s11,a4
   14fac:	0d86                	slli	s11,s11,0x1
   14fae:	9dbe                	add	s11,s11,a5
   14fb0:	fd060793          	addi	a5,a2,-48
   14fb4:	0685                	addi	a3,a3,1
   14fb6:	fef5f6e3          	bgeu	a1,a5,14fa2 <_vfiprintf_r+0x522>
   14fba:	4e0dc563          	bltz	s11,154a4 <_vfiprintf_r+0xa24>
   14fbe:	89b6                	mv	s3,a3
   14fc0:	bee9                	j	14b9a <_vfiprintf_r+0x11a>
   14fc2:	855e                	mv	a0,s7
   14fc4:	c442                	sw	a6,8(sp)
   14fc6:	00001097          	auipc	ra,0x1
   14fca:	304080e7          	jalr	772(ra) # 162ca <_localeconv_r>
   14fce:	415c                	lw	a5,4(a0)
   14fd0:	853e                	mv	a0,a5
   14fd2:	ce3e                	sw	a5,28(sp)
   14fd4:	00001097          	auipc	ra,0x1
   14fd8:	740080e7          	jalr	1856(ra) # 16714 <strlen>
   14fdc:	87aa                	mv	a5,a0
   14fde:	855e                	mv	a0,s7
   14fe0:	cc3e                	sw	a5,24(sp)
   14fe2:	00001097          	auipc	ra,0x1
   14fe6:	2e8080e7          	jalr	744(ra) # 162ca <_localeconv_r>
   14fea:	4518                	lw	a4,8(a0)
   14fec:	47e2                	lw	a5,24(sp)
   14fee:	4822                	lw	a6,8(sp)
   14ff0:	ca3a                	sw	a4,20(sp)
   14ff2:	ca078be3          	beqz	a5,14ca8 <_vfiprintf_r+0x228>
   14ff6:	4752                	lw	a4,20(sp)
   14ff8:	0009c783          	lbu	a5,0(s3)
   14ffc:	b8070de3          	beqz	a4,14b96 <_vfiprintf_r+0x116>
   15000:	00074703          	lbu	a4,0(a4)
   15004:	b80709e3          	beqz	a4,14b96 <_vfiprintf_r+0x116>
   15008:	40086813          	ori	a6,a6,1024
   1500c:	b669                	j	14b96 <_vfiprintf_r+0x116>
   1500e:	0009c783          	lbu	a5,0(s3)
   15012:	00186813          	ori	a6,a6,1
   15016:	b641                	j	14b96 <_vfiprintf_r+0x116>
   15018:	03b14703          	lbu	a4,59(sp)
   1501c:	0009c783          	lbu	a5,0(s3)
   15020:	b6071be3          	bnez	a4,14b96 <_vfiprintf_r+0x116>
   15024:	02000713          	li	a4,32
   15028:	02e10da3          	sb	a4,59(sp)
   1502c:	b6ad                	j	14b96 <_vfiprintf_r+0x116>
   1502e:	01086713          	ori	a4,a6,16
   15032:	02077793          	andi	a5,a4,32
   15036:	42078463          	beqz	a5,1545e <_vfiprintf_r+0x9de>
   1503a:	0d1d                	addi	s10,s10,7
   1503c:	ff8d7d13          	andi	s10,s10,-8
   15040:	000d2783          	lw	a5,0(s10)
   15044:	004d2583          	lw	a1,4(s10)
   15048:	0d21                	addi	s10,s10,8
   1504a:	02010da3          	sb	zero,59(sp)
   1504e:	bff77813          	andi	a6,a4,-1025
   15052:	0a0dc163          	bltz	s11,150f4 <_vfiprintf_r+0x674>
   15056:	00b7e633          	or	a2,a5,a1
   1505a:	b7f77713          	andi	a4,a4,-1153
   1505e:	5a061563          	bnez	a2,15608 <_vfiprintf_r+0xb88>
   15062:	8e42                	mv	t3,a6
   15064:	4781                	li	a5,0
   15066:	883a                	mv	a6,a4
   15068:	060d9e63          	bnez	s11,150e4 <_vfiprintf_r+0x664>
   1506c:	c80791e3          	bnez	a5,14cee <_vfiprintf_r+0x26e>
   15070:	001e7e13          	andi	t3,t3,1
   15074:	400e0863          	beqz	t3,15484 <_vfiprintf_r+0xa04>
   15078:	03000793          	li	a5,48
   1507c:	0ef107a3          	sb	a5,239(sp)
   15080:	88f2                	mv	a7,t3
   15082:	0ef10493          	addi	s1,sp,239
   15086:	b58d                	j	14ee8 <_vfiprintf_r+0x468>
   15088:	0009c783          	lbu	a5,0(s3)
   1508c:	06c00713          	li	a4,108
   15090:	58e78e63          	beq	a5,a4,1562c <_vfiprintf_r+0xbac>
   15094:	01086813          	ori	a6,a6,16
   15098:	bcfd                	j	14b96 <_vfiprintf_r+0x116>
   1509a:	0009c783          	lbu	a5,0(s3)
   1509e:	06800713          	li	a4,104
   150a2:	56e78e63          	beq	a5,a4,1561e <_vfiprintf_r+0xb9e>
   150a6:	04086813          	ori	a6,a6,64
   150aa:	b4f5                	j	14b96 <_vfiprintf_r+0x116>
   150ac:	01086e13          	ori	t3,a6,16
   150b0:	020e7793          	andi	a5,t3,32
   150b4:	38078763          	beqz	a5,15442 <_vfiprintf_r+0x9c2>
   150b8:	0d1d                	addi	s10,s10,7
   150ba:	ff8d7d13          	andi	s10,s10,-8
   150be:	000d2783          	lw	a5,0(s10)
   150c2:	004d2883          	lw	a7,4(s10)
   150c6:	0d21                	addi	s10,s10,8
   150c8:	02010da3          	sb	zero,59(sp)
   150cc:	8872                	mv	a6,t3
   150ce:	de0dcbe3          	bltz	s11,14ec4 <_vfiprintf_r+0x444>
   150d2:	0117e733          	or	a4,a5,a7
   150d6:	f7fe7813          	andi	a6,t3,-129
   150da:	de0715e3          	bnez	a4,14ec4 <_vfiprintf_r+0x444>
   150de:	4785                	li	a5,1
   150e0:	f80d86e3          	beqz	s11,1506c <_vfiprintf_r+0x5ec>
   150e4:	4705                	li	a4,1
   150e6:	64e78963          	beq	a5,a4,15738 <_vfiprintf_r+0xcb8>
   150ea:	4709                	li	a4,2
   150ec:	58e78163          	beq	a5,a4,1566e <_vfiprintf_r+0xbee>
   150f0:	4781                	li	a5,0
   150f2:	4581                	li	a1,0
   150f4:	1984                	addi	s1,sp,240
   150f6:	01d59693          	slli	a3,a1,0x1d
   150fa:	0077f713          	andi	a4,a5,7
   150fe:	838d                	srli	a5,a5,0x3
   15100:	03070713          	addi	a4,a4,48
   15104:	8fd5                	or	a5,a5,a3
   15106:	818d                	srli	a1,a1,0x3
   15108:	fee48fa3          	sb	a4,-1(s1)
   1510c:	00b7e6b3          	or	a3,a5,a1
   15110:	8526                	mv	a0,s1
   15112:	14fd                	addi	s1,s1,-1
   15114:	f2ed                	bnez	a3,150f6 <_vfiprintf_r+0x676>
   15116:	00187793          	andi	a5,a6,1
   1511a:	22078863          	beqz	a5,1534a <_vfiprintf_r+0x8ca>
   1511e:	03000793          	li	a5,48
   15122:	22f70463          	beq	a4,a5,1534a <_vfiprintf_r+0x8ca>
   15126:	1579                	addi	a0,a0,-2
   15128:	fef48fa3          	sb	a5,-1(s1)
   1512c:	199c                	addi	a5,sp,240
   1512e:	40a78e33          	sub	t3,a5,a0
   15132:	88ee                	mv	a7,s11
   15134:	37cdc563          	blt	s11,t3,1549e <_vfiprintf_r+0xa1e>
   15138:	84aa                	mv	s1,a0
   1513a:	b37d                	j	14ee8 <_vfiprintf_r+0x468>
   1513c:	6721                	lui	a4,0x8
   1513e:	83070713          	addi	a4,a4,-2000 # 7830 <exit-0x8864>
   15142:	02e11e23          	sh	a4,60(sp)
   15146:	0001d737          	lui	a4,0x1d
   1514a:	41c70713          	addi	a4,a4,1052 # 1d41c <__extenddftf2+0x14b8>
   1514e:	000d2783          	lw	a5,0(s10)
   15152:	4581                	li	a1,0
   15154:	00286813          	ori	a6,a6,2
   15158:	0d11                	addi	s10,s10,4
   1515a:	c23a                	sw	a4,4(sp)
   1515c:	02010da3          	sb	zero,59(sp)
   15160:	1c0dc363          	bltz	s11,15326 <_vfiprintf_r+0x8a6>
   15164:	00b7e733          	or	a4,a5,a1
   15168:	f7f87613          	andi	a2,a6,-129
   1516c:	1a071963          	bnez	a4,1531e <_vfiprintf_r+0x89e>
   15170:	8e42                	mv	t3,a6
   15172:	4789                	li	a5,2
   15174:	8832                	mv	a6,a2
   15176:	bdcd                	j	15068 <_vfiprintf_r+0x5e8>
   15178:	02087793          	andi	a5,a6,32
   1517c:	30079763          	bnez	a5,1548a <_vfiprintf_r+0xa0a>
   15180:	01087793          	andi	a5,a6,16
   15184:	4a079b63          	bnez	a5,1563a <_vfiprintf_r+0xbba>
   15188:	04087793          	andi	a5,a6,64
   1518c:	58079b63          	bnez	a5,15722 <_vfiprintf_r+0xca2>
   15190:	20087813          	andi	a6,a6,512
   15194:	4a080363          	beqz	a6,1563a <_vfiprintf_r+0xbba>
   15198:	000d2783          	lw	a5,0(s10)
   1519c:	0d11                	addi	s10,s10,4
   1519e:	01278023          	sb	s2,0(a5)
   151a2:	ba59                	j	14b38 <_vfiprintf_r+0xb8>
   151a4:	411b0333          	sub	t1,s6,a7
   151a8:	a8605ce3          	blez	t1,14c40 <_vfiprintf_r+0x1c0>
   151ac:	0001ef37          	lui	t5,0x1e
   151b0:	4641                	li	a2,16
   151b2:	d84f0f13          	addi	t5,t5,-636 # 1dd84 <zeroes.0>
   151b6:	06665163          	bge	a2,t1,15218 <_vfiprintf_r+0x798>
   151ba:	c426                	sw	s1,8(sp)
   151bc:	86a2                	mv	a3,s0
   151be:	4ec1                	li	t4,16
   151c0:	4f9d                	li	t6,7
   151c2:	c642                	sw	a6,12(sp)
   151c4:	c872                	sw	t3,16(sp)
   151c6:	841a                	mv	s0,t1
   151c8:	d046                	sw	a7,32(sp)
   151ca:	84fa                	mv	s1,t5
   151cc:	a021                	j	151d4 <_vfiprintf_r+0x754>
   151ce:	1441                	addi	s0,s0,-16
   151d0:	028edd63          	bge	t4,s0,1520a <_vfiprintf_r+0x78a>
   151d4:	0741                	addi	a4,a4,16
   151d6:	0785                	addi	a5,a5,1
   151d8:	c284                	sw	s1,0(a3)
   151da:	01d6a223          	sw	t4,4(a3)
   151de:	c4ba                	sw	a4,72(sp)
   151e0:	c2be                	sw	a5,68(sp)
   151e2:	06a1                	addi	a3,a3,8
   151e4:	feffd5e3          	bge	t6,a5,151ce <_vfiprintf_r+0x74e>
   151e8:	0090                	addi	a2,sp,64
   151ea:	85d6                	mv	a1,s5
   151ec:	855e                	mv	a0,s7
   151ee:	00000097          	auipc	ra,0x0
   151f2:	60c080e7          	jalr	1548(ra) # 157fa <__sprint_r>
   151f6:	b8051be3          	bnez	a0,14d8c <_vfiprintf_r+0x30c>
   151fa:	4ec1                	li	t4,16
   151fc:	1441                	addi	s0,s0,-16
   151fe:	4726                	lw	a4,72(sp)
   15200:	4796                	lw	a5,68(sp)
   15202:	86e2                	mv	a3,s8
   15204:	4f9d                	li	t6,7
   15206:	fc8ec7e3          	blt	t4,s0,151d4 <_vfiprintf_r+0x754>
   1520a:	8f26                	mv	t5,s1
   1520c:	4832                	lw	a6,12(sp)
   1520e:	4e42                	lw	t3,16(sp)
   15210:	5882                	lw	a7,32(sp)
   15212:	44a2                	lw	s1,8(sp)
   15214:	8322                	mv	t1,s0
   15216:	8436                	mv	s0,a3
   15218:	971a                	add	a4,a4,t1
   1521a:	0785                	addi	a5,a5,1
   1521c:	01e42023          	sw	t5,0(s0)
   15220:	00642223          	sw	t1,4(s0)
   15224:	c4ba                	sw	a4,72(sp)
   15226:	c2be                	sw	a5,68(sp)
   15228:	461d                	li	a2,7
   1522a:	0421                	addi	s0,s0,8
   1522c:	a0f65ae3          	bge	a2,a5,14c40 <_vfiprintf_r+0x1c0>
   15230:	0090                	addi	a2,sp,64
   15232:	85d6                	mv	a1,s5
   15234:	855e                	mv	a0,s7
   15236:	c846                	sw	a7,16(sp)
   15238:	c672                	sw	t3,12(sp)
   1523a:	c442                	sw	a6,8(sp)
   1523c:	00000097          	auipc	ra,0x0
   15240:	5be080e7          	jalr	1470(ra) # 157fa <__sprint_r>
   15244:	b40514e3          	bnez	a0,14d8c <_vfiprintf_r+0x30c>
   15248:	4e32                	lw	t3,12(sp)
   1524a:	4726                	lw	a4,72(sp)
   1524c:	4796                	lw	a5,68(sp)
   1524e:	41cd8db3          	sub	s11,s11,t3
   15252:	48c2                	lw	a7,16(sp)
   15254:	4822                	lw	a6,8(sp)
   15256:	8462                	mv	s0,s8
   15258:	9fb058e3          	blez	s11,14c48 <_vfiprintf_r+0x1c8>
   1525c:	0001ef37          	lui	t5,0x1e
   15260:	d84f0f13          	addi	t5,t5,-636 # 1dd84 <zeroes.0>
   15264:	05ba5e63          	bge	s4,s11,152c0 <_vfiprintf_r+0x840>
   15268:	86a2                	mv	a3,s0
   1526a:	431d                	li	t1,7
   1526c:	846e                	mv	s0,s11
   1526e:	c442                	sw	a6,8(sp)
   15270:	c672                	sw	t3,12(sp)
   15272:	c846                	sw	a7,16(sp)
   15274:	8de6                	mv	s11,s9
   15276:	a021                	j	1527e <_vfiprintf_r+0x7fe>
   15278:	1441                	addi	s0,s0,-16
   1527a:	028a5d63          	bge	s4,s0,152b4 <_vfiprintf_r+0x834>
   1527e:	0741                	addi	a4,a4,16
   15280:	0785                	addi	a5,a5,1
   15282:	0196a023          	sw	s9,0(a3)
   15286:	0146a223          	sw	s4,4(a3)
   1528a:	c4ba                	sw	a4,72(sp)
   1528c:	c2be                	sw	a5,68(sp)
   1528e:	06a1                	addi	a3,a3,8
   15290:	fef354e3          	bge	t1,a5,15278 <_vfiprintf_r+0x7f8>
   15294:	0090                	addi	a2,sp,64
   15296:	85d6                	mv	a1,s5
   15298:	855e                	mv	a0,s7
   1529a:	00000097          	auipc	ra,0x0
   1529e:	560080e7          	jalr	1376(ra) # 157fa <__sprint_r>
   152a2:	ae0515e3          	bnez	a0,14d8c <_vfiprintf_r+0x30c>
   152a6:	1441                	addi	s0,s0,-16
   152a8:	4726                	lw	a4,72(sp)
   152aa:	4796                	lw	a5,68(sp)
   152ac:	86e2                	mv	a3,s8
   152ae:	431d                	li	t1,7
   152b0:	fc8a47e3          	blt	s4,s0,1527e <_vfiprintf_r+0x7fe>
   152b4:	4822                	lw	a6,8(sp)
   152b6:	4e32                	lw	t3,12(sp)
   152b8:	48c2                	lw	a7,16(sp)
   152ba:	8f6e                	mv	t5,s11
   152bc:	8da2                	mv	s11,s0
   152be:	8436                	mv	s0,a3
   152c0:	976e                	add	a4,a4,s11
   152c2:	0785                	addi	a5,a5,1
   152c4:	01e42023          	sw	t5,0(s0)
   152c8:	01b42223          	sw	s11,4(s0)
   152cc:	c4ba                	sw	a4,72(sp)
   152ce:	c2be                	sw	a5,68(sp)
   152d0:	461d                	li	a2,7
   152d2:	0421                	addi	s0,s0,8
   152d4:	96f65ae3          	bge	a2,a5,14c48 <_vfiprintf_r+0x1c8>
   152d8:	0090                	addi	a2,sp,64
   152da:	85d6                	mv	a1,s5
   152dc:	855e                	mv	a0,s7
   152de:	c846                	sw	a7,16(sp)
   152e0:	c672                	sw	t3,12(sp)
   152e2:	c442                	sw	a6,8(sp)
   152e4:	00000097          	auipc	ra,0x0
   152e8:	516080e7          	jalr	1302(ra) # 157fa <__sprint_r>
   152ec:	aa0510e3          	bnez	a0,14d8c <_vfiprintf_r+0x30c>
   152f0:	4726                	lw	a4,72(sp)
   152f2:	4796                	lw	a5,68(sp)
   152f4:	48c2                	lw	a7,16(sp)
   152f6:	4e32                	lw	t3,12(sp)
   152f8:	4822                	lw	a6,8(sp)
   152fa:	8462                	mv	s0,s8
   152fc:	b2b1                	j	14c48 <_vfiprintf_r+0x1c8>
   152fe:	0090                	addi	a2,sp,64
   15300:	85d6                	mv	a1,s5
   15302:	855e                	mv	a0,s7
   15304:	c646                	sw	a7,12(sp)
   15306:	c442                	sw	a6,8(sp)
   15308:	00000097          	auipc	ra,0x0
   1530c:	4f2080e7          	jalr	1266(ra) # 157fa <__sprint_r>
   15310:	a6051ee3          	bnez	a0,14d8c <_vfiprintf_r+0x30c>
   15314:	4726                	lw	a4,72(sp)
   15316:	48b2                	lw	a7,12(sp)
   15318:	4822                	lw	a6,8(sp)
   1531a:	8462                	mv	s0,s8
   1531c:	b289                	j	14c5e <_vfiprintf_r+0x1de>
   1531e:	4709                	li	a4,2
   15320:	8832                	mv	a6,a2
   15322:	dc0709e3          	beqz	a4,150f4 <_vfiprintf_r+0x674>
   15326:	4612                	lw	a2,4(sp)
   15328:	1984                	addi	s1,sp,240
   1532a:	00f7f713          	andi	a4,a5,15
   1532e:	9732                	add	a4,a4,a2
   15330:	00074683          	lbu	a3,0(a4)
   15334:	8391                	srli	a5,a5,0x4
   15336:	01c59713          	slli	a4,a1,0x1c
   1533a:	8fd9                	or	a5,a5,a4
   1533c:	8191                	srli	a1,a1,0x4
   1533e:	fed48fa3          	sb	a3,-1(s1)
   15342:	00b7e733          	or	a4,a5,a1
   15346:	14fd                	addi	s1,s1,-1
   15348:	f36d                	bnez	a4,1532a <_vfiprintf_r+0x8aa>
   1534a:	199c                	addi	a5,sp,240
   1534c:	40978e33          	sub	t3,a5,s1
   15350:	88ee                	mv	a7,s11
   15352:	b9cddbe3          	bge	s11,t3,14ee8 <_vfiprintf_r+0x468>
   15356:	88f2                	mv	a7,t3
   15358:	be41                	j	14ee8 <_vfiprintf_r+0x468>
   1535a:	0001e337          	lui	t1,0x1e
   1535e:	4641                	li	a2,16
   15360:	d9430313          	addi	t1,t1,-620 # 1dd94 <blanks.1>
   15364:	07d65563          	bge	a2,t4,153ce <_vfiprintf_r+0x94e>
   15368:	c826                	sw	s1,16(sp)
   1536a:	86a2                	mv	a3,s0
   1536c:	4f41                	li	t5,16
   1536e:	439d                	li	t2,7
   15370:	c416                	sw	t0,8(sp)
   15372:	c67e                	sw	t6,12(sp)
   15374:	d042                	sw	a6,32(sp)
   15376:	d272                	sw	t3,36(sp)
   15378:	8476                	mv	s0,t4
   1537a:	d446                	sw	a7,40(sp)
   1537c:	849a                	mv	s1,t1
   1537e:	a021                	j	15386 <_vfiprintf_r+0x906>
   15380:	1441                	addi	s0,s0,-16
   15382:	028f5d63          	bge	t5,s0,153bc <_vfiprintf_r+0x93c>
   15386:	0741                	addi	a4,a4,16
   15388:	0785                	addi	a5,a5,1
   1538a:	c284                	sw	s1,0(a3)
   1538c:	01e6a223          	sw	t5,4(a3)
   15390:	c4ba                	sw	a4,72(sp)
   15392:	c2be                	sw	a5,68(sp)
   15394:	06a1                	addi	a3,a3,8
   15396:	fef3d5e3          	bge	t2,a5,15380 <_vfiprintf_r+0x900>
   1539a:	0090                	addi	a2,sp,64
   1539c:	85d6                	mv	a1,s5
   1539e:	855e                	mv	a0,s7
   153a0:	00000097          	auipc	ra,0x0
   153a4:	45a080e7          	jalr	1114(ra) # 157fa <__sprint_r>
   153a8:	9e0512e3          	bnez	a0,14d8c <_vfiprintf_r+0x30c>
   153ac:	4f41                	li	t5,16
   153ae:	1441                	addi	s0,s0,-16
   153b0:	4726                	lw	a4,72(sp)
   153b2:	4796                	lw	a5,68(sp)
   153b4:	86e2                	mv	a3,s8
   153b6:	439d                	li	t2,7
   153b8:	fc8f47e3          	blt	t5,s0,15386 <_vfiprintf_r+0x906>
   153bc:	8326                	mv	t1,s1
   153be:	42a2                	lw	t0,8(sp)
   153c0:	4fb2                	lw	t6,12(sp)
   153c2:	5802                	lw	a6,32(sp)
   153c4:	5e12                	lw	t3,36(sp)
   153c6:	58a2                	lw	a7,40(sp)
   153c8:	44c2                	lw	s1,16(sp)
   153ca:	8ea2                	mv	t4,s0
   153cc:	8436                	mv	s0,a3
   153ce:	9776                	add	a4,a4,t4
   153d0:	0785                	addi	a5,a5,1
   153d2:	00642023          	sw	t1,0(s0)
   153d6:	01d42223          	sw	t4,4(s0)
   153da:	c4ba                	sw	a4,72(sp)
   153dc:	c2be                	sw	a5,68(sp)
   153de:	461d                	li	a2,7
   153e0:	0421                	addi	s0,s0,8
   153e2:	80f65de3          	bge	a2,a5,14bfc <_vfiprintf_r+0x17c>
   153e6:	0090                	addi	a2,sp,64
   153e8:	85d6                	mv	a1,s5
   153ea:	855e                	mv	a0,s7
   153ec:	d246                	sw	a7,36(sp)
   153ee:	d072                	sw	t3,32(sp)
   153f0:	c842                	sw	a6,16(sp)
   153f2:	c67e                	sw	t6,12(sp)
   153f4:	c416                	sw	t0,8(sp)
   153f6:	00000097          	auipc	ra,0x0
   153fa:	404080e7          	jalr	1028(ra) # 157fa <__sprint_r>
   153fe:	980517e3          	bnez	a0,14d8c <_vfiprintf_r+0x30c>
   15402:	4726                	lw	a4,72(sp)
   15404:	4796                	lw	a5,68(sp)
   15406:	5892                	lw	a7,36(sp)
   15408:	5e02                	lw	t3,32(sp)
   1540a:	4842                	lw	a6,16(sp)
   1540c:	4fb2                	lw	t6,12(sp)
   1540e:	42a2                	lw	t0,8(sp)
   15410:	8462                	mv	s0,s8
   15412:	feaff06f          	j	14bfc <_vfiprintf_r+0x17c>
   15416:	0090                	addi	a2,sp,64
   15418:	85d6                	mv	a1,s5
   1541a:	855e                	mv	a0,s7
   1541c:	d046                	sw	a7,32(sp)
   1541e:	c872                	sw	t3,16(sp)
   15420:	c642                	sw	a6,12(sp)
   15422:	c47e                	sw	t6,8(sp)
   15424:	00000097          	auipc	ra,0x0
   15428:	3d6080e7          	jalr	982(ra) # 157fa <__sprint_r>
   1542c:	960510e3          	bnez	a0,14d8c <_vfiprintf_r+0x30c>
   15430:	4726                	lw	a4,72(sp)
   15432:	4796                	lw	a5,68(sp)
   15434:	5882                	lw	a7,32(sp)
   15436:	4e42                	lw	t3,16(sp)
   15438:	4832                	lw	a6,12(sp)
   1543a:	4fa2                	lw	t6,8(sp)
   1543c:	8462                	mv	s0,s8
   1543e:	ffaff06f          	j	14c38 <_vfiprintf_r+0x1b8>
   15442:	010e7713          	andi	a4,t3,16
   15446:	000d2783          	lw	a5,0(s10)
   1544a:	0d11                	addi	s10,s10,4
   1544c:	e719                	bnez	a4,1545a <_vfiprintf_r+0x9da>
   1544e:	040e7713          	andi	a4,t3,64
   15452:	20070663          	beqz	a4,1565e <_vfiprintf_r+0xbde>
   15456:	07c2                	slli	a5,a5,0x10
   15458:	83c1                	srli	a5,a5,0x10
   1545a:	4881                	li	a7,0
   1545c:	b1b5                	j	150c8 <_vfiprintf_r+0x648>
   1545e:	01077613          	andi	a2,a4,16
   15462:	000d2783          	lw	a5,0(s10)
   15466:	0d11                	addi	s10,s10,4
   15468:	ee01                	bnez	a2,15480 <_vfiprintf_r+0xa00>
   1546a:	04077613          	andi	a2,a4,64
   1546e:	c609                	beqz	a2,15478 <_vfiprintf_r+0x9f8>
   15470:	07c2                	slli	a5,a5,0x10
   15472:	83c1                	srli	a5,a5,0x10
   15474:	4581                	li	a1,0
   15476:	bed1                	j	1504a <_vfiprintf_r+0x5ca>
   15478:	20077613          	andi	a2,a4,512
   1547c:	2a061a63          	bnez	a2,15730 <_vfiprintf_r+0xcb0>
   15480:	4581                	li	a1,0
   15482:	b6e1                	j	1504a <_vfiprintf_r+0x5ca>
   15484:	4881                	li	a7,0
   15486:	1984                	addi	s1,sp,240
   15488:	b485                	j	14ee8 <_vfiprintf_r+0x468>
   1548a:	000d2783          	lw	a5,0(s10)
   1548e:	41f95713          	srai	a4,s2,0x1f
   15492:	0d11                	addi	s10,s10,4
   15494:	0127a023          	sw	s2,0(a5)
   15498:	c3d8                	sw	a4,4(a5)
   1549a:	e9eff06f          	j	14b38 <_vfiprintf_r+0xb8>
   1549e:	88f2                	mv	a7,t3
   154a0:	84aa                	mv	s1,a0
   154a2:	b499                	j	14ee8 <_vfiprintf_r+0x468>
   154a4:	5dfd                	li	s11,-1
   154a6:	89b6                	mv	s3,a3
   154a8:	ef2ff06f          	j	14b9a <_vfiprintf_r+0x11a>
   154ac:	8e42                	mv	t3,a6
   154ae:	b109                	j	150b0 <_vfiprintf_r+0x630>
   154b0:	8742                	mv	a4,a6
   154b2:	b641                	j	15032 <_vfiprintf_r+0x5b2>
   154b4:	0001d7b7          	lui	a5,0x1d
   154b8:	43078793          	addi	a5,a5,1072 # 1d430 <__extenddftf2+0x14cc>
   154bc:	c23e                	sw	a5,4(sp)
   154be:	02087793          	andi	a5,a6,32
   154c2:	c3b1                	beqz	a5,15506 <_vfiprintf_r+0xa86>
   154c4:	0d1d                	addi	s10,s10,7
   154c6:	ff8d7d13          	andi	s10,s10,-8
   154ca:	000d2783          	lw	a5,0(s10)
   154ce:	004d2583          	lw	a1,4(s10)
   154d2:	0d21                	addi	s10,s10,8
   154d4:	00187713          	andi	a4,a6,1
   154d8:	cf01                	beqz	a4,154f0 <_vfiprintf_r+0xa70>
   154da:	00b7e733          	or	a4,a5,a1
   154de:	cb09                	beqz	a4,154f0 <_vfiprintf_r+0xa70>
   154e0:	03000713          	li	a4,48
   154e4:	02e10e23          	sb	a4,60(sp)
   154e8:	02c10ea3          	sb	a2,61(sp)
   154ec:	00286813          	ori	a6,a6,2
   154f0:	bff87813          	andi	a6,a6,-1025
   154f4:	b1a5                	j	1515c <_vfiprintf_r+0x6dc>
   154f6:	0001d7b7          	lui	a5,0x1d
   154fa:	41c78793          	addi	a5,a5,1052 # 1d41c <__extenddftf2+0x14b8>
   154fe:	c23e                	sw	a5,4(sp)
   15500:	02087793          	andi	a5,a6,32
   15504:	f3e1                	bnez	a5,154c4 <_vfiprintf_r+0xa44>
   15506:	01087713          	andi	a4,a6,16
   1550a:	000d2783          	lw	a5,0(s10)
   1550e:	0d11                	addi	s10,s10,4
   15510:	e705                	bnez	a4,15538 <_vfiprintf_r+0xab8>
   15512:	04087713          	andi	a4,a6,64
   15516:	cf09                	beqz	a4,15530 <_vfiprintf_r+0xab0>
   15518:	07c2                	slli	a5,a5,0x10
   1551a:	83c1                	srli	a5,a5,0x10
   1551c:	4581                	li	a1,0
   1551e:	bf5d                	j	154d4 <_vfiprintf_r+0xa54>
   15520:	8526                	mv	a0,s1
   15522:	00001097          	auipc	ra,0x1
   15526:	1f2080e7          	jalr	498(ra) # 16714 <strlen>
   1552a:	4822                	lw	a6,8(sp)
   1552c:	8e2a                	mv	t3,a0
   1552e:	bac5                	j	14f1e <_vfiprintf_r+0x49e>
   15530:	20087713          	andi	a4,a6,512
   15534:	1c071c63          	bnez	a4,1570c <_vfiprintf_r+0xc8c>
   15538:	4581                	li	a1,0
   1553a:	bf69                	j	154d4 <_vfiprintf_r+0xa54>
   1553c:	ccccdf37          	lui	t5,0xccccd
   15540:	ccccdfb7          	lui	t6,0xccccd
   15544:	42d2                	lw	t0,20(sp)
   15546:	40087e13          	andi	t3,a6,1024
   1554a:	4581                	li	a1,0
   1554c:	1988                	addi	a0,sp,240
   1554e:	4315                	li	t1,5
   15550:	ccdf0f13          	addi	t5,t5,-819 # cccccccd <__BSS_END__+0xcccae271>
   15554:	cccf8f93          	addi	t6,t6,-820 # cccccccc <__BSS_END__+0xcccae270>
   15558:	0ff00e93          	li	t4,255
   1555c:	a081                	j	1559c <_vfiprintf_r+0xb1c>
   1555e:	00f4b733          	sltu	a4,s1,a5
   15562:	9726                	add	a4,a4,s1
   15564:	02677733          	remu	a4,a4,t1
   15568:	40e78733          	sub	a4,a5,a4
   1556c:	00e7b633          	sltu	a2,a5,a4
   15570:	40c88633          	sub	a2,a7,a2
   15574:	03f703b3          	mul	t2,a4,t6
   15578:	03e60633          	mul	a2,a2,t5
   1557c:	03e73533          	mulhu	a0,a4,t5
   15580:	961e                	add	a2,a2,t2
   15582:	03e70733          	mul	a4,a4,t5
   15586:	962a                	add	a2,a2,a0
   15588:	01f61513          	slli	a0,a2,0x1f
   1558c:	8205                	srli	a2,a2,0x1
   1558e:	8305                	srli	a4,a4,0x1
   15590:	8f49                	or	a4,a4,a0
   15592:	16088763          	beqz	a7,15700 <_vfiprintf_r+0xc80>
   15596:	87ba                	mv	a5,a4
   15598:	88b2                	mv	a7,a2
   1559a:	8536                	mv	a0,a3
   1559c:	011784b3          	add	s1,a5,a7
   155a0:	00f4b733          	sltu	a4,s1,a5
   155a4:	9726                	add	a4,a4,s1
   155a6:	02677733          	remu	a4,a4,t1
   155aa:	fff50693          	addi	a3,a0,-1
   155ae:	0585                	addi	a1,a1,1
   155b0:	40e78733          	sub	a4,a5,a4
   155b4:	00e7b3b3          	sltu	t2,a5,a4
   155b8:	407883b3          	sub	t2,a7,t2
   155bc:	03e73633          	mulhu	a2,a4,t5
   155c0:	03e383b3          	mul	t2,t2,t5
   155c4:	03e70733          	mul	a4,a4,t5
   155c8:	93b2                	add	t2,t2,a2
   155ca:	03fe                	slli	t2,t2,0x1f
   155cc:	00175613          	srli	a2,a4,0x1
   155d0:	00c3e633          	or	a2,t2,a2
   155d4:	00261713          	slli	a4,a2,0x2
   155d8:	9732                	add	a4,a4,a2
   155da:	0706                	slli	a4,a4,0x1
   155dc:	40e78733          	sub	a4,a5,a4
   155e0:	03070713          	addi	a4,a4,48
   155e4:	fee50fa3          	sb	a4,-1(a0)
   155e8:	f60e0be3          	beqz	t3,1555e <_vfiprintf_r+0xade>
   155ec:	0002c703          	lbu	a4,0(t0)
   155f0:	f6b717e3          	bne	a4,a1,1555e <_vfiprintf_r+0xade>
   155f4:	f7d585e3          	beq	a1,t4,1555e <_vfiprintf_r+0xade>
   155f8:	06089e63          	bnez	a7,15674 <_vfiprintf_r+0xbf4>
   155fc:	4725                	li	a4,9
   155fe:	06f76b63          	bltu	a4,a5,15674 <_vfiprintf_r+0xbf4>
   15602:	84b6                	mv	s1,a3
   15604:	ca16                	sw	t0,20(sp)
   15606:	b391                	j	1534a <_vfiprintf_r+0x8ca>
   15608:	883a                	mv	a6,a4
   1560a:	4701                	li	a4,0
   1560c:	ae0704e3          	beqz	a4,150f4 <_vfiprintf_r+0x674>
   15610:	bb19                	j	15326 <_vfiprintf_r+0x8a6>
   15612:	00000097          	auipc	ra,0x0
   15616:	5ac080e7          	jalr	1452(ra) # 15bbe <__sinit>
   1561a:	c90ff06f          	j	14aaa <_vfiprintf_r+0x2a>
   1561e:	0019c783          	lbu	a5,1(s3)
   15622:	20086813          	ori	a6,a6,512
   15626:	0985                	addi	s3,s3,1
   15628:	d6eff06f          	j	14b96 <_vfiprintf_r+0x116>
   1562c:	0019c783          	lbu	a5,1(s3)
   15630:	02086813          	ori	a6,a6,32
   15634:	0985                	addi	s3,s3,1
   15636:	d60ff06f          	j	14b96 <_vfiprintf_r+0x116>
   1563a:	000d2783          	lw	a5,0(s10)
   1563e:	0d11                	addi	s10,s10,4
   15640:	0127a023          	sw	s2,0(a5)
   15644:	cf4ff06f          	j	14b38 <_vfiprintf_r+0xb8>
   15648:	4799                	li	a5,6
   1564a:	8e6e                	mv	t3,s11
   1564c:	0bb7ee63          	bltu	a5,s11,15708 <_vfiprintf_r+0xc88>
   15650:	0001d4b7          	lui	s1,0x1d
   15654:	88f2                	mv	a7,t3
   15656:	44448493          	addi	s1,s1,1092 # 1d444 <__extenddftf2+0x14e0>
   1565a:	d8aff06f          	j	14be4 <_vfiprintf_r+0x164>
   1565e:	200e7713          	andi	a4,t3,512
   15662:	de070ce3          	beqz	a4,1545a <_vfiprintf_r+0x9da>
   15666:	0ff7f793          	zext.b	a5,a5
   1566a:	4881                	li	a7,0
   1566c:	bcb1                	j	150c8 <_vfiprintf_r+0x648>
   1566e:	4781                	li	a5,0
   15670:	4581                	li	a1,0
   15672:	b955                	j	15326 <_vfiprintf_r+0x8a6>
   15674:	d43e                	sw	a5,40(sp)
   15676:	47e2                	lw	a5,24(sp)
   15678:	45f2                	lw	a1,28(sp)
   1567a:	d646                	sw	a7,44(sp)
   1567c:	8e9d                	sub	a3,a3,a5
   1567e:	863e                	mv	a2,a5
   15680:	8536                	mv	a0,a3
   15682:	d27e                	sw	t6,36(sp)
   15684:	d07a                	sw	t5,32(sp)
   15686:	ca72                	sw	t3,20(sp)
   15688:	c842                	sw	a6,16(sp)
   1568a:	c616                	sw	t0,12(sp)
   1568c:	c436                	sw	a3,8(sp)
   1568e:	00001097          	auipc	ra,0x1
   15692:	bc2080e7          	jalr	-1086(ra) # 16250 <strncpy>
   15696:	57a2                	lw	a5,40(sp)
   15698:	4615                	li	a2,5
   1569a:	42b2                	lw	t0,12(sp)
   1569c:	00f4b733          	sltu	a4,s1,a5
   156a0:	9726                	add	a4,a4,s1
   156a2:	02c77733          	remu	a4,a4,a2
   156a6:	0012c603          	lbu	a2,1(t0)
   156aa:	58b2                	lw	a7,44(sp)
   156ac:	ccccd537          	lui	a0,0xccccd
   156b0:	00c03633          	snez	a2,a2
   156b4:	ccccd3b7          	lui	t2,0xccccd
   156b8:	92b2                	add	t0,t0,a2
   156ba:	ccd50513          	addi	a0,a0,-819 # cccccccd <__BSS_END__+0xcccae271>
   156be:	ccc38393          	addi	t2,t2,-820 # cccccccc <__BSS_END__+0xcccae270>
   156c2:	46a2                	lw	a3,8(sp)
   156c4:	4842                	lw	a6,16(sp)
   156c6:	4e52                	lw	t3,20(sp)
   156c8:	5f02                	lw	t5,32(sp)
   156ca:	5f92                	lw	t6,36(sp)
   156cc:	4581                	li	a1,0
   156ce:	4315                	li	t1,5
   156d0:	0ff00e93          	li	t4,255
   156d4:	40e78733          	sub	a4,a5,a4
   156d8:	00e7b633          	sltu	a2,a5,a4
   156dc:	40c88633          	sub	a2,a7,a2
   156e0:	027703b3          	mul	t2,a4,t2
   156e4:	02a60633          	mul	a2,a2,a0
   156e8:	02a738b3          	mulhu	a7,a4,a0
   156ec:	961e                	add	a2,a2,t2
   156ee:	02a707b3          	mul	a5,a4,a0
   156f2:	9646                	add	a2,a2,a7
   156f4:	01f61713          	slli	a4,a2,0x1f
   156f8:	8205                	srli	a2,a2,0x1
   156fa:	8385                	srli	a5,a5,0x1
   156fc:	8f5d                	or	a4,a4,a5
   156fe:	bd61                	j	15596 <_vfiprintf_r+0xb16>
   15700:	4525                	li	a0,9
   15702:	e8f56ae3          	bltu	a0,a5,15596 <_vfiprintf_r+0xb16>
   15706:	bdf5                	j	15602 <_vfiprintf_r+0xb82>
   15708:	4e19                	li	t3,6
   1570a:	b799                	j	15650 <_vfiprintf_r+0xbd0>
   1570c:	0ff7f793          	zext.b	a5,a5
   15710:	4581                	li	a1,0
   15712:	b3c9                	j	154d4 <_vfiprintf_r+0xa54>
   15714:	07e2                	slli	a5,a5,0x18
   15716:	87e1                	srai	a5,a5,0x18
   15718:	41f7d893          	srai	a7,a5,0x1f
   1571c:	8746                	mv	a4,a7
   1571e:	db8ff06f          	j	14cd6 <_vfiprintf_r+0x256>
   15722:	000d2783          	lw	a5,0(s10)
   15726:	0d11                	addi	s10,s10,4
   15728:	01279023          	sh	s2,0(a5)
   1572c:	c0cff06f          	j	14b38 <_vfiprintf_r+0xb8>
   15730:	0ff7f793          	zext.b	a5,a5
   15734:	4581                	li	a1,0
   15736:	ba11                	j	1504a <_vfiprintf_r+0x5ca>
   15738:	03000793          	li	a5,48
   1573c:	f9aff06f          	j	14ed6 <_vfiprintf_r+0x456>
   15740:	5d7d                	li	s10,-1
   15742:	e72ff06f          	j	14db4 <_vfiprintf_r+0x334>
   15746:	000d2d83          	lw	s11,0(s10)
   1574a:	0d11                	addi	s10,s10,4
   1574c:	000dd363          	bgez	s11,15752 <_vfiprintf_r+0xcd2>
   15750:	5dfd                	li	s11,-1
   15752:	0019c783          	lbu	a5,1(s3)
   15756:	89b6                	mv	s3,a3
   15758:	c3eff06f          	j	14b96 <_vfiprintf_r+0x116>

0001575c <__sbprintf>:
   1575c:	b8010113          	addi	sp,sp,-1152
   15760:	00c59783          	lh	a5,12(a1)
   15764:	00e5d703          	lhu	a4,14(a1)
   15768:	46812c23          	sw	s0,1144(sp)
   1576c:	842e                	mv	s0,a1
   1576e:	65c1                	lui	a1,0x10
   15770:	15f5                	addi	a1,a1,-3 # fffd <exit-0x97>
   15772:	06442e03          	lw	t3,100(s0)
   15776:	01c42303          	lw	t1,28(s0)
   1577a:	02442883          	lw	a7,36(s0)
   1577e:	0742                	slli	a4,a4,0x10
   15780:	8fed                	and	a5,a5,a1
   15782:	8fd9                	or	a5,a5,a4
   15784:	40000813          	li	a6,1024
   15788:	ca3e                	sw	a5,20(sp)
   1578a:	002c                	addi	a1,sp,8
   1578c:	189c                	addi	a5,sp,112
   1578e:	46912a23          	sw	s1,1140(sp)
   15792:	47212823          	sw	s2,1136(sp)
   15796:	46112e23          	sw	ra,1148(sp)
   1579a:	892a                	mv	s2,a0
   1579c:	d6f2                	sw	t3,108(sp)
   1579e:	d21a                	sw	t1,36(sp)
   157a0:	d646                	sw	a7,44(sp)
   157a2:	c43e                	sw	a5,8(sp)
   157a4:	cc3e                	sw	a5,24(sp)
   157a6:	c842                	sw	a6,16(sp)
   157a8:	ce42                	sw	a6,28(sp)
   157aa:	d002                	sw	zero,32(sp)
   157ac:	fffff097          	auipc	ra,0xfffff
   157b0:	2d4080e7          	jalr	724(ra) # 14a80 <_vfiprintf_r>
   157b4:	84aa                	mv	s1,a0
   157b6:	02055963          	bgez	a0,157e8 <__sbprintf+0x8c>
   157ba:	01415783          	lhu	a5,20(sp)
   157be:	0407f793          	andi	a5,a5,64
   157c2:	c799                	beqz	a5,157d0 <__sbprintf+0x74>
   157c4:	00c45783          	lhu	a5,12(s0)
   157c8:	0407e793          	ori	a5,a5,64
   157cc:	00f41623          	sh	a5,12(s0)
   157d0:	47c12083          	lw	ra,1148(sp)
   157d4:	47812403          	lw	s0,1144(sp)
   157d8:	47012903          	lw	s2,1136(sp)
   157dc:	8526                	mv	a0,s1
   157de:	47412483          	lw	s1,1140(sp)
   157e2:	48010113          	addi	sp,sp,1152
   157e6:	8082                	ret
   157e8:	002c                	addi	a1,sp,8
   157ea:	854a                	mv	a0,s2
   157ec:	00000097          	auipc	ra,0x0
   157f0:	1d8080e7          	jalr	472(ra) # 159c4 <_fflush_r>
   157f4:	d179                	beqz	a0,157ba <__sbprintf+0x5e>
   157f6:	54fd                	li	s1,-1
   157f8:	b7c9                	j	157ba <__sbprintf+0x5e>

000157fa <__sprint_r>:
   157fa:	461c                	lw	a5,8(a2)
   157fc:	1141                	addi	sp,sp,-16
   157fe:	c422                	sw	s0,8(sp)
   15800:	c606                	sw	ra,12(sp)
   15802:	8432                	mv	s0,a2
   15804:	eb81                	bnez	a5,15814 <__sprint_r+0x1a>
   15806:	40b2                	lw	ra,12(sp)
   15808:	00042223          	sw	zero,4(s0)
   1580c:	4422                	lw	s0,8(sp)
   1580e:	4501                	li	a0,0
   15810:	0141                	addi	sp,sp,16
   15812:	8082                	ret
   15814:	00000097          	auipc	ra,0x0
   15818:	3d0080e7          	jalr	976(ra) # 15be4 <__sfvwrite_r>
   1581c:	40b2                	lw	ra,12(sp)
   1581e:	00042423          	sw	zero,8(s0)
   15822:	00042223          	sw	zero,4(s0)
   15826:	4422                	lw	s0,8(sp)
   15828:	0141                	addi	sp,sp,16
   1582a:	8082                	ret

0001582c <__sflush_r>:
   1582c:	00c59703          	lh	a4,12(a1)
   15830:	1101                	addi	sp,sp,-32
   15832:	cc22                	sw	s0,24(sp)
   15834:	c64e                	sw	s3,12(sp)
   15836:	ce06                	sw	ra,28(sp)
   15838:	00877793          	andi	a5,a4,8
   1583c:	842e                	mv	s0,a1
   1583e:	89aa                	mv	s3,a0
   15840:	e7f1                	bnez	a5,1590c <__sflush_r+0xe0>
   15842:	6785                	lui	a5,0x1
   15844:	80078793          	addi	a5,a5,-2048 # 800 <exit-0xf894>
   15848:	41d4                	lw	a3,4(a1)
   1584a:	8fd9                	or	a5,a5,a4
   1584c:	00f59623          	sh	a5,12(a1)
   15850:	10d05763          	blez	a3,1595e <__sflush_r+0x132>
   15854:	02842803          	lw	a6,40(s0)
   15858:	0a080463          	beqz	a6,15900 <__sflush_r+0xd4>
   1585c:	ca26                	sw	s1,20(sp)
   1585e:	01371693          	slli	a3,a4,0x13
   15862:	0009a483          	lw	s1,0(s3)
   15866:	0009a023          	sw	zero,0(s3)
   1586a:	4c4c                	lw	a1,28(s0)
   1586c:	1006c063          	bltz	a3,1596c <__sflush_r+0x140>
   15870:	4601                	li	a2,0
   15872:	4685                	li	a3,1
   15874:	854e                	mv	a0,s3
   15876:	9802                	jalr	a6
   15878:	57fd                	li	a5,-1
   1587a:	862a                	mv	a2,a0
   1587c:	12f50163          	beq	a0,a5,1599e <__sflush_r+0x172>
   15880:	00c41783          	lh	a5,12(s0)
   15884:	02842803          	lw	a6,40(s0)
   15888:	4c4c                	lw	a1,28(s0)
   1588a:	8b91                	andi	a5,a5,4
   1588c:	c799                	beqz	a5,1589a <__sflush_r+0x6e>
   1588e:	4058                	lw	a4,4(s0)
   15890:	581c                	lw	a5,48(s0)
   15892:	8e19                	sub	a2,a2,a4
   15894:	c399                	beqz	a5,1589a <__sflush_r+0x6e>
   15896:	5c5c                	lw	a5,60(s0)
   15898:	8e1d                	sub	a2,a2,a5
   1589a:	4681                	li	a3,0
   1589c:	854e                	mv	a0,s3
   1589e:	9802                	jalr	a6
   158a0:	57fd                	li	a5,-1
   158a2:	0cf51763          	bne	a0,a5,15970 <__sflush_r+0x144>
   158a6:	0009a683          	lw	a3,0(s3)
   158aa:	47f5                	li	a5,29
   158ac:	00c41703          	lh	a4,12(s0)
   158b0:	10d7e363          	bltu	a5,a3,159b6 <__sflush_r+0x18a>
   158b4:	204007b7          	lui	a5,0x20400
   158b8:	0785                	addi	a5,a5,1 # 20400001 <__BSS_END__+0x203e15a5>
   158ba:	00d7d7b3          	srl	a5,a5,a3
   158be:	8b85                	andi	a5,a5,1
   158c0:	cbfd                	beqz	a5,159b6 <__sflush_r+0x18a>
   158c2:	4810                	lw	a2,16(s0)
   158c4:	77fd                	lui	a5,0xfffff
   158c6:	7ff78793          	addi	a5,a5,2047 # fffff7ff <__BSS_END__+0xfffe0da3>
   158ca:	8ff9                	and	a5,a5,a4
   158cc:	00f41623          	sh	a5,12(s0)
   158d0:	00042223          	sw	zero,4(s0)
   158d4:	c010                	sw	a2,0(s0)
   158d6:	01371793          	slli	a5,a4,0x13
   158da:	0007d363          	bgez	a5,158e0 <__sflush_r+0xb4>
   158de:	cacd                	beqz	a3,15990 <__sflush_r+0x164>
   158e0:	580c                	lw	a1,48(s0)
   158e2:	0099a023          	sw	s1,0(s3)
   158e6:	c9d5                	beqz	a1,1599a <__sflush_r+0x16e>
   158e8:	04040793          	addi	a5,s0,64
   158ec:	00f58763          	beq	a1,a5,158fa <__sflush_r+0xce>
   158f0:	854e                	mv	a0,s3
   158f2:	00001097          	auipc	ra,0x1
   158f6:	1ce080e7          	jalr	462(ra) # 16ac0 <_free_r>
   158fa:	44d2                	lw	s1,20(sp)
   158fc:	02042823          	sw	zero,48(s0)
   15900:	4501                	li	a0,0
   15902:	40f2                	lw	ra,28(sp)
   15904:	4462                	lw	s0,24(sp)
   15906:	49b2                	lw	s3,12(sp)
   15908:	6105                	addi	sp,sp,32
   1590a:	8082                	ret
   1590c:	c84a                	sw	s2,16(sp)
   1590e:	0105a903          	lw	s2,16(a1)
   15912:	04090b63          	beqz	s2,15968 <__sflush_r+0x13c>
   15916:	ca26                	sw	s1,20(sp)
   15918:	4184                	lw	s1,0(a1)
   1591a:	8b0d                	andi	a4,a4,3
   1591c:	0125a023          	sw	s2,0(a1)
   15920:	412484b3          	sub	s1,s1,s2
   15924:	4781                	li	a5,0
   15926:	e311                	bnez	a4,1592a <__sflush_r+0xfe>
   15928:	49dc                	lw	a5,20(a1)
   1592a:	c41c                	sw	a5,8(s0)
   1592c:	00904663          	bgtz	s1,15938 <__sflush_r+0x10c>
   15930:	a81d                	j	15966 <__sflush_r+0x13a>
   15932:	992a                	add	s2,s2,a0
   15934:	02905963          	blez	s1,15966 <__sflush_r+0x13a>
   15938:	505c                	lw	a5,36(s0)
   1593a:	4c4c                	lw	a1,28(s0)
   1593c:	86a6                	mv	a3,s1
   1593e:	864a                	mv	a2,s2
   15940:	854e                	mv	a0,s3
   15942:	9782                	jalr	a5
   15944:	8c89                	sub	s1,s1,a0
   15946:	fea046e3          	bgtz	a0,15932 <__sflush_r+0x106>
   1594a:	00c41703          	lh	a4,12(s0)
   1594e:	4942                	lw	s2,16(sp)
   15950:	04076713          	ori	a4,a4,64
   15954:	44d2                	lw	s1,20(sp)
   15956:	00e41623          	sh	a4,12(s0)
   1595a:	557d                	li	a0,-1
   1595c:	b75d                	j	15902 <__sflush_r+0xd6>
   1595e:	5dd4                	lw	a3,60(a1)
   15960:	eed04ae3          	bgtz	a3,15854 <__sflush_r+0x28>
   15964:	bf71                	j	15900 <__sflush_r+0xd4>
   15966:	44d2                	lw	s1,20(sp)
   15968:	4942                	lw	s2,16(sp)
   1596a:	bf59                	j	15900 <__sflush_r+0xd4>
   1596c:	4830                	lw	a2,80(s0)
   1596e:	bf31                	j	1588a <__sflush_r+0x5e>
   15970:	00c41703          	lh	a4,12(s0)
   15974:	4814                	lw	a3,16(s0)
   15976:	77fd                	lui	a5,0xfffff
   15978:	7ff78793          	addi	a5,a5,2047 # fffff7ff <__BSS_END__+0xfffe0da3>
   1597c:	8ff9                	and	a5,a5,a4
   1597e:	00f41623          	sh	a5,12(s0)
   15982:	00042223          	sw	zero,4(s0)
   15986:	c014                	sw	a3,0(s0)
   15988:	01371793          	slli	a5,a4,0x13
   1598c:	f407dae3          	bgez	a5,158e0 <__sflush_r+0xb4>
   15990:	580c                	lw	a1,48(s0)
   15992:	c828                	sw	a0,80(s0)
   15994:	0099a023          	sw	s1,0(s3)
   15998:	f9a1                	bnez	a1,158e8 <__sflush_r+0xbc>
   1599a:	44d2                	lw	s1,20(sp)
   1599c:	b795                	j	15900 <__sflush_r+0xd4>
   1599e:	0009a783          	lw	a5,0(s3)
   159a2:	ec078fe3          	beqz	a5,15880 <__sflush_r+0x54>
   159a6:	4775                	li	a4,29
   159a8:	00e78a63          	beq	a5,a4,159bc <__sflush_r+0x190>
   159ac:	4759                	li	a4,22
   159ae:	00e78763          	beq	a5,a4,159bc <__sflush_r+0x190>
   159b2:	00c41703          	lh	a4,12(s0)
   159b6:	04076713          	ori	a4,a4,64
   159ba:	bf69                	j	15954 <__sflush_r+0x128>
   159bc:	0099a023          	sw	s1,0(s3)
   159c0:	44d2                	lw	s1,20(sp)
   159c2:	bf3d                	j	15900 <__sflush_r+0xd4>

000159c4 <_fflush_r>:
   159c4:	1101                	addi	sp,sp,-32
   159c6:	cc22                	sw	s0,24(sp)
   159c8:	ce06                	sw	ra,28(sp)
   159ca:	842a                	mv	s0,a0
   159cc:	c119                	beqz	a0,159d2 <_fflush_r+0xe>
   159ce:	595c                	lw	a5,52(a0)
   159d0:	c38d                	beqz	a5,159f2 <_fflush_r+0x2e>
   159d2:	00c59783          	lh	a5,12(a1)
   159d6:	e791                	bnez	a5,159e2 <_fflush_r+0x1e>
   159d8:	40f2                	lw	ra,28(sp)
   159da:	4462                	lw	s0,24(sp)
   159dc:	4501                	li	a0,0
   159de:	6105                	addi	sp,sp,32
   159e0:	8082                	ret
   159e2:	8522                	mv	a0,s0
   159e4:	4462                	lw	s0,24(sp)
   159e6:	40f2                	lw	ra,28(sp)
   159e8:	6105                	addi	sp,sp,32
   159ea:	00000317          	auipc	t1,0x0
   159ee:	e4230067          	jr	-446(t1) # 1582c <__sflush_r>
   159f2:	c62e                	sw	a1,12(sp)
   159f4:	00000097          	auipc	ra,0x0
   159f8:	1ca080e7          	jalr	458(ra) # 15bbe <__sinit>
   159fc:	45b2                	lw	a1,12(sp)
   159fe:	bfd1                	j	159d2 <_fflush_r+0xe>

00015a00 <stdio_exit_handler>:
   15a00:	0001e637          	lui	a2,0x1e
   15a04:	0001a5b7          	lui	a1,0x1a
   15a08:	0001e537          	lui	a0,0x1e
   15a0c:	01060613          	addi	a2,a2,16 # 1e010 <__sglue>
   15a10:	a7e58593          	addi	a1,a1,-1410 # 19a7e <_fclose_r>
   15a14:	02050513          	addi	a0,a0,32 # 1e020 <_impure_data>
   15a18:	00000317          	auipc	t1,0x0
   15a1c:	55c30067          	jr	1372(t1) # 15f74 <_fwalk_sglue>

00015a20 <cleanup_stdio>:
   15a20:	414c                	lw	a1,4(a0)
   15a22:	1141                	addi	sp,sp,-16
   15a24:	0001e7b7          	lui	a5,0x1e
   15a28:	c422                	sw	s0,8(sp)
   15a2a:	c606                	sw	ra,12(sp)
   15a2c:	76c78793          	addi	a5,a5,1900 # 1e76c <__sf>
   15a30:	842a                	mv	s0,a0
   15a32:	00f58663          	beq	a1,a5,15a3e <cleanup_stdio+0x1e>
   15a36:	00004097          	auipc	ra,0x4
   15a3a:	048080e7          	jalr	72(ra) # 19a7e <_fclose_r>
   15a3e:	440c                	lw	a1,8(s0)
   15a40:	0001e7b7          	lui	a5,0x1e
   15a44:	7d478793          	addi	a5,a5,2004 # 1e7d4 <__sf+0x68>
   15a48:	00f58763          	beq	a1,a5,15a56 <cleanup_stdio+0x36>
   15a4c:	8522                	mv	a0,s0
   15a4e:	00004097          	auipc	ra,0x4
   15a52:	030080e7          	jalr	48(ra) # 19a7e <_fclose_r>
   15a56:	444c                	lw	a1,12(s0)
   15a58:	0001f7b7          	lui	a5,0x1f
   15a5c:	83c78793          	addi	a5,a5,-1988 # 1e83c <__global_pointer$+0x2c>
   15a60:	00f58a63          	beq	a1,a5,15a74 <cleanup_stdio+0x54>
   15a64:	8522                	mv	a0,s0
   15a66:	4422                	lw	s0,8(sp)
   15a68:	40b2                	lw	ra,12(sp)
   15a6a:	0141                	addi	sp,sp,16
   15a6c:	00004317          	auipc	t1,0x4
   15a70:	01230067          	jr	18(t1) # 19a7e <_fclose_r>
   15a74:	40b2                	lw	ra,12(sp)
   15a76:	4422                	lw	s0,8(sp)
   15a78:	0141                	addi	sp,sp,16
   15a7a:	8082                	ret

00015a7c <global_stdio_init.part.0>:
   15a7c:	1101                	addi	sp,sp,-32
   15a7e:	000167b7          	lui	a5,0x16
   15a82:	cc22                	sw	s0,24(sp)
   15a84:	0001e737          	lui	a4,0x1e
   15a88:	a0078793          	addi	a5,a5,-1536 # 15a00 <stdio_exit_handler>
   15a8c:	0001e437          	lui	s0,0x1e
   15a90:	0001e537          	lui	a0,0x1e
   15a94:	76c40413          	addi	s0,s0,1900 # 1e76c <__sf>
   15a98:	ce06                	sw	ra,28(sp)
   15a9a:	ca26                	sw	s1,20(sp)
   15a9c:	c84a                	sw	s2,16(sp)
   15a9e:	c64e                	sw	s3,12(sp)
   15aa0:	c452                	sw	s4,8(sp)
   15aa2:	72f72a23          	sw	a5,1844(a4) # 1e734 <__stdio_exit_handler>
   15aa6:	4621                	li	a2,8
   15aa8:	4791                	li	a5,4
   15aaa:	4581                	li	a1,0
   15aac:	7c850513          	addi	a0,a0,1992 # 1e7c8 <__sf+0x5c>
   15ab0:	c45c                	sw	a5,12(s0)
   15ab2:	00042023          	sw	zero,0(s0)
   15ab6:	00042223          	sw	zero,4(s0)
   15aba:	00042423          	sw	zero,8(s0)
   15abe:	06042223          	sw	zero,100(s0)
   15ac2:	00042823          	sw	zero,16(s0)
   15ac6:	00042a23          	sw	zero,20(s0)
   15aca:	00042c23          	sw	zero,24(s0)
   15ace:	00001097          	auipc	ra,0x1
   15ad2:	a58080e7          	jalr	-1448(ra) # 16526 <memset>
   15ad6:	67c1                	lui	a5,0x10
   15ad8:	00016a37          	lui	s4,0x16
   15adc:	000169b7          	lui	s3,0x16
   15ae0:	00016937          	lui	s2,0x16
   15ae4:	000164b7          	lui	s1,0x16
   15ae8:	0001f537          	lui	a0,0x1f
   15aec:	fe6a0a13          	addi	s4,s4,-26 # 15fe6 <__sread>
   15af0:	02298993          	addi	s3,s3,34 # 16022 <__swrite>
   15af4:	07e90913          	addi	s2,s2,126 # 1607e <__sseek>
   15af8:	0cc48493          	addi	s1,s1,204 # 160cc <__sclose>
   15afc:	07a5                	addi	a5,a5,9 # 10009 <exit-0x8b>
   15afe:	4621                	li	a2,8
   15b00:	4581                	li	a1,0
   15b02:	83050513          	addi	a0,a0,-2000 # 1e830 <__global_pointer$+0x20>
   15b06:	03442023          	sw	s4,32(s0)
   15b0a:	03342223          	sw	s3,36(s0)
   15b0e:	03242423          	sw	s2,40(s0)
   15b12:	d444                	sw	s1,44(s0)
   15b14:	d87c                	sw	a5,116(s0)
   15b16:	cc40                	sw	s0,28(s0)
   15b18:	06042423          	sw	zero,104(s0)
   15b1c:	06042623          	sw	zero,108(s0)
   15b20:	06042823          	sw	zero,112(s0)
   15b24:	0c042623          	sw	zero,204(s0)
   15b28:	06042c23          	sw	zero,120(s0)
   15b2c:	06042e23          	sw	zero,124(s0)
   15b30:	08042023          	sw	zero,128(s0)
   15b34:	00001097          	auipc	ra,0x1
   15b38:	9f2080e7          	jalr	-1550(ra) # 16526 <memset>
   15b3c:	000207b7          	lui	a5,0x20
   15b40:	0001f537          	lui	a0,0x1f
   15b44:	0001e737          	lui	a4,0x1e
   15b48:	07c9                	addi	a5,a5,18 # 20012 <__BSS_END__+0x15b6>
   15b4a:	7d470713          	addi	a4,a4,2004 # 1e7d4 <__sf+0x68>
   15b4e:	4621                	li	a2,8
   15b50:	4581                	li	a1,0
   15b52:	89850513          	addi	a0,a0,-1896 # 1e898 <__global_pointer$+0x88>
   15b56:	09442423          	sw	s4,136(s0)
   15b5a:	09342623          	sw	s3,140(s0)
   15b5e:	09242823          	sw	s2,144(s0)
   15b62:	08942a23          	sw	s1,148(s0)
   15b66:	0cf42e23          	sw	a5,220(s0)
   15b6a:	08e42223          	sw	a4,132(s0)
   15b6e:	0c042823          	sw	zero,208(s0)
   15b72:	0c042a23          	sw	zero,212(s0)
   15b76:	0c042c23          	sw	zero,216(s0)
   15b7a:	12042a23          	sw	zero,308(s0)
   15b7e:	0e042023          	sw	zero,224(s0)
   15b82:	0e042223          	sw	zero,228(s0)
   15b86:	0e042423          	sw	zero,232(s0)
   15b8a:	00001097          	auipc	ra,0x1
   15b8e:	99c080e7          	jalr	-1636(ra) # 16526 <memset>
   15b92:	0001f7b7          	lui	a5,0x1f
   15b96:	83c78793          	addi	a5,a5,-1988 # 1e83c <__global_pointer$+0x2c>
   15b9a:	0f442823          	sw	s4,240(s0)
   15b9e:	0f342a23          	sw	s3,244(s0)
   15ba2:	0f242c23          	sw	s2,248(s0)
   15ba6:	0e942e23          	sw	s1,252(s0)
   15baa:	40f2                	lw	ra,28(sp)
   15bac:	0ef42623          	sw	a5,236(s0)
   15bb0:	4462                	lw	s0,24(sp)
   15bb2:	44d2                	lw	s1,20(sp)
   15bb4:	4942                	lw	s2,16(sp)
   15bb6:	49b2                	lw	s3,12(sp)
   15bb8:	4a22                	lw	s4,8(sp)
   15bba:	6105                	addi	sp,sp,32
   15bbc:	8082                	ret

00015bbe <__sinit>:
   15bbe:	595c                	lw	a5,52(a0)
   15bc0:	c391                	beqz	a5,15bc4 <__sinit+0x6>
   15bc2:	8082                	ret
   15bc4:	0001e7b7          	lui	a5,0x1e
   15bc8:	7347a703          	lw	a4,1844(a5) # 1e734 <__stdio_exit_handler>
   15bcc:	000167b7          	lui	a5,0x16
   15bd0:	a2078793          	addi	a5,a5,-1504 # 15a20 <cleanup_stdio>
   15bd4:	d95c                	sw	a5,52(a0)
   15bd6:	f775                	bnez	a4,15bc2 <__sinit+0x4>
   15bd8:	00000317          	auipc	t1,0x0
   15bdc:	ea430067          	jr	-348(t1) # 15a7c <global_stdio_init.part.0>

00015be0 <__sfp_lock_acquire>:
   15be0:	8082                	ret

00015be2 <__sfp_lock_release>:
   15be2:	8082                	ret

00015be4 <__sfvwrite_r>:
   15be4:	461c                	lw	a5,8(a2)
   15be6:	1e078a63          	beqz	a5,15dda <__sfvwrite_r+0x1f6>
   15bea:	00c59683          	lh	a3,12(a1)
   15bee:	7179                	addi	sp,sp,-48
   15bf0:	d422                	sw	s0,40(sp)
   15bf2:	cc52                	sw	s4,24(sp)
   15bf4:	c85a                	sw	s6,16(sp)
   15bf6:	d606                	sw	ra,44(sp)
   15bf8:	0086f793          	andi	a5,a3,8
   15bfc:	8b32                	mv	s6,a2
   15bfe:	8a2a                	mv	s4,a0
   15c00:	842e                	mv	s0,a1
   15c02:	c7ad                	beqz	a5,15c6c <__sfvwrite_r+0x88>
   15c04:	499c                	lw	a5,16(a1)
   15c06:	c3bd                	beqz	a5,15c6c <__sfvwrite_r+0x88>
   15c08:	d226                	sw	s1,36(sp)
   15c0a:	d04a                	sw	s2,32(sp)
   15c0c:	ce4e                	sw	s3,28(sp)
   15c0e:	ca56                	sw	s5,20(sp)
   15c10:	0026f793          	andi	a5,a3,2
   15c14:	000b2483          	lw	s1,0(s6)
   15c18:	cfad                	beqz	a5,15c92 <__sfvwrite_r+0xae>
   15c1a:	505c                	lw	a5,36(s0)
   15c1c:	4c4c                	lw	a1,28(s0)
   15c1e:	80000ab7          	lui	s5,0x80000
   15c22:	4981                	li	s3,0
   15c24:	4901                	li	s2,0
   15c26:	c00a8a93          	addi	s5,s5,-1024 # 7ffffc00 <__BSS_END__+0x7ffe11a4>
   15c2a:	864e                	mv	a2,s3
   15c2c:	8552                	mv	a0,s4
   15c2e:	02090963          	beqz	s2,15c60 <__sfvwrite_r+0x7c>
   15c32:	86ca                	mv	a3,s2
   15c34:	012af363          	bgeu	s5,s2,15c3a <__sfvwrite_r+0x56>
   15c38:	86d6                	mv	a3,s5
   15c3a:	9782                	jalr	a5
   15c3c:	32a05063          	blez	a0,15f5c <__sfvwrite_r+0x378>
   15c40:	008b2783          	lw	a5,8(s6)
   15c44:	99aa                	add	s3,s3,a0
   15c46:	40a90933          	sub	s2,s2,a0
   15c4a:	8f89                	sub	a5,a5,a0
   15c4c:	00fb2423          	sw	a5,8(s6)
   15c50:	14078063          	beqz	a5,15d90 <__sfvwrite_r+0x1ac>
   15c54:	505c                	lw	a5,36(s0)
   15c56:	4c4c                	lw	a1,28(s0)
   15c58:	864e                	mv	a2,s3
   15c5a:	8552                	mv	a0,s4
   15c5c:	fc091be3          	bnez	s2,15c32 <__sfvwrite_r+0x4e>
   15c60:	0004a983          	lw	s3,0(s1)
   15c64:	0044a903          	lw	s2,4(s1)
   15c68:	04a1                	addi	s1,s1,8
   15c6a:	b7c1                	j	15c2a <__sfvwrite_r+0x46>
   15c6c:	85a2                	mv	a1,s0
   15c6e:	8552                	mv	a0,s4
   15c70:	00000097          	auipc	ra,0x0
   15c74:	468080e7          	jalr	1128(ra) # 160d8 <__swsetup_r>
   15c78:	14051a63          	bnez	a0,15dcc <__sfvwrite_r+0x1e8>
   15c7c:	00c41683          	lh	a3,12(s0)
   15c80:	d226                	sw	s1,36(sp)
   15c82:	d04a                	sw	s2,32(sp)
   15c84:	ce4e                	sw	s3,28(sp)
   15c86:	ca56                	sw	s5,20(sp)
   15c88:	0026f793          	andi	a5,a3,2
   15c8c:	000b2483          	lw	s1,0(s6)
   15c90:	f7c9                	bnez	a5,15c1a <__sfvwrite_r+0x36>
   15c92:	c65e                	sw	s7,12(sp)
   15c94:	c462                	sw	s8,8(sp)
   15c96:	0016f793          	andi	a5,a3,1
   15c9a:	14079263          	bnez	a5,15dde <__sfvwrite_r+0x1fa>
   15c9e:	401c                	lw	a5,0(s0)
   15ca0:	4418                	lw	a4,8(s0)
   15ca2:	80000ab7          	lui	s5,0x80000
   15ca6:	c266                	sw	s9,4(sp)
   15ca8:	4b81                	li	s7,0
   15caa:	4981                	li	s3,0
   15cac:	1afd                	addi	s5,s5,-1 # 7fffffff <__BSS_END__+0x7ffe15a3>
   15cae:	853e                	mv	a0,a5
   15cb0:	8c3a                	mv	s8,a4
   15cb2:	0c098663          	beqz	s3,15d7e <__sfvwrite_r+0x19a>
   15cb6:	2006f613          	andi	a2,a3,512
   15cba:	1c060963          	beqz	a2,15e8c <__sfvwrite_r+0x2a8>
   15cbe:	8cba                	mv	s9,a4
   15cc0:	22e9ef63          	bltu	s3,a4,15efe <__sfvwrite_r+0x31a>
   15cc4:	4806f713          	andi	a4,a3,1152
   15cc8:	cf25                	beqz	a4,15d40 <__sfvwrite_r+0x15c>
   15cca:	4850                	lw	a2,20(s0)
   15ccc:	480c                	lw	a1,16(s0)
   15cce:	00161713          	slli	a4,a2,0x1
   15cd2:	9732                	add	a4,a4,a2
   15cd4:	40b78933          	sub	s2,a5,a1
   15cd8:	01f75c13          	srli	s8,a4,0x1f
   15cdc:	9c3a                	add	s8,s8,a4
   15cde:	00190793          	addi	a5,s2,1
   15ce2:	401c5c13          	srai	s8,s8,0x1
   15ce6:	97ce                	add	a5,a5,s3
   15ce8:	8662                	mv	a2,s8
   15cea:	00fc7463          	bgeu	s8,a5,15cf2 <__sfvwrite_r+0x10e>
   15cee:	8c3e                	mv	s8,a5
   15cf0:	863e                	mv	a2,a5
   15cf2:	4006f693          	andi	a3,a3,1024
   15cf6:	22068663          	beqz	a3,15f22 <__sfvwrite_r+0x33e>
   15cfa:	85b2                	mv	a1,a2
   15cfc:	8552                	mv	a0,s4
   15cfe:	00003097          	auipc	ra,0x3
   15d02:	a0c080e7          	jalr	-1524(ra) # 1870a <_malloc_r>
   15d06:	8caa                	mv	s9,a0
   15d08:	24050d63          	beqz	a0,15f62 <__sfvwrite_r+0x37e>
   15d0c:	480c                	lw	a1,16(s0)
   15d0e:	864a                	mv	a2,s2
   15d10:	00001097          	auipc	ra,0x1
   15d14:	8be080e7          	jalr	-1858(ra) # 165ce <memcpy>
   15d18:	00c45783          	lhu	a5,12(s0)
   15d1c:	b7f7f793          	andi	a5,a5,-1153
   15d20:	0807e793          	ori	a5,a5,128
   15d24:	00f41623          	sh	a5,12(s0)
   15d28:	012c8533          	add	a0,s9,s2
   15d2c:	412c07b3          	sub	a5,s8,s2
   15d30:	01942823          	sw	s9,16(s0)
   15d34:	01842a23          	sw	s8,20(s0)
   15d38:	c008                	sw	a0,0(s0)
   15d3a:	8c4e                	mv	s8,s3
   15d3c:	c41c                	sw	a5,8(s0)
   15d3e:	8cce                	mv	s9,s3
   15d40:	8666                	mv	a2,s9
   15d42:	85de                	mv	a1,s7
   15d44:	00000097          	auipc	ra,0x0
   15d48:	716080e7          	jalr	1814(ra) # 1645a <memmove>
   15d4c:	4418                	lw	a4,8(s0)
   15d4e:	401c                	lw	a5,0(s0)
   15d50:	894e                	mv	s2,s3
   15d52:	41870733          	sub	a4,a4,s8
   15d56:	97e6                	add	a5,a5,s9
   15d58:	c418                	sw	a4,8(s0)
   15d5a:	c01c                	sw	a5,0(s0)
   15d5c:	4981                	li	s3,0
   15d5e:	008b2783          	lw	a5,8(s6)
   15d62:	9bca                	add	s7,s7,s2
   15d64:	412787b3          	sub	a5,a5,s2
   15d68:	00fb2423          	sw	a5,8(s6)
   15d6c:	cf99                	beqz	a5,15d8a <__sfvwrite_r+0x1a6>
   15d6e:	401c                	lw	a5,0(s0)
   15d70:	4418                	lw	a4,8(s0)
   15d72:	00c41683          	lh	a3,12(s0)
   15d76:	853e                	mv	a0,a5
   15d78:	8c3a                	mv	s8,a4
   15d7a:	f2099ee3          	bnez	s3,15cb6 <__sfvwrite_r+0xd2>
   15d7e:	0004ab83          	lw	s7,0(s1)
   15d82:	0044a983          	lw	s3,4(s1)
   15d86:	04a1                	addi	s1,s1,8
   15d88:	b71d                	j	15cae <__sfvwrite_r+0xca>
   15d8a:	4bb2                	lw	s7,12(sp)
   15d8c:	4c22                	lw	s8,8(sp)
   15d8e:	4c92                	lw	s9,4(sp)
   15d90:	50b2                	lw	ra,44(sp)
   15d92:	5422                	lw	s0,40(sp)
   15d94:	5492                	lw	s1,36(sp)
   15d96:	5902                	lw	s2,32(sp)
   15d98:	49f2                	lw	s3,28(sp)
   15d9a:	4ad2                	lw	s5,20(sp)
   15d9c:	4a62                	lw	s4,24(sp)
   15d9e:	4b42                	lw	s6,16(sp)
   15da0:	4501                	li	a0,0
   15da2:	6145                	addi	sp,sp,48
   15da4:	8082                	ret
   15da6:	85a2                	mv	a1,s0
   15da8:	8552                	mv	a0,s4
   15daa:	00000097          	auipc	ra,0x0
   15dae:	c1a080e7          	jalr	-998(ra) # 159c4 <_fflush_r>
   15db2:	c93d                	beqz	a0,15e28 <__sfvwrite_r+0x244>
   15db4:	00c41783          	lh	a5,12(s0)
   15db8:	4bb2                	lw	s7,12(sp)
   15dba:	4c22                	lw	s8,8(sp)
   15dbc:	5492                	lw	s1,36(sp)
   15dbe:	5902                	lw	s2,32(sp)
   15dc0:	49f2                	lw	s3,28(sp)
   15dc2:	4ad2                	lw	s5,20(sp)
   15dc4:	0407e793          	ori	a5,a5,64
   15dc8:	00f41623          	sh	a5,12(s0)
   15dcc:	50b2                	lw	ra,44(sp)
   15dce:	5422                	lw	s0,40(sp)
   15dd0:	4a62                	lw	s4,24(sp)
   15dd2:	4b42                	lw	s6,16(sp)
   15dd4:	557d                	li	a0,-1
   15dd6:	6145                	addi	sp,sp,48
   15dd8:	8082                	ret
   15dda:	4501                	li	a0,0
   15ddc:	8082                	ret
   15dde:	4a81                	li	s5,0
   15de0:	4501                	li	a0,0
   15de2:	4c01                	li	s8,0
   15de4:	4981                	li	s3,0
   15de6:	04098e63          	beqz	s3,15e42 <__sfvwrite_r+0x25e>
   15dea:	c525                	beqz	a0,15e52 <__sfvwrite_r+0x26e>
   15dec:	87d6                	mv	a5,s5
   15dee:	8bce                	mv	s7,s3
   15df0:	0137f363          	bgeu	a5,s3,15df6 <__sfvwrite_r+0x212>
   15df4:	8bbe                	mv	s7,a5
   15df6:	4008                	lw	a0,0(s0)
   15df8:	481c                	lw	a5,16(s0)
   15dfa:	00842903          	lw	s2,8(s0)
   15dfe:	4854                	lw	a3,20(s0)
   15e00:	00a7f563          	bgeu	a5,a0,15e0a <__sfvwrite_r+0x226>
   15e04:	9936                	add	s2,s2,a3
   15e06:	07794263          	blt	s2,s7,15e6a <__sfvwrite_r+0x286>
   15e0a:	0edbcd63          	blt	s7,a3,15f04 <__sfvwrite_r+0x320>
   15e0e:	505c                	lw	a5,36(s0)
   15e10:	4c4c                	lw	a1,28(s0)
   15e12:	8662                	mv	a2,s8
   15e14:	8552                	mv	a0,s4
   15e16:	9782                	jalr	a5
   15e18:	892a                	mv	s2,a0
   15e1a:	f8a05de3          	blez	a0,15db4 <__sfvwrite_r+0x1d0>
   15e1e:	412a8ab3          	sub	s5,s5,s2
   15e22:	4505                	li	a0,1
   15e24:	f80a81e3          	beqz	s5,15da6 <__sfvwrite_r+0x1c2>
   15e28:	008b2783          	lw	a5,8(s6)
   15e2c:	9c4a                	add	s8,s8,s2
   15e2e:	412989b3          	sub	s3,s3,s2
   15e32:	412787b3          	sub	a5,a5,s2
   15e36:	00fb2423          	sw	a5,8(s6)
   15e3a:	f7d5                	bnez	a5,15de6 <__sfvwrite_r+0x202>
   15e3c:	4bb2                	lw	s7,12(sp)
   15e3e:	4c22                	lw	s8,8(sp)
   15e40:	bf81                	j	15d90 <__sfvwrite_r+0x1ac>
   15e42:	0044a983          	lw	s3,4(s1)
   15e46:	87a6                	mv	a5,s1
   15e48:	04a1                	addi	s1,s1,8
   15e4a:	fe098ce3          	beqz	s3,15e42 <__sfvwrite_r+0x25e>
   15e4e:	0007ac03          	lw	s8,0(a5)
   15e52:	864e                	mv	a2,s3
   15e54:	45a9                	li	a1,10
   15e56:	8562                	mv	a0,s8
   15e58:	00000097          	auipc	ra,0x0
   15e5c:	36a080e7          	jalr	874(ra) # 161c2 <memchr>
   15e60:	c975                	beqz	a0,15f54 <__sfvwrite_r+0x370>
   15e62:	0505                	addi	a0,a0,1
   15e64:	41850ab3          	sub	s5,a0,s8
   15e68:	b751                	j	15dec <__sfvwrite_r+0x208>
   15e6a:	85e2                	mv	a1,s8
   15e6c:	864a                	mv	a2,s2
   15e6e:	00000097          	auipc	ra,0x0
   15e72:	5ec080e7          	jalr	1516(ra) # 1645a <memmove>
   15e76:	401c                	lw	a5,0(s0)
   15e78:	85a2                	mv	a1,s0
   15e7a:	8552                	mv	a0,s4
   15e7c:	97ca                	add	a5,a5,s2
   15e7e:	c01c                	sw	a5,0(s0)
   15e80:	00000097          	auipc	ra,0x0
   15e84:	b44080e7          	jalr	-1212(ra) # 159c4 <_fflush_r>
   15e88:	d959                	beqz	a0,15e1e <__sfvwrite_r+0x23a>
   15e8a:	b72d                	j	15db4 <__sfvwrite_r+0x1d0>
   15e8c:	4814                	lw	a3,16(s0)
   15e8e:	02f6e863          	bltu	a3,a5,15ebe <__sfvwrite_r+0x2da>
   15e92:	4850                	lw	a2,20(s0)
   15e94:	02c9e563          	bltu	s3,a2,15ebe <__sfvwrite_r+0x2da>
   15e98:	87ce                	mv	a5,s3
   15e9a:	013af363          	bgeu	s5,s3,15ea0 <__sfvwrite_r+0x2bc>
   15e9e:	87d6                	mv	a5,s5
   15ea0:	02c7e6b3          	rem	a3,a5,a2
   15ea4:	5058                	lw	a4,36(s0)
   15ea6:	4c4c                	lw	a1,28(s0)
   15ea8:	865e                	mv	a2,s7
   15eaa:	8552                	mv	a0,s4
   15eac:	40d786b3          	sub	a3,a5,a3
   15eb0:	9702                	jalr	a4
   15eb2:	892a                	mv	s2,a0
   15eb4:	02a05f63          	blez	a0,15ef2 <__sfvwrite_r+0x30e>
   15eb8:	412989b3          	sub	s3,s3,s2
   15ebc:	b54d                	j	15d5e <__sfvwrite_r+0x17a>
   15ebe:	893a                	mv	s2,a4
   15ec0:	00e9f363          	bgeu	s3,a4,15ec6 <__sfvwrite_r+0x2e2>
   15ec4:	894e                	mv	s2,s3
   15ec6:	853e                	mv	a0,a5
   15ec8:	864a                	mv	a2,s2
   15eca:	85de                	mv	a1,s7
   15ecc:	00000097          	auipc	ra,0x0
   15ed0:	58e080e7          	jalr	1422(ra) # 1645a <memmove>
   15ed4:	4418                	lw	a4,8(s0)
   15ed6:	401c                	lw	a5,0(s0)
   15ed8:	41270733          	sub	a4,a4,s2
   15edc:	97ca                	add	a5,a5,s2
   15ede:	c418                	sw	a4,8(s0)
   15ee0:	c01c                	sw	a5,0(s0)
   15ee2:	fb79                	bnez	a4,15eb8 <__sfvwrite_r+0x2d4>
   15ee4:	85a2                	mv	a1,s0
   15ee6:	8552                	mv	a0,s4
   15ee8:	00000097          	auipc	ra,0x0
   15eec:	adc080e7          	jalr	-1316(ra) # 159c4 <_fflush_r>
   15ef0:	d561                	beqz	a0,15eb8 <__sfvwrite_r+0x2d4>
   15ef2:	00c41783          	lh	a5,12(s0)
   15ef6:	4bb2                	lw	s7,12(sp)
   15ef8:	4c22                	lw	s8,8(sp)
   15efa:	4c92                	lw	s9,4(sp)
   15efc:	b5c1                	j	15dbc <__sfvwrite_r+0x1d8>
   15efe:	8c4e                	mv	s8,s3
   15f00:	8cce                	mv	s9,s3
   15f02:	bd3d                	j	15d40 <__sfvwrite_r+0x15c>
   15f04:	865e                	mv	a2,s7
   15f06:	85e2                	mv	a1,s8
   15f08:	00000097          	auipc	ra,0x0
   15f0c:	552080e7          	jalr	1362(ra) # 1645a <memmove>
   15f10:	4418                	lw	a4,8(s0)
   15f12:	401c                	lw	a5,0(s0)
   15f14:	895e                	mv	s2,s7
   15f16:	41770733          	sub	a4,a4,s7
   15f1a:	97de                	add	a5,a5,s7
   15f1c:	c418                	sw	a4,8(s0)
   15f1e:	c01c                	sw	a5,0(s0)
   15f20:	bdfd                	j	15e1e <__sfvwrite_r+0x23a>
   15f22:	8552                	mv	a0,s4
   15f24:	00003097          	auipc	ra,0x3
   15f28:	74a080e7          	jalr	1866(ra) # 1966e <_realloc_r>
   15f2c:	8caa                	mv	s9,a0
   15f2e:	de051de3          	bnez	a0,15d28 <__sfvwrite_r+0x144>
   15f32:	480c                	lw	a1,16(s0)
   15f34:	8552                	mv	a0,s4
   15f36:	00001097          	auipc	ra,0x1
   15f3a:	b8a080e7          	jalr	-1142(ra) # 16ac0 <_free_r>
   15f3e:	00c41783          	lh	a5,12(s0)
   15f42:	4731                	li	a4,12
   15f44:	4bb2                	lw	s7,12(sp)
   15f46:	4c22                	lw	s8,8(sp)
   15f48:	4c92                	lw	s9,4(sp)
   15f4a:	00ea2023          	sw	a4,0(s4)
   15f4e:	f7f7f793          	andi	a5,a5,-129
   15f52:	b5ad                	j	15dbc <__sfvwrite_r+0x1d8>
   15f54:	00198793          	addi	a5,s3,1
   15f58:	8abe                	mv	s5,a5
   15f5a:	bd51                	j	15dee <__sfvwrite_r+0x20a>
   15f5c:	00c41783          	lh	a5,12(s0)
   15f60:	bdb1                	j	15dbc <__sfvwrite_r+0x1d8>
   15f62:	4731                	li	a4,12
   15f64:	00c41783          	lh	a5,12(s0)
   15f68:	4bb2                	lw	s7,12(sp)
   15f6a:	4c22                	lw	s8,8(sp)
   15f6c:	4c92                	lw	s9,4(sp)
   15f6e:	00ea2023          	sw	a4,0(s4)
   15f72:	b5a9                	j	15dbc <__sfvwrite_r+0x1d8>

00015f74 <_fwalk_sglue>:
   15f74:	7179                	addi	sp,sp,-48
   15f76:	d04a                	sw	s2,32(sp)
   15f78:	ce4e                	sw	s3,28(sp)
   15f7a:	cc52                	sw	s4,24(sp)
   15f7c:	ca56                	sw	s5,20(sp)
   15f7e:	c85a                	sw	s6,16(sp)
   15f80:	c65e                	sw	s7,12(sp)
   15f82:	d606                	sw	ra,44(sp)
   15f84:	d422                	sw	s0,40(sp)
   15f86:	d226                	sw	s1,36(sp)
   15f88:	8b2a                	mv	s6,a0
   15f8a:	8bae                	mv	s7,a1
   15f8c:	8ab2                	mv	s5,a2
   15f8e:	4a01                	li	s4,0
   15f90:	4985                	li	s3,1
   15f92:	597d                	li	s2,-1
   15f94:	004aa483          	lw	s1,4(s5)
   15f98:	008aa403          	lw	s0,8(s5)
   15f9c:	14fd                	addi	s1,s1,-1
   15f9e:	0204c463          	bltz	s1,15fc6 <_fwalk_sglue+0x52>
   15fa2:	00c45783          	lhu	a5,12(s0)
   15fa6:	00f9fb63          	bgeu	s3,a5,15fbc <_fwalk_sglue+0x48>
   15faa:	00e41783          	lh	a5,14(s0)
   15fae:	85a2                	mv	a1,s0
   15fb0:	855a                	mv	a0,s6
   15fb2:	01278563          	beq	a5,s2,15fbc <_fwalk_sglue+0x48>
   15fb6:	9b82                	jalr	s7
   15fb8:	00aa6a33          	or	s4,s4,a0
   15fbc:	14fd                	addi	s1,s1,-1
   15fbe:	06840413          	addi	s0,s0,104
   15fc2:	ff2490e3          	bne	s1,s2,15fa2 <_fwalk_sglue+0x2e>
   15fc6:	000aaa83          	lw	s5,0(s5)
   15fca:	fc0a95e3          	bnez	s5,15f94 <_fwalk_sglue+0x20>
   15fce:	50b2                	lw	ra,44(sp)
   15fd0:	5422                	lw	s0,40(sp)
   15fd2:	5492                	lw	s1,36(sp)
   15fd4:	5902                	lw	s2,32(sp)
   15fd6:	49f2                	lw	s3,28(sp)
   15fd8:	4ad2                	lw	s5,20(sp)
   15fda:	4b42                	lw	s6,16(sp)
   15fdc:	4bb2                	lw	s7,12(sp)
   15fde:	8552                	mv	a0,s4
   15fe0:	4a62                	lw	s4,24(sp)
   15fe2:	6145                	addi	sp,sp,48
   15fe4:	8082                	ret

00015fe6 <__sread>:
   15fe6:	1141                	addi	sp,sp,-16
   15fe8:	c422                	sw	s0,8(sp)
   15fea:	842e                	mv	s0,a1
   15fec:	00e59583          	lh	a1,14(a1)
   15ff0:	c606                	sw	ra,12(sp)
   15ff2:	00000097          	auipc	ra,0x0
   15ff6:	364080e7          	jalr	868(ra) # 16356 <_read_r>
   15ffa:	00054963          	bltz	a0,1600c <__sread+0x26>
   15ffe:	483c                	lw	a5,80(s0)
   16000:	40b2                	lw	ra,12(sp)
   16002:	97aa                	add	a5,a5,a0
   16004:	c83c                	sw	a5,80(s0)
   16006:	4422                	lw	s0,8(sp)
   16008:	0141                	addi	sp,sp,16
   1600a:	8082                	ret
   1600c:	00c45783          	lhu	a5,12(s0)
   16010:	777d                	lui	a4,0xfffff
   16012:	177d                	addi	a4,a4,-1 # ffffefff <__BSS_END__+0xfffe05a3>
   16014:	8ff9                	and	a5,a5,a4
   16016:	40b2                	lw	ra,12(sp)
   16018:	00f41623          	sh	a5,12(s0)
   1601c:	4422                	lw	s0,8(sp)
   1601e:	0141                	addi	sp,sp,16
   16020:	8082                	ret

00016022 <__swrite>:
   16022:	00c59783          	lh	a5,12(a1)
   16026:	1101                	addi	sp,sp,-32
   16028:	cc22                	sw	s0,24(sp)
   1602a:	ca26                	sw	s1,20(sp)
   1602c:	c84a                	sw	s2,16(sp)
   1602e:	c64e                	sw	s3,12(sp)
   16030:	ce06                	sw	ra,28(sp)
   16032:	1007f713          	andi	a4,a5,256
   16036:	842e                	mv	s0,a1
   16038:	84aa                	mv	s1,a0
   1603a:	8932                	mv	s2,a2
   1603c:	89b6                	mv	s3,a3
   1603e:	e70d                	bnez	a4,16068 <__swrite+0x46>
   16040:	777d                	lui	a4,0xfffff
   16042:	177d                	addi	a4,a4,-1 # ffffefff <__BSS_END__+0xfffe05a3>
   16044:	8ff9                	and	a5,a5,a4
   16046:	00e41583          	lh	a1,14(s0)
   1604a:	00f41623          	sh	a5,12(s0)
   1604e:	4462                	lw	s0,24(sp)
   16050:	40f2                	lw	ra,28(sp)
   16052:	86ce                	mv	a3,s3
   16054:	864a                	mv	a2,s2
   16056:	49b2                	lw	s3,12(sp)
   16058:	4942                	lw	s2,16(sp)
   1605a:	8526                	mv	a0,s1
   1605c:	44d2                	lw	s1,20(sp)
   1605e:	6105                	addi	sp,sp,32
   16060:	00000317          	auipc	t1,0x0
   16064:	33a30067          	jr	826(t1) # 1639a <_write_r>
   16068:	00e59583          	lh	a1,14(a1)
   1606c:	4689                	li	a3,2
   1606e:	4601                	li	a2,0
   16070:	00000097          	auipc	ra,0x0
   16074:	2a2080e7          	jalr	674(ra) # 16312 <_lseek_r>
   16078:	00c41783          	lh	a5,12(s0)
   1607c:	b7d1                	j	16040 <__swrite+0x1e>

0001607e <__sseek>:
   1607e:	1141                	addi	sp,sp,-16
   16080:	c422                	sw	s0,8(sp)
   16082:	842e                	mv	s0,a1
   16084:	00e59583          	lh	a1,14(a1)
   16088:	c606                	sw	ra,12(sp)
   1608a:	00000097          	auipc	ra,0x0
   1608e:	288080e7          	jalr	648(ra) # 16312 <_lseek_r>
   16092:	57fd                	li	a5,-1
   16094:	00f50f63          	beq	a0,a5,160b2 <__sseek+0x34>
   16098:	00c45783          	lhu	a5,12(s0)
   1609c:	6705                	lui	a4,0x1
   1609e:	40b2                	lw	ra,12(sp)
   160a0:	8fd9                	or	a5,a5,a4
   160a2:	07c2                	slli	a5,a5,0x10
   160a4:	87c1                	srai	a5,a5,0x10
   160a6:	c828                	sw	a0,80(s0)
   160a8:	00f41623          	sh	a5,12(s0)
   160ac:	4422                	lw	s0,8(sp)
   160ae:	0141                	addi	sp,sp,16
   160b0:	8082                	ret
   160b2:	00c45783          	lhu	a5,12(s0)
   160b6:	777d                	lui	a4,0xfffff
   160b8:	177d                	addi	a4,a4,-1 # ffffefff <__BSS_END__+0xfffe05a3>
   160ba:	8ff9                	and	a5,a5,a4
   160bc:	07c2                	slli	a5,a5,0x10
   160be:	87c1                	srai	a5,a5,0x10
   160c0:	40b2                	lw	ra,12(sp)
   160c2:	00f41623          	sh	a5,12(s0)
   160c6:	4422                	lw	s0,8(sp)
   160c8:	0141                	addi	sp,sp,16
   160ca:	8082                	ret

000160cc <__sclose>:
   160cc:	00e59583          	lh	a1,14(a1)
   160d0:	00000317          	auipc	t1,0x0
   160d4:	20430067          	jr	516(t1) # 162d4 <_close_r>

000160d8 <__swsetup_r>:
   160d8:	0001e7b7          	lui	a5,0x1e
   160dc:	7187a783          	lw	a5,1816(a5) # 1e718 <_impure_ptr>
   160e0:	1141                	addi	sp,sp,-16
   160e2:	c422                	sw	s0,8(sp)
   160e4:	c226                	sw	s1,4(sp)
   160e6:	c606                	sw	ra,12(sp)
   160e8:	84aa                	mv	s1,a0
   160ea:	842e                	mv	s0,a1
   160ec:	c399                	beqz	a5,160f2 <__swsetup_r+0x1a>
   160ee:	5bd8                	lw	a4,52(a5)
   160f0:	cb5d                	beqz	a4,161a6 <__swsetup_r+0xce>
   160f2:	00c41783          	lh	a5,12(s0)
   160f6:	0087f713          	andi	a4,a5,8
   160fa:	c721                	beqz	a4,16142 <__swsetup_r+0x6a>
   160fc:	4818                	lw	a4,16(s0)
   160fe:	cf31                	beqz	a4,1615a <__swsetup_r+0x82>
   16100:	0017f693          	andi	a3,a5,1
   16104:	ce91                	beqz	a3,16120 <__swsetup_r+0x48>
   16106:	4854                	lw	a3,20(s0)
   16108:	00042423          	sw	zero,8(s0)
   1610c:	4501                	li	a0,0
   1610e:	40d006b3          	neg	a3,a3
   16112:	cc14                	sw	a3,24(s0)
   16114:	cf11                	beqz	a4,16130 <__swsetup_r+0x58>
   16116:	40b2                	lw	ra,12(sp)
   16118:	4422                	lw	s0,8(sp)
   1611a:	4492                	lw	s1,4(sp)
   1611c:	0141                	addi	sp,sp,16
   1611e:	8082                	ret
   16120:	0027f693          	andi	a3,a5,2
   16124:	4601                	li	a2,0
   16126:	e291                	bnez	a3,1612a <__swsetup_r+0x52>
   16128:	4850                	lw	a2,20(s0)
   1612a:	c410                	sw	a2,8(s0)
   1612c:	4501                	li	a0,0
   1612e:	f765                	bnez	a4,16116 <__swsetup_r+0x3e>
   16130:	0807f713          	andi	a4,a5,128
   16134:	d36d                	beqz	a4,16116 <__swsetup_r+0x3e>
   16136:	0407e793          	ori	a5,a5,64
   1613a:	00f41623          	sh	a5,12(s0)
   1613e:	557d                	li	a0,-1
   16140:	bfd9                	j	16116 <__swsetup_r+0x3e>
   16142:	0107f713          	andi	a4,a5,16
   16146:	c735                	beqz	a4,161b2 <__swsetup_r+0xda>
   16148:	0047f713          	andi	a4,a5,4
   1614c:	e71d                	bnez	a4,1617a <__swsetup_r+0xa2>
   1614e:	4818                	lw	a4,16(s0)
   16150:	0087e793          	ori	a5,a5,8
   16154:	00f41623          	sh	a5,12(s0)
   16158:	f745                	bnez	a4,16100 <__swsetup_r+0x28>
   1615a:	2807f693          	andi	a3,a5,640
   1615e:	20000613          	li	a2,512
   16162:	f8c68fe3          	beq	a3,a2,16100 <__swsetup_r+0x28>
   16166:	85a2                	mv	a1,s0
   16168:	8526                	mv	a0,s1
   1616a:	00004097          	auipc	ra,0x4
   1616e:	9d8080e7          	jalr	-1576(ra) # 19b42 <__smakebuf_r>
   16172:	00c41783          	lh	a5,12(s0)
   16176:	4818                	lw	a4,16(s0)
   16178:	b761                	j	16100 <__swsetup_r+0x28>
   1617a:	580c                	lw	a1,48(s0)
   1617c:	cd91                	beqz	a1,16198 <__swsetup_r+0xc0>
   1617e:	04040713          	addi	a4,s0,64
   16182:	00e58963          	beq	a1,a4,16194 <__swsetup_r+0xbc>
   16186:	8526                	mv	a0,s1
   16188:	00001097          	auipc	ra,0x1
   1618c:	938080e7          	jalr	-1736(ra) # 16ac0 <_free_r>
   16190:	00c41783          	lh	a5,12(s0)
   16194:	02042823          	sw	zero,48(s0)
   16198:	4818                	lw	a4,16(s0)
   1619a:	fdb7f793          	andi	a5,a5,-37
   1619e:	00042223          	sw	zero,4(s0)
   161a2:	c018                	sw	a4,0(s0)
   161a4:	b775                	j	16150 <__swsetup_r+0x78>
   161a6:	853e                	mv	a0,a5
   161a8:	00000097          	auipc	ra,0x0
   161ac:	a16080e7          	jalr	-1514(ra) # 15bbe <__sinit>
   161b0:	b789                	j	160f2 <__swsetup_r+0x1a>
   161b2:	4725                	li	a4,9
   161b4:	c098                	sw	a4,0(s1)
   161b6:	0407e793          	ori	a5,a5,64
   161ba:	00f41623          	sh	a5,12(s0)
   161be:	557d                	li	a0,-1
   161c0:	bf99                	j	16116 <__swsetup_r+0x3e>

000161c2 <memchr>:
   161c2:	00357793          	andi	a5,a0,3
   161c6:	0ff5f693          	zext.b	a3,a1
   161ca:	c395                	beqz	a5,161ee <memchr+0x2c>
   161cc:	fff60793          	addi	a5,a2,-1
   161d0:	c605                	beqz	a2,161f8 <memchr+0x36>
   161d2:	567d                	li	a2,-1
   161d4:	a801                	j	161e4 <memchr+0x22>
   161d6:	0505                	addi	a0,a0,1
   161d8:	00357713          	andi	a4,a0,3
   161dc:	cb11                	beqz	a4,161f0 <memchr+0x2e>
   161de:	17fd                	addi	a5,a5,-1
   161e0:	00c78c63          	beq	a5,a2,161f8 <memchr+0x36>
   161e4:	00054703          	lbu	a4,0(a0)
   161e8:	fed717e3          	bne	a4,a3,161d6 <memchr+0x14>
   161ec:	8082                	ret
   161ee:	87b2                	mv	a5,a2
   161f0:	470d                	li	a4,3
   161f2:	00f76563          	bltu	a4,a5,161fc <memchr+0x3a>
   161f6:	e3b9                	bnez	a5,1623c <memchr+0x7a>
   161f8:	4501                	li	a0,0
   161fa:	8082                	ret
   161fc:	0ff5f593          	zext.b	a1,a1
   16200:	00859713          	slli	a4,a1,0x8
   16204:	95ba                	add	a1,a1,a4
   16206:	01059713          	slli	a4,a1,0x10
   1620a:	feff08b7          	lui	a7,0xfeff0
   1620e:	80808837          	lui	a6,0x80808
   16212:	95ba                	add	a1,a1,a4
   16214:	eff88893          	addi	a7,a7,-257 # fefefeff <__BSS_END__+0xfefd14a3>
   16218:	08080813          	addi	a6,a6,128 # 80808080 <__BSS_END__+0x807e9624>
   1621c:	430d                	li	t1,3
   1621e:	a029                	j	16228 <memchr+0x66>
   16220:	17f1                	addi	a5,a5,-4
   16222:	0511                	addi	a0,a0,4
   16224:	fcf379e3          	bgeu	t1,a5,161f6 <memchr+0x34>
   16228:	4118                	lw	a4,0(a0)
   1622a:	8f2d                	xor	a4,a4,a1
   1622c:	01170633          	add	a2,a4,a7
   16230:	fff74713          	not	a4,a4
   16234:	8f71                	and	a4,a4,a2
   16236:	01077733          	and	a4,a4,a6
   1623a:	d37d                	beqz	a4,16220 <memchr+0x5e>
   1623c:	97aa                	add	a5,a5,a0
   1623e:	a021                	j	16246 <memchr+0x84>
   16240:	0505                	addi	a0,a0,1
   16242:	faa78be3          	beq	a5,a0,161f8 <memchr+0x36>
   16246:	00054703          	lbu	a4,0(a0)
   1624a:	fed71be3          	bne	a4,a3,16240 <memchr+0x7e>
   1624e:	8082                	ret

00016250 <strncpy>:
   16250:	00a5e7b3          	or	a5,a1,a0
   16254:	8b8d                	andi	a5,a5,3
   16256:	e781                	bnez	a5,1625e <strncpy+0xe>
   16258:	478d                	li	a5,3
   1625a:	02c7eb63          	bltu	a5,a2,16290 <strncpy+0x40>
   1625e:	872a                	mv	a4,a0
   16260:	a811                	j	16274 <strncpy+0x24>
   16262:	fff5c683          	lbu	a3,-1(a1)
   16266:	fff60813          	addi	a6,a2,-1
   1626a:	fed78fa3          	sb	a3,-1(a5)
   1626e:	ca81                	beqz	a3,1627e <strncpy+0x2e>
   16270:	873e                	mv	a4,a5
   16272:	8642                	mv	a2,a6
   16274:	0585                	addi	a1,a1,1
   16276:	00170793          	addi	a5,a4,1
   1627a:	f665                	bnez	a2,16262 <strncpy+0x12>
   1627c:	8082                	ret
   1627e:	9732                	add	a4,a4,a2
   16280:	04080463          	beqz	a6,162c8 <strncpy+0x78>
   16284:	0785                	addi	a5,a5,1
   16286:	fe078fa3          	sb	zero,-1(a5)
   1628a:	fee79de3          	bne	a5,a4,16284 <strncpy+0x34>
   1628e:	8082                	ret
   16290:	feff0337          	lui	t1,0xfeff0
   16294:	808088b7          	lui	a7,0x80808
   16298:	872a                	mv	a4,a0
   1629a:	eff30313          	addi	t1,t1,-257 # fefefeff <__BSS_END__+0xfefd14a3>
   1629e:	08088893          	addi	a7,a7,128 # 80808080 <__BSS_END__+0x807e9624>
   162a2:	4e0d                	li	t3,3
   162a4:	a039                	j	162b2 <strncpy+0x62>
   162a6:	c314                	sw	a3,0(a4)
   162a8:	1671                	addi	a2,a2,-4
   162aa:	0711                	addi	a4,a4,4
   162ac:	0591                	addi	a1,a1,4
   162ae:	fcce73e3          	bgeu	t3,a2,16274 <strncpy+0x24>
   162b2:	4194                	lw	a3,0(a1)
   162b4:	006687b3          	add	a5,a3,t1
   162b8:	fff6c813          	not	a6,a3
   162bc:	0107f7b3          	and	a5,a5,a6
   162c0:	0117f7b3          	and	a5,a5,a7
   162c4:	d3ed                	beqz	a5,162a6 <strncpy+0x56>
   162c6:	b77d                	j	16274 <strncpy+0x24>
   162c8:	8082                	ret

000162ca <_localeconv_r>:
   162ca:	0001e537          	lui	a0,0x1e
   162ce:	63850513          	addi	a0,a0,1592 # 1e638 <__global_locale+0xf0>
   162d2:	8082                	ret

000162d4 <_close_r>:
   162d4:	1141                	addi	sp,sp,-16
   162d6:	c422                	sw	s0,8(sp)
   162d8:	c226                	sw	s1,4(sp)
   162da:	842a                	mv	s0,a0
   162dc:	0001e4b7          	lui	s1,0x1e
   162e0:	852e                	mv	a0,a1
   162e2:	c606                	sw	ra,12(sp)
   162e4:	7204ac23          	sw	zero,1848(s1) # 1e738 <errno>
   162e8:	00004097          	auipc	ra,0x4
   162ec:	c4c080e7          	jalr	-948(ra) # 19f34 <_close>
   162f0:	57fd                	li	a5,-1
   162f2:	00f50763          	beq	a0,a5,16300 <_close_r+0x2c>
   162f6:	40b2                	lw	ra,12(sp)
   162f8:	4422                	lw	s0,8(sp)
   162fa:	4492                	lw	s1,4(sp)
   162fc:	0141                	addi	sp,sp,16
   162fe:	8082                	ret
   16300:	7384a783          	lw	a5,1848(s1)
   16304:	dbed                	beqz	a5,162f6 <_close_r+0x22>
   16306:	40b2                	lw	ra,12(sp)
   16308:	c01c                	sw	a5,0(s0)
   1630a:	4422                	lw	s0,8(sp)
   1630c:	4492                	lw	s1,4(sp)
   1630e:	0141                	addi	sp,sp,16
   16310:	8082                	ret

00016312 <_lseek_r>:
   16312:	1141                	addi	sp,sp,-16
   16314:	872e                	mv	a4,a1
   16316:	c422                	sw	s0,8(sp)
   16318:	c226                	sw	s1,4(sp)
   1631a:	85b2                	mv	a1,a2
   1631c:	842a                	mv	s0,a0
   1631e:	0001e4b7          	lui	s1,0x1e
   16322:	8636                	mv	a2,a3
   16324:	853a                	mv	a0,a4
   16326:	c606                	sw	ra,12(sp)
   16328:	7204ac23          	sw	zero,1848(s1) # 1e738 <errno>
   1632c:	00004097          	auipc	ra,0x4
   16330:	ce6080e7          	jalr	-794(ra) # 1a012 <_lseek>
   16334:	57fd                	li	a5,-1
   16336:	00f50763          	beq	a0,a5,16344 <_lseek_r+0x32>
   1633a:	40b2                	lw	ra,12(sp)
   1633c:	4422                	lw	s0,8(sp)
   1633e:	4492                	lw	s1,4(sp)
   16340:	0141                	addi	sp,sp,16
   16342:	8082                	ret
   16344:	7384a783          	lw	a5,1848(s1)
   16348:	dbed                	beqz	a5,1633a <_lseek_r+0x28>
   1634a:	40b2                	lw	ra,12(sp)
   1634c:	c01c                	sw	a5,0(s0)
   1634e:	4422                	lw	s0,8(sp)
   16350:	4492                	lw	s1,4(sp)
   16352:	0141                	addi	sp,sp,16
   16354:	8082                	ret

00016356 <_read_r>:
   16356:	1141                	addi	sp,sp,-16
   16358:	872e                	mv	a4,a1
   1635a:	c422                	sw	s0,8(sp)
   1635c:	c226                	sw	s1,4(sp)
   1635e:	85b2                	mv	a1,a2
   16360:	842a                	mv	s0,a0
   16362:	0001e4b7          	lui	s1,0x1e
   16366:	8636                	mv	a2,a3
   16368:	853a                	mv	a0,a4
   1636a:	c606                	sw	ra,12(sp)
   1636c:	7204ac23          	sw	zero,1848(s1) # 1e738 <errno>
   16370:	00004097          	auipc	ra,0x4
   16374:	cd2080e7          	jalr	-814(ra) # 1a042 <_read>
   16378:	57fd                	li	a5,-1
   1637a:	00f50763          	beq	a0,a5,16388 <_read_r+0x32>
   1637e:	40b2                	lw	ra,12(sp)
   16380:	4422                	lw	s0,8(sp)
   16382:	4492                	lw	s1,4(sp)
   16384:	0141                	addi	sp,sp,16
   16386:	8082                	ret
   16388:	7384a783          	lw	a5,1848(s1)
   1638c:	dbed                	beqz	a5,1637e <_read_r+0x28>
   1638e:	40b2                	lw	ra,12(sp)
   16390:	c01c                	sw	a5,0(s0)
   16392:	4422                	lw	s0,8(sp)
   16394:	4492                	lw	s1,4(sp)
   16396:	0141                	addi	sp,sp,16
   16398:	8082                	ret

0001639a <_write_r>:
   1639a:	1141                	addi	sp,sp,-16
   1639c:	872e                	mv	a4,a1
   1639e:	c422                	sw	s0,8(sp)
   163a0:	c226                	sw	s1,4(sp)
   163a2:	85b2                	mv	a1,a2
   163a4:	842a                	mv	s0,a0
   163a6:	0001e4b7          	lui	s1,0x1e
   163aa:	8636                	mv	a2,a3
   163ac:	853a                	mv	a0,a4
   163ae:	c606                	sw	ra,12(sp)
   163b0:	7204ac23          	sw	zero,1848(s1) # 1e738 <errno>
   163b4:	00004097          	auipc	ra,0x4
   163b8:	d1a080e7          	jalr	-742(ra) # 1a0ce <_write>
   163bc:	57fd                	li	a5,-1
   163be:	00f50763          	beq	a0,a5,163cc <_write_r+0x32>
   163c2:	40b2                	lw	ra,12(sp)
   163c4:	4422                	lw	s0,8(sp)
   163c6:	4492                	lw	s1,4(sp)
   163c8:	0141                	addi	sp,sp,16
   163ca:	8082                	ret
   163cc:	7384a783          	lw	a5,1848(s1)
   163d0:	dbed                	beqz	a5,163c2 <_write_r+0x28>
   163d2:	40b2                	lw	ra,12(sp)
   163d4:	c01c                	sw	a5,0(s0)
   163d6:	4422                	lw	s0,8(sp)
   163d8:	4492                	lw	s1,4(sp)
   163da:	0141                	addi	sp,sp,16
   163dc:	8082                	ret

000163de <__errno>:
   163de:	0001e7b7          	lui	a5,0x1e
   163e2:	7187a503          	lw	a0,1816(a5) # 1e718 <_impure_ptr>
   163e6:	8082                	ret

000163e8 <__libc_init_array>:
   163e8:	1141                	addi	sp,sp,-16
   163ea:	c422                	sw	s0,8(sp)
   163ec:	0001e7b7          	lui	a5,0x1e
   163f0:	0001e437          	lui	s0,0x1e
   163f4:	c04a                	sw	s2,0(sp)
   163f6:	00478793          	addi	a5,a5,4 # 1e004 <__init_array_start>
   163fa:	00440713          	addi	a4,s0,4 # 1e004 <__init_array_start>
   163fe:	c606                	sw	ra,12(sp)
   16400:	c226                	sw	s1,4(sp)
   16402:	40e78933          	sub	s2,a5,a4
   16406:	00e78d63          	beq	a5,a4,16420 <__libc_init_array+0x38>
   1640a:	40295913          	srai	s2,s2,0x2
   1640e:	00440413          	addi	s0,s0,4
   16412:	4481                	li	s1,0
   16414:	401c                	lw	a5,0(s0)
   16416:	0485                	addi	s1,s1,1
   16418:	0411                	addi	s0,s0,4
   1641a:	9782                	jalr	a5
   1641c:	ff24ece3          	bltu	s1,s2,16414 <__libc_init_array+0x2c>
   16420:	0001e437          	lui	s0,0x1e
   16424:	0001e7b7          	lui	a5,0x1e
   16428:	00c78793          	addi	a5,a5,12 # 1e00c <__do_global_dtors_aux_fini_array_entry>
   1642c:	00440713          	addi	a4,s0,4 # 1e004 <__init_array_start>
   16430:	40e78933          	sub	s2,a5,a4
   16434:	40295913          	srai	s2,s2,0x2
   16438:	00e78b63          	beq	a5,a4,1644e <__libc_init_array+0x66>
   1643c:	00440413          	addi	s0,s0,4
   16440:	4481                	li	s1,0
   16442:	401c                	lw	a5,0(s0)
   16444:	0485                	addi	s1,s1,1
   16446:	0411                	addi	s0,s0,4
   16448:	9782                	jalr	a5
   1644a:	ff24ece3          	bltu	s1,s2,16442 <__libc_init_array+0x5a>
   1644e:	40b2                	lw	ra,12(sp)
   16450:	4422                	lw	s0,8(sp)
   16452:	4492                	lw	s1,4(sp)
   16454:	4902                	lw	s2,0(sp)
   16456:	0141                	addi	sp,sp,16
   16458:	8082                	ret

0001645a <memmove>:
   1645a:	02a5f263          	bgeu	a1,a0,1647e <memmove+0x24>
   1645e:	00c58733          	add	a4,a1,a2
   16462:	00e57e63          	bgeu	a0,a4,1647e <memmove+0x24>
   16466:	00c507b3          	add	a5,a0,a2
   1646a:	ca1d                	beqz	a2,164a0 <memmove+0x46>
   1646c:	fff74683          	lbu	a3,-1(a4)
   16470:	17fd                	addi	a5,a5,-1
   16472:	177d                	addi	a4,a4,-1
   16474:	00d78023          	sb	a3,0(a5)
   16478:	fef51ae3          	bne	a0,a5,1646c <memmove+0x12>
   1647c:	8082                	ret
   1647e:	47bd                	li	a5,15
   16480:	02c7e163          	bltu	a5,a2,164a2 <memmove+0x48>
   16484:	87aa                	mv	a5,a0
   16486:	fff60693          	addi	a3,a2,-1
   1648a:	ca59                	beqz	a2,16520 <memmove+0xc6>
   1648c:	0685                	addi	a3,a3,1
   1648e:	96be                	add	a3,a3,a5
   16490:	0005c703          	lbu	a4,0(a1)
   16494:	0785                	addi	a5,a5,1
   16496:	0585                	addi	a1,a1,1
   16498:	fee78fa3          	sb	a4,-1(a5)
   1649c:	fed79ae3          	bne	a5,a3,16490 <memmove+0x36>
   164a0:	8082                	ret
   164a2:	00b567b3          	or	a5,a0,a1
   164a6:	8b8d                	andi	a5,a5,3
   164a8:	eba5                	bnez	a5,16518 <memmove+0xbe>
   164aa:	ff060893          	addi	a7,a2,-16
   164ae:	ff08f893          	andi	a7,a7,-16
   164b2:	08c1                	addi	a7,a7,16
   164b4:	011506b3          	add	a3,a0,a7
   164b8:	872e                	mv	a4,a1
   164ba:	87aa                	mv	a5,a0
   164bc:	00072803          	lw	a6,0(a4)
   164c0:	0741                	addi	a4,a4,16
   164c2:	07c1                	addi	a5,a5,16
   164c4:	ff07a823          	sw	a6,-16(a5)
   164c8:	ff472803          	lw	a6,-12(a4)
   164cc:	ff07aa23          	sw	a6,-12(a5)
   164d0:	ff872803          	lw	a6,-8(a4)
   164d4:	ff07ac23          	sw	a6,-8(a5)
   164d8:	ffc72803          	lw	a6,-4(a4)
   164dc:	ff07ae23          	sw	a6,-4(a5)
   164e0:	fcd79ee3          	bne	a5,a3,164bc <memmove+0x62>
   164e4:	00c67813          	andi	a6,a2,12
   164e8:	95c6                	add	a1,a1,a7
   164ea:	00f67713          	andi	a4,a2,15
   164ee:	02080a63          	beqz	a6,16522 <memmove+0xc8>
   164f2:	ffc70813          	addi	a6,a4,-4
   164f6:	ffc87813          	andi	a6,a6,-4
   164fa:	0811                	addi	a6,a6,4
   164fc:	010687b3          	add	a5,a3,a6
   16500:	872e                	mv	a4,a1
   16502:	00072883          	lw	a7,0(a4)
   16506:	0691                	addi	a3,a3,4
   16508:	0711                	addi	a4,a4,4
   1650a:	ff16ae23          	sw	a7,-4(a3)
   1650e:	fef69ae3          	bne	a3,a5,16502 <memmove+0xa8>
   16512:	8a0d                	andi	a2,a2,3
   16514:	95c2                	add	a1,a1,a6
   16516:	bf85                	j	16486 <memmove+0x2c>
   16518:	fff60693          	addi	a3,a2,-1
   1651c:	87aa                	mv	a5,a0
   1651e:	b7bd                	j	1648c <memmove+0x32>
   16520:	8082                	ret
   16522:	863a                	mv	a2,a4
   16524:	b78d                	j	16486 <memmove+0x2c>

00016526 <memset>:
   16526:	433d                	li	t1,15
   16528:	872a                	mv	a4,a0
   1652a:	02c37363          	bgeu	t1,a2,16550 <memset+0x2a>
   1652e:	00f77793          	andi	a5,a4,15
   16532:	efbd                	bnez	a5,165b0 <memset+0x8a>
   16534:	e5ad                	bnez	a1,1659e <memset+0x78>
   16536:	ff067693          	andi	a3,a2,-16
   1653a:	8a3d                	andi	a2,a2,15
   1653c:	96ba                	add	a3,a3,a4
   1653e:	c30c                	sw	a1,0(a4)
   16540:	c34c                	sw	a1,4(a4)
   16542:	c70c                	sw	a1,8(a4)
   16544:	c74c                	sw	a1,12(a4)
   16546:	0741                	addi	a4,a4,16
   16548:	fed76be3          	bltu	a4,a3,1653e <memset+0x18>
   1654c:	e211                	bnez	a2,16550 <memset+0x2a>
   1654e:	8082                	ret
   16550:	40c306b3          	sub	a3,t1,a2
   16554:	068a                	slli	a3,a3,0x2
   16556:	00000297          	auipc	t0,0x0
   1655a:	9696                	add	a3,a3,t0
   1655c:	00a68067          	jr	10(a3)
   16560:	00b70723          	sb	a1,14(a4)
   16564:	00b706a3          	sb	a1,13(a4)
   16568:	00b70623          	sb	a1,12(a4)
   1656c:	00b705a3          	sb	a1,11(a4)
   16570:	00b70523          	sb	a1,10(a4)
   16574:	00b704a3          	sb	a1,9(a4)
   16578:	00b70423          	sb	a1,8(a4)
   1657c:	00b703a3          	sb	a1,7(a4)
   16580:	00b70323          	sb	a1,6(a4)
   16584:	00b702a3          	sb	a1,5(a4)
   16588:	00b70223          	sb	a1,4(a4)
   1658c:	00b701a3          	sb	a1,3(a4)
   16590:	00b70123          	sb	a1,2(a4)
   16594:	00b700a3          	sb	a1,1(a4)
   16598:	00b70023          	sb	a1,0(a4)
   1659c:	8082                	ret
   1659e:	0ff5f593          	zext.b	a1,a1
   165a2:	00859693          	slli	a3,a1,0x8
   165a6:	8dd5                	or	a1,a1,a3
   165a8:	01059693          	slli	a3,a1,0x10
   165ac:	8dd5                	or	a1,a1,a3
   165ae:	b761                	j	16536 <memset+0x10>
   165b0:	00279693          	slli	a3,a5,0x2
   165b4:	00000297          	auipc	t0,0x0
   165b8:	9696                	add	a3,a3,t0
   165ba:	8286                	mv	t0,ra
   165bc:	fa8680e7          	jalr	-88(a3)
   165c0:	8096                	mv	ra,t0
   165c2:	17c1                	addi	a5,a5,-16
   165c4:	8f1d                	sub	a4,a4,a5
   165c6:	963e                	add	a2,a2,a5
   165c8:	f8c374e3          	bgeu	t1,a2,16550 <memset+0x2a>
   165cc:	b7a5                	j	16534 <memset+0xe>

000165ce <memcpy>:
   165ce:	00a5c7b3          	xor	a5,a1,a0
   165d2:	8b8d                	andi	a5,a5,3
   165d4:	00c508b3          	add	a7,a0,a2
   165d8:	e7b1                	bnez	a5,16624 <memcpy+0x56>
   165da:	478d                	li	a5,3
   165dc:	04c7f463          	bgeu	a5,a2,16624 <memcpy+0x56>
   165e0:	00357793          	andi	a5,a0,3
   165e4:	872a                	mv	a4,a0
   165e6:	ebb9                	bnez	a5,1663c <memcpy+0x6e>
   165e8:	ffc8f613          	andi	a2,a7,-4
   165ec:	40e606b3          	sub	a3,a2,a4
   165f0:	02000793          	li	a5,32
   165f4:	06d7c863          	blt	a5,a3,16664 <memcpy+0x96>
   165f8:	86ae                	mv	a3,a1
   165fa:	87ba                	mv	a5,a4
   165fc:	02c77163          	bgeu	a4,a2,1661e <memcpy+0x50>
   16600:	0006a803          	lw	a6,0(a3)
   16604:	0791                	addi	a5,a5,4
   16606:	0691                	addi	a3,a3,4
   16608:	ff07ae23          	sw	a6,-4(a5)
   1660c:	fec7eae3          	bltu	a5,a2,16600 <memcpy+0x32>
   16610:	fff60793          	addi	a5,a2,-1
   16614:	8f99                	sub	a5,a5,a4
   16616:	9bf1                	andi	a5,a5,-4
   16618:	0791                	addi	a5,a5,4
   1661a:	973e                	add	a4,a4,a5
   1661c:	95be                	add	a1,a1,a5
   1661e:	01176663          	bltu	a4,a7,1662a <memcpy+0x5c>
   16622:	8082                	ret
   16624:	872a                	mv	a4,a0
   16626:	03157e63          	bgeu	a0,a7,16662 <memcpy+0x94>
   1662a:	0005c783          	lbu	a5,0(a1)
   1662e:	0705                	addi	a4,a4,1
   16630:	0585                	addi	a1,a1,1
   16632:	fef70fa3          	sb	a5,-1(a4)
   16636:	fee89ae3          	bne	a7,a4,1662a <memcpy+0x5c>
   1663a:	8082                	ret
   1663c:	0005c683          	lbu	a3,0(a1)
   16640:	0705                	addi	a4,a4,1
   16642:	00377793          	andi	a5,a4,3
   16646:	fed70fa3          	sb	a3,-1(a4)
   1664a:	0585                	addi	a1,a1,1
   1664c:	dfd1                	beqz	a5,165e8 <memcpy+0x1a>
   1664e:	0005c683          	lbu	a3,0(a1)
   16652:	0705                	addi	a4,a4,1
   16654:	00377793          	andi	a5,a4,3
   16658:	fed70fa3          	sb	a3,-1(a4)
   1665c:	0585                	addi	a1,a1,1
   1665e:	fff9                	bnez	a5,1663c <memcpy+0x6e>
   16660:	b761                	j	165e8 <memcpy+0x1a>
   16662:	8082                	ret
   16664:	1141                	addi	sp,sp,-16
   16666:	c622                	sw	s0,12(sp)
   16668:	02000413          	li	s0,32
   1666c:	0005a383          	lw	t2,0(a1)
   16670:	0045a283          	lw	t0,4(a1)
   16674:	0085af83          	lw	t6,8(a1)
   16678:	00c5af03          	lw	t5,12(a1)
   1667c:	0105ae83          	lw	t4,16(a1)
   16680:	0145ae03          	lw	t3,20(a1)
   16684:	0185a303          	lw	t1,24(a1)
   16688:	01c5a803          	lw	a6,28(a1)
   1668c:	5194                	lw	a3,32(a1)
   1668e:	02470713          	addi	a4,a4,36
   16692:	40e607b3          	sub	a5,a2,a4
   16696:	fc772e23          	sw	t2,-36(a4)
   1669a:	fe572023          	sw	t0,-32(a4)
   1669e:	fff72223          	sw	t6,-28(a4)
   166a2:	ffe72423          	sw	t5,-24(a4)
   166a6:	ffd72623          	sw	t4,-20(a4)
   166aa:	ffc72823          	sw	t3,-16(a4)
   166ae:	fe672a23          	sw	t1,-12(a4)
   166b2:	ff072c23          	sw	a6,-8(a4)
   166b6:	fed72e23          	sw	a3,-4(a4)
   166ba:	02458593          	addi	a1,a1,36
   166be:	faf447e3          	blt	s0,a5,1666c <memcpy+0x9e>
   166c2:	86ae                	mv	a3,a1
   166c4:	87ba                	mv	a5,a4
   166c6:	02c77163          	bgeu	a4,a2,166e8 <memcpy+0x11a>
   166ca:	0006a803          	lw	a6,0(a3)
   166ce:	0791                	addi	a5,a5,4
   166d0:	0691                	addi	a3,a3,4
   166d2:	ff07ae23          	sw	a6,-4(a5)
   166d6:	fec7eae3          	bltu	a5,a2,166ca <memcpy+0xfc>
   166da:	fff60793          	addi	a5,a2,-1
   166de:	8f99                	sub	a5,a5,a4
   166e0:	9bf1                	andi	a5,a5,-4
   166e2:	0791                	addi	a5,a5,4
   166e4:	973e                	add	a4,a4,a5
   166e6:	95be                	add	a1,a1,a5
   166e8:	01176563          	bltu	a4,a7,166f2 <memcpy+0x124>
   166ec:	4432                	lw	s0,12(sp)
   166ee:	0141                	addi	sp,sp,16
   166f0:	8082                	ret
   166f2:	0005c783          	lbu	a5,0(a1)
   166f6:	0705                	addi	a4,a4,1
   166f8:	0585                	addi	a1,a1,1
   166fa:	fef70fa3          	sb	a5,-1(a4)
   166fe:	fee887e3          	beq	a7,a4,166ec <memcpy+0x11e>
   16702:	0005c783          	lbu	a5,0(a1)
   16706:	0705                	addi	a4,a4,1
   16708:	0585                	addi	a1,a1,1
   1670a:	fef70fa3          	sb	a5,-1(a4)
   1670e:	fee892e3          	bne	a7,a4,166f2 <memcpy+0x124>
   16712:	bfe9                	j	166ec <memcpy+0x11e>

00016714 <strlen>:
   16714:	00357793          	andi	a5,a0,3
   16718:	872a                	mv	a4,a0
   1671a:	ef9d                	bnez	a5,16758 <strlen+0x44>
   1671c:	7f7f86b7          	lui	a3,0x7f7f8
   16720:	f7f68693          	addi	a3,a3,-129 # 7f7f7f7f <__BSS_END__+0x7f7d9523>
   16724:	55fd                	li	a1,-1
   16726:	4310                	lw	a2,0(a4)
   16728:	0711                	addi	a4,a4,4
   1672a:	00d677b3          	and	a5,a2,a3
   1672e:	97b6                	add	a5,a5,a3
   16730:	8fd1                	or	a5,a5,a2
   16732:	8fd5                	or	a5,a5,a3
   16734:	feb789e3          	beq	a5,a1,16726 <strlen+0x12>
   16738:	ffc74683          	lbu	a3,-4(a4)
   1673c:	40a707b3          	sub	a5,a4,a0
   16740:	ca8d                	beqz	a3,16772 <strlen+0x5e>
   16742:	ffd74683          	lbu	a3,-3(a4)
   16746:	c29d                	beqz	a3,1676c <strlen+0x58>
   16748:	ffe74503          	lbu	a0,-2(a4)
   1674c:	00a03533          	snez	a0,a0
   16750:	953e                	add	a0,a0,a5
   16752:	1579                	addi	a0,a0,-2
   16754:	8082                	ret
   16756:	d2f9                	beqz	a3,1671c <strlen+0x8>
   16758:	00074783          	lbu	a5,0(a4)
   1675c:	0705                	addi	a4,a4,1
   1675e:	00377693          	andi	a3,a4,3
   16762:	fbf5                	bnez	a5,16756 <strlen+0x42>
   16764:	8f09                	sub	a4,a4,a0
   16766:	fff70513          	addi	a0,a4,-1
   1676a:	8082                	ret
   1676c:	ffd78513          	addi	a0,a5,-3
   16770:	8082                	ret
   16772:	ffc78513          	addi	a0,a5,-4
   16776:	8082                	ret

00016778 <frexpl>:
   16778:	7159                	addi	sp,sp,-112
   1677a:	d0ca                	sw	s2,96(sp)
   1677c:	00c5a903          	lw	s2,12(a1)
   16780:	ccd2                	sw	s4,88(sp)
   16782:	cad6                	sw	s5,84(sp)
   16784:	c8da                	sw	s6,80(sp)
   16786:	0045aa83          	lw	s5,4(a1)
   1678a:	0005ab03          	lw	s6,0(a1)
   1678e:	0085aa03          	lw	s4,8(a1)
   16792:	cece                	sw	s3,92(sp)
   16794:	69a1                	lui	s3,0x8
   16796:	d4a2                	sw	s0,104(sp)
   16798:	d2a6                	sw	s1,100(sp)
   1679a:	d686                	sw	ra,108(sp)
   1679c:	01095493          	srli	s1,s2,0x10
   167a0:	19fd                	addi	s3,s3,-1 # 7fff <exit-0x8095>
   167a2:	d85a                	sw	s6,48(sp)
   167a4:	da56                	sw	s5,52(sp)
   167a6:	dc52                	sw	s4,56(sp)
   167a8:	de4a                	sw	s2,60(sp)
   167aa:	0134f4b3          	and	s1,s1,s3
   167ae:	00062023          	sw	zero,0(a2)
   167b2:	842a                	mv	s0,a0
   167b4:	05348963          	beq	s1,s3,16806 <frexpl+0x8e>
   167b8:	080c                	addi	a1,sp,16
   167ba:	1008                	addi	a0,sp,32
   167bc:	c6de                	sw	s7,76(sp)
   167be:	d05a                	sw	s6,32(sp)
   167c0:	8bb2                	mv	s7,a2
   167c2:	d256                	sw	s5,36(sp)
   167c4:	d452                	sw	s4,40(sp)
   167c6:	d64a                	sw	s2,44(sp)
   167c8:	c802                	sw	zero,16(sp)
   167ca:	ca02                	sw	zero,20(sp)
   167cc:	cc02                	sw	zero,24(sp)
   167ce:	ce02                	sw	zero,28(sp)
   167d0:	00004097          	auipc	ra,0x4
   167d4:	9b0080e7          	jalr	-1616(ra) # 1a180 <__eqtf2>
   167d8:	c951                	beqz	a0,1686c <frexpl+0xf4>
   167da:	4681                	li	a3,0
   167dc:	c8a1                	beqz	s1,1682c <frexpl+0xb4>
   167de:	7771                	lui	a4,0xffffc
   167e0:	0709                	addi	a4,a4,2 # ffffc002 <__BSS_END__+0xfffdd5a6>
   167e2:	5972                	lw	s2,60(sp)
   167e4:	94ba                	add	s1,s1,a4
   167e6:	800107b7          	lui	a5,0x80010
   167ea:	94b6                	add	s1,s1,a3
   167ec:	17fd                	addi	a5,a5,-1 # 8000ffff <__BSS_END__+0x7fff15a3>
   167ee:	009ba023          	sw	s1,0(s7)
   167f2:	5b42                	lw	s6,48(sp)
   167f4:	5ad2                	lw	s5,52(sp)
   167f6:	5a62                	lw	s4,56(sp)
   167f8:	4bb6                	lw	s7,76(sp)
   167fa:	00f97933          	and	s2,s2,a5
   167fe:	3ffe07b7          	lui	a5,0x3ffe0
   16802:	00f96933          	or	s2,s2,a5
   16806:	01642023          	sw	s6,0(s0)
   1680a:	01542223          	sw	s5,4(s0)
   1680e:	01442423          	sw	s4,8(s0)
   16812:	01242623          	sw	s2,12(s0)
   16816:	50b6                	lw	ra,108(sp)
   16818:	8522                	mv	a0,s0
   1681a:	5426                	lw	s0,104(sp)
   1681c:	5496                	lw	s1,100(sp)
   1681e:	5906                	lw	s2,96(sp)
   16820:	49f6                	lw	s3,92(sp)
   16822:	4a66                	lw	s4,88(sp)
   16824:	4ad6                	lw	s5,84(sp)
   16826:	4b46                	lw	s6,80(sp)
   16828:	6165                	addi	sp,sp,112
   1682a:	8082                	ret
   1682c:	407107b7          	lui	a5,0x40710
   16830:	860a                	mv	a2,sp
   16832:	080c                	addi	a1,sp,16
   16834:	1008                	addi	a0,sp,32
   16836:	c63e                	sw	a5,12(sp)
   16838:	c85a                	sw	s6,16(sp)
   1683a:	ca56                	sw	s5,20(sp)
   1683c:	cc52                	sw	s4,24(sp)
   1683e:	ce4a                	sw	s2,28(sp)
   16840:	c002                	sw	zero,0(sp)
   16842:	c202                	sw	zero,4(sp)
   16844:	c402                	sw	zero,8(sp)
   16846:	00004097          	auipc	ra,0x4
   1684a:	ba8080e7          	jalr	-1112(ra) # 1a3ee <__multf3>
   1684e:	5702                	lw	a4,32(sp)
   16850:	57b2                	lw	a5,44(sp)
   16852:	f8e00693          	li	a3,-114
   16856:	d83a                	sw	a4,48(sp)
   16858:	5712                	lw	a4,36(sp)
   1685a:	0107d493          	srli	s1,a5,0x10
   1685e:	de3e                	sw	a5,60(sp)
   16860:	da3a                	sw	a4,52(sp)
   16862:	5722                	lw	a4,40(sp)
   16864:	0134f4b3          	and	s1,s1,s3
   16868:	dc3a                	sw	a4,56(sp)
   1686a:	bf95                	j	167de <frexpl+0x66>
   1686c:	4bb6                	lw	s7,76(sp)
   1686e:	bf61                	j	16806 <frexpl+0x8e>

00016870 <__register_exitproc>:
   16870:	0001e737          	lui	a4,0x1e
   16874:	73c72783          	lw	a5,1852(a4) # 1e73c <__atexit>
   16878:	c3a1                	beqz	a5,168b8 <__register_exitproc+0x48>
   1687a:	43d8                	lw	a4,4(a5)
   1687c:	487d                	li	a6,31
   1687e:	06e84163          	blt	a6,a4,168e0 <__register_exitproc+0x70>
   16882:	00271813          	slli	a6,a4,0x2
   16886:	c11d                	beqz	a0,168ac <__register_exitproc+0x3c>
   16888:	01078333          	add	t1,a5,a6
   1688c:	08c32423          	sw	a2,136(t1)
   16890:	1887a883          	lw	a7,392(a5) # 40710188 <__BSS_END__+0x406f172c>
   16894:	4605                	li	a2,1
   16896:	00e61633          	sll	a2,a2,a4
   1689a:	00c8e8b3          	or	a7,a7,a2
   1689e:	1917a423          	sw	a7,392(a5)
   168a2:	10d32423          	sw	a3,264(t1)
   168a6:	4689                	li	a3,2
   168a8:	02d50163          	beq	a0,a3,168ca <__register_exitproc+0x5a>
   168ac:	0705                	addi	a4,a4,1
   168ae:	c3d8                	sw	a4,4(a5)
   168b0:	97c2                	add	a5,a5,a6
   168b2:	c78c                	sw	a1,8(a5)
   168b4:	4501                	li	a0,0
   168b6:	8082                	ret
   168b8:	0001f7b7          	lui	a5,0x1f
   168bc:	8a478813          	addi	a6,a5,-1884 # 1e8a4 <__atexit0>
   168c0:	73072e23          	sw	a6,1852(a4)
   168c4:	8a478793          	addi	a5,a5,-1884
   168c8:	bf4d                	j	1687a <__register_exitproc+0xa>
   168ca:	18c7a683          	lw	a3,396(a5)
   168ce:	0705                	addi	a4,a4,1
   168d0:	c3d8                	sw	a4,4(a5)
   168d2:	8ed1                	or	a3,a3,a2
   168d4:	18d7a623          	sw	a3,396(a5)
   168d8:	97c2                	add	a5,a5,a6
   168da:	c78c                	sw	a1,8(a5)
   168dc:	4501                	li	a0,0
   168de:	8082                	ret
   168e0:	557d                	li	a0,-1
   168e2:	8082                	ret

000168e4 <__call_exitprocs>:
   168e4:	7179                	addi	sp,sp,-48
   168e6:	cc52                	sw	s4,24(sp)
   168e8:	0001ea37          	lui	s4,0x1e
   168ec:	d04a                	sw	s2,32(sp)
   168ee:	73ca2903          	lw	s2,1852(s4) # 1e73c <__atexit>
   168f2:	d606                	sw	ra,44(sp)
   168f4:	06090c63          	beqz	s2,1696c <__call_exitprocs+0x88>
   168f8:	ce4e                	sw	s3,28(sp)
   168fa:	ca56                	sw	s5,20(sp)
   168fc:	c85a                	sw	s6,16(sp)
   168fe:	c65e                	sw	s7,12(sp)
   16900:	d422                	sw	s0,40(sp)
   16902:	d226                	sw	s1,36(sp)
   16904:	c462                	sw	s8,8(sp)
   16906:	8b2a                	mv	s6,a0
   16908:	8bae                	mv	s7,a1
   1690a:	59fd                	li	s3,-1
   1690c:	4a85                	li	s5,1
   1690e:	00492483          	lw	s1,4(s2)
   16912:	fff48413          	addi	s0,s1,-1
   16916:	04044463          	bltz	s0,1695e <__call_exitprocs+0x7a>
   1691a:	048a                	slli	s1,s1,0x2
   1691c:	94ca                	add	s1,s1,s2
   1691e:	040b9c63          	bnez	s7,16976 <__call_exitprocs+0x92>
   16922:	00492783          	lw	a5,4(s2)
   16926:	40d4                	lw	a3,4(s1)
   16928:	17fd                	addi	a5,a5,-1
   1692a:	08878063          	beq	a5,s0,169aa <__call_exitprocs+0xc6>
   1692e:	0004a223          	sw	zero,4(s1)
   16932:	c295                	beqz	a3,16956 <__call_exitprocs+0x72>
   16934:	18892783          	lw	a5,392(s2)
   16938:	008a9733          	sll	a4,s5,s0
   1693c:	00492c03          	lw	s8,4(s2)
   16940:	8ff9                	and	a5,a5,a4
   16942:	e3b9                	bnez	a5,16988 <__call_exitprocs+0xa4>
   16944:	9682                	jalr	a3
   16946:	00492703          	lw	a4,4(s2)
   1694a:	73ca2783          	lw	a5,1852(s4)
   1694e:	05871b63          	bne	a4,s8,169a4 <__call_exitprocs+0xc0>
   16952:	05279963          	bne	a5,s2,169a4 <__call_exitprocs+0xc0>
   16956:	147d                	addi	s0,s0,-1
   16958:	14f1                	addi	s1,s1,-4
   1695a:	fd3412e3          	bne	s0,s3,1691e <__call_exitprocs+0x3a>
   1695e:	5422                	lw	s0,40(sp)
   16960:	5492                	lw	s1,36(sp)
   16962:	49f2                	lw	s3,28(sp)
   16964:	4ad2                	lw	s5,20(sp)
   16966:	4b42                	lw	s6,16(sp)
   16968:	4bb2                	lw	s7,12(sp)
   1696a:	4c22                	lw	s8,8(sp)
   1696c:	50b2                	lw	ra,44(sp)
   1696e:	5902                	lw	s2,32(sp)
   16970:	4a62                	lw	s4,24(sp)
   16972:	6145                	addi	sp,sp,48
   16974:	8082                	ret
   16976:	1044a783          	lw	a5,260(s1)
   1697a:	fb7784e3          	beq	a5,s7,16922 <__call_exitprocs+0x3e>
   1697e:	147d                	addi	s0,s0,-1
   16980:	14f1                	addi	s1,s1,-4
   16982:	ff341ae3          	bne	s0,s3,16976 <__call_exitprocs+0x92>
   16986:	bfe1                	j	1695e <__call_exitprocs+0x7a>
   16988:	18c92783          	lw	a5,396(s2)
   1698c:	0844a583          	lw	a1,132(s1)
   16990:	8f7d                	and	a4,a4,a5
   16992:	ef19                	bnez	a4,169b0 <__call_exitprocs+0xcc>
   16994:	855a                	mv	a0,s6
   16996:	9682                	jalr	a3
   16998:	00492703          	lw	a4,4(s2)
   1699c:	73ca2783          	lw	a5,1852(s4)
   169a0:	fb8709e3          	beq	a4,s8,16952 <__call_exitprocs+0x6e>
   169a4:	dfcd                	beqz	a5,1695e <__call_exitprocs+0x7a>
   169a6:	893e                	mv	s2,a5
   169a8:	b79d                	j	1690e <__call_exitprocs+0x2a>
   169aa:	00892223          	sw	s0,4(s2)
   169ae:	b751                	j	16932 <__call_exitprocs+0x4e>
   169b0:	852e                	mv	a0,a1
   169b2:	9682                	jalr	a3
   169b4:	bf49                	j	16946 <__call_exitprocs+0x62>

000169b6 <abort>:
   169b6:	1141                	addi	sp,sp,-16
   169b8:	4519                	li	a0,6
   169ba:	c606                	sw	ra,12(sp)
   169bc:	00003097          	auipc	ra,0x3
   169c0:	2a6080e7          	jalr	678(ra) # 19c62 <raise>
   169c4:	4505                	li	a0,1
   169c6:	00003097          	auipc	ra,0x3
   169ca:	59e080e7          	jalr	1438(ra) # 19f64 <_exit>

000169ce <_malloc_trim_r>:
   169ce:	1101                	addi	sp,sp,-32
   169d0:	c64e                	sw	s3,12(sp)
   169d2:	0001e9b7          	lui	s3,0x1e
   169d6:	cc22                	sw	s0,24(sp)
   169d8:	ca26                	sw	s1,20(sp)
   169da:	c84a                	sw	s2,16(sp)
   169dc:	c452                	sw	s4,8(sp)
   169de:	ce06                	sw	ra,28(sp)
   169e0:	8a2e                	mv	s4,a1
   169e2:	892a                	mv	s2,a0
   169e4:	14098993          	addi	s3,s3,320 # 1e140 <__malloc_av_>
   169e8:	00002097          	auipc	ra,0x2
   169ec:	32a080e7          	jalr	810(ra) # 18d12 <__malloc_lock>
   169f0:	0089a703          	lw	a4,8(s3)
   169f4:	6785                	lui	a5,0x1
   169f6:	17bd                	addi	a5,a5,-17 # fef <exit-0xf0a5>
   169f8:	4344                	lw	s1,4(a4)
   169fa:	6705                	lui	a4,0x1
   169fc:	98f1                	andi	s1,s1,-4
   169fe:	00f48433          	add	s0,s1,a5
   16a02:	41440433          	sub	s0,s0,s4
   16a06:	8031                	srli	s0,s0,0xc
   16a08:	147d                	addi	s0,s0,-1
   16a0a:	0432                	slli	s0,s0,0xc
   16a0c:	00e44d63          	blt	s0,a4,16a26 <_malloc_trim_r+0x58>
   16a10:	4581                	li	a1,0
   16a12:	854a                	mv	a0,s2
   16a14:	00003097          	auipc	ra,0x3
   16a18:	396080e7          	jalr	918(ra) # 19daa <_sbrk_r>
   16a1c:	0089a783          	lw	a5,8(s3)
   16a20:	97a6                	add	a5,a5,s1
   16a22:	02f50063          	beq	a0,a5,16a42 <_malloc_trim_r+0x74>
   16a26:	854a                	mv	a0,s2
   16a28:	00002097          	auipc	ra,0x2
   16a2c:	2ec080e7          	jalr	748(ra) # 18d14 <__malloc_unlock>
   16a30:	40f2                	lw	ra,28(sp)
   16a32:	4462                	lw	s0,24(sp)
   16a34:	44d2                	lw	s1,20(sp)
   16a36:	4942                	lw	s2,16(sp)
   16a38:	49b2                	lw	s3,12(sp)
   16a3a:	4a22                	lw	s4,8(sp)
   16a3c:	4501                	li	a0,0
   16a3e:	6105                	addi	sp,sp,32
   16a40:	8082                	ret
   16a42:	408005b3          	neg	a1,s0
   16a46:	854a                	mv	a0,s2
   16a48:	00003097          	auipc	ra,0x3
   16a4c:	362080e7          	jalr	866(ra) # 19daa <_sbrk_r>
   16a50:	57fd                	li	a5,-1
   16a52:	02f50d63          	beq	a0,a5,16a8c <_malloc_trim_r+0xbe>
   16a56:	0001f7b7          	lui	a5,0x1f
   16a5a:	a3478793          	addi	a5,a5,-1484 # 1ea34 <__malloc_current_mallinfo>
   16a5e:	4398                	lw	a4,0(a5)
   16a60:	0089a683          	lw	a3,8(s3)
   16a64:	8c81                	sub	s1,s1,s0
   16a66:	0014e493          	ori	s1,s1,1
   16a6a:	8f01                	sub	a4,a4,s0
   16a6c:	854a                	mv	a0,s2
   16a6e:	c2c4                	sw	s1,4(a3)
   16a70:	c398                	sw	a4,0(a5)
   16a72:	00002097          	auipc	ra,0x2
   16a76:	2a2080e7          	jalr	674(ra) # 18d14 <__malloc_unlock>
   16a7a:	40f2                	lw	ra,28(sp)
   16a7c:	4462                	lw	s0,24(sp)
   16a7e:	44d2                	lw	s1,20(sp)
   16a80:	4942                	lw	s2,16(sp)
   16a82:	49b2                	lw	s3,12(sp)
   16a84:	4a22                	lw	s4,8(sp)
   16a86:	4505                	li	a0,1
   16a88:	6105                	addi	sp,sp,32
   16a8a:	8082                	ret
   16a8c:	4581                	li	a1,0
   16a8e:	854a                	mv	a0,s2
   16a90:	00003097          	auipc	ra,0x3
   16a94:	31a080e7          	jalr	794(ra) # 19daa <_sbrk_r>
   16a98:	0089a703          	lw	a4,8(s3)
   16a9c:	46bd                	li	a3,15
   16a9e:	40e507b3          	sub	a5,a0,a4
   16aa2:	f8f6d2e3          	bge	a3,a5,16a26 <_malloc_trim_r+0x58>
   16aa6:	0001e6b7          	lui	a3,0x1e
   16aaa:	71c6a683          	lw	a3,1820(a3) # 1e71c <__malloc_sbrk_base>
   16aae:	0017e793          	ori	a5,a5,1
   16ab2:	c35c                	sw	a5,4(a4)
   16ab4:	8d15                	sub	a0,a0,a3
   16ab6:	0001f6b7          	lui	a3,0x1f
   16aba:	a2a6aa23          	sw	a0,-1484(a3) # 1ea34 <__malloc_current_mallinfo>
   16abe:	b7a5                	j	16a26 <_malloc_trim_r+0x58>

00016ac0 <_free_r>:
   16ac0:	12058463          	beqz	a1,16be8 <_free_r+0x128>
   16ac4:	1141                	addi	sp,sp,-16
   16ac6:	c422                	sw	s0,8(sp)
   16ac8:	c226                	sw	s1,4(sp)
   16aca:	842e                	mv	s0,a1
   16acc:	84aa                	mv	s1,a0
   16ace:	c606                	sw	ra,12(sp)
   16ad0:	00002097          	auipc	ra,0x2
   16ad4:	242080e7          	jalr	578(ra) # 18d12 <__malloc_lock>
   16ad8:	ffc42503          	lw	a0,-4(s0)
   16adc:	ff840713          	addi	a4,s0,-8
   16ae0:	0001e5b7          	lui	a1,0x1e
   16ae4:	ffe57793          	andi	a5,a0,-2
   16ae8:	00f70633          	add	a2,a4,a5
   16aec:	14058593          	addi	a1,a1,320 # 1e140 <__malloc_av_>
   16af0:	4254                	lw	a3,4(a2)
   16af2:	0085a803          	lw	a6,8(a1)
   16af6:	9af1                	andi	a3,a3,-4
   16af8:	12c80b63          	beq	a6,a2,16c2e <_free_r+0x16e>
   16afc:	c254                	sw	a3,4(a2)
   16afe:	8905                	andi	a0,a0,1
   16b00:	00d60833          	add	a6,a2,a3
   16b04:	ed35                	bnez	a0,16b80 <_free_r+0xc0>
   16b06:	ff842303          	lw	t1,-8(s0)
   16b0a:	00482803          	lw	a6,4(a6)
   16b0e:	0001e537          	lui	a0,0x1e
   16b12:	40670733          	sub	a4,a4,t1
   16b16:	00872883          	lw	a7,8(a4) # 1008 <exit-0xf08c>
   16b1a:	14850513          	addi	a0,a0,328 # 1e148 <__malloc_av_+0x8>
   16b1e:	979a                	add	a5,a5,t1
   16b20:	00187813          	andi	a6,a6,1
   16b24:	0ea88863          	beq	a7,a0,16c14 <_free_r+0x154>
   16b28:	00c72303          	lw	t1,12(a4)
   16b2c:	0068a623          	sw	t1,12(a7)
   16b30:	01132423          	sw	a7,8(t1)
   16b34:	12080c63          	beqz	a6,16c6c <_free_r+0x1ac>
   16b38:	0017e693          	ori	a3,a5,1
   16b3c:	c354                	sw	a3,4(a4)
   16b3e:	c21c                	sw	a5,0(a2)
   16b40:	1ff00693          	li	a3,511
   16b44:	04f6eb63          	bltu	a3,a5,16b9a <_free_r+0xda>
   16b48:	ff87f693          	andi	a3,a5,-8
   16b4c:	06a1                	addi	a3,a3,8
   16b4e:	41c8                	lw	a0,4(a1)
   16b50:	96ae                	add	a3,a3,a1
   16b52:	4290                	lw	a2,0(a3)
   16b54:	0057d813          	srli	a6,a5,0x5
   16b58:	4785                	li	a5,1
   16b5a:	010797b3          	sll	a5,a5,a6
   16b5e:	8fc9                	or	a5,a5,a0
   16b60:	ff868513          	addi	a0,a3,-8
   16b64:	c748                	sw	a0,12(a4)
   16b66:	c710                	sw	a2,8(a4)
   16b68:	c1dc                	sw	a5,4(a1)
   16b6a:	c298                	sw	a4,0(a3)
   16b6c:	c658                	sw	a4,12(a2)
   16b6e:	4422                	lw	s0,8(sp)
   16b70:	40b2                	lw	ra,12(sp)
   16b72:	8526                	mv	a0,s1
   16b74:	4492                	lw	s1,4(sp)
   16b76:	0141                	addi	sp,sp,16
   16b78:	00002317          	auipc	t1,0x2
   16b7c:	19c30067          	jr	412(t1) # 18d14 <__malloc_unlock>
   16b80:	00482503          	lw	a0,4(a6)
   16b84:	8905                	andi	a0,a0,1
   16b86:	c135                	beqz	a0,16bea <_free_r+0x12a>
   16b88:	0017e693          	ori	a3,a5,1
   16b8c:	fed42e23          	sw	a3,-4(s0)
   16b90:	c21c                	sw	a5,0(a2)
   16b92:	1ff00693          	li	a3,511
   16b96:	faf6f9e3          	bgeu	a3,a5,16b48 <_free_r+0x88>
   16b9a:	0097d693          	srli	a3,a5,0x9
   16b9e:	4611                	li	a2,4
   16ba0:	0cd66863          	bltu	a2,a3,16c70 <_free_r+0x1b0>
   16ba4:	0067d693          	srli	a3,a5,0x6
   16ba8:	03968513          	addi	a0,a3,57
   16bac:	03868613          	addi	a2,a3,56
   16bb0:	050e                	slli	a0,a0,0x3
   16bb2:	952e                	add	a0,a0,a1
   16bb4:	4114                	lw	a3,0(a0)
   16bb6:	1561                	addi	a0,a0,-8
   16bb8:	00d51663          	bne	a0,a3,16bc4 <_free_r+0x104>
   16bbc:	a8cd                	j	16cae <_free_r+0x1ee>
   16bbe:	4694                	lw	a3,8(a3)
   16bc0:	00d50663          	beq	a0,a3,16bcc <_free_r+0x10c>
   16bc4:	42d0                	lw	a2,4(a3)
   16bc6:	9a71                	andi	a2,a2,-4
   16bc8:	fec7ebe3          	bltu	a5,a2,16bbe <_free_r+0xfe>
   16bcc:	46c8                	lw	a0,12(a3)
   16bce:	c748                	sw	a0,12(a4)
   16bd0:	c714                	sw	a3,8(a4)
   16bd2:	4422                	lw	s0,8(sp)
   16bd4:	c518                	sw	a4,8(a0)
   16bd6:	40b2                	lw	ra,12(sp)
   16bd8:	8526                	mv	a0,s1
   16bda:	4492                	lw	s1,4(sp)
   16bdc:	c6d8                	sw	a4,12(a3)
   16bde:	0141                	addi	sp,sp,16
   16be0:	00002317          	auipc	t1,0x2
   16be4:	13430067          	jr	308(t1) # 18d14 <__malloc_unlock>
   16be8:	8082                	ret
   16bea:	0001e537          	lui	a0,0x1e
   16bee:	97b6                	add	a5,a5,a3
   16bf0:	14850513          	addi	a0,a0,328 # 1e148 <__malloc_av_+0x8>
   16bf4:	4614                	lw	a3,8(a2)
   16bf6:	0aa68263          	beq	a3,a0,16c9a <_free_r+0x1da>
   16bfa:	00c62803          	lw	a6,12(a2)
   16bfe:	0017e513          	ori	a0,a5,1
   16c02:	00f70633          	add	a2,a4,a5
   16c06:	0106a623          	sw	a6,12(a3)
   16c0a:	00d82423          	sw	a3,8(a6)
   16c0e:	c348                	sw	a0,4(a4)
   16c10:	c21c                	sw	a5,0(a2)
   16c12:	b73d                	j	16b40 <_free_r+0x80>
   16c14:	0e081463          	bnez	a6,16cfc <_free_r+0x23c>
   16c18:	460c                	lw	a1,8(a2)
   16c1a:	4650                	lw	a2,12(a2)
   16c1c:	96be                	add	a3,a3,a5
   16c1e:	0016e793          	ori	a5,a3,1
   16c22:	c5d0                	sw	a2,12(a1)
   16c24:	c60c                	sw	a1,8(a2)
   16c26:	c35c                	sw	a5,4(a4)
   16c28:	9736                	add	a4,a4,a3
   16c2a:	c314                	sw	a3,0(a4)
   16c2c:	b789                	j	16b6e <_free_r+0xae>
   16c2e:	8905                	andi	a0,a0,1
   16c30:	96be                	add	a3,a3,a5
   16c32:	e909                	bnez	a0,16c44 <_free_r+0x184>
   16c34:	ff842503          	lw	a0,-8(s0)
   16c38:	8f09                	sub	a4,a4,a0
   16c3a:	475c                	lw	a5,12(a4)
   16c3c:	4710                	lw	a2,8(a4)
   16c3e:	96aa                	add	a3,a3,a0
   16c40:	c65c                	sw	a5,12(a2)
   16c42:	c790                	sw	a2,8(a5)
   16c44:	0001e7b7          	lui	a5,0x1e
   16c48:	0016e613          	ori	a2,a3,1
   16c4c:	7207a783          	lw	a5,1824(a5) # 1e720 <__malloc_trim_threshold>
   16c50:	c350                	sw	a2,4(a4)
   16c52:	c598                	sw	a4,8(a1)
   16c54:	f0f6ede3          	bltu	a3,a5,16b6e <_free_r+0xae>
   16c58:	0001e7b7          	lui	a5,0x1e
   16c5c:	7487a583          	lw	a1,1864(a5) # 1e748 <__malloc_top_pad>
   16c60:	8526                	mv	a0,s1
   16c62:	00000097          	auipc	ra,0x0
   16c66:	d6c080e7          	jalr	-660(ra) # 169ce <_malloc_trim_r>
   16c6a:	b711                	j	16b6e <_free_r+0xae>
   16c6c:	97b6                	add	a5,a5,a3
   16c6e:	b759                	j	16bf4 <_free_r+0x134>
   16c70:	4651                	li	a2,20
   16c72:	00d67e63          	bgeu	a2,a3,16c8e <_free_r+0x1ce>
   16c76:	05400613          	li	a2,84
   16c7a:	04d66463          	bltu	a2,a3,16cc2 <_free_r+0x202>
   16c7e:	00c7d693          	srli	a3,a5,0xc
   16c82:	06f68513          	addi	a0,a3,111
   16c86:	06e68613          	addi	a2,a3,110
   16c8a:	050e                	slli	a0,a0,0x3
   16c8c:	b71d                	j	16bb2 <_free_r+0xf2>
   16c8e:	05c68513          	addi	a0,a3,92
   16c92:	05b68613          	addi	a2,a3,91
   16c96:	050e                	slli	a0,a0,0x3
   16c98:	bf29                	j	16bb2 <_free_r+0xf2>
   16c9a:	c9d8                	sw	a4,20(a1)
   16c9c:	c998                	sw	a4,16(a1)
   16c9e:	0017e693          	ori	a3,a5,1
   16ca2:	c748                	sw	a0,12(a4)
   16ca4:	c708                	sw	a0,8(a4)
   16ca6:	c354                	sw	a3,4(a4)
   16ca8:	973e                	add	a4,a4,a5
   16caa:	c31c                	sw	a5,0(a4)
   16cac:	b5c9                	j	16b6e <_free_r+0xae>
   16cae:	0045a803          	lw	a6,4(a1)
   16cb2:	8609                	srai	a2,a2,0x2
   16cb4:	4785                	li	a5,1
   16cb6:	00c797b3          	sll	a5,a5,a2
   16cba:	0107e7b3          	or	a5,a5,a6
   16cbe:	c1dc                	sw	a5,4(a1)
   16cc0:	b739                	j	16bce <_free_r+0x10e>
   16cc2:	15400613          	li	a2,340
   16cc6:	00d66a63          	bltu	a2,a3,16cda <_free_r+0x21a>
   16cca:	00f7d693          	srli	a3,a5,0xf
   16cce:	07868513          	addi	a0,a3,120
   16cd2:	07768613          	addi	a2,a3,119
   16cd6:	050e                	slli	a0,a0,0x3
   16cd8:	bde9                	j	16bb2 <_free_r+0xf2>
   16cda:	55400613          	li	a2,1364
   16cde:	00d66a63          	bltu	a2,a3,16cf2 <_free_r+0x232>
   16ce2:	0127d693          	srli	a3,a5,0x12
   16ce6:	07d68513          	addi	a0,a3,125
   16cea:	07c68613          	addi	a2,a3,124
   16cee:	050e                	slli	a0,a0,0x3
   16cf0:	b5c9                	j	16bb2 <_free_r+0xf2>
   16cf2:	3f800513          	li	a0,1016
   16cf6:	07e00613          	li	a2,126
   16cfa:	bd65                	j	16bb2 <_free_r+0xf2>
   16cfc:	0017e693          	ori	a3,a5,1
   16d00:	c354                	sw	a3,4(a4)
   16d02:	c21c                	sw	a5,0(a2)
   16d04:	b5ad                	j	16b6e <_free_r+0xae>

00016d06 <_ldtoa_r>:
   16d06:	0001e8b7          	lui	a7,0x1e
   16d0a:	da488893          	addi	a7,a7,-604 # 1dda4 <blanks.1+0x10>
   16d0e:	0008af83          	lw	t6,0(a7)
   16d12:	0048af03          	lw	t5,4(a7)
   16d16:	0088ae83          	lw	t4,8(a7)
   16d1a:	00c8ae03          	lw	t3,12(a7)
   16d1e:	0108a303          	lw	t1,16(a7)
   16d22:	03852883          	lw	a7,56(a0)
   16d26:	7171                	addi	sp,sp,-176
   16d28:	d14a                	sw	s2,160(sp)
   16d2a:	cf4e                	sw	s3,156(sp)
   16d2c:	cd52                	sw	s4,152(sp)
   16d2e:	c95a                	sw	s6,144(sp)
   16d30:	c75e                	sw	s7,140(sp)
   16d32:	c562                	sw	s8,136(sp)
   16d34:	c366                	sw	s9,132(sp)
   16d36:	c16a                	sw	s10,128(sp)
   16d38:	d706                	sw	ra,172(sp)
   16d3a:	d522                	sw	s0,168(sp)
   16d3c:	d326                	sw	s1,164(sp)
   16d3e:	cb56                	sw	s5,148(sp)
   16d40:	deee                	sw	s11,124(sp)
   16d42:	cefe                	sw	t6,92(sp)
   16d44:	d0fa                	sw	t5,96(sp)
   16d46:	d2f6                	sw	t4,100(sp)
   16d48:	d4f2                	sw	t3,104(sp)
   16d4a:	d69a                	sw	t1,108(sp)
   16d4c:	cc32                	sw	a2,24(sp)
   16d4e:	ce36                	sw	a3,28(sp)
   16d50:	0005aa03          	lw	s4,0(a1)
   16d54:	0045a983          	lw	s3,4(a1)
   16d58:	0085a903          	lw	s2,8(a1)
   16d5c:	00c5ac03          	lw	s8,12(a1)
   16d60:	8b2a                	mv	s6,a0
   16d62:	8bba                	mv	s7,a4
   16d64:	8cbe                	mv	s9,a5
   16d66:	8d42                	mv	s10,a6
   16d68:	00088963          	beqz	a7,16d7a <_ldtoa_r+0x74>
   16d6c:	85c6                	mv	a1,a7
   16d6e:	00001097          	auipc	ra,0x1
   16d72:	74a080e7          	jalr	1866(ra) # 184b8 <__freedtoa>
   16d76:	020b2c23          	sw	zero,56(s6)
   16d7a:	5626                	lw	a2,104(sp)
   16d7c:	01fc5693          	srli	a3,s8,0x1f
   16d80:	001c1a93          	slli	s5,s8,0x1
   16d84:	40165713          	srai	a4,a2,0x1
   16d88:	74f1                	lui	s1,0xffffc
   16d8a:	001c1413          	slli	s0,s8,0x1
   16d8e:	8f75                	and	a4,a4,a3
   16d90:	011ada93          	srli	s5,s5,0x11
   16d94:	f9148493          	addi	s1,s1,-111 # ffffbf91 <__BSS_END__+0xfffdd535>
   16d98:	010c1d93          	slli	s11,s8,0x10
   16d9c:	00dca023          	sw	a3,0(s9)
   16da0:	8005                	srli	s0,s0,0x1
   16da2:	8f31                	xor	a4,a4,a2
   16da4:	010ddd93          	srli	s11,s11,0x10
   16da8:	009a87b3          	add	a5,s5,s1
   16dac:	100c                	addi	a1,sp,32
   16dae:	1808                	addi	a0,sp,48
   16db0:	d852                	sw	s4,48(sp)
   16db2:	da4e                	sw	s3,52(sp)
   16db4:	dc4a                	sw	s2,56(sp)
   16db6:	de22                	sw	s0,60(sp)
   16db8:	d052                	sw	s4,32(sp)
   16dba:	d24e                	sw	s3,36(sp)
   16dbc:	d44a                	sw	s2,40(sp)
   16dbe:	d622                	sw	s0,44(sp)
   16dc0:	d4ba                	sw	a4,104(sp)
   16dc2:	ca3e                	sw	a5,20(sp)
   16dc4:	c6d2                	sw	s4,76(sp)
   16dc6:	c8ce                	sw	s3,80(sp)
   16dc8:	caca                	sw	s2,84(sp)
   16dca:	ccee                	sw	s11,88(sp)
   16dcc:	00005097          	auipc	ra,0x5
   16dd0:	fbc080e7          	jalr	-68(ra) # 1bd88 <__unordtf2>
   16dd4:	e575                	bnez	a0,16ec0 <_ldtoa_r+0x1ba>
   16dd6:	7fff0cb7          	lui	s9,0x7fff0
   16dda:	54fd                	li	s1,-1
   16ddc:	1cfd                	addi	s9,s9,-1 # 7ffeffff <__BSS_END__+0x7ffd15a3>
   16dde:	100c                	addi	a1,sp,32
   16de0:	1808                	addi	a0,sp,48
   16de2:	d852                	sw	s4,48(sp)
   16de4:	da4e                	sw	s3,52(sp)
   16de6:	dc4a                	sw	s2,56(sp)
   16de8:	de22                	sw	s0,60(sp)
   16dea:	d026                	sw	s1,32(sp)
   16dec:	d226                	sw	s1,36(sp)
   16dee:	d426                	sw	s1,40(sp)
   16df0:	d666                	sw	s9,44(sp)
   16df2:	00005097          	auipc	ra,0x5
   16df6:	f96080e7          	jalr	-106(ra) # 1bd88 <__unordtf2>
   16dfa:	e12d                	bnez	a0,16e5c <_ldtoa_r+0x156>
   16dfc:	100c                	addi	a1,sp,32
   16dfe:	1808                	addi	a0,sp,48
   16e00:	00003097          	auipc	ra,0x3
   16e04:	50a080e7          	jalr	1290(ra) # 1a30a <__letf2>
   16e08:	04a05a63          	blez	a0,16e5c <_ldtoa_r+0x156>
   16e0c:	478d                	li	a5,3
   16e0e:	c4be                	sw	a5,72(sp)
   16e10:	47e2                	lw	a5,24(sp)
   16e12:	4872                	lw	a6,28(sp)
   16e14:	4652                	lw	a2,20(sp)
   16e16:	00b8                	addi	a4,sp,72
   16e18:	c06a                	sw	s10,0(sp)
   16e1a:	88de                	mv	a7,s7
   16e1c:	00f4                	addi	a3,sp,76
   16e1e:	08ec                	addi	a1,sp,92
   16e20:	855a                	mv	a0,s6
   16e22:	00000097          	auipc	ra,0x0
   16e26:	146080e7          	jalr	326(ra) # 16f68 <__gdtoa>
   16e2a:	000ba703          	lw	a4,0(s7)
   16e2e:	77e1                	lui	a5,0xffff8
   16e30:	00f71763          	bne	a4,a5,16e3e <_ldtoa_r+0x138>
   16e34:	800007b7          	lui	a5,0x80000
   16e38:	17fd                	addi	a5,a5,-1 # 7fffffff <__BSS_END__+0x7ffe15a3>
   16e3a:	00fba023          	sw	a5,0(s7)
   16e3e:	50ba                	lw	ra,172(sp)
   16e40:	542a                	lw	s0,168(sp)
   16e42:	549a                	lw	s1,164(sp)
   16e44:	590a                	lw	s2,160(sp)
   16e46:	49fa                	lw	s3,156(sp)
   16e48:	4a6a                	lw	s4,152(sp)
   16e4a:	4ada                	lw	s5,148(sp)
   16e4c:	4b4a                	lw	s6,144(sp)
   16e4e:	4bba                	lw	s7,140(sp)
   16e50:	4c2a                	lw	s8,136(sp)
   16e52:	4c9a                	lw	s9,132(sp)
   16e54:	4d0a                	lw	s10,128(sp)
   16e56:	5df6                	lw	s11,124(sp)
   16e58:	614d                	addi	sp,sp,176
   16e5a:	8082                	ret
   16e5c:	67c1                	lui	a5,0x10
   16e5e:	100c                	addi	a1,sp,32
   16e60:	1808                	addi	a0,sp,48
   16e62:	d852                	sw	s4,48(sp)
   16e64:	da4e                	sw	s3,52(sp)
   16e66:	dc4a                	sw	s2,56(sp)
   16e68:	de22                	sw	s0,60(sp)
   16e6a:	d002                	sw	zero,32(sp)
   16e6c:	d202                	sw	zero,36(sp)
   16e6e:	d402                	sw	zero,40(sp)
   16e70:	d63e                	sw	a5,44(sp)
   16e72:	00003097          	auipc	ra,0x3
   16e76:	3b4080e7          	jalr	948(ra) # 1a226 <__getf2>
   16e7a:	00054963          	bltz	a0,16e8c <_ldtoa_r+0x186>
   16e7e:	67c1                	lui	a5,0x10
   16e80:	00fdedb3          	or	s11,s11,a5
   16e84:	4785                	li	a5,1
   16e86:	c4be                	sw	a5,72(sp)
   16e88:	ccee                	sw	s11,88(sp)
   16e8a:	b759                	j	16e10 <_ldtoa_r+0x10a>
   16e8c:	100c                	addi	a1,sp,32
   16e8e:	1808                	addi	a0,sp,48
   16e90:	d852                	sw	s4,48(sp)
   16e92:	da4e                	sw	s3,52(sp)
   16e94:	dc4a                	sw	s2,56(sp)
   16e96:	de62                	sw	s8,60(sp)
   16e98:	d002                	sw	zero,32(sp)
   16e9a:	d202                	sw	zero,36(sp)
   16e9c:	d402                	sw	zero,40(sp)
   16e9e:	d602                	sw	zero,44(sp)
   16ea0:	00003097          	auipc	ra,0x3
   16ea4:	2e0080e7          	jalr	736(ra) # 1a180 <__eqtf2>
   16ea8:	e119                	bnez	a0,16eae <_ldtoa_r+0x1a8>
   16eaa:	c482                	sw	zero,72(sp)
   16eac:	b795                	j	16e10 <_ldtoa_r+0x10a>
   16eae:	74f1                	lui	s1,0xffffc
   16eb0:	4789                	li	a5,2
   16eb2:	f9248493          	addi	s1,s1,-110 # ffffbf92 <__BSS_END__+0xfffdd536>
   16eb6:	c4be                	sw	a5,72(sp)
   16eb8:	009a87b3          	add	a5,s5,s1
   16ebc:	ca3e                	sw	a5,20(sp)
   16ebe:	bf89                	j	16e10 <_ldtoa_r+0x10a>
   16ec0:	4791                	li	a5,4
   16ec2:	c4be                	sw	a5,72(sp)
   16ec4:	b7b1                	j	16e10 <_ldtoa_r+0x10a>

00016ec6 <_ldcheck>:
   16ec6:	7139                	addi	sp,sp,-64
   16ec8:	da26                	sw	s1,52(sp)
   16eca:	4544                	lw	s1,12(a0)
   16ecc:	d64e                	sw	s3,44(sp)
   16ece:	d452                	sw	s4,40(sp)
   16ed0:	00852983          	lw	s3,8(a0)
   16ed4:	00452a03          	lw	s4,4(a0)
   16ed8:	d256                	sw	s5,36(sp)
   16eda:	00052a83          	lw	s5,0(a0)
   16ede:	0486                	slli	s1,s1,0x1
   16ee0:	8085                	srli	s1,s1,0x1
   16ee2:	858a                	mv	a1,sp
   16ee4:	0808                	addi	a0,sp,16
   16ee6:	de06                	sw	ra,60(sp)
   16ee8:	c856                	sw	s5,16(sp)
   16eea:	ca52                	sw	s4,20(sp)
   16eec:	cc4e                	sw	s3,24(sp)
   16eee:	ce26                	sw	s1,28(sp)
   16ef0:	c056                	sw	s5,0(sp)
   16ef2:	c252                	sw	s4,4(sp)
   16ef4:	c44e                	sw	s3,8(sp)
   16ef6:	c626                	sw	s1,12(sp)
   16ef8:	00005097          	auipc	ra,0x5
   16efc:	e90080e7          	jalr	-368(ra) # 1bd88 <__unordtf2>
   16f00:	ed21                	bnez	a0,16f58 <_ldcheck+0x92>
   16f02:	d05a                	sw	s6,32(sp)
   16f04:	7fff0b37          	lui	s6,0x7fff0
   16f08:	d84a                	sw	s2,48(sp)
   16f0a:	1b7d                	addi	s6,s6,-1 # 7ffeffff <__BSS_END__+0x7ffd15a3>
   16f0c:	597d                	li	s2,-1
   16f0e:	858a                	mv	a1,sp
   16f10:	0808                	addi	a0,sp,16
   16f12:	dc22                	sw	s0,56(sp)
   16f14:	c04a                	sw	s2,0(sp)
   16f16:	c24a                	sw	s2,4(sp)
   16f18:	c44a                	sw	s2,8(sp)
   16f1a:	c65a                	sw	s6,12(sp)
   16f1c:	4405                	li	s0,1
   16f1e:	00005097          	auipc	ra,0x5
   16f22:	e6a080e7          	jalr	-406(ra) # 1bd88 <__unordtf2>
   16f26:	c105                	beqz	a0,16f46 <_ldcheck+0x80>
   16f28:	50f2                	lw	ra,60(sp)
   16f2a:	00144513          	xori	a0,s0,1
   16f2e:	5462                	lw	s0,56(sp)
   16f30:	0ff57513          	zext.b	a0,a0
   16f34:	5942                	lw	s2,48(sp)
   16f36:	5b02                	lw	s6,32(sp)
   16f38:	54d2                	lw	s1,52(sp)
   16f3a:	59b2                	lw	s3,44(sp)
   16f3c:	5a22                	lw	s4,40(sp)
   16f3e:	5a92                	lw	s5,36(sp)
   16f40:	0506                	slli	a0,a0,0x1
   16f42:	6121                	addi	sp,sp,64
   16f44:	8082                	ret
   16f46:	858a                	mv	a1,sp
   16f48:	0808                	addi	a0,sp,16
   16f4a:	00003097          	auipc	ra,0x3
   16f4e:	3c0080e7          	jalr	960(ra) # 1a30a <__letf2>
   16f52:	00152413          	slti	s0,a0,1
   16f56:	bfc9                	j	16f28 <_ldcheck+0x62>
   16f58:	50f2                	lw	ra,60(sp)
   16f5a:	54d2                	lw	s1,52(sp)
   16f5c:	59b2                	lw	s3,44(sp)
   16f5e:	5a22                	lw	s4,40(sp)
   16f60:	5a92                	lw	s5,36(sp)
   16f62:	4505                	li	a0,1
   16f64:	6121                	addi	sp,sp,64
   16f66:	8082                	ret

00016f68 <__gdtoa>:
   16f68:	7155                	addi	sp,sp,-208
   16f6a:	d95a                	sw	s6,176(sp)
   16f6c:	00072b03          	lw	s6,0(a4)
   16f70:	d16a                	sw	s10,160(sp)
   16f72:	c786                	sw	ra,204(sp)
   16f74:	fcfb7313          	andi	t1,s6,-49
   16f78:	00672023          	sw	t1,0(a4)
   16f7c:	8d3a                	mv	s10,a4
   16f7e:	474e                	lw	a4,208(sp)
   16f80:	00fb7313          	andi	t1,s6,15
   16f84:	4e8d                	li	t4,3
   16f86:	c63a                	sw	a4,12(sp)
   16f88:	c83e                	sw	a5,16(sp)
   16f8a:	cc42                	sw	a6,24(sp)
   16f8c:	c446                	sw	a7,8(sp)
   16f8e:	5fd30363          	beq	t1,t4,17574 <__gdtoa+0x60c>
   16f92:	d366                	sw	s9,164(sp)
   16f94:	00cb7c93          	andi	s9,s6,12
   16f98:	560c9563          	bnez	s9,17502 <__gdtoa+0x59a>
   16f9c:	c5a2                	sw	s0,200(sp)
   16f9e:	842a                	mv	s0,a0
   16fa0:	5a030363          	beqz	t1,17546 <__gdtoa+0x5de>
   16fa4:	d75e                	sw	s7,172(sp)
   16fa6:	0005ab83          	lw	s7,0(a1)
   16faa:	c1ca                	sw	s2,192(sp)
   16fac:	db56                	sw	s5,180(sp)
   16fae:	cf6e                	sw	s11,156(sp)
   16fb0:	8936                	mv	s2,a3
   16fb2:	c3a6                	sw	s1,196(sp)
   16fb4:	02000693          	li	a3,32
   16fb8:	8dae                	mv	s11,a1
   16fba:	8ab2                	mv	s5,a2
   16fbc:	4581                	li	a1,0
   16fbe:	02000793          	li	a5,32
   16fc2:	0176d663          	bge	a3,s7,16fce <__gdtoa+0x66>
   16fc6:	0786                	slli	a5,a5,0x1
   16fc8:	0585                	addi	a1,a1,1
   16fca:	ff77cee3          	blt	a5,s7,16fc6 <__gdtoa+0x5e>
   16fce:	8522                	mv	a0,s0
   16fd0:	00002097          	auipc	ra,0x2
   16fd4:	d46080e7          	jalr	-698(ra) # 18d16 <_Balloc>
   16fd8:	84aa                	mv	s1,a0
   16fda:	0a050ce3          	beqz	a0,17892 <__gdtoa+0x92a>
   16fde:	fffb8513          	addi	a0,s7,-1
   16fe2:	8515                	srai	a0,a0,0x5
   16fe4:	00251593          	slli	a1,a0,0x2
   16fe8:	df4e                	sw	s3,188(sp)
   16fea:	d562                	sw	s8,168(sp)
   16fec:	95ca                	add	a1,a1,s2
   16fee:	01448693          	addi	a3,s1,20
   16ff2:	87ca                	mv	a5,s2
   16ff4:	4398                	lw	a4,0(a5)
   16ff6:	0791                	addi	a5,a5,4 # 10004 <exit-0x90>
   16ff8:	0691                	addi	a3,a3,4
   16ffa:	fee6ae23          	sw	a4,-4(a3)
   16ffe:	fef5fbe3          	bgeu	a1,a5,16ff4 <__gdtoa+0x8c>
   17002:	0585                	addi	a1,a1,1
   17004:	00190793          	addi	a5,s2,1
   17008:	4691                	li	a3,4
   1700a:	00f5e563          	bltu	a1,a5,17014 <__gdtoa+0xac>
   1700e:	050a                	slli	a0,a0,0x2
   17010:	00450693          	addi	a3,a0,4
   17014:	4026dc13          	srai	s8,a3,0x2
   17018:	96a6                	add	a3,a3,s1
   1701a:	a021                	j	17022 <__gdtoa+0xba>
   1701c:	16f1                	addi	a3,a3,-4
   1701e:	5a0c0263          	beqz	s8,175c2 <__gdtoa+0x65a>
   17022:	4a9c                	lw	a5,16(a3)
   17024:	89e2                	mv	s3,s8
   17026:	1c7d                	addi	s8,s8,-1
   17028:	dbf5                	beqz	a5,1701c <__gdtoa+0xb4>
   1702a:	004c0793          	addi	a5,s8,4
   1702e:	078a                	slli	a5,a5,0x2
   17030:	97a6                	add	a5,a5,s1
   17032:	43c8                	lw	a0,4(a5)
   17034:	0134a823          	sw	s3,16(s1)
   17038:	0996                	slli	s3,s3,0x5
   1703a:	00002097          	auipc	ra,0x2
   1703e:	e58080e7          	jalr	-424(ra) # 18e92 <__hi0bits>
   17042:	40a98c33          	sub	s8,s3,a0
   17046:	8526                	mv	a0,s1
   17048:	00001097          	auipc	ra,0x1
   1704c:	682080e7          	jalr	1666(ra) # 186ca <__trailz_D2A>
   17050:	c72a                	sw	a0,140(sp)
   17052:	d256                	sw	s5,36(sp)
   17054:	58051e63          	bnez	a0,175f0 <__gdtoa+0x688>
   17058:	4894                	lw	a3,16(s1)
   1705a:	4c068963          	beqz	a3,1752c <__gdtoa+0x5c4>
   1705e:	016c                	addi	a1,sp,140
   17060:	8526                	mv	a0,s1
   17062:	dd52                	sw	s4,184(sp)
   17064:	00002097          	auipc	ra,0x2
   17068:	532080e7          	jalr	1330(ra) # 19596 <__b2d>
   1706c:	00c59993          	slli	s3,a1,0xc
   17070:	00c9d993          	srli	s3,s3,0xc
   17074:	3ff006b7          	lui	a3,0x3ff00
   17078:	00d9e833          	or	a6,s3,a3
   1707c:	5712                	lw	a4,36(sp)
   1707e:	0001e6b7          	lui	a3,0x1e
   17082:	6b86a603          	lw	a2,1720(a3) # 1e6b8 <__SDATA_BEGIN__>
   17086:	6bc6a683          	lw	a3,1724(a3)
   1708a:	9762                	add	a4,a4,s8
   1708c:	85c2                	mv	a1,a6
   1708e:	87aa                	mv	a5,a0
   17090:	fff70a13          	addi	s4,a4,-1
   17094:	d842                	sw	a6,48(sp)
   17096:	d43a                	sw	a4,40(sp)
   17098:	c4be                	sw	a5,72(sp)
   1709a:	c2aa                	sw	a0,68(sp)
   1709c:	ffffb097          	auipc	ra,0xffffb
   170a0:	4b8080e7          	jalr	1208(ra) # 12554 <__subdf3>
   170a4:	0001e6b7          	lui	a3,0x1e
   170a8:	6c06a603          	lw	a2,1728(a3) # 1e6c0 <__SDATA_BEGIN__+0x8>
   170ac:	6c46a683          	lw	a3,1732(a3)
   170b0:	ffffb097          	auipc	ra,0xffffb
   170b4:	02a080e7          	jalr	42(ra) # 120da <__muldf3>
   170b8:	0001e6b7          	lui	a3,0x1e
   170bc:	6c86a603          	lw	a2,1736(a3) # 1e6c8 <__SDATA_BEGIN__+0x10>
   170c0:	6cc6a683          	lw	a3,1740(a3)
   170c4:	ffffa097          	auipc	ra,0xffffa
   170c8:	32c080e7          	jalr	812(ra) # 113f0 <__adddf3>
   170cc:	87aa                	mv	a5,a0
   170ce:	8552                	mv	a0,s4
   170d0:	ce3e                	sw	a5,28(sp)
   170d2:	89ae                	mv	s3,a1
   170d4:	ffffc097          	auipc	ra,0xffffc
   170d8:	afc080e7          	jalr	-1284(ra) # 12bd0 <__floatsidf>
   170dc:	0001e6b7          	lui	a3,0x1e
   170e0:	6d06a603          	lw	a2,1744(a3) # 1e6d0 <__SDATA_BEGIN__+0x18>
   170e4:	6d46a683          	lw	a3,1748(a3)
   170e8:	ffffb097          	auipc	ra,0xffffb
   170ec:	ff2080e7          	jalr	-14(ra) # 120da <__muldf3>
   170f0:	47f2                	lw	a5,28(sp)
   170f2:	862a                	mv	a2,a0
   170f4:	86ae                	mv	a3,a1
   170f6:	853e                	mv	a0,a5
   170f8:	85ce                	mv	a1,s3
   170fa:	ffffa097          	auipc	ra,0xffffa
   170fe:	2f6080e7          	jalr	758(ra) # 113f0 <__adddf3>
   17102:	d02a                	sw	a0,32(sp)
   17104:	89ae                	mv	s3,a1
   17106:	8552                	mv	a0,s4
   17108:	000a5563          	bgez	s4,17112 <__gdtoa+0x1aa>
   1710c:	5722                	lw	a4,40(sp)
   1710e:	4505                	li	a0,1
   17110:	8d19                	sub	a0,a0,a4
   17112:	bcb50513          	addi	a0,a0,-1077
   17116:	02a05a63          	blez	a0,1714a <__gdtoa+0x1e2>
   1711a:	ffffc097          	auipc	ra,0xffffc
   1711e:	ab6080e7          	jalr	-1354(ra) # 12bd0 <__floatsidf>
   17122:	0001e6b7          	lui	a3,0x1e
   17126:	6d86a603          	lw	a2,1752(a3) # 1e6d8 <__SDATA_BEGIN__+0x20>
   1712a:	6dc6a683          	lw	a3,1756(a3)
   1712e:	ffffb097          	auipc	ra,0xffffb
   17132:	fac080e7          	jalr	-84(ra) # 120da <__muldf3>
   17136:	862a                	mv	a2,a0
   17138:	5502                	lw	a0,32(sp)
   1713a:	86ae                	mv	a3,a1
   1713c:	85ce                	mv	a1,s3
   1713e:	ffffa097          	auipc	ra,0xffffa
   17142:	2b2080e7          	jalr	690(ra) # 113f0 <__adddf3>
   17146:	d02a                	sw	a0,32(sp)
   17148:	89ae                	mv	s3,a1
   1714a:	5502                	lw	a0,32(sp)
   1714c:	85ce                	mv	a1,s3
   1714e:	ffffc097          	auipc	ra,0xffffc
   17152:	a1e080e7          	jalr	-1506(ra) # 12b6c <__fixdfsi>
   17156:	882a                	mv	a6,a0
   17158:	5502                	lw	a0,32(sp)
   1715a:	85ce                	mv	a1,s3
   1715c:	4601                	li	a2,0
   1715e:	4681                	li	a3,0
   17160:	ce42                	sw	a6,28(sp)
   17162:	ffffb097          	auipc	ra,0xffffb
   17166:	ede080e7          	jalr	-290(ra) # 12040 <__ledf2>
   1716a:	02055263          	bgez	a0,1718e <__gdtoa+0x226>
   1716e:	4572                	lw	a0,28(sp)
   17170:	ffffc097          	auipc	ra,0xffffc
   17174:	a60080e7          	jalr	-1440(ra) # 12bd0 <__floatsidf>
   17178:	5602                	lw	a2,32(sp)
   1717a:	86ce                	mv	a3,s3
   1717c:	ffffb097          	auipc	ra,0xffffb
   17180:	dc0080e7          	jalr	-576(ra) # 11f3c <__eqdf2>
   17184:	47f2                	lw	a5,28(sp)
   17186:	00a03533          	snez	a0,a0
   1718a:	8f89                	sub	a5,a5,a0
   1718c:	ce3e                	sw	a5,28(sp)
   1718e:	57c2                	lw	a5,48(sp)
   17190:	014a1613          	slli	a2,s4,0x14
   17194:	4772                	lw	a4,28(sp)
   17196:	414c0a33          	sub	s4,s8,s4
   1719a:	00f609b3          	add	s3,a2,a5
   1719e:	fffa0793          	addi	a5,s4,-1
   171a2:	46d9                	li	a3,22
   171a4:	d03e                	sw	a5,32(sp)
   171a6:	42e6e163          	bltu	a3,a4,175c8 <__gdtoa+0x660>
   171aa:	0001e7b7          	lui	a5,0x1e
   171ae:	dc878613          	addi	a2,a5,-568 # 1ddc8 <__mprec_tens>
   171b2:	00371693          	slli	a3,a4,0x3
   171b6:	96b2                	add	a3,a3,a2
   171b8:	4896                	lw	a7,68(sp)
   171ba:	4288                	lw	a0,0(a3)
   171bc:	42cc                	lw	a1,4(a3)
   171be:	8646                	mv	a2,a7
   171c0:	86ce                	mv	a3,s3
   171c2:	ffffb097          	auipc	ra,0xffffb
   171c6:	de4080e7          	jalr	-540(ra) # 11fa6 <__gedf2>
   171ca:	6ea04963          	bgtz	a0,178bc <__gdtoa+0x954>
   171ce:	c882                	sw	zero,80(sp)
   171d0:	d802                	sw	zero,48(sp)
   171d2:	01404763          	bgtz	s4,171e0 <__gdtoa+0x278>
   171d6:	4685                	li	a3,1
   171d8:	414687b3          	sub	a5,a3,s4
   171dc:	d83e                	sw	a5,48(sp)
   171de:	d002                	sw	zero,32(sp)
   171e0:	5702                	lw	a4,32(sp)
   171e2:	47f2                	lw	a5,28(sp)
   171e4:	dc02                	sw	zero,56(sp)
   171e6:	973e                	add	a4,a4,a5
   171e8:	d03a                	sw	a4,32(sp)
   171ea:	de3e                	sw	a5,60(sp)
   171ec:	47c2                	lw	a5,16(sp)
   171ee:	46a5                	li	a3,9
   171f0:	40f6ed63          	bltu	a3,a5,1760a <__gdtoa+0x6a2>
   171f4:	4695                	li	a3,5
   171f6:	6cf6c863          	blt	a3,a5,178c6 <__gdtoa+0x95e>
   171fa:	57a2                	lw	a5,40(sp)
   171fc:	4611                	li	a2,4
   171fe:	3fd78793          	addi	a5,a5,1021
   17202:	7f87ba13          	sltiu	s4,a5,2040
   17206:	47c2                	lw	a5,16(sp)
   17208:	3ec788e3          	beq	a5,a2,17df8 <__gdtoa+0xe90>
   1720c:	3ed782e3          	beq	a5,a3,17df0 <__gdtoa+0xe88>
   17210:	4689                	li	a3,2
   17212:	3ed786e3          	beq	a5,a3,17dfe <__gdtoa+0xe96>
   17216:	468d                	li	a3,3
   17218:	c082                	sw	zero,64(sp)
   1721a:	3ed79e63          	bne	a5,a3,17616 <__gdtoa+0x6ae>
   1721e:	57f2                	lw	a5,60(sp)
   17220:	4762                	lw	a4,24(sp)
   17222:	97ba                	add	a5,a5,a4
   17224:	cabe                	sw	a5,84(sp)
   17226:	0785                	addi	a5,a5,1
   17228:	da3e                	sw	a5,52(sp)
   1722a:	24f050e3          	blez	a5,17c6a <__gdtoa+0xd02>
   1722e:	86be                	mv	a3,a5
   17230:	85be                	mv	a1,a5
   17232:	8522                	mv	a0,s0
   17234:	c736                	sw	a3,140(sp)
   17236:	00001097          	auipc	ra,0x1
   1723a:	1ba080e7          	jalr	442(ra) # 183f0 <__rv_alloc_D2A>
   1723e:	8f2a                	mv	t5,a0
   17240:	36050663          	beqz	a0,175ac <__gdtoa+0x644>
   17244:	00cda783          	lw	a5,12(s11)
   17248:	17fd                	addi	a5,a5,-1
   1724a:	d43e                	sw	a5,40(sp)
   1724c:	40078763          	beqz	a5,1765a <__gdtoa+0x6f2>
   17250:	6607c363          	bltz	a5,178b6 <__gdtoa+0x94e>
   17254:	100b7e13          	andi	t3,s6,256
   17258:	3e0e1c63          	bnez	t3,17650 <__gdtoa+0x6e8>
   1725c:	5792                	lw	a5,36(sp)
   1725e:	0007c663          	bltz	a5,1726a <__gdtoa+0x302>
   17262:	57f2                	lw	a5,60(sp)
   17264:	46b9                	li	a3,14
   17266:	66f6df63          	bge	a3,a5,178e4 <__gdtoa+0x97c>
   1726a:	4786                	lw	a5,64(sp)
   1726c:	64078163          	beqz	a5,178ae <__gdtoa+0x946>
   17270:	5792                	lw	a5,36(sp)
   17272:	418b8333          	sub	t1,s7,s8
   17276:	004da683          	lw	a3,4(s11)
   1727a:	00130613          	addi	a2,t1,1
   1727e:	c732                	sw	a2,140(sp)
   17280:	40678333          	sub	t1,a5,t1
   17284:	22d356e3          	bge	t1,a3,17cb0 <__gdtoa+0xd48>
   17288:	4742                	lw	a4,16(sp)
   1728a:	ffd70613          	addi	a2,a4,-3
   1728e:	9a75                	andi	a2,a2,-3
   17290:	140609e3          	beqz	a2,17be2 <__gdtoa+0xc7a>
   17294:	40d786b3          	sub	a3,a5,a3
   17298:	0685                	addi	a3,a3,1
   1729a:	c736                	sw	a3,140(sp)
   1729c:	4605                	li	a2,1
   1729e:	00e65863          	bge	a2,a4,172ae <__gdtoa+0x346>
   172a2:	57d2                	lw	a5,52(sp)
   172a4:	00f05563          	blez	a5,172ae <__gdtoa+0x346>
   172a8:	57d2                	lw	a5,52(sp)
   172aa:	7cd7c8e3          	blt	a5,a3,1827a <__gdtoa+0x1312>
   172ae:	57c2                	lw	a5,48(sp)
   172b0:	5702                	lw	a4,32(sp)
   172b2:	5b62                	lw	s6,56(sp)
   172b4:	8a3e                	mv	s4,a5
   172b6:	9736                	add	a4,a4,a3
   172b8:	97b6                	add	a5,a5,a3
   172ba:	d03a                	sw	a4,32(sp)
   172bc:	d83e                	sw	a5,48(sp)
   172be:	4585                	li	a1,1
   172c0:	8522                	mv	a0,s0
   172c2:	d27a                	sw	t5,36(sp)
   172c4:	00002097          	auipc	ra,0x2
   172c8:	cac080e7          	jalr	-852(ra) # 18f70 <__i2b>
   172cc:	5f12                	lw	t5,36(sp)
   172ce:	89aa                	mv	s3,a0
   172d0:	2c050e63          	beqz	a0,175ac <__gdtoa+0x644>
   172d4:	020a0263          	beqz	s4,172f8 <__gdtoa+0x390>
   172d8:	5782                	lw	a5,32(sp)
   172da:	00f05f63          	blez	a5,172f8 <__gdtoa+0x390>
   172de:	86d2                	mv	a3,s4
   172e0:	0147d363          	bge	a5,s4,172e6 <__gdtoa+0x37e>
   172e4:	86be                	mv	a3,a5
   172e6:	57c2                	lw	a5,48(sp)
   172e8:	c736                	sw	a3,140(sp)
   172ea:	40da0a33          	sub	s4,s4,a3
   172ee:	8f95                	sub	a5,a5,a3
   172f0:	d83e                	sw	a5,48(sp)
   172f2:	5782                	lw	a5,32(sp)
   172f4:	8f95                	sub	a5,a5,a3
   172f6:	d03e                	sw	a5,32(sp)
   172f8:	57e2                	lw	a5,56(sp)
   172fa:	c38d                	beqz	a5,1731c <__gdtoa+0x3b4>
   172fc:	4786                	lw	a5,64(sp)
   172fe:	c399                	beqz	a5,17304 <__gdtoa+0x39c>
   17300:	240b16e3          	bnez	s6,17d4c <__gdtoa+0xde4>
   17304:	5662                	lw	a2,56(sp)
   17306:	85a6                	mv	a1,s1
   17308:	8522                	mv	a0,s0
   1730a:	d27a                	sw	t5,36(sp)
   1730c:	00002097          	auipc	ra,0x2
   17310:	e7e080e7          	jalr	-386(ra) # 1918a <__pow5mult>
   17314:	5f12                	lw	t5,36(sp)
   17316:	84aa                	mv	s1,a0
   17318:	28050a63          	beqz	a0,175ac <__gdtoa+0x644>
   1731c:	4585                	li	a1,1
   1731e:	8522                	mv	a0,s0
   17320:	d27a                	sw	t5,36(sp)
   17322:	00002097          	auipc	ra,0x2
   17326:	c4e080e7          	jalr	-946(ra) # 18f70 <__i2b>
   1732a:	8baa                	mv	s7,a0
   1732c:	28050063          	beqz	a0,175ac <__gdtoa+0x644>
   17330:	47f2                	lw	a5,28(sp)
   17332:	5f12                	lw	t5,36(sp)
   17334:	12079fe3          	bnez	a5,17c72 <__gdtoa+0xd0a>
   17338:	47c2                	lw	a5,16(sp)
   1733a:	4685                	li	a3,1
   1733c:	70f6de63          	bge	a3,a5,17a58 <__gdtoa+0xaf0>
   17340:	4afd                	li	s5,31
   17342:	5782                	lw	a5,32(sp)
   17344:	40fa8ab3          	sub	s5,s5,a5
   17348:	57c2                	lw	a5,48(sp)
   1734a:	1af1                	addi	s5,s5,-4
   1734c:	01fafa93          	andi	s5,s5,31
   17350:	00fa8633          	add	a2,s5,a5
   17354:	c756                	sw	s5,140(sp)
   17356:	87d6                	mv	a5,s5
   17358:	7ac04b63          	bgtz	a2,17b0e <__gdtoa+0xba6>
   1735c:	5702                	lw	a4,32(sp)
   1735e:	00f70633          	add	a2,a4,a5
   17362:	22c04a63          	bgtz	a2,17596 <__gdtoa+0x62e>
   17366:	47c6                	lw	a5,80(sp)
   17368:	7c079063          	bnez	a5,17b28 <__gdtoa+0xbc0>
   1736c:	57d2                	lw	a5,52(sp)
   1736e:	08f05be3          	blez	a5,17c04 <__gdtoa+0xc9c>
   17372:	4786                	lw	a5,64(sp)
   17374:	7e078a63          	beqz	a5,17b68 <__gdtoa+0xc00>
   17378:	014a8633          	add	a2,s5,s4
   1737c:	24c048e3          	bgtz	a2,17dcc <__gdtoa+0xe64>
   17380:	47f2                	lw	a5,28(sp)
   17382:	8a4e                	mv	s4,s3
   17384:	28079ee3          	bnez	a5,17e20 <__gdtoa+0xeb8>
   17388:	ce6a                	sw	s10,28(sp)
   1738a:	4cc2                	lw	s9,16(sp)
   1738c:	5d52                	lw	s10,52(sp)
   1738e:	8c7a                	mv	s8,t5
   17390:	4785                	li	a5,1
   17392:	cc7a                	sw	t5,24(sp)
   17394:	a041                	j	17414 <__gdtoa+0x4ac>
   17396:	8522                	mv	a0,s0
   17398:	00002097          	auipc	ra,0x2
   1739c:	9f2080e7          	jalr	-1550(ra) # 18d8a <_Bfree>
   173a0:	3c0ac3e3          	bltz	s5,17f66 <__gdtoa+0xffe>
   173a4:	015ceab3          	or	s5,s9,s5
   173a8:	000a9763          	bnez	s5,173b6 <__gdtoa+0x44e>
   173ac:	00092783          	lw	a5,0(s2)
   173b0:	8b85                	andi	a5,a5,1
   173b2:	3a078ae3          	beqz	a5,17f66 <__gdtoa+0xffe>
   173b6:	57a2                	lw	a5,40(sp)
   173b8:	4709                	li	a4,2
   173ba:	62e795e3          	bne	a5,a4,181e4 <__gdtoa+0x127c>
   173be:	01bc0023          	sb	s11,0(s8)
   173c2:	47ba                	lw	a5,140(sp)
   173c4:	0c05                	addi	s8,s8,1
   173c6:	56fd0fe3          	beq	s10,a5,18144 <__gdtoa+0x11dc>
   173ca:	85a6                	mv	a1,s1
   173cc:	4681                	li	a3,0
   173ce:	4629                	li	a2,10
   173d0:	8522                	mv	a0,s0
   173d2:	00002097          	auipc	ra,0x2
   173d6:	9ca080e7          	jalr	-1590(ra) # 18d9c <__multadd>
   173da:	84aa                	mv	s1,a0
   173dc:	1c050863          	beqz	a0,175ac <__gdtoa+0x644>
   173e0:	4681                	li	a3,0
   173e2:	4629                	li	a2,10
   173e4:	85ce                	mv	a1,s3
   173e6:	8522                	mv	a0,s0
   173e8:	6b498563          	beq	s3,s4,17a92 <__gdtoa+0xb2a>
   173ec:	00002097          	auipc	ra,0x2
   173f0:	9b0080e7          	jalr	-1616(ra) # 18d9c <__multadd>
   173f4:	89aa                	mv	s3,a0
   173f6:	1a050b63          	beqz	a0,175ac <__gdtoa+0x644>
   173fa:	85d2                	mv	a1,s4
   173fc:	4681                	li	a3,0
   173fe:	4629                	li	a2,10
   17400:	8522                	mv	a0,s0
   17402:	00002097          	auipc	ra,0x2
   17406:	99a080e7          	jalr	-1638(ra) # 18d9c <__multadd>
   1740a:	8a2a                	mv	s4,a0
   1740c:	1a050063          	beqz	a0,175ac <__gdtoa+0x644>
   17410:	47ba                	lw	a5,140(sp)
   17412:	0785                	addi	a5,a5,1
   17414:	85de                	mv	a1,s7
   17416:	8526                	mv	a0,s1
   17418:	c73e                	sw	a5,140(sp)
   1741a:	00001097          	auipc	ra,0x1
   1741e:	0b2080e7          	jalr	178(ra) # 184cc <__quorem_D2A>
   17422:	8b2a                	mv	s6,a0
   17424:	85ce                	mv	a1,s3
   17426:	8526                	mv	a0,s1
   17428:	00002097          	auipc	ra,0x2
   1742c:	f6a080e7          	jalr	-150(ra) # 19392 <__mcmp>
   17430:	85de                	mv	a1,s7
   17432:	8aaa                	mv	s5,a0
   17434:	8652                	mv	a2,s4
   17436:	8522                	mv	a0,s0
   17438:	00002097          	auipc	ra,0x2
   1743c:	f96080e7          	jalr	-106(ra) # 193ce <__mdiff>
   17440:	030b0d93          	addi	s11,s6,48
   17444:	85aa                	mv	a1,a0
   17446:	16050363          	beqz	a0,175ac <__gdtoa+0x644>
   1744a:	455c                	lw	a5,12(a0)
   1744c:	f7a9                	bnez	a5,17396 <__gdtoa+0x42e>
   1744e:	c82a                	sw	a0,16(sp)
   17450:	8526                	mv	a0,s1
   17452:	00002097          	auipc	ra,0x2
   17456:	f40080e7          	jalr	-192(ra) # 19392 <__mcmp>
   1745a:	45c2                	lw	a1,16(sp)
   1745c:	87aa                	mv	a5,a0
   1745e:	8522                	mv	a0,s0
   17460:	c83e                	sw	a5,16(sp)
   17462:	00002097          	auipc	ra,0x2
   17466:	928080e7          	jalr	-1752(ra) # 18d8a <_Bfree>
   1746a:	47c2                	lw	a5,16(sp)
   1746c:	00fce733          	or	a4,s9,a5
   17470:	70071ce3          	bnez	a4,18388 <__gdtoa+0x1420>
   17474:	00092783          	lw	a5,0(s2)
   17478:	8b85                	andi	a5,a5,1
   1747a:	62079563          	bnez	a5,17aa4 <__gdtoa+0xb3c>
   1747e:	57a2                	lw	a5,40(sp)
   17480:	640781e3          	beqz	a5,182c2 <__gdtoa+0x135a>
   17484:	f3504de3          	bgtz	s5,173be <__gdtoa+0x456>
   17488:	4894                	lw	a3,16(s1)
   1748a:	4785                	li	a5,1
   1748c:	4f62                	lw	t5,24(sp)
   1748e:	4d72                	lw	s10,28(sp)
   17490:	8cba                	mv	s9,a4
   17492:	6cd7d9e3          	bge	a5,a3,18364 <__gdtoa+0x13fc>
   17496:	5722                	lw	a4,40(sp)
   17498:	4789                	li	a5,2
   1749a:	8b7a                	mv	s6,t5
   1749c:	02f71363          	bne	a4,a5,174c2 <__gdtoa+0x55a>
   174a0:	6ab0006f          	j	1834a <__gdtoa+0x13e2>
   174a4:	00002097          	auipc	ra,0x2
   174a8:	8f8080e7          	jalr	-1800(ra) # 18d9c <__multadd>
   174ac:	85de                	mv	a1,s7
   174ae:	84aa                	mv	s1,a0
   174b0:	cd75                	beqz	a0,175ac <__gdtoa+0x644>
   174b2:	00001097          	auipc	ra,0x1
   174b6:	01a080e7          	jalr	26(ra) # 184cc <__quorem_D2A>
   174ba:	03050d93          	addi	s11,a0,48
   174be:	8c4a                	mv	s8,s2
   174c0:	8a56                	mv	s4,s5
   174c2:	85d2                	mv	a1,s4
   174c4:	855e                	mv	a0,s7
   174c6:	00002097          	auipc	ra,0x2
   174ca:	ecc080e7          	jalr	-308(ra) # 19392 <__mcmp>
   174ce:	87aa                	mv	a5,a0
   174d0:	4681                	li	a3,0
   174d2:	4629                	li	a2,10
   174d4:	85d2                	mv	a1,s4
   174d6:	8522                	mv	a0,s0
   174d8:	001c0913          	addi	s2,s8,1
   174dc:	64f05de3          	blez	a5,18336 <__gdtoa+0x13ce>
   174e0:	ffb90fa3          	sb	s11,-1(s2)
   174e4:	00002097          	auipc	ra,0x2
   174e8:	8b8080e7          	jalr	-1864(ra) # 18d9c <__multadd>
   174ec:	8aaa                	mv	s5,a0
   174ee:	4681                	li	a3,0
   174f0:	4629                	li	a2,10
   174f2:	85a6                	mv	a1,s1
   174f4:	8522                	mv	a0,s0
   174f6:	0a0a8b63          	beqz	s5,175ac <__gdtoa+0x644>
   174fa:	fb4995e3          	bne	s3,s4,174a4 <__gdtoa+0x53c>
   174fe:	89d6                	mv	s3,s5
   17500:	b755                	j	174a4 <__gdtoa+0x53c>
   17502:	4791                	li	a5,4
   17504:	0af31d63          	bne	t1,a5,175be <__gdtoa+0x656>
   17508:	4722                	lw	a4,8(sp)
   1750a:	4632                	lw	a2,12(sp)
   1750c:	5c9a                	lw	s9,164(sp)
   1750e:	40be                	lw	ra,204(sp)
   17510:	5b4a                	lw	s6,176(sp)
   17512:	5d0a                	lw	s10,160(sp)
   17514:	77e1                	lui	a5,0xffff8
   17516:	c31c                	sw	a5,0(a4)
   17518:	0001d5b7          	lui	a1,0x1d
   1751c:	468d                	li	a3,3
   1751e:	45c58593          	addi	a1,a1,1116 # 1d45c <__extenddftf2+0x14f8>
   17522:	6169                	addi	sp,sp,208
   17524:	00001317          	auipc	t1,0x1
   17528:	f1630067          	jr	-234(t1) # 1843a <__nrv_alloc_D2A>
   1752c:	85a6                	mv	a1,s1
   1752e:	8522                	mv	a0,s0
   17530:	00002097          	auipc	ra,0x2
   17534:	85a080e7          	jalr	-1958(ra) # 18d8a <_Bfree>
   17538:	449e                	lw	s1,196(sp)
   1753a:	490e                	lw	s2,192(sp)
   1753c:	59fa                	lw	s3,188(sp)
   1753e:	5ada                	lw	s5,180(sp)
   17540:	5bba                	lw	s7,172(sp)
   17542:	5c2a                	lw	s8,168(sp)
   17544:	4dfa                	lw	s11,156(sp)
   17546:	4722                	lw	a4,8(sp)
   17548:	4632                	lw	a2,12(sp)
   1754a:	4785                	li	a5,1
   1754c:	0001d5b7          	lui	a1,0x1d
   17550:	8522                	mv	a0,s0
   17552:	c31c                	sw	a5,0(a4)
   17554:	4685                	li	a3,1
   17556:	44c58593          	addi	a1,a1,1100 # 1d44c <__extenddftf2+0x14e8>
   1755a:	00001097          	auipc	ra,0x1
   1755e:	ee0080e7          	jalr	-288(ra) # 1843a <__nrv_alloc_D2A>
   17562:	442e                	lw	s0,200(sp)
   17564:	8f2a                	mv	t5,a0
   17566:	40be                	lw	ra,204(sp)
   17568:	5c9a                	lw	s9,164(sp)
   1756a:	5b4a                	lw	s6,176(sp)
   1756c:	5d0a                	lw	s10,160(sp)
   1756e:	857a                	mv	a0,t5
   17570:	6169                	addi	sp,sp,208
   17572:	8082                	ret
   17574:	4722                	lw	a4,8(sp)
   17576:	4632                	lw	a2,12(sp)
   17578:	40be                	lw	ra,204(sp)
   1757a:	5b4a                	lw	s6,176(sp)
   1757c:	5d0a                	lw	s10,160(sp)
   1757e:	77e1                	lui	a5,0xffff8
   17580:	c31c                	sw	a5,0(a4)
   17582:	0001d5b7          	lui	a1,0x1d
   17586:	46a1                	li	a3,8
   17588:	45058593          	addi	a1,a1,1104 # 1d450 <__extenddftf2+0x14ec>
   1758c:	6169                	addi	sp,sp,208
   1758e:	00001317          	auipc	t1,0x1
   17592:	eac30067          	jr	-340(t1) # 1843a <__nrv_alloc_D2A>
   17596:	85de                	mv	a1,s7
   17598:	8522                	mv	a0,s0
   1759a:	d07a                	sw	t5,32(sp)
   1759c:	00002097          	auipc	ra,0x2
   175a0:	cdc080e7          	jalr	-804(ra) # 19278 <__lshift>
   175a4:	5f02                	lw	t5,32(sp)
   175a6:	8baa                	mv	s7,a0
   175a8:	da051fe3          	bnez	a0,17366 <__gdtoa+0x3fe>
   175ac:	442e                	lw	s0,200(sp)
   175ae:	449e                	lw	s1,196(sp)
   175b0:	490e                	lw	s2,192(sp)
   175b2:	59fa                	lw	s3,188(sp)
   175b4:	5a6a                	lw	s4,184(sp)
   175b6:	5ada                	lw	s5,180(sp)
   175b8:	5bba                	lw	s7,172(sp)
   175ba:	5c2a                	lw	s8,168(sp)
   175bc:	4dfa                	lw	s11,156(sp)
   175be:	4f01                	li	t5,0
   175c0:	b75d                	j	17566 <__gdtoa+0x5fe>
   175c2:	0004a823          	sw	zero,16(s1)
   175c6:	b441                	j	17046 <__gdtoa+0xde>
   175c8:	4785                	li	a5,1
   175ca:	c8be                	sw	a5,80(sp)
   175cc:	d802                	sw	zero,48(sp)
   175ce:	fffa0793          	addi	a5,s4,-1
   175d2:	2c07c863          	bltz	a5,178a2 <__gdtoa+0x93a>
   175d6:	47f2                	lw	a5,28(sp)
   175d8:	c007d4e3          	bgez	a5,171e0 <__gdtoa+0x278>
   175dc:	47f2                	lw	a5,28(sp)
   175de:	5742                	lw	a4,48(sp)
   175e0:	ce02                	sw	zero,28(sp)
   175e2:	de3e                	sw	a5,60(sp)
   175e4:	8f1d                	sub	a4,a4,a5
   175e6:	d83a                	sw	a4,48(sp)
   175e8:	40f00733          	neg	a4,a5
   175ec:	dc3a                	sw	a4,56(sp)
   175ee:	befd                	j	171ec <__gdtoa+0x284>
   175f0:	85aa                	mv	a1,a0
   175f2:	8526                	mv	a0,s1
   175f4:	00001097          	auipc	ra,0x1
   175f8:	032080e7          	jalr	50(ra) # 18626 <__rshift_D2A>
   175fc:	46ba                	lw	a3,140(sp)
   175fe:	015687b3          	add	a5,a3,s5
   17602:	d23e                	sw	a5,36(sp)
   17604:	40dc0c33          	sub	s8,s8,a3
   17608:	bc81                	j	17058 <__gdtoa+0xf0>
   1760a:	57a2                	lw	a5,40(sp)
   1760c:	c802                	sw	zero,16(sp)
   1760e:	3fd78793          	addi	a5,a5,1021 # ffff83fd <__BSS_END__+0xfffd99a1>
   17612:	7f87ba13          	sltiu	s4,a5,2040
   17616:	855e                	mv	a0,s7
   17618:	ffffb097          	auipc	ra,0xffffb
   1761c:	5b8080e7          	jalr	1464(ra) # 12bd0 <__floatsidf>
   17620:	0001e6b7          	lui	a3,0x1e
   17624:	6e06a603          	lw	a2,1760(a3) # 1e6e0 <__SDATA_BEGIN__+0x28>
   17628:	6e46a683          	lw	a3,1764(a3)
   1762c:	ffffb097          	auipc	ra,0xffffb
   17630:	aae080e7          	jalr	-1362(ra) # 120da <__muldf3>
   17634:	ffffb097          	auipc	ra,0xffffb
   17638:	538080e7          	jalr	1336(ra) # 12b6c <__fixdfsi>
   1763c:	4785                	li	a5,1
   1763e:	00350593          	addi	a1,a0,3
   17642:	c0be                	sw	a5,64(sp)
   17644:	57fd                	li	a5,-1
   17646:	86ae                	mv	a3,a1
   17648:	cc02                	sw	zero,24(sp)
   1764a:	cabe                	sw	a5,84(sp)
   1764c:	da3e                	sw	a5,52(sp)
   1764e:	b6d5                	j	17232 <__gdtoa+0x2ca>
   17650:	57a2                	lw	a5,40(sp)
   17652:	468d                	li	a3,3
   17654:	40f687b3          	sub	a5,a3,a5
   17658:	d43e                	sw	a5,40(sp)
   1765a:	57d2                	lw	a5,52(sp)
   1765c:	46b9                	li	a3,14
   1765e:	bef6efe3          	bltu	a3,a5,1725c <__gdtoa+0x2f4>
   17662:	be0a0de3          	beqz	s4,1725c <__gdtoa+0x2f4>
   17666:	5772                	lw	a4,60(sp)
   17668:	56a2                	lw	a3,40(sp)
   1766a:	8ed9                	or	a3,a3,a4
   1766c:	be0698e3          	bnez	a3,1725c <__gdtoa+0x2f4>
   17670:	4746                	lw	a4,80(sp)
   17672:	c702                	sw	zero,140(sp)
   17674:	ccce                	sw	s3,88(sp)
   17676:	4b16                	lw	s6,68(sp)
   17678:	c30d                	beqz	a4,1769a <__gdtoa+0x732>
   1767a:	0001e6b7          	lui	a3,0x1e
   1767e:	6e86a603          	lw	a2,1768(a3) # 1e6e8 <__SDATA_BEGIN__+0x30>
   17682:	6ec6a683          	lw	a3,1772(a3)
   17686:	855a                	mv	a0,s6
   17688:	85ce                	mv	a1,s3
   1768a:	d47a                	sw	t5,40(sp)
   1768c:	ffffb097          	auipc	ra,0xffffb
   17690:	9b4080e7          	jalr	-1612(ra) # 12040 <__ledf2>
   17694:	5f22                	lw	t5,40(sp)
   17696:	2c0540e3          	bltz	a0,18156 <__gdtoa+0x11ee>
   1769a:	4796                	lw	a5,68(sp)
   1769c:	d47a                	sw	t5,40(sp)
   1769e:	863e                	mv	a2,a5
   176a0:	853e                	mv	a0,a5
   176a2:	47e6                	lw	a5,88(sp)
   176a4:	86be                	mv	a3,a5
   176a6:	85be                	mv	a1,a5
   176a8:	ffffa097          	auipc	ra,0xffffa
   176ac:	d48080e7          	jalr	-696(ra) # 113f0 <__adddf3>
   176b0:	0001e6b7          	lui	a3,0x1e
   176b4:	7006a603          	lw	a2,1792(a3) # 1e700 <__SDATA_BEGIN__+0x48>
   176b8:	7046a683          	lw	a3,1796(a3)
   176bc:	ffffa097          	auipc	ra,0xffffa
   176c0:	d34080e7          	jalr	-716(ra) # 113f0 <__adddf3>
   176c4:	fcc007b7          	lui	a5,0xfcc00
   176c8:	00b78a33          	add	s4,a5,a1
   176cc:	57d2                	lw	a5,52(sp)
   176ce:	5f22                	lw	t5,40(sp)
   176d0:	872a                	mv	a4,a0
   176d2:	7c078363          	beqz	a5,17e98 <__gdtoa+0xf30>
   176d6:	57d2                	lw	a5,52(sp)
   176d8:	4e96                	lw	t4,68(sp)
   176da:	4866                	lw	a6,88(sp)
   176dc:	d082                	sw	zero,96(sp)
   176de:	cebe                	sw	a5,92(sp)
   176e0:	46f6                	lw	a3,92(sp)
   176e2:	0001e7b7          	lui	a5,0x1e
   176e6:	4586                	lw	a1,64(sp)
   176e8:	16fd                	addi	a3,a3,-1
   176ea:	dc878613          	addi	a2,a5,-568 # 1ddc8 <__mprec_tens>
   176ee:	068e                	slli	a3,a3,0x3
   176f0:	96b2                	add	a3,a3,a2
   176f2:	d2c2                	sw	a6,100(sp)
   176f4:	d476                	sw	t4,40(sp)
   176f6:	4290                	lw	a2,0(a3)
   176f8:	42d4                	lw	a3,4(a3)
   176fa:	120580e3          	beqz	a1,1801a <__gdtoa+0x10b2>
   176fe:	0001e5b7          	lui	a1,0x1e
   17702:	7105a503          	lw	a0,1808(a1) # 1e710 <__SDATA_BEGIN__+0x58>
   17706:	7145a583          	lw	a1,1812(a1)
   1770a:	debe                	sw	a5,124(sp)
   1770c:	001f0b13          	addi	s6,t5,1
   17710:	dafa                	sw	t5,116(sp)
   17712:	c4ba                	sw	a4,72(sp)
   17714:	ffffa097          	auipc	ra,0xffffa
   17718:	2d6080e7          	jalr	726(ra) # 119ea <__divdf3>
   1771c:	4726                	lw	a4,72(sp)
   1771e:	86d2                	mv	a3,s4
   17720:	863a                	mv	a2,a4
   17722:	ffffb097          	auipc	ra,0xffffb
   17726:	e32080e7          	jalr	-462(ra) # 12554 <__subdf3>
   1772a:	5ea2                	lw	t4,40(sp)
   1772c:	5816                	lw	a6,100(sp)
   1772e:	862a                	mv	a2,a0
   17730:	86ae                	mv	a3,a1
   17732:	8576                	mv	a0,t4
   17734:	85c2                	mv	a1,a6
   17736:	d4f6                	sw	t4,104(sp)
   17738:	c4c2                	sw	a6,72(sp)
   1773a:	d6b2                	sw	a2,108(sp)
   1773c:	d8b6                	sw	a3,112(sp)
   1773e:	ffffb097          	auipc	ra,0xffffb
   17742:	42e080e7          	jalr	1070(ra) # 12b6c <__fixdfsi>
   17746:	d42a                	sw	a0,40(sp)
   17748:	ffffb097          	auipc	ra,0xffffb
   1774c:	488080e7          	jalr	1160(ra) # 12bd0 <__floatsidf>
   17750:	5ea6                	lw	t4,104(sp)
   17752:	4826                	lw	a6,72(sp)
   17754:	862a                	mv	a2,a0
   17756:	86ae                	mv	a3,a1
   17758:	8576                	mv	a0,t4
   1775a:	85c2                	mv	a1,a6
   1775c:	ffffb097          	auipc	ra,0xffffb
   17760:	df8080e7          	jalr	-520(ra) # 12554 <__subdf3>
   17764:	5e22                	lw	t3,40(sp)
   17766:	5f56                	lw	t5,116(sp)
   17768:	862a                	mv	a2,a0
   1776a:	86ae                	mv	a3,a1
   1776c:	8a2a                	mv	s4,a0
   1776e:	89ae                	mv	s3,a1
   17770:	5536                	lw	a0,108(sp)
   17772:	55c6                	lw	a1,112(sp)
   17774:	030e0e13          	addi	t3,t3,48
   17778:	01cf0023          	sb	t3,0(t5)
   1777c:	d47a                	sw	t5,40(sp)
   1777e:	ffffb097          	auipc	ra,0xffffb
   17782:	828080e7          	jalr	-2008(ra) # 11fa6 <__gedf2>
   17786:	5f22                	lw	t5,40(sp)
   17788:	2ca041e3          	bgtz	a0,1824a <__gdtoa+0x12e2>
   1778c:	0001e6b7          	lui	a3,0x1e
   17790:	6e86a783          	lw	a5,1768(a3) # 1e6e8 <__SDATA_BEGIN__+0x30>
   17794:	6ec6a803          	lw	a6,1772(a3)
   17798:	0001e6b7          	lui	a3,0x1e
   1779c:	c4be                	sw	a5,72(sp)
   1779e:	c6c2                	sw	a6,76(sp)
   177a0:	6f06a783          	lw	a5,1776(a3) # 1e6f0 <__SDATA_BEGIN__+0x38>
   177a4:	6f46a803          	lw	a6,1780(a3)
   177a8:	d2a6                	sw	s1,100(sp)
   177aa:	dade                	sw	s7,116(sp)
   177ac:	dce2                	sw	s8,120(sp)
   177ae:	54b6                	lw	s1,108(sp)
   177b0:	4c76                	lw	s8,92(sp)
   177b2:	5bc6                	lw	s7,112(sp)
   177b4:	d43e                	sw	a5,40(sp)
   177b6:	d642                	sw	a6,44(sp)
   177b8:	cefa                	sw	t5,92(sp)
   177ba:	d4a2                	sw	s0,104(sp)
   177bc:	a0b5                	j	17828 <__gdtoa+0x8c0>
   177be:	47ba                	lw	a5,140(sp)
   177c0:	0785                	addi	a5,a5,1
   177c2:	c73e                	sw	a5,140(sp)
   177c4:	2f87d0e3          	bge	a5,s8,182a4 <__gdtoa+0x133c>
   177c8:	ffffb097          	auipc	ra,0xffffb
   177cc:	912080e7          	jalr	-1774(ra) # 120da <__muldf3>
   177d0:	5622                	lw	a2,40(sp)
   177d2:	56b2                	lw	a3,44(sp)
   177d4:	84aa                	mv	s1,a0
   177d6:	8bae                	mv	s7,a1
   177d8:	8552                	mv	a0,s4
   177da:	85ce                	mv	a1,s3
   177dc:	ffffb097          	auipc	ra,0xffffb
   177e0:	8fe080e7          	jalr	-1794(ra) # 120da <__muldf3>
   177e4:	8a2e                	mv	s4,a1
   177e6:	842a                	mv	s0,a0
   177e8:	ffffb097          	auipc	ra,0xffffb
   177ec:	384080e7          	jalr	900(ra) # 12b6c <__fixdfsi>
   177f0:	89aa                	mv	s3,a0
   177f2:	ffffb097          	auipc	ra,0xffffb
   177f6:	3de080e7          	jalr	990(ra) # 12bd0 <__floatsidf>
   177fa:	862a                	mv	a2,a0
   177fc:	86ae                	mv	a3,a1
   177fe:	8522                	mv	a0,s0
   17800:	85d2                	mv	a1,s4
   17802:	ffffb097          	auipc	ra,0xffffb
   17806:	d52080e7          	jalr	-686(ra) # 12554 <__subdf3>
   1780a:	03098793          	addi	a5,s3,48
   1780e:	8626                	mv	a2,s1
   17810:	86de                	mv	a3,s7
   17812:	00fb0023          	sb	a5,0(s6)
   17816:	0b05                	addi	s6,s6,1
   17818:	8a2a                	mv	s4,a0
   1781a:	89ae                	mv	s3,a1
   1781c:	ffffb097          	auipc	ra,0xffffb
   17820:	824080e7          	jalr	-2012(ra) # 12040 <__ledf2>
   17824:	220540e3          	bltz	a0,18244 <__gdtoa+0x12dc>
   17828:	4526                	lw	a0,72(sp)
   1782a:	45b6                	lw	a1,76(sp)
   1782c:	8652                	mv	a2,s4
   1782e:	86ce                	mv	a3,s3
   17830:	ffffb097          	auipc	ra,0xffffb
   17834:	d24080e7          	jalr	-732(ra) # 12554 <__subdf3>
   17838:	862a                	mv	a2,a0
   1783a:	86ae                	mv	a3,a1
   1783c:	8526                	mv	a0,s1
   1783e:	85de                	mv	a1,s7
   17840:	ffffa097          	auipc	ra,0xffffa
   17844:	766080e7          	jalr	1894(ra) # 11fa6 <__gedf2>
   17848:	87aa                	mv	a5,a0
   1784a:	5622                	lw	a2,40(sp)
   1784c:	56b2                	lw	a3,44(sp)
   1784e:	8526                	mv	a0,s1
   17850:	85de                	mv	a1,s7
   17852:	f6f056e3          	blez	a5,177be <__gdtoa+0x856>
   17856:	5786                	lw	a5,96(sp)
   17858:	5496                	lw	s1,100(sp)
   1785a:	4f76                	lw	t5,92(sp)
   1785c:	5426                	lw	s0,104(sp)
   1785e:	fffb4b83          	lbu	s7,-1(s6)
   17862:	00178d93          	addi	s11,a5,1
   17866:	03900693          	li	a3,57
   1786a:	a031                	j	17876 <__gdtoa+0x90e>
   1786c:	7aff0363          	beq	t5,a5,18012 <__gdtoa+0x10aa>
   17870:	fff7cb83          	lbu	s7,-1(a5)
   17874:	8b3e                	mv	s6,a5
   17876:	fffb0793          	addi	a5,s6,-1
   1787a:	fedb89e3          	beq	s7,a3,1786c <__gdtoa+0x904>
   1787e:	001b8693          	addi	a3,s7,1
   17882:	0ff6f693          	zext.b	a3,a3
   17886:	00d78023          	sb	a3,0(a5)
   1788a:	8bee                	mv	s7,s11
   1788c:	02000c93          	li	s9,32
   17890:	a259                	j	17a16 <__gdtoa+0xaae>
   17892:	442e                	lw	s0,200(sp)
   17894:	449e                	lw	s1,196(sp)
   17896:	490e                	lw	s2,192(sp)
   17898:	5ada                	lw	s5,180(sp)
   1789a:	5bba                	lw	s7,172(sp)
   1789c:	4dfa                	lw	s11,156(sp)
   1789e:	4f01                	li	t5,0
   178a0:	b1d9                	j	17566 <__gdtoa+0x5fe>
   178a2:	4685                	li	a3,1
   178a4:	414687b3          	sub	a5,a3,s4
   178a8:	d83e                	sw	a5,48(sp)
   178aa:	d002                	sw	zero,32(sp)
   178ac:	b32d                	j	175d6 <__gdtoa+0x66e>
   178ae:	5b62                	lw	s6,56(sp)
   178b0:	5a42                	lw	s4,48(sp)
   178b2:	4981                	li	s3,0
   178b4:	b405                	j	172d4 <__gdtoa+0x36c>
   178b6:	4789                	li	a5,2
   178b8:	d43e                	sw	a5,40(sp)
   178ba:	ba69                	j	17254 <__gdtoa+0x2ec>
   178bc:	47f2                	lw	a5,28(sp)
   178be:	c882                	sw	zero,80(sp)
   178c0:	17fd                	addi	a5,a5,-1
   178c2:	ce3e                	sw	a5,28(sp)
   178c4:	b321                	j	175cc <__gdtoa+0x664>
   178c6:	17f1                	addi	a5,a5,-4
   178c8:	c83e                	sw	a5,16(sp)
   178ca:	4611                	li	a2,4
   178cc:	1ac78663          	beq	a5,a2,17a78 <__gdtoa+0xb10>
   178d0:	50d78b63          	beq	a5,a3,17de6 <__gdtoa+0xe7e>
   178d4:	4689                	li	a3,2
   178d6:	c082                	sw	zero,64(sp)
   178d8:	4a01                	li	s4,0
   178da:	1ad78263          	beq	a5,a3,17a7e <__gdtoa+0xb16>
   178de:	478d                	li	a5,3
   178e0:	c83e                	sw	a5,16(sp)
   178e2:	ba35                	j	1721e <__gdtoa+0x2b6>
   178e4:	0001e6b7          	lui	a3,0x1e
   178e8:	078e                	slli	a5,a5,0x3
   178ea:	dc868693          	addi	a3,a3,-568 # 1ddc8 <__mprec_tens>
   178ee:	97b6                	add	a5,a5,a3
   178f0:	0007aa03          	lw	s4,0(a5)
   178f4:	0047aa83          	lw	s5,4(a5)
   178f8:	47e2                	lw	a5,24(sp)
   178fa:	3e07c363          	bltz	a5,17ce0 <__gdtoa+0xd78>
   178fe:	4b26                	lw	s6,72(sp)
   17900:	4785                	li	a5,1
   17902:	8652                	mv	a2,s4
   17904:	86d6                	mv	a3,s5
   17906:	855a                	mv	a0,s6
   17908:	85ce                	mv	a1,s3
   1790a:	c87a                	sw	t5,16(sp)
   1790c:	c73e                	sw	a5,140(sp)
   1790e:	ffffa097          	auipc	ra,0xffffa
   17912:	0dc080e7          	jalr	220(ra) # 119ea <__divdf3>
   17916:	ffffb097          	auipc	ra,0xffffb
   1791a:	256080e7          	jalr	598(ra) # 12b6c <__fixdfsi>
   1791e:	892a                	mv	s2,a0
   17920:	ffffb097          	auipc	ra,0xffffb
   17924:	2b0080e7          	jalr	688(ra) # 12bd0 <__floatsidf>
   17928:	8652                	mv	a2,s4
   1792a:	86d6                	mv	a3,s5
   1792c:	ffffa097          	auipc	ra,0xffffa
   17930:	7ae080e7          	jalr	1966(ra) # 120da <__muldf3>
   17934:	862a                	mv	a2,a0
   17936:	86ae                	mv	a3,a1
   17938:	855a                	mv	a0,s6
   1793a:	85ce                	mv	a1,s3
   1793c:	ffffb097          	auipc	ra,0xffffb
   17940:	c18080e7          	jalr	-1000(ra) # 12554 <__subdf3>
   17944:	4f42                	lw	t5,16(sp)
   17946:	5772                	lw	a4,60(sp)
   17948:	03090793          	addi	a5,s2,48
   1794c:	00ff0023          	sb	a5,0(t5)
   17950:	4601                	li	a2,0
   17952:	4681                	li	a3,0
   17954:	00170d93          	addi	s11,a4,1
   17958:	001f0b13          	addi	s6,t5,1
   1795c:	8c2a                	mv	s8,a0
   1795e:	89ae                	mv	s3,a1
   17960:	ffffa097          	auipc	ra,0xffffa
   17964:	5dc080e7          	jalr	1500(ra) # 11f3c <__eqdf2>
   17968:	4f42                	lw	t5,16(sp)
   1796a:	8bee                	mv	s7,s11
   1796c:	c54d                	beqz	a0,17a16 <__gdtoa+0xaae>
   1796e:	0001e7b7          	lui	a5,0x1e
   17972:	6f47a803          	lw	a6,1780(a5) # 1e6f4 <__SDATA_BEGIN__+0x3c>
   17976:	6f07a783          	lw	a5,1776(a5)
   1797a:	ce66                	sw	s9,28(sp)
   1797c:	cc6e                	sw	s11,24(sp)
   1797e:	5cd2                	lw	s9,52(sp)
   17980:	8de2                	mv	s11,s8
   17982:	c83e                	sw	a5,16(sp)
   17984:	8c4e                	mv	s8,s3
   17986:	ca42                	sw	a6,20(sp)
   17988:	89fa                	mv	s3,t5
   1798a:	a0a5                	j	179f2 <__gdtoa+0xa8a>
   1798c:	c746                	sw	a7,140(sp)
   1798e:	ffffa097          	auipc	ra,0xffffa
   17992:	74c080e7          	jalr	1868(ra) # 120da <__muldf3>
   17996:	8652                	mv	a2,s4
   17998:	86d6                	mv	a3,s5
   1799a:	8daa                	mv	s11,a0
   1799c:	8c2e                	mv	s8,a1
   1799e:	ffffa097          	auipc	ra,0xffffa
   179a2:	04c080e7          	jalr	76(ra) # 119ea <__divdf3>
   179a6:	ffffb097          	auipc	ra,0xffffb
   179aa:	1c6080e7          	jalr	454(ra) # 12b6c <__fixdfsi>
   179ae:	892a                	mv	s2,a0
   179b0:	ffffb097          	auipc	ra,0xffffb
   179b4:	220080e7          	jalr	544(ra) # 12bd0 <__floatsidf>
   179b8:	8652                	mv	a2,s4
   179ba:	86d6                	mv	a3,s5
   179bc:	ffffa097          	auipc	ra,0xffffa
   179c0:	71e080e7          	jalr	1822(ra) # 120da <__muldf3>
   179c4:	862a                	mv	a2,a0
   179c6:	86ae                	mv	a3,a1
   179c8:	856e                	mv	a0,s11
   179ca:	85e2                	mv	a1,s8
   179cc:	ffffb097          	auipc	ra,0xffffb
   179d0:	b88080e7          	jalr	-1144(ra) # 12554 <__subdf3>
   179d4:	0b05                	addi	s6,s6,1
   179d6:	03090793          	addi	a5,s2,48
   179da:	fefb0fa3          	sb	a5,-1(s6)
   179de:	4601                	li	a2,0
   179e0:	4681                	li	a3,0
   179e2:	8daa                	mv	s11,a0
   179e4:	8c2e                	mv	s8,a1
   179e6:	ffffa097          	auipc	ra,0xffffa
   179ea:	556080e7          	jalr	1366(ra) # 11f3c <__eqdf2>
   179ee:	2e050663          	beqz	a0,17cda <__gdtoa+0xd72>
   179f2:	483a                	lw	a6,140(sp)
   179f4:	4642                	lw	a2,16(sp)
   179f6:	46d2                	lw	a3,20(sp)
   179f8:	856e                	mv	a0,s11
   179fa:	85e2                	mv	a1,s8
   179fc:	00180893          	addi	a7,a6,1
   17a00:	f99816e3          	bne	a6,s9,1798c <__gdtoa+0xa24>
   17a04:	5722                	lw	a4,40(sp)
   17a06:	4de2                	lw	s11,24(sp)
   17a08:	8f4e                	mv	t5,s3
   17a0a:	5a070663          	beqz	a4,17fb6 <__gdtoa+0x104e>
   17a0e:	4785                	li	a5,1
   17a10:	4cc1                	li	s9,16
   17a12:	72f70e63          	beq	a4,a5,1814e <__gdtoa+0x11e6>
   17a16:	85a6                	mv	a1,s1
   17a18:	8522                	mv	a0,s0
   17a1a:	c87a                	sw	t5,16(sp)
   17a1c:	00001097          	auipc	ra,0x1
   17a20:	36e080e7          	jalr	878(ra) # 18d8a <_Bfree>
   17a24:	47a2                	lw	a5,8(sp)
   17a26:	000b0023          	sb	zero,0(s6)
   17a2a:	4f42                	lw	t5,16(sp)
   17a2c:	0177a023          	sw	s7,0(a5)
   17a30:	47b2                	lw	a5,12(sp)
   17a32:	c399                	beqz	a5,17a38 <__gdtoa+0xad0>
   17a34:	0167a023          	sw	s6,0(a5)
   17a38:	000d2783          	lw	a5,0(s10)
   17a3c:	442e                	lw	s0,200(sp)
   17a3e:	449e                	lw	s1,196(sp)
   17a40:	0197e7b3          	or	a5,a5,s9
   17a44:	490e                	lw	s2,192(sp)
   17a46:	59fa                	lw	s3,188(sp)
   17a48:	5a6a                	lw	s4,184(sp)
   17a4a:	5ada                	lw	s5,180(sp)
   17a4c:	5bba                	lw	s7,172(sp)
   17a4e:	5c2a                	lw	s8,168(sp)
   17a50:	4dfa                	lw	s11,156(sp)
   17a52:	00fd2023          	sw	a5,0(s10)
   17a56:	be01                	j	17566 <__gdtoa+0x5fe>
   17a58:	8edc14e3          	bne	s8,a3,17340 <__gdtoa+0x3d8>
   17a5c:	004da783          	lw	a5,4(s11)
   17a60:	0785                	addi	a5,a5,1
   17a62:	8d57dfe3          	bge	a5,s5,17340 <__gdtoa+0x3d8>
   17a66:	57c2                	lw	a5,48(sp)
   17a68:	0785                	addi	a5,a5,1
   17a6a:	d83e                	sw	a5,48(sp)
   17a6c:	5782                	lw	a5,32(sp)
   17a6e:	0785                	addi	a5,a5,1
   17a70:	d03e                	sw	a5,32(sp)
   17a72:	4785                	li	a5,1
   17a74:	ce3e                	sw	a5,28(sp)
   17a76:	b0e9                	j	17340 <__gdtoa+0x3d8>
   17a78:	4785                	li	a5,1
   17a7a:	4a01                	li	s4,0
   17a7c:	c0be                	sw	a5,64(sp)
   17a7e:	45e2                	lw	a1,24(sp)
   17a80:	00b04363          	bgtz	a1,17a86 <__gdtoa+0xb1e>
   17a84:	4585                	li	a1,1
   17a86:	86ae                	mv	a3,a1
   17a88:	caae                	sw	a1,84(sp)
   17a8a:	da2e                	sw	a1,52(sp)
   17a8c:	cc2e                	sw	a1,24(sp)
   17a8e:	fa4ff06f          	j	17232 <__gdtoa+0x2ca>
   17a92:	00001097          	auipc	ra,0x1
   17a96:	30a080e7          	jalr	778(ra) # 18d9c <__multadd>
   17a9a:	89aa                	mv	s3,a0
   17a9c:	b00508e3          	beqz	a0,175ac <__gdtoa+0x644>
   17aa0:	8a2a                	mv	s4,a0
   17aa2:	b2bd                	j	17410 <__gdtoa+0x4a8>
   17aa4:	900adde3          	bgez	s5,173be <__gdtoa+0x456>
   17aa8:	57a2                	lw	a5,40(sp)
   17aaa:	4f62                	lw	t5,24(sp)
   17aac:	4d72                	lw	s10,28(sp)
   17aae:	8cba                	mv	s9,a4
   17ab0:	0a0796e3          	bnez	a5,1835c <__gdtoa+0x13f4>
   17ab4:	4894                	lw	a3,16(s1)
   17ab6:	4785                	li	a5,1
   17ab8:	4cc1                	li	s9,16
   17aba:	001c0913          	addi	s2,s8,1
   17abe:	04d7d9e3          	bge	a5,a3,18310 <__gdtoa+0x13a8>
   17ac2:	8ace                	mv	s5,s3
   17ac4:	8b4a                	mv	s6,s2
   17ac6:	01bc0023          	sb	s11,0(s8)
   17aca:	89d2                	mv	s3,s4
   17acc:	85de                	mv	a1,s7
   17ace:	8522                	mv	a0,s0
   17ad0:	c87a                	sw	t5,16(sp)
   17ad2:	00001097          	auipc	ra,0x1
   17ad6:	2b8080e7          	jalr	696(ra) # 18d8a <_Bfree>
   17ada:	57f2                	lw	a5,60(sp)
   17adc:	4f42                	lw	t5,16(sp)
   17ade:	00178b93          	addi	s7,a5,1
   17ae2:	f2098ae3          	beqz	s3,17a16 <__gdtoa+0xaae>
   17ae6:	000a8b63          	beqz	s5,17afc <__gdtoa+0xb94>
   17aea:	013a8963          	beq	s5,s3,17afc <__gdtoa+0xb94>
   17aee:	85d6                	mv	a1,s5
   17af0:	8522                	mv	a0,s0
   17af2:	00001097          	auipc	ra,0x1
   17af6:	298080e7          	jalr	664(ra) # 18d8a <_Bfree>
   17afa:	4f42                	lw	t5,16(sp)
   17afc:	85ce                	mv	a1,s3
   17afe:	8522                	mv	a0,s0
   17b00:	c87a                	sw	t5,16(sp)
   17b02:	00001097          	auipc	ra,0x1
   17b06:	288080e7          	jalr	648(ra) # 18d8a <_Bfree>
   17b0a:	4f42                	lw	t5,16(sp)
   17b0c:	b729                	j	17a16 <__gdtoa+0xaae>
   17b0e:	85a6                	mv	a1,s1
   17b10:	8522                	mv	a0,s0
   17b12:	d27a                	sw	t5,36(sp)
   17b14:	00001097          	auipc	ra,0x1
   17b18:	764080e7          	jalr	1892(ra) # 19278 <__lshift>
   17b1c:	84aa                	mv	s1,a0
   17b1e:	a80507e3          	beqz	a0,175ac <__gdtoa+0x644>
   17b22:	47ba                	lw	a5,140(sp)
   17b24:	5f12                	lw	t5,36(sp)
   17b26:	b81d                	j	1735c <__gdtoa+0x3f4>
   17b28:	85de                	mv	a1,s7
   17b2a:	8526                	mv	a0,s1
   17b2c:	d07a                	sw	t5,32(sp)
   17b2e:	00002097          	auipc	ra,0x2
   17b32:	864080e7          	jalr	-1948(ra) # 19392 <__mcmp>
   17b36:	5f02                	lw	t5,32(sp)
   17b38:	82055ae3          	bgez	a0,1736c <__gdtoa+0x404>
   17b3c:	57f2                	lw	a5,60(sp)
   17b3e:	85a6                	mv	a1,s1
   17b40:	4681                	li	a3,0
   17b42:	17fd                	addi	a5,a5,-1
   17b44:	4629                	li	a2,10
   17b46:	8522                	mv	a0,s0
   17b48:	de3e                	sw	a5,60(sp)
   17b4a:	00001097          	auipc	ra,0x1
   17b4e:	252080e7          	jalr	594(ra) # 18d9c <__multadd>
   17b52:	84aa                	mv	s1,a0
   17b54:	a4050ce3          	beqz	a0,175ac <__gdtoa+0x644>
   17b58:	4786                	lw	a5,64(sp)
   17b5a:	5f02                	lw	t5,32(sp)
   17b5c:	6a079a63          	bnez	a5,18210 <__gdtoa+0x12a8>
   17b60:	47d6                	lw	a5,84(sp)
   17b62:	16f05563          	blez	a5,17ccc <__gdtoa+0xd64>
   17b66:	da3e                	sw	a5,52(sp)
   17b68:	5952                	lw	s2,52(sp)
   17b6a:	8c7a                	mv	s8,t5
   17b6c:	4785                	li	a5,1
   17b6e:	8a7a                	mv	s4,t5
   17b70:	a811                	j	17b84 <__gdtoa+0xc1c>
   17b72:	00001097          	auipc	ra,0x1
   17b76:	22a080e7          	jalr	554(ra) # 18d9c <__multadd>
   17b7a:	84aa                	mv	s1,a0
   17b7c:	a20508e3          	beqz	a0,175ac <__gdtoa+0x644>
   17b80:	47ba                	lw	a5,140(sp)
   17b82:	0785                	addi	a5,a5,1
   17b84:	85de                	mv	a1,s7
   17b86:	8526                	mv	a0,s1
   17b88:	c73e                	sw	a5,140(sp)
   17b8a:	00001097          	auipc	ra,0x1
   17b8e:	942080e7          	jalr	-1726(ra) # 184cc <__quorem_D2A>
   17b92:	03050d93          	addi	s11,a0,48
   17b96:	01bc0023          	sb	s11,0(s8)
   17b9a:	47ba                	lw	a5,140(sp)
   17b9c:	4681                	li	a3,0
   17b9e:	4629                	li	a2,10
   17ba0:	85a6                	mv	a1,s1
   17ba2:	8522                	mv	a0,s0
   17ba4:	0c05                	addi	s8,s8,1
   17ba6:	fd27c6e3          	blt	a5,s2,17b72 <__gdtoa+0xc0a>
   17baa:	8f52                	mv	t5,s4
   17bac:	4a81                	li	s5,0
   17bae:	5722                	lw	a4,40(sp)
   17bb0:	36070263          	beqz	a4,17f14 <__gdtoa+0xfac>
   17bb4:	4789                	li	a5,2
   17bb6:	4894                	lw	a3,16(s1)
   17bb8:	38f70663          	beq	a4,a5,17f44 <__gdtoa+0xfdc>
   17bbc:	4785                	li	a5,1
   17bbe:	1ed7c663          	blt	a5,a3,17daa <__gdtoa+0xe42>
   17bc2:	48dc                	lw	a5,20(s1)
   17bc4:	1e079363          	bnez	a5,17daa <__gdtoa+0xe42>
   17bc8:	00f037b3          	snez	a5,a5
   17bcc:	00479c93          	slli	s9,a5,0x4
   17bd0:	03000693          	li	a3,48
   17bd4:	fffc4783          	lbu	a5,-1(s8)
   17bd8:	8b62                	mv	s6,s8
   17bda:	1c7d                	addi	s8,s8,-1
   17bdc:	fed78ce3          	beq	a5,a3,17bd4 <__gdtoa+0xc6c>
   17be0:	b5f5                	j	17acc <__gdtoa+0xb64>
   17be2:	57d2                	lw	a5,52(sp)
   17be4:	5762                	lw	a4,56(sp)
   17be6:	fff78693          	addi	a3,a5,-1
   17bea:	12d74e63          	blt	a4,a3,17d26 <__gdtoa+0xdbe>
   17bee:	40d70b33          	sub	s6,a4,a3
   17bf2:	5c07db63          	bgez	a5,181c8 <__gdtoa+0x1260>
   17bf6:	57c2                	lw	a5,48(sp)
   17bf8:	5752                	lw	a4,52(sp)
   17bfa:	c702                	sw	zero,140(sp)
   17bfc:	40e78a33          	sub	s4,a5,a4
   17c00:	ebeff06f          	j	172be <__gdtoa+0x356>
   17c04:	4742                	lw	a4,16(sp)
   17c06:	4789                	li	a5,2
   17c08:	f6e7d563          	bge	a5,a4,17372 <__gdtoa+0x40a>
   17c0c:	85de                	mv	a1,s7
   17c0e:	4681                	li	a3,0
   17c10:	4615                	li	a2,5
   17c12:	8522                	mv	a0,s0
   17c14:	c87a                	sw	t5,16(sp)
   17c16:	00001097          	auipc	ra,0x1
   17c1a:	186080e7          	jalr	390(ra) # 18d9c <__multadd>
   17c1e:	85aa                	mv	a1,a0
   17c20:	980506e3          	beqz	a0,175ac <__gdtoa+0x644>
   17c24:	57d2                	lw	a5,52(sp)
   17c26:	4f42                	lw	t5,16(sp)
   17c28:	ebed                	bnez	a5,17d1a <__gdtoa+0xdb2>
   17c2a:	c82a                	sw	a0,16(sp)
   17c2c:	8526                	mv	a0,s1
   17c2e:	ce7a                	sw	t5,28(sp)
   17c30:	00001097          	auipc	ra,0x1
   17c34:	762080e7          	jalr	1890(ra) # 19392 <__mcmp>
   17c38:	45c2                	lw	a1,16(sp)
   17c3a:	4f72                	lw	t5,28(sp)
   17c3c:	0ca05f63          	blez	a0,17d1a <__gdtoa+0xdb2>
   17c40:	57f2                	lw	a5,60(sp)
   17c42:	00278b93          	addi	s7,a5,2
   17c46:	03100793          	li	a5,49
   17c4a:	001f0b13          	addi	s6,t5,1
   17c4e:	00ff0023          	sb	a5,0(t5)
   17c52:	02000c93          	li	s9,32
   17c56:	8522                	mv	a0,s0
   17c58:	c87a                	sw	t5,16(sp)
   17c5a:	00001097          	auipc	ra,0x1
   17c5e:	130080e7          	jalr	304(ra) # 18d8a <_Bfree>
   17c62:	4f42                	lw	t5,16(sp)
   17c64:	da0989e3          	beqz	s3,17a16 <__gdtoa+0xaae>
   17c68:	bd51                	j	17afc <__gdtoa+0xb94>
   17c6a:	4685                	li	a3,1
   17c6c:	4585                	li	a1,1
   17c6e:	dc4ff06f          	j	17232 <__gdtoa+0x2ca>
   17c72:	85aa                	mv	a1,a0
   17c74:	863e                	mv	a2,a5
   17c76:	8522                	mv	a0,s0
   17c78:	00001097          	auipc	ra,0x1
   17c7c:	512080e7          	jalr	1298(ra) # 1918a <__pow5mult>
   17c80:	8baa                	mv	s7,a0
   17c82:	920505e3          	beqz	a0,175ac <__gdtoa+0x644>
   17c86:	47c2                	lw	a5,16(sp)
   17c88:	4685                	li	a3,1
   17c8a:	5f12                	lw	t5,36(sp)
   17c8c:	16f6db63          	bge	a3,a5,17e02 <__gdtoa+0xe9a>
   17c90:	010ba783          	lw	a5,16(s7)
   17c94:	d27a                	sw	t5,36(sp)
   17c96:	078d                	addi	a5,a5,3
   17c98:	078a                	slli	a5,a5,0x2
   17c9a:	97de                	add	a5,a5,s7
   17c9c:	43c8                	lw	a0,4(a5)
   17c9e:	00001097          	auipc	ra,0x1
   17ca2:	1f4080e7          	jalr	500(ra) # 18e92 <__hi0bits>
   17ca6:	5f12                	lw	t5,36(sp)
   17ca8:	8aaa                	mv	s5,a0
   17caa:	ce66                	sw	s9,28(sp)
   17cac:	e96ff06f          	j	17342 <__gdtoa+0x3da>
   17cb0:	47c2                	lw	a5,16(sp)
   17cb2:	4685                	li	a3,1
   17cb4:	f2f6c7e3          	blt	a3,a5,17be2 <__gdtoa+0xc7a>
   17cb8:	57c2                	lw	a5,48(sp)
   17cba:	5702                	lw	a4,32(sp)
   17cbc:	5b62                	lw	s6,56(sp)
   17cbe:	8a3e                	mv	s4,a5
   17cc0:	9732                	add	a4,a4,a2
   17cc2:	97b2                	add	a5,a5,a2
   17cc4:	d03a                	sw	a4,32(sp)
   17cc6:	d83e                	sw	a5,48(sp)
   17cc8:	df6ff06f          	j	172be <__gdtoa+0x356>
   17ccc:	4742                	lw	a4,16(sp)
   17cce:	4789                	li	a5,2
   17cd0:	66e7c063          	blt	a5,a4,18330 <__gdtoa+0x13c8>
   17cd4:	47d6                	lw	a5,84(sp)
   17cd6:	da3e                	sw	a5,52(sp)
   17cd8:	bd41                	j	17b68 <__gdtoa+0xc00>
   17cda:	4cf2                	lw	s9,28(sp)
   17cdc:	8f4e                	mv	t5,s3
   17cde:	bb25                	j	17a16 <__gdtoa+0xaae>
   17ce0:	57d2                	lw	a5,52(sp)
   17ce2:	c0f04ee3          	bgtz	a5,178fe <__gdtoa+0x996>
   17ce6:	eb85                	bnez	a5,17d16 <__gdtoa+0xdae>
   17ce8:	0001e7b7          	lui	a5,0x1e
   17cec:	7087a603          	lw	a2,1800(a5) # 1e708 <__SDATA_BEGIN__+0x50>
   17cf0:	70c7a683          	lw	a3,1804(a5)
   17cf4:	8552                	mv	a0,s4
   17cf6:	85d6                	mv	a1,s5
   17cf8:	c87a                	sw	t5,16(sp)
   17cfa:	ffffa097          	auipc	ra,0xffffa
   17cfe:	3e0080e7          	jalr	992(ra) # 120da <__muldf3>
   17d02:	48a6                	lw	a7,72(sp)
   17d04:	86ce                	mv	a3,s3
   17d06:	8646                	mv	a2,a7
   17d08:	ffffa097          	auipc	ra,0xffffa
   17d0c:	29e080e7          	jalr	670(ra) # 11fa6 <__gedf2>
   17d10:	4f42                	lw	t5,16(sp)
   17d12:	4e054963          	bltz	a0,18204 <__gdtoa+0x129c>
   17d16:	4581                	li	a1,0
   17d18:	4981                	li	s3,0
   17d1a:	47e2                	lw	a5,24(sp)
   17d1c:	8b7a                	mv	s6,t5
   17d1e:	4cc1                	li	s9,16
   17d20:	40f00bb3          	neg	s7,a5
   17d24:	bf0d                	j	17c56 <__gdtoa+0xcee>
   17d26:	57e2                	lw	a5,56(sp)
   17d28:	5742                	lw	a4,48(sp)
   17d2a:	4b01                	li	s6,0
   17d2c:	40f68633          	sub	a2,a3,a5
   17d30:	47f2                	lw	a5,28(sp)
   17d32:	8a3a                	mv	s4,a4
   17d34:	dc36                	sw	a3,56(sp)
   17d36:	97b2                	add	a5,a5,a2
   17d38:	ce3e                	sw	a5,28(sp)
   17d3a:	5602                	lw	a2,32(sp)
   17d3c:	57d2                	lw	a5,52(sp)
   17d3e:	963e                	add	a2,a2,a5
   17d40:	c73e                	sw	a5,140(sp)
   17d42:	97ba                	add	a5,a5,a4
   17d44:	d032                	sw	a2,32(sp)
   17d46:	d83e                	sw	a5,48(sp)
   17d48:	d76ff06f          	j	172be <__gdtoa+0x356>
   17d4c:	85ce                	mv	a1,s3
   17d4e:	865a                	mv	a2,s6
   17d50:	8522                	mv	a0,s0
   17d52:	d27a                	sw	t5,36(sp)
   17d54:	00001097          	auipc	ra,0x1
   17d58:	436080e7          	jalr	1078(ra) # 1918a <__pow5mult>
   17d5c:	89aa                	mv	s3,a0
   17d5e:	840507e3          	beqz	a0,175ac <__gdtoa+0x644>
   17d62:	85aa                	mv	a1,a0
   17d64:	8626                	mv	a2,s1
   17d66:	8522                	mv	a0,s0
   17d68:	00001097          	auipc	ra,0x1
   17d6c:	280080e7          	jalr	640(ra) # 18fe8 <__multiply>
   17d70:	8baa                	mv	s7,a0
   17d72:	82050de3          	beqz	a0,175ac <__gdtoa+0x644>
   17d76:	85a6                	mv	a1,s1
   17d78:	8522                	mv	a0,s0
   17d7a:	00001097          	auipc	ra,0x1
   17d7e:	010080e7          	jalr	16(ra) # 18d8a <_Bfree>
   17d82:	57e2                	lw	a5,56(sp)
   17d84:	5f12                	lw	t5,36(sp)
   17d86:	84de                	mv	s1,s7
   17d88:	416787b3          	sub	a5,a5,s6
   17d8c:	dc3e                	sw	a5,56(sp)
   17d8e:	d8078763          	beqz	a5,1731c <__gdtoa+0x3b4>
   17d92:	d72ff06f          	j	17304 <__gdtoa+0x39c>
   17d96:	8ace                	mv	s5,s3
   17d98:	87e2                	mv	a5,s8
   17d9a:	001c0913          	addi	s2,s8,1
   17d9e:	89d2                	mv	s3,s4
   17da0:	03900693          	li	a3,57
   17da4:	8c4a                	mv	s8,s2
   17da6:	00d78023          	sb	a3,0(a5)
   17daa:	03900693          	li	a3,57
   17dae:	a019                	j	17db4 <__gdtoa+0xe4c>
   17db0:	1b8f0163          	beq	t5,s8,17f52 <__gdtoa+0xfea>
   17db4:	fffc4783          	lbu	a5,-1(s8)
   17db8:	8b62                	mv	s6,s8
   17dba:	1c7d                	addi	s8,s8,-1
   17dbc:	fed78ae3          	beq	a5,a3,17db0 <__gdtoa+0xe48>
   17dc0:	0785                	addi	a5,a5,1
   17dc2:	00fc0023          	sb	a5,0(s8)
   17dc6:	02000c93          	li	s9,32
   17dca:	b309                	j	17acc <__gdtoa+0xb64>
   17dcc:	85ce                	mv	a1,s3
   17dce:	8522                	mv	a0,s0
   17dd0:	cc7a                	sw	t5,24(sp)
   17dd2:	00001097          	auipc	ra,0x1
   17dd6:	4a6080e7          	jalr	1190(ra) # 19278 <__lshift>
   17dda:	4f62                	lw	t5,24(sp)
   17ddc:	89aa                	mv	s3,a0
   17dde:	da051163          	bnez	a0,17380 <__gdtoa+0x418>
   17de2:	fcaff06f          	j	175ac <__gdtoa+0x644>
   17de6:	4785                	li	a5,1
   17de8:	4a01                	li	s4,0
   17dea:	c0be                	sw	a5,64(sp)
   17dec:	c32ff06f          	j	1721e <__gdtoa+0x2b6>
   17df0:	4785                	li	a5,1
   17df2:	c0be                	sw	a5,64(sp)
   17df4:	c2aff06f          	j	1721e <__gdtoa+0x2b6>
   17df8:	4785                	li	a5,1
   17dfa:	c0be                	sw	a5,64(sp)
   17dfc:	b149                	j	17a7e <__gdtoa+0xb16>
   17dfe:	c082                	sw	zero,64(sp)
   17e00:	b9bd                	j	17a7e <__gdtoa+0xb16>
   17e02:	e8dc17e3          	bne	s8,a3,17c90 <__gdtoa+0xd28>
   17e06:	004da783          	lw	a5,4(s11)
   17e0a:	0785                	addi	a5,a5,1
   17e0c:	e957d2e3          	bge	a5,s5,17c90 <__gdtoa+0xd28>
   17e10:	57c2                	lw	a5,48(sp)
   17e12:	4c85                	li	s9,1
   17e14:	0785                	addi	a5,a5,1
   17e16:	d83e                	sw	a5,48(sp)
   17e18:	5782                	lw	a5,32(sp)
   17e1a:	0785                	addi	a5,a5,1
   17e1c:	d03e                	sw	a5,32(sp)
   17e1e:	bd8d                	j	17c90 <__gdtoa+0xd28>
   17e20:	0049a583          	lw	a1,4(s3)
   17e24:	8522                	mv	a0,s0
   17e26:	cc7a                	sw	t5,24(sp)
   17e28:	00001097          	auipc	ra,0x1
   17e2c:	eee080e7          	jalr	-274(ra) # 18d16 <_Balloc>
   17e30:	8a2a                	mv	s4,a0
   17e32:	f6050d63          	beqz	a0,175ac <__gdtoa+0x644>
   17e36:	0109a603          	lw	a2,16(s3)
   17e3a:	00c98593          	addi	a1,s3,12
   17e3e:	0531                	addi	a0,a0,12
   17e40:	0609                	addi	a2,a2,2
   17e42:	060a                	slli	a2,a2,0x2
   17e44:	ffffe097          	auipc	ra,0xffffe
   17e48:	78a080e7          	jalr	1930(ra) # 165ce <memcpy>
   17e4c:	85d2                	mv	a1,s4
   17e4e:	4605                	li	a2,1
   17e50:	8522                	mv	a0,s0
   17e52:	00001097          	auipc	ra,0x1
   17e56:	426080e7          	jalr	1062(ra) # 19278 <__lshift>
   17e5a:	4f62                	lw	t5,24(sp)
   17e5c:	8a2a                	mv	s4,a0
   17e5e:	d2051563          	bnez	a0,17388 <__gdtoa+0x420>
   17e62:	f4aff06f          	j	175ac <__gdtoa+0x644>
   17e66:	865a                	mv	a2,s6
   17e68:	86ce                	mv	a3,s3
   17e6a:	855a                	mv	a0,s6
   17e6c:	85ce                	mv	a1,s3
   17e6e:	d47a                	sw	t5,40(sp)
   17e70:	ffff9097          	auipc	ra,0xffff9
   17e74:	580080e7          	jalr	1408(ra) # 113f0 <__adddf3>
   17e78:	0001e6b7          	lui	a3,0x1e
   17e7c:	7006a603          	lw	a2,1792(a3) # 1e700 <__SDATA_BEGIN__+0x48>
   17e80:	7046a683          	lw	a3,1796(a3)
   17e84:	ffff9097          	auipc	ra,0xffff9
   17e88:	56c080e7          	jalr	1388(ra) # 113f0 <__adddf3>
   17e8c:	5f22                	lw	t5,40(sp)
   17e8e:	fcc007b7          	lui	a5,0xfcc00
   17e92:	872a                	mv	a4,a0
   17e94:	00b78a33          	add	s4,a5,a1
   17e98:	0001e6b7          	lui	a3,0x1e
   17e9c:	7086a603          	lw	a2,1800(a3) # 1e708 <__SDATA_BEGIN__+0x50>
   17ea0:	4516                	lw	a0,68(sp)
   17ea2:	70c6a683          	lw	a3,1804(a3)
   17ea6:	45e6                	lw	a1,88(sp)
   17ea8:	d47a                	sw	t5,40(sp)
   17eaa:	c4ba                	sw	a4,72(sp)
   17eac:	ffffa097          	auipc	ra,0xffffa
   17eb0:	6a8080e7          	jalr	1704(ra) # 12554 <__subdf3>
   17eb4:	4726                	lw	a4,72(sp)
   17eb6:	86d2                	mv	a3,s4
   17eb8:	89aa                	mv	s3,a0
   17eba:	863a                	mv	a2,a4
   17ebc:	8b2e                	mv	s6,a1
   17ebe:	ffffa097          	auipc	ra,0xffffa
   17ec2:	0e8080e7          	jalr	232(ra) # 11fa6 <__gedf2>
   17ec6:	5f22                	lw	t5,40(sp)
   17ec8:	30a04a63          	bgtz	a0,181dc <__gdtoa+0x1274>
   17ecc:	4726                	lw	a4,72(sp)
   17ece:	800008b7          	lui	a7,0x80000
   17ed2:	0148c8b3          	xor	a7,a7,s4
   17ed6:	863a                	mv	a2,a4
   17ed8:	854e                	mv	a0,s3
   17eda:	86c6                	mv	a3,a7
   17edc:	85da                	mv	a1,s6
   17ede:	ffffa097          	auipc	ra,0xffffa
   17ee2:	162080e7          	jalr	354(ra) # 12040 <__ledf2>
   17ee6:	5f22                	lw	t5,40(sp)
   17ee8:	e20547e3          	bltz	a0,17d16 <__gdtoa+0xdae>
   17eec:	4796                	lw	a5,68(sp)
   17eee:	5712                	lw	a4,36(sp)
   17ef0:	49e6                	lw	s3,88(sp)
   17ef2:	c4be                	sw	a5,72(sp)
   17ef4:	0001e7b7          	lui	a5,0x1e
   17ef8:	3a074363          	bltz	a4,1829e <__gdtoa+0x1336>
   17efc:	dc87aa03          	lw	s4,-568(a5) # 1ddc8 <__mprec_tens>
   17f00:	dcc7aa83          	lw	s5,-564(a5)
   17f04:	47e2                	lw	a5,24(sp)
   17f06:	d402                	sw	zero,40(sp)
   17f08:	9e07dbe3          	bgez	a5,178fe <__gdtoa+0x996>
   17f0c:	57d2                	lw	a5,52(sp)
   17f0e:	9e0798e3          	bnez	a5,178fe <__gdtoa+0x996>
   17f12:	bbd9                	j	17ce8 <__gdtoa+0xd80>
   17f14:	85a6                	mv	a1,s1
   17f16:	4605                	li	a2,1
   17f18:	8522                	mv	a0,s0
   17f1a:	c87a                	sw	t5,16(sp)
   17f1c:	00001097          	auipc	ra,0x1
   17f20:	35c080e7          	jalr	860(ra) # 19278 <__lshift>
   17f24:	84aa                	mv	s1,a0
   17f26:	e8050363          	beqz	a0,175ac <__gdtoa+0x644>
   17f2a:	85de                	mv	a1,s7
   17f2c:	00001097          	auipc	ra,0x1
   17f30:	466080e7          	jalr	1126(ra) # 19392 <__mcmp>
   17f34:	4f42                	lw	t5,16(sp)
   17f36:	e6a04ae3          	bgtz	a0,17daa <__gdtoa+0xe42>
   17f3a:	e509                	bnez	a0,17f44 <__gdtoa+0xfdc>
   17f3c:	001dfd93          	andi	s11,s11,1
   17f40:	e60d95e3          	bnez	s11,17daa <__gdtoa+0xe42>
   17f44:	4894                	lw	a3,16(s1)
   17f46:	4785                	li	a5,1
   17f48:	4cc1                	li	s9,16
   17f4a:	c8d7c3e3          	blt	a5,a3,17bd0 <__gdtoa+0xc68>
   17f4e:	48dc                	lw	a5,20(s1)
   17f50:	b9a5                	j	17bc8 <__gdtoa+0xc60>
   17f52:	57f2                	lw	a5,60(sp)
   17f54:	02000c93          	li	s9,32
   17f58:	0785                	addi	a5,a5,1
   17f5a:	de3e                	sw	a5,60(sp)
   17f5c:	03100793          	li	a5,49
   17f60:	00ff0023          	sb	a5,0(t5)
   17f64:	b6a5                	j	17acc <__gdtoa+0xb64>
   17f66:	57a2                	lw	a5,40(sp)
   17f68:	4f62                	lw	t5,24(sp)
   17f6a:	4d72                	lw	s10,28(sp)
   17f6c:	cb81                	beqz	a5,17f7c <__gdtoa+0x1014>
   17f6e:	4894                	lw	a3,16(s1)
   17f70:	4785                	li	a5,1
   17f72:	d2d7c263          	blt	a5,a3,17496 <__gdtoa+0x52e>
   17f76:	48dc                	lw	a5,20(s1)
   17f78:	d0079f63          	bnez	a5,17496 <__gdtoa+0x52e>
   17f7c:	85a6                	mv	a1,s1
   17f7e:	4605                	li	a2,1
   17f80:	8522                	mv	a0,s0
   17f82:	c87a                	sw	t5,16(sp)
   17f84:	00001097          	auipc	ra,0x1
   17f88:	2f4080e7          	jalr	756(ra) # 19278 <__lshift>
   17f8c:	84aa                	mv	s1,a0
   17f8e:	e0050f63          	beqz	a0,175ac <__gdtoa+0x644>
   17f92:	85de                	mv	a1,s7
   17f94:	00001097          	auipc	ra,0x1
   17f98:	3fe080e7          	jalr	1022(ra) # 19392 <__mcmp>
   17f9c:	4f42                	lw	t5,16(sp)
   17f9e:	36a05f63          	blez	a0,1831c <__gdtoa+0x13b4>
   17fa2:	03900793          	li	a5,57
   17fa6:	defd88e3          	beq	s11,a5,17d96 <__gdtoa+0xe2e>
   17faa:	02000793          	li	a5,32
   17fae:	031b0d93          	addi	s11,s6,49
   17fb2:	d43e                	sw	a5,40(sp)
   17fb4:	b601                	j	17ab4 <__gdtoa+0xb4c>
   17fb6:	862a                	mv	a2,a0
   17fb8:	86ae                	mv	a3,a1
   17fba:	c87a                	sw	t5,16(sp)
   17fbc:	ffff9097          	auipc	ra,0xffff9
   17fc0:	434080e7          	jalr	1076(ra) # 113f0 <__adddf3>
   17fc4:	8652                	mv	a2,s4
   17fc6:	86d6                	mv	a3,s5
   17fc8:	8c2a                	mv	s8,a0
   17fca:	89ae                	mv	s3,a1
   17fcc:	ffffa097          	auipc	ra,0xffffa
   17fd0:	fda080e7          	jalr	-38(ra) # 11fa6 <__gedf2>
   17fd4:	fffb4b83          	lbu	s7,-1(s6)
   17fd8:	4f42                	lw	t5,16(sp)
   17fda:	88a046e3          	bgtz	a0,17866 <__gdtoa+0x8fe>
   17fde:	8562                	mv	a0,s8
   17fe0:	85ce                	mv	a1,s3
   17fe2:	8652                	mv	a2,s4
   17fe4:	86d6                	mv	a3,s5
   17fe6:	ffffa097          	auipc	ra,0xffffa
   17fea:	f56080e7          	jalr	-170(ra) # 11f3c <__eqdf2>
   17fee:	4f42                	lw	t5,16(sp)
   17ff0:	e509                	bnez	a0,17ffa <__gdtoa+0x1092>
   17ff2:	00197913          	andi	s2,s2,1
   17ff6:	860918e3          	bnez	s2,17866 <__gdtoa+0x8fe>
   17ffa:	87da                	mv	a5,s6
   17ffc:	4cc1                	li	s9,16
   17ffe:	03000613          	li	a2,48
   18002:	fff7c703          	lbu	a4,-1(a5)
   18006:	8b3e                	mv	s6,a5
   18008:	17fd                	addi	a5,a5,-1
   1800a:	fec70ce3          	beq	a4,a2,18002 <__gdtoa+0x109a>
   1800e:	8bee                	mv	s7,s11
   18010:	b419                	j	17a16 <__gdtoa+0xaae>
   18012:	03100693          	li	a3,49
   18016:	0d85                	addi	s11,s11,1
   18018:	b0bd                	j	17886 <__gdtoa+0x91e>
   1801a:	853a                	mv	a0,a4
   1801c:	85d2                	mv	a1,s4
   1801e:	debe                	sw	a5,124(sp)
   18020:	d8fa                	sw	t5,112(sp)
   18022:	ffffa097          	auipc	ra,0xffffa
   18026:	0b8080e7          	jalr	184(ra) # 120da <__muldf3>
   1802a:	0001e6b7          	lui	a3,0x1e
   1802e:	6f06a783          	lw	a5,1776(a3) # 1e6f0 <__SDATA_BEGIN__+0x38>
   18032:	5f46                	lw	t5,112(sp)
   18034:	6f46a803          	lw	a6,1780(a3)
   18038:	4626                	lw	a2,72(sp)
   1803a:	d43e                	sw	a5,40(sp)
   1803c:	57f6                	lw	a5,124(sp)
   1803e:	d6ae                	sw	a1,108(sp)
   18040:	4681                	li	a3,0
   18042:	4585                	li	a1,1
   18044:	d8a6                	sw	s1,112(sp)
   18046:	daa2                	sw	s0,116(sp)
   18048:	44f6                	lw	s1,92(sp)
   1804a:	dcca                	sw	s2,120(sp)
   1804c:	d642                	sw	a6,44(sp)
   1804e:	d4aa                	sw	a0,104(sp)
   18050:	c72e                	sw	a1,140(sp)
   18052:	d2ce                	sw	s3,100(sp)
   18054:	8b7a                	mv	s6,t5
   18056:	cefa                	sw	t5,92(sp)
   18058:	8436                	mv	s0,a3
   1805a:	8bbe                	mv	s7,a5
   1805c:	8932                	mv	s2,a2
   1805e:	a809                	j	18070 <__gdtoa+0x1108>
   18060:	c71a                	sw	t1,140(sp)
   18062:	ffffa097          	auipc	ra,0xffffa
   18066:	078080e7          	jalr	120(ra) # 120da <__muldf3>
   1806a:	892a                	mv	s2,a0
   1806c:	89ae                	mv	s3,a1
   1806e:	4405                	li	s0,1
   18070:	854a                	mv	a0,s2
   18072:	85ce                	mv	a1,s3
   18074:	ffffb097          	auipc	ra,0xffffb
   18078:	af8080e7          	jalr	-1288(ra) # 12b6c <__fixdfsi>
   1807c:	8a2a                	mv	s4,a0
   1807e:	c105                	beqz	a0,1809e <__gdtoa+0x1136>
   18080:	ffffb097          	auipc	ra,0xffffb
   18084:	b50080e7          	jalr	-1200(ra) # 12bd0 <__floatsidf>
   18088:	862a                	mv	a2,a0
   1808a:	86ae                	mv	a3,a1
   1808c:	854a                	mv	a0,s2
   1808e:	85ce                	mv	a1,s3
   18090:	ffffa097          	auipc	ra,0xffffa
   18094:	4c4080e7          	jalr	1220(ra) # 12554 <__subdf3>
   18098:	892a                	mv	s2,a0
   1809a:	89ae                	mv	s3,a1
   1809c:	4405                	li	s0,1
   1809e:	030a0793          	addi	a5,s4,48
   180a2:	0b05                	addi	s6,s6,1
   180a4:	0ff7f793          	zext.b	a5,a5
   180a8:	fefb0fa3          	sb	a5,-1(s6)
   180ac:	48ba                	lw	a7,140(sp)
   180ae:	5622                	lw	a2,40(sp)
   180b0:	56b2                	lw	a3,44(sp)
   180b2:	854a                	mv	a0,s2
   180b4:	85ce                	mv	a1,s3
   180b6:	00188313          	addi	t1,a7,1 # 80000001 <__BSS_END__+0x7ffe15a5>
   180ba:	fa9893e3          	bne	a7,s1,18060 <__gdtoa+0x10f8>
   180be:	875e                	mv	a4,s7
   180c0:	86a2                	mv	a3,s0
   180c2:	8bbe                	mv	s7,a5
   180c4:	54c6                	lw	s1,112(sp)
   180c6:	4f76                	lw	t5,92(sp)
   180c8:	5456                	lw	s0,116(sp)
   180ca:	5966                	lw	s2,120(sp)
   180cc:	87ba                	mv	a5,a4
   180ce:	c299                	beqz	a3,180d4 <__gdtoa+0x116c>
   180d0:	c4aa                	sw	a0,72(sp)
   180d2:	d2ce                	sw	s3,100(sp)
   180d4:	0001e9b7          	lui	s3,0x1e
   180d8:	7109a603          	lw	a2,1808(s3) # 1e710 <__SDATA_BEGIN__+0x58>
   180dc:	7149a683          	lw	a3,1812(s3)
   180e0:	5526                	lw	a0,104(sp)
   180e2:	55b6                	lw	a1,108(sp)
   180e4:	d47a                	sw	t5,40(sp)
   180e6:	cebe                	sw	a5,92(sp)
   180e8:	ffff9097          	auipc	ra,0xffff9
   180ec:	308080e7          	jalr	776(ra) # 113f0 <__adddf3>
   180f0:	5a16                	lw	s4,100(sp)
   180f2:	4626                	lw	a2,72(sp)
   180f4:	86d2                	mv	a3,s4
   180f6:	ffffa097          	auipc	ra,0xffffa
   180fa:	f4a080e7          	jalr	-182(ra) # 12040 <__ledf2>
   180fe:	5f22                	lw	t5,40(sp)
   18100:	16054863          	bltz	a0,18270 <__gdtoa+0x1308>
   18104:	5626                	lw	a2,104(sp)
   18106:	56b6                	lw	a3,108(sp)
   18108:	7109a503          	lw	a0,1808(s3)
   1810c:	7149a583          	lw	a1,1812(s3)
   18110:	ffffa097          	auipc	ra,0xffffa
   18114:	444080e7          	jalr	1092(ra) # 12554 <__subdf3>
   18118:	4626                	lw	a2,72(sp)
   1811a:	86d2                	mv	a3,s4
   1811c:	ffffa097          	auipc	ra,0xffffa
   18120:	e8a080e7          	jalr	-374(ra) # 11fa6 <__gedf2>
   18124:	5f22                	lw	t5,40(sp)
   18126:	47f6                	lw	a5,92(sp)
   18128:	1ca04163          	bgtz	a0,182ea <__gdtoa+0x1382>
   1812c:	4716                	lw	a4,68(sp)
   1812e:	49e6                	lw	s3,88(sp)
   18130:	c4ba                	sw	a4,72(sp)
   18132:	5712                	lw	a4,36(sp)
   18134:	dc0754e3          	bgez	a4,17efc <__gdtoa+0xf94>
   18138:	5b62                	lw	s6,56(sp)
   1813a:	5a42                	lw	s4,48(sp)
   1813c:	d402                	sw	zero,40(sp)
   1813e:	4981                	li	s3,0
   18140:	994ff06f          	j	172d4 <__gdtoa+0x36c>
   18144:	8ace                	mv	s5,s3
   18146:	4f62                	lw	t5,24(sp)
   18148:	4d72                	lw	s10,28(sp)
   1814a:	89d2                	mv	s3,s4
   1814c:	b48d                	j	17bae <__gdtoa+0xc46>
   1814e:	fffb4b83          	lbu	s7,-1(s6)
   18152:	f14ff06f          	j	17866 <__gdtoa+0x8fe>
   18156:	57d2                	lw	a5,52(sp)
   18158:	d00787e3          	beqz	a5,17e66 <__gdtoa+0xefe>
   1815c:	47d6                	lw	a5,84(sp)
   1815e:	d8f057e3          	blez	a5,17eec <__gdtoa+0xf84>
   18162:	0001e6b7          	lui	a3,0x1e
   18166:	6f06a603          	lw	a2,1776(a3) # 1e6f0 <__SDATA_BEGIN__+0x38>
   1816a:	6f46a683          	lw	a3,1780(a3)
   1816e:	85ce                	mv	a1,s3
   18170:	855a                	mv	a0,s6
   18172:	d4fa                	sw	t5,104(sp)
   18174:	ffffa097          	auipc	ra,0xffffa
   18178:	f66080e7          	jalr	-154(ra) # 120da <__muldf3>
   1817c:	0001e6b7          	lui	a3,0x1e
   18180:	6f86a603          	lw	a2,1784(a3) # 1e6f8 <__SDATA_BEGIN__+0x40>
   18184:	6fc6a683          	lw	a3,1788(a3)
   18188:	89ae                	mv	s3,a1
   1818a:	c4aa                	sw	a0,72(sp)
   1818c:	d2aa                	sw	a0,100(sp)
   1818e:	d42e                	sw	a1,40(sp)
   18190:	ffffa097          	auipc	ra,0xffffa
   18194:	f4a080e7          	jalr	-182(ra) # 120da <__muldf3>
   18198:	0001e6b7          	lui	a3,0x1e
   1819c:	7006a603          	lw	a2,1792(a3) # 1e700 <__SDATA_BEGIN__+0x48>
   181a0:	7046a683          	lw	a3,1796(a3)
   181a4:	ffff9097          	auipc	ra,0xffff9
   181a8:	24c080e7          	jalr	588(ra) # 113f0 <__adddf3>
   181ac:	fcc007b7          	lui	a5,0xfcc00
   181b0:	00b78a33          	add	s4,a5,a1
   181b4:	47d6                	lw	a5,84(sp)
   181b6:	5e96                	lw	t4,100(sp)
   181b8:	5f26                	lw	t5,104(sp)
   181ba:	cebe                	sw	a5,92(sp)
   181bc:	57fd                	li	a5,-1
   181be:	872a                	mv	a4,a0
   181c0:	d0be                	sw	a5,96(sp)
   181c2:	884e                	mv	a6,s3
   181c4:	d1cff06f          	j	176e0 <__gdtoa+0x778>
   181c8:	5742                	lw	a4,48(sp)
   181ca:	5682                	lw	a3,32(sp)
   181cc:	c73e                	sw	a5,140(sp)
   181ce:	8a3a                	mv	s4,a4
   181d0:	96be                	add	a3,a3,a5
   181d2:	97ba                	add	a5,a5,a4
   181d4:	d036                	sw	a3,32(sp)
   181d6:	d83e                	sw	a5,48(sp)
   181d8:	8e6ff06f          	j	172be <__gdtoa+0x356>
   181dc:	4b89                	li	s7,2
   181de:	4581                	li	a1,0
   181e0:	4981                	li	s3,0
   181e2:	b495                	j	17c46 <__gdtoa+0xcde>
   181e4:	03900793          	li	a5,57
   181e8:	4f62                	lw	t5,24(sp)
   181ea:	4d72                	lw	s10,28(sp)
   181ec:	bafd85e3          	beq	s11,a5,17d96 <__gdtoa+0xe2e>
   181f0:	0d85                	addi	s11,s11,1
   181f2:	8ace                	mv	s5,s3
   181f4:	001c0b13          	addi	s6,s8,1
   181f8:	01bc0023          	sb	s11,0(s8)
   181fc:	89d2                	mv	s3,s4
   181fe:	02000c93          	li	s9,32
   18202:	b0e9                	j	17acc <__gdtoa+0xb64>
   18204:	57f2                	lw	a5,60(sp)
   18206:	4581                	li	a1,0
   18208:	4981                	li	s3,0
   1820a:	00278b93          	addi	s7,a5,2 # fcc00002 <__BSS_END__+0xfcbe15a6>
   1820e:	bc25                	j	17c46 <__gdtoa+0xcde>
   18210:	85ce                	mv	a1,s3
   18212:	4681                	li	a3,0
   18214:	4629                	li	a2,10
   18216:	8522                	mv	a0,s0
   18218:	00001097          	auipc	ra,0x1
   1821c:	b84080e7          	jalr	-1148(ra) # 18d9c <__multadd>
   18220:	89aa                	mv	s3,a0
   18222:	b8050563          	beqz	a0,175ac <__gdtoa+0x644>
   18226:	47d6                	lw	a5,84(sp)
   18228:	5f02                	lw	t5,32(sp)
   1822a:	00f05563          	blez	a5,18234 <__gdtoa+0x12cc>
   1822e:	da3e                	sw	a5,52(sp)
   18230:	948ff06f          	j	17378 <__gdtoa+0x410>
   18234:	4742                	lw	a4,16(sp)
   18236:	4789                	li	a5,2
   18238:	0ee7cc63          	blt	a5,a4,18330 <__gdtoa+0x13c8>
   1823c:	47d6                	lw	a5,84(sp)
   1823e:	da3e                	sw	a5,52(sp)
   18240:	938ff06f          	j	17378 <__gdtoa+0x410>
   18244:	5496                	lw	s1,100(sp)
   18246:	4f76                	lw	t5,92(sp)
   18248:	5426                	lw	s0,104(sp)
   1824a:	8552                	mv	a0,s4
   1824c:	85ce                	mv	a1,s3
   1824e:	4601                	li	a2,0
   18250:	4681                	li	a3,0
   18252:	c87a                	sw	t5,16(sp)
   18254:	ffffa097          	auipc	ra,0xffffa
   18258:	ce8080e7          	jalr	-792(ra) # 11f3c <__eqdf2>
   1825c:	00a037b3          	snez	a5,a0
   18260:	00479c93          	slli	s9,a5,0x4
   18264:	5786                	lw	a5,96(sp)
   18266:	4f42                	lw	t5,16(sp)
   18268:	00178b93          	addi	s7,a5,1
   1826c:	faaff06f          	j	17a16 <__gdtoa+0xaae>
   18270:	5786                	lw	a5,96(sp)
   18272:	00178d93          	addi	s11,a5,1
   18276:	df0ff06f          	j	17866 <__gdtoa+0x8fe>
   1827a:	57d2                	lw	a5,52(sp)
   1827c:	5762                	lw	a4,56(sp)
   1827e:	fff78693          	addi	a3,a5,-1
   18282:	aad742e3          	blt	a4,a3,17d26 <__gdtoa+0xdbe>
   18286:	55c2                	lw	a1,48(sp)
   18288:	5602                	lw	a2,32(sp)
   1828a:	c73e                	sw	a5,140(sp)
   1828c:	8a2e                	mv	s4,a1
   1828e:	963e                	add	a2,a2,a5
   18290:	97ae                	add	a5,a5,a1
   18292:	d032                	sw	a2,32(sp)
   18294:	40d70b33          	sub	s6,a4,a3
   18298:	d83e                	sw	a5,48(sp)
   1829a:	824ff06f          	j	172be <__gdtoa+0x356>
   1829e:	d402                	sw	zero,40(sp)
   182a0:	fcbfe06f          	j	1726a <__gdtoa+0x302>
   182a4:	4716                	lw	a4,68(sp)
   182a6:	5496                	lw	s1,100(sp)
   182a8:	5bd6                	lw	s7,116(sp)
   182aa:	c4ba                	sw	a4,72(sp)
   182ac:	5712                	lw	a4,36(sp)
   182ae:	5c66                	lw	s8,120(sp)
   182b0:	4f76                	lw	t5,92(sp)
   182b2:	5426                	lw	s0,104(sp)
   182b4:	57f6                	lw	a5,124(sp)
   182b6:	49e6                	lw	s3,88(sp)
   182b8:	c40752e3          	bgez	a4,17efc <__gdtoa+0xf94>
   182bc:	d402                	sw	zero,40(sp)
   182be:	fb3fe06f          	j	17270 <__gdtoa+0x308>
   182c2:	03900793          	li	a5,57
   182c6:	4f62                	lw	t5,24(sp)
   182c8:	4d72                	lw	s10,28(sp)
   182ca:	acfd86e3          	beq	s11,a5,17d96 <__gdtoa+0xe2e>
   182ce:	0b505263          	blez	s5,18372 <__gdtoa+0x140a>
   182d2:	031b0d93          	addi	s11,s6,49
   182d6:	02000c93          	li	s9,32
   182da:	8ace                	mv	s5,s3
   182dc:	001c0b13          	addi	s6,s8,1
   182e0:	01bc0023          	sb	s11,0(s8)
   182e4:	89d2                	mv	s3,s4
   182e6:	fe6ff06f          	j	17acc <__gdtoa+0xb64>
   182ea:	4526                	lw	a0,72(sp)
   182ec:	85d2                	mv	a1,s4
   182ee:	4601                	li	a2,0
   182f0:	4681                	li	a3,0
   182f2:	c87a                	sw	t5,16(sp)
   182f4:	ffffa097          	auipc	ra,0xffffa
   182f8:	c48080e7          	jalr	-952(ra) # 11f3c <__eqdf2>
   182fc:	5706                	lw	a4,96(sp)
   182fe:	00a037b3          	snez	a5,a0
   18302:	00479c93          	slli	s9,a5,0x4
   18306:	4f42                	lw	t5,16(sp)
   18308:	87da                	mv	a5,s6
   1830a:	00170d93          	addi	s11,a4,1
   1830e:	b9c5                	j	17ffe <__gdtoa+0x1096>
   18310:	48dc                	lw	a5,20(s1)
   18312:	fa079863          	bnez	a5,17ac2 <__gdtoa+0xb5a>
   18316:	5ca2                	lw	s9,40(sp)
   18318:	faaff06f          	j	17ac2 <__gdtoa+0xb5a>
   1831c:	e509                	bnez	a0,18326 <__gdtoa+0x13be>
   1831e:	001df793          	andi	a5,s11,1
   18322:	c80790e3          	bnez	a5,17fa2 <__gdtoa+0x103a>
   18326:	02000793          	li	a5,32
   1832a:	d43e                	sw	a5,40(sp)
   1832c:	f88ff06f          	j	17ab4 <__gdtoa+0xb4c>
   18330:	47d6                	lw	a5,84(sp)
   18332:	da3e                	sw	a5,52(sp)
   18334:	b8e1                	j	17c0c <__gdtoa+0xca4>
   18336:	03900793          	li	a5,57
   1833a:	8f5a                	mv	t5,s6
   1833c:	00fd8c63          	beq	s11,a5,18354 <__gdtoa+0x13ec>
   18340:	0d85                	addi	s11,s11,1
   18342:	02000c93          	li	s9,32
   18346:	f7cff06f          	j	17ac2 <__gdtoa+0xb5a>
   1834a:	4cc1                	li	s9,16
   1834c:	001c0913          	addi	s2,s8,1
   18350:	f72ff06f          	j	17ac2 <__gdtoa+0xb5a>
   18354:	8ace                	mv	s5,s3
   18356:	87e2                	mv	a5,s8
   18358:	89d2                	mv	s3,s4
   1835a:	b499                	j	17da0 <__gdtoa+0xe38>
   1835c:	4894                	lw	a3,16(s1)
   1835e:	4785                	li	a5,1
   18360:	92d7cb63          	blt	a5,a3,17496 <__gdtoa+0x52e>
   18364:	48dc                	lw	a5,20(s1)
   18366:	92079863          	bnez	a5,17496 <__gdtoa+0x52e>
   1836a:	001c0913          	addi	s2,s8,1
   1836e:	f54ff06f          	j	17ac2 <__gdtoa+0xb5a>
   18372:	4894                	lw	a3,16(s1)
   18374:	4785                	li	a5,1
   18376:	4cc1                	li	s9,16
   18378:	f6d7c1e3          	blt	a5,a3,182da <__gdtoa+0x1372>
   1837c:	48dc                	lw	a5,20(s1)
   1837e:	00f037b3          	snez	a5,a5
   18382:	00479c93          	slli	s9,a5,0x4
   18386:	bf91                	j	182da <__gdtoa+0x1372>
   18388:	000ace63          	bltz	s5,183a4 <__gdtoa+0x143c>
   1838c:	015ceab3          	or	s5,s9,s5
   18390:	000a9663          	bnez	s5,1839c <__gdtoa+0x1434>
   18394:	00092703          	lw	a4,0(s2)
   18398:	8b05                	andi	a4,a4,1
   1839a:	c709                	beqz	a4,183a4 <__gdtoa+0x143c>
   1839c:	82f05163          	blez	a5,173be <__gdtoa+0x456>
   183a0:	816ff06f          	j	173b6 <__gdtoa+0x44e>
   183a4:	5722                	lw	a4,40(sp)
   183a6:	4f62                	lw	t5,24(sp)
   183a8:	4d72                	lw	s10,28(sp)
   183aa:	cf19                	beqz	a4,183c8 <__gdtoa+0x1460>
   183ac:	4890                	lw	a2,16(s1)
   183ae:	4685                	li	a3,1
   183b0:	8ec6c363          	blt	a3,a2,17496 <__gdtoa+0x52e>
   183b4:	48d4                	lw	a3,20(s1)
   183b6:	8e069063          	bnez	a3,17496 <__gdtoa+0x52e>
   183ba:	bcf041e3          	bgtz	a5,17f7c <__gdtoa+0x1014>
   183be:	4c81                	li	s9,0
   183c0:	001c0913          	addi	s2,s8,1
   183c4:	efeff06f          	j	17ac2 <__gdtoa+0xb5a>
   183c8:	eef05663          	blez	a5,17ab4 <__gdtoa+0xb4c>
   183cc:	be45                	j	17f7c <__gdtoa+0x1014>

000183ce <__rv_alloc_D2A.part.0>:
   183ce:	0001d6b7          	lui	a3,0x1d
   183d2:	0001d537          	lui	a0,0x1d
   183d6:	1141                	addi	sp,sp,-16
   183d8:	46068693          	addi	a3,a3,1120 # 1d460 <__extenddftf2+0x14fc>
   183dc:	4601                	li	a2,0
   183de:	03900593          	li	a1,57
   183e2:	47450513          	addi	a0,a0,1140 # 1d474 <__extenddftf2+0x1510>
   183e6:	c606                	sw	ra,12(sp)
   183e8:	ffffb097          	auipc	ra,0xffffb
   183ec:	854080e7          	jalr	-1964(ra) # 12c3c <__assert_func>

000183f0 <__rv_alloc_D2A>:
   183f0:	1141                	addi	sp,sp,-16
   183f2:	c422                	sw	s0,8(sp)
   183f4:	c606                	sw	ra,12(sp)
   183f6:	46dd                	li	a3,23
   183f8:	842a                	mv	s0,a0
   183fa:	4705                	li	a4,1
   183fc:	4791                	li	a5,4
   183fe:	02b6f663          	bgeu	a3,a1,1842a <__rv_alloc_D2A+0x3a>
   18402:	0786                	slli	a5,a5,0x1
   18404:	01478693          	addi	a3,a5,20
   18408:	863a                	mv	a2,a4
   1840a:	0705                	addi	a4,a4,1
   1840c:	fed5fbe3          	bgeu	a1,a3,18402 <__rv_alloc_D2A+0x12>
   18410:	85b2                	mv	a1,a2
   18412:	dc50                	sw	a2,60(s0)
   18414:	8522                	mv	a0,s0
   18416:	00001097          	auipc	ra,0x1
   1841a:	900080e7          	jalr	-1792(ra) # 18d16 <_Balloc>
   1841e:	c911                	beqz	a0,18432 <__rv_alloc_D2A+0x42>
   18420:	40b2                	lw	ra,12(sp)
   18422:	dc08                	sw	a0,56(s0)
   18424:	4422                	lw	s0,8(sp)
   18426:	0141                	addi	sp,sp,16
   18428:	8082                	ret
   1842a:	02052e23          	sw	zero,60(a0)
   1842e:	4581                	li	a1,0
   18430:	b7d5                	j	18414 <__rv_alloc_D2A+0x24>
   18432:	00000097          	auipc	ra,0x0
   18436:	f9c080e7          	jalr	-100(ra) # 183ce <__rv_alloc_D2A.part.0>

0001843a <__nrv_alloc_D2A>:
   1843a:	1141                	addi	sp,sp,-16
   1843c:	c422                	sw	s0,8(sp)
   1843e:	c226                	sw	s1,4(sp)
   18440:	c04a                	sw	s2,0(sp)
   18442:	c606                	sw	ra,12(sp)
   18444:	485d                	li	a6,23
   18446:	84aa                	mv	s1,a0
   18448:	842e                	mv	s0,a1
   1844a:	8932                	mv	s2,a2
   1844c:	4705                	li	a4,1
   1844e:	4791                	li	a5,4
   18450:	04d87a63          	bgeu	a6,a3,184a4 <__nrv_alloc_D2A+0x6a>
   18454:	0786                	slli	a5,a5,0x1
   18456:	01478813          	addi	a6,a5,20
   1845a:	85ba                	mv	a1,a4
   1845c:	0705                	addi	a4,a4,1
   1845e:	ff06fbe3          	bgeu	a3,a6,18454 <__nrv_alloc_D2A+0x1a>
   18462:	dccc                	sw	a1,60(s1)
   18464:	8526                	mv	a0,s1
   18466:	00001097          	auipc	ra,0x1
   1846a:	8b0080e7          	jalr	-1872(ra) # 18d16 <_Balloc>
   1846e:	c129                	beqz	a0,184b0 <__nrv_alloc_D2A+0x76>
   18470:	dc88                	sw	a0,56(s1)
   18472:	00044783          	lbu	a5,0(s0)
   18476:	00140593          	addi	a1,s0,1
   1847a:	00f50023          	sb	a5,0(a0)
   1847e:	c79d                	beqz	a5,184ac <__nrv_alloc_D2A+0x72>
   18480:	87aa                	mv	a5,a0
   18482:	0005c703          	lbu	a4,0(a1)
   18486:	0785                	addi	a5,a5,1
   18488:	0585                	addi	a1,a1,1
   1848a:	00e78023          	sb	a4,0(a5)
   1848e:	fb75                	bnez	a4,18482 <__nrv_alloc_D2A+0x48>
   18490:	00090463          	beqz	s2,18498 <__nrv_alloc_D2A+0x5e>
   18494:	00f92023          	sw	a5,0(s2)
   18498:	40b2                	lw	ra,12(sp)
   1849a:	4422                	lw	s0,8(sp)
   1849c:	4492                	lw	s1,4(sp)
   1849e:	4902                	lw	s2,0(sp)
   184a0:	0141                	addi	sp,sp,16
   184a2:	8082                	ret
   184a4:	02052e23          	sw	zero,60(a0)
   184a8:	4581                	li	a1,0
   184aa:	bf6d                	j	18464 <__nrv_alloc_D2A+0x2a>
   184ac:	87aa                	mv	a5,a0
   184ae:	b7cd                	j	18490 <__nrv_alloc_D2A+0x56>
   184b0:	00000097          	auipc	ra,0x0
   184b4:	f1e080e7          	jalr	-226(ra) # 183ce <__rv_alloc_D2A.part.0>

000184b8 <__freedtoa>:
   184b8:	5d54                	lw	a3,60(a0)
   184ba:	4705                	li	a4,1
   184bc:	00d71733          	sll	a4,a4,a3
   184c0:	c1d4                	sw	a3,4(a1)
   184c2:	c598                	sw	a4,8(a1)
   184c4:	00001317          	auipc	t1,0x1
   184c8:	8c630067          	jr	-1850(t1) # 18d8a <_Bfree>

000184cc <__quorem_D2A>:
   184cc:	1101                	addi	sp,sp,-32
   184ce:	ca26                	sw	s1,20(sp)
   184d0:	491c                	lw	a5,16(a0)
   184d2:	4984                	lw	s1,16(a1)
   184d4:	ce06                	sw	ra,28(sp)
   184d6:	1497c363          	blt	a5,s1,1861c <__quorem_D2A+0x150>
   184da:	14fd                	addi	s1,s1,-1
   184dc:	00249313          	slli	t1,s1,0x2
   184e0:	cc22                	sw	s0,24(sp)
   184e2:	01458413          	addi	s0,a1,20
   184e6:	c64e                	sw	s3,12(sp)
   184e8:	c452                	sw	s4,8(sp)
   184ea:	006409b3          	add	s3,s0,t1
   184ee:	01450a13          	addi	s4,a0,20
   184f2:	0009a783          	lw	a5,0(s3)
   184f6:	9352                	add	t1,t1,s4
   184f8:	00032703          	lw	a4,0(t1)
   184fc:	c84a                	sw	s2,16(sp)
   184fe:	c256                	sw	s5,4(sp)
   18500:	0785                	addi	a5,a5,1
   18502:	02f75933          	divu	s2,a4,a5
   18506:	8aaa                	mv	s5,a0
   18508:	08f76663          	bltu	a4,a5,18594 <__quorem_D2A+0xc8>
   1850c:	6541                	lui	a0,0x10
   1850e:	88a2                	mv	a7,s0
   18510:	8852                	mv	a6,s4
   18512:	4f01                	li	t5,0
   18514:	4e81                	li	t4,0
   18516:	157d                	addi	a0,a0,-1 # ffff <exit-0x95>
   18518:	0008a783          	lw	a5,0(a7)
   1851c:	00082603          	lw	a2,0(a6)
   18520:	0811                	addi	a6,a6,4
   18522:	00a7f6b3          	and	a3,a5,a0
   18526:	83c1                	srli	a5,a5,0x10
   18528:	00a67733          	and	a4,a2,a0
   1852c:	01065e13          	srli	t3,a2,0x10
   18530:	0891                	addi	a7,a7,4
   18532:	032686b3          	mul	a3,a3,s2
   18536:	032787b3          	mul	a5,a5,s2
   1853a:	96fa                	add	a3,a3,t5
   1853c:	00a6f633          	and	a2,a3,a0
   18540:	8f11                	sub	a4,a4,a2
   18542:	41d70733          	sub	a4,a4,t4
   18546:	82c1                	srli	a3,a3,0x10
   18548:	01075613          	srli	a2,a4,0x10
   1854c:	8a05                	andi	a2,a2,1
   1854e:	8f69                	and	a4,a4,a0
   18550:	97b6                	add	a5,a5,a3
   18552:	00a7f6b3          	and	a3,a5,a0
   18556:	9636                	add	a2,a2,a3
   18558:	40ce06b3          	sub	a3,t3,a2
   1855c:	01069613          	slli	a2,a3,0x10
   18560:	8f51                	or	a4,a4,a2
   18562:	82c1                	srli	a3,a3,0x10
   18564:	fee82e23          	sw	a4,-4(a6)
   18568:	0107df13          	srli	t5,a5,0x10
   1856c:	0016fe93          	andi	t4,a3,1
   18570:	fb19f4e3          	bgeu	s3,a7,18518 <__quorem_D2A+0x4c>
   18574:	00032783          	lw	a5,0(t1)
   18578:	ef91                	bnez	a5,18594 <__quorem_D2A+0xc8>
   1857a:	1371                	addi	t1,t1,-4
   1857c:	006a6663          	bltu	s4,t1,18588 <__quorem_D2A+0xbc>
   18580:	a801                	j	18590 <__quorem_D2A+0xc4>
   18582:	14fd                	addi	s1,s1,-1
   18584:	006a7663          	bgeu	s4,t1,18590 <__quorem_D2A+0xc4>
   18588:	00032783          	lw	a5,0(t1)
   1858c:	1371                	addi	t1,t1,-4
   1858e:	dbf5                	beqz	a5,18582 <__quorem_D2A+0xb6>
   18590:	009aa823          	sw	s1,16(s5)
   18594:	8556                	mv	a0,s5
   18596:	00001097          	auipc	ra,0x1
   1859a:	dfc080e7          	jalr	-516(ra) # 19392 <__mcmp>
   1859e:	06054563          	bltz	a0,18608 <__quorem_D2A+0x13c>
   185a2:	6541                	lui	a0,0x10
   185a4:	85d2                	mv	a1,s4
   185a6:	4681                	li	a3,0
   185a8:	157d                	addi	a0,a0,-1 # ffff <exit-0x95>
   185aa:	419c                	lw	a5,0(a1)
   185ac:	4010                	lw	a2,0(s0)
   185ae:	0591                	addi	a1,a1,4
   185b0:	00a7f733          	and	a4,a5,a0
   185b4:	00a67833          	and	a6,a2,a0
   185b8:	41070733          	sub	a4,a4,a6
   185bc:	8f15                	sub	a4,a4,a3
   185be:	01075693          	srli	a3,a4,0x10
   185c2:	8a85                	andi	a3,a3,1
   185c4:	8241                	srli	a2,a2,0x10
   185c6:	96b2                	add	a3,a3,a2
   185c8:	83c1                	srli	a5,a5,0x10
   185ca:	8f95                	sub	a5,a5,a3
   185cc:	01079693          	slli	a3,a5,0x10
   185d0:	8f69                	and	a4,a4,a0
   185d2:	8f55                	or	a4,a4,a3
   185d4:	83c1                	srli	a5,a5,0x10
   185d6:	0411                	addi	s0,s0,4
   185d8:	fee5ae23          	sw	a4,-4(a1)
   185dc:	0017f693          	andi	a3,a5,1
   185e0:	fc89f5e3          	bgeu	s3,s0,185aa <__quorem_D2A+0xde>
   185e4:	00249793          	slli	a5,s1,0x2
   185e8:	97d2                	add	a5,a5,s4
   185ea:	4398                	lw	a4,0(a5)
   185ec:	ef09                	bnez	a4,18606 <__quorem_D2A+0x13a>
   185ee:	17f1                	addi	a5,a5,-4
   185f0:	00fa6663          	bltu	s4,a5,185fc <__quorem_D2A+0x130>
   185f4:	a039                	j	18602 <__quorem_D2A+0x136>
   185f6:	14fd                	addi	s1,s1,-1
   185f8:	00fa7563          	bgeu	s4,a5,18602 <__quorem_D2A+0x136>
   185fc:	4398                	lw	a4,0(a5)
   185fe:	17f1                	addi	a5,a5,-4
   18600:	db7d                	beqz	a4,185f6 <__quorem_D2A+0x12a>
   18602:	009aa823          	sw	s1,16(s5)
   18606:	0905                	addi	s2,s2,1
   18608:	4462                	lw	s0,24(sp)
   1860a:	40f2                	lw	ra,28(sp)
   1860c:	49b2                	lw	s3,12(sp)
   1860e:	4a22                	lw	s4,8(sp)
   18610:	4a92                	lw	s5,4(sp)
   18612:	44d2                	lw	s1,20(sp)
   18614:	854a                	mv	a0,s2
   18616:	4942                	lw	s2,16(sp)
   18618:	6105                	addi	sp,sp,32
   1861a:	8082                	ret
   1861c:	40f2                	lw	ra,28(sp)
   1861e:	44d2                	lw	s1,20(sp)
   18620:	4501                	li	a0,0
   18622:	6105                	addi	sp,sp,32
   18624:	8082                	ret

00018626 <__rshift_D2A>:
   18626:	01052803          	lw	a6,16(a0)
   1862a:	4055de13          	srai	t3,a1,0x5
   1862e:	010e4763          	blt	t3,a6,1863c <__rshift_D2A+0x16>
   18632:	00052823          	sw	zero,16(a0)
   18636:	00052a23          	sw	zero,20(a0)
   1863a:	8082                	ret
   1863c:	01450313          	addi	t1,a0,20
   18640:	00281613          	slli	a2,a6,0x2
   18644:	002e1793          	slli	a5,t3,0x2
   18648:	89fd                	andi	a1,a1,31
   1864a:	961a                	add	a2,a2,t1
   1864c:	979a                	add	a5,a5,t1
   1864e:	c5a1                	beqz	a1,18696 <__rshift_D2A+0x70>
   18650:	4394                	lw	a3,0(a5)
   18652:	02000e93          	li	t4,32
   18656:	0791                	addi	a5,a5,4
   18658:	40be8eb3          	sub	t4,t4,a1
   1865c:	00b6d6b3          	srl	a3,a3,a1
   18660:	06c7f063          	bgeu	a5,a2,186c0 <__rshift_D2A+0x9a>
   18664:	889a                	mv	a7,t1
   18666:	4398                	lw	a4,0(a5)
   18668:	0891                	addi	a7,a7,4
   1866a:	0791                	addi	a5,a5,4
   1866c:	01d71733          	sll	a4,a4,t4
   18670:	8f55                	or	a4,a4,a3
   18672:	fee8ae23          	sw	a4,-4(a7)
   18676:	ffc7a683          	lw	a3,-4(a5)
   1867a:	00b6d6b3          	srl	a3,a3,a1
   1867e:	fec7e4e3          	bltu	a5,a2,18666 <__rshift_D2A+0x40>
   18682:	41c80833          	sub	a6,a6,t3
   18686:	080a                	slli	a6,a6,0x2
   18688:	1871                	addi	a6,a6,-4
   1868a:	981a                	add	a6,a6,t1
   1868c:	00d82023          	sw	a3,0(a6)
   18690:	c28d                	beqz	a3,186b2 <__rshift_D2A+0x8c>
   18692:	0811                	addi	a6,a6,4
   18694:	a839                	j	186b2 <__rshift_D2A+0x8c>
   18696:	871a                	mv	a4,t1
   18698:	f8c7fde3          	bgeu	a5,a2,18632 <__rshift_D2A+0xc>
   1869c:	4394                	lw	a3,0(a5)
   1869e:	0791                	addi	a5,a5,4
   186a0:	0711                	addi	a4,a4,4
   186a2:	fed72e23          	sw	a3,-4(a4)
   186a6:	fec7ebe3          	bltu	a5,a2,1869c <__rshift_D2A+0x76>
   186aa:	41c80833          	sub	a6,a6,t3
   186ae:	080a                	slli	a6,a6,0x2
   186b0:	981a                	add	a6,a6,t1
   186b2:	406807b3          	sub	a5,a6,t1
   186b6:	8789                	srai	a5,a5,0x2
   186b8:	c91c                	sw	a5,16(a0)
   186ba:	f6680ee3          	beq	a6,t1,18636 <__rshift_D2A+0x10>
   186be:	8082                	ret
   186c0:	c954                	sw	a3,20(a0)
   186c2:	daa5                	beqz	a3,18632 <__rshift_D2A+0xc>
   186c4:	881a                	mv	a6,t1
   186c6:	0811                	addi	a6,a6,4
   186c8:	b7ed                	j	186b2 <__rshift_D2A+0x8c>

000186ca <__trailz_D2A>:
   186ca:	4918                	lw	a4,16(a0)
   186cc:	1101                	addi	sp,sp,-32
   186ce:	0551                	addi	a0,a0,20
   186d0:	070a                	slli	a4,a4,0x2
   186d2:	cc22                	sw	s0,24(sp)
   186d4:	ce06                	sw	ra,28(sp)
   186d6:	972a                	add	a4,a4,a0
   186d8:	4401                	li	s0,0
   186da:	00e56863          	bltu	a0,a4,186ea <__trailz_D2A+0x20>
   186de:	a00d                	j	18700 <__trailz_D2A+0x36>
   186e0:	0511                	addi	a0,a0,4
   186e2:	02040413          	addi	s0,s0,32
   186e6:	00e57d63          	bgeu	a0,a4,18700 <__trailz_D2A+0x36>
   186ea:	411c                	lw	a5,0(a0)
   186ec:	dbf5                	beqz	a5,186e0 <__trailz_D2A+0x16>
   186ee:	00e57963          	bgeu	a0,a4,18700 <__trailz_D2A+0x36>
   186f2:	0068                	addi	a0,sp,12
   186f4:	c63e                	sw	a5,12(sp)
   186f6:	00000097          	auipc	ra,0x0
   186fa:	7f0080e7          	jalr	2032(ra) # 18ee6 <__lo0bits>
   186fe:	942a                	add	s0,s0,a0
   18700:	40f2                	lw	ra,28(sp)
   18702:	8522                	mv	a0,s0
   18704:	4462                	lw	s0,24(sp)
   18706:	6105                	addi	sp,sp,32
   18708:	8082                	ret

0001870a <_malloc_r>:
   1870a:	7179                	addi	sp,sp,-48
   1870c:	ce4e                	sw	s3,28(sp)
   1870e:	d606                	sw	ra,44(sp)
   18710:	d422                	sw	s0,40(sp)
   18712:	d226                	sw	s1,36(sp)
   18714:	d04a                	sw	s2,32(sp)
   18716:	00b58793          	addi	a5,a1,11
   1871a:	4759                	li	a4,22
   1871c:	89aa                	mv	s3,a0
   1871e:	04f76f63          	bltu	a4,a5,1877c <_malloc_r+0x72>
   18722:	47c1                	li	a5,16
   18724:	18b7e763          	bltu	a5,a1,188b2 <_malloc_r+0x1a8>
   18728:	00000097          	auipc	ra,0x0
   1872c:	5ea080e7          	jalr	1514(ra) # 18d12 <__malloc_lock>
   18730:	47e1                	li	a5,24
   18732:	4589                	li	a1,2
   18734:	44c1                	li	s1,16
   18736:	0001e937          	lui	s2,0x1e
   1873a:	14090913          	addi	s2,s2,320 # 1e140 <__malloc_av_>
   1873e:	97ca                	add	a5,a5,s2
   18740:	43c0                	lw	s0,4(a5)
   18742:	ff878713          	addi	a4,a5,-8
   18746:	28e40763          	beq	s0,a4,189d4 <_malloc_r+0x2ca>
   1874a:	405c                	lw	a5,4(s0)
   1874c:	4454                	lw	a3,12(s0)
   1874e:	4410                	lw	a2,8(s0)
   18750:	9bf1                	andi	a5,a5,-4
   18752:	97a2                	add	a5,a5,s0
   18754:	43d8                	lw	a4,4(a5)
   18756:	c654                	sw	a3,12(a2)
   18758:	c690                	sw	a2,8(a3)
   1875a:	00176713          	ori	a4,a4,1
   1875e:	854e                	mv	a0,s3
   18760:	c3d8                	sw	a4,4(a5)
   18762:	00000097          	auipc	ra,0x0
   18766:	5b2080e7          	jalr	1458(ra) # 18d14 <__malloc_unlock>
   1876a:	00840513          	addi	a0,s0,8
   1876e:	50b2                	lw	ra,44(sp)
   18770:	5422                	lw	s0,40(sp)
   18772:	5492                	lw	s1,36(sp)
   18774:	5902                	lw	s2,32(sp)
   18776:	49f2                	lw	s3,28(sp)
   18778:	6145                	addi	sp,sp,48
   1877a:	8082                	ret
   1877c:	ff87f493          	andi	s1,a5,-8
   18780:	1207c963          	bltz	a5,188b2 <_malloc_r+0x1a8>
   18784:	12b4e763          	bltu	s1,a1,188b2 <_malloc_r+0x1a8>
   18788:	00000097          	auipc	ra,0x0
   1878c:	58a080e7          	jalr	1418(ra) # 18d12 <__malloc_lock>
   18790:	1f700793          	li	a5,503
   18794:	3097f563          	bgeu	a5,s1,18a9e <_malloc_r+0x394>
   18798:	0094d793          	srli	a5,s1,0x9
   1879c:	12078063          	beqz	a5,188bc <_malloc_r+0x1b2>
   187a0:	4711                	li	a4,4
   187a2:	26f76e63          	bltu	a4,a5,18a1e <_malloc_r+0x314>
   187a6:	0064d793          	srli	a5,s1,0x6
   187aa:	03978593          	addi	a1,a5,57
   187ae:	03878813          	addi	a6,a5,56
   187b2:	00359613          	slli	a2,a1,0x3
   187b6:	0001e937          	lui	s2,0x1e
   187ba:	14090913          	addi	s2,s2,320 # 1e140 <__malloc_av_>
   187be:	964a                	add	a2,a2,s2
   187c0:	4240                	lw	s0,4(a2)
   187c2:	1661                	addi	a2,a2,-8
   187c4:	02860163          	beq	a2,s0,187e6 <_malloc_r+0xdc>
   187c8:	453d                	li	a0,15
   187ca:	a039                	j	187d8 <_malloc_r+0xce>
   187cc:	4454                	lw	a3,12(s0)
   187ce:	20075163          	bgez	a4,189d0 <_malloc_r+0x2c6>
   187d2:	00d60a63          	beq	a2,a3,187e6 <_malloc_r+0xdc>
   187d6:	8436                	mv	s0,a3
   187d8:	405c                	lw	a5,4(s0)
   187da:	9bf1                	andi	a5,a5,-4
   187dc:	40978733          	sub	a4,a5,s1
   187e0:	fee556e3          	bge	a0,a4,187cc <_malloc_r+0xc2>
   187e4:	85c2                	mv	a1,a6
   187e6:	01092403          	lw	s0,16(s2)
   187ea:	0001e837          	lui	a6,0x1e
   187ee:	14880813          	addi	a6,a6,328 # 1e148 <__malloc_av_+0x8>
   187f2:	1d040c63          	beq	s0,a6,189ca <_malloc_r+0x2c0>
   187f6:	405c                	lw	a5,4(s0)
   187f8:	46bd                	li	a3,15
   187fa:	9bf1                	andi	a5,a5,-4
   187fc:	40978733          	sub	a4,a5,s1
   18800:	2ae6c463          	blt	a3,a4,18aa8 <_malloc_r+0x39e>
   18804:	01092a23          	sw	a6,20(s2)
   18808:	01092823          	sw	a6,16(s2)
   1880c:	26075c63          	bgez	a4,18a84 <_malloc_r+0x37a>
   18810:	1ff00713          	li	a4,511
   18814:	00492503          	lw	a0,4(s2)
   18818:	1cf76363          	bltu	a4,a5,189de <_malloc_r+0x2d4>
   1881c:	ff87f713          	andi	a4,a5,-8
   18820:	0721                	addi	a4,a4,8
   18822:	974a                	add	a4,a4,s2
   18824:	4314                	lw	a3,0(a4)
   18826:	0057d613          	srli	a2,a5,0x5
   1882a:	4785                	li	a5,1
   1882c:	00c797b3          	sll	a5,a5,a2
   18830:	8d5d                	or	a0,a0,a5
   18832:	ff870793          	addi	a5,a4,-8
   18836:	c45c                	sw	a5,12(s0)
   18838:	c414                	sw	a3,8(s0)
   1883a:	00a92223          	sw	a0,4(s2)
   1883e:	c300                	sw	s0,0(a4)
   18840:	c6c0                	sw	s0,12(a3)
   18842:	4025d793          	srai	a5,a1,0x2
   18846:	4605                	li	a2,1
   18848:	00f61633          	sll	a2,a2,a5
   1884c:	06c56f63          	bltu	a0,a2,188ca <_malloc_r+0x1c0>
   18850:	00a677b3          	and	a5,a2,a0
   18854:	ef81                	bnez	a5,1886c <_malloc_r+0x162>
   18856:	0606                	slli	a2,a2,0x1
   18858:	99f1                	andi	a1,a1,-4
   1885a:	00a677b3          	and	a5,a2,a0
   1885e:	0591                	addi	a1,a1,4
   18860:	e791                	bnez	a5,1886c <_malloc_r+0x162>
   18862:	0606                	slli	a2,a2,0x1
   18864:	00a677b3          	and	a5,a2,a0
   18868:	0591                	addi	a1,a1,4
   1886a:	dfe5                	beqz	a5,18862 <_malloc_r+0x158>
   1886c:	48bd                	li	a7,15
   1886e:	00359313          	slli	t1,a1,0x3
   18872:	934a                	add	t1,t1,s2
   18874:	851a                	mv	a0,t1
   18876:	455c                	lw	a5,12(a0)
   18878:	8e2e                	mv	t3,a1
   1887a:	1cf50263          	beq	a0,a5,18a3e <_malloc_r+0x334>
   1887e:	43d8                	lw	a4,4(a5)
   18880:	843e                	mv	s0,a5
   18882:	47dc                	lw	a5,12(a5)
   18884:	9b71                	andi	a4,a4,-4
   18886:	409706b3          	sub	a3,a4,s1
   1888a:	1cd8c163          	blt	a7,a3,18a4c <_malloc_r+0x342>
   1888e:	fe06c6e3          	bltz	a3,1887a <_malloc_r+0x170>
   18892:	9722                	add	a4,a4,s0
   18894:	4354                	lw	a3,4(a4)
   18896:	4410                	lw	a2,8(s0)
   18898:	854e                	mv	a0,s3
   1889a:	0016e693          	ori	a3,a3,1
   1889e:	c354                	sw	a3,4(a4)
   188a0:	c65c                	sw	a5,12(a2)
   188a2:	c790                	sw	a2,8(a5)
   188a4:	00000097          	auipc	ra,0x0
   188a8:	470080e7          	jalr	1136(ra) # 18d14 <__malloc_unlock>
   188ac:	00840513          	addi	a0,s0,8
   188b0:	bd7d                	j	1876e <_malloc_r+0x64>
   188b2:	47b1                	li	a5,12
   188b4:	00f9a023          	sw	a5,0(s3)
   188b8:	4501                	li	a0,0
   188ba:	bd55                	j	1876e <_malloc_r+0x64>
   188bc:	20000613          	li	a2,512
   188c0:	04000593          	li	a1,64
   188c4:	03f00813          	li	a6,63
   188c8:	b5fd                	j	187b6 <_malloc_r+0xac>
   188ca:	00892403          	lw	s0,8(s2)
   188ce:	c85a                	sw	s6,16(sp)
   188d0:	405c                	lw	a5,4(s0)
   188d2:	ffc7fb13          	andi	s6,a5,-4
   188d6:	009b6763          	bltu	s6,s1,188e4 <_malloc_r+0x1da>
   188da:	409b0733          	sub	a4,s6,s1
   188de:	47bd                	li	a5,15
   188e0:	0ae7cd63          	blt	a5,a4,1899a <_malloc_r+0x290>
   188e4:	0001e7b7          	lui	a5,0x1e
   188e8:	c266                	sw	s9,4(sp)
   188ea:	0001ecb7          	lui	s9,0x1e
   188ee:	ca56                	sw	s5,20(sp)
   188f0:	71cca703          	lw	a4,1820(s9) # 1e71c <__malloc_sbrk_base>
   188f4:	7487aa83          	lw	s5,1864(a5) # 1e748 <__malloc_top_pad>
   188f8:	cc52                	sw	s4,24(sp)
   188fa:	c65e                	sw	s7,12(sp)
   188fc:	57fd                	li	a5,-1
   188fe:	01640a33          	add	s4,s0,s6
   18902:	9aa6                	add	s5,s5,s1
   18904:	30f70163          	beq	a4,a5,18c06 <_malloc_r+0x4fc>
   18908:	6785                	lui	a5,0x1
   1890a:	07bd                	addi	a5,a5,15 # 100f <exit-0xf085>
   1890c:	9abe                	add	s5,s5,a5
   1890e:	77fd                	lui	a5,0xfffff
   18910:	00fafab3          	and	s5,s5,a5
   18914:	85d6                	mv	a1,s5
   18916:	854e                	mv	a0,s3
   18918:	00001097          	auipc	ra,0x1
   1891c:	492080e7          	jalr	1170(ra) # 19daa <_sbrk_r>
   18920:	57fd                	li	a5,-1
   18922:	8baa                	mv	s7,a0
   18924:	36f50663          	beq	a0,a5,18c90 <_malloc_r+0x586>
   18928:	c462                	sw	s8,8(sp)
   1892a:	1d456063          	bltu	a0,s4,18aea <_malloc_r+0x3e0>
   1892e:	0001fc37          	lui	s8,0x1f
   18932:	a34c0c13          	addi	s8,s8,-1484 # 1ea34 <__malloc_current_mallinfo>
   18936:	000c2583          	lw	a1,0(s8)
   1893a:	95d6                	add	a1,a1,s5
   1893c:	00bc2023          	sw	a1,0(s8)
   18940:	872e                	mv	a4,a1
   18942:	20aa1a63          	bne	s4,a0,18b56 <_malloc_r+0x44c>
   18946:	01451793          	slli	a5,a0,0x14
   1894a:	20079663          	bnez	a5,18b56 <_malloc_r+0x44c>
   1894e:	00892b83          	lw	s7,8(s2)
   18952:	015b07b3          	add	a5,s6,s5
   18956:	0017e793          	ori	a5,a5,1
   1895a:	00fba223          	sw	a5,4(s7)
   1895e:	0001e737          	lui	a4,0x1e
   18962:	74472683          	lw	a3,1860(a4) # 1e744 <__malloc_max_sbrked_mem>
   18966:	00b6f463          	bgeu	a3,a1,1896e <_malloc_r+0x264>
   1896a:	74b72223          	sw	a1,1860(a4)
   1896e:	0001e737          	lui	a4,0x1e
   18972:	74072683          	lw	a3,1856(a4) # 1e740 <__malloc_max_total_mem>
   18976:	00b6f463          	bgeu	a3,a1,1897e <_malloc_r+0x274>
   1897a:	74b72023          	sw	a1,1856(a4)
   1897e:	4c22                	lw	s8,8(sp)
   18980:	845e                	mv	s0,s7
   18982:	9bf1                	andi	a5,a5,-4
   18984:	40978733          	sub	a4,a5,s1
   18988:	2a97ef63          	bltu	a5,s1,18c46 <_malloc_r+0x53c>
   1898c:	47bd                	li	a5,15
   1898e:	2ae7dc63          	bge	a5,a4,18c46 <_malloc_r+0x53c>
   18992:	4a62                	lw	s4,24(sp)
   18994:	4ad2                	lw	s5,20(sp)
   18996:	4bb2                	lw	s7,12(sp)
   18998:	4c92                	lw	s9,4(sp)
   1899a:	0014e793          	ori	a5,s1,1
   1899e:	c05c                	sw	a5,4(s0)
   189a0:	94a2                	add	s1,s1,s0
   189a2:	00992423          	sw	s1,8(s2)
   189a6:	00176713          	ori	a4,a4,1
   189aa:	854e                	mv	a0,s3
   189ac:	c0d8                	sw	a4,4(s1)
   189ae:	00000097          	auipc	ra,0x0
   189b2:	366080e7          	jalr	870(ra) # 18d14 <__malloc_unlock>
   189b6:	50b2                	lw	ra,44(sp)
   189b8:	00840513          	addi	a0,s0,8
   189bc:	5422                	lw	s0,40(sp)
   189be:	4b42                	lw	s6,16(sp)
   189c0:	5492                	lw	s1,36(sp)
   189c2:	5902                	lw	s2,32(sp)
   189c4:	49f2                	lw	s3,28(sp)
   189c6:	6145                	addi	sp,sp,48
   189c8:	8082                	ret
   189ca:	00492503          	lw	a0,4(s2)
   189ce:	bd95                	j	18842 <_malloc_r+0x138>
   189d0:	4410                	lw	a2,8(s0)
   189d2:	b341                	j	18752 <_malloc_r+0x48>
   189d4:	47c0                	lw	s0,12(a5)
   189d6:	0589                	addi	a1,a1,2
   189d8:	e08787e3          	beq	a5,s0,187e6 <_malloc_r+0xdc>
   189dc:	b3bd                	j	1874a <_malloc_r+0x40>
   189de:	0097d713          	srli	a4,a5,0x9
   189e2:	4691                	li	a3,4
   189e4:	0ee6fb63          	bgeu	a3,a4,18ada <_malloc_r+0x3d0>
   189e8:	46d1                	li	a3,20
   189ea:	26e6ea63          	bltu	a3,a4,18c5e <_malloc_r+0x554>
   189ee:	05c70613          	addi	a2,a4,92
   189f2:	05b70693          	addi	a3,a4,91
   189f6:	060e                	slli	a2,a2,0x3
   189f8:	964a                	add	a2,a2,s2
   189fa:	4218                	lw	a4,0(a2)
   189fc:	1661                	addi	a2,a2,-8
   189fe:	00e61663          	bne	a2,a4,18a0a <_malloc_r+0x300>
   18a02:	a421                	j	18c0a <_malloc_r+0x500>
   18a04:	4718                	lw	a4,8(a4)
   18a06:	00e60663          	beq	a2,a4,18a12 <_malloc_r+0x308>
   18a0a:	4354                	lw	a3,4(a4)
   18a0c:	9af1                	andi	a3,a3,-4
   18a0e:	fed7ebe3          	bltu	a5,a3,18a04 <_malloc_r+0x2fa>
   18a12:	4750                	lw	a2,12(a4)
   18a14:	c450                	sw	a2,12(s0)
   18a16:	c418                	sw	a4,8(s0)
   18a18:	c600                	sw	s0,8(a2)
   18a1a:	c740                	sw	s0,12(a4)
   18a1c:	b51d                	j	18842 <_malloc_r+0x138>
   18a1e:	4751                	li	a4,20
   18a20:	0cf77c63          	bgeu	a4,a5,18af8 <_malloc_r+0x3ee>
   18a24:	05400713          	li	a4,84
   18a28:	24f76763          	bltu	a4,a5,18c76 <_malloc_r+0x56c>
   18a2c:	00c4d793          	srli	a5,s1,0xc
   18a30:	06f78593          	addi	a1,a5,111 # fffff06f <__BSS_END__+0xfffe0613>
   18a34:	06e78813          	addi	a6,a5,110
   18a38:	00359613          	slli	a2,a1,0x3
   18a3c:	bbad                	j	187b6 <_malloc_r+0xac>
   18a3e:	0e05                	addi	t3,t3,1
   18a40:	003e7793          	andi	a5,t3,3
   18a44:	0521                	addi	a0,a0,8
   18a46:	c7e9                	beqz	a5,18b10 <_malloc_r+0x406>
   18a48:	455c                	lw	a5,12(a0)
   18a4a:	bd05                	j	1887a <_malloc_r+0x170>
   18a4c:	4410                	lw	a2,8(s0)
   18a4e:	0014e593          	ori	a1,s1,1
   18a52:	c04c                	sw	a1,4(s0)
   18a54:	c65c                	sw	a5,12(a2)
   18a56:	c790                	sw	a2,8(a5)
   18a58:	94a2                	add	s1,s1,s0
   18a5a:	00992a23          	sw	s1,20(s2)
   18a5e:	00992823          	sw	s1,16(s2)
   18a62:	0016e793          	ori	a5,a3,1
   18a66:	0104a623          	sw	a6,12(s1)
   18a6a:	0104a423          	sw	a6,8(s1)
   18a6e:	c0dc                	sw	a5,4(s1)
   18a70:	9722                	add	a4,a4,s0
   18a72:	854e                	mv	a0,s3
   18a74:	c314                	sw	a3,0(a4)
   18a76:	00000097          	auipc	ra,0x0
   18a7a:	29e080e7          	jalr	670(ra) # 18d14 <__malloc_unlock>
   18a7e:	00840513          	addi	a0,s0,8
   18a82:	b1f5                	j	1876e <_malloc_r+0x64>
   18a84:	97a2                	add	a5,a5,s0
   18a86:	43d8                	lw	a4,4(a5)
   18a88:	854e                	mv	a0,s3
   18a8a:	00176713          	ori	a4,a4,1
   18a8e:	c3d8                	sw	a4,4(a5)
   18a90:	00000097          	auipc	ra,0x0
   18a94:	284080e7          	jalr	644(ra) # 18d14 <__malloc_unlock>
   18a98:	00840513          	addi	a0,s0,8
   18a9c:	b9c9                	j	1876e <_malloc_r+0x64>
   18a9e:	0034d593          	srli	a1,s1,0x3
   18aa2:	00848793          	addi	a5,s1,8
   18aa6:	b941                	j	18736 <_malloc_r+0x2c>
   18aa8:	0014e693          	ori	a3,s1,1
   18aac:	c054                	sw	a3,4(s0)
   18aae:	94a2                	add	s1,s1,s0
   18ab0:	00992a23          	sw	s1,20(s2)
   18ab4:	00992823          	sw	s1,16(s2)
   18ab8:	00176693          	ori	a3,a4,1
   18abc:	0104a623          	sw	a6,12(s1)
   18ac0:	0104a423          	sw	a6,8(s1)
   18ac4:	c0d4                	sw	a3,4(s1)
   18ac6:	97a2                	add	a5,a5,s0
   18ac8:	854e                	mv	a0,s3
   18aca:	c398                	sw	a4,0(a5)
   18acc:	00000097          	auipc	ra,0x0
   18ad0:	248080e7          	jalr	584(ra) # 18d14 <__malloc_unlock>
   18ad4:	00840513          	addi	a0,s0,8
   18ad8:	b959                	j	1876e <_malloc_r+0x64>
   18ada:	0067d713          	srli	a4,a5,0x6
   18ade:	03970613          	addi	a2,a4,57
   18ae2:	03870693          	addi	a3,a4,56
   18ae6:	060e                	slli	a2,a2,0x3
   18ae8:	bf01                	j	189f8 <_malloc_r+0x2ee>
   18aea:	05240d63          	beq	s0,s2,18b44 <_malloc_r+0x43a>
   18aee:	00892403          	lw	s0,8(s2)
   18af2:	4c22                	lw	s8,8(sp)
   18af4:	405c                	lw	a5,4(s0)
   18af6:	b571                	j	18982 <_malloc_r+0x278>
   18af8:	05c78593          	addi	a1,a5,92
   18afc:	05b78813          	addi	a6,a5,91
   18b00:	00359613          	slli	a2,a1,0x3
   18b04:	b94d                	j	187b6 <_malloc_r+0xac>
   18b06:	00832783          	lw	a5,8(t1)
   18b0a:	15fd                	addi	a1,a1,-1
   18b0c:	20679063          	bne	a5,t1,18d0c <_malloc_r+0x602>
   18b10:	0035f793          	andi	a5,a1,3
   18b14:	1361                	addi	t1,t1,-8
   18b16:	fbe5                	bnez	a5,18b06 <_malloc_r+0x3fc>
   18b18:	00492703          	lw	a4,4(s2)
   18b1c:	fff64793          	not	a5,a2
   18b20:	8ff9                	and	a5,a5,a4
   18b22:	00f92223          	sw	a5,4(s2)
   18b26:	0606                	slli	a2,a2,0x1
   18b28:	dac7e1e3          	bltu	a5,a2,188ca <_malloc_r+0x1c0>
   18b2c:	d8060fe3          	beqz	a2,188ca <_malloc_r+0x1c0>
   18b30:	00f67733          	and	a4,a2,a5
   18b34:	e711                	bnez	a4,18b40 <_malloc_r+0x436>
   18b36:	0606                	slli	a2,a2,0x1
   18b38:	00f67733          	and	a4,a2,a5
   18b3c:	0e11                	addi	t3,t3,4
   18b3e:	df65                	beqz	a4,18b36 <_malloc_r+0x42c>
   18b40:	85f2                	mv	a1,t3
   18b42:	b335                	j	1886e <_malloc_r+0x164>
   18b44:	0001fc37          	lui	s8,0x1f
   18b48:	a34c0c13          	addi	s8,s8,-1484 # 1ea34 <__malloc_current_mallinfo>
   18b4c:	000c2703          	lw	a4,0(s8)
   18b50:	9756                	add	a4,a4,s5
   18b52:	00ec2023          	sw	a4,0(s8)
   18b56:	71cca683          	lw	a3,1820(s9)
   18b5a:	57fd                	li	a5,-1
   18b5c:	12f68e63          	beq	a3,a5,18c98 <_malloc_r+0x58e>
   18b60:	414b87b3          	sub	a5,s7,s4
   18b64:	97ba                	add	a5,a5,a4
   18b66:	00fc2023          	sw	a5,0(s8)
   18b6a:	007bfc93          	andi	s9,s7,7
   18b6e:	0a0c8663          	beqz	s9,18c1a <_malloc_r+0x510>
   18b72:	419b8bb3          	sub	s7,s7,s9
   18b76:	6785                	lui	a5,0x1
   18b78:	07a1                	addi	a5,a5,8 # 1008 <exit-0xf08c>
   18b7a:	0ba1                	addi	s7,s7,8
   18b7c:	419785b3          	sub	a1,a5,s9
   18b80:	9ade                	add	s5,s5,s7
   18b82:	415585b3          	sub	a1,a1,s5
   18b86:	05d2                	slli	a1,a1,0x14
   18b88:	0145da13          	srli	s4,a1,0x14
   18b8c:	85d2                	mv	a1,s4
   18b8e:	854e                	mv	a0,s3
   18b90:	00001097          	auipc	ra,0x1
   18b94:	21a080e7          	jalr	538(ra) # 19daa <_sbrk_r>
   18b98:	57fd                	li	a5,-1
   18b9a:	12f50b63          	beq	a0,a5,18cd0 <_malloc_r+0x5c6>
   18b9e:	41750533          	sub	a0,a0,s7
   18ba2:	01450ab3          	add	s5,a0,s4
   18ba6:	000c2703          	lw	a4,0(s8)
   18baa:	01792423          	sw	s7,8(s2)
   18bae:	001ae793          	ori	a5,s5,1
   18bb2:	00ea05b3          	add	a1,s4,a4
   18bb6:	00bc2023          	sw	a1,0(s8)
   18bba:	00fba223          	sw	a5,4(s7)
   18bbe:	db2400e3          	beq	s0,s2,1895e <_malloc_r+0x254>
   18bc2:	46bd                	li	a3,15
   18bc4:	0766fd63          	bgeu	a3,s6,18c3e <_malloc_r+0x534>
   18bc8:	4058                	lw	a4,4(s0)
   18bca:	ff4b0793          	addi	a5,s6,-12
   18bce:	9be1                	andi	a5,a5,-8
   18bd0:	8b05                	andi	a4,a4,1
   18bd2:	8f5d                	or	a4,a4,a5
   18bd4:	c058                	sw	a4,4(s0)
   18bd6:	4615                	li	a2,5
   18bd8:	00f40733          	add	a4,s0,a5
   18bdc:	c350                	sw	a2,4(a4)
   18bde:	c710                	sw	a2,8(a4)
   18be0:	00f6e563          	bltu	a3,a5,18bea <_malloc_r+0x4e0>
   18be4:	004ba783          	lw	a5,4(s7)
   18be8:	bb9d                	j	1895e <_malloc_r+0x254>
   18bea:	00840593          	addi	a1,s0,8
   18bee:	854e                	mv	a0,s3
   18bf0:	ffffe097          	auipc	ra,0xffffe
   18bf4:	ed0080e7          	jalr	-304(ra) # 16ac0 <_free_r>
   18bf8:	00892b83          	lw	s7,8(s2)
   18bfc:	000c2583          	lw	a1,0(s8)
   18c00:	004ba783          	lw	a5,4(s7)
   18c04:	bba9                	j	1895e <_malloc_r+0x254>
   18c06:	0ac1                	addi	s5,s5,16
   18c08:	b331                	j	18914 <_malloc_r+0x20a>
   18c0a:	8689                	srai	a3,a3,0x2
   18c0c:	4785                	li	a5,1
   18c0e:	00d797b3          	sll	a5,a5,a3
   18c12:	8d5d                	or	a0,a0,a5
   18c14:	00a92223          	sw	a0,4(s2)
   18c18:	bbf5                	j	18a14 <_malloc_r+0x30a>
   18c1a:	015b85b3          	add	a1,s7,s5
   18c1e:	40b005b3          	neg	a1,a1
   18c22:	05d2                	slli	a1,a1,0x14
   18c24:	0145da13          	srli	s4,a1,0x14
   18c28:	85d2                	mv	a1,s4
   18c2a:	854e                	mv	a0,s3
   18c2c:	00001097          	auipc	ra,0x1
   18c30:	17e080e7          	jalr	382(ra) # 19daa <_sbrk_r>
   18c34:	57fd                	li	a5,-1
   18c36:	f6f514e3          	bne	a0,a5,18b9e <_malloc_r+0x494>
   18c3a:	4a01                	li	s4,0
   18c3c:	b7ad                	j	18ba6 <_malloc_r+0x49c>
   18c3e:	4c22                	lw	s8,8(sp)
   18c40:	4785                	li	a5,1
   18c42:	00fba223          	sw	a5,4(s7)
   18c46:	854e                	mv	a0,s3
   18c48:	00000097          	auipc	ra,0x0
   18c4c:	0cc080e7          	jalr	204(ra) # 18d14 <__malloc_unlock>
   18c50:	4501                	li	a0,0
   18c52:	4a62                	lw	s4,24(sp)
   18c54:	4ad2                	lw	s5,20(sp)
   18c56:	4b42                	lw	s6,16(sp)
   18c58:	4bb2                	lw	s7,12(sp)
   18c5a:	4c92                	lw	s9,4(sp)
   18c5c:	be09                	j	1876e <_malloc_r+0x64>
   18c5e:	05400693          	li	a3,84
   18c62:	02e6ee63          	bltu	a3,a4,18c9e <_malloc_r+0x594>
   18c66:	00c7d713          	srli	a4,a5,0xc
   18c6a:	06f70613          	addi	a2,a4,111
   18c6e:	06e70693          	addi	a3,a4,110
   18c72:	060e                	slli	a2,a2,0x3
   18c74:	b351                	j	189f8 <_malloc_r+0x2ee>
   18c76:	15400713          	li	a4,340
   18c7a:	02f76e63          	bltu	a4,a5,18cb6 <_malloc_r+0x5ac>
   18c7e:	00f4d793          	srli	a5,s1,0xf
   18c82:	07878593          	addi	a1,a5,120
   18c86:	07778813          	addi	a6,a5,119
   18c8a:	00359613          	slli	a2,a1,0x3
   18c8e:	b625                	j	187b6 <_malloc_r+0xac>
   18c90:	00892403          	lw	s0,8(s2)
   18c94:	405c                	lw	a5,4(s0)
   18c96:	b1f5                	j	18982 <_malloc_r+0x278>
   18c98:	717cae23          	sw	s7,1820(s9)
   18c9c:	b5f9                	j	18b6a <_malloc_r+0x460>
   18c9e:	15400693          	li	a3,340
   18ca2:	02e6ed63          	bltu	a3,a4,18cdc <_malloc_r+0x5d2>
   18ca6:	00f7d713          	srli	a4,a5,0xf
   18caa:	07870613          	addi	a2,a4,120
   18cae:	07770693          	addi	a3,a4,119
   18cb2:	060e                	slli	a2,a2,0x3
   18cb4:	b391                	j	189f8 <_malloc_r+0x2ee>
   18cb6:	55400713          	li	a4,1364
   18cba:	02f76d63          	bltu	a4,a5,18cf4 <_malloc_r+0x5ea>
   18cbe:	0124d793          	srli	a5,s1,0x12
   18cc2:	07d78593          	addi	a1,a5,125
   18cc6:	07c78813          	addi	a6,a5,124
   18cca:	00359613          	slli	a2,a1,0x3
   18cce:	b4e5                	j	187b6 <_malloc_r+0xac>
   18cd0:	1ce1                	addi	s9,s9,-8
   18cd2:	9ae6                	add	s5,s5,s9
   18cd4:	417a8ab3          	sub	s5,s5,s7
   18cd8:	4a01                	li	s4,0
   18cda:	b5f1                	j	18ba6 <_malloc_r+0x49c>
   18cdc:	55400693          	li	a3,1364
   18ce0:	02e6e163          	bltu	a3,a4,18d02 <_malloc_r+0x5f8>
   18ce4:	0127d713          	srli	a4,a5,0x12
   18ce8:	07d70613          	addi	a2,a4,125
   18cec:	07c70693          	addi	a3,a4,124
   18cf0:	060e                	slli	a2,a2,0x3
   18cf2:	b319                	j	189f8 <_malloc_r+0x2ee>
   18cf4:	3f800613          	li	a2,1016
   18cf8:	07f00593          	li	a1,127
   18cfc:	07e00813          	li	a6,126
   18d00:	bc5d                	j	187b6 <_malloc_r+0xac>
   18d02:	3f800613          	li	a2,1016
   18d06:	07e00693          	li	a3,126
   18d0a:	b1fd                	j	189f8 <_malloc_r+0x2ee>
   18d0c:	00492783          	lw	a5,4(s2)
   18d10:	bd19                	j	18b26 <_malloc_r+0x41c>

00018d12 <__malloc_lock>:
   18d12:	8082                	ret

00018d14 <__malloc_unlock>:
   18d14:	8082                	ret

00018d16 <_Balloc>:
   18d16:	417c                	lw	a5,68(a0)
   18d18:	1141                	addi	sp,sp,-16
   18d1a:	c422                	sw	s0,8(sp)
   18d1c:	c226                	sw	s1,4(sp)
   18d1e:	c606                	sw	ra,12(sp)
   18d20:	842a                	mv	s0,a0
   18d22:	84ae                	mv	s1,a1
   18d24:	c38d                	beqz	a5,18d46 <_Balloc+0x30>
   18d26:	00249713          	slli	a4,s1,0x2
   18d2a:	97ba                	add	a5,a5,a4
   18d2c:	4388                	lw	a0,0(a5)
   18d2e:	c905                	beqz	a0,18d5e <_Balloc+0x48>
   18d30:	4118                	lw	a4,0(a0)
   18d32:	c398                	sw	a4,0(a5)
   18d34:	00052823          	sw	zero,16(a0)
   18d38:	00052623          	sw	zero,12(a0)
   18d3c:	40b2                	lw	ra,12(sp)
   18d3e:	4422                	lw	s0,8(sp)
   18d40:	4492                	lw	s1,4(sp)
   18d42:	0141                	addi	sp,sp,16
   18d44:	8082                	ret
   18d46:	02100613          	li	a2,33
   18d4a:	4591                	li	a1,4
   18d4c:	00001097          	auipc	ra,0x1
   18d50:	0d4080e7          	jalr	212(ra) # 19e20 <_calloc_r>
   18d54:	c068                	sw	a0,68(s0)
   18d56:	87aa                	mv	a5,a0
   18d58:	f579                	bnez	a0,18d26 <_Balloc+0x10>
   18d5a:	4501                	li	a0,0
   18d5c:	b7c5                	j	18d3c <_Balloc+0x26>
   18d5e:	c04a                	sw	s2,0(sp)
   18d60:	4905                	li	s2,1
   18d62:	00991933          	sll	s2,s2,s1
   18d66:	00590613          	addi	a2,s2,5
   18d6a:	060a                	slli	a2,a2,0x2
   18d6c:	4585                	li	a1,1
   18d6e:	8522                	mv	a0,s0
   18d70:	00001097          	auipc	ra,0x1
   18d74:	0b0080e7          	jalr	176(ra) # 19e20 <_calloc_r>
   18d78:	c511                	beqz	a0,18d84 <_Balloc+0x6e>
   18d7a:	01252423          	sw	s2,8(a0)
   18d7e:	c144                	sw	s1,4(a0)
   18d80:	4902                	lw	s2,0(sp)
   18d82:	bf4d                	j	18d34 <_Balloc+0x1e>
   18d84:	4902                	lw	s2,0(sp)
   18d86:	4501                	li	a0,0
   18d88:	bf55                	j	18d3c <_Balloc+0x26>

00018d8a <_Bfree>:
   18d8a:	c981                	beqz	a1,18d9a <_Bfree+0x10>
   18d8c:	41d8                	lw	a4,4(a1)
   18d8e:	417c                	lw	a5,68(a0)
   18d90:	070a                	slli	a4,a4,0x2
   18d92:	97ba                	add	a5,a5,a4
   18d94:	4398                	lw	a4,0(a5)
   18d96:	c198                	sw	a4,0(a1)
   18d98:	c38c                	sw	a1,0(a5)
   18d9a:	8082                	ret

00018d9c <__multadd>:
   18d9c:	1101                	addi	sp,sp,-32
   18d9e:	ca26                	sw	s1,20(sp)
   18da0:	4984                	lw	s1,16(a1)
   18da2:	6341                	lui	t1,0x10
   18da4:	cc22                	sw	s0,24(sp)
   18da6:	c84a                	sw	s2,16(sp)
   18da8:	c64e                	sw	s3,12(sp)
   18daa:	ce06                	sw	ra,28(sp)
   18dac:	892e                	mv	s2,a1
   18dae:	89aa                	mv	s3,a0
   18db0:	8436                	mv	s0,a3
   18db2:	01458813          	addi	a6,a1,20
   18db6:	4881                	li	a7,0
   18db8:	137d                	addi	t1,t1,-1 # ffff <exit-0x95>
   18dba:	00082783          	lw	a5,0(a6)
   18dbe:	0811                	addi	a6,a6,4
   18dc0:	0885                	addi	a7,a7,1
   18dc2:	0067f733          	and	a4,a5,t1
   18dc6:	02c70733          	mul	a4,a4,a2
   18dca:	0107d693          	srli	a3,a5,0x10
   18dce:	02c686b3          	mul	a3,a3,a2
   18dd2:	008707b3          	add	a5,a4,s0
   18dd6:	0107d713          	srli	a4,a5,0x10
   18dda:	0067f7b3          	and	a5,a5,t1
   18dde:	96ba                	add	a3,a3,a4
   18de0:	01069713          	slli	a4,a3,0x10
   18de4:	97ba                	add	a5,a5,a4
   18de6:	fef82e23          	sw	a5,-4(a6)
   18dea:	0106d413          	srli	s0,a3,0x10
   18dee:	fc98c6e3          	blt	a7,s1,18dba <__multadd+0x1e>
   18df2:	cc09                	beqz	s0,18e0c <__multadd+0x70>
   18df4:	00892783          	lw	a5,8(s2)
   18df8:	02f4d263          	bge	s1,a5,18e1c <__multadd+0x80>
   18dfc:	00448793          	addi	a5,s1,4
   18e00:	078a                	slli	a5,a5,0x2
   18e02:	97ca                	add	a5,a5,s2
   18e04:	c3c0                	sw	s0,4(a5)
   18e06:	0485                	addi	s1,s1,1
   18e08:	00992823          	sw	s1,16(s2)
   18e0c:	40f2                	lw	ra,28(sp)
   18e0e:	4462                	lw	s0,24(sp)
   18e10:	44d2                	lw	s1,20(sp)
   18e12:	49b2                	lw	s3,12(sp)
   18e14:	854a                	mv	a0,s2
   18e16:	4942                	lw	s2,16(sp)
   18e18:	6105                	addi	sp,sp,32
   18e1a:	8082                	ret
   18e1c:	00492583          	lw	a1,4(s2)
   18e20:	854e                	mv	a0,s3
   18e22:	c452                	sw	s4,8(sp)
   18e24:	0585                	addi	a1,a1,1
   18e26:	00000097          	auipc	ra,0x0
   18e2a:	ef0080e7          	jalr	-272(ra) # 18d16 <_Balloc>
   18e2e:	8a2a                	mv	s4,a0
   18e30:	c131                	beqz	a0,18e74 <__multadd+0xd8>
   18e32:	01092603          	lw	a2,16(s2)
   18e36:	00c90593          	addi	a1,s2,12
   18e3a:	0531                	addi	a0,a0,12
   18e3c:	0609                	addi	a2,a2,2
   18e3e:	060a                	slli	a2,a2,0x2
   18e40:	ffffd097          	auipc	ra,0xffffd
   18e44:	78e080e7          	jalr	1934(ra) # 165ce <memcpy>
   18e48:	00492703          	lw	a4,4(s2)
   18e4c:	0449a783          	lw	a5,68(s3)
   18e50:	070a                	slli	a4,a4,0x2
   18e52:	97ba                	add	a5,a5,a4
   18e54:	4398                	lw	a4,0(a5)
   18e56:	00e92023          	sw	a4,0(s2)
   18e5a:	0127a023          	sw	s2,0(a5)
   18e5e:	00448793          	addi	a5,s1,4
   18e62:	8952                	mv	s2,s4
   18e64:	078a                	slli	a5,a5,0x2
   18e66:	97ca                	add	a5,a5,s2
   18e68:	4a22                	lw	s4,8(sp)
   18e6a:	0485                	addi	s1,s1,1
   18e6c:	c3c0                	sw	s0,4(a5)
   18e6e:	00992823          	sw	s1,16(s2)
   18e72:	bf69                	j	18e0c <__multadd+0x70>
   18e74:	0001d6b7          	lui	a3,0x1d
   18e78:	0001d537          	lui	a0,0x1d
   18e7c:	46068693          	addi	a3,a3,1120 # 1d460 <__extenddftf2+0x14fc>
   18e80:	4601                	li	a2,0
   18e82:	0ba00593          	li	a1,186
   18e86:	4c850513          	addi	a0,a0,1224 # 1d4c8 <__extenddftf2+0x1564>
   18e8a:	ffffa097          	auipc	ra,0xffffa
   18e8e:	db2080e7          	jalr	-590(ra) # 12c3c <__assert_func>

00018e92 <__hi0bits>:
   18e92:	87aa                	mv	a5,a0
   18e94:	6741                	lui	a4,0x10
   18e96:	4501                	li	a0,0
   18e98:	00e7f463          	bgeu	a5,a4,18ea0 <__hi0bits+0xe>
   18e9c:	07c2                	slli	a5,a5,0x10
   18e9e:	4541                	li	a0,16
   18ea0:	01000737          	lui	a4,0x1000
   18ea4:	00e7f463          	bgeu	a5,a4,18eac <__hi0bits+0x1a>
   18ea8:	0521                	addi	a0,a0,8
   18eaa:	07a2                	slli	a5,a5,0x8
   18eac:	10000737          	lui	a4,0x10000
   18eb0:	00e7f463          	bgeu	a5,a4,18eb8 <__hi0bits+0x26>
   18eb4:	0511                	addi	a0,a0,4
   18eb6:	0792                	slli	a5,a5,0x4
   18eb8:	40000737          	lui	a4,0x40000
   18ebc:	00e7e763          	bltu	a5,a4,18eca <__hi0bits+0x38>
   18ec0:	fff7c793          	not	a5,a5
   18ec4:	83fd                	srli	a5,a5,0x1f
   18ec6:	953e                	add	a0,a0,a5
   18ec8:	8082                	ret
   18eca:	078a                	slli	a5,a5,0x2
   18ecc:	0007c963          	bltz	a5,18ede <__hi0bits+0x4c>
   18ed0:	00179713          	slli	a4,a5,0x1
   18ed4:	00074763          	bltz	a4,18ee2 <__hi0bits+0x50>
   18ed8:	02000513          	li	a0,32
   18edc:	8082                	ret
   18ede:	0509                	addi	a0,a0,2
   18ee0:	8082                	ret
   18ee2:	050d                	addi	a0,a0,3
   18ee4:	8082                	ret

00018ee6 <__lo0bits>:
   18ee6:	411c                	lw	a5,0(a0)
   18ee8:	872a                	mv	a4,a0
   18eea:	0077f693          	andi	a3,a5,7
   18eee:	ce81                	beqz	a3,18f06 <__lo0bits+0x20>
   18ef0:	0017f693          	andi	a3,a5,1
   18ef4:	4501                	li	a0,0
   18ef6:	ee95                	bnez	a3,18f32 <__lo0bits+0x4c>
   18ef8:	0027f693          	andi	a3,a5,2
   18efc:	c6b5                	beqz	a3,18f68 <__lo0bits+0x82>
   18efe:	8385                	srli	a5,a5,0x1
   18f00:	c31c                	sw	a5,0(a4)
   18f02:	4505                	li	a0,1
   18f04:	8082                	ret
   18f06:	01079693          	slli	a3,a5,0x10
   18f0a:	82c1                	srli	a3,a3,0x10
   18f0c:	4501                	li	a0,0
   18f0e:	c6b9                	beqz	a3,18f5c <__lo0bits+0x76>
   18f10:	0ff7f693          	zext.b	a3,a5
   18f14:	ce95                	beqz	a3,18f50 <__lo0bits+0x6a>
   18f16:	00f7f693          	andi	a3,a5,15
   18f1a:	c68d                	beqz	a3,18f44 <__lo0bits+0x5e>
   18f1c:	0037f693          	andi	a3,a5,3
   18f20:	ce81                	beqz	a3,18f38 <__lo0bits+0x52>
   18f22:	0017f693          	andi	a3,a5,1
   18f26:	e699                	bnez	a3,18f34 <__lo0bits+0x4e>
   18f28:	8385                	srli	a5,a5,0x1
   18f2a:	0505                	addi	a0,a0,1
   18f2c:	e781                	bnez	a5,18f34 <__lo0bits+0x4e>
   18f2e:	02000513          	li	a0,32
   18f32:	8082                	ret
   18f34:	c31c                	sw	a5,0(a4)
   18f36:	8082                	ret
   18f38:	8389                	srli	a5,a5,0x2
   18f3a:	0017f693          	andi	a3,a5,1
   18f3e:	0509                	addi	a0,a0,2
   18f40:	faf5                	bnez	a3,18f34 <__lo0bits+0x4e>
   18f42:	b7dd                	j	18f28 <__lo0bits+0x42>
   18f44:	8391                	srli	a5,a5,0x4
   18f46:	0037f693          	andi	a3,a5,3
   18f4a:	0511                	addi	a0,a0,4
   18f4c:	faf9                	bnez	a3,18f22 <__lo0bits+0x3c>
   18f4e:	b7ed                	j	18f38 <__lo0bits+0x52>
   18f50:	83a1                	srli	a5,a5,0x8
   18f52:	00f7f693          	andi	a3,a5,15
   18f56:	0521                	addi	a0,a0,8
   18f58:	f2f1                	bnez	a3,18f1c <__lo0bits+0x36>
   18f5a:	b7ed                	j	18f44 <__lo0bits+0x5e>
   18f5c:	83c1                	srli	a5,a5,0x10
   18f5e:	0ff7f693          	zext.b	a3,a5
   18f62:	4541                	li	a0,16
   18f64:	facd                	bnez	a3,18f16 <__lo0bits+0x30>
   18f66:	b7ed                	j	18f50 <__lo0bits+0x6a>
   18f68:	8389                	srli	a5,a5,0x2
   18f6a:	c31c                	sw	a5,0(a4)
   18f6c:	4509                	li	a0,2
   18f6e:	8082                	ret

00018f70 <__i2b>:
   18f70:	417c                	lw	a5,68(a0)
   18f72:	1141                	addi	sp,sp,-16
   18f74:	c422                	sw	s0,8(sp)
   18f76:	c226                	sw	s1,4(sp)
   18f78:	c606                	sw	ra,12(sp)
   18f7a:	842a                	mv	s0,a0
   18f7c:	84ae                	mv	s1,a1
   18f7e:	cf99                	beqz	a5,18f9c <__i2b+0x2c>
   18f80:	43c8                	lw	a0,4(a5)
   18f82:	c531                	beqz	a0,18fce <__i2b+0x5e>
   18f84:	4118                	lw	a4,0(a0)
   18f86:	c3d8                	sw	a4,4(a5)
   18f88:	40b2                	lw	ra,12(sp)
   18f8a:	4422                	lw	s0,8(sp)
   18f8c:	4785                	li	a5,1
   18f8e:	c944                	sw	s1,20(a0)
   18f90:	00052623          	sw	zero,12(a0)
   18f94:	c91c                	sw	a5,16(a0)
   18f96:	4492                	lw	s1,4(sp)
   18f98:	0141                	addi	sp,sp,16
   18f9a:	8082                	ret
   18f9c:	02100613          	li	a2,33
   18fa0:	4591                	li	a1,4
   18fa2:	00001097          	auipc	ra,0x1
   18fa6:	e7e080e7          	jalr	-386(ra) # 19e20 <_calloc_r>
   18faa:	c068                	sw	a0,68(s0)
   18fac:	87aa                	mv	a5,a0
   18fae:	f969                	bnez	a0,18f80 <__i2b+0x10>
   18fb0:	0001d6b7          	lui	a3,0x1d
   18fb4:	0001d537          	lui	a0,0x1d
   18fb8:	46068693          	addi	a3,a3,1120 # 1d460 <__extenddftf2+0x14fc>
   18fbc:	4601                	li	a2,0
   18fbe:	14500593          	li	a1,325
   18fc2:	4c850513          	addi	a0,a0,1224 # 1d4c8 <__extenddftf2+0x1564>
   18fc6:	ffffa097          	auipc	ra,0xffffa
   18fca:	c76080e7          	jalr	-906(ra) # 12c3c <__assert_func>
   18fce:	4671                	li	a2,28
   18fd0:	4585                	li	a1,1
   18fd2:	8522                	mv	a0,s0
   18fd4:	00001097          	auipc	ra,0x1
   18fd8:	e4c080e7          	jalr	-436(ra) # 19e20 <_calloc_r>
   18fdc:	d971                	beqz	a0,18fb0 <__i2b+0x40>
   18fde:	4785                	li	a5,1
   18fe0:	c15c                	sw	a5,4(a0)
   18fe2:	4789                	li	a5,2
   18fe4:	c51c                	sw	a5,8(a0)
   18fe6:	b74d                	j	18f88 <__i2b+0x18>

00018fe8 <__multiply>:
   18fe8:	1101                	addi	sp,sp,-32
   18fea:	c84a                	sw	s2,16(sp)
   18fec:	c64e                	sw	s3,12(sp)
   18fee:	0105a903          	lw	s2,16(a1)
   18ff2:	01062983          	lw	s3,16(a2)
   18ff6:	ca26                	sw	s1,20(sp)
   18ff8:	c452                	sw	s4,8(sp)
   18ffa:	ce06                	sw	ra,28(sp)
   18ffc:	cc22                	sw	s0,24(sp)
   18ffe:	8a2e                	mv	s4,a1
   19000:	84b2                	mv	s1,a2
   19002:	01394763          	blt	s2,s3,19010 <__multiply+0x28>
   19006:	874e                	mv	a4,s3
   19008:	84ae                	mv	s1,a1
   1900a:	89ca                	mv	s3,s2
   1900c:	8a32                	mv	s4,a2
   1900e:	893a                	mv	s2,a4
   19010:	449c                	lw	a5,8(s1)
   19012:	40cc                	lw	a1,4(s1)
   19014:	01298433          	add	s0,s3,s2
   19018:	0087a7b3          	slt	a5,a5,s0
   1901c:	95be                	add	a1,a1,a5
   1901e:	00000097          	auipc	ra,0x0
   19022:	cf8080e7          	jalr	-776(ra) # 18d16 <_Balloc>
   19026:	14050363          	beqz	a0,1916c <__multiply+0x184>
   1902a:	01450313          	addi	t1,a0,20
   1902e:	00241893          	slli	a7,s0,0x2
   19032:	989a                	add	a7,a7,t1
   19034:	879a                	mv	a5,t1
   19036:	01137763          	bgeu	t1,a7,19044 <__multiply+0x5c>
   1903a:	0007a023          	sw	zero,0(a5)
   1903e:	0791                	addi	a5,a5,4
   19040:	ff17ede3          	bltu	a5,a7,1903a <__multiply+0x52>
   19044:	014a0813          	addi	a6,s4,20
   19048:	00291e13          	slli	t3,s2,0x2
   1904c:	01448e93          	addi	t4,s1,20
   19050:	00299593          	slli	a1,s3,0x2
   19054:	9e42                	add	t3,t3,a6
   19056:	95f6                	add	a1,a1,t4
   19058:	0fc87163          	bgeu	a6,t3,1913a <__multiply+0x152>
   1905c:	01548793          	addi	a5,s1,21
   19060:	4f11                	li	t5,4
   19062:	0ef5fe63          	bgeu	a1,a5,1915e <__multiply+0x176>
   19066:	66c1                	lui	a3,0x10
   19068:	16fd                	addi	a3,a3,-1 # ffff <exit-0x95>
   1906a:	a809                	j	1907c <__multiply+0x94>
   1906c:	010fdf93          	srli	t6,t6,0x10
   19070:	060f9863          	bnez	t6,190e0 <__multiply+0xf8>
   19074:	0811                	addi	a6,a6,4
   19076:	0311                	addi	t1,t1,4
   19078:	0dc87163          	bgeu	a6,t3,1913a <__multiply+0x152>
   1907c:	00082f83          	lw	t6,0(a6)
   19080:	00dff3b3          	and	t2,t6,a3
   19084:	fe0384e3          	beqz	t2,1906c <__multiply+0x84>
   19088:	829a                	mv	t0,t1
   1908a:	8ff6                	mv	t6,t4
   1908c:	4481                	li	s1,0
   1908e:	000fa783          	lw	a5,0(t6)
   19092:	0002a603          	lw	a2,0(t0) # 165b4 <memset+0x8e>
   19096:	0291                	addi	t0,t0,4
   19098:	00d7f733          	and	a4,a5,a3
   1909c:	02770733          	mul	a4,a4,t2
   190a0:	83c1                	srli	a5,a5,0x10
   190a2:	00d67933          	and	s2,a2,a3
   190a6:	8241                	srli	a2,a2,0x10
   190a8:	0f91                	addi	t6,t6,4
   190aa:	027787b3          	mul	a5,a5,t2
   190ae:	974a                	add	a4,a4,s2
   190b0:	9726                	add	a4,a4,s1
   190b2:	01075493          	srli	s1,a4,0x10
   190b6:	8f75                	and	a4,a4,a3
   190b8:	97b2                	add	a5,a5,a2
   190ba:	97a6                	add	a5,a5,s1
   190bc:	01079613          	slli	a2,a5,0x10
   190c0:	8f51                	or	a4,a4,a2
   190c2:	fee2ae23          	sw	a4,-4(t0)
   190c6:	0107d493          	srli	s1,a5,0x10
   190ca:	fcbfe2e3          	bltu	t6,a1,1908e <__multiply+0xa6>
   190ce:	01e307b3          	add	a5,t1,t5
   190d2:	c384                	sw	s1,0(a5)
   190d4:	00082f83          	lw	t6,0(a6)
   190d8:	010fdf93          	srli	t6,t6,0x10
   190dc:	f80f8ce3          	beqz	t6,19074 <__multiply+0x8c>
   190e0:	00032703          	lw	a4,0(t1)
   190e4:	829a                	mv	t0,t1
   190e6:	8676                	mv	a2,t4
   190e8:	84ba                	mv	s1,a4
   190ea:	4381                	li	t2,0
   190ec:	421c                	lw	a5,0(a2)
   190ee:	0104d993          	srli	s3,s1,0x10
   190f2:	8f75                	and	a4,a4,a3
   190f4:	8ff5                	and	a5,a5,a3
   190f6:	03f787b3          	mul	a5,a5,t6
   190fa:	0042a483          	lw	s1,4(t0)
   190fe:	0291                	addi	t0,t0,4
   19100:	0611                	addi	a2,a2,4
   19102:	00d4f933          	and	s2,s1,a3
   19106:	979e                	add	a5,a5,t2
   19108:	97ce                	add	a5,a5,s3
   1910a:	01079393          	slli	t2,a5,0x10
   1910e:	00e3e733          	or	a4,t2,a4
   19112:	fee2ae23          	sw	a4,-4(t0)
   19116:	ffe65703          	lhu	a4,-2(a2)
   1911a:	83c1                	srli	a5,a5,0x10
   1911c:	03f70733          	mul	a4,a4,t6
   19120:	974a                	add	a4,a4,s2
   19122:	973e                	add	a4,a4,a5
   19124:	01075393          	srli	t2,a4,0x10
   19128:	fcb662e3          	bltu	a2,a1,190ec <__multiply+0x104>
   1912c:	01e307b3          	add	a5,t1,t5
   19130:	c398                	sw	a4,0(a5)
   19132:	0811                	addi	a6,a6,4
   19134:	0311                	addi	t1,t1,4
   19136:	f5c863e3          	bltu	a6,t3,1907c <__multiply+0x94>
   1913a:	00804563          	bgtz	s0,19144 <__multiply+0x15c>
   1913e:	a039                	j	1914c <__multiply+0x164>
   19140:	147d                	addi	s0,s0,-1
   19142:	c409                	beqz	s0,1914c <__multiply+0x164>
   19144:	ffc8a783          	lw	a5,-4(a7)
   19148:	18f1                	addi	a7,a7,-4
   1914a:	dbfd                	beqz	a5,19140 <__multiply+0x158>
   1914c:	40f2                	lw	ra,28(sp)
   1914e:	c900                	sw	s0,16(a0)
   19150:	4462                	lw	s0,24(sp)
   19152:	44d2                	lw	s1,20(sp)
   19154:	4942                	lw	s2,16(sp)
   19156:	49b2                	lw	s3,12(sp)
   19158:	4a22                	lw	s4,8(sp)
   1915a:	6105                	addi	sp,sp,32
   1915c:	8082                	ret
   1915e:	409587b3          	sub	a5,a1,s1
   19162:	17ad                	addi	a5,a5,-21
   19164:	9bf1                	andi	a5,a5,-4
   19166:	00478f13          	addi	t5,a5,4
   1916a:	bdf5                	j	19066 <__multiply+0x7e>
   1916c:	0001d6b7          	lui	a3,0x1d
   19170:	0001d537          	lui	a0,0x1d
   19174:	46068693          	addi	a3,a3,1120 # 1d460 <__extenddftf2+0x14fc>
   19178:	4601                	li	a2,0
   1917a:	16200593          	li	a1,354
   1917e:	4c850513          	addi	a0,a0,1224 # 1d4c8 <__extenddftf2+0x1564>
   19182:	ffffa097          	auipc	ra,0xffffa
   19186:	aba080e7          	jalr	-1350(ra) # 12c3c <__assert_func>

0001918a <__pow5mult>:
   1918a:	1101                	addi	sp,sp,-32
   1918c:	cc22                	sw	s0,24(sp)
   1918e:	c84a                	sw	s2,16(sp)
   19190:	c64e                	sw	s3,12(sp)
   19192:	ce06                	sw	ra,28(sp)
   19194:	00367793          	andi	a5,a2,3
   19198:	8432                	mv	s0,a2
   1919a:	89aa                	mv	s3,a0
   1919c:	892e                	mv	s2,a1
   1919e:	efad                	bnez	a5,19218 <__pow5mult+0x8e>
   191a0:	8409                	srai	s0,s0,0x2
   191a2:	c821                	beqz	s0,191f2 <__pow5mult+0x68>
   191a4:	ca26                	sw	s1,20(sp)
   191a6:	0409a483          	lw	s1,64(s3)
   191aa:	c4d1                	beqz	s1,19236 <__pow5mult+0xac>
   191ac:	00147793          	andi	a5,s0,1
   191b0:	eb89                	bnez	a5,191c2 <__pow5mult+0x38>
   191b2:	8405                	srai	s0,s0,0x1
   191b4:	cc15                	beqz	s0,191f0 <__pow5mult+0x66>
   191b6:	4088                	lw	a0,0(s1)
   191b8:	c521                	beqz	a0,19200 <__pow5mult+0x76>
   191ba:	84aa                	mv	s1,a0
   191bc:	00147793          	andi	a5,s0,1
   191c0:	dbed                	beqz	a5,191b2 <__pow5mult+0x28>
   191c2:	8626                	mv	a2,s1
   191c4:	85ca                	mv	a1,s2
   191c6:	854e                	mv	a0,s3
   191c8:	00000097          	auipc	ra,0x0
   191cc:	e20080e7          	jalr	-480(ra) # 18fe8 <__multiply>
   191d0:	00090d63          	beqz	s2,191ea <__pow5mult+0x60>
   191d4:	00492703          	lw	a4,4(s2)
   191d8:	0449a783          	lw	a5,68(s3)
   191dc:	070a                	slli	a4,a4,0x2
   191de:	97ba                	add	a5,a5,a4
   191e0:	4398                	lw	a4,0(a5)
   191e2:	00e92023          	sw	a4,0(s2)
   191e6:	0127a023          	sw	s2,0(a5)
   191ea:	8405                	srai	s0,s0,0x1
   191ec:	892a                	mv	s2,a0
   191ee:	f461                	bnez	s0,191b6 <__pow5mult+0x2c>
   191f0:	44d2                	lw	s1,20(sp)
   191f2:	40f2                	lw	ra,28(sp)
   191f4:	4462                	lw	s0,24(sp)
   191f6:	49b2                	lw	s3,12(sp)
   191f8:	854a                	mv	a0,s2
   191fa:	4942                	lw	s2,16(sp)
   191fc:	6105                	addi	sp,sp,32
   191fe:	8082                	ret
   19200:	8626                	mv	a2,s1
   19202:	85a6                	mv	a1,s1
   19204:	854e                	mv	a0,s3
   19206:	00000097          	auipc	ra,0x0
   1920a:	de2080e7          	jalr	-542(ra) # 18fe8 <__multiply>
   1920e:	c088                	sw	a0,0(s1)
   19210:	00052023          	sw	zero,0(a0)
   19214:	84aa                	mv	s1,a0
   19216:	b75d                	j	191bc <__pow5mult+0x32>
   19218:	17fd                	addi	a5,a5,-1
   1921a:	0001e737          	lui	a4,0x1e
   1921e:	db870713          	addi	a4,a4,-584 # 1ddb8 <p05.0>
   19222:	078a                	slli	a5,a5,0x2
   19224:	97ba                	add	a5,a5,a4
   19226:	4390                	lw	a2,0(a5)
   19228:	4681                	li	a3,0
   1922a:	00000097          	auipc	ra,0x0
   1922e:	b72080e7          	jalr	-1166(ra) # 18d9c <__multadd>
   19232:	892a                	mv	s2,a0
   19234:	b7b5                	j	191a0 <__pow5mult+0x16>
   19236:	4585                	li	a1,1
   19238:	854e                	mv	a0,s3
   1923a:	00000097          	auipc	ra,0x0
   1923e:	adc080e7          	jalr	-1316(ra) # 18d16 <_Balloc>
   19242:	84aa                	mv	s1,a0
   19244:	c919                	beqz	a0,1925a <__pow5mult+0xd0>
   19246:	27100793          	li	a5,625
   1924a:	c95c                	sw	a5,20(a0)
   1924c:	4785                	li	a5,1
   1924e:	c91c                	sw	a5,16(a0)
   19250:	04a9a023          	sw	a0,64(s3)
   19254:	00052023          	sw	zero,0(a0)
   19258:	bf91                	j	191ac <__pow5mult+0x22>
   1925a:	0001d6b7          	lui	a3,0x1d
   1925e:	0001d537          	lui	a0,0x1d
   19262:	46068693          	addi	a3,a3,1120 # 1d460 <__extenddftf2+0x14fc>
   19266:	4601                	li	a2,0
   19268:	14500593          	li	a1,325
   1926c:	4c850513          	addi	a0,a0,1224 # 1d4c8 <__extenddftf2+0x1564>
   19270:	ffffa097          	auipc	ra,0xffffa
   19274:	9cc080e7          	jalr	-1588(ra) # 12c3c <__assert_func>

00019278 <__lshift>:
   19278:	1101                	addi	sp,sp,-32
   1927a:	c256                	sw	s5,4(sp)
   1927c:	0105aa83          	lw	s5,16(a1)
   19280:	459c                	lw	a5,8(a1)
   19282:	c64e                	sw	s3,12(sp)
   19284:	40565993          	srai	s3,a2,0x5
   19288:	9ace                	add	s5,s5,s3
   1928a:	cc22                	sw	s0,24(sp)
   1928c:	ca26                	sw	s1,20(sp)
   1928e:	c84a                	sw	s2,16(sp)
   19290:	c452                	sw	s4,8(sp)
   19292:	ce06                	sw	ra,28(sp)
   19294:	001a8913          	addi	s2,s5,1
   19298:	84ae                	mv	s1,a1
   1929a:	8432                	mv	s0,a2
   1929c:	41cc                	lw	a1,4(a1)
   1929e:	8a2a                	mv	s4,a0
   192a0:	0127d663          	bge	a5,s2,192ac <__lshift+0x34>
   192a4:	0786                	slli	a5,a5,0x1
   192a6:	0585                	addi	a1,a1,1
   192a8:	ff27cee3          	blt	a5,s2,192a4 <__lshift+0x2c>
   192ac:	8552                	mv	a0,s4
   192ae:	00000097          	auipc	ra,0x0
   192b2:	a68080e7          	jalr	-1432(ra) # 18d16 <_Balloc>
   192b6:	cd5d                	beqz	a0,19374 <__lshift+0xfc>
   192b8:	01450813          	addi	a6,a0,20
   192bc:	01305e63          	blez	s3,192d8 <__lshift+0x60>
   192c0:	0995                	addi	s3,s3,5
   192c2:	098a                	slli	s3,s3,0x2
   192c4:	01350733          	add	a4,a0,s3
   192c8:	87c2                	mv	a5,a6
   192ca:	0791                	addi	a5,a5,4
   192cc:	fe07ae23          	sw	zero,-4(a5)
   192d0:	fee79de3          	bne	a5,a4,192ca <__lshift+0x52>
   192d4:	19b1                	addi	s3,s3,-20
   192d6:	984e                	add	a6,a6,s3
   192d8:	0104a883          	lw	a7,16(s1)
   192dc:	01448793          	addi	a5,s1,20
   192e0:	01f47613          	andi	a2,s0,31
   192e4:	088a                	slli	a7,a7,0x2
   192e6:	98be                	add	a7,a7,a5
   192e8:	c63d                	beqz	a2,19356 <__lshift+0xde>
   192ea:	02000593          	li	a1,32
   192ee:	8d91                	sub	a1,a1,a2
   192f0:	8342                	mv	t1,a6
   192f2:	4681                	li	a3,0
   192f4:	4398                	lw	a4,0(a5)
   192f6:	0311                	addi	t1,t1,4
   192f8:	0791                	addi	a5,a5,4
   192fa:	00c71733          	sll	a4,a4,a2
   192fe:	8f55                	or	a4,a4,a3
   19300:	fee32e23          	sw	a4,-4(t1)
   19304:	ffc7a683          	lw	a3,-4(a5)
   19308:	00b6d6b3          	srl	a3,a3,a1
   1930c:	ff17e4e3          	bltu	a5,a7,192f4 <__lshift+0x7c>
   19310:	01548793          	addi	a5,s1,21
   19314:	4711                	li	a4,4
   19316:	00f8e863          	bltu	a7,a5,19326 <__lshift+0xae>
   1931a:	409887b3          	sub	a5,a7,s1
   1931e:	17ad                	addi	a5,a5,-21
   19320:	9bf1                	andi	a5,a5,-4
   19322:	00478713          	addi	a4,a5,4
   19326:	983a                	add	a6,a6,a4
   19328:	00d82023          	sw	a3,0(a6)
   1932c:	e291                	bnez	a3,19330 <__lshift+0xb8>
   1932e:	8956                	mv	s2,s5
   19330:	40d8                	lw	a4,4(s1)
   19332:	044a2783          	lw	a5,68(s4)
   19336:	40f2                	lw	ra,28(sp)
   19338:	070a                	slli	a4,a4,0x2
   1933a:	97ba                	add	a5,a5,a4
   1933c:	4398                	lw	a4,0(a5)
   1933e:	01252823          	sw	s2,16(a0)
   19342:	4462                	lw	s0,24(sp)
   19344:	c098                	sw	a4,0(s1)
   19346:	c384                	sw	s1,0(a5)
   19348:	4942                	lw	s2,16(sp)
   1934a:	44d2                	lw	s1,20(sp)
   1934c:	49b2                	lw	s3,12(sp)
   1934e:	4a22                	lw	s4,8(sp)
   19350:	4a92                	lw	s5,4(sp)
   19352:	6105                	addi	sp,sp,32
   19354:	8082                	ret
   19356:	4398                	lw	a4,0(a5)
   19358:	0791                	addi	a5,a5,4
   1935a:	0811                	addi	a6,a6,4
   1935c:	fee82e23          	sw	a4,-4(a6)
   19360:	fd17f7e3          	bgeu	a5,a7,1932e <__lshift+0xb6>
   19364:	4398                	lw	a4,0(a5)
   19366:	0791                	addi	a5,a5,4
   19368:	0811                	addi	a6,a6,4
   1936a:	fee82e23          	sw	a4,-4(a6)
   1936e:	ff17e4e3          	bltu	a5,a7,19356 <__lshift+0xde>
   19372:	bf75                	j	1932e <__lshift+0xb6>
   19374:	0001d6b7          	lui	a3,0x1d
   19378:	0001d537          	lui	a0,0x1d
   1937c:	46068693          	addi	a3,a3,1120 # 1d460 <__extenddftf2+0x14fc>
   19380:	4601                	li	a2,0
   19382:	1de00593          	li	a1,478
   19386:	4c850513          	addi	a0,a0,1224 # 1d4c8 <__extenddftf2+0x1564>
   1938a:	ffffa097          	auipc	ra,0xffffa
   1938e:	8b2080e7          	jalr	-1870(ra) # 12c3c <__assert_func>

00019392 <__mcmp>:
   19392:	4918                	lw	a4,16(a0)
   19394:	499c                	lw	a5,16(a1)
   19396:	882a                	mv	a6,a0
   19398:	40f70533          	sub	a0,a4,a5
   1939c:	02f71863          	bne	a4,a5,193cc <__mcmp+0x3a>
   193a0:	078a                	slli	a5,a5,0x2
   193a2:	0851                	addi	a6,a6,20
   193a4:	05d1                	addi	a1,a1,20
   193a6:	00f80733          	add	a4,a6,a5
   193aa:	97ae                	add	a5,a5,a1
   193ac:	a019                	j	193b2 <__mcmp+0x20>
   193ae:	00e87f63          	bgeu	a6,a4,193cc <__mcmp+0x3a>
   193b2:	ffc72603          	lw	a2,-4(a4)
   193b6:	ffc7a683          	lw	a3,-4(a5)
   193ba:	1771                	addi	a4,a4,-4
   193bc:	17f1                	addi	a5,a5,-4
   193be:	fed608e3          	beq	a2,a3,193ae <__mcmp+0x1c>
   193c2:	4505                	li	a0,1
   193c4:	00d67463          	bgeu	a2,a3,193cc <__mcmp+0x3a>
   193c8:	557d                	li	a0,-1
   193ca:	8082                	ret
   193cc:	8082                	ret

000193ce <__mdiff>:
   193ce:	4998                	lw	a4,16(a1)
   193d0:	4a1c                	lw	a5,16(a2)
   193d2:	1141                	addi	sp,sp,-16
   193d4:	c422                	sw	s0,8(sp)
   193d6:	c226                	sw	s1,4(sp)
   193d8:	c606                	sw	ra,12(sp)
   193da:	c04a                	sw	s2,0(sp)
   193dc:	842e                	mv	s0,a1
   193de:	84b2                	mv	s1,a2
   193e0:	40f706b3          	sub	a3,a4,a5
   193e4:	12f71a63          	bne	a4,a5,19518 <__mdiff+0x14a>
   193e8:	00279693          	slli	a3,a5,0x2
   193ec:	01458613          	addi	a2,a1,20
   193f0:	01448713          	addi	a4,s1,20
   193f4:	00d607b3          	add	a5,a2,a3
   193f8:	9736                	add	a4,a4,a3
   193fa:	a019                	j	19400 <__mdiff+0x32>
   193fc:	12f67663          	bgeu	a2,a5,19528 <__mdiff+0x15a>
   19400:	ffc7a583          	lw	a1,-4(a5)
   19404:	ffc72683          	lw	a3,-4(a4)
   19408:	17f1                	addi	a5,a5,-4
   1940a:	1771                	addi	a4,a4,-4
   1940c:	fed588e3          	beq	a1,a3,193fc <__mdiff+0x2e>
   19410:	4905                	li	s2,1
   19412:	00d5e663          	bltu	a1,a3,1941e <__mdiff+0x50>
   19416:	87a6                	mv	a5,s1
   19418:	4901                	li	s2,0
   1941a:	84a2                	mv	s1,s0
   1941c:	843e                	mv	s0,a5
   1941e:	40cc                	lw	a1,4(s1)
   19420:	00000097          	auipc	ra,0x0
   19424:	8f6080e7          	jalr	-1802(ra) # 18d16 <_Balloc>
   19428:	12050963          	beqz	a0,1955a <__mdiff+0x18c>
   1942c:	0104a883          	lw	a7,16(s1)
   19430:	01042283          	lw	t0,16(s0)
   19434:	01448f93          	addi	t6,s1,20
   19438:	00289313          	slli	t1,a7,0x2
   1943c:	01440813          	addi	a6,s0,20
   19440:	028a                	slli	t0,t0,0x2
   19442:	01450593          	addi	a1,a0,20
   19446:	6e41                	lui	t3,0x10
   19448:	01252623          	sw	s2,12(a0)
   1944c:	937e                	add	t1,t1,t6
   1944e:	92c2                	add	t0,t0,a6
   19450:	8f2e                	mv	t5,a1
   19452:	8efe                	mv	t4,t6
   19454:	4681                	li	a3,0
   19456:	1e7d                	addi	t3,t3,-1 # ffff <exit-0x95>
   19458:	000ea703          	lw	a4,0(t4)
   1945c:	00082603          	lw	a2,0(a6)
   19460:	0f11                	addi	t5,t5,4
   19462:	01c777b3          	and	a5,a4,t3
   19466:	01c673b3          	and	t2,a2,t3
   1946a:	407787b3          	sub	a5,a5,t2
   1946e:	97b6                	add	a5,a5,a3
   19470:	8341                	srli	a4,a4,0x10
   19472:	8241                	srli	a2,a2,0x10
   19474:	4107d693          	srai	a3,a5,0x10
   19478:	8f11                	sub	a4,a4,a2
   1947a:	9736                	add	a4,a4,a3
   1947c:	01071693          	slli	a3,a4,0x10
   19480:	01c7f7b3          	and	a5,a5,t3
   19484:	8fd5                	or	a5,a5,a3
   19486:	0811                	addi	a6,a6,4
   19488:	feff2e23          	sw	a5,-4(t5)
   1948c:	0e91                	addi	t4,t4,4
   1948e:	41075693          	srai	a3,a4,0x10
   19492:	fc5863e3          	bltu	a6,t0,19458 <__mdiff+0x8a>
   19496:	01540713          	addi	a4,s0,21
   1949a:	40828433          	sub	s0,t0,s0
   1949e:	142d                	addi	s0,s0,-21
   194a0:	00e2b2b3          	sltu	t0,t0,a4
   194a4:	0012cf13          	xori	t5,t0,1
   194a8:	8009                	srli	s0,s0,0x2
   194aa:	4711                	li	a4,4
   194ac:	06028a63          	beqz	t0,19520 <__mdiff+0x152>
   194b0:	9fba                	add	t6,t6,a4
   194b2:	00e58833          	add	a6,a1,a4
   194b6:	6ec1                	lui	t4,0x10
   194b8:	8e42                	mv	t3,a6
   194ba:	867e                	mv	a2,t6
   194bc:	1efd                	addi	t4,t4,-1 # ffff <exit-0x95>
   194be:	086ff563          	bgeu	t6,t1,19548 <__mdiff+0x17a>
   194c2:	421c                	lw	a5,0(a2)
   194c4:	0e11                	addi	t3,t3,4
   194c6:	0611                	addi	a2,a2,4
   194c8:	01d7f733          	and	a4,a5,t4
   194cc:	9736                	add	a4,a4,a3
   194ce:	0107d593          	srli	a1,a5,0x10
   194d2:	8741                	srai	a4,a4,0x10
   194d4:	972e                	add	a4,a4,a1
   194d6:	97b6                	add	a5,a5,a3
   194d8:	01d7f7b3          	and	a5,a5,t4
   194dc:	01071693          	slli	a3,a4,0x10
   194e0:	8fd5                	or	a5,a5,a3
   194e2:	fefe2e23          	sw	a5,-4(t3)
   194e6:	41075693          	srai	a3,a4,0x10
   194ea:	fc666ce3          	bltu	a2,t1,194c2 <__mdiff+0xf4>
   194ee:	137d                	addi	t1,t1,-1
   194f0:	41f30333          	sub	t1,t1,t6
   194f4:	ffc37313          	andi	t1,t1,-4
   194f8:	00680733          	add	a4,a6,t1
   194fc:	e791                	bnez	a5,19508 <__mdiff+0x13a>
   194fe:	ffc72783          	lw	a5,-4(a4)
   19502:	18fd                	addi	a7,a7,-1
   19504:	1771                	addi	a4,a4,-4
   19506:	dfe5                	beqz	a5,194fe <__mdiff+0x130>
   19508:	40b2                	lw	ra,12(sp)
   1950a:	4422                	lw	s0,8(sp)
   1950c:	01152823          	sw	a7,16(a0)
   19510:	4492                	lw	s1,4(sp)
   19512:	4902                	lw	s2,0(sp)
   19514:	0141                	addi	sp,sp,16
   19516:	8082                	ret
   19518:	4905                	li	s2,1
   1951a:	ee06dee3          	bgez	a3,19416 <__mdiff+0x48>
   1951e:	b701                	j	1941e <__mdiff+0x50>
   19520:	00140713          	addi	a4,s0,1
   19524:	070a                	slli	a4,a4,0x2
   19526:	b769                	j	194b0 <__mdiff+0xe2>
   19528:	4581                	li	a1,0
   1952a:	fffff097          	auipc	ra,0xfffff
   1952e:	7ec080e7          	jalr	2028(ra) # 18d16 <_Balloc>
   19532:	c139                	beqz	a0,19578 <__mdiff+0x1aa>
   19534:	40b2                	lw	ra,12(sp)
   19536:	4422                	lw	s0,8(sp)
   19538:	4785                	li	a5,1
   1953a:	c91c                	sw	a5,16(a0)
   1953c:	00052a23          	sw	zero,20(a0)
   19540:	4492                	lw	s1,4(sp)
   19542:	4902                	lw	s2,0(sp)
   19544:	0141                	addi	sp,sp,16
   19546:	8082                	ret
   19548:	4701                	li	a4,0
   1954a:	000f1463          	bnez	t5,19552 <__mdiff+0x184>
   1954e:	972e                	add	a4,a4,a1
   19550:	b775                	j	194fc <__mdiff+0x12e>
   19552:	00241713          	slli	a4,s0,0x2
   19556:	972e                	add	a4,a4,a1
   19558:	b755                	j	194fc <__mdiff+0x12e>
   1955a:	0001d6b7          	lui	a3,0x1d
   1955e:	0001d537          	lui	a0,0x1d
   19562:	46068693          	addi	a3,a3,1120 # 1d460 <__extenddftf2+0x14fc>
   19566:	4601                	li	a2,0
   19568:	24500593          	li	a1,581
   1956c:	4c850513          	addi	a0,a0,1224 # 1d4c8 <__extenddftf2+0x1564>
   19570:	ffff9097          	auipc	ra,0xffff9
   19574:	6cc080e7          	jalr	1740(ra) # 12c3c <__assert_func>
   19578:	0001d6b7          	lui	a3,0x1d
   1957c:	0001d537          	lui	a0,0x1d
   19580:	46068693          	addi	a3,a3,1120 # 1d460 <__extenddftf2+0x14fc>
   19584:	4601                	li	a2,0
   19586:	23700593          	li	a1,567
   1958a:	4c850513          	addi	a0,a0,1224 # 1d4c8 <__extenddftf2+0x1564>
   1958e:	ffff9097          	auipc	ra,0xffff9
   19592:	6ae080e7          	jalr	1710(ra) # 12c3c <__assert_func>

00019596 <__b2d>:
   19596:	1101                	addi	sp,sp,-32
   19598:	ca26                	sw	s1,20(sp)
   1959a:	4904                	lw	s1,16(a0)
   1959c:	cc22                	sw	s0,24(sp)
   1959e:	01450413          	addi	s0,a0,20
   195a2:	048a                	slli	s1,s1,0x2
   195a4:	94a2                	add	s1,s1,s0
   195a6:	c84a                	sw	s2,16(sp)
   195a8:	ffc4a903          	lw	s2,-4(s1)
   195ac:	c64e                	sw	s3,12(sp)
   195ae:	c452                	sw	s4,8(sp)
   195b0:	854a                	mv	a0,s2
   195b2:	89ae                	mv	s3,a1
   195b4:	ce06                	sw	ra,28(sp)
   195b6:	00000097          	auipc	ra,0x0
   195ba:	8dc080e7          	jalr	-1828(ra) # 18e92 <__hi0bits>
   195be:	02000713          	li	a4,32
   195c2:	40a707b3          	sub	a5,a4,a0
   195c6:	00f9a023          	sw	a5,0(s3)
   195ca:	47a9                	li	a5,10
   195cc:	ffc48a13          	addi	s4,s1,-4
   195d0:	06a7db63          	bge	a5,a0,19646 <__b2d+0xb0>
   195d4:	ff550613          	addi	a2,a0,-11
   195d8:	03447d63          	bgeu	s0,s4,19612 <__b2d+0x7c>
   195dc:	ff84a783          	lw	a5,-8(s1)
   195e0:	c629                	beqz	a2,1962a <__b2d+0x94>
   195e2:	40c706b3          	sub	a3,a4,a2
   195e6:	00d7d733          	srl	a4,a5,a3
   195ea:	00c91933          	sll	s2,s2,a2
   195ee:	00e96933          	or	s2,s2,a4
   195f2:	ff848593          	addi	a1,s1,-8
   195f6:	3ff00737          	lui	a4,0x3ff00
   195fa:	00e96733          	or	a4,s2,a4
   195fe:	00c797b3          	sll	a5,a5,a2
   19602:	02b47863          	bgeu	s0,a1,19632 <__b2d+0x9c>
   19606:	ff44a603          	lw	a2,-12(s1)
   1960a:	00d656b3          	srl	a3,a2,a3
   1960e:	8fd5                	or	a5,a5,a3
   19610:	a00d                	j	19632 <__b2d+0x9c>
   19612:	47ad                	li	a5,11
   19614:	00f50a63          	beq	a0,a5,19628 <__b2d+0x92>
   19618:	00c91933          	sll	s2,s2,a2
   1961c:	3ff00737          	lui	a4,0x3ff00
   19620:	00e96733          	or	a4,s2,a4
   19624:	4781                	li	a5,0
   19626:	a031                	j	19632 <__b2d+0x9c>
   19628:	4781                	li	a5,0
   1962a:	3ff00737          	lui	a4,0x3ff00
   1962e:	00e96733          	or	a4,s2,a4
   19632:	40f2                	lw	ra,28(sp)
   19634:	4462                	lw	s0,24(sp)
   19636:	44d2                	lw	s1,20(sp)
   19638:	4942                	lw	s2,16(sp)
   1963a:	49b2                	lw	s3,12(sp)
   1963c:	4a22                	lw	s4,8(sp)
   1963e:	853e                	mv	a0,a5
   19640:	85ba                	mv	a1,a4
   19642:	6105                	addi	sp,sp,32
   19644:	8082                	ret
   19646:	46ad                	li	a3,11
   19648:	8e89                	sub	a3,a3,a0
   1964a:	3ff007b7          	lui	a5,0x3ff00
   1964e:	00d95733          	srl	a4,s2,a3
   19652:	8f5d                	or	a4,a4,a5
   19654:	4781                	li	a5,0
   19656:	01447663          	bgeu	s0,s4,19662 <__b2d+0xcc>
   1965a:	ff84a783          	lw	a5,-8(s1)
   1965e:	00d7d7b3          	srl	a5,a5,a3
   19662:	0555                	addi	a0,a0,21
   19664:	00a91933          	sll	s2,s2,a0
   19668:	00f967b3          	or	a5,s2,a5
   1966c:	b7d9                	j	19632 <__b2d+0x9c>

0001966e <_realloc_r>:
   1966e:	7179                	addi	sp,sp,-48
   19670:	d226                	sw	s1,36(sp)
   19672:	d606                	sw	ra,44(sp)
   19674:	84b2                	mv	s1,a2
   19676:	16058863          	beqz	a1,197e6 <_realloc_r+0x178>
   1967a:	d422                	sw	s0,40(sp)
   1967c:	d04a                	sw	s2,32(sp)
   1967e:	842e                	mv	s0,a1
   19680:	ce4e                	sw	s3,28(sp)
   19682:	ca56                	sw	s5,20(sp)
   19684:	cc52                	sw	s4,24(sp)
   19686:	892a                	mv	s2,a0
   19688:	fffff097          	auipc	ra,0xfffff
   1968c:	68a080e7          	jalr	1674(ra) # 18d12 <__malloc_lock>
   19690:	ffc42703          	lw	a4,-4(s0)
   19694:	00b48793          	addi	a5,s1,11
   19698:	46d9                	li	a3,22
   1969a:	ff840a93          	addi	s5,s0,-8
   1969e:	ffc77993          	andi	s3,a4,-4
   196a2:	0cf6f663          	bgeu	a3,a5,1976e <_realloc_r+0x100>
   196a6:	ff87fa13          	andi	s4,a5,-8
   196aa:	0c07c563          	bltz	a5,19774 <_realloc_r+0x106>
   196ae:	0c9a6363          	bltu	s4,s1,19774 <_realloc_r+0x106>
   196b2:	0d49dc63          	bge	s3,s4,1978a <_realloc_r+0x11c>
   196b6:	0001e7b7          	lui	a5,0x1e
   196ba:	c462                	sw	s8,8(sp)
   196bc:	14078c13          	addi	s8,a5,320 # 1e140 <__malloc_av_>
   196c0:	008c2603          	lw	a2,8(s8)
   196c4:	013a86b3          	add	a3,s5,s3
   196c8:	42dc                	lw	a5,4(a3)
   196ca:	14d60a63          	beq	a2,a3,1981e <_realloc_r+0x1b0>
   196ce:	ffe7f613          	andi	a2,a5,-2
   196d2:	9636                	add	a2,a2,a3
   196d4:	4250                	lw	a2,4(a2)
   196d6:	8a05                	andi	a2,a2,1
   196d8:	ea7d                	bnez	a2,197ce <_realloc_r+0x160>
   196da:	9bf1                	andi	a5,a5,-4
   196dc:	00f98633          	add	a2,s3,a5
   196e0:	09465f63          	bge	a2,s4,1977e <_realloc_r+0x110>
   196e4:	8b05                	andi	a4,a4,1
   196e6:	e70d                	bnez	a4,19710 <_realloc_r+0xa2>
   196e8:	c65e                	sw	s7,12(sp)
   196ea:	ff842b83          	lw	s7,-8(s0)
   196ee:	c85a                	sw	s6,16(sp)
   196f0:	417a8bb3          	sub	s7,s5,s7
   196f4:	004ba703          	lw	a4,4(s7)
   196f8:	9b71                	andi	a4,a4,-4
   196fa:	97ba                	add	a5,a5,a4
   196fc:	01378b33          	add	s6,a5,s3
   19700:	254b5f63          	bge	s6,s4,1995e <_realloc_r+0x2f0>
   19704:	00e98b33          	add	s6,s3,a4
   19708:	1f4b5263          	bge	s6,s4,198ec <_realloc_r+0x27e>
   1970c:	4b42                	lw	s6,16(sp)
   1970e:	4bb2                	lw	s7,12(sp)
   19710:	85a6                	mv	a1,s1
   19712:	854a                	mv	a0,s2
   19714:	fffff097          	auipc	ra,0xfffff
   19718:	ff6080e7          	jalr	-10(ra) # 1870a <_malloc_r>
   1971c:	84aa                	mv	s1,a0
   1971e:	30050263          	beqz	a0,19a22 <_realloc_r+0x3b4>
   19722:	ffc42783          	lw	a5,-4(s0)
   19726:	ff850713          	addi	a4,a0,-8
   1972a:	9bf9                	andi	a5,a5,-2
   1972c:	97d6                	add	a5,a5,s5
   1972e:	1ae78963          	beq	a5,a4,198e0 <_realloc_r+0x272>
   19732:	ffc98613          	addi	a2,s3,-4
   19736:	02400793          	li	a5,36
   1973a:	20c7ec63          	bltu	a5,a2,19952 <_realloc_r+0x2e4>
   1973e:	474d                	li	a4,19
   19740:	18c76463          	bltu	a4,a2,198c8 <_realloc_r+0x25a>
   19744:	87aa                	mv	a5,a0
   19746:	8722                	mv	a4,s0
   19748:	4314                	lw	a3,0(a4)
   1974a:	c394                	sw	a3,0(a5)
   1974c:	4354                	lw	a3,4(a4)
   1974e:	c3d4                	sw	a3,4(a5)
   19750:	4718                	lw	a4,8(a4)
   19752:	c798                	sw	a4,8(a5)
   19754:	85a2                	mv	a1,s0
   19756:	854a                	mv	a0,s2
   19758:	ffffd097          	auipc	ra,0xffffd
   1975c:	368080e7          	jalr	872(ra) # 16ac0 <_free_r>
   19760:	854a                	mv	a0,s2
   19762:	fffff097          	auipc	ra,0xfffff
   19766:	5b2080e7          	jalr	1458(ra) # 18d14 <__malloc_unlock>
   1976a:	4c22                	lw	s8,8(sp)
   1976c:	a0b9                	j	197ba <_realloc_r+0x14c>
   1976e:	4a41                	li	s4,16
   19770:	f49a71e3          	bgeu	s4,s1,196b2 <_realloc_r+0x44>
   19774:	47b1                	li	a5,12
   19776:	00f92023          	sw	a5,0(s2)
   1977a:	4481                	li	s1,0
   1977c:	a83d                	j	197ba <_realloc_r+0x14c>
   1977e:	46dc                	lw	a5,12(a3)
   19780:	4698                	lw	a4,8(a3)
   19782:	4c22                	lw	s8,8(sp)
   19784:	89b2                	mv	s3,a2
   19786:	c75c                	sw	a5,12(a4)
   19788:	c798                	sw	a4,8(a5)
   1978a:	004aa783          	lw	a5,4(s5)
   1978e:	414986b3          	sub	a3,s3,s4
   19792:	463d                	li	a2,15
   19794:	8b85                	andi	a5,a5,1
   19796:	013a8733          	add	a4,s5,s3
   1979a:	04d66e63          	bltu	a2,a3,197f6 <_realloc_r+0x188>
   1979e:	0137e7b3          	or	a5,a5,s3
   197a2:	00faa223          	sw	a5,4(s5)
   197a6:	435c                	lw	a5,4(a4)
   197a8:	0017e793          	ori	a5,a5,1
   197ac:	c35c                	sw	a5,4(a4)
   197ae:	854a                	mv	a0,s2
   197b0:	fffff097          	auipc	ra,0xfffff
   197b4:	564080e7          	jalr	1380(ra) # 18d14 <__malloc_unlock>
   197b8:	84a2                	mv	s1,s0
   197ba:	5422                	lw	s0,40(sp)
   197bc:	50b2                	lw	ra,44(sp)
   197be:	5902                	lw	s2,32(sp)
   197c0:	49f2                	lw	s3,28(sp)
   197c2:	4a62                	lw	s4,24(sp)
   197c4:	4ad2                	lw	s5,20(sp)
   197c6:	8526                	mv	a0,s1
   197c8:	5492                	lw	s1,36(sp)
   197ca:	6145                	addi	sp,sp,48
   197cc:	8082                	ret
   197ce:	8b05                	andi	a4,a4,1
   197d0:	f321                	bnez	a4,19710 <_realloc_r+0xa2>
   197d2:	c65e                	sw	s7,12(sp)
   197d4:	ff842b83          	lw	s7,-8(s0)
   197d8:	c85a                	sw	s6,16(sp)
   197da:	417a8bb3          	sub	s7,s5,s7
   197de:	004ba703          	lw	a4,4(s7)
   197e2:	9b71                	andi	a4,a4,-4
   197e4:	b705                	j	19704 <_realloc_r+0x96>
   197e6:	50b2                	lw	ra,44(sp)
   197e8:	5492                	lw	s1,36(sp)
   197ea:	85b2                	mv	a1,a2
   197ec:	6145                	addi	sp,sp,48
   197ee:	fffff317          	auipc	t1,0xfffff
   197f2:	f1c30067          	jr	-228(t1) # 1870a <_malloc_r>
   197f6:	0147e7b3          	or	a5,a5,s4
   197fa:	00faa223          	sw	a5,4(s5)
   197fe:	014a85b3          	add	a1,s5,s4
   19802:	0016e693          	ori	a3,a3,1
   19806:	c1d4                	sw	a3,4(a1)
   19808:	435c                	lw	a5,4(a4)
   1980a:	05a1                	addi	a1,a1,8
   1980c:	854a                	mv	a0,s2
   1980e:	0017e793          	ori	a5,a5,1
   19812:	c35c                	sw	a5,4(a4)
   19814:	ffffd097          	auipc	ra,0xffffd
   19818:	2ac080e7          	jalr	684(ra) # 16ac0 <_free_r>
   1981c:	bf49                	j	197ae <_realloc_r+0x140>
   1981e:	9bf1                	andi	a5,a5,-4
   19820:	013786b3          	add	a3,a5,s3
   19824:	010a0613          	addi	a2,s4,16
   19828:	1cc6d163          	bge	a3,a2,199ea <_realloc_r+0x37c>
   1982c:	8b05                	andi	a4,a4,1
   1982e:	ee0711e3          	bnez	a4,19710 <_realloc_r+0xa2>
   19832:	c65e                	sw	s7,12(sp)
   19834:	ff842b83          	lw	s7,-8(s0)
   19838:	c85a                	sw	s6,16(sp)
   1983a:	417a8bb3          	sub	s7,s5,s7
   1983e:	004ba703          	lw	a4,4(s7)
   19842:	9b71                	andi	a4,a4,-4
   19844:	97ba                	add	a5,a5,a4
   19846:	01378b33          	add	s6,a5,s3
   1984a:	eacb4de3          	blt	s6,a2,19704 <_realloc_r+0x96>
   1984e:	00cba783          	lw	a5,12(s7)
   19852:	008ba703          	lw	a4,8(s7)
   19856:	ffc98613          	addi	a2,s3,-4
   1985a:	02400693          	li	a3,36
   1985e:	c75c                	sw	a5,12(a4)
   19860:	c798                	sw	a4,8(a5)
   19862:	008b8493          	addi	s1,s7,8
   19866:	1cc6ef63          	bltu	a3,a2,19a44 <_realloc_r+0x3d6>
   1986a:	474d                	li	a4,19
   1986c:	87a6                	mv	a5,s1
   1986e:	00c77e63          	bgeu	a4,a2,1988a <_realloc_r+0x21c>
   19872:	4018                	lw	a4,0(s0)
   19874:	47ed                	li	a5,27
   19876:	00eba423          	sw	a4,8(s7)
   1987a:	4058                	lw	a4,4(s0)
   1987c:	00eba623          	sw	a4,12(s7)
   19880:	1cc7e963          	bltu	a5,a2,19a52 <_realloc_r+0x3e4>
   19884:	0421                	addi	s0,s0,8
   19886:	010b8793          	addi	a5,s7,16
   1988a:	4018                	lw	a4,0(s0)
   1988c:	c398                	sw	a4,0(a5)
   1988e:	4058                	lw	a4,4(s0)
   19890:	c3d8                	sw	a4,4(a5)
   19892:	4418                	lw	a4,8(s0)
   19894:	c798                	sw	a4,8(a5)
   19896:	014b8733          	add	a4,s7,s4
   1989a:	414b0b33          	sub	s6,s6,s4
   1989e:	00ec2423          	sw	a4,8(s8)
   198a2:	001b6793          	ori	a5,s6,1
   198a6:	c35c                	sw	a5,4(a4)
   198a8:	004ba783          	lw	a5,4(s7)
   198ac:	854a                	mv	a0,s2
   198ae:	8b85                	andi	a5,a5,1
   198b0:	0147e7b3          	or	a5,a5,s4
   198b4:	00fba223          	sw	a5,4(s7)
   198b8:	fffff097          	auipc	ra,0xfffff
   198bc:	45c080e7          	jalr	1116(ra) # 18d14 <__malloc_unlock>
   198c0:	4b42                	lw	s6,16(sp)
   198c2:	4bb2                	lw	s7,12(sp)
   198c4:	4c22                	lw	s8,8(sp)
   198c6:	bdd5                	j	197ba <_realloc_r+0x14c>
   198c8:	4014                	lw	a3,0(s0)
   198ca:	476d                	li	a4,27
   198cc:	c114                	sw	a3,0(a0)
   198ce:	4054                	lw	a3,4(s0)
   198d0:	c154                	sw	a3,4(a0)
   198d2:	10c76163          	bltu	a4,a2,199d4 <_realloc_r+0x366>
   198d6:	00840713          	addi	a4,s0,8
   198da:	00850793          	addi	a5,a0,8
   198de:	b5ad                	j	19748 <_realloc_r+0xda>
   198e0:	ffc52783          	lw	a5,-4(a0)
   198e4:	4c22                	lw	s8,8(sp)
   198e6:	9bf1                	andi	a5,a5,-4
   198e8:	99be                	add	s3,s3,a5
   198ea:	b545                	j	1978a <_realloc_r+0x11c>
   198ec:	00cba783          	lw	a5,12(s7)
   198f0:	008ba703          	lw	a4,8(s7)
   198f4:	ffc98613          	addi	a2,s3,-4
   198f8:	02400693          	li	a3,36
   198fc:	c75c                	sw	a5,12(a4)
   198fe:	c798                	sw	a4,8(a5)
   19900:	008b8493          	addi	s1,s7,8
   19904:	0cc6e163          	bltu	a3,a2,199c6 <_realloc_r+0x358>
   19908:	474d                	li	a4,19
   1990a:	87a6                	mv	a5,s1
   1990c:	02c77663          	bgeu	a4,a2,19938 <_realloc_r+0x2ca>
   19910:	4018                	lw	a4,0(s0)
   19912:	47ed                	li	a5,27
   19914:	00eba423          	sw	a4,8(s7)
   19918:	4058                	lw	a4,4(s0)
   1991a:	00eba623          	sw	a4,12(s7)
   1991e:	0ec7fe63          	bgeu	a5,a2,19a1a <_realloc_r+0x3ac>
   19922:	441c                	lw	a5,8(s0)
   19924:	00fba823          	sw	a5,16(s7)
   19928:	445c                	lw	a5,12(s0)
   1992a:	00fbaa23          	sw	a5,20(s7)
   1992e:	08d60163          	beq	a2,a3,199b0 <_realloc_r+0x342>
   19932:	0441                	addi	s0,s0,16
   19934:	018b8793          	addi	a5,s7,24
   19938:	4018                	lw	a4,0(s0)
   1993a:	c398                	sw	a4,0(a5)
   1993c:	4058                	lw	a4,4(s0)
   1993e:	c3d8                	sw	a4,4(a5)
   19940:	4418                	lw	a4,8(s0)
   19942:	c798                	sw	a4,8(a5)
   19944:	89da                	mv	s3,s6
   19946:	8ade                	mv	s5,s7
   19948:	4b42                	lw	s6,16(sp)
   1994a:	4bb2                	lw	s7,12(sp)
   1994c:	4c22                	lw	s8,8(sp)
   1994e:	8426                	mv	s0,s1
   19950:	bd2d                	j	1978a <_realloc_r+0x11c>
   19952:	85a2                	mv	a1,s0
   19954:	ffffd097          	auipc	ra,0xffffd
   19958:	b06080e7          	jalr	-1274(ra) # 1645a <memmove>
   1995c:	bbe5                	j	19754 <_realloc_r+0xe6>
   1995e:	46dc                	lw	a5,12(a3)
   19960:	4698                	lw	a4,8(a3)
   19962:	ffc98613          	addi	a2,s3,-4
   19966:	02400693          	li	a3,36
   1996a:	c75c                	sw	a5,12(a4)
   1996c:	c798                	sw	a4,8(a5)
   1996e:	008ba703          	lw	a4,8(s7)
   19972:	00cba783          	lw	a5,12(s7)
   19976:	008b8493          	addi	s1,s7,8
   1997a:	c75c                	sw	a5,12(a4)
   1997c:	c798                	sw	a4,8(a5)
   1997e:	04c6e463          	bltu	a3,a2,199c6 <_realloc_r+0x358>
   19982:	474d                	li	a4,19
   19984:	87a6                	mv	a5,s1
   19986:	fac779e3          	bgeu	a4,a2,19938 <_realloc_r+0x2ca>
   1998a:	4018                	lw	a4,0(s0)
   1998c:	47ed                	li	a5,27
   1998e:	00eba423          	sw	a4,8(s7)
   19992:	4058                	lw	a4,4(s0)
   19994:	00eba623          	sw	a4,12(s7)
   19998:	08c7f163          	bgeu	a5,a2,19a1a <_realloc_r+0x3ac>
   1999c:	4418                	lw	a4,8(s0)
   1999e:	02400793          	li	a5,36
   199a2:	00eba823          	sw	a4,16(s7)
   199a6:	4458                	lw	a4,12(s0)
   199a8:	00ebaa23          	sw	a4,20(s7)
   199ac:	f8f613e3          	bne	a2,a5,19932 <_realloc_r+0x2c4>
   199b0:	4818                	lw	a4,16(s0)
   199b2:	020b8793          	addi	a5,s7,32
   199b6:	0461                	addi	s0,s0,24
   199b8:	00ebac23          	sw	a4,24(s7)
   199bc:	ffc42703          	lw	a4,-4(s0)
   199c0:	00ebae23          	sw	a4,28(s7)
   199c4:	bf95                	j	19938 <_realloc_r+0x2ca>
   199c6:	85a2                	mv	a1,s0
   199c8:	8526                	mv	a0,s1
   199ca:	ffffd097          	auipc	ra,0xffffd
   199ce:	a90080e7          	jalr	-1392(ra) # 1645a <memmove>
   199d2:	bf8d                	j	19944 <_realloc_r+0x2d6>
   199d4:	4418                	lw	a4,8(s0)
   199d6:	c518                	sw	a4,8(a0)
   199d8:	4458                	lw	a4,12(s0)
   199da:	c558                	sw	a4,12(a0)
   199dc:	04f60b63          	beq	a2,a5,19a32 <_realloc_r+0x3c4>
   199e0:	01040713          	addi	a4,s0,16
   199e4:	01050793          	addi	a5,a0,16
   199e8:	b385                	j	19748 <_realloc_r+0xda>
   199ea:	9ad2                	add	s5,s5,s4
   199ec:	414686b3          	sub	a3,a3,s4
   199f0:	015c2423          	sw	s5,8(s8)
   199f4:	0016e793          	ori	a5,a3,1
   199f8:	00faa223          	sw	a5,4(s5)
   199fc:	ffc42783          	lw	a5,-4(s0)
   19a00:	854a                	mv	a0,s2
   19a02:	84a2                	mv	s1,s0
   19a04:	8b85                	andi	a5,a5,1
   19a06:	0147e7b3          	or	a5,a5,s4
   19a0a:	fef42e23          	sw	a5,-4(s0)
   19a0e:	fffff097          	auipc	ra,0xfffff
   19a12:	306080e7          	jalr	774(ra) # 18d14 <__malloc_unlock>
   19a16:	4c22                	lw	s8,8(sp)
   19a18:	b34d                	j	197ba <_realloc_r+0x14c>
   19a1a:	0421                	addi	s0,s0,8
   19a1c:	010b8793          	addi	a5,s7,16
   19a20:	bf21                	j	19938 <_realloc_r+0x2ca>
   19a22:	854a                	mv	a0,s2
   19a24:	fffff097          	auipc	ra,0xfffff
   19a28:	2f0080e7          	jalr	752(ra) # 18d14 <__malloc_unlock>
   19a2c:	4481                	li	s1,0
   19a2e:	4c22                	lw	s8,8(sp)
   19a30:	b369                	j	197ba <_realloc_r+0x14c>
   19a32:	4814                	lw	a3,16(s0)
   19a34:	01840713          	addi	a4,s0,24
   19a38:	01850793          	addi	a5,a0,24
   19a3c:	c914                	sw	a3,16(a0)
   19a3e:	4854                	lw	a3,20(s0)
   19a40:	c954                	sw	a3,20(a0)
   19a42:	b319                	j	19748 <_realloc_r+0xda>
   19a44:	85a2                	mv	a1,s0
   19a46:	8526                	mv	a0,s1
   19a48:	ffffd097          	auipc	ra,0xffffd
   19a4c:	a12080e7          	jalr	-1518(ra) # 1645a <memmove>
   19a50:	b599                	j	19896 <_realloc_r+0x228>
   19a52:	441c                	lw	a5,8(s0)
   19a54:	00fba823          	sw	a5,16(s7)
   19a58:	445c                	lw	a5,12(s0)
   19a5a:	00fbaa23          	sw	a5,20(s7)
   19a5e:	00d60663          	beq	a2,a3,19a6a <_realloc_r+0x3fc>
   19a62:	0441                	addi	s0,s0,16
   19a64:	018b8793          	addi	a5,s7,24
   19a68:	b50d                	j	1988a <_realloc_r+0x21c>
   19a6a:	4818                	lw	a4,16(s0)
   19a6c:	020b8793          	addi	a5,s7,32
   19a70:	00ebac23          	sw	a4,24(s7)
   19a74:	4858                	lw	a4,20(s0)
   19a76:	0461                	addi	s0,s0,24
   19a78:	00ebae23          	sw	a4,28(s7)
   19a7c:	b539                	j	1988a <_realloc_r+0x21c>

00019a7e <_fclose_r>:
   19a7e:	1141                	addi	sp,sp,-16
   19a80:	c606                	sw	ra,12(sp)
   19a82:	c04a                	sw	s2,0(sp)
   19a84:	cd89                	beqz	a1,19a9e <_fclose_r+0x20>
   19a86:	c422                	sw	s0,8(sp)
   19a88:	c226                	sw	s1,4(sp)
   19a8a:	842e                	mv	s0,a1
   19a8c:	84aa                	mv	s1,a0
   19a8e:	c119                	beqz	a0,19a94 <_fclose_r+0x16>
   19a90:	595c                	lw	a5,52(a0)
   19a92:	c3dd                	beqz	a5,19b38 <_fclose_r+0xba>
   19a94:	00c41783          	lh	a5,12(s0)
   19a98:	eb89                	bnez	a5,19aaa <_fclose_r+0x2c>
   19a9a:	4422                	lw	s0,8(sp)
   19a9c:	4492                	lw	s1,4(sp)
   19a9e:	40b2                	lw	ra,12(sp)
   19aa0:	4901                	li	s2,0
   19aa2:	854a                	mv	a0,s2
   19aa4:	4902                	lw	s2,0(sp)
   19aa6:	0141                	addi	sp,sp,16
   19aa8:	8082                	ret
   19aaa:	85a2                	mv	a1,s0
   19aac:	8526                	mv	a0,s1
   19aae:	ffffc097          	auipc	ra,0xffffc
   19ab2:	d7e080e7          	jalr	-642(ra) # 1582c <__sflush_r>
   19ab6:	545c                	lw	a5,44(s0)
   19ab8:	892a                	mv	s2,a0
   19aba:	c791                	beqz	a5,19ac6 <_fclose_r+0x48>
   19abc:	4c4c                	lw	a1,28(s0)
   19abe:	8526                	mv	a0,s1
   19ac0:	9782                	jalr	a5
   19ac2:	04054e63          	bltz	a0,19b1e <_fclose_r+0xa0>
   19ac6:	00c45783          	lhu	a5,12(s0)
   19aca:	0807f793          	andi	a5,a5,128
   19ace:	efb1                	bnez	a5,19b2a <_fclose_r+0xac>
   19ad0:	580c                	lw	a1,48(s0)
   19ad2:	cd81                	beqz	a1,19aea <_fclose_r+0x6c>
   19ad4:	04040793          	addi	a5,s0,64
   19ad8:	00f58763          	beq	a1,a5,19ae6 <_fclose_r+0x68>
   19adc:	8526                	mv	a0,s1
   19ade:	ffffd097          	auipc	ra,0xffffd
   19ae2:	fe2080e7          	jalr	-30(ra) # 16ac0 <_free_r>
   19ae6:	02042823          	sw	zero,48(s0)
   19aea:	406c                	lw	a1,68(s0)
   19aec:	c981                	beqz	a1,19afc <_fclose_r+0x7e>
   19aee:	8526                	mv	a0,s1
   19af0:	ffffd097          	auipc	ra,0xffffd
   19af4:	fd0080e7          	jalr	-48(ra) # 16ac0 <_free_r>
   19af8:	04042223          	sw	zero,68(s0)
   19afc:	ffffc097          	auipc	ra,0xffffc
   19b00:	0e4080e7          	jalr	228(ra) # 15be0 <__sfp_lock_acquire>
   19b04:	00041623          	sh	zero,12(s0)
   19b08:	ffffc097          	auipc	ra,0xffffc
   19b0c:	0da080e7          	jalr	218(ra) # 15be2 <__sfp_lock_release>
   19b10:	40b2                	lw	ra,12(sp)
   19b12:	4422                	lw	s0,8(sp)
   19b14:	4492                	lw	s1,4(sp)
   19b16:	854a                	mv	a0,s2
   19b18:	4902                	lw	s2,0(sp)
   19b1a:	0141                	addi	sp,sp,16
   19b1c:	8082                	ret
   19b1e:	00c45783          	lhu	a5,12(s0)
   19b22:	597d                	li	s2,-1
   19b24:	0807f793          	andi	a5,a5,128
   19b28:	d7c5                	beqz	a5,19ad0 <_fclose_r+0x52>
   19b2a:	480c                	lw	a1,16(s0)
   19b2c:	8526                	mv	a0,s1
   19b2e:	ffffd097          	auipc	ra,0xffffd
   19b32:	f92080e7          	jalr	-110(ra) # 16ac0 <_free_r>
   19b36:	bf69                	j	19ad0 <_fclose_r+0x52>
   19b38:	ffffc097          	auipc	ra,0xffffc
   19b3c:	086080e7          	jalr	134(ra) # 15bbe <__sinit>
   19b40:	bf91                	j	19a94 <_fclose_r+0x16>

00019b42 <__smakebuf_r>:
   19b42:	00c59783          	lh	a5,12(a1)
   19b46:	7119                	addi	sp,sp,-128
   19b48:	dca2                	sw	s0,120(sp)
   19b4a:	de86                	sw	ra,124(sp)
   19b4c:	0027f713          	andi	a4,a5,2
   19b50:	842e                	mv	s0,a1
   19b52:	cb19                	beqz	a4,19b68 <__smakebuf_r+0x26>
   19b54:	04358793          	addi	a5,a1,67
   19b58:	c19c                	sw	a5,0(a1)
   19b5a:	c99c                	sw	a5,16(a1)
   19b5c:	4785                	li	a5,1
   19b5e:	c9dc                	sw	a5,20(a1)
   19b60:	50f6                	lw	ra,124(sp)
   19b62:	5466                	lw	s0,120(sp)
   19b64:	6109                	addi	sp,sp,128
   19b66:	8082                	ret
   19b68:	00e59583          	lh	a1,14(a1)
   19b6c:	daa6                	sw	s1,116(sp)
   19b6e:	d8ca                	sw	s2,112(sp)
   19b70:	d6ce                	sw	s3,108(sp)
   19b72:	d4d2                	sw	s4,104(sp)
   19b74:	84aa                	mv	s1,a0
   19b76:	0605c763          	bltz	a1,19be4 <__smakebuf_r+0xa2>
   19b7a:	0030                	addi	a2,sp,8
   19b7c:	00000097          	auipc	ra,0x0
   19b80:	164080e7          	jalr	356(ra) # 19ce0 <_fstat_r>
   19b84:	04054e63          	bltz	a0,19be0 <__smakebuf_r+0x9e>
   19b88:	47b2                	lw	a5,12(sp)
   19b8a:	693d                	lui	s2,0xf
   19b8c:	6985                	lui	s3,0x1
   19b8e:	00f97933          	and	s2,s2,a5
   19b92:	77f9                	lui	a5,0xffffe
   19b94:	993e                	add	s2,s2,a5
   19b96:	00193913          	seqz	s2,s2
   19b9a:	40000a13          	li	s4,1024
   19b9e:	80098993          	addi	s3,s3,-2048 # 800 <exit-0xf894>
   19ba2:	85d2                	mv	a1,s4
   19ba4:	8526                	mv	a0,s1
   19ba6:	fffff097          	auipc	ra,0xfffff
   19baa:	b64080e7          	jalr	-1180(ra) # 1870a <_malloc_r>
   19bae:	00c41783          	lh	a5,12(s0)
   19bb2:	c929                	beqz	a0,19c04 <__smakebuf_r+0xc2>
   19bb4:	0807e793          	ori	a5,a5,128
   19bb8:	c008                	sw	a0,0(s0)
   19bba:	c808                	sw	a0,16(s0)
   19bbc:	00f41623          	sh	a5,12(s0)
   19bc0:	01442a23          	sw	s4,20(s0)
   19bc4:	06091763          	bnez	s2,19c32 <__smakebuf_r+0xf0>
   19bc8:	0137e7b3          	or	a5,a5,s3
   19bcc:	50f6                	lw	ra,124(sp)
   19bce:	00f41623          	sh	a5,12(s0)
   19bd2:	5466                	lw	s0,120(sp)
   19bd4:	54d6                	lw	s1,116(sp)
   19bd6:	5946                	lw	s2,112(sp)
   19bd8:	59b6                	lw	s3,108(sp)
   19bda:	5a26                	lw	s4,104(sp)
   19bdc:	6109                	addi	sp,sp,128
   19bde:	8082                	ret
   19be0:	00c41783          	lh	a5,12(s0)
   19be4:	0807f793          	andi	a5,a5,128
   19be8:	4901                	li	s2,0
   19bea:	c3a1                	beqz	a5,19c2a <__smakebuf_r+0xe8>
   19bec:	04000a13          	li	s4,64
   19bf0:	85d2                	mv	a1,s4
   19bf2:	8526                	mv	a0,s1
   19bf4:	fffff097          	auipc	ra,0xfffff
   19bf8:	b16080e7          	jalr	-1258(ra) # 1870a <_malloc_r>
   19bfc:	00c41783          	lh	a5,12(s0)
   19c00:	4981                	li	s3,0
   19c02:	f94d                	bnez	a0,19bb4 <__smakebuf_r+0x72>
   19c04:	2007f713          	andi	a4,a5,512
   19c08:	e321                	bnez	a4,19c48 <__smakebuf_r+0x106>
   19c0a:	9bf1                	andi	a5,a5,-4
   19c0c:	0027e793          	ori	a5,a5,2
   19c10:	04340713          	addi	a4,s0,67
   19c14:	00f41623          	sh	a5,12(s0)
   19c18:	4785                	li	a5,1
   19c1a:	54d6                	lw	s1,116(sp)
   19c1c:	5946                	lw	s2,112(sp)
   19c1e:	59b6                	lw	s3,108(sp)
   19c20:	5a26                	lw	s4,104(sp)
   19c22:	c018                	sw	a4,0(s0)
   19c24:	c818                	sw	a4,16(s0)
   19c26:	c85c                	sw	a5,20(s0)
   19c28:	bf25                	j	19b60 <__smakebuf_r+0x1e>
   19c2a:	40000a13          	li	s4,1024
   19c2e:	4981                	li	s3,0
   19c30:	bf8d                	j	19ba2 <__smakebuf_r+0x60>
   19c32:	00e41583          	lh	a1,14(s0)
   19c36:	8526                	mv	a0,s1
   19c38:	00000097          	auipc	ra,0x0
   19c3c:	0ea080e7          	jalr	234(ra) # 19d22 <_isatty_r>
   19c40:	e909                	bnez	a0,19c52 <__smakebuf_r+0x110>
   19c42:	00c41783          	lh	a5,12(s0)
   19c46:	b749                	j	19bc8 <__smakebuf_r+0x86>
   19c48:	54d6                	lw	s1,116(sp)
   19c4a:	5946                	lw	s2,112(sp)
   19c4c:	59b6                	lw	s3,108(sp)
   19c4e:	5a26                	lw	s4,104(sp)
   19c50:	bf01                	j	19b60 <__smakebuf_r+0x1e>
   19c52:	00c45783          	lhu	a5,12(s0)
   19c56:	9bf1                	andi	a5,a5,-4
   19c58:	0017e793          	ori	a5,a5,1
   19c5c:	07c2                	slli	a5,a5,0x10
   19c5e:	87c1                	srai	a5,a5,0x10
   19c60:	b7a5                	j	19bc8 <__smakebuf_r+0x86>

00019c62 <raise>:
   19c62:	1141                	addi	sp,sp,-16
   19c64:	c226                	sw	s1,4(sp)
   19c66:	0001e737          	lui	a4,0x1e
   19c6a:	c606                	sw	ra,12(sp)
   19c6c:	47fd                	li	a5,31
   19c6e:	71872483          	lw	s1,1816(a4) # 1e718 <_impure_ptr>
   19c72:	06a7e363          	bltu	a5,a0,19cd8 <raise+0x76>
   19c76:	1184a783          	lw	a5,280(s1)
   19c7a:	c422                	sw	s0,8(sp)
   19c7c:	842a                	mv	s0,a0
   19c7e:	c78d                	beqz	a5,19ca8 <raise+0x46>
   19c80:	00251713          	slli	a4,a0,0x2
   19c84:	97ba                	add	a5,a5,a4
   19c86:	4398                	lw	a4,0(a5)
   19c88:	c305                	beqz	a4,19ca8 <raise+0x46>
   19c8a:	4685                	li	a3,1
   19c8c:	00d70863          	beq	a4,a3,19c9c <raise+0x3a>
   19c90:	56fd                	li	a3,-1
   19c92:	02d70b63          	beq	a4,a3,19cc8 <raise+0x66>
   19c96:	0007a023          	sw	zero,0(a5) # ffffe000 <__BSS_END__+0xfffdf5a4>
   19c9a:	9702                	jalr	a4
   19c9c:	4422                	lw	s0,8(sp)
   19c9e:	4501                	li	a0,0
   19ca0:	40b2                	lw	ra,12(sp)
   19ca2:	4492                	lw	s1,4(sp)
   19ca4:	0141                	addi	sp,sp,16
   19ca6:	8082                	ret
   19ca8:	8526                	mv	a0,s1
   19caa:	00000097          	auipc	ra,0x0
   19cae:	0f8080e7          	jalr	248(ra) # 19da2 <_getpid_r>
   19cb2:	8622                	mv	a2,s0
   19cb4:	4422                	lw	s0,8(sp)
   19cb6:	40b2                	lw	ra,12(sp)
   19cb8:	85aa                	mv	a1,a0
   19cba:	8526                	mv	a0,s1
   19cbc:	4492                	lw	s1,4(sp)
   19cbe:	0141                	addi	sp,sp,16
   19cc0:	00000317          	auipc	t1,0x0
   19cc4:	0a030067          	jr	160(t1) # 19d60 <_kill_r>
   19cc8:	4422                	lw	s0,8(sp)
   19cca:	40b2                	lw	ra,12(sp)
   19ccc:	47d9                	li	a5,22
   19cce:	c09c                	sw	a5,0(s1)
   19cd0:	4505                	li	a0,1
   19cd2:	4492                	lw	s1,4(sp)
   19cd4:	0141                	addi	sp,sp,16
   19cd6:	8082                	ret
   19cd8:	47d9                	li	a5,22
   19cda:	c09c                	sw	a5,0(s1)
   19cdc:	557d                	li	a0,-1
   19cde:	b7c9                	j	19ca0 <raise+0x3e>

00019ce0 <_fstat_r>:
   19ce0:	1141                	addi	sp,sp,-16
   19ce2:	872e                	mv	a4,a1
   19ce4:	c422                	sw	s0,8(sp)
   19ce6:	c226                	sw	s1,4(sp)
   19ce8:	842a                	mv	s0,a0
   19cea:	0001e4b7          	lui	s1,0x1e
   19cee:	85b2                	mv	a1,a2
   19cf0:	853a                	mv	a0,a4
   19cf2:	c606                	sw	ra,12(sp)
   19cf4:	7204ac23          	sw	zero,1848(s1) # 1e738 <errno>
   19cf8:	00000097          	auipc	ra,0x0
   19cfc:	292080e7          	jalr	658(ra) # 19f8a <_fstat>
   19d00:	57fd                	li	a5,-1
   19d02:	00f50763          	beq	a0,a5,19d10 <_fstat_r+0x30>
   19d06:	40b2                	lw	ra,12(sp)
   19d08:	4422                	lw	s0,8(sp)
   19d0a:	4492                	lw	s1,4(sp)
   19d0c:	0141                	addi	sp,sp,16
   19d0e:	8082                	ret
   19d10:	7384a783          	lw	a5,1848(s1)
   19d14:	dbed                	beqz	a5,19d06 <_fstat_r+0x26>
   19d16:	40b2                	lw	ra,12(sp)
   19d18:	c01c                	sw	a5,0(s0)
   19d1a:	4422                	lw	s0,8(sp)
   19d1c:	4492                	lw	s1,4(sp)
   19d1e:	0141                	addi	sp,sp,16
   19d20:	8082                	ret

00019d22 <_isatty_r>:
   19d22:	1141                	addi	sp,sp,-16
   19d24:	c422                	sw	s0,8(sp)
   19d26:	c226                	sw	s1,4(sp)
   19d28:	842a                	mv	s0,a0
   19d2a:	0001e4b7          	lui	s1,0x1e
   19d2e:	852e                	mv	a0,a1
   19d30:	c606                	sw	ra,12(sp)
   19d32:	7204ac23          	sw	zero,1848(s1) # 1e738 <errno>
   19d36:	00000097          	auipc	ra,0x0
   19d3a:	29c080e7          	jalr	668(ra) # 19fd2 <_isatty>
   19d3e:	57fd                	li	a5,-1
   19d40:	00f50763          	beq	a0,a5,19d4e <_isatty_r+0x2c>
   19d44:	40b2                	lw	ra,12(sp)
   19d46:	4422                	lw	s0,8(sp)
   19d48:	4492                	lw	s1,4(sp)
   19d4a:	0141                	addi	sp,sp,16
   19d4c:	8082                	ret
   19d4e:	7384a783          	lw	a5,1848(s1)
   19d52:	dbed                	beqz	a5,19d44 <_isatty_r+0x22>
   19d54:	40b2                	lw	ra,12(sp)
   19d56:	c01c                	sw	a5,0(s0)
   19d58:	4422                	lw	s0,8(sp)
   19d5a:	4492                	lw	s1,4(sp)
   19d5c:	0141                	addi	sp,sp,16
   19d5e:	8082                	ret

00019d60 <_kill_r>:
   19d60:	1141                	addi	sp,sp,-16
   19d62:	872e                	mv	a4,a1
   19d64:	c422                	sw	s0,8(sp)
   19d66:	c226                	sw	s1,4(sp)
   19d68:	842a                	mv	s0,a0
   19d6a:	0001e4b7          	lui	s1,0x1e
   19d6e:	85b2                	mv	a1,a2
   19d70:	853a                	mv	a0,a4
   19d72:	c606                	sw	ra,12(sp)
   19d74:	7204ac23          	sw	zero,1848(s1) # 1e738 <errno>
   19d78:	00000097          	auipc	ra,0x0
   19d7c:	282080e7          	jalr	642(ra) # 19ffa <_kill>
   19d80:	57fd                	li	a5,-1
   19d82:	00f50763          	beq	a0,a5,19d90 <_kill_r+0x30>
   19d86:	40b2                	lw	ra,12(sp)
   19d88:	4422                	lw	s0,8(sp)
   19d8a:	4492                	lw	s1,4(sp)
   19d8c:	0141                	addi	sp,sp,16
   19d8e:	8082                	ret
   19d90:	7384a783          	lw	a5,1848(s1)
   19d94:	dbed                	beqz	a5,19d86 <_kill_r+0x26>
   19d96:	40b2                	lw	ra,12(sp)
   19d98:	c01c                	sw	a5,0(s0)
   19d9a:	4422                	lw	s0,8(sp)
   19d9c:	4492                	lw	s1,4(sp)
   19d9e:	0141                	addi	sp,sp,16
   19da0:	8082                	ret

00019da2 <_getpid_r>:
   19da2:	00000317          	auipc	t1,0x0
   19da6:	22c30067          	jr	556(t1) # 19fce <_getpid>

00019daa <_sbrk_r>:
   19daa:	1141                	addi	sp,sp,-16
   19dac:	c422                	sw	s0,8(sp)
   19dae:	c226                	sw	s1,4(sp)
   19db0:	842a                	mv	s0,a0
   19db2:	0001e4b7          	lui	s1,0x1e
   19db6:	852e                	mv	a0,a1
   19db8:	c606                	sw	ra,12(sp)
   19dba:	7204ac23          	sw	zero,1848(s1) # 1e738 <errno>
   19dbe:	00000097          	auipc	ra,0x0
   19dc2:	2b4080e7          	jalr	692(ra) # 1a072 <_sbrk>
   19dc6:	57fd                	li	a5,-1
   19dc8:	00f50763          	beq	a0,a5,19dd6 <_sbrk_r+0x2c>
   19dcc:	40b2                	lw	ra,12(sp)
   19dce:	4422                	lw	s0,8(sp)
   19dd0:	4492                	lw	s1,4(sp)
   19dd2:	0141                	addi	sp,sp,16
   19dd4:	8082                	ret
   19dd6:	7384a783          	lw	a5,1848(s1)
   19dda:	dbed                	beqz	a5,19dcc <_sbrk_r+0x22>
   19ddc:	40b2                	lw	ra,12(sp)
   19dde:	c01c                	sw	a5,0(s0)
   19de0:	4422                	lw	s0,8(sp)
   19de2:	4492                	lw	s1,4(sp)
   19de4:	0141                	addi	sp,sp,16
   19de6:	8082                	ret

00019de8 <__libc_fini_array>:
   19de8:	1141                	addi	sp,sp,-16
   19dea:	c422                	sw	s0,8(sp)
   19dec:	0001e7b7          	lui	a5,0x1e
   19df0:	0001e437          	lui	s0,0x1e
   19df4:	00c78793          	addi	a5,a5,12 # 1e00c <__do_global_dtors_aux_fini_array_entry>
   19df8:	01040413          	addi	s0,s0,16 # 1e010 <__sglue>
   19dfc:	8c1d                	sub	s0,s0,a5
   19dfe:	c226                	sw	s1,4(sp)
   19e00:	c606                	sw	ra,12(sp)
   19e02:	40245493          	srai	s1,s0,0x2
   19e06:	c881                	beqz	s1,19e16 <__libc_fini_array+0x2e>
   19e08:	1471                	addi	s0,s0,-4
   19e0a:	943e                	add	s0,s0,a5
   19e0c:	401c                	lw	a5,0(s0)
   19e0e:	14fd                	addi	s1,s1,-1
   19e10:	1471                	addi	s0,s0,-4
   19e12:	9782                	jalr	a5
   19e14:	fce5                	bnez	s1,19e0c <__libc_fini_array+0x24>
   19e16:	40b2                	lw	ra,12(sp)
   19e18:	4422                	lw	s0,8(sp)
   19e1a:	4492                	lw	s1,4(sp)
   19e1c:	0141                	addi	sp,sp,16
   19e1e:	8082                	ret

00019e20 <_calloc_r>:
   19e20:	02c5b7b3          	mulhu	a5,a1,a2
   19e24:	1141                	addi	sp,sp,-16
   19e26:	c606                	sw	ra,12(sp)
   19e28:	c422                	sw	s0,8(sp)
   19e2a:	02c585b3          	mul	a1,a1,a2
   19e2e:	e3c1                	bnez	a5,19eae <_calloc_r+0x8e>
   19e30:	fffff097          	auipc	ra,0xfffff
   19e34:	8da080e7          	jalr	-1830(ra) # 1870a <_malloc_r>
   19e38:	842a                	mv	s0,a0
   19e3a:	c141                	beqz	a0,19eba <_calloc_r+0x9a>
   19e3c:	ffc52603          	lw	a2,-4(a0)
   19e40:	02400713          	li	a4,36
   19e44:	9a71                	andi	a2,a2,-4
   19e46:	1671                	addi	a2,a2,-4
   19e48:	04c76063          	bltu	a4,a2,19e88 <_calloc_r+0x68>
   19e4c:	46cd                	li	a3,19
   19e4e:	87aa                	mv	a5,a0
   19e50:	02c6f163          	bgeu	a3,a2,19e72 <_calloc_r+0x52>
   19e54:	00052023          	sw	zero,0(a0)
   19e58:	00052223          	sw	zero,4(a0)
   19e5c:	47ed                	li	a5,27
   19e5e:	02c7ff63          	bgeu	a5,a2,19e9c <_calloc_r+0x7c>
   19e62:	00052423          	sw	zero,8(a0)
   19e66:	00052623          	sw	zero,12(a0)
   19e6a:	01050793          	addi	a5,a0,16
   19e6e:	04e60c63          	beq	a2,a4,19ec6 <_calloc_r+0xa6>
   19e72:	0007a023          	sw	zero,0(a5)
   19e76:	0007a223          	sw	zero,4(a5)
   19e7a:	0007a423          	sw	zero,8(a5)
   19e7e:	40b2                	lw	ra,12(sp)
   19e80:	8522                	mv	a0,s0
   19e82:	4422                	lw	s0,8(sp)
   19e84:	0141                	addi	sp,sp,16
   19e86:	8082                	ret
   19e88:	4581                	li	a1,0
   19e8a:	ffffc097          	auipc	ra,0xffffc
   19e8e:	69c080e7          	jalr	1692(ra) # 16526 <memset>
   19e92:	40b2                	lw	ra,12(sp)
   19e94:	8522                	mv	a0,s0
   19e96:	4422                	lw	s0,8(sp)
   19e98:	0141                	addi	sp,sp,16
   19e9a:	8082                	ret
   19e9c:	00850793          	addi	a5,a0,8
   19ea0:	0007a023          	sw	zero,0(a5)
   19ea4:	0007a223          	sw	zero,4(a5)
   19ea8:	0007a423          	sw	zero,8(a5)
   19eac:	bfc9                	j	19e7e <_calloc_r+0x5e>
   19eae:	ffffc097          	auipc	ra,0xffffc
   19eb2:	530080e7          	jalr	1328(ra) # 163de <__errno>
   19eb6:	47b1                	li	a5,12
   19eb8:	c11c                	sw	a5,0(a0)
   19eba:	4401                	li	s0,0
   19ebc:	40b2                	lw	ra,12(sp)
   19ebe:	8522                	mv	a0,s0
   19ec0:	4422                	lw	s0,8(sp)
   19ec2:	0141                	addi	sp,sp,16
   19ec4:	8082                	ret
   19ec6:	00052823          	sw	zero,16(a0)
   19eca:	01850793          	addi	a5,a0,24
   19ece:	00052a23          	sw	zero,20(a0)
   19ed2:	b745                	j	19e72 <_calloc_r+0x52>

00019ed4 <__ascii_mbtowc>:
   19ed4:	c999                	beqz	a1,19eea <__ascii_mbtowc+0x16>
   19ed6:	c61d                	beqz	a2,19f04 <__ascii_mbtowc+0x30>
   19ed8:	ca95                	beqz	a3,19f0c <__ascii_mbtowc+0x38>
   19eda:	00064783          	lbu	a5,0(a2)
   19ede:	c19c                	sw	a5,0(a1)
   19ee0:	00064503          	lbu	a0,0(a2)
   19ee4:	00a03533          	snez	a0,a0
   19ee8:	8082                	ret
   19eea:	1141                	addi	sp,sp,-16
   19eec:	006c                	addi	a1,sp,12
   19eee:	ce09                	beqz	a2,19f08 <__ascii_mbtowc+0x34>
   19ef0:	c285                	beqz	a3,19f10 <__ascii_mbtowc+0x3c>
   19ef2:	00064783          	lbu	a5,0(a2)
   19ef6:	c19c                	sw	a5,0(a1)
   19ef8:	00064503          	lbu	a0,0(a2)
   19efc:	00a03533          	snez	a0,a0
   19f00:	0141                	addi	sp,sp,16
   19f02:	8082                	ret
   19f04:	4501                	li	a0,0
   19f06:	8082                	ret
   19f08:	4501                	li	a0,0
   19f0a:	bfdd                	j	19f00 <__ascii_mbtowc+0x2c>
   19f0c:	5579                	li	a0,-2
   19f0e:	8082                	ret
   19f10:	5579                	li	a0,-2
   19f12:	b7fd                	j	19f00 <__ascii_mbtowc+0x2c>

00019f14 <__ascii_wctomb>:
   19f14:	cd91                	beqz	a1,19f30 <__ascii_wctomb+0x1c>
   19f16:	0ff00793          	li	a5,255
   19f1a:	00c7e663          	bltu	a5,a2,19f26 <__ascii_wctomb+0x12>
   19f1e:	00c58023          	sb	a2,0(a1)
   19f22:	4505                	li	a0,1
   19f24:	8082                	ret
   19f26:	08a00793          	li	a5,138
   19f2a:	c11c                	sw	a5,0(a0)
   19f2c:	557d                	li	a0,-1
   19f2e:	8082                	ret
   19f30:	4501                	li	a0,0
   19f32:	8082                	ret

00019f34 <_close>:
   19f34:	1141                	addi	sp,sp,-16
   19f36:	c606                	sw	ra,12(sp)
   19f38:	c422                	sw	s0,8(sp)
   19f3a:	03900893          	li	a7,57
   19f3e:	00000073          	ecall
   19f42:	842a                	mv	s0,a0
   19f44:	00054763          	bltz	a0,19f52 <_close+0x1e>
   19f48:	40b2                	lw	ra,12(sp)
   19f4a:	8522                	mv	a0,s0
   19f4c:	4422                	lw	s0,8(sp)
   19f4e:	0141                	addi	sp,sp,16
   19f50:	8082                	ret
   19f52:	40800433          	neg	s0,s0
   19f56:	ffffc097          	auipc	ra,0xffffc
   19f5a:	488080e7          	jalr	1160(ra) # 163de <__errno>
   19f5e:	c100                	sw	s0,0(a0)
   19f60:	547d                	li	s0,-1
   19f62:	b7dd                	j	19f48 <_close+0x14>

00019f64 <_exit>:
   19f64:	05d00893          	li	a7,93
   19f68:	00000073          	ecall
   19f6c:	00054363          	bltz	a0,19f72 <_exit+0xe>
   19f70:	a001                	j	19f70 <_exit+0xc>
   19f72:	1141                	addi	sp,sp,-16
   19f74:	c422                	sw	s0,8(sp)
   19f76:	842a                	mv	s0,a0
   19f78:	c606                	sw	ra,12(sp)
   19f7a:	40800433          	neg	s0,s0
   19f7e:	ffffc097          	auipc	ra,0xffffc
   19f82:	460080e7          	jalr	1120(ra) # 163de <__errno>
   19f86:	c100                	sw	s0,0(a0)
   19f88:	a001                	j	19f88 <_exit+0x24>

00019f8a <_fstat>:
   19f8a:	7175                	addi	sp,sp,-144
   19f8c:	c326                	sw	s1,132(sp)
   19f8e:	c706                	sw	ra,140(sp)
   19f90:	84ae                	mv	s1,a1
   19f92:	c522                	sw	s0,136(sp)
   19f94:	05000893          	li	a7,80
   19f98:	858a                	mv	a1,sp
   19f9a:	00000073          	ecall
   19f9e:	842a                	mv	s0,a0
   19fa0:	00054e63          	bltz	a0,19fbc <_fstat+0x32>
   19fa4:	8526                	mv	a0,s1
   19fa6:	858a                	mv	a1,sp
   19fa8:	00000097          	auipc	ra,0x0
   19fac:	156080e7          	jalr	342(ra) # 1a0fe <_conv_stat>
   19fb0:	40ba                	lw	ra,140(sp)
   19fb2:	8522                	mv	a0,s0
   19fb4:	442a                	lw	s0,136(sp)
   19fb6:	449a                	lw	s1,132(sp)
   19fb8:	6149                	addi	sp,sp,144
   19fba:	8082                	ret
   19fbc:	40800433          	neg	s0,s0
   19fc0:	ffffc097          	auipc	ra,0xffffc
   19fc4:	41e080e7          	jalr	1054(ra) # 163de <__errno>
   19fc8:	c100                	sw	s0,0(a0)
   19fca:	547d                	li	s0,-1
   19fcc:	bfe1                	j	19fa4 <_fstat+0x1a>

00019fce <_getpid>:
   19fce:	4505                	li	a0,1
   19fd0:	8082                	ret

00019fd2 <_isatty>:
   19fd2:	7159                	addi	sp,sp,-112
   19fd4:	002c                	addi	a1,sp,8
   19fd6:	d686                	sw	ra,108(sp)
   19fd8:	00000097          	auipc	ra,0x0
   19fdc:	fb2080e7          	jalr	-78(ra) # 19f8a <_fstat>
   19fe0:	57fd                	li	a5,-1
   19fe2:	00f50863          	beq	a0,a5,19ff2 <_isatty+0x20>
   19fe6:	4532                	lw	a0,12(sp)
   19fe8:	50b6                	lw	ra,108(sp)
   19fea:	8135                	srli	a0,a0,0xd
   19fec:	8905                	andi	a0,a0,1
   19fee:	6165                	addi	sp,sp,112
   19ff0:	8082                	ret
   19ff2:	50b6                	lw	ra,108(sp)
   19ff4:	4501                	li	a0,0
   19ff6:	6165                	addi	sp,sp,112
   19ff8:	8082                	ret

00019ffa <_kill>:
   19ffa:	1141                	addi	sp,sp,-16
   19ffc:	c606                	sw	ra,12(sp)
   19ffe:	ffffc097          	auipc	ra,0xffffc
   1a002:	3e0080e7          	jalr	992(ra) # 163de <__errno>
   1a006:	40b2                	lw	ra,12(sp)
   1a008:	47d9                	li	a5,22
   1a00a:	c11c                	sw	a5,0(a0)
   1a00c:	557d                	li	a0,-1
   1a00e:	0141                	addi	sp,sp,16
   1a010:	8082                	ret

0001a012 <_lseek>:
   1a012:	1141                	addi	sp,sp,-16
   1a014:	c606                	sw	ra,12(sp)
   1a016:	c422                	sw	s0,8(sp)
   1a018:	03e00893          	li	a7,62
   1a01c:	00000073          	ecall
   1a020:	842a                	mv	s0,a0
   1a022:	00054763          	bltz	a0,1a030 <_lseek+0x1e>
   1a026:	40b2                	lw	ra,12(sp)
   1a028:	8522                	mv	a0,s0
   1a02a:	4422                	lw	s0,8(sp)
   1a02c:	0141                	addi	sp,sp,16
   1a02e:	8082                	ret
   1a030:	40800433          	neg	s0,s0
   1a034:	ffffc097          	auipc	ra,0xffffc
   1a038:	3aa080e7          	jalr	938(ra) # 163de <__errno>
   1a03c:	c100                	sw	s0,0(a0)
   1a03e:	547d                	li	s0,-1
   1a040:	b7dd                	j	1a026 <_lseek+0x14>

0001a042 <_read>:
   1a042:	1141                	addi	sp,sp,-16
   1a044:	c606                	sw	ra,12(sp)
   1a046:	c422                	sw	s0,8(sp)
   1a048:	03f00893          	li	a7,63
   1a04c:	00000073          	ecall
   1a050:	842a                	mv	s0,a0
   1a052:	00054763          	bltz	a0,1a060 <_read+0x1e>
   1a056:	40b2                	lw	ra,12(sp)
   1a058:	8522                	mv	a0,s0
   1a05a:	4422                	lw	s0,8(sp)
   1a05c:	0141                	addi	sp,sp,16
   1a05e:	8082                	ret
   1a060:	40800433          	neg	s0,s0
   1a064:	ffffc097          	auipc	ra,0xffffc
   1a068:	37a080e7          	jalr	890(ra) # 163de <__errno>
   1a06c:	c100                	sw	s0,0(a0)
   1a06e:	547d                	li	s0,-1
   1a070:	b7dd                	j	1a056 <_read+0x14>

0001a072 <_sbrk>:
   1a072:	0001e6b7          	lui	a3,0x1e
   1a076:	74c6a703          	lw	a4,1868(a3) # 1e74c <heap_end.0>
   1a07a:	1141                	addi	sp,sp,-16
   1a07c:	c606                	sw	ra,12(sp)
   1a07e:	87aa                	mv	a5,a0
   1a080:	ef01                	bnez	a4,1a098 <_sbrk+0x26>
   1a082:	0d600893          	li	a7,214
   1a086:	4501                	li	a0,0
   1a088:	00000073          	ecall
   1a08c:	567d                	li	a2,-1
   1a08e:	872a                	mv	a4,a0
   1a090:	02c50563          	beq	a0,a2,1a0ba <_sbrk+0x48>
   1a094:	74a6a623          	sw	a0,1868(a3)
   1a098:	0d600893          	li	a7,214
   1a09c:	00e78533          	add	a0,a5,a4
   1a0a0:	00000073          	ecall
   1a0a4:	74c6a703          	lw	a4,1868(a3)
   1a0a8:	97ba                	add	a5,a5,a4
   1a0aa:	00f51863          	bne	a0,a5,1a0ba <_sbrk+0x48>
   1a0ae:	40b2                	lw	ra,12(sp)
   1a0b0:	74a6a623          	sw	a0,1868(a3)
   1a0b4:	853a                	mv	a0,a4
   1a0b6:	0141                	addi	sp,sp,16
   1a0b8:	8082                	ret
   1a0ba:	ffffc097          	auipc	ra,0xffffc
   1a0be:	324080e7          	jalr	804(ra) # 163de <__errno>
   1a0c2:	40b2                	lw	ra,12(sp)
   1a0c4:	47b1                	li	a5,12
   1a0c6:	c11c                	sw	a5,0(a0)
   1a0c8:	557d                	li	a0,-1
   1a0ca:	0141                	addi	sp,sp,16
   1a0cc:	8082                	ret

0001a0ce <_write>:
   1a0ce:	1141                	addi	sp,sp,-16
   1a0d0:	c606                	sw	ra,12(sp)
   1a0d2:	c422                	sw	s0,8(sp)
   1a0d4:	04000893          	li	a7,64
   1a0d8:	00000073          	ecall
   1a0dc:	842a                	mv	s0,a0
   1a0de:	00054763          	bltz	a0,1a0ec <_write+0x1e>
   1a0e2:	40b2                	lw	ra,12(sp)
   1a0e4:	8522                	mv	a0,s0
   1a0e6:	4422                	lw	s0,8(sp)
   1a0e8:	0141                	addi	sp,sp,16
   1a0ea:	8082                	ret
   1a0ec:	40800433          	neg	s0,s0
   1a0f0:	ffffc097          	auipc	ra,0xffffc
   1a0f4:	2ee080e7          	jalr	750(ra) # 163de <__errno>
   1a0f8:	c100                	sw	s0,0(a0)
   1a0fa:	547d                	li	s0,-1
   1a0fc:	b7dd                	j	1a0e2 <_write+0x14>

0001a0fe <_conv_stat>:
   1a0fe:	0185d703          	lhu	a4,24(a1)
   1a102:	0145d783          	lhu	a5,20(a1)
   1a106:	1141                	addi	sp,sp,-16
   1a108:	01c5a283          	lw	t0,28(a1)
   1a10c:	0205af83          	lw	t6,32(a1)
   1a110:	0305af03          	lw	t5,48(a1)
   1a114:	0405ae83          	lw	t4,64(a1)
   1a118:	0385ae03          	lw	t3,56(a1)
   1a11c:	0485a303          	lw	t1,72(a1)
   1a120:	04c5a383          	lw	t2,76(a1)
   1a124:	0585a803          	lw	a6,88(a1)
   1a128:	05c5a883          	lw	a7,92(a1)
   1a12c:	c622                	sw	s0,12(sp)
   1a12e:	c426                	sw	s1,8(sp)
   1a130:	4980                	lw	s0,16(a1)
   1a132:	4584                	lw	s1,8(a1)
   1a134:	c24a                	sw	s2,4(sp)
   1a136:	0005a903          	lw	s2,0(a1)
   1a13a:	55b0                	lw	a2,104(a1)
   1a13c:	0742                	slli	a4,a4,0x10
   1a13e:	8fd9                	or	a5,a5,a4
   1a140:	55f4                	lw	a3,108(a1)
   1a142:	01251023          	sh	s2,0(a0)
   1a146:	00951123          	sh	s1,2(a0)
   1a14a:	c140                	sw	s0,4(a0)
   1a14c:	c51c                	sw	a5,8(a0)
   1a14e:	00551623          	sh	t0,12(a0)
   1a152:	01f51723          	sh	t6,14(a0)
   1a156:	01e52823          	sw	t5,16(a0)
   1a15a:	05d52623          	sw	t4,76(a0)
   1a15e:	05c52423          	sw	t3,72(a0)
   1a162:	00652c23          	sw	t1,24(a0)
   1a166:	00752e23          	sw	t2,28(a0)
   1a16a:	03052423          	sw	a6,40(a0)
   1a16e:	03152623          	sw	a7,44(a0)
   1a172:	dd10                	sw	a2,56(a0)
   1a174:	4432                	lw	s0,12(sp)
   1a176:	dd54                	sw	a3,60(a0)
   1a178:	44a2                	lw	s1,8(sp)
   1a17a:	4912                	lw	s2,4(sp)
   1a17c:	0141                	addi	sp,sp,16
   1a17e:	8082                	ret

0001a180 <__eqtf2>:
   1a180:	455c                	lw	a5,12(a0)
   1a182:	0005af03          	lw	t5,0(a1)
   1a186:	0045af83          	lw	t6,4(a1)
   1a18a:	0085a283          	lw	t0,8(a1)
   1a18e:	45cc                	lw	a1,12(a1)
   1a190:	6721                	lui	a4,0x8
   1a192:	0107d693          	srli	a3,a5,0x10
   1a196:	177d                	addi	a4,a4,-1 # 7fff <exit-0x8095>
   1a198:	01079813          	slli	a6,a5,0x10
   1a19c:	01059e93          	slli	t4,a1,0x10
   1a1a0:	01f7d613          	srli	a2,a5,0x1f
   1a1a4:	8ef9                	and	a3,a3,a4
   1a1a6:	0105d793          	srli	a5,a1,0x10
   1a1aa:	00052883          	lw	a7,0(a0)
   1a1ae:	00452303          	lw	t1,4(a0)
   1a1b2:	00852e03          	lw	t3,8(a0)
   1a1b6:	1141                	addi	sp,sp,-16
   1a1b8:	01085813          	srli	a6,a6,0x10
   1a1bc:	010ede93          	srli	t4,t4,0x10
   1a1c0:	8ff9                	and	a5,a5,a4
   1a1c2:	81fd                	srli	a1,a1,0x1f
   1a1c4:	00e69d63          	bne	a3,a4,1a1de <__eqtf2+0x5e>
   1a1c8:	0068e733          	or	a4,a7,t1
   1a1cc:	01c76733          	or	a4,a4,t3
   1a1d0:	01076733          	or	a4,a4,a6
   1a1d4:	4505                	li	a0,1
   1a1d6:	e721                	bnez	a4,1a21e <__eqtf2+0x9e>
   1a1d8:	04d79363          	bne	a5,a3,1a21e <__eqtf2+0x9e>
   1a1dc:	a019                	j	1a1e2 <__eqtf2+0x62>
   1a1de:	00e79a63          	bne	a5,a4,1a1f2 <__eqtf2+0x72>
   1a1e2:	01ff6733          	or	a4,t5,t6
   1a1e6:	00576733          	or	a4,a4,t0
   1a1ea:	01d76733          	or	a4,a4,t4
   1a1ee:	4505                	li	a0,1
   1a1f0:	e71d                	bnez	a4,1a21e <__eqtf2+0x9e>
   1a1f2:	4505                	li	a0,1
   1a1f4:	02d79563          	bne	a5,a3,1a21e <__eqtf2+0x9e>
   1a1f8:	03e89363          	bne	a7,t5,1a21e <__eqtf2+0x9e>
   1a1fc:	03f31163          	bne	t1,t6,1a21e <__eqtf2+0x9e>
   1a200:	005e1f63          	bne	t3,t0,1a21e <__eqtf2+0x9e>
   1a204:	01d81d63          	bne	a6,t4,1a21e <__eqtf2+0x9e>
   1a208:	00b60d63          	beq	a2,a1,1a222 <__eqtf2+0xa2>
   1a20c:	eb89                	bnez	a5,1a21e <__eqtf2+0x9e>
   1a20e:	0068e533          	or	a0,a7,t1
   1a212:	01c56533          	or	a0,a0,t3
   1a216:	01056533          	or	a0,a0,a6
   1a21a:	00a03533          	snez	a0,a0
   1a21e:	0141                	addi	sp,sp,16
   1a220:	8082                	ret
   1a222:	4501                	li	a0,0
   1a224:	bfed                	j	1a21e <__eqtf2+0x9e>

0001a226 <__getf2>:
   1a226:	455c                	lw	a5,12(a0)
   1a228:	45d4                	lw	a3,12(a1)
   1a22a:	6721                	lui	a4,0x8
   1a22c:	0107d613          	srli	a2,a5,0x10
   1a230:	177d                	addi	a4,a4,-1 # 7fff <exit-0x8095>
   1a232:	01079813          	slli	a6,a5,0x10
   1a236:	01069293          	slli	t0,a3,0x10
   1a23a:	00052883          	lw	a7,0(a0)
   1a23e:	00452303          	lw	t1,4(a0)
   1a242:	00852e03          	lw	t3,8(a0)
   1a246:	8e79                	and	a2,a2,a4
   1a248:	0106d513          	srli	a0,a3,0x10
   1a24c:	0005ae83          	lw	t4,0(a1)
   1a250:	0045af03          	lw	t5,4(a1)
   1a254:	0085af83          	lw	t6,8(a1)
   1a258:	1141                	addi	sp,sp,-16
   1a25a:	01085813          	srli	a6,a6,0x10
   1a25e:	83fd                	srli	a5,a5,0x1f
   1a260:	0102d293          	srli	t0,t0,0x10
   1a264:	8d79                	and	a0,a0,a4
   1a266:	82fd                	srli	a3,a3,0x1f
   1a268:	00e61963          	bne	a2,a4,1a27a <__getf2+0x54>
   1a26c:	01136733          	or	a4,t1,a7
   1a270:	01c76733          	or	a4,a4,t3
   1a274:	01076733          	or	a4,a4,a6
   1a278:	ef35                	bnez	a4,1a2f4 <__getf2+0xce>
   1a27a:	6721                	lui	a4,0x8
   1a27c:	177d                	addi	a4,a4,-1 # 7fff <exit-0x8095>
   1a27e:	00e51963          	bne	a0,a4,1a290 <__getf2+0x6a>
   1a282:	01eee733          	or	a4,t4,t5
   1a286:	01f76733          	or	a4,a4,t6
   1a28a:	00576733          	or	a4,a4,t0
   1a28e:	e33d                	bnez	a4,1a2f4 <__getf2+0xce>
   1a290:	4701                	li	a4,0
   1a292:	ea09                	bnez	a2,1a2a4 <__getf2+0x7e>
   1a294:	01136733          	or	a4,t1,a7
   1a298:	01c76733          	or	a4,a4,t3
   1a29c:	01076733          	or	a4,a4,a6
   1a2a0:	00173713          	seqz	a4,a4
   1a2a4:	e931                	bnez	a0,1a2f8 <__getf2+0xd2>
   1a2a6:	01eee5b3          	or	a1,t4,t5
   1a2aa:	01f5e5b3          	or	a1,a1,t6
   1a2ae:	0055e5b3          	or	a1,a1,t0
   1a2b2:	c711                	beqz	a4,1a2be <__getf2+0x98>
   1a2b4:	c981                	beqz	a1,1a2c4 <__getf2+0x9e>
   1a2b6:	4505                	li	a0,1
   1a2b8:	e691                	bnez	a3,1a2c4 <__getf2+0x9e>
   1a2ba:	557d                	li	a0,-1
   1a2bc:	a021                	j	1a2c4 <__getf2+0x9e>
   1a2be:	ed95                	bnez	a1,1a2fa <__getf2+0xd4>
   1a2c0:	557d                	li	a0,-1
   1a2c2:	c3b1                	beqz	a5,1a306 <__getf2+0xe0>
   1a2c4:	0141                	addi	sp,sp,16
   1a2c6:	8082                	ret
   1a2c8:	fea647e3          	blt	a2,a0,1a2b6 <__getf2+0x90>
   1a2cc:	ff02eae3          	bltu	t0,a6,1a2c0 <__getf2+0x9a>
   1a2d0:	00581f63          	bne	a6,t0,1a2ee <__getf2+0xc8>
   1a2d4:	ffcfe6e3          	bltu	t6,t3,1a2c0 <__getf2+0x9a>
   1a2d8:	01fe1b63          	bne	t3,t6,1a2ee <__getf2+0xc8>
   1a2dc:	fe6f62e3          	bltu	t5,t1,1a2c0 <__getf2+0x9a>
   1a2e0:	01e31763          	bne	t1,t5,1a2ee <__getf2+0xc8>
   1a2e4:	fd1eeee3          	bltu	t4,a7,1a2c0 <__getf2+0x9a>
   1a2e8:	4501                	li	a0,0
   1a2ea:	fdd8fde3          	bgeu	a7,t4,1a2c4 <__getf2+0x9e>
   1a2ee:	4505                	li	a0,1
   1a2f0:	fbf1                	bnez	a5,1a2c4 <__getf2+0x9e>
   1a2f2:	b7e1                	j	1a2ba <__getf2+0x94>
   1a2f4:	5579                	li	a0,-2
   1a2f6:	b7f9                	j	1a2c4 <__getf2+0x9e>
   1a2f8:	ff5d                	bnez	a4,1a2b6 <__getf2+0x90>
   1a2fa:	fcf693e3          	bne	a3,a5,1a2c0 <__getf2+0x9a>
   1a2fe:	fcc555e3          	bge	a0,a2,1a2c8 <__getf2+0xa2>
   1a302:	557d                	li	a0,-1
   1a304:	f2e1                	bnez	a3,1a2c4 <__getf2+0x9e>
   1a306:	4505                	li	a0,1
   1a308:	bf75                	j	1a2c4 <__getf2+0x9e>

0001a30a <__letf2>:
   1a30a:	455c                	lw	a5,12(a0)
   1a30c:	45d4                	lw	a3,12(a1)
   1a30e:	6721                	lui	a4,0x8
   1a310:	0107d613          	srli	a2,a5,0x10
   1a314:	177d                	addi	a4,a4,-1 # 7fff <exit-0x8095>
   1a316:	01079813          	slli	a6,a5,0x10
   1a31a:	01069293          	slli	t0,a3,0x10
   1a31e:	00052883          	lw	a7,0(a0)
   1a322:	00452303          	lw	t1,4(a0)
   1a326:	00852e03          	lw	t3,8(a0)
   1a32a:	8e79                	and	a2,a2,a4
   1a32c:	0106d513          	srli	a0,a3,0x10
   1a330:	0005ae83          	lw	t4,0(a1)
   1a334:	0045af03          	lw	t5,4(a1)
   1a338:	0085af83          	lw	t6,8(a1)
   1a33c:	1141                	addi	sp,sp,-16
   1a33e:	01085813          	srli	a6,a6,0x10
   1a342:	83fd                	srli	a5,a5,0x1f
   1a344:	0102d293          	srli	t0,t0,0x10
   1a348:	8d79                	and	a0,a0,a4
   1a34a:	82fd                	srli	a3,a3,0x1f
   1a34c:	00e61963          	bne	a2,a4,1a35e <__letf2+0x54>
   1a350:	01136733          	or	a4,t1,a7
   1a354:	01c76733          	or	a4,a4,t3
   1a358:	01076733          	or	a4,a4,a6
   1a35c:	ef35                	bnez	a4,1a3d8 <__letf2+0xce>
   1a35e:	6721                	lui	a4,0x8
   1a360:	177d                	addi	a4,a4,-1 # 7fff <exit-0x8095>
   1a362:	00e51963          	bne	a0,a4,1a374 <__letf2+0x6a>
   1a366:	01eee733          	or	a4,t4,t5
   1a36a:	01f76733          	or	a4,a4,t6
   1a36e:	00576733          	or	a4,a4,t0
   1a372:	e33d                	bnez	a4,1a3d8 <__letf2+0xce>
   1a374:	4701                	li	a4,0
   1a376:	ea09                	bnez	a2,1a388 <__letf2+0x7e>
   1a378:	01136733          	or	a4,t1,a7
   1a37c:	01c76733          	or	a4,a4,t3
   1a380:	01076733          	or	a4,a4,a6
   1a384:	00173713          	seqz	a4,a4
   1a388:	e931                	bnez	a0,1a3dc <__letf2+0xd2>
   1a38a:	01eee5b3          	or	a1,t4,t5
   1a38e:	01f5e5b3          	or	a1,a1,t6
   1a392:	0055e5b3          	or	a1,a1,t0
   1a396:	c711                	beqz	a4,1a3a2 <__letf2+0x98>
   1a398:	c981                	beqz	a1,1a3a8 <__letf2+0x9e>
   1a39a:	4505                	li	a0,1
   1a39c:	e691                	bnez	a3,1a3a8 <__letf2+0x9e>
   1a39e:	557d                	li	a0,-1
   1a3a0:	a021                	j	1a3a8 <__letf2+0x9e>
   1a3a2:	ed95                	bnez	a1,1a3de <__letf2+0xd4>
   1a3a4:	557d                	li	a0,-1
   1a3a6:	c3b1                	beqz	a5,1a3ea <__letf2+0xe0>
   1a3a8:	0141                	addi	sp,sp,16
   1a3aa:	8082                	ret
   1a3ac:	fea647e3          	blt	a2,a0,1a39a <__letf2+0x90>
   1a3b0:	ff02eae3          	bltu	t0,a6,1a3a4 <__letf2+0x9a>
   1a3b4:	00581f63          	bne	a6,t0,1a3d2 <__letf2+0xc8>
   1a3b8:	ffcfe6e3          	bltu	t6,t3,1a3a4 <__letf2+0x9a>
   1a3bc:	01fe1b63          	bne	t3,t6,1a3d2 <__letf2+0xc8>
   1a3c0:	fe6f62e3          	bltu	t5,t1,1a3a4 <__letf2+0x9a>
   1a3c4:	01e31763          	bne	t1,t5,1a3d2 <__letf2+0xc8>
   1a3c8:	fd1eeee3          	bltu	t4,a7,1a3a4 <__letf2+0x9a>
   1a3cc:	4501                	li	a0,0
   1a3ce:	fdd8fde3          	bgeu	a7,t4,1a3a8 <__letf2+0x9e>
   1a3d2:	4505                	li	a0,1
   1a3d4:	fbf1                	bnez	a5,1a3a8 <__letf2+0x9e>
   1a3d6:	b7e1                	j	1a39e <__letf2+0x94>
   1a3d8:	4509                	li	a0,2
   1a3da:	b7f9                	j	1a3a8 <__letf2+0x9e>
   1a3dc:	ff5d                	bnez	a4,1a39a <__letf2+0x90>
   1a3de:	fcf693e3          	bne	a3,a5,1a3a4 <__letf2+0x9a>
   1a3e2:	fcc555e3          	bge	a0,a2,1a3ac <__letf2+0xa2>
   1a3e6:	557d                	li	a0,-1
   1a3e8:	f2e1                	bnez	a3,1a3a8 <__letf2+0x9e>
   1a3ea:	4505                	li	a0,1
   1a3ec:	bf75                	j	1a3a8 <__letf2+0x9e>

0001a3ee <__multf3>:
   1a3ee:	7171                	addi	sp,sp,-176
   1a3f0:	cd52                	sw	s4,152(sp)
   1a3f2:	00c5aa03          	lw	s4,12(a1)
   1a3f6:	419c                	lw	a5,0(a1)
   1a3f8:	4594                	lw	a3,8(a1)
   1a3fa:	d522                	sw	s0,168(sp)
   1a3fc:	842a                	mv	s0,a0
   1a3fe:	41c8                	lw	a0,4(a1)
   1a400:	010a1713          	slli	a4,s4,0x10
   1a404:	d14a                	sw	s2,160(sp)
   1a406:	cf4e                	sw	s3,156(sp)
   1a408:	00062903          	lw	s2,0(a2)
   1a40c:	00c62983          	lw	s3,12(a2)
   1a410:	cb56                	sw	s5,148(sp)
   1a412:	c95a                	sw	s6,144(sp)
   1a414:	00862a83          	lw	s5,8(a2)
   1a418:	00462b03          	lw	s6,4(a2)
   1a41c:	6621                	lui	a2,0x8
   1a41e:	d326                	sw	s1,164(sp)
   1a420:	8341                	srli	a4,a4,0x10
   1a422:	010a5493          	srli	s1,s4,0x10
   1a426:	167d                	addi	a2,a2,-1 # 7fff <exit-0x8095>
   1a428:	ced2                	sw	s4,92(sp)
   1a42a:	d706                	sw	ra,172(sp)
   1a42c:	c75e                	sw	s7,140(sp)
   1a42e:	c562                	sw	s8,136(sp)
   1a430:	c366                	sw	s9,132(sp)
   1a432:	c16a                	sw	s10,128(sp)
   1a434:	deee                	sw	s11,124(sp)
   1a436:	c8be                	sw	a5,80(sp)
   1a438:	caaa                	sw	a0,84(sp)
   1a43a:	ccb6                	sw	a3,88(sp)
   1a43c:	d03e                	sw	a5,32(sp)
   1a43e:	d22a                	sw	a0,36(sp)
   1a440:	d436                	sw	a3,40(sp)
   1a442:	d63a                	sw	a4,44(sp)
   1a444:	8cf1                	and	s1,s1,a2
   1a446:	01fa5a13          	srli	s4,s4,0x1f
   1a44a:	62048c63          	beqz	s1,1aa82 <__multf3+0x694>
   1a44e:	72c48663          	beq	s1,a2,1ab7a <__multf3+0x78c>
   1a452:	66c1                	lui	a3,0x10
   1a454:	8f55                	or	a4,a4,a3
   1a456:	d63a                	sw	a4,44(sp)
   1a458:	084c                	addi	a1,sp,20
   1a45a:	1018                	addi	a4,sp,32
   1a45c:	4754                	lw	a3,12(a4)
   1a45e:	4710                	lw	a2,8(a4)
   1a460:	1771                	addi	a4,a4,-4
   1a462:	068e                	slli	a3,a3,0x3
   1a464:	8275                	srli	a2,a2,0x1d
   1a466:	8ed1                	or	a3,a3,a2
   1a468:	cb14                	sw	a3,16(a4)
   1a46a:	fee599e3          	bne	a1,a4,1a45c <__multf3+0x6e>
   1a46e:	078e                	slli	a5,a5,0x3
   1a470:	d03e                	sw	a5,32(sp)
   1a472:	77f1                	lui	a5,0xffffc
   1a474:	0785                	addi	a5,a5,1 # ffffc001 <__BSS_END__+0xfffdd5a5>
   1a476:	94be                	add	s1,s1,a5
   1a478:	4b81                	li	s7,0
   1a47a:	01099513          	slli	a0,s3,0x10
   1a47e:	6721                	lui	a4,0x8
   1a480:	0109d793          	srli	a5,s3,0x10
   1a484:	8141                	srli	a0,a0,0x10
   1a486:	177d                	addi	a4,a4,-1 # 7fff <exit-0x8095>
   1a488:	cece                	sw	s3,92(sp)
   1a48a:	c8ca                	sw	s2,80(sp)
   1a48c:	cada                	sw	s6,84(sp)
   1a48e:	ccd6                	sw	s5,88(sp)
   1a490:	d84a                	sw	s2,48(sp)
   1a492:	da5a                	sw	s6,52(sp)
   1a494:	dc56                	sw	s5,56(sp)
   1a496:	de2a                	sw	a0,60(sp)
   1a498:	8ff9                	and	a5,a5,a4
   1a49a:	01f9d993          	srli	s3,s3,0x1f
   1a49e:	6e078963          	beqz	a5,1ab90 <__multf3+0x7a2>
   1a4a2:	7ee78663          	beq	a5,a4,1ac8e <__multf3+0x8a0>
   1a4a6:	6741                	lui	a4,0x10
   1a4a8:	8d59                	or	a0,a0,a4
   1a4aa:	de2a                	sw	a0,60(sp)
   1a4ac:	1818                	addi	a4,sp,48
   1a4ae:	104c                	addi	a1,sp,36
   1a4b0:	4754                	lw	a3,12(a4)
   1a4b2:	4710                	lw	a2,8(a4)
   1a4b4:	1771                	addi	a4,a4,-4 # fffc <exit-0x98>
   1a4b6:	068e                	slli	a3,a3,0x3
   1a4b8:	8275                	srli	a2,a2,0x1d
   1a4ba:	8ed1                	or	a3,a3,a2
   1a4bc:	cb14                	sw	a3,16(a4)
   1a4be:	fee599e3          	bne	a1,a4,1a4b0 <__multf3+0xc2>
   1a4c2:	7771                	lui	a4,0xffffc
   1a4c4:	090e                	slli	s2,s2,0x3
   1a4c6:	0705                	addi	a4,a4,1 # ffffc001 <__BSS_END__+0xfffdd5a5>
   1a4c8:	d84a                	sw	s2,48(sp)
   1a4ca:	97ba                	add	a5,a5,a4
   1a4cc:	4681                	li	a3,0
   1a4ce:	97a6                	add	a5,a5,s1
   1a4d0:	c63e                	sw	a5,12(sp)
   1a4d2:	0785                	addi	a5,a5,1
   1a4d4:	c43e                	sw	a5,8(sp)
   1a4d6:	002b9793          	slli	a5,s7,0x2
   1a4da:	8fd5                	or	a5,a5,a3
   1a4dc:	4729                	li	a4,10
   1a4de:	7ef74b63          	blt	a4,a5,1acd4 <__multf3+0x8e6>
   1a4e2:	013a4733          	xor	a4,s4,s3
   1a4e6:	c23a                	sw	a4,4(sp)
   1a4e8:	4709                	li	a4,2
   1a4ea:	7cf74063          	blt	a4,a5,1acaa <__multf3+0x8bc>
   1a4ee:	17fd                	addi	a5,a5,-1
   1a4f0:	4705                	li	a4,1
   1a4f2:	7ef77963          	bgeu	a4,a5,1ace4 <__multf3+0x8f6>
   1a4f6:	5882                	lw	a7,32(sp)
   1a4f8:	5f42                	lw	t5,48(sp)
   1a4fa:	65c1                	lui	a1,0x10
   1a4fc:	fff58713          	addi	a4,a1,-1 # ffff <exit-0x95>
   1a500:	0108d913          	srli	s2,a7,0x10
   1a504:	010f5493          	srli	s1,t5,0x10
   1a508:	00e8f8b3          	and	a7,a7,a4
   1a50c:	00ef7f33          	and	t5,t5,a4
   1a510:	031f0633          	mul	a2,t5,a7
   1a514:	03e90533          	mul	a0,s2,t5
   1a518:	01065793          	srli	a5,a2,0x10
   1a51c:	031486b3          	mul	a3,s1,a7
   1a520:	96aa                	add	a3,a3,a0
   1a522:	97b6                	add	a5,a5,a3
   1a524:	02990bb3          	mul	s7,s2,s1
   1a528:	00a7f363          	bgeu	a5,a0,1a52e <__multf3+0x140>
   1a52c:	9bae                	add	s7,s7,a1
   1a52e:	5ed2                	lw	t4,52(sp)
   1a530:	0107d693          	srli	a3,a5,0x10
   1a534:	8ff9                	and	a5,a5,a4
   1a536:	8e79                	and	a2,a2,a4
   1a538:	07c2                	slli	a5,a5,0x10
   1a53a:	97b2                	add	a5,a5,a2
   1a53c:	010ed293          	srli	t0,t4,0x10
   1a540:	00eefeb3          	and	t4,t4,a4
   1a544:	03d90633          	mul	a2,s2,t4
   1a548:	c83e                	sw	a5,16(sp)
   1a54a:	c8be                	sw	a5,80(sp)
   1a54c:	03128733          	mul	a4,t0,a7
   1a550:	031e87b3          	mul	a5,t4,a7
   1a554:	9732                	add	a4,a4,a2
   1a556:	0107d313          	srli	t1,a5,0x10
   1a55a:	933a                	add	t1,t1,a4
   1a55c:	02590b33          	mul	s6,s2,t0
   1a560:	00c37463          	bgeu	t1,a2,1a568 <__multf3+0x17a>
   1a564:	6741                	lui	a4,0x10
   1a566:	9b3a                	add	s6,s6,a4
   1a568:	5812                	lw	a6,36(sp)
   1a56a:	6741                	lui	a4,0x10
   1a56c:	fff70613          	addi	a2,a4,-1 # ffff <exit-0x95>
   1a570:	01035513          	srli	a0,t1,0x10
   1a574:	00c37333          	and	t1,t1,a2
   1a578:	8ff1                	and	a5,a5,a2
   1a57a:	01085393          	srli	t2,a6,0x10
   1a57e:	0342                	slli	t1,t1,0x10
   1a580:	00c87833          	and	a6,a6,a2
   1a584:	933e                	add	t1,t1,a5
   1a586:	03e38fb3          	mul	t6,t2,t5
   1a58a:	969a                	add	a3,a3,t1
   1a58c:	03e807b3          	mul	a5,a6,t5
   1a590:	03048e33          	mul	t3,s1,a6
   1a594:	0107d613          	srli	a2,a5,0x10
   1a598:	9e7e                	add	t3,t3,t6
   1a59a:	9672                	add	a2,a2,t3
   1a59c:	027485b3          	mul	a1,s1,t2
   1a5a0:	01f67363          	bgeu	a2,t6,1a5a6 <__multf3+0x1b8>
   1a5a4:	95ba                	add	a1,a1,a4
   1a5a6:	01065a93          	srli	s5,a2,0x10
   1a5aa:	6741                	lui	a4,0x10
   1a5ac:	9aae                	add	s5,s5,a1
   1a5ae:	fff70593          	addi	a1,a4,-1 # ffff <exit-0x95>
   1a5b2:	8fed                	and	a5,a5,a1
   1a5b4:	8e6d                	and	a2,a2,a1
   1a5b6:	0642                	slli	a2,a2,0x10
   1a5b8:	030e85b3          	mul	a1,t4,a6
   1a5bc:	963e                	add	a2,a2,a5
   1a5be:	03d38fb3          	mul	t6,t2,t4
   1a5c2:	0105d793          	srli	a5,a1,0x10
   1a5c6:	03028e33          	mul	t3,t0,a6
   1a5ca:	9e7e                	add	t3,t3,t6
   1a5cc:	97f2                	add	a5,a5,t3
   1a5ce:	027289b3          	mul	s3,t0,t2
   1a5d2:	01f7f363          	bgeu	a5,t6,1a5d8 <__multf3+0x1ea>
   1a5d6:	99ba                	add	s3,s3,a4
   1a5d8:	0107d713          	srli	a4,a5,0x10
   1a5dc:	974e                	add	a4,a4,s3
   1a5de:	6a41                	lui	s4,0x10
   1a5e0:	ca3a                	sw	a4,20(sp)
   1a5e2:	fffa0713          	addi	a4,s4,-1 # ffff <exit-0x95>
   1a5e6:	5e62                	lw	t3,56(sp)
   1a5e8:	8ff9                	and	a5,a5,a4
   1a5ea:	8df9                	and	a1,a1,a4
   1a5ec:	07c2                	slli	a5,a5,0x10
   1a5ee:	97ae                	add	a5,a5,a1
   1a5f0:	cc3e                	sw	a5,24(sp)
   1a5f2:	010e5793          	srli	a5,t3,0x10
   1a5f6:	00ee7e33          	and	t3,t3,a4
   1a5fa:	031e05b3          	mul	a1,t3,a7
   1a5fe:	03c90c33          	mul	s8,s2,t3
   1a602:	0105d713          	srli	a4,a1,0x10
   1a606:	031789b3          	mul	s3,a5,a7
   1a60a:	99e2                	add	s3,s3,s8
   1a60c:	974e                	add	a4,a4,s3
   1a60e:	02f90fb3          	mul	t6,s2,a5
   1a612:	01877363          	bgeu	a4,s8,1a618 <__multf3+0x22a>
   1a616:	9fd2                	add	t6,t6,s4
   1a618:	01075993          	srli	s3,a4,0x10
   1a61c:	6cc1                	lui	s9,0x10
   1a61e:	9fce                	add	t6,t6,s3
   1a620:	fffc8993          	addi	s3,s9,-1 # ffff <exit-0x95>
   1a624:	01377733          	and	a4,a4,s3
   1a628:	0135f5b3          	and	a1,a1,s3
   1a62c:	0742                	slli	a4,a4,0x10
   1a62e:	972e                	add	a4,a4,a1
   1a630:	55a2                	lw	a1,40(sp)
   1a632:	ce7e                	sw	t6,28(sp)
   1a634:	0105df93          	srli	t6,a1,0x10
   1a638:	0135f5b3          	and	a1,a1,s3
   1a63c:	03e58a33          	mul	s4,a1,t5
   1a640:	03ef8d33          	mul	s10,t6,t5
   1a644:	010a5d93          	srli	s11,s4,0x10
   1a648:	02b489b3          	mul	s3,s1,a1
   1a64c:	99ea                	add	s3,s3,s10
   1a64e:	99ee                	add	s3,s3,s11
   1a650:	03f48c33          	mul	s8,s1,t6
   1a654:	01a9f363          	bgeu	s3,s10,1a65a <__multf3+0x26c>
   1a658:	9c66                	add	s8,s8,s9
   1a65a:	96de                	add	a3,a3,s7
   1a65c:	0066b333          	sltu	t1,a3,t1
   1a660:	0109dd13          	srli	s10,s3,0x10
   1a664:	951a                	add	a0,a0,t1
   1a666:	6cc1                	lui	s9,0x10
   1a668:	955a                	add	a0,a0,s6
   1a66a:	9d62                	add	s10,s10,s8
   1a66c:	9636                	add	a2,a2,a3
   1a66e:	fffc8c13          	addi	s8,s9,-1 # ffff <exit-0x95>
   1a672:	9aaa                	add	s5,s5,a0
   1a674:	0189f9b3          	and	s3,s3,s8
   1a678:	00d636b3          	sltu	a3,a2,a3
   1a67c:	96d6                	add	a3,a3,s5
   1a67e:	09c2                	slli	s3,s3,0x10
   1a680:	018a7a33          	and	s4,s4,s8
   1a684:	9a4e                	add	s4,s4,s3
   1a686:	00aab9b3          	sltu	s3,s5,a0
   1a68a:	0156bab3          	sltu	s5,a3,s5
   1a68e:	0159e9b3          	or	s3,s3,s5
   1a692:	00653533          	sltu	a0,a0,t1
   1a696:	954e                	add	a0,a0,s3
   1a698:	4362                	lw	t1,24(sp)
   1a69a:	49d2                	lw	s3,20(sp)
   1a69c:	cab2                	sw	a2,84(sp)
   1a69e:	9336                	add	t1,t1,a3
   1a6a0:	01350ab3          	add	s5,a0,s3
   1a6a4:	49f2                	lw	s3,28(sp)
   1a6a6:	00d336b3          	sltu	a3,t1,a3
   1a6aa:	96d6                	add	a3,a3,s5
   1a6ac:	971a                	add	a4,a4,t1
   1a6ae:	01368b33          	add	s6,a3,s3
   1a6b2:	00673333          	sltu	t1,a4,t1
   1a6b6:	935a                	add	t1,t1,s6
   1a6b8:	9a3a                	add	s4,s4,a4
   1a6ba:	9d1a                	add	s10,s10,t1
   1a6bc:	00ea3733          	sltu	a4,s4,a4
   1a6c0:	00aab533          	sltu	a0,s5,a0
   1a6c4:	976a                	add	a4,a4,s10
   1a6c6:	0156bab3          	sltu	s5,a3,s5
   1a6ca:	00db36b3          	sltu	a3,s6,a3
   1a6ce:	01633b33          	sltu	s6,t1,s6
   1a6d2:	0166e6b3          	or	a3,a3,s6
   1a6d6:	006d39b3          	sltu	s3,s10,t1
   1a6da:	01556ab3          	or	s5,a0,s5
   1a6de:	01a73d33          	sltu	s10,a4,s10
   1a6e2:	9ab6                	add	s5,s5,a3
   1a6e4:	01a9e9b3          	or	s3,s3,s10
   1a6e8:	99d6                	add	s3,s3,s5
   1a6ea:	5af2                	lw	s5,60(sp)
   1a6ec:	ccd2                	sw	s4,88(sp)
   1a6ee:	010adb13          	srli	s6,s5,0x10
   1a6f2:	018afab3          	and	s5,s5,s8
   1a6f6:	031a86b3          	mul	a3,s5,a7
   1a6fa:	03590533          	mul	a0,s2,s5
   1a6fe:	031b08b3          	mul	a7,s6,a7
   1a702:	00a88333          	add	t1,a7,a0
   1a706:	0106d893          	srli	a7,a3,0x10
   1a70a:	989a                	add	a7,a7,t1
   1a70c:	03690933          	mul	s2,s2,s6
   1a710:	00a8f363          	bgeu	a7,a0,1a716 <__multf3+0x328>
   1a714:	9966                	add	s2,s2,s9
   1a716:	5bb2                	lw	s7,44(sp)
   1a718:	0108d513          	srli	a0,a7,0x10
   1a71c:	954a                	add	a0,a0,s2
   1a71e:	6c41                	lui	s8,0x10
   1a720:	ca2a                	sw	a0,20(sp)
   1a722:	fffc0513          	addi	a0,s8,-1 # ffff <exit-0x95>
   1a726:	010bd913          	srli	s2,s7,0x10
   1a72a:	00abfbb3          	and	s7,s7,a0
   1a72e:	8ee9                	and	a3,a3,a0
   1a730:	00a8f8b3          	and	a7,a7,a0
   1a734:	03248333          	mul	t1,s1,s2
   1a738:	08c2                	slli	a7,a7,0x10
   1a73a:	98b6                	add	a7,a7,a3
   1a73c:	03eb8533          	mul	a0,s7,t5
   1a740:	037484b3          	mul	s1,s1,s7
   1a744:	01055693          	srli	a3,a0,0x10
   1a748:	03e90f33          	mul	t5,s2,t5
   1a74c:	94fa                	add	s1,s1,t5
   1a74e:	96a6                	add	a3,a3,s1
   1a750:	01e6f363          	bgeu	a3,t5,1a756 <__multf3+0x368>
   1a754:	9362                	add	t1,t1,s8
   1a756:	0106df13          	srli	t5,a3,0x10
   1a75a:	6cc1                	lui	s9,0x10
   1a75c:	006f04b3          	add	s1,t5,t1
   1a760:	fffc8313          	addi	t1,s9,-1 # ffff <exit-0x95>
   1a764:	00657533          	and	a0,a0,t1
   1a768:	0066f6b3          	and	a3,a3,t1
   1a76c:	03c38f33          	mul	t5,t2,t3
   1a770:	cc26                	sw	s1,24(sp)
   1a772:	06c2                	slli	a3,a3,0x10
   1a774:	96aa                	add	a3,a3,a0
   1a776:	03c80333          	mul	t1,a6,t3
   1a77a:	030784b3          	mul	s1,a5,a6
   1a77e:	01035513          	srli	a0,t1,0x10
   1a782:	94fa                	add	s1,s1,t5
   1a784:	9526                	add	a0,a0,s1
   1a786:	02f38c33          	mul	s8,t2,a5
   1a78a:	01e57363          	bgeu	a0,t5,1a790 <__multf3+0x3a2>
   1a78e:	9c66                	add	s8,s8,s9
   1a790:	6d41                	lui	s10,0x10
   1a792:	fffd0f13          	addi	t5,s10,-1 # ffff <exit-0x95>
   1a796:	01055493          	srli	s1,a0,0x10
   1a79a:	01e57533          	and	a0,a0,t5
   1a79e:	01e37333          	and	t1,t1,t5
   1a7a2:	0542                	slli	a0,a0,0x10
   1a7a4:	94e2                	add	s1,s1,s8
   1a7a6:	02b28f33          	mul	t5,t0,a1
   1a7aa:	951a                	add	a0,a0,t1
   1a7ac:	03df8c33          	mul	s8,t6,t4
   1a7b0:	02be8333          	mul	t1,t4,a1
   1a7b4:	9f62                	add	t5,t5,s8
   1a7b6:	01035d93          	srli	s11,t1,0x10
   1a7ba:	9f6e                	add	t5,t5,s11
   1a7bc:	03f28cb3          	mul	s9,t0,t6
   1a7c0:	018f7363          	bgeu	t5,s8,1a7c6 <__multf3+0x3d8>
   1a7c4:	9cea                	add	s9,s9,s10
   1a7c6:	010f5c13          	srli	s8,t5,0x10
   1a7ca:	9c66                	add	s8,s8,s9
   1a7cc:	6cc1                	lui	s9,0x10
   1a7ce:	fffc8d13          	addi	s10,s9,-1 # ffff <exit-0x95>
   1a7d2:	01af7f33          	and	t5,t5,s10
   1a7d6:	0f42                	slli	t5,t5,0x10
   1a7d8:	01a37333          	and	t1,t1,s10
   1a7dc:	937a                	add	t1,t1,t5
   1a7de:	4f52                	lw	t5,20(sp)
   1a7e0:	98ba                	add	a7,a7,a4
   1a7e2:	4d62                	lw	s10,24(sp)
   1a7e4:	9f4e                	add	t5,t5,s3
   1a7e6:	00e8b733          	sltu	a4,a7,a4
   1a7ea:	977a                	add	a4,a4,t5
   1a7ec:	96c6                	add	a3,a3,a7
   1a7ee:	9d3a                	add	s10,s10,a4
   1a7f0:	0116b8b3          	sltu	a7,a3,a7
   1a7f4:	98ea                	add	a7,a7,s10
   1a7f6:	9536                	add	a0,a0,a3
   1a7f8:	94c6                	add	s1,s1,a7
   1a7fa:	00d536b3          	sltu	a3,a0,a3
   1a7fe:	96a6                	add	a3,a3,s1
   1a800:	013f39b3          	sltu	s3,t5,s3
   1a804:	01e73f33          	sltu	t5,a4,t5
   1a808:	00ed3733          	sltu	a4,s10,a4
   1a80c:	01a8bd33          	sltu	s10,a7,s10
   1a810:	01e9ef33          	or	t5,s3,t5
   1a814:	0114b8b3          	sltu	a7,s1,a7
   1a818:	01a76733          	or	a4,a4,s10
   1a81c:	0096b4b3          	sltu	s1,a3,s1
   1a820:	9c36                	add	s8,s8,a3
   1a822:	977a                	add	a4,a4,t5
   1a824:	0098e8b3          	or	a7,a7,s1
   1a828:	00e884b3          	add	s1,a7,a4
   1a82c:	03cf8f33          	mul	t5,t6,t3
   1a830:	00dc38b3          	sltu	a7,s8,a3
   1a834:	932a                	add	t1,t1,a0
   1a836:	00a33533          	sltu	a0,t1,a0
   1a83a:	9562                	add	a0,a0,s8
   1a83c:	01853c33          	sltu	s8,a0,s8
   1a840:	0188e8b3          	or	a7,a7,s8
   1a844:	ce9a                	sw	t1,92(sp)
   1a846:	98a6                	add	a7,a7,s1
   1a848:	02be06b3          	mul	a3,t3,a1
   1a84c:	02b789b3          	mul	s3,a5,a1
   1a850:	0106d713          	srli	a4,a3,0x10
   1a854:	99fa                	add	s3,s3,t5
   1a856:	974e                	add	a4,a4,s3
   1a858:	03f784b3          	mul	s1,a5,t6
   1a85c:	01e77363          	bgeu	a4,t5,1a862 <__multf3+0x474>
   1a860:	94e6                	add	s1,s1,s9
   1a862:	01075f13          	srli	t5,a4,0x10
   1a866:	9f26                	add	t5,t5,s1
   1a868:	64c1                	lui	s1,0x10
   1a86a:	fff48993          	addi	s3,s1,-1 # ffff <exit-0x95>
   1a86e:	01377733          	and	a4,a4,s3
   1a872:	0136f6b3          	and	a3,a3,s3
   1a876:	0742                	slli	a4,a4,0x10
   1a878:	035389b3          	mul	s3,t2,s5
   1a87c:	9736                	add	a4,a4,a3
   1a87e:	030a86b3          	mul	a3,s5,a6
   1a882:	030b0833          	mul	a6,s6,a6
   1a886:	01380c33          	add	s8,a6,s3
   1a88a:	0106d813          	srli	a6,a3,0x10
   1a88e:	9862                	add	a6,a6,s8
   1a890:	036383b3          	mul	t2,t2,s6
   1a894:	01387363          	bgeu	a6,s3,1a89a <__multf3+0x4ac>
   1a898:	93a6                	add	t2,t2,s1
   1a89a:	01085493          	srli	s1,a6,0x10
   1a89e:	6c41                	lui	s8,0x10
   1a8a0:	93a6                	add	t2,t2,s1
   1a8a2:	fffc0493          	addi	s1,s8,-1 # ffff <exit-0x95>
   1a8a6:	8ee5                	and	a3,a3,s1
   1a8a8:	00987833          	and	a6,a6,s1
   1a8ac:	0842                	slli	a6,a6,0x10
   1a8ae:	03db89b3          	mul	s3,s7,t4
   1a8b2:	9836                	add	a6,a6,a3
   1a8b4:	03d90eb3          	mul	t4,s2,t4
   1a8b8:	0109d693          	srli	a3,s3,0x10
   1a8bc:	032284b3          	mul	s1,t0,s2
   1a8c0:	037282b3          	mul	t0,t0,s7
   1a8c4:	92f6                	add	t0,t0,t4
   1a8c6:	9696                	add	a3,a3,t0
   1a8c8:	01d6f363          	bgeu	a3,t4,1a8ce <__multf3+0x4e0>
   1a8cc:	94e2                	add	s1,s1,s8
   1a8ce:	0106de93          	srli	t4,a3,0x10
   1a8d2:	9ea6                	add	t4,t4,s1
   1a8d4:	64c1                	lui	s1,0x10
   1a8d6:	fff48293          	addi	t0,s1,-1 # ffff <exit-0x95>
   1a8da:	0056f6b3          	and	a3,a3,t0
   1a8de:	0059f9b3          	and	s3,s3,t0
   1a8e2:	06c2                	slli	a3,a3,0x10
   1a8e4:	02ba82b3          	mul	t0,s5,a1
   1a8e8:	96ce                	add	a3,a3,s3
   1a8ea:	02bb05b3          	mul	a1,s6,a1
   1a8ee:	035f89b3          	mul	s3,t6,s5
   1a8f2:	01358c33          	add	s8,a1,s3
   1a8f6:	0102d593          	srli	a1,t0,0x10
   1a8fa:	95e2                	add	a1,a1,s8
   1a8fc:	036f8fb3          	mul	t6,t6,s6
   1a900:	0135f363          	bgeu	a1,s3,1a906 <__multf3+0x518>
   1a904:	9fa6                	add	t6,t6,s1
   1a906:	0105d493          	srli	s1,a1,0x10
   1a90a:	9fa6                	add	t6,t6,s1
   1a90c:	64c1                	lui	s1,0x10
   1a90e:	fff48993          	addi	s3,s1,-1 # ffff <exit-0x95>
   1a912:	0135f5b3          	and	a1,a1,s3
   1a916:	0132f2b3          	and	t0,t0,s3
   1a91a:	05c2                	slli	a1,a1,0x10
   1a91c:	032789b3          	mul	s3,a5,s2
   1a920:	9596                	add	a1,a1,t0
   1a922:	037787b3          	mul	a5,a5,s7
   1a926:	03cb82b3          	mul	t0,s7,t3
   1a92a:	03c90e33          	mul	t3,s2,t3
   1a92e:	0102dc13          	srli	s8,t0,0x10
   1a932:	97f2                	add	a5,a5,t3
   1a934:	97e2                	add	a5,a5,s8
   1a936:	01c7f363          	bgeu	a5,t3,1a93c <__multf3+0x54e>
   1a93a:	99a6                	add	s3,s3,s1
   1a93c:	972a                	add	a4,a4,a0
   1a93e:	983a                	add	a6,a6,a4
   1a940:	9f46                	add	t5,t5,a7
   1a942:	00a73533          	sltu	a0,a4,a0
   1a946:	957a                	add	a0,a0,t5
   1a948:	96c2                	add	a3,a3,a6
   1a94a:	93aa                	add	t2,t2,a0
   1a94c:	00e83733          	sltu	a4,a6,a4
   1a950:	d0b6                	sw	a3,96(sp)
   1a952:	0106b6b3          	sltu	a3,a3,a6
   1a956:	037a8833          	mul	a6,s5,s7
   1a95a:	971e                	add	a4,a4,t2
   1a95c:	9eba                	add	t4,t4,a4
   1a95e:	96f6                	add	a3,a3,t4
   1a960:	0107de13          	srli	t3,a5,0x10
   1a964:	011f38b3          	sltu	a7,t5,a7
   1a968:	64c1                	lui	s1,0x10
   1a96a:	01e53f33          	sltu	t5,a0,t5
   1a96e:	00a3b533          	sltu	a0,t2,a0
   1a972:	007733b3          	sltu	t2,a4,t2
   1a976:	03590ab3          	mul	s5,s2,s5
   1a97a:	9e4e                	add	t3,t3,s3
   1a97c:	00756533          	or	a0,a0,t2
   1a980:	fff48993          	addi	s3,s1,-1 # ffff <exit-0x95>
   1a984:	00eeb733          	sltu	a4,t4,a4
   1a988:	01e8e8b3          	or	a7,a7,t5
   1a98c:	01d6beb3          	sltu	t4,a3,t4
   1a990:	98aa                	add	a7,a7,a0
   1a992:	0137f7b3          	and	a5,a5,s3
   1a996:	01d76733          	or	a4,a4,t4
   1a99a:	032b0933          	mul	s2,s6,s2
   1a99e:	95b6                	add	a1,a1,a3
   1a9a0:	9746                	add	a4,a4,a7
   1a9a2:	07c2                	slli	a5,a5,0x10
   1a9a4:	0132f2b3          	and	t0,t0,s3
   1a9a8:	9fba                	add	t6,t6,a4
   1a9aa:	9796                	add	a5,a5,t0
   1a9ac:	00d5b6b3          	sltu	a3,a1,a3
   1a9b0:	96fe                	add	a3,a3,t6
   1a9b2:	97ae                	add	a5,a5,a1
   1a9b4:	037b0b33          	mul	s6,s6,s7
   1a9b8:	00efb733          	sltu	a4,t6,a4
   1a9bc:	9e36                	add	t3,t3,a3
   1a9be:	01f6bfb3          	sltu	t6,a3,t6
   1a9c2:	d2be                	sw	a5,100(sp)
   1a9c4:	00b7b7b3          	sltu	a5,a5,a1
   1a9c8:	01f76533          	or	a0,a4,t6
   1a9cc:	97f2                	add	a5,a5,t3
   1a9ce:	01085713          	srli	a4,a6,0x10
   1a9d2:	00de36b3          	sltu	a3,t3,a3
   1a9d6:	9b56                	add	s6,s6,s5
   1a9d8:	01c7be33          	sltu	t3,a5,t3
   1a9dc:	975a                	add	a4,a4,s6
   1a9de:	01c6e6b3          	or	a3,a3,t3
   1a9e2:	01577363          	bgeu	a4,s5,1a9e8 <__multf3+0x5fa>
   1a9e6:	9926                	add	s2,s2,s1
   1a9e8:	01075593          	srli	a1,a4,0x10
   1a9ec:	95aa                	add	a1,a1,a0
   1a9ee:	6541                	lui	a0,0x10
   1a9f0:	157d                	addi	a0,a0,-1 # ffff <exit-0x95>
   1a9f2:	8f69                	and	a4,a4,a0
   1a9f4:	0742                	slli	a4,a4,0x10
   1a9f6:	00a87833          	and	a6,a6,a0
   1a9fa:	9742                	add	a4,a4,a6
   1a9fc:	973e                	add	a4,a4,a5
   1a9fe:	96ae                	add	a3,a3,a1
   1aa00:	00f737b3          	sltu	a5,a4,a5
   1aa04:	97b6                	add	a5,a5,a3
   1aa06:	97ca                	add	a5,a5,s2
   1aa08:	d6be                	sw	a5,108(sp)
   1aa0a:	47c2                	lw	a5,16(sp)
   1aa0c:	0336                	slli	t1,t1,0xd
   1aa0e:	d4ba                	sw	a4,104(sp)
   1aa10:	8fd1                	or	a5,a5,a2
   1aa12:	0147e7b3          	or	a5,a5,s4
   1aa16:	00f36333          	or	t1,t1,a5
   1aa1a:	1090                	addi	a2,sp,96
   1aa1c:	089c                	addi	a5,sp,80
   1aa1e:	47d8                	lw	a4,12(a5)
   1aa20:	4b94                	lw	a3,16(a5)
   1aa22:	834d                	srli	a4,a4,0x13
   1aa24:	06b6                	slli	a3,a3,0xd
   1aa26:	8f55                	or	a4,a4,a3
   1aa28:	c398                	sw	a4,0(a5)
   1aa2a:	0791                	addi	a5,a5,4
   1aa2c:	fef619e3          	bne	a2,a5,1aa1e <__multf3+0x630>
   1aa30:	47c6                	lw	a5,80(sp)
   1aa32:	00603333          	snez	t1,t1
   1aa36:	4776                	lw	a4,92(sp)
   1aa38:	00f36333          	or	t1,t1,a5
   1aa3c:	47e6                	lw	a5,88(sp)
   1aa3e:	c6ba                	sw	a4,76(sp)
   1aa40:	c09a                	sw	t1,64(sp)
   1aa42:	c4be                	sw	a5,72(sp)
   1aa44:	47d6                	lw	a5,84(sp)
   1aa46:	c2be                	sw	a5,68(sp)
   1aa48:	00b71793          	slli	a5,a4,0xb
   1aa4c:	0207d863          	bgez	a5,1aa7c <__multf3+0x68e>
   1aa50:	037e                	slli	t1,t1,0x1f
   1aa52:	009c                	addi	a5,sp,64
   1aa54:	00ec                	addi	a1,sp,76
   1aa56:	4394                	lw	a3,0(a5)
   1aa58:	43d0                	lw	a2,4(a5)
   1aa5a:	8285                	srli	a3,a3,0x1
   1aa5c:	067e                	slli	a2,a2,0x1f
   1aa5e:	8ed1                	or	a3,a3,a2
   1aa60:	c394                	sw	a3,0(a5)
   1aa62:	0791                	addi	a5,a5,4
   1aa64:	fef599e3          	bne	a1,a5,1aa56 <__multf3+0x668>
   1aa68:	4786                	lw	a5,64(sp)
   1aa6a:	00603333          	snez	t1,t1
   1aa6e:	8305                	srli	a4,a4,0x1
   1aa70:	0067e7b3          	or	a5,a5,t1
   1aa74:	c0be                	sw	a5,64(sp)
   1aa76:	47a2                	lw	a5,8(sp)
   1aa78:	c6ba                	sw	a4,76(sp)
   1aa7a:	c63e                	sw	a5,12(sp)
   1aa7c:	47b2                	lw	a5,12(sp)
   1aa7e:	c43e                	sw	a5,8(sp)
   1aa80:	ac61                	j	1ad18 <__multf3+0x92a>
   1aa82:	00a7e633          	or	a2,a5,a0
   1aa86:	8e55                	or	a2,a2,a3
   1aa88:	8e59                	or	a2,a2,a4
   1aa8a:	10060063          	beqz	a2,1ab8a <__multf3+0x79c>
   1aa8e:	cf35                	beqz	a4,1ab0a <__multf3+0x71c>
   1aa90:	853a                	mv	a0,a4
   1aa92:	ffff7097          	auipc	ra,0xffff7
   1aa96:	922080e7          	jalr	-1758(ra) # 113b4 <__clzsi2>
   1aa9a:	ff450713          	addi	a4,a0,-12
   1aa9e:	40575593          	srai	a1,a4,0x5
   1aaa2:	8b7d                	andi	a4,a4,31
   1aaa4:	cf41                	beqz	a4,1ab3c <__multf3+0x74e>
   1aaa6:	56f1                	li	a3,-4
   1aaa8:	02d586b3          	mul	a3,a1,a3
   1aaac:	02000813          	li	a6,32
   1aab0:	02010313          	addi	t1,sp,32
   1aab4:	40e80833          	sub	a6,a6,a4
   1aab8:	00c68793          	addi	a5,a3,12 # 1000c <exit-0x88>
   1aabc:	979a                	add	a5,a5,t1
   1aabe:	40d006b3          	neg	a3,a3
   1aac2:	08f31d63          	bne	t1,a5,1ab5c <__multf3+0x76e>
   1aac6:	fff58793          	addi	a5,a1,-1
   1aaca:	058a                	slli	a1,a1,0x2
   1aacc:	05058693          	addi	a3,a1,80
   1aad0:	1010                	addi	a2,sp,32
   1aad2:	00c685b3          	add	a1,a3,a2
   1aad6:	5682                	lw	a3,32(sp)
   1aad8:	00e69733          	sll	a4,a3,a4
   1aadc:	fae5a823          	sw	a4,-80(a1)
   1aae0:	0785                	addi	a5,a5,1
   1aae2:	078a                	slli	a5,a5,0x2
   1aae4:	46a1                	li	a3,8
   1aae6:	1018                	addi	a4,sp,32
   1aae8:	00d7e863          	bltu	a5,a3,1aaf8 <__multf3+0x70a>
   1aaec:	00072023          	sw	zero,0(a4)
   1aaf0:	00072223          	sw	zero,4(a4)
   1aaf4:	17e1                	addi	a5,a5,-8
   1aaf6:	1038                	addi	a4,sp,40
   1aaf8:	4691                	li	a3,4
   1aafa:	00d7e463          	bltu	a5,a3,1ab02 <__multf3+0x714>
   1aafe:	00072023          	sw	zero,0(a4)
   1ab02:	74f1                	lui	s1,0xffffc
   1ab04:	04c5                	addi	s1,s1,17 # ffffc011 <__BSS_END__+0xfffdd5b5>
   1ab06:	8c89                	sub	s1,s1,a0
   1ab08:	ba85                	j	1a478 <__multf3+0x8a>
   1ab0a:	ca89                	beqz	a3,1ab1c <__multf3+0x72e>
   1ab0c:	8536                	mv	a0,a3
   1ab0e:	ffff7097          	auipc	ra,0xffff7
   1ab12:	8a6080e7          	jalr	-1882(ra) # 113b4 <__clzsi2>
   1ab16:	02050513          	addi	a0,a0,32
   1ab1a:	b741                	j	1aa9a <__multf3+0x6ac>
   1ab1c:	c901                	beqz	a0,1ab2c <__multf3+0x73e>
   1ab1e:	ffff7097          	auipc	ra,0xffff7
   1ab22:	896080e7          	jalr	-1898(ra) # 113b4 <__clzsi2>
   1ab26:	04050513          	addi	a0,a0,64
   1ab2a:	bf85                	j	1aa9a <__multf3+0x6ac>
   1ab2c:	853e                	mv	a0,a5
   1ab2e:	ffff7097          	auipc	ra,0xffff7
   1ab32:	886080e7          	jalr	-1914(ra) # 113b4 <__clzsi2>
   1ab36:	06050513          	addi	a0,a0,96
   1ab3a:	b785                	j	1aa9a <__multf3+0x6ac>
   1ab3c:	56f1                	li	a3,-4
   1ab3e:	02d586b3          	mul	a3,a1,a3
   1ab42:	107c                	addi	a5,sp,44
   1ab44:	470d                	li	a4,3
   1ab46:	00d78633          	add	a2,a5,a3
   1ab4a:	4210                	lw	a2,0(a2)
   1ab4c:	177d                	addi	a4,a4,-1
   1ab4e:	17f1                	addi	a5,a5,-4
   1ab50:	c3d0                	sw	a2,4(a5)
   1ab52:	feb75ae3          	bge	a4,a1,1ab46 <__multf3+0x758>
   1ab56:	fff58793          	addi	a5,a1,-1
   1ab5a:	b759                	j	1aae0 <__multf3+0x6f2>
   1ab5c:	4390                	lw	a2,0(a5)
   1ab5e:	ffc7a883          	lw	a7,-4(a5)
   1ab62:	00d78e33          	add	t3,a5,a3
   1ab66:	00e61633          	sll	a2,a2,a4
   1ab6a:	0108d8b3          	srl	a7,a7,a6
   1ab6e:	01166633          	or	a2,a2,a7
   1ab72:	00ce2023          	sw	a2,0(t3)
   1ab76:	17f1                	addi	a5,a5,-4
   1ab78:	b7a9                	j	1aac2 <__multf3+0x6d4>
   1ab7a:	8fc9                	or	a5,a5,a0
   1ab7c:	8fd5                	or	a5,a5,a3
   1ab7e:	8fd9                	or	a5,a5,a4
   1ab80:	4b89                	li	s7,2
   1ab82:	8e078ce3          	beqz	a5,1a47a <__multf3+0x8c>
   1ab86:	4b8d                	li	s7,3
   1ab88:	b8cd                	j	1a47a <__multf3+0x8c>
   1ab8a:	4481                	li	s1,0
   1ab8c:	4b85                	li	s7,1
   1ab8e:	b0f5                	j	1a47a <__multf3+0x8c>
   1ab90:	016967b3          	or	a5,s2,s6
   1ab94:	0157e7b3          	or	a5,a5,s5
   1ab98:	8fc9                	or	a5,a5,a0
   1ab9a:	10078563          	beqz	a5,1aca4 <__multf3+0x8b6>
   1ab9e:	cd2d                	beqz	a0,1ac18 <__multf3+0x82a>
   1aba0:	ffff7097          	auipc	ra,0xffff7
   1aba4:	814080e7          	jalr	-2028(ra) # 113b4 <__clzsi2>
   1aba8:	ff450693          	addi	a3,a0,-12
   1abac:	4056d793          	srai	a5,a3,0x5
   1abb0:	8afd                	andi	a3,a3,31
   1abb2:	ced9                	beqz	a3,1ac50 <__multf3+0x862>
   1abb4:	5671                	li	a2,-4
   1abb6:	02c78633          	mul	a2,a5,a2
   1abba:	02000813          	li	a6,32
   1abbe:	03010313          	addi	t1,sp,48
   1abc2:	40d80833          	sub	a6,a6,a3
   1abc6:	00c60713          	addi	a4,a2,12
   1abca:	971a                	add	a4,a4,t1
   1abcc:	40c00633          	neg	a2,a2
   1abd0:	0ae31063          	bne	t1,a4,1ac70 <__multf3+0x882>
   1abd4:	fff78713          	addi	a4,a5,-1
   1abd8:	078a                	slli	a5,a5,0x2
   1abda:	1010                	addi	a2,sp,32
   1abdc:	05078793          	addi	a5,a5,80
   1abe0:	97b2                	add	a5,a5,a2
   1abe2:	5642                	lw	a2,48(sp)
   1abe4:	00d616b3          	sll	a3,a2,a3
   1abe8:	fcd7a023          	sw	a3,-64(a5)
   1abec:	00170793          	addi	a5,a4,1
   1abf0:	078a                	slli	a5,a5,0x2
   1abf2:	46a1                	li	a3,8
   1abf4:	1818                	addi	a4,sp,48
   1abf6:	00d7e863          	bltu	a5,a3,1ac06 <__multf3+0x818>
   1abfa:	00072023          	sw	zero,0(a4)
   1abfe:	00072223          	sw	zero,4(a4)
   1ac02:	17e1                	addi	a5,a5,-8
   1ac04:	1838                	addi	a4,sp,56
   1ac06:	4691                	li	a3,4
   1ac08:	00d7e463          	bltu	a5,a3,1ac10 <__multf3+0x822>
   1ac0c:	00072023          	sw	zero,0(a4)
   1ac10:	77f1                	lui	a5,0xffffc
   1ac12:	07c5                	addi	a5,a5,17 # ffffc011 <__BSS_END__+0xfffdd5b5>
   1ac14:	8f89                	sub	a5,a5,a0
   1ac16:	b85d                	j	1a4cc <__multf3+0xde>
   1ac18:	000a8a63          	beqz	s5,1ac2c <__multf3+0x83e>
   1ac1c:	8556                	mv	a0,s5
   1ac1e:	ffff6097          	auipc	ra,0xffff6
   1ac22:	796080e7          	jalr	1942(ra) # 113b4 <__clzsi2>
   1ac26:	02050513          	addi	a0,a0,32
   1ac2a:	bfbd                	j	1aba8 <__multf3+0x7ba>
   1ac2c:	000b0a63          	beqz	s6,1ac40 <__multf3+0x852>
   1ac30:	855a                	mv	a0,s6
   1ac32:	ffff6097          	auipc	ra,0xffff6
   1ac36:	782080e7          	jalr	1922(ra) # 113b4 <__clzsi2>
   1ac3a:	04050513          	addi	a0,a0,64
   1ac3e:	b7ad                	j	1aba8 <__multf3+0x7ba>
   1ac40:	854a                	mv	a0,s2
   1ac42:	ffff6097          	auipc	ra,0xffff6
   1ac46:	772080e7          	jalr	1906(ra) # 113b4 <__clzsi2>
   1ac4a:	06050513          	addi	a0,a0,96
   1ac4e:	bfa9                	j	1aba8 <__multf3+0x7ba>
   1ac50:	5671                	li	a2,-4
   1ac52:	02c78633          	mul	a2,a5,a2
   1ac56:	1878                	addi	a4,sp,60
   1ac58:	468d                	li	a3,3
   1ac5a:	00c705b3          	add	a1,a4,a2
   1ac5e:	418c                	lw	a1,0(a1)
   1ac60:	16fd                	addi	a3,a3,-1
   1ac62:	1771                	addi	a4,a4,-4
   1ac64:	c34c                	sw	a1,4(a4)
   1ac66:	fef6dae3          	bge	a3,a5,1ac5a <__multf3+0x86c>
   1ac6a:	fff78713          	addi	a4,a5,-1
   1ac6e:	bfbd                	j	1abec <__multf3+0x7fe>
   1ac70:	430c                	lw	a1,0(a4)
   1ac72:	ffc72883          	lw	a7,-4(a4)
   1ac76:	00c70e33          	add	t3,a4,a2
   1ac7a:	00d595b3          	sll	a1,a1,a3
   1ac7e:	0108d8b3          	srl	a7,a7,a6
   1ac82:	0115e5b3          	or	a1,a1,a7
   1ac86:	00be2023          	sw	a1,0(t3)
   1ac8a:	1771                	addi	a4,a4,-4
   1ac8c:	b791                	j	1abd0 <__multf3+0x7e2>
   1ac8e:	01696933          	or	s2,s2,s6
   1ac92:	01596933          	or	s2,s2,s5
   1ac96:	00a96933          	or	s2,s2,a0
   1ac9a:	4689                	li	a3,2
   1ac9c:	820909e3          	beqz	s2,1a4ce <__multf3+0xe0>
   1aca0:	468d                	li	a3,3
   1aca2:	b035                	j	1a4ce <__multf3+0xe0>
   1aca4:	4781                	li	a5,0
   1aca6:	4685                	li	a3,1
   1aca8:	b01d                	j	1a4ce <__multf3+0xe0>
   1acaa:	4705                	li	a4,1
   1acac:	00f717b3          	sll	a5,a4,a5
   1acb0:	5307f713          	andi	a4,a5,1328
   1acb4:	e329                	bnez	a4,1acf6 <__multf3+0x908>
   1acb6:	0887f713          	andi	a4,a5,136
   1acba:	e705                	bnez	a4,1ace2 <__multf3+0x8f4>
   1acbc:	2407f793          	andi	a5,a5,576
   1acc0:	82078be3          	beqz	a5,1a4f6 <__multf3+0x108>
   1acc4:	67a1                	lui	a5,0x8
   1acc6:	c6be                	sw	a5,76(sp)
   1acc8:	c482                	sw	zero,72(sp)
   1acca:	c282                	sw	zero,68(sp)
   1accc:	c082                	sw	zero,64(sp)
   1acce:	17fd                	addi	a5,a5,-1 # 7fff <exit-0x8095>
   1acd0:	c202                	sw	zero,4(sp)
   1acd2:	a0d1                	j	1ad96 <__multf3+0x9a8>
   1acd4:	473d                	li	a4,15
   1acd6:	fee787e3          	beq	a5,a4,1acc4 <__multf3+0x8d6>
   1acda:	472d                	li	a4,11
   1acdc:	c252                	sw	s4,4(sp)
   1acde:	00e79c63          	bne	a5,a4,1acf6 <__multf3+0x908>
   1ace2:	c24e                	sw	s3,4(sp)
   1ace4:	57c2                	lw	a5,48(sp)
   1ace6:	8bb6                	mv	s7,a3
   1ace8:	c0be                	sw	a5,64(sp)
   1acea:	57d2                	lw	a5,52(sp)
   1acec:	c2be                	sw	a5,68(sp)
   1acee:	57e2                	lw	a5,56(sp)
   1acf0:	c4be                	sw	a5,72(sp)
   1acf2:	57f2                	lw	a5,60(sp)
   1acf4:	a801                	j	1ad04 <__multf3+0x916>
   1acf6:	5782                	lw	a5,32(sp)
   1acf8:	c0be                	sw	a5,64(sp)
   1acfa:	5792                	lw	a5,36(sp)
   1acfc:	c2be                	sw	a5,68(sp)
   1acfe:	57a2                	lw	a5,40(sp)
   1ad00:	c4be                	sw	a5,72(sp)
   1ad02:	57b2                	lw	a5,44(sp)
   1ad04:	c6be                	sw	a5,76(sp)
   1ad06:	4789                	li	a5,2
   1ad08:	22fb8d63          	beq	s7,a5,1af42 <__multf3+0xb54>
   1ad0c:	478d                	li	a5,3
   1ad0e:	fafb8be3          	beq	s7,a5,1acc4 <__multf3+0x8d6>
   1ad12:	4785                	li	a5,1
   1ad14:	22fb8263          	beq	s7,a5,1af38 <__multf3+0xb4a>
   1ad18:	4722                	lw	a4,8(sp)
   1ad1a:	6791                	lui	a5,0x4
   1ad1c:	17fd                	addi	a5,a5,-1 # 3fff <exit-0xc095>
   1ad1e:	97ba                	add	a5,a5,a4
   1ad20:	0af05b63          	blez	a5,1add6 <__multf3+0x9e8>
   1ad24:	4706                	lw	a4,64(sp)
   1ad26:	00777693          	andi	a3,a4,7
   1ad2a:	c69d                	beqz	a3,1ad58 <__multf3+0x96a>
   1ad2c:	00f77693          	andi	a3,a4,15
   1ad30:	4611                	li	a2,4
   1ad32:	02c68363          	beq	a3,a2,1ad58 <__multf3+0x96a>
   1ad36:	0711                	addi	a4,a4,4
   1ad38:	00473693          	sltiu	a3,a4,4
   1ad3c:	c0ba                	sw	a4,64(sp)
   1ad3e:	4716                	lw	a4,68(sp)
   1ad40:	9736                	add	a4,a4,a3
   1ad42:	c2ba                	sw	a4,68(sp)
   1ad44:	00d73733          	sltu	a4,a4,a3
   1ad48:	46a6                	lw	a3,72(sp)
   1ad4a:	9736                	add	a4,a4,a3
   1ad4c:	c4ba                	sw	a4,72(sp)
   1ad4e:	00d73733          	sltu	a4,a4,a3
   1ad52:	46b6                	lw	a3,76(sp)
   1ad54:	9736                	add	a4,a4,a3
   1ad56:	c6ba                	sw	a4,76(sp)
   1ad58:	4736                	lw	a4,76(sp)
   1ad5a:	00b71693          	slli	a3,a4,0xb
   1ad5e:	0006da63          	bgez	a3,1ad72 <__multf3+0x984>
   1ad62:	fff007b7          	lui	a5,0xfff00
   1ad66:	17fd                	addi	a5,a5,-1 # ffefffff <__BSS_END__+0xffee15a3>
   1ad68:	8f7d                	and	a4,a4,a5
   1ad6a:	c6ba                	sw	a4,76(sp)
   1ad6c:	4722                	lw	a4,8(sp)
   1ad6e:	6791                	lui	a5,0x4
   1ad70:	97ba                	add	a5,a5,a4
   1ad72:	0098                	addi	a4,sp,64
   1ad74:	00ec                	addi	a1,sp,76
   1ad76:	4314                	lw	a3,0(a4)
   1ad78:	4350                	lw	a2,4(a4)
   1ad7a:	828d                	srli	a3,a3,0x3
   1ad7c:	0676                	slli	a2,a2,0x1d
   1ad7e:	8ed1                	or	a3,a3,a2
   1ad80:	c314                	sw	a3,0(a4)
   1ad82:	0711                	addi	a4,a4,4
   1ad84:	fee599e3          	bne	a1,a4,1ad76 <__multf3+0x988>
   1ad88:	66a1                	lui	a3,0x8
   1ad8a:	16f9                	addi	a3,a3,-2 # 7ffe <exit-0x8096>
   1ad8c:	4736                	lw	a4,76(sp)
   1ad8e:	1af6ca63          	blt	a3,a5,1af42 <__multf3+0xb54>
   1ad92:	830d                	srli	a4,a4,0x3
   1ad94:	c6ba                	sw	a4,76(sp)
   1ad96:	4736                	lw	a4,76(sp)
   1ad98:	4586                	lw	a1,64(sp)
   1ad9a:	4616                	lw	a2,68(sp)
   1ad9c:	04e11e23          	sh	a4,92(sp)
   1ada0:	4712                	lw	a4,4(sp)
   1ada2:	46a6                	lw	a3,72(sp)
   1ada4:	50ba                	lw	ra,172(sp)
   1ada6:	073e                	slli	a4,a4,0xf
   1ada8:	8fd9                	or	a5,a5,a4
   1adaa:	04f11f23          	sh	a5,94(sp)
   1adae:	47f6                	lw	a5,92(sp)
   1adb0:	c00c                	sw	a1,0(s0)
   1adb2:	c050                	sw	a2,4(s0)
   1adb4:	c414                	sw	a3,8(s0)
   1adb6:	c45c                	sw	a5,12(s0)
   1adb8:	8522                	mv	a0,s0
   1adba:	542a                	lw	s0,168(sp)
   1adbc:	549a                	lw	s1,164(sp)
   1adbe:	590a                	lw	s2,160(sp)
   1adc0:	49fa                	lw	s3,156(sp)
   1adc2:	4a6a                	lw	s4,152(sp)
   1adc4:	4ada                	lw	s5,148(sp)
   1adc6:	4b4a                	lw	s6,144(sp)
   1adc8:	4bba                	lw	s7,140(sp)
   1adca:	4c2a                	lw	s8,136(sp)
   1adcc:	4c9a                	lw	s9,132(sp)
   1adce:	4d0a                	lw	s10,128(sp)
   1add0:	5df6                	lw	s11,124(sp)
   1add2:	614d                	addi	sp,sp,176
   1add4:	8082                	ret
   1add6:	4685                	li	a3,1
   1add8:	8e9d                	sub	a3,a3,a5
   1adda:	07400793          	li	a5,116
   1adde:	14d7c563          	blt	a5,a3,1af28 <__multf3+0xb3a>
   1ade2:	0090                	addi	a2,sp,64
   1ade4:	4056d713          	srai	a4,a3,0x5
   1ade8:	8532                	mv	a0,a2
   1adea:	8afd                	andi	a3,a3,31
   1adec:	4781                	li	a5,0
   1adee:	4581                	li	a1,0
   1adf0:	02e59663          	bne	a1,a4,1ae1c <__multf3+0xa2e>
   1adf4:	458d                	li	a1,3
   1adf6:	8d99                	sub	a1,a1,a4
   1adf8:	00271513          	slli	a0,a4,0x2
   1adfc:	e69d                	bnez	a3,1ae2a <__multf3+0xa3c>
   1adfe:	8832                	mv	a6,a2
   1ae00:	00a808b3          	add	a7,a6,a0
   1ae04:	0008a883          	lw	a7,0(a7)
   1ae08:	0685                	addi	a3,a3,1
   1ae0a:	0811                	addi	a6,a6,4
   1ae0c:	ff182e23          	sw	a7,-4(a6)
   1ae10:	fed5d8e3          	bge	a1,a3,1ae00 <__multf3+0xa12>
   1ae14:	4691                	li	a3,4
   1ae16:	40e68733          	sub	a4,a3,a4
   1ae1a:	a899                	j	1ae70 <__multf3+0xa82>
   1ae1c:	00052803          	lw	a6,0(a0)
   1ae20:	0585                	addi	a1,a1,1
   1ae22:	0511                	addi	a0,a0,4
   1ae24:	0107e7b3          	or	a5,a5,a6
   1ae28:	b7e1                	j	1adf0 <__multf3+0xa02>
   1ae2a:	05050493          	addi	s1,a0,80
   1ae2e:	02010813          	addi	a6,sp,32
   1ae32:	9826                	add	a6,a6,s1
   1ae34:	fd082803          	lw	a6,-48(a6)
   1ae38:	02000313          	li	t1,32
   1ae3c:	40d30333          	sub	t1,t1,a3
   1ae40:	00681833          	sll	a6,a6,t1
   1ae44:	0107e7b3          	or	a5,a5,a6
   1ae48:	4e01                	li	t3,0
   1ae4a:	00a60833          	add	a6,a2,a0
   1ae4e:	40a00533          	neg	a0,a0
   1ae52:	08be4b63          	blt	t3,a1,1aee8 <__multf3+0xafa>
   1ae56:	4511                	li	a0,4
   1ae58:	058a                	slli	a1,a1,0x2
   1ae5a:	40e50733          	sub	a4,a0,a4
   1ae5e:	05058593          	addi	a1,a1,80
   1ae62:	1008                	addi	a0,sp,32
   1ae64:	95aa                	add	a1,a1,a0
   1ae66:	4536                	lw	a0,76(sp)
   1ae68:	00d556b3          	srl	a3,a0,a3
   1ae6c:	fcd5a823          	sw	a3,-48(a1)
   1ae70:	4691                	li	a3,4
   1ae72:	8e99                	sub	a3,a3,a4
   1ae74:	068a                	slli	a3,a3,0x2
   1ae76:	070a                	slli	a4,a4,0x2
   1ae78:	45a1                	li	a1,8
   1ae7a:	9732                	add	a4,a4,a2
   1ae7c:	00b6e863          	bltu	a3,a1,1ae8c <__multf3+0xa9e>
   1ae80:	00072023          	sw	zero,0(a4)
   1ae84:	00072223          	sw	zero,4(a4)
   1ae88:	16e1                	addi	a3,a3,-8
   1ae8a:	0721                	addi	a4,a4,8
   1ae8c:	4591                	li	a1,4
   1ae8e:	00b6e463          	bltu	a3,a1,1ae96 <__multf3+0xaa8>
   1ae92:	00072023          	sw	zero,0(a4)
   1ae96:	4706                	lw	a4,64(sp)
   1ae98:	00f037b3          	snez	a5,a5
   1ae9c:	8fd9                	or	a5,a5,a4
   1ae9e:	c0be                	sw	a5,64(sp)
   1aea0:	0077f713          	andi	a4,a5,7
   1aea4:	c71d                	beqz	a4,1aed2 <__multf3+0xae4>
   1aea6:	00f7f713          	andi	a4,a5,15
   1aeaa:	4691                	li	a3,4
   1aeac:	02d70363          	beq	a4,a3,1aed2 <__multf3+0xae4>
   1aeb0:	4716                	lw	a4,68(sp)
   1aeb2:	0791                	addi	a5,a5,4 # 4004 <exit-0xc090>
   1aeb4:	c0be                	sw	a5,64(sp)
   1aeb6:	0047b793          	sltiu	a5,a5,4
   1aeba:	97ba                	add	a5,a5,a4
   1aebc:	c2be                	sw	a5,68(sp)
   1aebe:	00e7b7b3          	sltu	a5,a5,a4
   1aec2:	4726                	lw	a4,72(sp)
   1aec4:	97ba                	add	a5,a5,a4
   1aec6:	c4be                	sw	a5,72(sp)
   1aec8:	00e7b7b3          	sltu	a5,a5,a4
   1aecc:	4736                	lw	a4,76(sp)
   1aece:	97ba                	add	a5,a5,a4
   1aed0:	c6be                	sw	a5,76(sp)
   1aed2:	4736                	lw	a4,76(sp)
   1aed4:	00c71793          	slli	a5,a4,0xc
   1aed8:	0207d963          	bgez	a5,1af0a <__multf3+0xb1c>
   1aedc:	c682                	sw	zero,76(sp)
   1aede:	c482                	sw	zero,72(sp)
   1aee0:	c282                	sw	zero,68(sp)
   1aee2:	c082                	sw	zero,64(sp)
   1aee4:	4785                	li	a5,1
   1aee6:	bd45                	j	1ad96 <__multf3+0x9a8>
   1aee8:	00082883          	lw	a7,0(a6)
   1aeec:	00482e83          	lw	t4,4(a6)
   1aef0:	00a80f33          	add	t5,a6,a0
   1aef4:	00d8d8b3          	srl	a7,a7,a3
   1aef8:	006e9eb3          	sll	t4,t4,t1
   1aefc:	01d8e8b3          	or	a7,a7,t4
   1af00:	011f2023          	sw	a7,0(t5)
   1af04:	0e05                	addi	t3,t3,1
   1af06:	0811                	addi	a6,a6,4
   1af08:	b7a9                	j	1ae52 <__multf3+0xa64>
   1af0a:	00c60593          	addi	a1,a2,12
   1af0e:	421c                	lw	a5,0(a2)
   1af10:	4254                	lw	a3,4(a2)
   1af12:	838d                	srli	a5,a5,0x3
   1af14:	06f6                	slli	a3,a3,0x1d
   1af16:	8fd5                	or	a5,a5,a3
   1af18:	c21c                	sw	a5,0(a2)
   1af1a:	0611                	addi	a2,a2,4
   1af1c:	fec599e3          	bne	a1,a2,1af0e <__multf3+0xb20>
   1af20:	830d                	srli	a4,a4,0x3
   1af22:	c6ba                	sw	a4,76(sp)
   1af24:	4781                	li	a5,0
   1af26:	bd85                	j	1ad96 <__multf3+0x9a8>
   1af28:	4716                	lw	a4,68(sp)
   1af2a:	4786                	lw	a5,64(sp)
   1af2c:	8fd9                	or	a5,a5,a4
   1af2e:	4726                	lw	a4,72(sp)
   1af30:	8fd9                	or	a5,a5,a4
   1af32:	4736                	lw	a4,76(sp)
   1af34:	8fd9                	or	a5,a5,a4
   1af36:	d7fd                	beqz	a5,1af24 <__multf3+0xb36>
   1af38:	c682                	sw	zero,76(sp)
   1af3a:	c482                	sw	zero,72(sp)
   1af3c:	c282                	sw	zero,68(sp)
   1af3e:	c082                	sw	zero,64(sp)
   1af40:	b7d5                	j	1af24 <__multf3+0xb36>
   1af42:	67a1                	lui	a5,0x8
   1af44:	c682                	sw	zero,76(sp)
   1af46:	c482                	sw	zero,72(sp)
   1af48:	c282                	sw	zero,68(sp)
   1af4a:	c082                	sw	zero,64(sp)
   1af4c:	17fd                	addi	a5,a5,-1 # 7fff <exit-0x8095>
   1af4e:	b5a1                	j	1ad96 <__multf3+0x9a8>

0001af50 <__subtf3>:
   1af50:	7159                	addi	sp,sp,-112
   1af52:	4598                	lw	a4,8(a1)
   1af54:	cad6                	sw	s5,84(sp)
   1af56:	00c5aa83          	lw	s5,12(a1)
   1af5a:	419c                	lw	a5,0(a1)
   1af5c:	41d4                	lw	a3,4(a1)
   1af5e:	dc3a                	sw	a4,56(sp)
   1af60:	cc3a                	sw	a4,24(sp)
   1af62:	010a9713          	slli	a4,s5,0x10
   1af66:	8341                	srli	a4,a4,0x10
   1af68:	00462883          	lw	a7,4(a2)
   1af6c:	00862803          	lw	a6,8(a2)
   1af70:	d4a2                	sw	s0,104(sp)
   1af72:	d2a6                	sw	s1,100(sp)
   1af74:	4200                	lw	s0,0(a2)
   1af76:	001a9493          	slli	s1,s5,0x1
   1af7a:	d0ca                	sw	s2,96(sp)
   1af7c:	00c62903          	lw	s2,12(a2)
   1af80:	0810                	addi	a2,sp,16
   1af82:	ccd2                	sw	s4,88(sp)
   1af84:	de56                	sw	s5,60(sp)
   1af86:	8a2a                	mv	s4,a0
   1af88:	ce3a                	sw	a4,28(sp)
   1af8a:	d686                	sw	ra,108(sp)
   1af8c:	cece                	sw	s3,92(sp)
   1af8e:	c8da                	sw	s6,80(sp)
   1af90:	c6de                	sw	s7,76(sp)
   1af92:	c4e2                	sw	s8,72(sp)
   1af94:	d83e                	sw	a5,48(sp)
   1af96:	da36                	sw	a3,52(sp)
   1af98:	c83e                	sw	a5,16(sp)
   1af9a:	ca36                	sw	a3,20(sp)
   1af9c:	80c5                	srli	s1,s1,0x11
   1af9e:	01fada93          	srli	s5,s5,0x1f
   1afa2:	00410313          	addi	t1,sp,4
   1afa6:	8732                	mv	a4,a2
   1afa8:	8532                	mv	a0,a2
   1afaa:	4754                	lw	a3,12(a4)
   1afac:	470c                	lw	a1,8(a4)
   1afae:	1771                	addi	a4,a4,-4
   1afb0:	068e                	slli	a3,a3,0x3
   1afb2:	81f5                	srli	a1,a1,0x1d
   1afb4:	8ecd                	or	a3,a3,a1
   1afb6:	cb14                	sw	a3,16(a4)
   1afb8:	fee319e3          	bne	t1,a4,1afaa <__subtf3+0x5a>
   1afbc:	01091713          	slli	a4,s2,0x10
   1afc0:	8341                	srli	a4,a4,0x10
   1afc2:	00191b93          	slli	s7,s2,0x1
   1afc6:	02010313          	addi	t1,sp,32
   1afca:	078e                	slli	a5,a5,0x3
   1afcc:	da46                	sw	a7,52(sp)
   1afce:	dc42                	sw	a6,56(sp)
   1afd0:	de4a                	sw	s2,60(sp)
   1afd2:	d246                	sw	a7,36(sp)
   1afd4:	d442                	sw	a6,40(sp)
   1afd6:	d63a                	sw	a4,44(sp)
   1afd8:	c83e                	sw	a5,16(sp)
   1afda:	d822                	sw	s0,48(sp)
   1afdc:	d022                	sw	s0,32(sp)
   1afde:	011bdb93          	srli	s7,s7,0x11
   1afe2:	01f95913          	srli	s2,s2,0x1f
   1afe6:	01410893          	addi	a7,sp,20
   1afea:	871a                	mv	a4,t1
   1afec:	881a                	mv	a6,t1
   1afee:	4754                	lw	a3,12(a4)
   1aff0:	470c                	lw	a1,8(a4)
   1aff2:	1771                	addi	a4,a4,-4
   1aff4:	068e                	slli	a3,a3,0x3
   1aff6:	81f5                	srli	a1,a1,0x1d
   1aff8:	8ecd                	or	a3,a3,a1
   1affa:	cb14                	sw	a3,16(a4)
   1affc:	fee899e3          	bne	a7,a4,1afee <__subtf3+0x9e>
   1b000:	040e                	slli	s0,s0,0x3
   1b002:	6721                	lui	a4,0x8
   1b004:	d022                	sw	s0,32(sp)
   1b006:	177d                	addi	a4,a4,-1 # 7fff <exit-0x8095>
   1b008:	00eb9963          	bne	s7,a4,1b01a <__subtf3+0xca>
   1b00c:	56a2                	lw	a3,40(sp)
   1b00e:	5712                	lw	a4,36(sp)
   1b010:	8f55                	or	a4,a4,a3
   1b012:	56b2                	lw	a3,44(sp)
   1b014:	8f55                	or	a4,a4,a3
   1b016:	8f41                	or	a4,a4,s0
   1b018:	e319                	bnez	a4,1b01e <__subtf3+0xce>
   1b01a:	00194913          	xori	s2,s2,1
   1b01e:	417488b3          	sub	a7,s1,s7
   1b022:	59591563          	bne	s2,s5,1b5ac <__subtf3+0x65c>
   1b026:	2b105f63          	blez	a7,1b2e4 <__subtf3+0x394>
   1b02a:	4952                	lw	s2,20(sp)
   1b02c:	49e2                	lw	s3,24(sp)
   1b02e:	4b72                	lw	s6,28(sp)
   1b030:	060b9163          	bnez	s7,1b092 <__subtf3+0x142>
   1b034:	5692                	lw	a3,36(sp)
   1b036:	5722                	lw	a4,40(sp)
   1b038:	55b2                	lw	a1,44(sp)
   1b03a:	00e6e633          	or	a2,a3,a4
   1b03e:	8e4d                	or	a2,a2,a1
   1b040:	8e41                	or	a2,a2,s0
   1b042:	e619                	bnez	a2,1b050 <__subtf3+0x100>
   1b044:	d83e                	sw	a5,48(sp)
   1b046:	da4a                	sw	s2,52(sp)
   1b048:	dc4e                	sw	s3,56(sp)
   1b04a:	de5a                	sw	s6,60(sp)
   1b04c:	84c6                	mv	s1,a7
   1b04e:	a891                	j	1b0a2 <__subtf3+0x152>
   1b050:	fff88613          	addi	a2,a7,-1
   1b054:	ea0d                	bnez	a2,1b086 <__subtf3+0x136>
   1b056:	943e                	add	s0,s0,a5
   1b058:	9936                	add	s2,s2,a3
   1b05a:	d822                	sw	s0,48(sp)
   1b05c:	00f43433          	sltu	s0,s0,a5
   1b060:	944a                	add	s0,s0,s2
   1b062:	da22                	sw	s0,52(sp)
   1b064:	00d936b3          	sltu	a3,s2,a3
   1b068:	01243433          	sltu	s0,s0,s2
   1b06c:	99ba                	add	s3,s3,a4
   1b06e:	8ec1                	or	a3,a3,s0
   1b070:	96ce                	add	a3,a3,s3
   1b072:	dc36                	sw	a3,56(sp)
   1b074:	00e9b7b3          	sltu	a5,s3,a4
   1b078:	0136b6b3          	sltu	a3,a3,s3
   1b07c:	8fd5                	or	a5,a5,a3
   1b07e:	95da                	add	a1,a1,s6
   1b080:	97ae                	add	a5,a5,a1
   1b082:	4485                	li	s1,1
   1b084:	a2fd                	j	1b272 <__subtf3+0x322>
   1b086:	6721                	lui	a4,0x8
   1b088:	177d                	addi	a4,a4,-1 # 7fff <exit-0x8095>
   1b08a:	4ce895e3          	bne	a7,a4,1bd54 <__subtf3+0xe04>
   1b08e:	d83e                	sw	a5,48(sp)
   1b090:	a4c1                	j	1b350 <__subtf3+0x400>
   1b092:	6721                	lui	a4,0x8
   1b094:	177d                	addi	a4,a4,-1 # 7fff <exit-0x8095>
   1b096:	0ee49163          	bne	s1,a4,1b178 <__subtf3+0x228>
   1b09a:	d83e                	sw	a5,48(sp)
   1b09c:	da4a                	sw	s2,52(sp)
   1b09e:	dc4e                	sw	s3,56(sp)
   1b0a0:	de5a                	sw	s6,60(sp)
   1b0a2:	57c2                	lw	a5,48(sp)
   1b0a4:	0077f713          	andi	a4,a5,7
   1b0a8:	c71d                	beqz	a4,1b0d6 <__subtf3+0x186>
   1b0aa:	00f7f713          	andi	a4,a5,15
   1b0ae:	4691                	li	a3,4
   1b0b0:	02d70363          	beq	a4,a3,1b0d6 <__subtf3+0x186>
   1b0b4:	5752                	lw	a4,52(sp)
   1b0b6:	0791                	addi	a5,a5,4
   1b0b8:	d83e                	sw	a5,48(sp)
   1b0ba:	0047b793          	sltiu	a5,a5,4
   1b0be:	97ba                	add	a5,a5,a4
   1b0c0:	da3e                	sw	a5,52(sp)
   1b0c2:	00e7b7b3          	sltu	a5,a5,a4
   1b0c6:	5762                	lw	a4,56(sp)
   1b0c8:	97ba                	add	a5,a5,a4
   1b0ca:	dc3e                	sw	a5,56(sp)
   1b0cc:	00e7b7b3          	sltu	a5,a5,a4
   1b0d0:	5772                	lw	a4,60(sp)
   1b0d2:	97ba                	add	a5,a5,a4
   1b0d4:	de3e                	sw	a5,60(sp)
   1b0d6:	57f2                	lw	a5,60(sp)
   1b0d8:	00c79713          	slli	a4,a5,0xc
   1b0dc:	00075c63          	bgez	a4,1b0f4 <__subtf3+0x1a4>
   1b0e0:	6721                	lui	a4,0x8
   1b0e2:	0485                	addi	s1,s1,1
   1b0e4:	177d                	addi	a4,a4,-1 # 7fff <exit-0x8095>
   1b0e6:	46e481e3          	beq	s1,a4,1bd48 <__subtf3+0xdf8>
   1b0ea:	fff80737          	lui	a4,0xfff80
   1b0ee:	177d                	addi	a4,a4,-1 # fff7ffff <__BSS_END__+0xfff615a3>
   1b0f0:	8ff9                	and	a5,a5,a4
   1b0f2:	de3e                	sw	a5,60(sp)
   1b0f4:	181c                	addi	a5,sp,48
   1b0f6:	1870                	addi	a2,sp,60
   1b0f8:	4398                	lw	a4,0(a5)
   1b0fa:	43d4                	lw	a3,4(a5)
   1b0fc:	830d                	srli	a4,a4,0x3
   1b0fe:	06f6                	slli	a3,a3,0x1d
   1b100:	8f55                	or	a4,a4,a3
   1b102:	c398                	sw	a4,0(a5)
   1b104:	0791                	addi	a5,a5,4
   1b106:	fec799e3          	bne	a5,a2,1b0f8 <__subtf3+0x1a8>
   1b10a:	5772                	lw	a4,60(sp)
   1b10c:	66a1                	lui	a3,0x8
   1b10e:	fff68793          	addi	a5,a3,-1 # 7fff <exit-0x8095>
   1b112:	830d                	srli	a4,a4,0x3
   1b114:	de3a                	sw	a4,60(sp)
   1b116:	00f49e63          	bne	s1,a5,1b132 <__subtf3+0x1e2>
   1b11a:	5652                	lw	a2,52(sp)
   1b11c:	57c2                	lw	a5,48(sp)
   1b11e:	8fd1                	or	a5,a5,a2
   1b120:	5662                	lw	a2,56(sp)
   1b122:	8fd1                	or	a5,a5,a2
   1b124:	8fd9                	or	a5,a5,a4
   1b126:	c791                	beqz	a5,1b132 <__subtf3+0x1e2>
   1b128:	de36                	sw	a3,60(sp)
   1b12a:	dc02                	sw	zero,56(sp)
   1b12c:	da02                	sw	zero,52(sp)
   1b12e:	d802                	sw	zero,48(sp)
   1b130:	4a81                	li	s5,0
   1b132:	57f2                	lw	a5,60(sp)
   1b134:	04c6                	slli	s1,s1,0x11
   1b136:	80c5                	srli	s1,s1,0x11
   1b138:	0abe                	slli	s5,s5,0xf
   1b13a:	009aeab3          	or	s5,s5,s1
   1b13e:	01511723          	sh	s5,14(sp)
   1b142:	00f11623          	sh	a5,12(sp)
   1b146:	5642                	lw	a2,48(sp)
   1b148:	56d2                	lw	a3,52(sp)
   1b14a:	5762                	lw	a4,56(sp)
   1b14c:	47b2                	lw	a5,12(sp)
   1b14e:	50b6                	lw	ra,108(sp)
   1b150:	5426                	lw	s0,104(sp)
   1b152:	00ca2023          	sw	a2,0(s4)
   1b156:	00da2223          	sw	a3,4(s4)
   1b15a:	00ea2423          	sw	a4,8(s4)
   1b15e:	00fa2623          	sw	a5,12(s4)
   1b162:	5496                	lw	s1,100(sp)
   1b164:	5906                	lw	s2,96(sp)
   1b166:	49f6                	lw	s3,92(sp)
   1b168:	4ad6                	lw	s5,84(sp)
   1b16a:	4b46                	lw	s6,80(sp)
   1b16c:	4bb6                	lw	s7,76(sp)
   1b16e:	4c26                	lw	s8,72(sp)
   1b170:	8552                	mv	a0,s4
   1b172:	4a66                	lw	s4,88(sp)
   1b174:	6165                	addi	sp,sp,112
   1b176:	8082                	ret
   1b178:	5732                	lw	a4,44(sp)
   1b17a:	000806b7          	lui	a3,0x80
   1b17e:	8f55                	or	a4,a4,a3
   1b180:	d63a                	sw	a4,44(sp)
   1b182:	07400713          	li	a4,116
   1b186:	3d174be3          	blt	a4,a7,1bd5c <__subtf3+0xe0c>
   1b18a:	8646                	mv	a2,a7
   1b18c:	40565693          	srai	a3,a2,0x5
   1b190:	851a                	mv	a0,t1
   1b192:	8a7d                	andi	a2,a2,31
   1b194:	4701                	li	a4,0
   1b196:	4581                	li	a1,0
   1b198:	02d59563          	bne	a1,a3,1b1c2 <__subtf3+0x272>
   1b19c:	458d                	li	a1,3
   1b19e:	8d95                	sub	a1,a1,a3
   1b1a0:	00269513          	slli	a0,a3,0x2
   1b1a4:	e615                	bnez	a2,1b1d0 <__subtf3+0x280>
   1b1a6:	00a308b3          	add	a7,t1,a0
   1b1aa:	0008a883          	lw	a7,0(a7)
   1b1ae:	0605                	addi	a2,a2,1
   1b1b0:	0311                	addi	t1,t1,4
   1b1b2:	ff132e23          	sw	a7,-4(t1)
   1b1b6:	fec5d8e3          	bge	a1,a2,1b1a6 <__subtf3+0x256>
   1b1ba:	4611                	li	a2,4
   1b1bc:	40d606b3          	sub	a3,a2,a3
   1b1c0:	a881                	j	1b210 <__subtf3+0x2c0>
   1b1c2:	00052883          	lw	a7,0(a0)
   1b1c6:	0585                	addi	a1,a1,1
   1b1c8:	0511                	addi	a0,a0,4
   1b1ca:	01176733          	or	a4,a4,a7
   1b1ce:	b7e9                	j	1b198 <__subtf3+0x248>
   1b1d0:	04050413          	addi	s0,a0,64
   1b1d4:	002408b3          	add	a7,s0,sp
   1b1d8:	fe08a883          	lw	a7,-32(a7)
   1b1dc:	02000e13          	li	t3,32
   1b1e0:	40ce0e33          	sub	t3,t3,a2
   1b1e4:	01c898b3          	sll	a7,a7,t3
   1b1e8:	932a                	add	t1,t1,a0
   1b1ea:	01176733          	or	a4,a4,a7
   1b1ee:	40a00533          	neg	a0,a0
   1b1f2:	4e81                	li	t4,0
   1b1f4:	0cbec763          	blt	t4,a1,1b2c2 <__subtf3+0x372>
   1b1f8:	4511                	li	a0,4
   1b1fa:	40d506b3          	sub	a3,a0,a3
   1b1fe:	5532                	lw	a0,44(sp)
   1b200:	058a                	slli	a1,a1,0x2
   1b202:	04058593          	addi	a1,a1,64
   1b206:	958a                	add	a1,a1,sp
   1b208:	00c55633          	srl	a2,a0,a2
   1b20c:	fec5a023          	sw	a2,-32(a1)
   1b210:	4611                	li	a2,4
   1b212:	8e15                	sub	a2,a2,a3
   1b214:	060a                	slli	a2,a2,0x2
   1b216:	068a                	slli	a3,a3,0x2
   1b218:	45a1                	li	a1,8
   1b21a:	96c2                	add	a3,a3,a6
   1b21c:	00b66863          	bltu	a2,a1,1b22c <__subtf3+0x2dc>
   1b220:	0006a023          	sw	zero,0(a3) # 80000 <__BSS_END__+0x615a4>
   1b224:	0006a223          	sw	zero,4(a3)
   1b228:	1661                	addi	a2,a2,-8
   1b22a:	06a1                	addi	a3,a3,8
   1b22c:	4591                	li	a1,4
   1b22e:	00b66463          	bltu	a2,a1,1b236 <__subtf3+0x2e6>
   1b232:	0006a023          	sw	zero,0(a3)
   1b236:	5682                	lw	a3,32(sp)
   1b238:	00e03733          	snez	a4,a4
   1b23c:	8f55                	or	a4,a4,a3
   1b23e:	5692                	lw	a3,36(sp)
   1b240:	d03a                	sw	a4,32(sp)
   1b242:	973e                	add	a4,a4,a5
   1b244:	9936                	add	s2,s2,a3
   1b246:	d83a                	sw	a4,48(sp)
   1b248:	00f73733          	sltu	a4,a4,a5
   1b24c:	57a2                	lw	a5,40(sp)
   1b24e:	974a                	add	a4,a4,s2
   1b250:	da3a                	sw	a4,52(sp)
   1b252:	00d936b3          	sltu	a3,s2,a3
   1b256:	01273733          	sltu	a4,a4,s2
   1b25a:	99be                	add	s3,s3,a5
   1b25c:	8f55                	or	a4,a4,a3
   1b25e:	974e                	add	a4,a4,s3
   1b260:	dc3a                	sw	a4,56(sp)
   1b262:	00f9b7b3          	sltu	a5,s3,a5
   1b266:	01373733          	sltu	a4,a4,s3
   1b26a:	8fd9                	or	a5,a5,a4
   1b26c:	5732                	lw	a4,44(sp)
   1b26e:	975a                	add	a4,a4,s6
   1b270:	97ba                	add	a5,a5,a4
   1b272:	de3e                	sw	a5,60(sp)
   1b274:	00c79713          	slli	a4,a5,0xc
   1b278:	e20755e3          	bgez	a4,1b0a2 <__subtf3+0x152>
   1b27c:	56c2                	lw	a3,48(sp)
   1b27e:	fff80737          	lui	a4,0xfff80
   1b282:	177d                	addi	a4,a4,-1 # fff7ffff <__BSS_END__+0xfff615a3>
   1b284:	8ff9                	and	a5,a5,a4
   1b286:	de3e                	sw	a5,60(sp)
   1b288:	0485                	addi	s1,s1,1
   1b28a:	06fe                	slli	a3,a3,0x1f
   1b28c:	1818                	addi	a4,sp,48
   1b28e:	1868                	addi	a0,sp,60
   1b290:	4310                	lw	a2,0(a4)
   1b292:	434c                	lw	a1,4(a4)
   1b294:	8205                	srli	a2,a2,0x1
   1b296:	05fe                	slli	a1,a1,0x1f
   1b298:	8e4d                	or	a2,a2,a1
   1b29a:	c310                	sw	a2,0(a4)
   1b29c:	0711                	addi	a4,a4,4
   1b29e:	fee519e3          	bne	a0,a4,1b290 <__subtf3+0x340>
   1b2a2:	5742                	lw	a4,48(sp)
   1b2a4:	8385                	srli	a5,a5,0x1
   1b2a6:	de3e                	sw	a5,60(sp)
   1b2a8:	00d037b3          	snez	a5,a3
   1b2ac:	8fd9                	or	a5,a5,a4
   1b2ae:	d83e                	sw	a5,48(sp)
   1b2b0:	67a1                	lui	a5,0x8
   1b2b2:	17fd                	addi	a5,a5,-1 # 7fff <exit-0x8095>
   1b2b4:	def497e3          	bne	s1,a5,1b0a2 <__subtf3+0x152>
   1b2b8:	de02                	sw	zero,60(sp)
   1b2ba:	dc02                	sw	zero,56(sp)
   1b2bc:	da02                	sw	zero,52(sp)
   1b2be:	d802                	sw	zero,48(sp)
   1b2c0:	b3cd                	j	1b0a2 <__subtf3+0x152>
   1b2c2:	00032883          	lw	a7,0(t1)
   1b2c6:	00432f03          	lw	t5,4(t1)
   1b2ca:	00a30fb3          	add	t6,t1,a0
   1b2ce:	00c8d8b3          	srl	a7,a7,a2
   1b2d2:	01cf1f33          	sll	t5,t5,t3
   1b2d6:	01e8e8b3          	or	a7,a7,t5
   1b2da:	011fa023          	sw	a7,0(t6)
   1b2de:	0e85                	addi	t4,t4,1
   1b2e0:	0311                	addi	t1,t1,4
   1b2e2:	bf09                	j	1b1f4 <__subtf3+0x2a4>
   1b2e4:	5912                	lw	s2,36(sp)
   1b2e6:	59a2                	lw	s3,40(sp)
   1b2e8:	5b32                	lw	s6,44(sp)
   1b2ea:	1a088163          	beqz	a7,1b48c <__subtf3+0x53c>
   1b2ee:	409b8833          	sub	a6,s7,s1
   1b2f2:	e4bd                	bnez	s1,1b360 <__subtf3+0x410>
   1b2f4:	46d2                	lw	a3,20(sp)
   1b2f6:	4762                	lw	a4,24(sp)
   1b2f8:	48f2                	lw	a7,28(sp)
   1b2fa:	00e6e5b3          	or	a1,a3,a4
   1b2fe:	0115e5b3          	or	a1,a1,a7
   1b302:	8ddd                	or	a1,a1,a5
   1b304:	e599                	bnez	a1,1b312 <__subtf3+0x3c2>
   1b306:	d822                	sw	s0,48(sp)
   1b308:	da4a                	sw	s2,52(sp)
   1b30a:	dc4e                	sw	s3,56(sp)
   1b30c:	de5a                	sw	s6,60(sp)
   1b30e:	84c2                	mv	s1,a6
   1b310:	bb49                	j	1b0a2 <__subtf3+0x152>
   1b312:	fff80593          	addi	a1,a6,-1
   1b316:	e985                	bnez	a1,1b346 <__subtf3+0x3f6>
   1b318:	943e                	add	s0,s0,a5
   1b31a:	9936                	add	s2,s2,a3
   1b31c:	d822                	sw	s0,48(sp)
   1b31e:	00f43433          	sltu	s0,s0,a5
   1b322:	944a                	add	s0,s0,s2
   1b324:	da22                	sw	s0,52(sp)
   1b326:	00d936b3          	sltu	a3,s2,a3
   1b32a:	01243433          	sltu	s0,s0,s2
   1b32e:	99ba                	add	s3,s3,a4
   1b330:	8ec1                	or	a3,a3,s0
   1b332:	96ce                	add	a3,a3,s3
   1b334:	dc36                	sw	a3,56(sp)
   1b336:	00e9b7b3          	sltu	a5,s3,a4
   1b33a:	0136b6b3          	sltu	a3,a3,s3
   1b33e:	8fd5                	or	a5,a5,a3
   1b340:	98da                	add	a7,a7,s6
   1b342:	97c6                	add	a5,a5,a7
   1b344:	bb3d                	j	1b082 <__subtf3+0x132>
   1b346:	67a1                	lui	a5,0x8
   1b348:	17fd                	addi	a5,a5,-1 # 7fff <exit-0x8095>
   1b34a:	20f81fe3          	bne	a6,a5,1bd68 <__subtf3+0xe18>
   1b34e:	d822                	sw	s0,48(sp)
   1b350:	da4a                	sw	s2,52(sp)
   1b352:	dc4e                	sw	s3,56(sp)
   1b354:	de5a                	sw	s6,60(sp)
   1b356:	64a1                	lui	s1,0x8
   1b358:	14fd                	addi	s1,s1,-1 # 7fff <exit-0x8095>
   1b35a:	b3a1                	j	1b0a2 <__subtf3+0x152>
   1b35c:	843e                	mv	s0,a5
   1b35e:	bfc5                	j	1b34e <__subtf3+0x3fe>
   1b360:	67a1                	lui	a5,0x8
   1b362:	17fd                	addi	a5,a5,-1 # 7fff <exit-0x8095>
   1b364:	fefb85e3          	beq	s7,a5,1b34e <__subtf3+0x3fe>
   1b368:	47f2                	lw	a5,28(sp)
   1b36a:	00080737          	lui	a4,0x80
   1b36e:	8fd9                	or	a5,a5,a4
   1b370:	ce3e                	sw	a5,28(sp)
   1b372:	07400793          	li	a5,116
   1b376:	1f07cde3          	blt	a5,a6,1bd70 <__subtf3+0xe20>
   1b37a:	85c2                	mv	a1,a6
   1b37c:	02000713          	li	a4,32
   1b380:	02e5c733          	div	a4,a1,a4
   1b384:	86b2                	mv	a3,a2
   1b386:	4481                	li	s1,0
   1b388:	4781                	li	a5,0
   1b38a:	02e7c663          	blt	a5,a4,1b3b6 <__subtf3+0x466>
   1b38e:	478d                	li	a5,3
   1b390:	01f5f893          	andi	a7,a1,31
   1b394:	8f99                	sub	a5,a5,a4
   1b396:	00271813          	slli	a6,a4,0x2
   1b39a:	02089563          	bnez	a7,1b3c4 <__subtf3+0x474>
   1b39e:	010606b3          	add	a3,a2,a6
   1b3a2:	4294                	lw	a3,0(a3)
   1b3a4:	0885                	addi	a7,a7,1
   1b3a6:	c214                	sw	a3,0(a2)
   1b3a8:	0611                	addi	a2,a2,4
   1b3aa:	ff17dae3          	bge	a5,a7,1b39e <__subtf3+0x44e>
   1b3ae:	4791                	li	a5,4
   1b3b0:	40e78733          	sub	a4,a5,a4
   1b3b4:	a8a9                	j	1b40e <__subtf3+0x4be>
   1b3b6:	0006a803          	lw	a6,0(a3)
   1b3ba:	0785                	addi	a5,a5,1
   1b3bc:	0691                	addi	a3,a3,4
   1b3be:	0104e4b3          	or	s1,s1,a6
   1b3c2:	b7e1                	j	1b38a <__subtf3+0x43a>
   1b3c4:	02000693          	li	a3,32
   1b3c8:	02d5e5b3          	rem	a1,a1,a3
   1b3cc:	40b685b3          	sub	a1,a3,a1
   1b3d0:	86ba                	mv	a3,a4
   1b3d2:	00075363          	bgez	a4,1b3d8 <__subtf3+0x488>
   1b3d6:	4681                	li	a3,0
   1b3d8:	068a                	slli	a3,a3,0x2
   1b3da:	04068693          	addi	a3,a3,64
   1b3de:	968a                	add	a3,a3,sp
   1b3e0:	fd06a683          	lw	a3,-48(a3)
   1b3e4:	9642                	add	a2,a2,a6
   1b3e6:	4301                	li	t1,0
   1b3e8:	00b696b3          	sll	a3,a3,a1
   1b3ec:	8cd5                	or	s1,s1,a3
   1b3ee:	41000833          	neg	a6,a6
   1b3f2:	06f34d63          	blt	t1,a5,1b46c <__subtf3+0x51c>
   1b3f6:	4691                	li	a3,4
   1b3f8:	40e68733          	sub	a4,a3,a4
   1b3fc:	46f2                	lw	a3,28(sp)
   1b3fe:	078a                	slli	a5,a5,0x2
   1b400:	04078793          	addi	a5,a5,64
   1b404:	978a                	add	a5,a5,sp
   1b406:	0116d6b3          	srl	a3,a3,a7
   1b40a:	fcd7a823          	sw	a3,-48(a5)
   1b40e:	00572793          	slti	a5,a4,5
   1b412:	4601                	li	a2,0
   1b414:	c781                	beqz	a5,1b41c <__subtf3+0x4cc>
   1b416:	4611                	li	a2,4
   1b418:	8e19                	sub	a2,a2,a4
   1b41a:	060a                	slli	a2,a2,0x2
   1b41c:	070a                	slli	a4,a4,0x2
   1b41e:	953a                	add	a0,a0,a4
   1b420:	4581                	li	a1,0
   1b422:	ffffb097          	auipc	ra,0xffffb
   1b426:	104080e7          	jalr	260(ra) # 16526 <memset>
   1b42a:	4742                	lw	a4,16(sp)
   1b42c:	009037b3          	snez	a5,s1
   1b430:	8fd9                	or	a5,a5,a4
   1b432:	46d2                	lw	a3,20(sp)
   1b434:	c83e                	sw	a5,16(sp)
   1b436:	97a2                	add	a5,a5,s0
   1b438:	9936                	add	s2,s2,a3
   1b43a:	d83e                	sw	a5,48(sp)
   1b43c:	0087b7b3          	sltu	a5,a5,s0
   1b440:	00f90733          	add	a4,s2,a5
   1b444:	47e2                	lw	a5,24(sp)
   1b446:	da3a                	sw	a4,52(sp)
   1b448:	00d936b3          	sltu	a3,s2,a3
   1b44c:	01273733          	sltu	a4,a4,s2
   1b450:	99be                	add	s3,s3,a5
   1b452:	8f55                	or	a4,a4,a3
   1b454:	974e                	add	a4,a4,s3
   1b456:	dc3a                	sw	a4,56(sp)
   1b458:	00f9b7b3          	sltu	a5,s3,a5
   1b45c:	01373733          	sltu	a4,a4,s3
   1b460:	8fd9                	or	a5,a5,a4
   1b462:	4772                	lw	a4,28(sp)
   1b464:	84de                	mv	s1,s7
   1b466:	975a                	add	a4,a4,s6
   1b468:	97ba                	add	a5,a5,a4
   1b46a:	b521                	j	1b272 <__subtf3+0x322>
   1b46c:	4214                	lw	a3,0(a2)
   1b46e:	00462e03          	lw	t3,4(a2)
   1b472:	01060eb3          	add	t4,a2,a6
   1b476:	0116d6b3          	srl	a3,a3,a7
   1b47a:	00be1e33          	sll	t3,t3,a1
   1b47e:	01c6e6b3          	or	a3,a3,t3
   1b482:	00dea023          	sw	a3,0(t4)
   1b486:	0305                	addi	t1,t1,1
   1b488:	0611                	addi	a2,a2,4
   1b48a:	b7a5                	j	1b3f2 <__subtf3+0x4a2>
   1b48c:	00148513          	addi	a0,s1,1
   1b490:	01151693          	slli	a3,a0,0x11
   1b494:	82c9                	srli	a3,a3,0x12
   1b496:	4752                	lw	a4,20(sp)
   1b498:	45e2                	lw	a1,24(sp)
   1b49a:	4672                	lw	a2,28(sp)
   1b49c:	eacd                	bnez	a3,1b54e <__subtf3+0x5fe>
   1b49e:	00b766b3          	or	a3,a4,a1
   1b4a2:	8ed1                	or	a3,a3,a2
   1b4a4:	8edd                	or	a3,a3,a5
   1b4a6:	e4b5                	bnez	s1,1b512 <__subtf3+0x5c2>
   1b4a8:	e699                	bnez	a3,1b4b6 <__subtf3+0x566>
   1b4aa:	d822                	sw	s0,48(sp)
   1b4ac:	da4a                	sw	s2,52(sp)
   1b4ae:	dc4e                	sw	s3,56(sp)
   1b4b0:	de5a                	sw	s6,60(sp)
   1b4b2:	4481                	li	s1,0
   1b4b4:	b6fd                	j	1b0a2 <__subtf3+0x152>
   1b4b6:	013966b3          	or	a3,s2,s3
   1b4ba:	0166e6b3          	or	a3,a3,s6
   1b4be:	8ec1                	or	a3,a3,s0
   1b4c0:	e691                	bnez	a3,1b4cc <__subtf3+0x57c>
   1b4c2:	d83e                	sw	a5,48(sp)
   1b4c4:	da3a                	sw	a4,52(sp)
   1b4c6:	dc2e                	sw	a1,56(sp)
   1b4c8:	de32                	sw	a2,60(sp)
   1b4ca:	bee1                	j	1b0a2 <__subtf3+0x152>
   1b4cc:	943e                	add	s0,s0,a5
   1b4ce:	993a                	add	s2,s2,a4
   1b4d0:	d822                	sw	s0,48(sp)
   1b4d2:	00f43433          	sltu	s0,s0,a5
   1b4d6:	944a                	add	s0,s0,s2
   1b4d8:	00e936b3          	sltu	a3,s2,a4
   1b4dc:	da22                	sw	s0,52(sp)
   1b4de:	01243433          	sltu	s0,s0,s2
   1b4e2:	99ae                	add	s3,s3,a1
   1b4e4:	8ec1                	or	a3,a3,s0
   1b4e6:	96ce                	add	a3,a3,s3
   1b4e8:	dc36                	sw	a3,56(sp)
   1b4ea:	00b9b7b3          	sltu	a5,s3,a1
   1b4ee:	0136b6b3          	sltu	a3,a3,s3
   1b4f2:	8fd5                	or	a5,a5,a3
   1b4f4:	965a                	add	a2,a2,s6
   1b4f6:	97b2                	add	a5,a5,a2
   1b4f8:	00c79713          	slli	a4,a5,0xc
   1b4fc:	00074463          	bltz	a4,1b504 <__subtf3+0x5b4>
   1b500:	de3e                	sw	a5,60(sp)
   1b502:	b645                	j	1b0a2 <__subtf3+0x152>
   1b504:	fff80737          	lui	a4,0xfff80
   1b508:	177d                	addi	a4,a4,-1 # fff7ffff <__BSS_END__+0xfff615a3>
   1b50a:	8ff9                	and	a5,a5,a4
   1b50c:	de3e                	sw	a5,60(sp)
   1b50e:	4485                	li	s1,1
   1b510:	be49                	j	1b0a2 <__subtf3+0x152>
   1b512:	12068163          	beqz	a3,1b634 <__subtf3+0x6e4>
   1b516:	01396933          	or	s2,s2,s3
   1b51a:	01696933          	or	s2,s2,s6
   1b51e:	00896933          	or	s2,s2,s0
   1b522:	10090b63          	beqz	s2,1b638 <__subtf3+0x6e8>
   1b526:	67a1                	lui	a5,0x8
   1b528:	de3e                	sw	a5,60(sp)
   1b52a:	dc02                	sw	zero,56(sp)
   1b52c:	da02                	sw	zero,52(sp)
   1b52e:	d802                	sw	zero,48(sp)
   1b530:	181c                	addi	a5,sp,48
   1b532:	1050                	addi	a2,sp,36
   1b534:	47d8                	lw	a4,12(a5)
   1b536:	4794                	lw	a3,8(a5)
   1b538:	17f1                	addi	a5,a5,-4 # 7ffc <exit-0x8098>
   1b53a:	070e                	slli	a4,a4,0x3
   1b53c:	82f5                	srli	a3,a3,0x1d
   1b53e:	8f55                	or	a4,a4,a3
   1b540:	cb98                	sw	a4,16(a5)
   1b542:	fef619e3          	bne	a2,a5,1b534 <__subtf3+0x5e4>
   1b546:	64a1                	lui	s1,0x8
   1b548:	14fd                	addi	s1,s1,-1 # 7fff <exit-0x8095>
   1b54a:	4a81                	li	s5,0
   1b54c:	be99                	j	1b0a2 <__subtf3+0x152>
   1b54e:	943e                	add	s0,s0,a5
   1b550:	993a                	add	s2,s2,a4
   1b552:	d822                	sw	s0,48(sp)
   1b554:	00f43433          	sltu	s0,s0,a5
   1b558:	944a                	add	s0,s0,s2
   1b55a:	00e936b3          	sltu	a3,s2,a4
   1b55e:	da22                	sw	s0,52(sp)
   1b560:	01243433          	sltu	s0,s0,s2
   1b564:	99ae                	add	s3,s3,a1
   1b566:	8ec1                	or	a3,a3,s0
   1b568:	96ce                	add	a3,a3,s3
   1b56a:	00b9b733          	sltu	a4,s3,a1
   1b56e:	dc36                	sw	a3,56(sp)
   1b570:	0136b6b3          	sltu	a3,a3,s3
   1b574:	8f55                	or	a4,a4,a3
   1b576:	965a                	add	a2,a2,s6
   1b578:	9732                	add	a4,a4,a2
   1b57a:	de3a                	sw	a4,60(sp)
   1b57c:	181c                	addi	a5,sp,48
   1b57e:	186c                	addi	a1,sp,60
   1b580:	4394                	lw	a3,0(a5)
   1b582:	43d0                	lw	a2,4(a5)
   1b584:	8285                	srli	a3,a3,0x1
   1b586:	067e                	slli	a2,a2,0x1f
   1b588:	8ed1                	or	a3,a3,a2
   1b58a:	c394                	sw	a3,0(a5)
   1b58c:	0791                	addi	a5,a5,4
   1b58e:	fef599e3          	bne	a1,a5,1b580 <__subtf3+0x630>
   1b592:	67a1                	lui	a5,0x8
   1b594:	17fd                	addi	a5,a5,-1 # 7fff <exit-0x8095>
   1b596:	00f50663          	beq	a0,a5,1b5a2 <__subtf3+0x652>
   1b59a:	8305                	srli	a4,a4,0x1
   1b59c:	de3a                	sw	a4,60(sp)
   1b59e:	84aa                	mv	s1,a0
   1b5a0:	b609                	j	1b0a2 <__subtf3+0x152>
   1b5a2:	de02                	sw	zero,60(sp)
   1b5a4:	dc02                	sw	zero,56(sp)
   1b5a6:	da02                	sw	zero,52(sp)
   1b5a8:	d802                	sw	zero,48(sp)
   1b5aa:	bfd5                	j	1b59e <__subtf3+0x64e>
   1b5ac:	1f105363          	blez	a7,1b792 <__subtf3+0x842>
   1b5b0:	4952                	lw	s2,20(sp)
   1b5b2:	49e2                	lw	s3,24(sp)
   1b5b4:	4b72                	lw	s6,28(sp)
   1b5b6:	080b9563          	bnez	s7,1b640 <__subtf3+0x6f0>
   1b5ba:	5e12                	lw	t3,36(sp)
   1b5bc:	5522                	lw	a0,40(sp)
   1b5be:	56b2                	lw	a3,44(sp)
   1b5c0:	00ae6733          	or	a4,t3,a0
   1b5c4:	8f55                	or	a4,a4,a3
   1b5c6:	8f41                	or	a4,a4,s0
   1b5c8:	a6070ee3          	beqz	a4,1b044 <__subtf3+0xf4>
   1b5cc:	fff88e93          	addi	t4,a7,-1
   1b5d0:	040e9563          	bnez	t4,1b61a <__subtf3+0x6ca>
   1b5d4:	40878733          	sub	a4,a5,s0
   1b5d8:	41c90633          	sub	a2,s2,t3
   1b5dc:	00e7b5b3          	sltu	a1,a5,a4
   1b5e0:	00c93833          	sltu	a6,s2,a2
   1b5e4:	8e0d                	sub	a2,a2,a1
   1b5e6:	4581                	li	a1,0
   1b5e8:	00e7f663          	bgeu	a5,a4,1b5f4 <__subtf3+0x6a4>
   1b5ec:	412e0e33          	sub	t3,t3,s2
   1b5f0:	001e3593          	seqz	a1,t3
   1b5f4:	0105e7b3          	or	a5,a1,a6
   1b5f8:	40a985b3          	sub	a1,s3,a0
   1b5fc:	00b9b833          	sltu	a6,s3,a1
   1b600:	8d9d                	sub	a1,a1,a5
   1b602:	c789                	beqz	a5,1b60c <__subtf3+0x6bc>
   1b604:	41350533          	sub	a0,a0,s3
   1b608:	00153e93          	seqz	t4,a0
   1b60c:	40db07b3          	sub	a5,s6,a3
   1b610:	010ee6b3          	or	a3,t4,a6
   1b614:	8f95                	sub	a5,a5,a3
   1b616:	4485                	li	s1,1
   1b618:	aa35                	j	1b754 <__subtf3+0x804>
   1b61a:	6721                	lui	a4,0x8
   1b61c:	177d                	addi	a4,a4,-1 # 7fff <exit-0x8095>
   1b61e:	a6e888e3          	beq	a7,a4,1b08e <__subtf3+0x13e>
   1b622:	07400713          	li	a4,116
   1b626:	03d75b63          	bge	a4,t4,1b65c <__subtf3+0x70c>
   1b62a:	d602                	sw	zero,44(sp)
   1b62c:	d402                	sw	zero,40(sp)
   1b62e:	d202                	sw	zero,36(sp)
   1b630:	4705                	li	a4,1
   1b632:	a8d9                	j	1b708 <__subtf3+0x7b8>
   1b634:	87a2                	mv	a5,s0
   1b636:	bca1                	j	1b08e <__subtf3+0x13e>
   1b638:	893a                	mv	s2,a4
   1b63a:	89ae                	mv	s3,a1
   1b63c:	8b32                	mv	s6,a2
   1b63e:	bc81                	j	1b08e <__subtf3+0x13e>
   1b640:	6721                	lui	a4,0x8
   1b642:	177d                	addi	a4,a4,-1 # 7fff <exit-0x8095>
   1b644:	d0e48ce3          	beq	s1,a4,1b35c <__subtf3+0x40c>
   1b648:	5732                	lw	a4,44(sp)
   1b64a:	000806b7          	lui	a3,0x80
   1b64e:	8f55                	or	a4,a4,a3
   1b650:	d63a                	sw	a4,44(sp)
   1b652:	07400713          	li	a4,116
   1b656:	fd174ae3          	blt	a4,a7,1b62a <__subtf3+0x6da>
   1b65a:	8ec6                	mv	t4,a7
   1b65c:	405ed693          	srai	a3,t4,0x5
   1b660:	859a                	mv	a1,t1
   1b662:	01fefe93          	andi	t4,t4,31
   1b666:	4701                	li	a4,0
   1b668:	4601                	li	a2,0
   1b66a:	02d61563          	bne	a2,a3,1b694 <__subtf3+0x744>
   1b66e:	460d                	li	a2,3
   1b670:	8e15                	sub	a2,a2,a3
   1b672:	00269593          	slli	a1,a3,0x2
   1b676:	020e9463          	bnez	t4,1b69e <__subtf3+0x74e>
   1b67a:	00b30533          	add	a0,t1,a1
   1b67e:	4108                	lw	a0,0(a0)
   1b680:	0e85                	addi	t4,t4,1
   1b682:	0311                	addi	t1,t1,4
   1b684:	fea32e23          	sw	a0,-4(t1)
   1b688:	ffd659e3          	bge	a2,t4,1b67a <__subtf3+0x72a>
   1b68c:	4611                	li	a2,4
   1b68e:	40d606b3          	sub	a3,a2,a3
   1b692:	a0a1                	j	1b6da <__subtf3+0x78a>
   1b694:	4188                	lw	a0,0(a1)
   1b696:	0605                	addi	a2,a2,1
   1b698:	0591                	addi	a1,a1,4
   1b69a:	8f49                	or	a4,a4,a0
   1b69c:	b7f9                	j	1b66a <__subtf3+0x71a>
   1b69e:	04058513          	addi	a0,a1,64
   1b6a2:	950a                	add	a0,a0,sp
   1b6a4:	fe052503          	lw	a0,-32(a0)
   1b6a8:	02000893          	li	a7,32
   1b6ac:	41d888b3          	sub	a7,a7,t4
   1b6b0:	01151533          	sll	a0,a0,a7
   1b6b4:	932e                	add	t1,t1,a1
   1b6b6:	8f49                	or	a4,a4,a0
   1b6b8:	40b005b3          	neg	a1,a1
   1b6bc:	4e01                	li	t3,0
   1b6be:	0ace4963          	blt	t3,a2,1b770 <__subtf3+0x820>
   1b6c2:	4591                	li	a1,4
   1b6c4:	40d586b3          	sub	a3,a1,a3
   1b6c8:	55b2                	lw	a1,44(sp)
   1b6ca:	060a                	slli	a2,a2,0x2
   1b6cc:	04060613          	addi	a2,a2,64
   1b6d0:	960a                	add	a2,a2,sp
   1b6d2:	01d5d5b3          	srl	a1,a1,t4
   1b6d6:	feb62023          	sw	a1,-32(a2)
   1b6da:	4611                	li	a2,4
   1b6dc:	8e15                	sub	a2,a2,a3
   1b6de:	060a                	slli	a2,a2,0x2
   1b6e0:	068a                	slli	a3,a3,0x2
   1b6e2:	45a1                	li	a1,8
   1b6e4:	96c2                	add	a3,a3,a6
   1b6e6:	00b66863          	bltu	a2,a1,1b6f6 <__subtf3+0x7a6>
   1b6ea:	0006a023          	sw	zero,0(a3) # 80000 <__BSS_END__+0x615a4>
   1b6ee:	0006a223          	sw	zero,4(a3)
   1b6f2:	1661                	addi	a2,a2,-8
   1b6f4:	06a1                	addi	a3,a3,8
   1b6f6:	4591                	li	a1,4
   1b6f8:	00b66463          	bltu	a2,a1,1b700 <__subtf3+0x7b0>
   1b6fc:	0006a023          	sw	zero,0(a3)
   1b700:	5682                	lw	a3,32(sp)
   1b702:	00e03733          	snez	a4,a4
   1b706:	8f55                	or	a4,a4,a3
   1b708:	5592                	lw	a1,36(sp)
   1b70a:	d03a                	sw	a4,32(sp)
   1b70c:	40e78733          	sub	a4,a5,a4
   1b710:	40b90633          	sub	a2,s2,a1
   1b714:	00e7b6b3          	sltu	a3,a5,a4
   1b718:	00c93533          	sltu	a0,s2,a2
   1b71c:	8e15                	sub	a2,a2,a3
   1b71e:	4681                	li	a3,0
   1b720:	00e7f663          	bgeu	a5,a4,1b72c <__subtf3+0x7dc>
   1b724:	412585b3          	sub	a1,a1,s2
   1b728:	0015b693          	seqz	a3,a1
   1b72c:	00a6e7b3          	or	a5,a3,a0
   1b730:	5522                	lw	a0,40(sp)
   1b732:	4681                	li	a3,0
   1b734:	40a985b3          	sub	a1,s3,a0
   1b738:	00b9b833          	sltu	a6,s3,a1
   1b73c:	8d9d                	sub	a1,a1,a5
   1b73e:	c789                	beqz	a5,1b748 <__subtf3+0x7f8>
   1b740:	41350533          	sub	a0,a0,s3
   1b744:	00153693          	seqz	a3,a0
   1b748:	57b2                	lw	a5,44(sp)
   1b74a:	0106e6b3          	or	a3,a3,a6
   1b74e:	40fb07b3          	sub	a5,s6,a5
   1b752:	8f95                	sub	a5,a5,a3
   1b754:	d83a                	sw	a4,48(sp)
   1b756:	de3e                	sw	a5,60(sp)
   1b758:	dc2e                	sw	a1,56(sp)
   1b75a:	da32                	sw	a2,52(sp)
   1b75c:	00c79713          	slli	a4,a5,0xc
   1b760:	940751e3          	bgez	a4,1b0a2 <__subtf3+0x152>
   1b764:	00080737          	lui	a4,0x80
   1b768:	177d                	addi	a4,a4,-1 # 7ffff <__BSS_END__+0x615a3>
   1b76a:	8ff9                	and	a5,a5,a4
   1b76c:	de3e                	sw	a5,60(sp)
   1b76e:	a6ed                	j	1bb58 <__subtf3+0xc08>
   1b770:	00032503          	lw	a0,0(t1)
   1b774:	00432f03          	lw	t5,4(t1)
   1b778:	00b30fb3          	add	t6,t1,a1
   1b77c:	01d55533          	srl	a0,a0,t4
   1b780:	011f1f33          	sll	t5,t5,a7
   1b784:	01e56533          	or	a0,a0,t5
   1b788:	00afa023          	sw	a0,0(t6)
   1b78c:	0e05                	addi	t3,t3,1
   1b78e:	0311                	addi	t1,t1,4
   1b790:	b73d                	j	1b6be <__subtf3+0x76e>
   1b792:	5b12                	lw	s6,36(sp)
   1b794:	5c22                	lw	s8,40(sp)
   1b796:	59b2                	lw	s3,44(sp)
   1b798:	1c088763          	beqz	a7,1b966 <__subtf3+0xa16>
   1b79c:	409b88b3          	sub	a7,s7,s1
   1b7a0:	e0c1                	bnez	s1,1b820 <__subtf3+0x8d0>
   1b7a2:	45d2                	lw	a1,20(sp)
   1b7a4:	4862                	lw	a6,24(sp)
   1b7a6:	46f2                	lw	a3,28(sp)
   1b7a8:	0105e733          	or	a4,a1,a6
   1b7ac:	8f55                	or	a4,a4,a3
   1b7ae:	8f5d                	or	a4,a4,a5
   1b7b0:	eb01                	bnez	a4,1b7c0 <__subtf3+0x870>
   1b7b2:	d822                	sw	s0,48(sp)
   1b7b4:	da5a                	sw	s6,52(sp)
   1b7b6:	dc62                	sw	s8,56(sp)
   1b7b8:	de4e                	sw	s3,60(sp)
   1b7ba:	84c6                	mv	s1,a7
   1b7bc:	8aca                	mv	s5,s2
   1b7be:	b0d5                	j	1b0a2 <__subtf3+0x152>
   1b7c0:	fff88313          	addi	t1,a7,-1
   1b7c4:	04031463          	bnez	t1,1b80c <__subtf3+0x8bc>
   1b7c8:	40f40733          	sub	a4,s0,a5
   1b7cc:	40bb0633          	sub	a2,s6,a1
   1b7d0:	00e437b3          	sltu	a5,s0,a4
   1b7d4:	00cb3533          	sltu	a0,s6,a2
   1b7d8:	8e1d                	sub	a2,a2,a5
   1b7da:	4781                	li	a5,0
   1b7dc:	00e47663          	bgeu	s0,a4,1b7e8 <__subtf3+0x898>
   1b7e0:	416585b3          	sub	a1,a1,s6
   1b7e4:	0015b793          	seqz	a5,a1
   1b7e8:	8fc9                	or	a5,a5,a0
   1b7ea:	410c05b3          	sub	a1,s8,a6
   1b7ee:	00bc3533          	sltu	a0,s8,a1
   1b7f2:	8d9d                	sub	a1,a1,a5
   1b7f4:	c789                	beqz	a5,1b7fe <__subtf3+0x8ae>
   1b7f6:	41880833          	sub	a6,a6,s8
   1b7fa:	00183313          	seqz	t1,a6
   1b7fe:	40d987b3          	sub	a5,s3,a3
   1b802:	00a366b3          	or	a3,t1,a0
   1b806:	8f95                	sub	a5,a5,a3
   1b808:	8aca                	mv	s5,s2
   1b80a:	b531                	j	1b616 <__subtf3+0x6c6>
   1b80c:	67a1                	lui	a5,0x8
   1b80e:	17fd                	addi	a5,a5,-1 # 7fff <exit-0x8095>
   1b810:	56f89663          	bne	a7,a5,1bd7c <__subtf3+0xe2c>
   1b814:	d822                	sw	s0,48(sp)
   1b816:	da5a                	sw	s6,52(sp)
   1b818:	dc62                	sw	s8,56(sp)
   1b81a:	de4e                	sw	s3,60(sp)
   1b81c:	8aca                	mv	s5,s2
   1b81e:	be25                	j	1b356 <__subtf3+0x406>
   1b820:	67a1                	lui	a5,0x8
   1b822:	17fd                	addi	a5,a5,-1 # 7fff <exit-0x8095>
   1b824:	fefb88e3          	beq	s7,a5,1b814 <__subtf3+0x8c4>
   1b828:	47f2                	lw	a5,28(sp)
   1b82a:	00080737          	lui	a4,0x80
   1b82e:	8fd9                	or	a5,a5,a4
   1b830:	ce3e                	sw	a5,28(sp)
   1b832:	07400793          	li	a5,116
   1b836:	1317c363          	blt	a5,a7,1b95c <__subtf3+0xa0c>
   1b83a:	02000793          	li	a5,32
   1b83e:	02f8c7b3          	div	a5,a7,a5
   1b842:	86b2                	mv	a3,a2
   1b844:	4481                	li	s1,0
   1b846:	4701                	li	a4,0
   1b848:	02f74663          	blt	a4,a5,1b874 <__subtf3+0x924>
   1b84c:	470d                	li	a4,3
   1b84e:	01f8f313          	andi	t1,a7,31
   1b852:	8f1d                	sub	a4,a4,a5
   1b854:	00279593          	slli	a1,a5,0x2
   1b858:	02031363          	bnez	t1,1b87e <__subtf3+0x92e>
   1b85c:	00b606b3          	add	a3,a2,a1
   1b860:	4294                	lw	a3,0(a3)
   1b862:	0305                	addi	t1,t1,1
   1b864:	c214                	sw	a3,0(a2)
   1b866:	0611                	addi	a2,a2,4
   1b868:	fe675ae3          	bge	a4,t1,1b85c <__subtf3+0x90c>
   1b86c:	4711                	li	a4,4
   1b86e:	40f707b3          	sub	a5,a4,a5
   1b872:	a899                	j	1b8c8 <__subtf3+0x978>
   1b874:	428c                	lw	a1,0(a3)
   1b876:	0705                	addi	a4,a4,1 # 80001 <__BSS_END__+0x615a5>
   1b878:	0691                	addi	a3,a3,4
   1b87a:	8ccd                	or	s1,s1,a1
   1b87c:	b7f1                	j	1b848 <__subtf3+0x8f8>
   1b87e:	02000813          	li	a6,32
   1b882:	0308e6b3          	rem	a3,a7,a6
   1b886:	40d80833          	sub	a6,a6,a3
   1b88a:	86be                	mv	a3,a5
   1b88c:	0007d363          	bgez	a5,1b892 <__subtf3+0x942>
   1b890:	4681                	li	a3,0
   1b892:	068a                	slli	a3,a3,0x2
   1b894:	04068693          	addi	a3,a3,64
   1b898:	968a                	add	a3,a3,sp
   1b89a:	fd06a683          	lw	a3,-48(a3)
   1b89e:	962e                	add	a2,a2,a1
   1b8a0:	4881                	li	a7,0
   1b8a2:	010696b3          	sll	a3,a3,a6
   1b8a6:	8cd5                	or	s1,s1,a3
   1b8a8:	40b005b3          	neg	a1,a1
   1b8ac:	08e8c863          	blt	a7,a4,1b93c <__subtf3+0x9ec>
   1b8b0:	4691                	li	a3,4
   1b8b2:	40f687b3          	sub	a5,a3,a5
   1b8b6:	46f2                	lw	a3,28(sp)
   1b8b8:	070a                	slli	a4,a4,0x2
   1b8ba:	04070713          	addi	a4,a4,64
   1b8be:	970a                	add	a4,a4,sp
   1b8c0:	0066d6b3          	srl	a3,a3,t1
   1b8c4:	fcd72823          	sw	a3,-48(a4)
   1b8c8:	0057a713          	slti	a4,a5,5
   1b8cc:	4601                	li	a2,0
   1b8ce:	c701                	beqz	a4,1b8d6 <__subtf3+0x986>
   1b8d0:	4611                	li	a2,4
   1b8d2:	8e1d                	sub	a2,a2,a5
   1b8d4:	060a                	slli	a2,a2,0x2
   1b8d6:	078a                	slli	a5,a5,0x2
   1b8d8:	953e                	add	a0,a0,a5
   1b8da:	4581                	li	a1,0
   1b8dc:	ffffb097          	auipc	ra,0xffffb
   1b8e0:	c4a080e7          	jalr	-950(ra) # 16526 <memset>
   1b8e4:	47c2                	lw	a5,16(sp)
   1b8e6:	00903733          	snez	a4,s1
   1b8ea:	8f5d                	or	a4,a4,a5
   1b8ec:	46d2                	lw	a3,20(sp)
   1b8ee:	c83a                	sw	a4,16(sp)
   1b8f0:	40e40733          	sub	a4,s0,a4
   1b8f4:	40db0633          	sub	a2,s6,a3
   1b8f8:	00e437b3          	sltu	a5,s0,a4
   1b8fc:	00cb35b3          	sltu	a1,s6,a2
   1b900:	8e1d                	sub	a2,a2,a5
   1b902:	4781                	li	a5,0
   1b904:	00e47663          	bgeu	s0,a4,1b910 <__subtf3+0x9c0>
   1b908:	416686b3          	sub	a3,a3,s6
   1b90c:	0016b793          	seqz	a5,a3
   1b910:	4562                	lw	a0,24(sp)
   1b912:	8fcd                	or	a5,a5,a1
   1b914:	4681                	li	a3,0
   1b916:	40ac05b3          	sub	a1,s8,a0
   1b91a:	00bc3833          	sltu	a6,s8,a1
   1b91e:	8d9d                	sub	a1,a1,a5
   1b920:	c789                	beqz	a5,1b92a <__subtf3+0x9da>
   1b922:	41850533          	sub	a0,a0,s8
   1b926:	00153693          	seqz	a3,a0
   1b92a:	47f2                	lw	a5,28(sp)
   1b92c:	0106e6b3          	or	a3,a3,a6
   1b930:	84de                	mv	s1,s7
   1b932:	40f987b3          	sub	a5,s3,a5
   1b936:	8f95                	sub	a5,a5,a3
   1b938:	8aca                	mv	s5,s2
   1b93a:	bd29                	j	1b754 <__subtf3+0x804>
   1b93c:	4214                	lw	a3,0(a2)
   1b93e:	00462e03          	lw	t3,4(a2)
   1b942:	00b60eb3          	add	t4,a2,a1
   1b946:	0066d6b3          	srl	a3,a3,t1
   1b94a:	010e1e33          	sll	t3,t3,a6
   1b94e:	01c6e6b3          	or	a3,a3,t3
   1b952:	00dea023          	sw	a3,0(t4)
   1b956:	0885                	addi	a7,a7,1
   1b958:	0611                	addi	a2,a2,4
   1b95a:	bf89                	j	1b8ac <__subtf3+0x95c>
   1b95c:	ce02                	sw	zero,28(sp)
   1b95e:	cc02                	sw	zero,24(sp)
   1b960:	ca02                	sw	zero,20(sp)
   1b962:	4705                	li	a4,1
   1b964:	b761                	j	1b8ec <__subtf3+0x99c>
   1b966:	00148593          	addi	a1,s1,1
   1b96a:	01159513          	slli	a0,a1,0x11
   1b96e:	8149                	srli	a0,a0,0x12
   1b970:	46d2                	lw	a3,20(sp)
   1b972:	4662                	lw	a2,24(sp)
   1b974:	4772                	lw	a4,28(sp)
   1b976:	6821                	lui	a6,0x8
   1b978:	14051263          	bnez	a0,1babc <__subtf3+0xb6c>
   1b97c:	018b6533          	or	a0,s6,s8
   1b980:	00c6e5b3          	or	a1,a3,a2
   1b984:	01356533          	or	a0,a0,s3
   1b988:	8dd9                	or	a1,a1,a4
   1b98a:	8d41                	or	a0,a0,s0
   1b98c:	8ddd                	or	a1,a1,a5
   1b98e:	e4f1                	bnez	s1,1ba5a <__subtf3+0xb0a>
   1b990:	e991                	bnez	a1,1b9a4 <__subtf3+0xa54>
   1b992:	d822                	sw	s0,48(sp)
   1b994:	da5a                	sw	s6,52(sp)
   1b996:	dc62                	sw	s8,56(sp)
   1b998:	de4e                	sw	s3,60(sp)
   1b99a:	8aca                	mv	s5,s2
   1b99c:	f0051363          	bnez	a0,1b0a2 <__subtf3+0x152>
   1b9a0:	4481                	li	s1,0
   1b9a2:	b665                	j	1b54a <__subtf3+0x5fa>
   1b9a4:	e511                	bnez	a0,1b9b0 <__subtf3+0xa60>
   1b9a6:	d83e                	sw	a5,48(sp)
   1b9a8:	da36                	sw	a3,52(sp)
   1b9aa:	dc32                	sw	a2,56(sp)
   1b9ac:	de3a                	sw	a4,60(sp)
   1b9ae:	b611                	j	1b4b2 <__subtf3+0x562>
   1b9b0:	40878533          	sub	a0,a5,s0
   1b9b4:	41668e33          	sub	t3,a3,s6
   1b9b8:	00a7b833          	sltu	a6,a5,a0
   1b9bc:	01c6b8b3          	sltu	a7,a3,t3
   1b9c0:	410e0833          	sub	a6,t3,a6
   1b9c4:	4581                	li	a1,0
   1b9c6:	00a7f463          	bgeu	a5,a0,1b9ce <__subtf3+0xa7e>
   1b9ca:	001e3593          	seqz	a1,t3
   1b9ce:	0115e5b3          	or	a1,a1,a7
   1b9d2:	418608b3          	sub	a7,a2,s8
   1b9d6:	01163f33          	sltu	t5,a2,a7
   1b9da:	40b88eb3          	sub	t4,a7,a1
   1b9de:	4301                	li	t1,0
   1b9e0:	c199                	beqz	a1,1b9e6 <__subtf3+0xa96>
   1b9e2:	0018b313          	seqz	t1,a7
   1b9e6:	01e36333          	or	t1,t1,t5
   1b9ea:	413705b3          	sub	a1,a4,s3
   1b9ee:	406585b3          	sub	a1,a1,t1
   1b9f2:	de2e                	sw	a1,60(sp)
   1b9f4:	dc76                	sw	t4,56(sp)
   1b9f6:	da42                	sw	a6,52(sp)
   1b9f8:	d82a                	sw	a0,48(sp)
   1b9fa:	00c59313          	slli	t1,a1,0xc
   1b9fe:	04035763          	bgez	t1,1ba4c <__subtf3+0xafc>
   1ba02:	40f407b3          	sub	a5,s0,a5
   1ba06:	40db06b3          	sub	a3,s6,a3
   1ba0a:	00f435b3          	sltu	a1,s0,a5
   1ba0e:	00db3b33          	sltu	s6,s6,a3
   1ba12:	8e8d                	sub	a3,a3,a1
   1ba14:	4581                	li	a1,0
   1ba16:	00f47463          	bgeu	s0,a5,1ba1e <__subtf3+0xace>
   1ba1a:	001e3593          	seqz	a1,t3
   1ba1e:	40cc0633          	sub	a2,s8,a2
   1ba22:	0165eb33          	or	s6,a1,s6
   1ba26:	00cc3c33          	sltu	s8,s8,a2
   1ba2a:	4501                	li	a0,0
   1ba2c:	41660633          	sub	a2,a2,s6
   1ba30:	000b0463          	beqz	s6,1ba38 <__subtf3+0xae8>
   1ba34:	0018b513          	seqz	a0,a7
   1ba38:	40e98733          	sub	a4,s3,a4
   1ba3c:	01856533          	or	a0,a0,s8
   1ba40:	8f09                	sub	a4,a4,a0
   1ba42:	de3a                	sw	a4,60(sp)
   1ba44:	dc32                	sw	a2,56(sp)
   1ba46:	da36                	sw	a3,52(sp)
   1ba48:	d83e                	sw	a5,48(sp)
   1ba4a:	bb8d                	j	1b7bc <__subtf3+0x86c>
   1ba4c:	01056533          	or	a0,a0,a6
   1ba50:	01d56533          	or	a0,a0,t4
   1ba54:	8d4d                	or	a0,a0,a1
   1ba56:	d529                	beqz	a0,1b9a0 <__subtf3+0xa50>
   1ba58:	bca9                	j	1b4b2 <__subtf3+0x562>
   1ba5a:	e99d                	bnez	a1,1ba90 <__subtf3+0xb40>
   1ba5c:	e10d                	bnez	a0,1ba7e <__subtf3+0xb2e>
   1ba5e:	de42                	sw	a6,60(sp)
   1ba60:	dc02                	sw	zero,56(sp)
   1ba62:	da02                	sw	zero,52(sp)
   1ba64:	d802                	sw	zero,48(sp)
   1ba66:	181c                	addi	a5,sp,48
   1ba68:	1050                	addi	a2,sp,36
   1ba6a:	47d8                	lw	a4,12(a5)
   1ba6c:	4794                	lw	a3,8(a5)
   1ba6e:	17f1                	addi	a5,a5,-4
   1ba70:	070e                	slli	a4,a4,0x3
   1ba72:	82f5                	srli	a3,a3,0x1d
   1ba74:	8f55                	or	a4,a4,a3
   1ba76:	cb98                	sw	a4,16(a5)
   1ba78:	fef619e3          	bne	a2,a5,1ba6a <__subtf3+0xb1a>
   1ba7c:	b4e9                	j	1b546 <__subtf3+0x5f6>
   1ba7e:	d822                	sw	s0,48(sp)
   1ba80:	da5a                	sw	s6,52(sp)
   1ba82:	dc62                	sw	s8,56(sp)
   1ba84:	de4e                	sw	s3,60(sp)
   1ba86:	8aca                	mv	s5,s2
   1ba88:	fff80493          	addi	s1,a6,-1 # 7fff <exit-0x8095>
   1ba8c:	e16ff06f          	j	1b0a2 <__subtf3+0x152>
   1ba90:	e511                	bnez	a0,1ba9c <__subtf3+0xb4c>
   1ba92:	d83e                	sw	a5,48(sp)
   1ba94:	da36                	sw	a3,52(sp)
   1ba96:	dc32                	sw	a2,56(sp)
   1ba98:	de3a                	sw	a4,60(sp)
   1ba9a:	b7fd                	j	1ba88 <__subtf3+0xb38>
   1ba9c:	de42                	sw	a6,60(sp)
   1ba9e:	dc02                	sw	zero,56(sp)
   1baa0:	da02                	sw	zero,52(sp)
   1baa2:	d802                	sw	zero,48(sp)
   1baa4:	181c                	addi	a5,sp,48
   1baa6:	1050                	addi	a2,sp,36
   1baa8:	47d8                	lw	a4,12(a5)
   1baaa:	4794                	lw	a3,8(a5)
   1baac:	17f1                	addi	a5,a5,-4
   1baae:	070e                	slli	a4,a4,0x3
   1bab0:	82f5                	srli	a3,a3,0x1d
   1bab2:	8f55                	or	a4,a4,a3
   1bab4:	cb98                	sw	a4,16(a5)
   1bab6:	fef619e3          	bne	a2,a5,1baa8 <__subtf3+0xb58>
   1baba:	b471                	j	1b546 <__subtf3+0x5f6>
   1babc:	40878533          	sub	a0,a5,s0
   1bac0:	41668eb3          	sub	t4,a3,s6
   1bac4:	00a7b833          	sltu	a6,a5,a0
   1bac8:	01d6b333          	sltu	t1,a3,t4
   1bacc:	410e8833          	sub	a6,t4,a6
   1bad0:	4581                	li	a1,0
   1bad2:	00a7f463          	bgeu	a5,a0,1bada <__subtf3+0xb8a>
   1bad6:	001eb593          	seqz	a1,t4
   1bada:	0065e5b3          	or	a1,a1,t1
   1bade:	41860333          	sub	t1,a2,s8
   1bae2:	00663fb3          	sltu	t6,a2,t1
   1bae6:	40b30f33          	sub	t5,t1,a1
   1baea:	4e01                	li	t3,0
   1baec:	c199                	beqz	a1,1baf2 <__subtf3+0xba2>
   1baee:	00133e13          	seqz	t3,t1
   1baf2:	01fe6e33          	or	t3,t3,t6
   1baf6:	413705b3          	sub	a1,a4,s3
   1bafa:	41c585b3          	sub	a1,a1,t3
   1bafe:	de2e                	sw	a1,60(sp)
   1bb00:	dc7a                	sw	t5,56(sp)
   1bb02:	da42                	sw	a6,52(sp)
   1bb04:	d82a                	sw	a0,48(sp)
   1bb06:	00c59e13          	slli	t3,a1,0xc
   1bb0a:	100e5463          	bgez	t3,1bc12 <__subtf3+0xcc2>
   1bb0e:	40f407b3          	sub	a5,s0,a5
   1bb12:	40db06b3          	sub	a3,s6,a3
   1bb16:	00f435b3          	sltu	a1,s0,a5
   1bb1a:	00db3b33          	sltu	s6,s6,a3
   1bb1e:	8e8d                	sub	a3,a3,a1
   1bb20:	4581                	li	a1,0
   1bb22:	00f47463          	bgeu	s0,a5,1bb2a <__subtf3+0xbda>
   1bb26:	001eb593          	seqz	a1,t4
   1bb2a:	40cc0633          	sub	a2,s8,a2
   1bb2e:	0165eb33          	or	s6,a1,s6
   1bb32:	00cc3c33          	sltu	s8,s8,a2
   1bb36:	41660633          	sub	a2,a2,s6
   1bb3a:	000b0463          	beqz	s6,1bb42 <__subtf3+0xbf2>
   1bb3e:	00133893          	seqz	a7,t1
   1bb42:	40e985b3          	sub	a1,s3,a4
   1bb46:	0188e733          	or	a4,a7,s8
   1bb4a:	40e58733          	sub	a4,a1,a4
   1bb4e:	de3a                	sw	a4,60(sp)
   1bb50:	dc32                	sw	a2,56(sp)
   1bb52:	da36                	sw	a3,52(sp)
   1bb54:	d83e                	sw	a5,48(sp)
   1bb56:	8aca                	mv	s5,s2
   1bb58:	5572                	lw	a0,60(sp)
   1bb5a:	c561                	beqz	a0,1bc22 <__subtf3+0xcd2>
   1bb5c:	ffff6097          	auipc	ra,0xffff6
   1bb60:	858080e7          	jalr	-1960(ra) # 113b4 <__clzsi2>
   1bb64:	1551                	addi	a0,a0,-12
   1bb66:	02000793          	li	a5,32
   1bb6a:	01f57813          	andi	a6,a0,31
   1bb6e:	02f54733          	div	a4,a0,a5
   1bb72:	0e080263          	beqz	a6,1bc56 <__subtf3+0xd06>
   1bb76:	03010313          	addi	t1,sp,48
   1bb7a:	02f566b3          	rem	a3,a0,a5
   1bb7e:	40d78633          	sub	a2,a5,a3
   1bb82:	57f1                	li	a5,-4
   1bb84:	02f707b3          	mul	a5,a4,a5
   1bb88:	00c78693          	addi	a3,a5,12
   1bb8c:	969a                	add	a3,a3,t1
   1bb8e:	40f007b3          	neg	a5,a5
   1bb92:	0ed31263          	bne	t1,a3,1bc76 <__subtf3+0xd26>
   1bb96:	fff70693          	addi	a3,a4,-1
   1bb9a:	070a                	slli	a4,a4,0x2
   1bb9c:	04070793          	addi	a5,a4,64
   1bba0:	00278733          	add	a4,a5,sp
   1bba4:	57c2                	lw	a5,48(sp)
   1bba6:	010797b3          	sll	a5,a5,a6
   1bbaa:	fef72823          	sw	a5,-16(a4)
   1bbae:	00168713          	addi	a4,a3,1
   1bbb2:	070a                	slli	a4,a4,0x2
   1bbb4:	1814                	addi	a3,sp,48
   1bbb6:	47a1                	li	a5,8
   1bbb8:	88b6                	mv	a7,a3
   1bbba:	00f76863          	bltu	a4,a5,1bbca <__subtf3+0xc7a>
   1bbbe:	0006a023          	sw	zero,0(a3)
   1bbc2:	0006a223          	sw	zero,4(a3)
   1bbc6:	1761                	addi	a4,a4,-8
   1bbc8:	1834                	addi	a3,sp,56
   1bbca:	4791                	li	a5,4
   1bbcc:	00f76463          	bltu	a4,a5,1bbd4 <__subtf3+0xc84>
   1bbd0:	0006a023          	sw	zero,0(a3)
   1bbd4:	16954263          	blt	a0,s1,1bd38 <__subtf3+0xde8>
   1bbd8:	8d05                	sub	a0,a0,s1
   1bbda:	0505                	addi	a0,a0,1
   1bbdc:	40555713          	srai	a4,a0,0x5
   1bbe0:	01f57793          	andi	a5,a0,31
   1bbe4:	85c6                	mv	a1,a7
   1bbe6:	8646                	mv	a2,a7
   1bbe8:	4301                	li	t1,0
   1bbea:	4681                	li	a3,0
   1bbec:	0ae69463          	bne	a3,a4,1bc94 <__subtf3+0xd44>
   1bbf0:	468d                	li	a3,3
   1bbf2:	8e99                	sub	a3,a3,a4
   1bbf4:	00271613          	slli	a2,a4,0x2
   1bbf8:	e7c5                	bnez	a5,1bca0 <__subtf3+0xd50>
   1bbfa:	00c58533          	add	a0,a1,a2
   1bbfe:	4108                	lw	a0,0(a0)
   1bc00:	0785                	addi	a5,a5,1
   1bc02:	c188                	sw	a0,0(a1)
   1bc04:	0591                	addi	a1,a1,4
   1bc06:	fef6dae3          	bge	a3,a5,1bbfa <__subtf3+0xcaa>
   1bc0a:	4791                	li	a5,4
   1bc0c:	40e78733          	sub	a4,a5,a4
   1bc10:	a8c1                	j	1bce0 <__subtf3+0xd90>
   1bc12:	01056533          	or	a0,a0,a6
   1bc16:	01e56533          	or	a0,a0,t5
   1bc1a:	8d4d                	or	a0,a0,a1
   1bc1c:	d80502e3          	beqz	a0,1b9a0 <__subtf3+0xa50>
   1bc20:	bf25                	j	1bb58 <__subtf3+0xc08>
   1bc22:	5562                	lw	a0,56(sp)
   1bc24:	c901                	beqz	a0,1bc34 <__subtf3+0xce4>
   1bc26:	ffff5097          	auipc	ra,0xffff5
   1bc2a:	78e080e7          	jalr	1934(ra) # 113b4 <__clzsi2>
   1bc2e:	02050513          	addi	a0,a0,32
   1bc32:	bf0d                	j	1bb64 <__subtf3+0xc14>
   1bc34:	5552                	lw	a0,52(sp)
   1bc36:	c901                	beqz	a0,1bc46 <__subtf3+0xcf6>
   1bc38:	ffff5097          	auipc	ra,0xffff5
   1bc3c:	77c080e7          	jalr	1916(ra) # 113b4 <__clzsi2>
   1bc40:	04050513          	addi	a0,a0,64
   1bc44:	b705                	j	1bb64 <__subtf3+0xc14>
   1bc46:	5542                	lw	a0,48(sp)
   1bc48:	ffff5097          	auipc	ra,0xffff5
   1bc4c:	76c080e7          	jalr	1900(ra) # 113b4 <__clzsi2>
   1bc50:	06050513          	addi	a0,a0,96
   1bc54:	bf01                	j	1bb64 <__subtf3+0xc14>
   1bc56:	5671                	li	a2,-4
   1bc58:	02c70633          	mul	a2,a4,a2
   1bc5c:	187c                	addi	a5,sp,60
   1bc5e:	468d                	li	a3,3
   1bc60:	00c785b3          	add	a1,a5,a2
   1bc64:	418c                	lw	a1,0(a1)
   1bc66:	16fd                	addi	a3,a3,-1
   1bc68:	17f1                	addi	a5,a5,-4
   1bc6a:	c3cc                	sw	a1,4(a5)
   1bc6c:	fee6dae3          	bge	a3,a4,1bc60 <__subtf3+0xd10>
   1bc70:	fff70693          	addi	a3,a4,-1
   1bc74:	bf2d                	j	1bbae <__subtf3+0xc5e>
   1bc76:	428c                	lw	a1,0(a3)
   1bc78:	ffc6a883          	lw	a7,-4(a3)
   1bc7c:	00f68e33          	add	t3,a3,a5
   1bc80:	010595b3          	sll	a1,a1,a6
   1bc84:	00c8d8b3          	srl	a7,a7,a2
   1bc88:	0115e5b3          	or	a1,a1,a7
   1bc8c:	00be2023          	sw	a1,0(t3)
   1bc90:	16f1                	addi	a3,a3,-4
   1bc92:	b701                	j	1bb92 <__subtf3+0xc42>
   1bc94:	4208                	lw	a0,0(a2)
   1bc96:	0685                	addi	a3,a3,1
   1bc98:	0611                	addi	a2,a2,4
   1bc9a:	00a36333          	or	t1,t1,a0
   1bc9e:	b7b9                	j	1bbec <__subtf3+0xc9c>
   1bca0:	04060593          	addi	a1,a2,64
   1bca4:	958a                	add	a1,a1,sp
   1bca6:	ff05a583          	lw	a1,-16(a1)
   1bcaa:	02000813          	li	a6,32
   1bcae:	40f80833          	sub	a6,a6,a5
   1bcb2:	010595b3          	sll	a1,a1,a6
   1bcb6:	00b36333          	or	t1,t1,a1
   1bcba:	4e01                	li	t3,0
   1bcbc:	00c885b3          	add	a1,a7,a2
   1bcc0:	40c00633          	neg	a2,a2
   1bcc4:	04de4a63          	blt	t3,a3,1bd18 <__subtf3+0xdc8>
   1bcc8:	4611                	li	a2,4
   1bcca:	40e60733          	sub	a4,a2,a4
   1bcce:	5672                	lw	a2,60(sp)
   1bcd0:	068a                	slli	a3,a3,0x2
   1bcd2:	04068693          	addi	a3,a3,64
   1bcd6:	968a                	add	a3,a3,sp
   1bcd8:	00f657b3          	srl	a5,a2,a5
   1bcdc:	fef6a823          	sw	a5,-16(a3)
   1bce0:	4691                	li	a3,4
   1bce2:	8e99                	sub	a3,a3,a4
   1bce4:	070a                	slli	a4,a4,0x2
   1bce6:	00e887b3          	add	a5,a7,a4
   1bcea:	00269713          	slli	a4,a3,0x2
   1bcee:	46a1                	li	a3,8
   1bcf0:	00d76863          	bltu	a4,a3,1bd00 <__subtf3+0xdb0>
   1bcf4:	0007a023          	sw	zero,0(a5)
   1bcf8:	0007a223          	sw	zero,4(a5)
   1bcfc:	1761                	addi	a4,a4,-8
   1bcfe:	07a1                	addi	a5,a5,8
   1bd00:	4691                	li	a3,4
   1bd02:	00d76463          	bltu	a4,a3,1bd0a <__subtf3+0xdba>
   1bd06:	0007a023          	sw	zero,0(a5)
   1bd0a:	5742                	lw	a4,48(sp)
   1bd0c:	006037b3          	snez	a5,t1
   1bd10:	8fd9                	or	a5,a5,a4
   1bd12:	d83e                	sw	a5,48(sp)
   1bd14:	f9eff06f          	j	1b4b2 <__subtf3+0x562>
   1bd18:	4188                	lw	a0,0(a1)
   1bd1a:	0045ae83          	lw	t4,4(a1)
   1bd1e:	00c58f33          	add	t5,a1,a2
   1bd22:	00f55533          	srl	a0,a0,a5
   1bd26:	010e9eb3          	sll	t4,t4,a6
   1bd2a:	01d56533          	or	a0,a0,t4
   1bd2e:	00af2023          	sw	a0,0(t5)
   1bd32:	0e05                	addi	t3,t3,1
   1bd34:	0591                	addi	a1,a1,4
   1bd36:	b779                	j	1bcc4 <__subtf3+0xd74>
   1bd38:	57f2                	lw	a5,60(sp)
   1bd3a:	fff80737          	lui	a4,0xfff80
   1bd3e:	177d                	addi	a4,a4,-1 # fff7ffff <__BSS_END__+0xfff615a3>
   1bd40:	8c89                	sub	s1,s1,a0
   1bd42:	8ff9                	and	a5,a5,a4
   1bd44:	fbcff06f          	j	1b500 <__subtf3+0x5b0>
   1bd48:	de02                	sw	zero,60(sp)
   1bd4a:	dc02                	sw	zero,56(sp)
   1bd4c:	da02                	sw	zero,52(sp)
   1bd4e:	d802                	sw	zero,48(sp)
   1bd50:	ba4ff06f          	j	1b0f4 <__subtf3+0x1a4>
   1bd54:	07400713          	li	a4,116
   1bd58:	c2c75a63          	bge	a4,a2,1b18c <__subtf3+0x23c>
   1bd5c:	d602                	sw	zero,44(sp)
   1bd5e:	d402                	sw	zero,40(sp)
   1bd60:	d202                	sw	zero,36(sp)
   1bd62:	4705                	li	a4,1
   1bd64:	cdaff06f          	j	1b23e <__subtf3+0x2ee>
   1bd68:	07400793          	li	a5,116
   1bd6c:	e0b7d863          	bge	a5,a1,1b37c <__subtf3+0x42c>
   1bd70:	ce02                	sw	zero,28(sp)
   1bd72:	cc02                	sw	zero,24(sp)
   1bd74:	ca02                	sw	zero,20(sp)
   1bd76:	4785                	li	a5,1
   1bd78:	ebaff06f          	j	1b432 <__subtf3+0x4e2>
   1bd7c:	07400793          	li	a5,116
   1bd80:	bc67cee3          	blt	a5,t1,1b95c <__subtf3+0xa0c>
   1bd84:	889a                	mv	a7,t1
   1bd86:	bc55                	j	1b83a <__subtf3+0x8ea>

0001bd88 <__unordtf2>:
   1bd88:	4118                	lw	a4,0(a0)
   1bd8a:	00452e83          	lw	t4,4(a0)
   1bd8e:	00852e03          	lw	t3,8(a0)
   1bd92:	4548                	lw	a0,12(a0)
   1bd94:	45d0                	lw	a2,12(a1)
   1bd96:	66a1                	lui	a3,0x8
   1bd98:	16fd                	addi	a3,a3,-1 # 7fff <exit-0x8095>
   1bd9a:	01055813          	srli	a6,a0,0x10
   1bd9e:	419c                	lw	a5,0(a1)
   1bda0:	0045a303          	lw	t1,4(a1)
   1bda4:	0085a883          	lw	a7,8(a1)
   1bda8:	00d87833          	and	a6,a6,a3
   1bdac:	01065593          	srli	a1,a2,0x10
   1bdb0:	1141                	addi	sp,sp,-16
   1bdb2:	8df5                	and	a1,a1,a3
   1bdb4:	00d81b63          	bne	a6,a3,1bdca <__unordtf2+0x42>
   1bdb8:	01d76733          	or	a4,a4,t4
   1bdbc:	0542                	slli	a0,a0,0x10
   1bdbe:	8141                	srli	a0,a0,0x10
   1bdc0:	01c76733          	or	a4,a4,t3
   1bdc4:	8f49                	or	a4,a4,a0
   1bdc6:	4505                	li	a0,1
   1bdc8:	ef19                	bnez	a4,1bde6 <__unordtf2+0x5e>
   1bdca:	6721                	lui	a4,0x8
   1bdcc:	177d                	addi	a4,a4,-1 # 7fff <exit-0x8095>
   1bdce:	4501                	li	a0,0
   1bdd0:	00e59b63          	bne	a1,a4,1bde6 <__unordtf2+0x5e>
   1bdd4:	0067e533          	or	a0,a5,t1
   1bdd8:	0642                	slli	a2,a2,0x10
   1bdda:	01156533          	or	a0,a0,a7
   1bdde:	8241                	srli	a2,a2,0x10
   1bde0:	8d51                	or	a0,a0,a2
   1bde2:	00a03533          	snez	a0,a0
   1bde6:	0141                	addi	sp,sp,16
   1bde8:	8082                	ret

0001bdea <__fixtfsi>:
   1bdea:	4118                	lw	a4,0(a0)
   1bdec:	4154                	lw	a3,4(a0)
   1bdee:	455c                	lw	a5,12(a0)
   1bdf0:	450c                	lw	a1,8(a0)
   1bdf2:	1101                	addi	sp,sp,-32
   1bdf4:	c03a                	sw	a4,0(sp)
   1bdf6:	c236                	sw	a3,4(sp)
   1bdf8:	c83a                	sw	a4,16(sp)
   1bdfa:	00179693          	slli	a3,a5,0x1
   1bdfe:	6711                	lui	a4,0x4
   1be00:	c42e                	sw	a1,8(sp)
   1be02:	c63e                	sw	a5,12(sp)
   1be04:	cc2e                	sw	a1,24(sp)
   1be06:	82c5                	srli	a3,a3,0x11
   1be08:	1779                	addi	a4,a4,-2 # 3ffe <exit-0xc096>
   1be0a:	4501                	li	a0,0
   1be0c:	00d75c63          	bge	a4,a3,1be24 <__fixtfsi+0x3a>
   1be10:	6711                	lui	a4,0x4
   1be12:	0775                	addi	a4,a4,29 # 401d <exit-0xc077>
   1be14:	01f7d813          	srli	a6,a5,0x1f
   1be18:	00d75863          	bge	a4,a3,1be28 <__fixtfsi+0x3e>
   1be1c:	80000537          	lui	a0,0x80000
   1be20:	157d                	addi	a0,a0,-1 # 7fffffff <__BSS_END__+0x7ffe15a3>
   1be22:	9542                	add	a0,a0,a6
   1be24:	6105                	addi	sp,sp,32
   1be26:	8082                	ret
   1be28:	07c2                	slli	a5,a5,0x10
   1be2a:	6741                	lui	a4,0x10
   1be2c:	83c1                	srli	a5,a5,0x10
   1be2e:	8fd9                	or	a5,a5,a4
   1be30:	6711                	lui	a4,0x4
   1be32:	06f70713          	addi	a4,a4,111 # 406f <exit-0xc025>
   1be36:	8f15                	sub	a4,a4,a3
   1be38:	40575613          	srai	a2,a4,0x5
   1be3c:	ce3e                	sw	a5,28(sp)
   1be3e:	8b7d                	andi	a4,a4,31
   1be40:	ef19                	bnez	a4,1be5e <__fixtfsi+0x74>
   1be42:	060a                	slli	a2,a2,0x2
   1be44:	02060793          	addi	a5,a2,32
   1be48:	00278633          	add	a2,a5,sp
   1be4c:	ff062783          	lw	a5,-16(a2)
   1be50:	c83e                	sw	a5,16(sp)
   1be52:	4542                	lw	a0,16(sp)
   1be54:	fc0808e3          	beqz	a6,1be24 <__fixtfsi+0x3a>
   1be58:	40a00533          	neg	a0,a0
   1be5c:	b7e1                	j	1be24 <__fixtfsi+0x3a>
   1be5e:	4509                	li	a0,2
   1be60:	4681                	li	a3,0
   1be62:	00a61c63          	bne	a2,a0,1be7a <__fixtfsi+0x90>
   1be66:	02000693          	li	a3,32
   1be6a:	8e99                	sub	a3,a3,a4
   1be6c:	00d796b3          	sll	a3,a5,a3
   1be70:	00e5d5b3          	srl	a1,a1,a4
   1be74:	8ecd                	or	a3,a3,a1
   1be76:	c836                	sw	a3,16(sp)
   1be78:	4685                	li	a3,1
   1be7a:	068a                	slli	a3,a3,0x2
   1be7c:	02068693          	addi	a3,a3,32
   1be80:	968a                	add	a3,a3,sp
   1be82:	00e7d7b3          	srl	a5,a5,a4
   1be86:	fef6a823          	sw	a5,-16(a3)
   1be8a:	b7e1                	j	1be52 <__fixtfsi+0x68>

0001be8c <__floatsitf>:
   1be8c:	7179                	addi	sp,sp,-48
   1be8e:	d226                	sw	s1,36(sp)
   1be90:	d606                	sw	ra,44(sp)
   1be92:	d422                	sw	s0,40(sp)
   1be94:	d04a                	sw	s2,32(sp)
   1be96:	84aa                	mv	s1,a0
   1be98:	c1e1                	beqz	a1,1bf58 <__floatsitf+0xcc>
   1be9a:	41f5d793          	srai	a5,a1,0x1f
   1be9e:	00b7c433          	xor	s0,a5,a1
   1bea2:	8c1d                	sub	s0,s0,a5
   1bea4:	8522                	mv	a0,s0
   1bea6:	01f5d913          	srli	s2,a1,0x1f
   1beaa:	ffff5097          	auipc	ra,0xffff5
   1beae:	50a080e7          	jalr	1290(ra) # 113b4 <__clzsi2>
   1beb2:	6711                	lui	a4,0x4
   1beb4:	0779                	addi	a4,a4,30 # 401e <exit-0xc076>
   1beb6:	05150793          	addi	a5,a0,81
   1beba:	40a70633          	sub	a2,a4,a0
   1bebe:	c822                	sw	s0,16(sp)
   1bec0:	4057d713          	srai	a4,a5,0x5
   1bec4:	ca02                	sw	zero,20(sp)
   1bec6:	cc02                	sw	zero,24(sp)
   1bec8:	ce02                	sw	zero,28(sp)
   1beca:	8bfd                	andi	a5,a5,31
   1becc:	c78d                	beqz	a5,1bef6 <__floatsitf+0x6a>
   1bece:	4689                	li	a3,2
   1bed0:	08d71263          	bne	a4,a3,1bf54 <__floatsitf+0xc8>
   1bed4:	02000693          	li	a3,32
   1bed8:	8e9d                	sub	a3,a3,a5
   1beda:	00d456b3          	srl	a3,s0,a3
   1bede:	ce36                	sw	a3,28(sp)
   1bee0:	fff70693          	addi	a3,a4,-1
   1bee4:	070a                	slli	a4,a4,0x2
   1bee6:	02070713          	addi	a4,a4,32
   1beea:	970a                	add	a4,a4,sp
   1beec:	00f41433          	sll	s0,s0,a5
   1bef0:	fe872823          	sw	s0,-16(a4)
   1bef4:	a005                	j	1bf14 <__floatsitf+0x88>
   1bef6:	478d                	li	a5,3
   1bef8:	8f99                	sub	a5,a5,a4
   1befa:	078a                	slli	a5,a5,0x2
   1befc:	02078793          	addi	a5,a5,32
   1bf00:	978a                	add	a5,a5,sp
   1bf02:	ff07a783          	lw	a5,-16(a5)
   1bf06:	4689                	li	a3,2
   1bf08:	ce3e                	sw	a5,28(sp)
   1bf0a:	4789                	li	a5,2
   1bf0c:	00f71463          	bne	a4,a5,1bf14 <__floatsitf+0x88>
   1bf10:	cc22                	sw	s0,24(sp)
   1bf12:	4685                	li	a3,1
   1bf14:	068a                	slli	a3,a3,0x2
   1bf16:	c802                	sw	zero,16(sp)
   1bf18:	ca02                	sw	zero,20(sp)
   1bf1a:	16f1                	addi	a3,a3,-4
   1bf1c:	4791                	li	a5,4
   1bf1e:	00f6e363          	bltu	a3,a5,1bf24 <__floatsitf+0x98>
   1bf22:	cc02                	sw	zero,24(sp)
   1bf24:	85ca                	mv	a1,s2
   1bf26:	47f2                	lw	a5,28(sp)
   1bf28:	00f59413          	slli	s0,a1,0xf
   1bf2c:	8c51                	or	s0,s0,a2
   1bf2e:	00811723          	sh	s0,14(sp)
   1bf32:	00f11623          	sh	a5,12(sp)
   1bf36:	4542                	lw	a0,16(sp)
   1bf38:	46d2                	lw	a3,20(sp)
   1bf3a:	4762                	lw	a4,24(sp)
   1bf3c:	47b2                	lw	a5,12(sp)
   1bf3e:	50b2                	lw	ra,44(sp)
   1bf40:	5422                	lw	s0,40(sp)
   1bf42:	c088                	sw	a0,0(s1)
   1bf44:	c0d4                	sw	a3,4(s1)
   1bf46:	c498                	sw	a4,8(s1)
   1bf48:	c4dc                	sw	a5,12(s1)
   1bf4a:	5902                	lw	s2,32(sp)
   1bf4c:	8526                	mv	a0,s1
   1bf4e:	5492                	lw	s1,36(sp)
   1bf50:	6145                	addi	sp,sp,48
   1bf52:	8082                	ret
   1bf54:	470d                	li	a4,3
   1bf56:	b769                	j	1bee0 <__floatsitf+0x54>
   1bf58:	ce02                	sw	zero,28(sp)
   1bf5a:	cc02                	sw	zero,24(sp)
   1bf5c:	ca02                	sw	zero,20(sp)
   1bf5e:	c802                	sw	zero,16(sp)
   1bf60:	4601                	li	a2,0
   1bf62:	b7d1                	j	1bf26 <__floatsitf+0x9a>

0001bf64 <__extenddftf2>:
   1bf64:	01465713          	srli	a4,a2,0x14
   1bf68:	00c61793          	slli	a5,a2,0xc
   1bf6c:	7ff77713          	andi	a4,a4,2047
   1bf70:	7179                	addi	sp,sp,-48
   1bf72:	83b1                	srli	a5,a5,0xc
   1bf74:	00170693          	addi	a3,a4,1
   1bf78:	d422                	sw	s0,40(sp)
   1bf7a:	d226                	sw	s1,36(sp)
   1bf7c:	d04a                	sw	s2,32(sp)
   1bf7e:	d606                	sw	ra,44(sp)
   1bf80:	c82e                	sw	a1,16(sp)
   1bf82:	ca3e                	sw	a5,20(sp)
   1bf84:	ce02                	sw	zero,28(sp)
   1bf86:	cc02                	sw	zero,24(sp)
   1bf88:	7fe6f693          	andi	a3,a3,2046
   1bf8c:	892a                	mv	s2,a0
   1bf8e:	842e                	mv	s0,a1
   1bf90:	01f65493          	srli	s1,a2,0x1f
   1bf94:	cab9                	beqz	a3,1bfea <__extenddftf2+0x86>
   1bf96:	6691                	lui	a3,0x4
   1bf98:	c0068693          	addi	a3,a3,-1024 # 3c00 <exit-0xc494>
   1bf9c:	9736                	add	a4,a4,a3
   1bf9e:	0047d693          	srli	a3,a5,0x4
   1bfa2:	ce36                	sw	a3,28(sp)
   1bfa4:	07f2                	slli	a5,a5,0x1c
   1bfa6:	0045d693          	srli	a3,a1,0x4
   1bfaa:	8fd5                	or	a5,a5,a3
   1bfac:	01c59413          	slli	s0,a1,0x1c
   1bfb0:	cc3e                	sw	a5,24(sp)
   1bfb2:	ca22                	sw	s0,20(sp)
   1bfb4:	c802                	sw	zero,16(sp)
   1bfb6:	47f2                	lw	a5,28(sp)
   1bfb8:	04be                	slli	s1,s1,0xf
   1bfba:	8cd9                	or	s1,s1,a4
   1bfbc:	00911723          	sh	s1,14(sp)
   1bfc0:	00f11623          	sh	a5,12(sp)
   1bfc4:	45c2                	lw	a1,16(sp)
   1bfc6:	4652                	lw	a2,20(sp)
   1bfc8:	46e2                	lw	a3,24(sp)
   1bfca:	47b2                	lw	a5,12(sp)
   1bfcc:	50b2                	lw	ra,44(sp)
   1bfce:	5422                	lw	s0,40(sp)
   1bfd0:	00b92023          	sw	a1,0(s2) # f000 <exit-0x1094>
   1bfd4:	00c92223          	sw	a2,4(s2)
   1bfd8:	00d92423          	sw	a3,8(s2)
   1bfdc:	00f92623          	sw	a5,12(s2)
   1bfe0:	5492                	lw	s1,36(sp)
   1bfe2:	854a                	mv	a0,s2
   1bfe4:	5902                	lw	s2,32(sp)
   1bfe6:	6145                	addi	sp,sp,48
   1bfe8:	8082                	ret
   1bfea:	00b7e533          	or	a0,a5,a1
   1bfee:	e769                	bnez	a4,1c0b8 <__extenddftf2+0x154>
   1bff0:	d179                	beqz	a0,1bfb6 <__extenddftf2+0x52>
   1bff2:	c7b9                	beqz	a5,1c040 <__extenddftf2+0xdc>
   1bff4:	853e                	mv	a0,a5
   1bff6:	ffff5097          	auipc	ra,0xffff5
   1bffa:	3be080e7          	jalr	958(ra) # 113b4 <__clzsi2>
   1bffe:	03150693          	addi	a3,a0,49
   1c002:	4056d793          	srai	a5,a3,0x5
   1c006:	8afd                	andi	a3,a3,31
   1c008:	c2b9                	beqz	a3,1c04e <__extenddftf2+0xea>
   1c00a:	5671                	li	a2,-4
   1c00c:	02c78633          	mul	a2,a5,a2
   1c010:	02000813          	li	a6,32
   1c014:	01010313          	addi	t1,sp,16
   1c018:	40d80833          	sub	a6,a6,a3
   1c01c:	00c60713          	addi	a4,a2,12
   1c020:	971a                	add	a4,a4,t1
   1c022:	40c00633          	neg	a2,a2
   1c026:	06e31a63          	bne	t1,a4,1c09a <__extenddftf2+0x136>
   1c02a:	fff78713          	addi	a4,a5,-1
   1c02e:	078a                	slli	a5,a5,0x2
   1c030:	02078793          	addi	a5,a5,32
   1c034:	978a                	add	a5,a5,sp
   1c036:	00d416b3          	sll	a3,s0,a3
   1c03a:	fed7a823          	sw	a3,-16(a5)
   1c03e:	a03d                	j	1c06c <__extenddftf2+0x108>
   1c040:	ffff5097          	auipc	ra,0xffff5
   1c044:	374080e7          	jalr	884(ra) # 113b4 <__clzsi2>
   1c048:	02050513          	addi	a0,a0,32
   1c04c:	bf4d                	j	1bffe <__extenddftf2+0x9a>
   1c04e:	5671                	li	a2,-4
   1c050:	02c78633          	mul	a2,a5,a2
   1c054:	0878                	addi	a4,sp,28
   1c056:	468d                	li	a3,3
   1c058:	00c705b3          	add	a1,a4,a2
   1c05c:	418c                	lw	a1,0(a1)
   1c05e:	16fd                	addi	a3,a3,-1
   1c060:	1771                	addi	a4,a4,-4
   1c062:	c34c                	sw	a1,4(a4)
   1c064:	fef6dae3          	bge	a3,a5,1c058 <__extenddftf2+0xf4>
   1c068:	fff78713          	addi	a4,a5,-1
   1c06c:	00170793          	addi	a5,a4,1
   1c070:	078a                	slli	a5,a5,0x2
   1c072:	46a1                	li	a3,8
   1c074:	0818                	addi	a4,sp,16
   1c076:	00d7e863          	bltu	a5,a3,1c086 <__extenddftf2+0x122>
   1c07a:	00072023          	sw	zero,0(a4)
   1c07e:	00072223          	sw	zero,4(a4)
   1c082:	17e1                	addi	a5,a5,-8
   1c084:	0838                	addi	a4,sp,24
   1c086:	4691                	li	a3,4
   1c088:	00d7e463          	bltu	a5,a3,1c090 <__extenddftf2+0x12c>
   1c08c:	00072023          	sw	zero,0(a4)
   1c090:	6711                	lui	a4,0x4
   1c092:	c0c70713          	addi	a4,a4,-1012 # 3c0c <exit-0xc488>
   1c096:	8f09                	sub	a4,a4,a0
   1c098:	bf39                	j	1bfb6 <__extenddftf2+0x52>
   1c09a:	430c                	lw	a1,0(a4)
   1c09c:	ffc72883          	lw	a7,-4(a4)
   1c0a0:	00c70e33          	add	t3,a4,a2
   1c0a4:	00d595b3          	sll	a1,a1,a3
   1c0a8:	0108d8b3          	srl	a7,a7,a6
   1c0ac:	0115e5b3          	or	a1,a1,a7
   1c0b0:	00be2023          	sw	a1,0(t3)
   1c0b4:	1771                	addi	a4,a4,-4
   1c0b6:	bf85                	j	1c026 <__extenddftf2+0xc2>
   1c0b8:	cd19                	beqz	a0,1c0d6 <__extenddftf2+0x172>
   1c0ba:	01c79713          	slli	a4,a5,0x1c
   1c0be:	0045d693          	srli	a3,a1,0x4
   1c0c2:	8f55                	or	a4,a4,a3
   1c0c4:	cc3a                	sw	a4,24(sp)
   1c0c6:	8391                	srli	a5,a5,0x4
   1c0c8:	6721                	lui	a4,0x8
   1c0ca:	01c59413          	slli	s0,a1,0x1c
   1c0ce:	8fd9                	or	a5,a5,a4
   1c0d0:	ca22                	sw	s0,20(sp)
   1c0d2:	c802                	sw	zero,16(sp)
   1c0d4:	ce3e                	sw	a5,28(sp)
   1c0d6:	6721                	lui	a4,0x8
   1c0d8:	177d                	addi	a4,a4,-1 # 7fff <exit-0x8095>
   1c0da:	bdf1                	j	1bfb6 <__extenddftf2+0x52>
