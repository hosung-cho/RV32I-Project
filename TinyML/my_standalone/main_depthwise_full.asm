
main_depthwise.elf:     file format elf32-littleriscv


Disassembly of section .text:

000100b4 <exit>:
   100b4:	ff010113          	addi	sp,sp,-16
   100b8:	00000593          	li	a1,0
   100bc:	00812423          	sw	s0,8(sp)
   100c0:	00112623          	sw	ra,12(sp)
   100c4:	00050413          	mv	s0,a0
   100c8:	110080ef          	jal	181d8 <__call_exitprocs>
   100cc:	89c1a783          	lw	a5,-1892(gp) # 1c774 <__stdio_exit_handler>
   100d0:	00078463          	beqz	a5,100d8 <exit+0x24>
   100d4:	000780e7          	jalr	a5
   100d8:	00040513          	mv	a0,s0
   100dc:	2090a0ef          	jal	1aae4 <_exit>

000100e0 <main>:
   100e0:	f8010113          	addi	sp,sp,-128
   100e4:	07212823          	sw	s2,112(sp)
   100e8:	00002637          	lui	a2,0x2
   100ec:	0001f937          	lui	s2,0x1f
   100f0:	07312623          	sw	s3,108(sp)
   100f4:	f4060613          	addi	a2,a2,-192 # 1f40 <exit-0xe174>
   100f8:	00100593          	li	a1,1
   100fc:	c3090513          	addi	a0,s2,-976 # 1ec30 <input_data>
   10100:	06112e23          	sw	ra,124(sp)
   10104:	8d818993          	addi	s3,gp,-1832 # 1c7b0 <filter_data>
   10108:	07612023          	sw	s6,96(sp)
   1010c:	06812c23          	sw	s0,120(sp)
   10110:	06912a23          	sw	s1,116(sp)
   10114:	07412423          	sw	s4,104(sp)
   10118:	07512223          	sw	s5,100(sp)
   1011c:	05712e23          	sw	s7,92(sp)
   10120:	05812c23          	sw	s8,88(sp)
   10124:	05912a23          	sw	s9,84(sp)
   10128:	05a12823          	sw	s10,80(sp)
   1012c:	05b12623          	sw	s11,76(sp)
   10130:	619070ef          	jal	17f48 <memset>
   10134:	24000613          	li	a2,576
   10138:	00200593          	li	a1,2
   1013c:	00098513          	mv	a0,s3
   10140:	609070ef          	jal	17f48 <memset>
   10144:	b1818513          	addi	a0,gp,-1256 # 1c9f0 <bias_data>
   10148:	10000613          	li	a2,256
   1014c:	00000593          	li	a1,0
   10150:	5f9070ef          	jal	17f48 <memset>
   10154:	34098b13          	addi	s6,s3,832
   10158:	000b0793          	mv	a5,s6
   1015c:	44098693          	addi	a3,s3,1088
   10160:	40000737          	lui	a4,0x40000
   10164:	00e7a023          	sw	a4,0(a5)
   10168:	00478793          	addi	a5,a5,4
   1016c:	fed79ce3          	bne	a5,a3,10164 <main+0x84>
   10170:	44098a93          	addi	s5,s3,1088
   10174:	000a8513          	mv	a0,s5
   10178:	10000613          	li	a2,256
   1017c:	0ff00593          	li	a1,255
   10180:	5c9070ef          	jal	17f48 <memset>
   10184:	0001d7b7          	lui	a5,0x1d
   10188:	cf078793          	addi	a5,a5,-784 # 1ccf0 <output_data>
   1018c:	00000413          	li	s0,0
   10190:	00f12823          	sw	a5,16(sp)
   10194:	00000c13          	li	s8,0
   10198:	04100a13          	li	s4,65
   1019c:	00040493          	mv	s1,s0
   101a0:	c3090c93          	addi	s9,s2,-976
   101a4:	00000413          	li	s0,0
   101a8:	fe748793          	addi	a5,s1,-25
   101ac:	000c8d13          	mv	s10,s9
   101b0:	00300f93          	li	t6,3
   101b4:	00040c93          	mv	s9,s0
   101b8:	00f12423          	sw	a5,8(sp)
   101bc:	000c0713          	mv	a4,s8
   101c0:	00649413          	slli	s0,s1,0x6
   101c4:	040007b7          	lui	a5,0x4000
   101c8:	00178793          	addi	a5,a5,1 # 4000001 <__BSS_END__+0x3fdf1a1>
   101cc:	00f12a23          	sw	a5,20(sp)
   101d0:	b1818c13          	addi	s8,gp,-1256 # 1c9f0 <bias_data>
   101d4:	01012783          	lw	a5,16(sp)
   101d8:	00912c23          	sw	s1,24(sp)
   101dc:	000c0b93          	mv	s7,s8
   101e0:	008787b3          	add	a5,a5,s0
   101e4:	00f12623          	sw	a5,12(sp)
   101e8:	00040793          	mv	a5,s0
   101ec:	00070d93          	mv	s11,a4
   101f0:	00000493          	li	s1,0
   101f4:	000f8913          	mv	s2,t6
   101f8:	008d0433          	add	s0,s10,s0
   101fc:	00078c13          	mv	s8,a5
   10200:	00812803          	lw	a6,8(sp)
   10204:	00998633          	add	a2,s3,s1
   10208:	000d8693          	mv	a3,s11
   1020c:	00000713          	li	a4,0
   10210:	00000e93          	li	t4,0
   10214:	00681793          	slli	a5,a6,0x6
   10218:	008787b3          	add	a5,a5,s0
   1021c:	00060313          	mv	t1,a2
   10220:	000c8893          	mv	a7,s9
   10224:	00da5e33          	srl	t3,s4,a3
   10228:	0140006f          	j	1023c <main+0x15c>
   1022c:	00188893          	addi	a7,a7,1
   10230:	04078793          	addi	a5,a5,64
   10234:	04030313          	addi	t1,t1,64
   10238:	09288263          	beq	a7,s2,102bc <main+0x1dc>
   1023c:	01412583          	lw	a1,20(sp)
   10240:	0115d5b3          	srl	a1,a1,a7
   10244:	00be65b3          	or	a1,t3,a1
   10248:	01f59513          	slli	a0,a1,0x1f
   1024c:	01f55593          	srli	a1,a0,0x1f
   10250:	fc059ee3          	bnez	a1,1022c <main+0x14c>
   10254:	00030583          	lb	a1,0(t1)
   10258:	fc078503          	lb	a0,-64(a5)
   1025c:	03c12e23          	sw	t3,60(sp)
   10260:	03d12c23          	sw	t4,56(sp)
   10264:	03112a23          	sw	a7,52(sp)
   10268:	03012823          	sw	a6,48(sp)
   1026c:	02d12623          	sw	a3,44(sp)
   10270:	02e12423          	sw	a4,40(sp)
   10274:	02c12223          	sw	a2,36(sp)
   10278:	02612023          	sw	t1,32(sp)
   1027c:	00f12e23          	sw	a5,28(sp)
   10280:	42d040ef          	jal	14eac <__mulsi3>
   10284:	03412883          	lw	a7,52(sp)
   10288:	03812e83          	lw	t4,56(sp)
   1028c:	02012303          	lw	t1,32(sp)
   10290:	01c12783          	lw	a5,28(sp)
   10294:	00188893          	addi	a7,a7,1
   10298:	03c12e03          	lw	t3,60(sp)
   1029c:	03012803          	lw	a6,48(sp)
   102a0:	02c12683          	lw	a3,44(sp)
   102a4:	02812703          	lw	a4,40(sp)
   102a8:	02412603          	lw	a2,36(sp)
   102ac:	00ae8eb3          	add	t4,t4,a0
   102b0:	04078793          	addi	a5,a5,64
   102b4:	04030313          	addi	t1,t1,64
   102b8:	f92892e3          	bne	a7,s2,1023c <main+0x15c>
   102bc:	00370713          	addi	a4,a4,3 # 40000003 <__BSS_END__+0x3ffdf1a3>
   102c0:	00900793          	li	a5,9
   102c4:	01980813          	addi	a6,a6,25
   102c8:	0c060613          	addi	a2,a2,192
   102cc:	00168693          	addi	a3,a3,1
   102d0:	f4f712e3          	bne	a4,a5,10214 <main+0x134>
   102d4:	00249713          	slli	a4,s1,0x2
   102d8:	00ea86b3          	add	a3,s5,a4
   102dc:	000ba503          	lw	a0,0(s7)
   102e0:	00eb0733          	add	a4,s6,a4
   102e4:	00072583          	lw	a1,0(a4)
   102e8:	0006a603          	lw	a2,0(a3)
   102ec:	00ae8533          	add	a0,t4,a0
   102f0:	194000ef          	jal	10484 <_ZN6tflite29MultiplyByQuantizedMultiplierElli>
   102f4:	00c12783          	lw	a5,12(sp)
   102f8:	00978733          	add	a4,a5,s1
   102fc:	f8000793          	li	a5,-128
   10300:	00f55463          	bge	a0,a5,10308 <main+0x228>
   10304:	00078513          	mv	a0,a5
   10308:	07f00793          	li	a5,127
   1030c:	00a7d463          	bge	a5,a0,10314 <main+0x234>
   10310:	00078513          	mv	a0,a5
   10314:	00a70023          	sb	a0,0(a4)
   10318:	00148493          	addi	s1,s1,1
   1031c:	04000793          	li	a5,64
   10320:	004b8b93          	addi	s7,s7,4
   10324:	00140413          	addi	s0,s0,1
   10328:	ecf49ce3          	bne	s1,a5,10200 <main+0x120>
   1032c:	001c8c93          	addi	s9,s9,1
   10330:	01900793          	li	a5,25
   10334:	01812483          	lw	s1,24(sp)
   10338:	000d8713          	mv	a4,s11
   1033c:	040c0413          	addi	s0,s8,64
   10340:	00190f93          	addi	t6,s2,1
   10344:	e8fc90e3          	bne	s9,a5,101c4 <main+0xe4>
   10348:	001d8c13          	addi	s8,s11,1
   1034c:	00500793          	li	a5,5
   10350:	01948493          	addi	s1,s1,25
   10354:	9c0d0c93          	addi	s9,s10,-1600
   10358:	e4fc16e3          	bne	s8,a5,101a4 <main+0xc4>
   1035c:	01012783          	lw	a5,16(sp)
   10360:	07c12083          	lw	ra,124(sp)
   10364:	07812403          	lw	s0,120(sp)
   10368:	00078503          	lb	a0,0(a5)
   1036c:	07412483          	lw	s1,116(sp)
   10370:	07012903          	lw	s2,112(sp)
   10374:	06c12983          	lw	s3,108(sp)
   10378:	06812a03          	lw	s4,104(sp)
   1037c:	06412a83          	lw	s5,100(sp)
   10380:	06012b03          	lw	s6,96(sp)
   10384:	05c12b83          	lw	s7,92(sp)
   10388:	05812c03          	lw	s8,88(sp)
   1038c:	05412c83          	lw	s9,84(sp)
   10390:	05012d03          	lw	s10,80(sp)
   10394:	04c12d83          	lw	s11,76(sp)
   10398:	08010113          	addi	sp,sp,128
   1039c:	00008067          	ret

000103a0 <register_fini>:
   103a0:	00000793          	li	a5,0
   103a4:	00078863          	beqz	a5,103b4 <register_fini+0x14>
   103a8:	0001a537          	lui	a0,0x1a
   103ac:	bbc50513          	addi	a0,a0,-1092 # 19bbc <__libc_fini_array>
   103b0:	7790706f          	j	18328 <atexit>
   103b4:	00008067          	ret

000103b8 <_start>:
   103b8:	0000d197          	auipc	gp,0xd
   103bc:	b2018193          	addi	gp,gp,-1248 # 1ced8 <__global_pointer$>
   103c0:	00000513          	li	a0,0
   103c4:	00050463          	beqz	a0,103cc <_start+0x14>
   103c8:	01751073          	csrw	jvt,a0
   103cc:	0000c517          	auipc	a0,0xc
   103d0:	3a850513          	addi	a0,a0,936 # 1c774 <__stdio_exit_handler>
   103d4:	00011617          	auipc	a2,0x11
   103d8:	a8c60613          	addi	a2,a2,-1396 # 20e60 <__BSS_END__>
   103dc:	40a60633          	sub	a2,a2,a0
   103e0:	00000593          	li	a1,0
   103e4:	365070ef          	jal	17f48 <memset>
   103e8:	00008517          	auipc	a0,0x8
   103ec:	f4050513          	addi	a0,a0,-192 # 18328 <atexit>
   103f0:	00050863          	beqz	a0,10400 <_start+0x48>
   103f4:	00009517          	auipc	a0,0x9
   103f8:	7c850513          	addi	a0,a0,1992 # 19bbc <__libc_fini_array>
   103fc:	72d070ef          	jal	18328 <atexit>
   10400:	18d070ef          	jal	17d8c <__libc_init_array>
   10404:	00012503          	lw	a0,0(sp)
   10408:	00410593          	addi	a1,sp,4
   1040c:	00251613          	slli	a2,a0,0x2
   10410:	00460613          	addi	a2,a2,4
   10414:	00b60633          	add	a2,a2,a1
   10418:	cc9ff0ef          	jal	100e0 <main>
   1041c:	c99ff06f          	j	100b4 <exit>

00010420 <__do_global_dtors_aux>:
   10420:	ff010113          	addi	sp,sp,-16
   10424:	00812423          	sw	s0,8(sp)
   10428:	8bc1c783          	lbu	a5,-1860(gp) # 1c794 <completed.1>
   1042c:	00112623          	sw	ra,12(sp)
   10430:	02079263          	bnez	a5,10454 <__do_global_dtors_aux+0x34>
   10434:	00000793          	li	a5,0
   10438:	00078a63          	beqz	a5,1044c <__do_global_dtors_aux+0x2c>
   1043c:	0001b537          	lui	a0,0x1b
   10440:	12c50513          	addi	a0,a0,300 # 1b12c <__EH_FRAME_BEGIN__>
   10444:	00000097          	auipc	ra,0x0
   10448:	000000e7          	jalr	zero # 0 <exit-0x100b4>
   1044c:	00100793          	li	a5,1
   10450:	8af18e23          	sb	a5,-1860(gp) # 1c794 <completed.1>
   10454:	00c12083          	lw	ra,12(sp)
   10458:	00812403          	lw	s0,8(sp)
   1045c:	01010113          	addi	sp,sp,16
   10460:	00008067          	ret

00010464 <frame_dummy>:
   10464:	00000793          	li	a5,0
   10468:	00078c63          	beqz	a5,10480 <frame_dummy+0x1c>
   1046c:	0001b537          	lui	a0,0x1b
   10470:	8c018593          	addi	a1,gp,-1856 # 1c798 <object.0>
   10474:	12c50513          	addi	a0,a0,300 # 1b12c <__EH_FRAME_BEGIN__>
   10478:	00000317          	auipc	t1,0x0
   1047c:	00000067          	jr	zero # 0 <exit-0x100b4>
   10480:	00008067          	ret

00010484 <_ZN6tflite29MultiplyByQuantizedMultiplierElli>:
   10484:	fff64793          	not	a5,a2
   10488:	41f7d793          	srai	a5,a5,0x1f
   1048c:	00f677b3          	and	a5,a2,a5
   10490:	ff010113          	addi	sp,sp,-16
   10494:	00f51533          	sll	a0,a0,a5
   10498:	800007b7          	lui	a5,0x80000
   1049c:	00812423          	sw	s0,8(sp)
   104a0:	00912223          	sw	s1,4(sp)
   104a4:	00060413          	mv	s0,a2
   104a8:	40b504b3          	sub	s1,a0,a1
   104ac:	00f507b3          	add	a5,a0,a5
   104b0:	00058613          	mv	a2,a1
   104b4:	0017b793          	seqz	a5,a5
   104b8:	fff40713          	addi	a4,s0,-1
   104bc:	0014b493          	seqz	s1,s1
   104c0:	01212023          	sw	s2,0(sp)
   104c4:	00f4f4b3          	and	s1,s1,a5
   104c8:	40800933          	neg	s2,s0
   104cc:	41f75793          	srai	a5,a4,0x1f
   104d0:	41f55593          	srai	a1,a0,0x1f
   104d4:	41f65693          	srai	a3,a2,0x1f
   104d8:	00112623          	sw	ra,12(sp)
   104dc:	00f97933          	and	s2,s2,a5
   104e0:	1f1040ef          	jal	14ed0 <__muldi3>
   104e4:	0805ce63          	bltz	a1,10580 <_ZN6tflite29MultiplyByQuantizedMultiplierElli+0xfc>
   104e8:	40000737          	lui	a4,0x40000
   104ec:	00000793          	li	a5,0
   104f0:	0a049063          	bnez	s1,10590 <_ZN6tflite29MultiplyByQuantizedMultiplierElli+0x10c>
   104f4:	fe100693          	li	a3,-31
   104f8:	0cd44463          	blt	s0,a3,105c0 <_ZN6tflite29MultiplyByQuantizedMultiplierElli+0x13c>
   104fc:	00a70733          	add	a4,a4,a0
   10500:	00a73533          	sltu	a0,a4,a0
   10504:	00b787b3          	add	a5,a5,a1
   10508:	00f50533          	add	a0,a0,a5
   1050c:	41f55793          	srai	a5,a0,0x1f
   10510:	00179793          	slli	a5,a5,0x1
   10514:	0017d793          	srli	a5,a5,0x1
   10518:	00e78733          	add	a4,a5,a4
   1051c:	00f737b3          	sltu	a5,a4,a5
   10520:	00a787b3          	add	a5,a5,a0
   10524:	01f75713          	srli	a4,a4,0x1f
   10528:	00179793          	slli	a5,a5,0x1
   1052c:	00e787b3          	add	a5,a5,a4
   10530:	fe090713          	addi	a4,s2,-32
   10534:	00000513          	li	a0,0
   10538:	02074e63          	bltz	a4,10574 <_ZN6tflite29MultiplyByQuantizedMultiplierElli+0xf0>
   1053c:	fff50513          	addi	a0,a0,-1
   10540:	40155693          	srai	a3,a0,0x1
   10544:	01f7d713          	srli	a4,a5,0x1f
   10548:	00a7f533          	and	a0,a5,a0
   1054c:	00d70733          	add	a4,a4,a3
   10550:	00c12083          	lw	ra,12(sp)
   10554:	00812403          	lw	s0,8(sp)
   10558:	4127d7b3          	sra	a5,a5,s2
   1055c:	00a72533          	slt	a0,a4,a0
   10560:	00412483          	lw	s1,4(sp)
   10564:	00012903          	lw	s2,0(sp)
   10568:	00a78533          	add	a0,a5,a0
   1056c:	01010113          	addi	sp,sp,16
   10570:	00008067          	ret
   10574:	00100513          	li	a0,1
   10578:	01251533          	sll	a0,a0,s2
   1057c:	fc1ff06f          	j	1053c <_ZN6tflite29MultiplyByQuantizedMultiplierElli+0xb8>
   10580:	c0000737          	lui	a4,0xc0000
   10584:	00170713          	addi	a4,a4,1 # c0000001 <__BSS_END__+0xbffdf1a1>
   10588:	fff00793          	li	a5,-1
   1058c:	f60484e3          	beqz	s1,104f4 <_ZN6tflite29MultiplyByQuantizedMultiplierElli+0x70>
   10590:	fe100793          	li	a5,-31
   10594:	02f44663          	blt	s0,a5,105c0 <_ZN6tflite29MultiplyByQuantizedMultiplierElli+0x13c>
   10598:	fe090793          	addi	a5,s2,-32
   1059c:	00000513          	li	a0,0
   105a0:	0007d663          	bgez	a5,105ac <_ZN6tflite29MultiplyByQuantizedMultiplierElli+0x128>
   105a4:	00100513          	li	a0,1
   105a8:	01251533          	sll	a0,a0,s2
   105ac:	fff50513          	addi	a0,a0,-1
   105b0:	800007b7          	lui	a5,0x80000
   105b4:	40155713          	srai	a4,a0,0x1
   105b8:	fff78793          	addi	a5,a5,-1 # 7fffffff <__BSS_END__+0x7ffdf19f>
   105bc:	f95ff06f          	j	10550 <_ZN6tflite29MultiplyByQuantizedMultiplierElli+0xcc>
   105c0:	0001b6b7          	lui	a3,0x1b
   105c4:	0001b637          	lui	a2,0x1b
   105c8:	0001b537          	lui	a0,0x1b
   105cc:	ae868693          	addi	a3,a3,-1304 # 1aae8 <_exit+0x4>
   105d0:	af860613          	addi	a2,a2,-1288 # 1aaf8 <_exit+0x14>
   105d4:	b5450513          	addi	a0,a0,-1196 # 1ab54 <_exit+0x70>
   105d8:	16700593          	li	a1,359
   105dc:	311040ef          	jal	150ec <__assert_func>

000105e0 <_ZN6tflite29MultiplyByQuantizedMultiplierExli>:
   105e0:	ff010113          	addi	sp,sp,-16
   105e4:	00112623          	sw	ra,12(sp)
   105e8:	00812423          	sw	s0,8(sp)
   105ec:	12064e63          	bltz	a2,10728 <_ZN6tflite29MultiplyByQuantizedMultiplierExli+0x148>
   105f0:	01f68793          	addi	a5,a3,31
   105f4:	02600713          	li	a4,38
   105f8:	00068413          	mv	s0,a3
   105fc:	10f76663          	bltu	a4,a5,10708 <_ZN6tflite29MultiplyByQuantizedMultiplierExli+0x128>
   10600:	000087b7          	lui	a5,0x8
   10604:	00f586b3          	add	a3,a1,a5
   10608:	00010737          	lui	a4,0x10
   1060c:	0ce6fe63          	bgeu	a3,a4,106e8 <_ZN6tflite29MultiplyByQuantizedMultiplierExli+0x108>
   10610:	7fff0737          	lui	a4,0x7fff0
   10614:	06e64063          	blt	a2,a4,10674 <_ZN6tflite29MultiplyByQuantizedMultiplierExli+0x94>
   10618:	fff78613          	addi	a2,a5,-1 # 7fff <exit-0x80b5>
   1061c:	00000693          	li	a3,0
   10620:	0b1040ef          	jal	14ed0 <__muldi3>
   10624:	00e00713          	li	a4,14
   10628:	40870733          	sub	a4,a4,s0
   1062c:	fe070793          	addi	a5,a4,-32 # 7ffeffe0 <__BSS_END__+0x7ffcf180>
   10630:	0607c263          	bltz	a5,10694 <_ZN6tflite29MultiplyByQuantizedMultiplierExli+0xb4>
   10634:	00100713          	li	a4,1
   10638:	00f71733          	sll	a4,a4,a5
   1063c:	00f00693          	li	a3,15
   10640:	00000793          	li	a5,0
   10644:	00a78533          	add	a0,a5,a0
   10648:	408686b3          	sub	a3,a3,s0
   1064c:	00f537b3          	sltu	a5,a0,a5
   10650:	00b70733          	add	a4,a4,a1
   10654:	fe068613          	addi	a2,a3,-32
   10658:	00e787b3          	add	a5,a5,a4
   1065c:	06064263          	bltz	a2,106c0 <_ZN6tflite29MultiplyByQuantizedMultiplierExli+0xe0>
   10660:	00c12083          	lw	ra,12(sp)
   10664:	00812403          	lw	s0,8(sp)
   10668:	40c7d533          	sra	a0,a5,a2
   1066c:	01010113          	addi	sp,sp,16
   10670:	00008067          	ret
   10674:	00f606b3          	add	a3,a2,a5
   10678:	4106d613          	srai	a2,a3,0x10
   1067c:	41f6d693          	srai	a3,a3,0x1f
   10680:	051040ef          	jal	14ed0 <__muldi3>
   10684:	00e00713          	li	a4,14
   10688:	40870733          	sub	a4,a4,s0
   1068c:	fe070793          	addi	a5,a4,-32
   10690:	fa07d2e3          	bgez	a5,10634 <_ZN6tflite29MultiplyByQuantizedMultiplierExli+0x54>
   10694:	00100793          	li	a5,1
   10698:	00e797b3          	sll	a5,a5,a4
   1069c:	00f00693          	li	a3,15
   106a0:	00000713          	li	a4,0
   106a4:	00a78533          	add	a0,a5,a0
   106a8:	408686b3          	sub	a3,a3,s0
   106ac:	00f537b3          	sltu	a5,a0,a5
   106b0:	00b70733          	add	a4,a4,a1
   106b4:	fe068613          	addi	a2,a3,-32
   106b8:	00e787b3          	add	a5,a5,a4
   106bc:	fa0652e3          	bgez	a2,10660 <_ZN6tflite29MultiplyByQuantizedMultiplierExli+0x80>
   106c0:	00c12083          	lw	ra,12(sp)
   106c4:	00812403          	lw	s0,8(sp)
   106c8:	01f00713          	li	a4,31
   106cc:	00179793          	slli	a5,a5,0x1
   106d0:	40d70733          	sub	a4,a4,a3
   106d4:	00d55533          	srl	a0,a0,a3
   106d8:	00e797b3          	sll	a5,a5,a4
   106dc:	00a78533          	add	a0,a5,a0
   106e0:	01010113          	addi	sp,sp,16
   106e4:	00008067          	ret
   106e8:	0001b6b7          	lui	a3,0x1b
   106ec:	0001b637          	lui	a2,0x1b
   106f0:	0001b537          	lui	a0,0x1b
   106f4:	c5468693          	addi	a3,a3,-940 # 1ac54 <_exit+0x170>
   106f8:	bc060613          	addi	a2,a2,-1088 # 1abc0 <_exit+0xdc>
   106fc:	c0850513          	addi	a0,a0,-1016 # 1ac08 <_exit+0x124>
   10700:	05a00593          	li	a1,90
   10704:	1e9040ef          	jal	150ec <__assert_func>
   10708:	0001b6b7          	lui	a3,0x1b
   1070c:	0001b637          	lui	a2,0x1b
   10710:	0001b537          	lui	a0,0x1b
   10714:	c3868693          	addi	a3,a3,-968 # 1ac38 <_exit+0x154>
   10718:	bc060613          	addi	a2,a2,-1088 # 1abc0 <_exit+0xdc>
   1071c:	c0850513          	addi	a0,a0,-1016 # 1ac08 <_exit+0x124>
   10720:	05900593          	li	a1,89
   10724:	1c9040ef          	jal	150ec <__assert_func>
   10728:	0001b6b7          	lui	a3,0x1b
   1072c:	0001b637          	lui	a2,0x1b
   10730:	0001b537          	lui	a0,0x1b
   10734:	ba468693          	addi	a3,a3,-1116 # 1aba4 <_exit+0xc0>
   10738:	bc060613          	addi	a2,a2,-1088 # 1abc0 <_exit+0xdc>
   1073c:	c0850513          	addi	a0,a0,-1016 # 1ac08 <_exit+0x124>
   10740:	05800593          	li	a1,88
   10744:	1a9040ef          	jal	150ec <__assert_func>

00010748 <_ZN6tflite18QuantizeMultiplierEdPlPi.part.0>:
   10748:	ff010113          	addi	sp,sp,-16
   1074c:	00912223          	sw	s1,4(sp)
   10750:	00060493          	mv	s1,a2
   10754:	00068613          	mv	a2,a3
   10758:	00112623          	sw	ra,12(sp)
   1075c:	00812423          	sw	s0,8(sp)
   10760:	00068413          	mv	s0,a3
   10764:	18c010ef          	jal	118f0 <frexp>
   10768:	0001c7b7          	lui	a5,0x1c
   1076c:	6d87a603          	lw	a2,1752(a5) # 1c6d8 <__SDATA_BEGIN__>
   10770:	6dc7a683          	lw	a3,1756(a5)
   10774:	1dd020ef          	jal	13150 <__muldf3>
   10778:	2cc010ef          	jal	11a44 <round>
   1077c:	18c030ef          	jal	13908 <__fixdfdi>
   10780:	04b04c63          	bgtz	a1,107d8 <_ZN6tflite18QuantizeMultiplierEdPlPi.part.0+0x90>
   10784:	04058663          	beqz	a1,107d0 <_ZN6tflite18QuantizeMultiplierEdPlPi.part.0+0x88>
   10788:	80000737          	lui	a4,0x80000
   1078c:	00042783          	lw	a5,0(s0)
   10790:	02e50663          	beq	a0,a4,107bc <_ZN6tflite18QuantizeMultiplierEdPlPi.part.0+0x74>
   10794:	fe100713          	li	a4,-31
   10798:	00e7d663          	bge	a5,a4,107a4 <_ZN6tflite18QuantizeMultiplierEdPlPi.part.0+0x5c>
   1079c:	00042023          	sw	zero,0(s0)
   107a0:	00000513          	li	a0,0
   107a4:	00c12083          	lw	ra,12(sp)
   107a8:	00812403          	lw	s0,8(sp)
   107ac:	00a4a023          	sw	a0,0(s1)
   107b0:	00412483          	lw	s1,4(sp)
   107b4:	01010113          	addi	sp,sp,16
   107b8:	00008067          	ret
   107bc:	fc059ce3          	bnez	a1,10794 <_ZN6tflite18QuantizeMultiplierEdPlPi.part.0+0x4c>
   107c0:	00178793          	addi	a5,a5,1
   107c4:	00f42023          	sw	a5,0(s0)
   107c8:	40000537          	lui	a0,0x40000
   107cc:	fc9ff06f          	j	10794 <_ZN6tflite18QuantizeMultiplierEdPlPi.part.0+0x4c>
   107d0:	800007b7          	lui	a5,0x80000
   107d4:	faa7fae3          	bgeu	a5,a0,10788 <_ZN6tflite18QuantizeMultiplierEdPlPi.part.0+0x40>
   107d8:	0fd040ef          	jal	150d4 <abort>

000107dc <_ZN6tflite18QuantizeMultiplierEdPlPi>:
   107dc:	fe010113          	addi	sp,sp,-32
   107e0:	00812c23          	sw	s0,24(sp)
   107e4:	00912a23          	sw	s1,20(sp)
   107e8:	00060413          	mv	s0,a2
   107ec:	00068493          	mv	s1,a3
   107f0:	00000613          	li	a2,0
   107f4:	00000693          	li	a3,0
   107f8:	01212823          	sw	s2,16(sp)
   107fc:	01312623          	sw	s3,12(sp)
   10800:	00112e23          	sw	ra,28(sp)
   10804:	00050913          	mv	s2,a0
   10808:	00058993          	mv	s3,a1
   1080c:	710020ef          	jal	12f1c <__eqdf2>
   10810:	02051463          	bnez	a0,10838 <_ZN6tflite18QuantizeMultiplierEdPlPi+0x5c>
   10814:	00042023          	sw	zero,0(s0)
   10818:	01c12083          	lw	ra,28(sp)
   1081c:	01812403          	lw	s0,24(sp)
   10820:	0004a023          	sw	zero,0(s1)
   10824:	01012903          	lw	s2,16(sp)
   10828:	01412483          	lw	s1,20(sp)
   1082c:	00c12983          	lw	s3,12(sp)
   10830:	02010113          	addi	sp,sp,32
   10834:	00008067          	ret
   10838:	00040613          	mv	a2,s0
   1083c:	01812403          	lw	s0,24(sp)
   10840:	01c12083          	lw	ra,28(sp)
   10844:	00090513          	mv	a0,s2
   10848:	00098593          	mv	a1,s3
   1084c:	01012903          	lw	s2,16(sp)
   10850:	00c12983          	lw	s3,12(sp)
   10854:	00048693          	mv	a3,s1
   10858:	01412483          	lw	s1,20(sp)
   1085c:	02010113          	addi	sp,sp,32
   10860:	ee9ff06f          	j	10748 <_ZN6tflite18QuantizeMultiplierEdPlPi.part.0>

00010864 <_ZN6tflite32QuantizeMultiplierGreaterThanOneEdPlPi>:
   10864:	fe010113          	addi	sp,sp,-32
   10868:	00812c23          	sw	s0,24(sp)
   1086c:	00912a23          	sw	s1,20(sp)
   10870:	00068413          	mv	s0,a3
   10874:	00060493          	mv	s1,a2
   10878:	80c1a683          	lw	a3,-2036(gp) # 1c6e4 <__SDATA_BEGIN__+0xc>
   1087c:	8081a603          	lw	a2,-2040(gp) # 1c6e0 <__SDATA_BEGIN__+0x8>
   10880:	01212823          	sw	s2,16(sp)
   10884:	01312623          	sw	s3,12(sp)
   10888:	00112e23          	sw	ra,28(sp)
   1088c:	00050913          	mv	s2,a0
   10890:	00058993          	mv	s3,a1
   10894:	70c020ef          	jal	12fa0 <__gedf2>
   10898:	02a05e63          	blez	a0,108d4 <_ZN6tflite32QuantizeMultiplierGreaterThanOneEdPlPi+0x70>
   1089c:	00090513          	mv	a0,s2
   108a0:	00098593          	mv	a1,s3
   108a4:	00048613          	mv	a2,s1
   108a8:	00040693          	mv	a3,s0
   108ac:	e9dff0ef          	jal	10748 <_ZN6tflite18QuantizeMultiplierEdPlPi.part.0>
   108b0:	00042783          	lw	a5,0(s0)
   108b4:	0207c063          	bltz	a5,108d4 <_ZN6tflite32QuantizeMultiplierGreaterThanOneEdPlPi+0x70>
   108b8:	01c12083          	lw	ra,28(sp)
   108bc:	01812403          	lw	s0,24(sp)
   108c0:	01412483          	lw	s1,20(sp)
   108c4:	01012903          	lw	s2,16(sp)
   108c8:	00c12983          	lw	s3,12(sp)
   108cc:	02010113          	addi	sp,sp,32
   108d0:	00008067          	ret
   108d4:	001040ef          	jal	150d4 <abort>

000108d8 <_ZN6tflite35QuantizeMultiplierSmallerThanOneExpEdPlPi>:
   108d8:	fd010113          	addi	sp,sp,-48
   108dc:	03212023          	sw	s2,32(sp)
   108e0:	01312e23          	sw	s3,28(sp)
   108e4:	00060913          	mv	s2,a2
   108e8:	00068993          	mv	s3,a3
   108ec:	8081a603          	lw	a2,-2040(gp) # 1c6e0 <__SDATA_BEGIN__+0x8>
   108f0:	80c1a683          	lw	a3,-2036(gp) # 1c6e4 <__SDATA_BEGIN__+0xc>
   108f4:	02812423          	sw	s0,40(sp)
   108f8:	02912223          	sw	s1,36(sp)
   108fc:	02112623          	sw	ra,44(sp)
   10900:	00050413          	mv	s0,a0
   10904:	00058493          	mv	s1,a1
   10908:	770020ef          	jal	13078 <__ledf2>
   1090c:	04055c63          	bgez	a0,10964 <_ZN6tflite35QuantizeMultiplierSmallerThanOneExpEdPlPi+0x8c>
   10910:	00000613          	li	a2,0
   10914:	00000693          	li	a3,0
   10918:	00040513          	mv	a0,s0
   1091c:	00048593          	mv	a1,s1
   10920:	680020ef          	jal	12fa0 <__gedf2>
   10924:	04a05063          	blez	a0,10964 <_ZN6tflite35QuantizeMultiplierSmallerThanOneExpEdPlPi+0x8c>
   10928:	00040513          	mv	a0,s0
   1092c:	00048593          	mv	a1,s1
   10930:	00090613          	mv	a2,s2
   10934:	00c10693          	addi	a3,sp,12
   10938:	e11ff0ef          	jal	10748 <_ZN6tflite18QuantizeMultiplierEdPlPi.part.0>
   1093c:	00c12783          	lw	a5,12(sp)
   10940:	02f04263          	bgtz	a5,10964 <_ZN6tflite35QuantizeMultiplierSmallerThanOneExpEdPlPi+0x8c>
   10944:	02c12083          	lw	ra,44(sp)
   10948:	02812403          	lw	s0,40(sp)
   1094c:	00f9a023          	sw	a5,0(s3)
   10950:	02412483          	lw	s1,36(sp)
   10954:	02012903          	lw	s2,32(sp)
   10958:	01c12983          	lw	s3,28(sp)
   1095c:	03010113          	addi	sp,sp,48
   10960:	00008067          	ret
   10964:	770040ef          	jal	150d4 <abort>

00010968 <_ZN6tflite12IntegerFrExpEdPi>:
   10968:	800007b7          	lui	a5,0x80000
   1096c:	fff78793          	addi	a5,a5,-1 # 7fffffff <__BSS_END__+0x7ffdf19f>
   10970:	00b7f733          	and	a4,a5,a1
   10974:	00a76733          	or	a4,a4,a0
   10978:	00058813          	mv	a6,a1
   1097c:	08070a63          	beqz	a4,10a10 <_ZN6tflite12IntegerFrExpEdPi+0xa8>
   10980:	0145d693          	srli	a3,a1,0x14
   10984:	7ff6f693          	andi	a3,a3,2047
   10988:	7ff00713          	li	a4,2047
   1098c:	04e68a63          	beq	a3,a4,109e0 <_ZN6tflite12IntegerFrExpEdPi+0x78>
   10990:	00a59593          	slli	a1,a1,0xa
   10994:	01655713          	srli	a4,a0,0x16
   10998:	400007b7          	lui	a5,0x40000
   1099c:	00a51513          	slli	a0,a0,0xa
   109a0:	00e58733          	add	a4,a1,a4
   109a4:	fff78893          	addi	a7,a5,-1 # 3fffffff <__BSS_END__+0x3ffdf19f>
   109a8:	00a55513          	srli	a0,a0,0xa
   109ac:	002005b7          	lui	a1,0x200
   109b0:	c0268693          	addi	a3,a3,-1022
   109b4:	01177733          	and	a4,a4,a7
   109b8:	06a5e663          	bltu	a1,a0,10a24 <_ZN6tflite12IntegerFrExpEdPi+0xbc>
   109bc:	00f70533          	add	a0,a4,a5
   109c0:	00e535b3          	sltu	a1,a0,a4
   109c4:	00085a63          	bgez	a6,109d8 <_ZN6tflite12IntegerFrExpEdPi+0x70>
   109c8:	00a037b3          	snez	a5,a0
   109cc:	40b005b3          	neg	a1,a1
   109d0:	40f585b3          	sub	a1,a1,a5
   109d4:	40a00533          	neg	a0,a0
   109d8:	00d62023          	sw	a3,0(a2)
   109dc:	00008067          	ret
   109e0:	ffc00737          	lui	a4,0xffc00
   109e4:	00c59693          	slli	a3,a1,0xc
   109e8:	00a77733          	and	a4,a4,a0
   109ec:	00c6d693          	srli	a3,a3,0xc
   109f0:	00d76733          	or	a4,a4,a3
   109f4:	04071263          	bnez	a4,10a38 <_ZN6tflite12IntegerFrExpEdPi+0xd0>
   109f8:	41f5d513          	srai	a0,a1,0x1f
   109fc:	00078693          	mv	a3,a5
   10a00:	00f545b3          	xor	a1,a0,a5
   10a04:	00d62023          	sw	a3,0(a2)
   10a08:	fff54513          	not	a0,a0
   10a0c:	00008067          	ret
   10a10:	00000693          	li	a3,0
   10a14:	00000513          	li	a0,0
   10a18:	00000593          	li	a1,0
   10a1c:	00d62023          	sw	a3,0(a2)
   10a20:	00008067          	ret
   10a24:	40000537          	lui	a0,0x40000
   10a28:	00150513          	addi	a0,a0,1 # 40000001 <__BSS_END__+0x3ffdf1a1>
   10a2c:	00a70533          	add	a0,a4,a0
   10a30:	00e535b3          	sltu	a1,a0,a4
   10a34:	f91ff06f          	j	109c4 <_ZN6tflite12IntegerFrExpEdPi+0x5c>
   10a38:	00078693          	mv	a3,a5
   10a3c:	00000513          	li	a0,0
   10a40:	00000593          	li	a1,0
   10a44:	f95ff06f          	j	109d8 <_ZN6tflite12IntegerFrExpEdPi+0x70>

00010a48 <_ZN6tflite26DoubleFromFractionAndShiftExi>:
   10a48:	800007b7          	lui	a5,0x80000
   10a4c:	fff78793          	addi	a5,a5,-1 # 7fffffff <__BSS_END__+0x7ffdf19f>
   10a50:	10f60463          	beq	a2,a5,10b58 <_ZN6tflite26DoubleFromFractionAndShiftExi+0x110>
   10a54:	00b566b3          	or	a3,a0,a1
   10a58:	00000713          	li	a4,0
   10a5c:	00000793          	li	a5,0
   10a60:	0a068c63          	beqz	a3,10b18 <_ZN6tflite26DoubleFromFractionAndShiftExi+0xd0>
   10a64:	41f5d713          	srai	a4,a1,0x1f
   10a68:	00a74533          	xor	a0,a4,a0
   10a6c:	40e506b3          	sub	a3,a0,a4
   10a70:	00b747b3          	xor	a5,a4,a1
   10a74:	00d53533          	sltu	a0,a0,a3
   10a78:	40e787b3          	sub	a5,a5,a4
   10a7c:	40a787b3          	sub	a5,a5,a0
   10a80:	fff60613          	addi	a2,a2,-1
   10a84:	00068513          	mv	a0,a3
   10a88:	41f65713          	srai	a4,a2,0x1f
   10a8c:	0af04263          	bgtz	a5,10b30 <_ZN6tflite26DoubleFromFractionAndShiftExi+0xe8>
   10a90:	12078863          	beqz	a5,10bc0 <_ZN6tflite26DoubleFromFractionAndShiftExi+0x178>
   10a94:	01f55693          	srli	a3,a0,0x1f
   10a98:	00179793          	slli	a5,a5,0x1
   10a9c:	00f687b3          	add	a5,a3,a5
   10aa0:	00163693          	seqz	a3,a2
   10aa4:	00151513          	slli	a0,a0,0x1
   10aa8:	40d70733          	sub	a4,a4,a3
   10aac:	fff60613          	addi	a2,a2,-1
   10ab0:	00f04863          	bgtz	a5,10ac0 <_ZN6tflite26DoubleFromFractionAndShiftExi+0x78>
   10ab4:	fe0790e3          	bnez	a5,10a94 <_ZN6tflite26DoubleFromFractionAndShiftExi+0x4c>
   10ab8:	400006b7          	lui	a3,0x40000
   10abc:	fcd56ce3          	bltu	a0,a3,10a94 <_ZN6tflite26DoubleFromFractionAndShiftExi+0x4c>
   10ac0:	0ce05e63          	blez	a4,10b9c <_ZN6tflite26DoubleFromFractionAndShiftExi+0x154>
   10ac4:	3ff00613          	li	a2,1023
   10ac8:	00000713          	li	a4,0
   10acc:	fff00693          	li	a3,-1
   10ad0:	0ad74863          	blt	a4,a3,10b80 <_ZN6tflite26DoubleFromFractionAndShiftExi+0x138>
   10ad4:	0ad70263          	beq	a4,a3,10b78 <_ZN6tflite26DoubleFromFractionAndShiftExi+0x130>
   10ad8:	c0000737          	lui	a4,0xc0000
   10adc:	00e50733          	add	a4,a0,a4
   10ae0:	fff78793          	addi	a5,a5,-1
   10ae4:	00a73533          	sltu	a0,a4,a0
   10ae8:	00f50533          	add	a0,a0,a5
   10aec:	01651513          	slli	a0,a0,0x16
   10af0:	00a75793          	srli	a5,a4,0xa
   10af4:	00a78533          	add	a0,a5,a0
   10af8:	800007b7          	lui	a5,0x80000
   10afc:	00f5f5b3          	and	a1,a1,a5
   10b00:	3ff60613          	addi	a2,a2,1023
   10b04:	00b56533          	or	a0,a0,a1
   10b08:	01461613          	slli	a2,a2,0x14
   10b0c:	00c567b3          	or	a5,a0,a2
   10b10:	01671513          	slli	a0,a4,0x16
   10b14:	00050713          	mv	a4,a0
   10b18:	00070513          	mv	a0,a4
   10b1c:	00078593          	mv	a1,a5
   10b20:	00008067          	ret
   10b24:	800006b7          	lui	a3,0x80000
   10b28:	f8079ce3          	bnez	a5,10ac0 <_ZN6tflite26DoubleFromFractionAndShiftExi+0x78>
   10b2c:	f8a6fae3          	bgeu	a3,a0,10ac0 <_ZN6tflite26DoubleFromFractionAndShiftExi+0x78>
   10b30:	00160693          	addi	a3,a2,1
   10b34:	01f79813          	slli	a6,a5,0x1f
   10b38:	00c6b633          	sltu	a2,a3,a2
   10b3c:	00155513          	srli	a0,a0,0x1
   10b40:	4017d793          	srai	a5,a5,0x1
   10b44:	00e60733          	add	a4,a2,a4
   10b48:	00a80533          	add	a0,a6,a0
   10b4c:	00068613          	mv	a2,a3
   10b50:	fef040e3          	bgtz	a5,10b30 <_ZN6tflite26DoubleFromFractionAndShiftExi+0xe8>
   10b54:	fd1ff06f          	j	10b24 <_ZN6tflite26DoubleFromFractionAndShiftExi+0xdc>
   10b58:	00b567b3          	or	a5,a0,a1
   10b5c:	02078663          	beqz	a5,10b88 <_ZN6tflite26DoubleFromFractionAndShiftExi+0x140>
   10b60:	04b05663          	blez	a1,10bac <_ZN6tflite26DoubleFromFractionAndShiftExi+0x164>
   10b64:	8181a703          	lw	a4,-2024(gp) # 1c6f0 <__SDATA_BEGIN__+0x18>
   10b68:	81c1a783          	lw	a5,-2020(gp) # 1c6f4 <__SDATA_BEGIN__+0x1c>
   10b6c:	00070513          	mv	a0,a4
   10b70:	00078593          	mv	a1,a5
   10b74:	00008067          	ret
   10b78:	c0100713          	li	a4,-1023
   10b7c:	f4e67ee3          	bgeu	a2,a4,10ad8 <_ZN6tflite26DoubleFromFractionAndShiftExi+0x90>
   10b80:	c0100613          	li	a2,-1023
   10b84:	f55ff06f          	j	10ad8 <_ZN6tflite26DoubleFromFractionAndShiftExi+0x90>
   10b88:	8101a703          	lw	a4,-2032(gp) # 1c6e8 <__SDATA_BEGIN__+0x10>
   10b8c:	8141a783          	lw	a5,-2028(gp) # 1c6ec <__SDATA_BEGIN__+0x14>
   10b90:	00070513          	mv	a0,a4
   10b94:	00078593          	mv	a1,a5
   10b98:	00008067          	ret
   10b9c:	f20718e3          	bnez	a4,10acc <_ZN6tflite26DoubleFromFractionAndShiftExi+0x84>
   10ba0:	3ff00693          	li	a3,1023
   10ba4:	f2c6f4e3          	bgeu	a3,a2,10acc <_ZN6tflite26DoubleFromFractionAndShiftExi+0x84>
   10ba8:	f1dff06f          	j	10ac4 <_ZN6tflite26DoubleFromFractionAndShiftExi+0x7c>
   10bac:	00059463          	bnez	a1,10bb4 <_ZN6tflite26DoubleFromFractionAndShiftExi+0x16c>
   10bb0:	fa051ae3          	bnez	a0,10b64 <_ZN6tflite26DoubleFromFractionAndShiftExi+0x11c>
   10bb4:	8201a703          	lw	a4,-2016(gp) # 1c6f8 <__SDATA_BEGIN__+0x20>
   10bb8:	8241a783          	lw	a5,-2012(gp) # 1c6fc <__SDATA_BEGIN__+0x24>
   10bbc:	f5dff06f          	j	10b18 <_ZN6tflite26DoubleFromFractionAndShiftExi+0xd0>
   10bc0:	40000837          	lui	a6,0x40000
   10bc4:	ed06e8e3          	bltu	a3,a6,10a94 <_ZN6tflite26DoubleFromFractionAndShiftExi+0x4c>
   10bc8:	80000837          	lui	a6,0x80000
   10bcc:	f6d862e3          	bltu	a6,a3,10b30 <_ZN6tflite26DoubleFromFractionAndShiftExi+0xe8>
   10bd0:	ef1ff06f          	j	10ac0 <_ZN6tflite26DoubleFromFractionAndShiftExi+0x78>

00010bd4 <_ZN6tflite21IntegerDoubleMultiplyEdd>:
   10bd4:	80000737          	lui	a4,0x80000
   10bd8:	fff70713          	addi	a4,a4,-1 # 7fffffff <__BSS_END__+0x7ffdf19f>
   10bdc:	00b777b3          	and	a5,a4,a1
   10be0:	00a7e7b3          	or	a5,a5,a0
   10be4:	00d77e33          	and	t3,a4,a3
   10be8:	00068313          	mv	t1,a3
   10bec:	10078e63          	beqz	a5,10d08 <_ZN6tflite21IntegerDoubleMultiplyEdd+0x134>
   10bf0:	0145d793          	srli	a5,a1,0x14
   10bf4:	7ff7f793          	andi	a5,a5,2047
   10bf8:	7ff00813          	li	a6,2047
   10bfc:	0d078e63          	beq	a5,a6,10cd8 <_ZN6tflite21IntegerDoubleMultiplyEdd+0x104>
   10c00:	00a59713          	slli	a4,a1,0xa
   10c04:	01655893          	srli	a7,a0,0x16
   10c08:	00a51813          	slli	a6,a0,0xa
   10c0c:	40000537          	lui	a0,0x40000
   10c10:	011708b3          	add	a7,a4,a7
   10c14:	00a85813          	srli	a6,a6,0xa
   10c18:	fff50713          	addi	a4,a0,-1 # 3fffffff <__BSS_END__+0x3ffdf19f>
   10c1c:	00200eb7          	lui	t4,0x200
   10c20:	00e8f8b3          	and	a7,a7,a4
   10c24:	c0278713          	addi	a4,a5,-1022 # 7ffffc02 <__BSS_END__+0x7ffdeda2>
   10c28:	110ee863          	bltu	t4,a6,10d38 <_ZN6tflite21IntegerDoubleMultiplyEdd+0x164>
   10c2c:	00a88833          	add	a6,a7,a0
   10c30:	011838b3          	sltu	a7,a6,a7
   10c34:	00ce6e33          	or	t3,t3,a2
   10c38:	1005cc63          	bltz	a1,10d50 <_ZN6tflite21IntegerDoubleMultiplyEdd+0x17c>
   10c3c:	120e0663          	beqz	t3,10d68 <_ZN6tflite21IntegerDoubleMultiplyEdd+0x194>
   10c40:	0146d793          	srli	a5,a3,0x14
   10c44:	7ff7f793          	andi	a5,a5,2047
   10c48:	7ff00593          	li	a1,2047
   10c4c:	0eb78063          	beq	a5,a1,10d2c <_ZN6tflite21IntegerDoubleMultiplyEdd+0x158>
   10c50:	00a69513          	slli	a0,a3,0xa
   10c54:	01665593          	srli	a1,a2,0x16
   10c58:	00b505b3          	add	a1,a0,a1
   10c5c:	fe010113          	addi	sp,sp,-32
   10c60:	00a61613          	slli	a2,a2,0xa
   10c64:	40000537          	lui	a0,0x40000
   10c68:	fff50e13          	addi	t3,a0,-1 # 3fffffff <__BSS_END__+0x3ffdf19f>
   10c6c:	00112e23          	sw	ra,28(sp)
   10c70:	00a65613          	srli	a2,a2,0xa
   10c74:	002006b7          	lui	a3,0x200
   10c78:	c0278793          	addi	a5,a5,-1022
   10c7c:	01c5f5b3          	and	a1,a1,t3
   10c80:	00c6f663          	bgeu	a3,a2,10c8c <_ZN6tflite21IntegerDoubleMultiplyEdd+0xb8>
   10c84:	40000537          	lui	a0,0x40000
   10c88:	00150513          	addi	a0,a0,1 # 40000001 <__BSS_END__+0x3ffdf1a1>
   10c8c:	00a58533          	add	a0,a1,a0
   10c90:	800006b7          	lui	a3,0x80000
   10c94:	00b535b3          	sltu	a1,a0,a1
   10c98:	fff68693          	addi	a3,a3,-1 # 7fffffff <__BSS_END__+0x7ffdf19f>
   10c9c:	10034263          	bltz	t1,10da0 <_ZN6tflite21IntegerDoubleMultiplyEdd+0x1cc>
   10ca0:	0cd70e63          	beq	a4,a3,10d7c <_ZN6tflite21IntegerDoubleMultiplyEdd+0x1a8>
   10ca4:	00e787b3          	add	a5,a5,a4
   10ca8:	00080613          	mv	a2,a6
   10cac:	00088693          	mv	a3,a7
   10cb0:	00178793          	addi	a5,a5,1
   10cb4:	00f12623          	sw	a5,12(sp)
   10cb8:	218040ef          	jal	14ed0 <__muldi3>
   10cbc:	00c12783          	lw	a5,12(sp)
   10cc0:	01c12083          	lw	ra,28(sp)
   10cc4:	00058513          	mv	a0,a1
   10cc8:	41f5d593          	srai	a1,a1,0x1f
   10ccc:	00078613          	mv	a2,a5
   10cd0:	02010113          	addi	sp,sp,32
   10cd4:	d75ff06f          	j	10a48 <_ZN6tflite26DoubleFromFractionAndShiftExi>
   10cd8:	ffc007b7          	lui	a5,0xffc00
   10cdc:	00c59813          	slli	a6,a1,0xc
   10ce0:	00a7f7b3          	and	a5,a5,a0
   10ce4:	00c85813          	srli	a6,a6,0xc
   10ce8:	0107e7b3          	or	a5,a5,a6
   10cec:	00ce6e33          	or	t3,t3,a2
   10cf0:	0a079063          	bnez	a5,10d90 <_ZN6tflite21IntegerDoubleMultiplyEdd+0x1bc>
   10cf4:	020e0c63          	beqz	t3,10d2c <_ZN6tflite21IntegerDoubleMultiplyEdd+0x158>
   10cf8:	41f5d813          	srai	a6,a1,0x1f
   10cfc:	00e848b3          	xor	a7,a6,a4
   10d00:	fff84813          	not	a6,a6
   10d04:	f3dff06f          	j	10c40 <_ZN6tflite21IntegerDoubleMultiplyEdd+0x6c>
   10d08:	00ce6e33          	or	t3,t3,a2
   10d0c:	0a0e0c63          	beqz	t3,10dc4 <_ZN6tflite21IntegerDoubleMultiplyEdd+0x1f0>
   10d10:	0146d793          	srli	a5,a3,0x14
   10d14:	7ff7f793          	andi	a5,a5,2047
   10d18:	7ff00593          	li	a1,2047
   10d1c:	00000713          	li	a4,0
   10d20:	00000813          	li	a6,0
   10d24:	00000893          	li	a7,0
   10d28:	f2b794e3          	bne	a5,a1,10c50 <_ZN6tflite21IntegerDoubleMultiplyEdd+0x7c>
   10d2c:	8101a503          	lw	a0,-2032(gp) # 1c6e8 <__SDATA_BEGIN__+0x10>
   10d30:	8141a583          	lw	a1,-2028(gp) # 1c6ec <__SDATA_BEGIN__+0x14>
   10d34:	00008067          	ret
   10d38:	40000837          	lui	a6,0x40000
   10d3c:	00180813          	addi	a6,a6,1 # 40000001 <__BSS_END__+0x3ffdf1a1>
   10d40:	01088833          	add	a6,a7,a6
   10d44:	011838b3          	sltu	a7,a6,a7
   10d48:	00ce6e33          	or	t3,t3,a2
   10d4c:	ee05d8e3          	bgez	a1,10c3c <_ZN6tflite21IntegerDoubleMultiplyEdd+0x68>
   10d50:	000e0c63          	beqz	t3,10d68 <_ZN6tflite21IntegerDoubleMultiplyEdd+0x194>
   10d54:	010037b3          	snez	a5,a6
   10d58:	411008b3          	neg	a7,a7
   10d5c:	40f888b3          	sub	a7,a7,a5
   10d60:	41000833          	neg	a6,a6
   10d64:	eddff06f          	j	10c40 <_ZN6tflite21IntegerDoubleMultiplyEdd+0x6c>
   10d68:	c0378793          	addi	a5,a5,-1021 # ffbffc03 <__BSS_END__+0xffbdeda3>
   10d6c:	00000513          	li	a0,0
   10d70:	00000593          	li	a1,0
   10d74:	00078613          	mv	a2,a5
   10d78:	cd1ff06f          	j	10a48 <_ZN6tflite26DoubleFromFractionAndShiftExi>
   10d7c:	01c12083          	lw	ra,28(sp)
   10d80:	8101a503          	lw	a0,-2032(gp) # 1c6e8 <__SDATA_BEGIN__+0x10>
   10d84:	8141a583          	lw	a1,-2028(gp) # 1c6ec <__SDATA_BEGIN__+0x14>
   10d88:	02010113          	addi	sp,sp,32
   10d8c:	00008067          	ret
   10d90:	f80e0ee3          	beqz	t3,10d2c <_ZN6tflite21IntegerDoubleMultiplyEdd+0x158>
   10d94:	00000813          	li	a6,0
   10d98:	00000893          	li	a7,0
   10d9c:	ea5ff06f          	j	10c40 <_ZN6tflite21IntegerDoubleMultiplyEdd+0x6c>
   10da0:	fcd70ee3          	beq	a4,a3,10d7c <_ZN6tflite21IntegerDoubleMultiplyEdd+0x1a8>
   10da4:	00a03333          	snez	t1,a0
   10da8:	40b005b3          	neg	a1,a1
   10dac:	00e787b3          	add	a5,a5,a4
   10db0:	00080613          	mv	a2,a6
   10db4:	00088693          	mv	a3,a7
   10db8:	406585b3          	sub	a1,a1,t1
   10dbc:	40a00533          	neg	a0,a0
   10dc0:	ef1ff06f          	j	10cb0 <_ZN6tflite21IntegerDoubleMultiplyEdd+0xdc>
   10dc4:	00100793          	li	a5,1
   10dc8:	00000513          	li	a0,0
   10dcc:	00000593          	li	a1,0
   10dd0:	00078613          	mv	a2,a5
   10dd4:	c75ff06f          	j	10a48 <_ZN6tflite26DoubleFromFractionAndShiftExi>

00010dd8 <_ZN6tflite20IntegerDoubleCompareEdd>:
   10dd8:	800007b7          	lui	a5,0x80000
   10ddc:	fff78793          	addi	a5,a5,-1 # 7fffffff <__BSS_END__+0x7ffdf19f>
   10de0:	00b7f733          	and	a4,a5,a1
   10de4:	00a76733          	or	a4,a4,a0
   10de8:	00d7fe33          	and	t3,a5,a3
   10dec:	00068893          	mv	a7,a3
   10df0:	0e070e63          	beqz	a4,10eec <_ZN6tflite20IntegerDoubleCompareEdd+0x114>
   10df4:	0145d713          	srli	a4,a1,0x14
   10df8:	7ff77713          	andi	a4,a4,2047
   10dfc:	7ff00813          	li	a6,2047
   10e00:	0b070c63          	beq	a4,a6,10eb8 <_ZN6tflite20IntegerDoubleCompareEdd+0xe0>
   10e04:	00a59793          	slli	a5,a1,0xa
   10e08:	01655813          	srli	a6,a0,0x16
   10e0c:	40000337          	lui	t1,0x40000
   10e10:	00a51513          	slli	a0,a0,0xa
   10e14:	01078833          	add	a6,a5,a6
   10e18:	fff30f13          	addi	t5,t1,-1 # 3fffffff <__BSS_END__+0x3ffdf19f>
   10e1c:	00a55513          	srli	a0,a0,0xa
   10e20:	00200eb7          	lui	t4,0x200
   10e24:	c0270793          	addi	a5,a4,-1022
   10e28:	01e87833          	and	a6,a6,t5
   10e2c:	00aef663          	bgeu	t4,a0,10e38 <_ZN6tflite20IntegerDoubleCompareEdd+0x60>
   10e30:	40000337          	lui	t1,0x40000
   10e34:	00130313          	addi	t1,t1,1 # 40000001 <__BSS_END__+0x3ffdf1a1>
   10e38:	00680333          	add	t1,a6,t1
   10e3c:	01033833          	sltu	a6,t1,a6
   10e40:	00ce6733          	or	a4,t3,a2
   10e44:	1005cc63          	bltz	a1,10f5c <_ZN6tflite20IntegerDoubleCompareEdd+0x184>
   10e48:	0c070063          	beqz	a4,10f08 <_ZN6tflite20IntegerDoubleCompareEdd+0x130>
   10e4c:	0146de13          	srli	t3,a3,0x14
   10e50:	7ffe7e13          	andi	t3,t3,2047
   10e54:	7ff00713          	li	a4,2047
   10e58:	00100513          	li	a0,1
   10e5c:	04ee0c63          	beq	t3,a4,10eb4 <_ZN6tflite20IntegerDoubleCompareEdd+0xdc>
   10e60:	00a69693          	slli	a3,a3,0xa
   10e64:	01665593          	srli	a1,a2,0x16
   10e68:	40000737          	lui	a4,0x40000
   10e6c:	00a61613          	slli	a2,a2,0xa
   10e70:	00b685b3          	add	a1,a3,a1
   10e74:	fff70513          	addi	a0,a4,-1 # 3fffffff <__BSS_END__+0x3ffdf19f>
   10e78:	00a65613          	srli	a2,a2,0xa
   10e7c:	002006b7          	lui	a3,0x200
   10e80:	00a5f5b3          	and	a1,a1,a0
   10e84:	00c6f663          	bgeu	a3,a2,10e90 <_ZN6tflite20IntegerDoubleCompareEdd+0xb8>
   10e88:	40000737          	lui	a4,0x40000
   10e8c:	00170713          	addi	a4,a4,1 # 40000001 <__BSS_END__+0x3ffdf1a1>
   10e90:	00e58733          	add	a4,a1,a4
   10e94:	800006b7          	lui	a3,0x80000
   10e98:	00b735b3          	sltu	a1,a4,a1
   10e9c:	fff68693          	addi	a3,a3,-1 # 7fffffff <__BSS_END__+0x7ffdf19f>
   10ea0:	0c08cc63          	bltz	a7,10f78 <_ZN6tflite20IntegerDoubleCompareEdd+0x1a0>
   10ea4:	0ed78c63          	beq	a5,a3,10f9c <_ZN6tflite20IntegerDoubleCompareEdd+0x1c4>
   10ea8:	c02e0e13          	addi	t3,t3,-1022
   10eac:	fff00513          	li	a0,-1
   10eb0:	09c7dc63          	bge	a5,t3,10f48 <_ZN6tflite20IntegerDoubleCompareEdd+0x170>
   10eb4:	00008067          	ret
   10eb8:	ffc00737          	lui	a4,0xffc00
   10ebc:	00c59813          	slli	a6,a1,0xc
   10ec0:	00a77733          	and	a4,a4,a0
   10ec4:	00c85813          	srli	a6,a6,0xc
   10ec8:	01076733          	or	a4,a4,a6
   10ecc:	06071263          	bnez	a4,10f30 <_ZN6tflite20IntegerDoubleCompareEdd+0x158>
   10ed0:	00ce6733          	or	a4,t3,a2
   10ed4:	00100513          	li	a0,1
   10ed8:	fc070ee3          	beqz	a4,10eb4 <_ZN6tflite20IntegerDoubleCompareEdd+0xdc>
   10edc:	41f5d313          	srai	t1,a1,0x1f
   10ee0:	00f34833          	xor	a6,t1,a5
   10ee4:	fff34313          	not	t1,t1
   10ee8:	f65ff06f          	j	10e4c <_ZN6tflite20IntegerDoubleCompareEdd+0x74>
   10eec:	00ce6733          	or	a4,t3,a2
   10ef0:	00000513          	li	a0,0
   10ef4:	fc0700e3          	beqz	a4,10eb4 <_ZN6tflite20IntegerDoubleCompareEdd+0xdc>
   10ef8:	00000793          	li	a5,0
   10efc:	00000313          	li	t1,0
   10f00:	00000813          	li	a6,0
   10f04:	f49ff06f          	j	10e4c <_ZN6tflite20IntegerDoubleCompareEdd+0x74>
   10f08:	fff00513          	li	a0,-1
   10f0c:	fa07c4e3          	bltz	a5,10eb4 <_ZN6tflite20IntegerDoubleCompareEdd+0xdc>
   10f10:	00100513          	li	a0,1
   10f14:	00000593          	li	a1,0
   10f18:	f8079ee3          	bnez	a5,10eb4 <_ZN6tflite20IntegerDoubleCompareEdd+0xdc>
   10f1c:	00100513          	li	a0,1
   10f20:	f905cae3          	blt	a1,a6,10eb4 <_ZN6tflite20IntegerDoubleCompareEdd+0xdc>
   10f24:	08b80863          	beq	a6,a1,10fb4 <_ZN6tflite20IntegerDoubleCompareEdd+0x1dc>
   10f28:	00000513          	li	a0,0
   10f2c:	00008067          	ret
   10f30:	00ce6733          	or	a4,t3,a2
   10f34:	00100513          	li	a0,1
   10f38:	f6070ee3          	beqz	a4,10eb4 <_ZN6tflite20IntegerDoubleCompareEdd+0xdc>
   10f3c:	00000313          	li	t1,0
   10f40:	00000813          	li	a6,0
   10f44:	f09ff06f          	j	10e4c <_ZN6tflite20IntegerDoubleCompareEdd+0x74>
   10f48:	00100513          	li	a0,1
   10f4c:	f6fe44e3          	blt	t3,a5,10eb4 <_ZN6tflite20IntegerDoubleCompareEdd+0xdc>
   10f50:	04b85a63          	bge	a6,a1,10fa4 <_ZN6tflite20IntegerDoubleCompareEdd+0x1cc>
   10f54:	fff00513          	li	a0,-1
   10f58:	00008067          	ret
   10f5c:	fff00513          	li	a0,-1
   10f60:	f4070ae3          	beqz	a4,10eb4 <_ZN6tflite20IntegerDoubleCompareEdd+0xdc>
   10f64:	00603733          	snez	a4,t1
   10f68:	41000833          	neg	a6,a6
   10f6c:	40e80833          	sub	a6,a6,a4
   10f70:	40600333          	neg	t1,t1
   10f74:	ed9ff06f          	j	10e4c <_ZN6tflite20IntegerDoubleCompareEdd+0x74>
   10f78:	02d78263          	beq	a5,a3,10f9c <_ZN6tflite20IntegerDoubleCompareEdd+0x1c4>
   10f7c:	010366b3          	or	a3,t1,a6
   10f80:	00100513          	li	a0,1
   10f84:	f20688e3          	beqz	a3,10eb4 <_ZN6tflite20IntegerDoubleCompareEdd+0xdc>
   10f88:	00e036b3          	snez	a3,a4
   10f8c:	40b005b3          	neg	a1,a1
   10f90:	40d585b3          	sub	a1,a1,a3
   10f94:	40e00733          	neg	a4,a4
   10f98:	f11ff06f          	j	10ea8 <_ZN6tflite20IntegerDoubleCompareEdd+0xd0>
   10f9c:	00100513          	li	a0,1
   10fa0:	00008067          	ret
   10fa4:	f7059ce3          	bne	a1,a6,10f1c <_ZN6tflite20IntegerDoubleCompareEdd+0x144>
   10fa8:	f6e37ae3          	bgeu	t1,a4,10f1c <_ZN6tflite20IntegerDoubleCompareEdd+0x144>
   10fac:	fff00513          	li	a0,-1
   10fb0:	00008067          	ret
   10fb4:	f6677ae3          	bgeu	a4,t1,10f28 <_ZN6tflite20IntegerDoubleCompareEdd+0x150>
   10fb8:	00008067          	ret

00010fbc <_ZN6tflite24PreprocessSoftmaxScalingEddiPlPi>:
   10fbc:	fd010113          	addi	sp,sp,-48
   10fc0:	800008b7          	lui	a7,0x80000
   10fc4:	01312e23          	sw	s3,28(sp)
   10fc8:	00050993          	mv	s3,a0
   10fcc:	00e8d533          	srl	a0,a7,a4
   10fd0:	02112623          	sw	ra,44(sp)
   10fd4:	02812423          	sw	s0,40(sp)
   10fd8:	02912223          	sw	s1,36(sp)
   10fdc:	03212023          	sw	s2,32(sp)
   10fe0:	01412c23          	sw	s4,24(sp)
   10fe4:	01512a23          	sw	s5,20(sp)
   10fe8:	00058a13          	mv	s4,a1
   10fec:	00078a93          	mv	s5,a5
   10ff0:	00080913          	mv	s2,a6
   10ff4:	00c12423          	sw	a2,8(sp)
   10ff8:	00d12623          	sw	a3,12(sp)
   10ffc:	06d020ef          	jal	13868 <__floatsidf>
   11000:	00812603          	lw	a2,8(sp)
   11004:	00c12683          	lw	a3,12(sp)
   11008:	00050413          	mv	s0,a0
   1100c:	00058493          	mv	s1,a1
   11010:	00098513          	mv	a0,s3
   11014:	000a0593          	mv	a1,s4
   11018:	138020ef          	jal	13150 <__muldf3>
   1101c:	00050613          	mv	a2,a0
   11020:	00058693          	mv	a3,a1
   11024:	00040513          	mv	a0,s0
   11028:	00048593          	mv	a1,s1
   1102c:	124020ef          	jal	13150 <__muldf3>
   11030:	82c1a403          	lw	s0,-2004(gp) # 1c704 <__SDATA_BEGIN__+0x2c>
   11034:	8281a483          	lw	s1,-2008(gp) # 1c700 <__SDATA_BEGIN__+0x28>
   11038:	00050a13          	mv	s4,a0
   1103c:	00040693          	mv	a3,s0
   11040:	00048613          	mv	a2,s1
   11044:	00058993          	mv	s3,a1
   11048:	759010ef          	jal	12fa0 <__gedf2>
   1104c:	00a04663          	bgtz	a0,11058 <_ZN6tflite24PreprocessSoftmaxScalingEddiPlPi+0x9c>
   11050:	000a0493          	mv	s1,s4
   11054:	00098413          	mv	s0,s3
   11058:	8081a603          	lw	a2,-2040(gp) # 1c6e0 <__SDATA_BEGIN__+0x8>
   1105c:	80c1a683          	lw	a3,-2036(gp) # 1c6e4 <__SDATA_BEGIN__+0xc>
   11060:	00048513          	mv	a0,s1
   11064:	00040593          	mv	a1,s0
   11068:	739010ef          	jal	12fa0 <__gedf2>
   1106c:	04a05263          	blez	a0,110b0 <_ZN6tflite24PreprocessSoftmaxScalingEddiPlPi+0xf4>
   11070:	00048513          	mv	a0,s1
   11074:	00040593          	mv	a1,s0
   11078:	000a8613          	mv	a2,s5
   1107c:	00090693          	mv	a3,s2
   11080:	ec8ff0ef          	jal	10748 <_ZN6tflite18QuantizeMultiplierEdPlPi.part.0>
   11084:	00092783          	lw	a5,0(s2)
   11088:	0207c463          	bltz	a5,110b0 <_ZN6tflite24PreprocessSoftmaxScalingEddiPlPi+0xf4>
   1108c:	02c12083          	lw	ra,44(sp)
   11090:	02812403          	lw	s0,40(sp)
   11094:	02412483          	lw	s1,36(sp)
   11098:	02012903          	lw	s2,32(sp)
   1109c:	01c12983          	lw	s3,28(sp)
   110a0:	01812a03          	lw	s4,24(sp)
   110a4:	01412a83          	lw	s5,20(sp)
   110a8:	03010113          	addi	sp,sp,48
   110ac:	00008067          	ret
   110b0:	024040ef          	jal	150d4 <abort>

000110b4 <_ZN6tflite30PreprocessLogSoftmaxScalingExpEddiPlPiS0_S1_>:
   110b4:	fb010113          	addi	sp,sp,-80
   110b8:	80000337          	lui	t1,0x80000
   110bc:	03612823          	sw	s6,48(sp)
   110c0:	00050b13          	mv	s6,a0
   110c4:	00e35533          	srl	a0,t1,a4
   110c8:	04112623          	sw	ra,76(sp)
   110cc:	04812423          	sw	s0,72(sp)
   110d0:	04912223          	sw	s1,68(sp)
   110d4:	05212023          	sw	s2,64(sp)
   110d8:	00078493          	mv	s1,a5
   110dc:	03312e23          	sw	s3,60(sp)
   110e0:	03412c23          	sw	s4,56(sp)
   110e4:	03512a23          	sw	s5,52(sp)
   110e8:	03712623          	sw	s7,44(sp)
   110ec:	03812423          	sw	s8,40(sp)
   110f0:	00080913          	mv	s2,a6
   110f4:	00088c13          	mv	s8,a7
   110f8:	00058b93          	mv	s7,a1
   110fc:	00c12423          	sw	a2,8(sp)
   11100:	00d12623          	sw	a3,12(sp)
   11104:	764020ef          	jal	13868 <__floatsidf>
   11108:	00812603          	lw	a2,8(sp)
   1110c:	00c12683          	lw	a3,12(sp)
   11110:	00050a13          	mv	s4,a0
   11114:	00058a93          	mv	s5,a1
   11118:	000b0513          	mv	a0,s6
   1111c:	000b8593          	mv	a1,s7
   11120:	030020ef          	jal	13150 <__muldf3>
   11124:	00050613          	mv	a2,a0
   11128:	00058693          	mv	a3,a1
   1112c:	000a0513          	mv	a0,s4
   11130:	000a8593          	mv	a1,s5
   11134:	01c020ef          	jal	13150 <__muldf3>
   11138:	82c1a403          	lw	s0,-2004(gp) # 1c704 <__SDATA_BEGIN__+0x2c>
   1113c:	8281a983          	lw	s3,-2008(gp) # 1c700 <__SDATA_BEGIN__+0x28>
   11140:	00050a93          	mv	s5,a0
   11144:	00040693          	mv	a3,s0
   11148:	00098613          	mv	a2,s3
   1114c:	00058a13          	mv	s4,a1
   11150:	651010ef          	jal	12fa0 <__gedf2>
   11154:	00a04663          	bgtz	a0,11160 <_ZN6tflite30PreprocessLogSoftmaxScalingExpEddiPlPiS0_S1_+0xac>
   11158:	000a8993          	mv	s3,s5
   1115c:	000a0413          	mv	s0,s4
   11160:	8081aa03          	lw	s4,-2040(gp) # 1c6e0 <__SDATA_BEGIN__+0x8>
   11164:	80c1aa83          	lw	s5,-2036(gp) # 1c6e4 <__SDATA_BEGIN__+0xc>
   11168:	00098513          	mv	a0,s3
   1116c:	00040593          	mv	a1,s0
   11170:	000a0613          	mv	a2,s4
   11174:	000a8693          	mv	a3,s5
   11178:	629010ef          	jal	12fa0 <__gedf2>
   1117c:	0ca05a63          	blez	a0,11250 <_ZN6tflite30PreprocessLogSoftmaxScalingExpEddiPlPiS0_S1_+0x19c>
   11180:	00098513          	mv	a0,s3
   11184:	00040593          	mv	a1,s0
   11188:	00090693          	mv	a3,s2
   1118c:	00048613          	mv	a2,s1
   11190:	db8ff0ef          	jal	10748 <_ZN6tflite18QuantizeMultiplierEdPlPi.part.0>
   11194:	00092783          	lw	a5,0(s2)
   11198:	0a07cc63          	bltz	a5,11250 <_ZN6tflite30PreprocessLogSoftmaxScalingExpEddiPlPiS0_S1_+0x19c>
   1119c:	80000537          	lui	a0,0x80000
   111a0:	00f55533          	srl	a0,a0,a5
   111a4:	6c4020ef          	jal	13868 <__floatsidf>
   111a8:	00050913          	mv	s2,a0
   111ac:	0004a503          	lw	a0,0(s1)
   111b0:	00058993          	mv	s3,a1
   111b4:	6b4020ef          	jal	13868 <__floatsidf>
   111b8:	00050613          	mv	a2,a0
   111bc:	00058693          	mv	a3,a1
   111c0:	00090513          	mv	a0,s2
   111c4:	00098593          	mv	a1,s3
   111c8:	590010ef          	jal	12758 <__divdf3>
   111cc:	000a0613          	mv	a2,s4
   111d0:	000a8693          	mv	a3,s5
   111d4:	00050413          	mv	s0,a0
   111d8:	00058493          	mv	s1,a1
   111dc:	69d010ef          	jal	13078 <__ledf2>
   111e0:	06055863          	bgez	a0,11250 <_ZN6tflite30PreprocessLogSoftmaxScalingExpEddiPlPiS0_S1_+0x19c>
   111e4:	00000613          	li	a2,0
   111e8:	00000693          	li	a3,0
   111ec:	00040513          	mv	a0,s0
   111f0:	00048593          	mv	a1,s1
   111f4:	5ad010ef          	jal	12fa0 <__gedf2>
   111f8:	04a05c63          	blez	a0,11250 <_ZN6tflite30PreprocessLogSoftmaxScalingExpEddiPlPiS0_S1_+0x19c>
   111fc:	00040513          	mv	a0,s0
   11200:	00048593          	mv	a1,s1
   11204:	000c0613          	mv	a2,s8
   11208:	01c10693          	addi	a3,sp,28
   1120c:	d3cff0ef          	jal	10748 <_ZN6tflite18QuantizeMultiplierEdPlPi.part.0>
   11210:	01c12783          	lw	a5,28(sp)
   11214:	02f04e63          	bgtz	a5,11250 <_ZN6tflite30PreprocessLogSoftmaxScalingExpEddiPlPiS0_S1_+0x19c>
   11218:	05012703          	lw	a4,80(sp)
   1121c:	04c12083          	lw	ra,76(sp)
   11220:	04812403          	lw	s0,72(sp)
   11224:	00f72023          	sw	a5,0(a4) # ffc00000 <__BSS_END__+0xffbdf1a0>
   11228:	04412483          	lw	s1,68(sp)
   1122c:	04012903          	lw	s2,64(sp)
   11230:	03c12983          	lw	s3,60(sp)
   11234:	03812a03          	lw	s4,56(sp)
   11238:	03412a83          	lw	s5,52(sp)
   1123c:	03012b03          	lw	s6,48(sp)
   11240:	02c12b83          	lw	s7,44(sp)
   11244:	02812c03          	lw	s8,40(sp)
   11248:	05010113          	addi	sp,sp,80
   1124c:	00008067          	ret
   11250:	685030ef          	jal	150d4 <abort>

00011254 <_ZN6tflite20CalculateInputRadiusEiii>:
   11254:	fd010113          	addi	sp,sp,-48
   11258:	02812423          	sw	s0,40(sp)
   1125c:	00100413          	li	s0,1
   11260:	02912223          	sw	s1,36(sp)
   11264:	00050493          	mv	s1,a0
   11268:	00a41533          	sll	a0,s0,a0
   1126c:	fff50513          	addi	a0,a0,-1 # 7fffffff <__BSS_END__+0x7ffdf19f>
   11270:	03212023          	sw	s2,32(sp)
   11274:	01312e23          	sw	s3,28(sp)
   11278:	01412c23          	sw	s4,24(sp)
   1127c:	00c12623          	sw	a2,12(sp)
   11280:	02112623          	sw	ra,44(sp)
   11284:	00058913          	mv	s2,a1
   11288:	5e0020ef          	jal	13868 <__floatsidf>
   1128c:	00c12603          	lw	a2,12(sp)
   11290:	00050993          	mv	s3,a0
   11294:	00058a13          	mv	s4,a1
   11298:	40960633          	sub	a2,a2,s1
   1129c:	fe060793          	addi	a5,a2,-32
   112a0:	0807c063          	bltz	a5,11320 <_ZN6tflite20CalculateInputRadiusEiii+0xcc>
   112a4:	00f415b3          	sll	a1,s0,a5
   112a8:	00000513          	li	a0,0
   112ac:	720020ef          	jal	139cc <__floatdidf>
   112b0:	00050613          	mv	a2,a0
   112b4:	00058693          	mv	a3,a1
   112b8:	00098513          	mv	a0,s3
   112bc:	000a0593          	mv	a1,s4
   112c0:	691010ef          	jal	13150 <__muldf3>
   112c4:	fe090793          	addi	a5,s2,-32
   112c8:	00050413          	mv	s0,a0
   112cc:	00058493          	mv	s1,a1
   112d0:	0407ce63          	bltz	a5,1132c <_ZN6tflite20CalculateInputRadiusEiii+0xd8>
   112d4:	00100593          	li	a1,1
   112d8:	00f595b3          	sll	a1,a1,a5
   112dc:	00000513          	li	a0,0
   112e0:	6ec020ef          	jal	139cc <__floatdidf>
   112e4:	00050613          	mv	a2,a0
   112e8:	00058693          	mv	a3,a1
   112ec:	00040513          	mv	a0,s0
   112f0:	00048593          	mv	a1,s1
   112f4:	464010ef          	jal	12758 <__divdf3>
   112f8:	3ec000ef          	jal	116e4 <floor>
   112fc:	4f0020ef          	jal	137ec <__fixdfsi>
   11300:	02c12083          	lw	ra,44(sp)
   11304:	02812403          	lw	s0,40(sp)
   11308:	02412483          	lw	s1,36(sp)
   1130c:	02012903          	lw	s2,32(sp)
   11310:	01c12983          	lw	s3,28(sp)
   11314:	01812a03          	lw	s4,24(sp)
   11318:	03010113          	addi	sp,sp,48
   1131c:	00008067          	ret
   11320:	00c41533          	sll	a0,s0,a2
   11324:	00000593          	li	a1,0
   11328:	f85ff06f          	j	112ac <_ZN6tflite20CalculateInputRadiusEiii+0x58>
   1132c:	00100513          	li	a0,1
   11330:	01251533          	sll	a0,a0,s2
   11334:	00000593          	li	a1,0
   11338:	fa9ff06f          	j	112e0 <_ZN6tflite20CalculateInputRadiusEiii+0x8c>

0001133c <_ZN6tflite22NudgeQuantizationRangeEffiiPfS0_S0_>:
   1133c:	fc010113          	addi	sp,sp,-64
   11340:	03412423          	sw	s4,40(sp)
   11344:	00050a13          	mv	s4,a0
   11348:	00060513          	mv	a0,a2
   1134c:	02112e23          	sw	ra,60(sp)
   11350:	00c12623          	sw	a2,12(sp)
   11354:	02812c23          	sw	s0,56(sp)
   11358:	02912a23          	sw	s1,52(sp)
   1135c:	03212823          	sw	s2,48(sp)
   11360:	00058493          	mv	s1,a1
   11364:	00068913          	mv	s2,a3
   11368:	03312623          	sw	s3,44(sp)
   1136c:	03512223          	sw	s5,36(sp)
   11370:	00080993          	mv	s3,a6
   11374:	00070a93          	mv	s5,a4
   11378:	03612023          	sw	s6,32(sp)
   1137c:	01712e23          	sw	s7,28(sp)
   11380:	00078b13          	mv	s6,a5
   11384:	00068b93          	mv	s7,a3
   11388:	219030ef          	jal	14da0 <__floatsisf>
   1138c:	00050413          	mv	s0,a0
   11390:	00090513          	mv	a0,s2
   11394:	20d030ef          	jal	14da0 <__floatsisf>
   11398:	000a0593          	mv	a1,s4
   1139c:	00050913          	mv	s2,a0
   113a0:	00048513          	mv	a0,s1
   113a4:	49c030ef          	jal	14840 <__subsf3>
   113a8:	00050493          	mv	s1,a0
   113ac:	00040593          	mv	a1,s0
   113b0:	00090513          	mv	a0,s2
   113b4:	48c030ef          	jal	14840 <__subsf3>
   113b8:	00050593          	mv	a1,a0
   113bc:	00048513          	mv	a0,s1
   113c0:	429020ef          	jal	13fe8 <__divsf3>
   113c4:	00050493          	mv	s1,a0
   113c8:	00a9a023          	sw	a0,0(s3)
   113cc:	00048593          	mv	a1,s1
   113d0:	000a0513          	mv	a0,s4
   113d4:	415020ef          	jal	13fe8 <__divsf3>
   113d8:	00050593          	mv	a1,a0
   113dc:	00040513          	mv	a0,s0
   113e0:	460030ef          	jal	14840 <__subsf3>
   113e4:	00050a13          	mv	s4,a0
   113e8:	00050593          	mv	a1,a0
   113ec:	00040513          	mv	a0,s0
   113f0:	7d9020ef          	jal	143c8 <__gesf2>
   113f4:	06a05663          	blez	a0,11460 <_ZN6tflite22NudgeQuantizationRangeEffiiPfS0_S0_+0x124>
   113f8:	00c15503          	lhu	a0,12(sp)
   113fc:	1a5030ef          	jal	14da0 <__floatsisf>
   11400:	00050a13          	mv	s4,a0
   11404:	00050593          	mv	a1,a0
   11408:	00040513          	mv	a0,s0
   1140c:	434030ef          	jal	14840 <__subsf3>
   11410:	00048593          	mv	a1,s1
   11414:	0e4030ef          	jal	144f8 <__mulsf3>
   11418:	000a0593          	mv	a1,s4
   1141c:	00aaa023          	sw	a0,0(s5)
   11420:	00090513          	mv	a0,s2
   11424:	41c030ef          	jal	14840 <__subsf3>
   11428:	0009a583          	lw	a1,0(s3)
   1142c:	0cc030ef          	jal	144f8 <__mulsf3>
   11430:	03c12083          	lw	ra,60(sp)
   11434:	03812403          	lw	s0,56(sp)
   11438:	00ab2023          	sw	a0,0(s6)
   1143c:	03412483          	lw	s1,52(sp)
   11440:	03012903          	lw	s2,48(sp)
   11444:	02c12983          	lw	s3,44(sp)
   11448:	02812a03          	lw	s4,40(sp)
   1144c:	02412a83          	lw	s5,36(sp)
   11450:	02012b03          	lw	s6,32(sp)
   11454:	01c12b83          	lw	s7,28(sp)
   11458:	04010113          	addi	sp,sp,64
   1145c:	00008067          	ret
   11460:	000a0593          	mv	a1,s4
   11464:	00090513          	mv	a0,s2
   11468:	7f9020ef          	jal	14460 <__lesf2>
   1146c:	00055863          	bgez	a0,1147c <_ZN6tflite22NudgeQuantizationRangeEffiiPfS0_S0_+0x140>
   11470:	010b9513          	slli	a0,s7,0x10
   11474:	01055513          	srli	a0,a0,0x10
   11478:	f85ff06f          	j	113fc <_ZN6tflite22NudgeQuantizationRangeEffiiPfS0_S0_+0xc0>
   1147c:	000a0513          	mv	a0,s4
   11480:	6d0000ef          	jal	11b50 <roundf>
   11484:	0b5030ef          	jal	14d38 <__fixunssfsi>
   11488:	01051513          	slli	a0,a0,0x10
   1148c:	01055513          	srli	a0,a0,0x10
   11490:	f6dff06f          	j	113fc <_ZN6tflite22NudgeQuantizationRangeEffiiPfS0_S0_+0xc0>

00011494 <_ZN6tflite17FakeQuantizeArrayEfffPKfPff>:
   11494:	fd010113          	addi	sp,sp,-48
   11498:	02912223          	sw	s1,36(sp)
   1149c:	01712623          	sw	s7,12(sp)
   114a0:	00058493          	mv	s1,a1
   114a4:	00050b93          	mv	s7,a0
   114a8:	00000593          	li	a1,0
   114ac:	00078513          	mv	a0,a5
   114b0:	03212023          	sw	s2,32(sp)
   114b4:	01312e23          	sw	s3,28(sp)
   114b8:	01512a23          	sw	s5,20(sp)
   114bc:	01612823          	sw	s6,16(sp)
   114c0:	02112623          	sw	ra,44(sp)
   114c4:	00078b13          	mv	s6,a5
   114c8:	00060a93          	mv	s5,a2
   114cc:	00068993          	mv	s3,a3
   114d0:	00070913          	mv	s2,a4
   114d4:	6f5020ef          	jal	143c8 <__gesf2>
   114d8:	0aa05663          	blez	a0,11584 <_ZN6tflite17FakeQuantizeArrayEfffPKfPff+0xf0>
   114dc:	8401a503          	lw	a0,-1984(gp) # 1c718 <__SDATA_BEGIN__+0x40>
   114e0:	000b8593          	mv	a1,s7
   114e4:	01412c23          	sw	s4,24(sp)
   114e8:	01812423          	sw	s8,8(sp)
   114ec:	02812423          	sw	s0,40(sp)
   114f0:	2f9020ef          	jal	13fe8 <__divsf3>
   114f4:	00050c13          	mv	s8,a0
   114f8:	00000a13          	li	s4,0
   114fc:	0009a403          	lw	s0,0(s3)
   11500:	00048593          	mv	a1,s1
   11504:	00040513          	mv	a0,s0
   11508:	6c1020ef          	jal	143c8 <__gesf2>
   1150c:	000a8593          	mv	a1,s5
   11510:	00a04463          	bgtz	a0,11518 <_ZN6tflite17FakeQuantizeArrayEfffPKfPff+0x84>
   11514:	00048413          	mv	s0,s1
   11518:	00040513          	mv	a0,s0
   1151c:	745020ef          	jal	14460 <__lesf2>
   11520:	00048593          	mv	a1,s1
   11524:	00054463          	bltz	a0,1152c <_ZN6tflite17FakeQuantizeArrayEfffPKfPff+0x98>
   11528:	000a8413          	mv	s0,s5
   1152c:	00040513          	mv	a0,s0
   11530:	310030ef          	jal	14840 <__subsf3>
   11534:	000c0593          	mv	a1,s8
   11538:	7c1020ef          	jal	144f8 <__mulsf3>
   1153c:	614000ef          	jal	11b50 <roundf>
   11540:	00050593          	mv	a1,a0
   11544:	000b8513          	mv	a0,s7
   11548:	7b1020ef          	jal	144f8 <__mulsf3>
   1154c:	00048593          	mv	a1,s1
   11550:	66c020ef          	jal	13bbc <__addsf3>
   11554:	001a0a13          	addi	s4,s4,1
   11558:	00a92023          	sw	a0,0(s2)
   1155c:	000a0513          	mv	a0,s4
   11560:	041030ef          	jal	14da0 <__floatsisf>
   11564:	000b0593          	mv	a1,s6
   11568:	00498993          	addi	s3,s3,4
   1156c:	00490913          	addi	s2,s2,4
   11570:	6f1020ef          	jal	14460 <__lesf2>
   11574:	f80544e3          	bltz	a0,114fc <_ZN6tflite17FakeQuantizeArrayEfffPKfPff+0x68>
   11578:	02812403          	lw	s0,40(sp)
   1157c:	01812a03          	lw	s4,24(sp)
   11580:	00812c03          	lw	s8,8(sp)
   11584:	02c12083          	lw	ra,44(sp)
   11588:	02412483          	lw	s1,36(sp)
   1158c:	02012903          	lw	s2,32(sp)
   11590:	01c12983          	lw	s3,28(sp)
   11594:	01412a83          	lw	s5,20(sp)
   11598:	01012b03          	lw	s6,16(sp)
   1159c:	00c12b83          	lw	s7,12(sp)
   115a0:	03010113          	addi	sp,sp,48
   115a4:	00008067          	ret

000115a8 <_ZN6tflite11CheckedLog2EfPi>:
   115a8:	fe010113          	addi	sp,sp,-32
   115ac:	00112e23          	sw	ra,28(sp)
   115b0:	00812c23          	sw	s0,24(sp)
   115b4:	00912a23          	sw	s1,20(sp)
   115b8:	00058413          	mv	s0,a1
   115bc:	3ec000ef          	jal	119a8 <logf>
   115c0:	8441a583          	lw	a1,-1980(gp) # 1c71c <__SDATA_BEGIN__+0x44>
   115c4:	735020ef          	jal	144f8 <__mulsf3>
   115c8:	00050493          	mv	s1,a0
   115cc:	584000ef          	jal	11b50 <roundf>
   115d0:	00a12623          	sw	a0,12(sp)
   115d4:	6f4030ef          	jal	14cc8 <__fixsfsi>
   115d8:	00c12583          	lw	a1,12(sp)
   115dc:	00a42023          	sw	a0,0(s0)
   115e0:	00048513          	mv	a0,s1
   115e4:	25c030ef          	jal	14840 <__subsf3>
   115e8:	8481a583          	lw	a1,-1976(gp) # 1c720 <__SDATA_BEGIN__+0x48>
   115ec:	00151513          	slli	a0,a0,0x1
   115f0:	00155513          	srli	a0,a0,0x1
   115f4:	66d020ef          	jal	14460 <__lesf2>
   115f8:	01c12083          	lw	ra,28(sp)
   115fc:	01812403          	lw	s0,24(sp)
   11600:	01412483          	lw	s1,20(sp)
   11604:	01f55513          	srli	a0,a0,0x1f
   11608:	02010113          	addi	sp,sp,32
   1160c:	00008067          	ret

00011610 <_ZN6tflite23QuantizeMultiplierArrayEPKdjPlPi>:
   11610:	0c058863          	beqz	a1,116e0 <_ZN6tflite23QuantizeMultiplierArrayEPKdjPlPi+0xd0>
   11614:	fe010113          	addi	sp,sp,-32
   11618:	00812c23          	sw	s0,24(sp)
   1161c:	00912a23          	sw	s1,20(sp)
   11620:	01212823          	sw	s2,16(sp)
   11624:	01312623          	sw	s3,12(sp)
   11628:	01612023          	sw	s6,0(sp)
   1162c:	00112e23          	sw	ra,28(sp)
   11630:	01412423          	sw	s4,8(sp)
   11634:	01512223          	sw	s5,4(sp)
   11638:	00058b13          	mv	s6,a1
   1163c:	00050913          	mv	s2,a0
   11640:	00060493          	mv	s1,a2
   11644:	00068413          	mv	s0,a3
   11648:	00000993          	li	s3,0
   1164c:	0200006f          	j	1166c <_ZN6tflite23QuantizeMultiplierArrayEPKdjPlPi+0x5c>
   11650:	0004a023          	sw	zero,0(s1)
   11654:	00042023          	sw	zero,0(s0)
   11658:	00198993          	addi	s3,s3,1
   1165c:	00890913          	addi	s2,s2,8
   11660:	00448493          	addi	s1,s1,4
   11664:	00440413          	addi	s0,s0,4
   11668:	053b0863          	beq	s6,s3,116b8 <_ZN6tflite23QuantizeMultiplierArrayEPKdjPlPi+0xa8>
   1166c:	00092a03          	lw	s4,0(s2)
   11670:	00492a83          	lw	s5,4(s2)
   11674:	00000613          	li	a2,0
   11678:	00000693          	li	a3,0
   1167c:	000a8593          	mv	a1,s5
   11680:	000a0513          	mv	a0,s4
   11684:	099010ef          	jal	12f1c <__eqdf2>
   11688:	00050793          	mv	a5,a0
   1168c:	000a8593          	mv	a1,s5
   11690:	000a0513          	mv	a0,s4
   11694:	00040693          	mv	a3,s0
   11698:	00048613          	mv	a2,s1
   1169c:	fa078ae3          	beqz	a5,11650 <_ZN6tflite23QuantizeMultiplierArrayEPKdjPlPi+0x40>
   116a0:	00198993          	addi	s3,s3,1
   116a4:	8a4ff0ef          	jal	10748 <_ZN6tflite18QuantizeMultiplierEdPlPi.part.0>
   116a8:	00890913          	addi	s2,s2,8
   116ac:	00448493          	addi	s1,s1,4
   116b0:	00440413          	addi	s0,s0,4
   116b4:	fb3b1ce3          	bne	s6,s3,1166c <_ZN6tflite23QuantizeMultiplierArrayEPKdjPlPi+0x5c>
   116b8:	01c12083          	lw	ra,28(sp)
   116bc:	01812403          	lw	s0,24(sp)
   116c0:	01412483          	lw	s1,20(sp)
   116c4:	01012903          	lw	s2,16(sp)
   116c8:	00c12983          	lw	s3,12(sp)
   116cc:	00812a03          	lw	s4,8(sp)
   116d0:	00412a83          	lw	s5,4(sp)
   116d4:	00012b03          	lw	s6,0(sp)
   116d8:	02010113          	addi	sp,sp,32
   116dc:	00008067          	ret
   116e0:	00008067          	ret

000116e4 <floor>:
   116e4:	4145d713          	srai	a4,a1,0x14
   116e8:	fd010113          	addi	sp,sp,-48
   116ec:	7ff77713          	andi	a4,a4,2047
   116f0:	02112623          	sw	ra,44(sp)
   116f4:	c0170893          	addi	a7,a4,-1023
   116f8:	01300693          	li	a3,19
   116fc:	0b16c663          	blt	a3,a7,117a8 <floor+0xc4>
   11700:	1408c863          	bltz	a7,11850 <floor+0x16c>
   11704:	00100fb7          	lui	t6,0x100
   11708:	ffff8e93          	addi	t4,t6,-1 # fffff <__BSS_END__+0xdf19f>
   1170c:	411edeb3          	sra	t4,t4,a7
   11710:	00bef633          	and	a2,t4,a1
   11714:	00a66633          	or	a2,a2,a0
   11718:	00050693          	mv	a3,a0
   1171c:	00058713          	mv	a4,a1
   11720:	06060a63          	beqz	a2,11794 <floor+0xb0>
   11724:	8301a603          	lw	a2,-2000(gp) # 1c708 <__SDATA_BEGIN__+0x30>
   11728:	8341a683          	lw	a3,-1996(gp) # 1c70c <__SDATA_BEGIN__+0x34>
   1172c:	01d12623          	sw	t4,12(sp)
   11730:	01112c23          	sw	a7,24(sp)
   11734:	00b12a23          	sw	a1,20(sp)
   11738:	00b12223          	sw	a1,4(sp)
   1173c:	00a12423          	sw	a0,8(sp)
   11740:	00b12823          	sw	a1,16(sp)
   11744:	0c9000ef          	jal	1200c <__adddf3>
   11748:	00000613          	li	a2,0
   1174c:	00000693          	li	a3,0
   11750:	051010ef          	jal	12fa0 <__gedf2>
   11754:	00412e03          	lw	t3,4(sp)
   11758:	00812303          	lw	t1,8(sp)
   1175c:	02a05863          	blez	a0,1178c <floor+0xa8>
   11760:	01012f03          	lw	t5,16(sp)
   11764:	00c12e83          	lw	t4,12(sp)
   11768:	000f5c63          	bgez	t5,11780 <floor+0x9c>
   1176c:	01812883          	lw	a7,24(sp)
   11770:	01412783          	lw	a5,20(sp)
   11774:	00100fb7          	lui	t6,0x100
   11778:	411fdfb3          	sra	t6,t6,a7
   1177c:	00ff8f33          	add	t5,t6,a5
   11780:	fffece93          	not	t4,t4
   11784:	01eefe33          	and	t3,t4,t5
   11788:	00000313          	li	t1,0
   1178c:	00030693          	mv	a3,t1
   11790:	000e0713          	mv	a4,t3
   11794:	02c12083          	lw	ra,44(sp)
   11798:	00068513          	mv	a0,a3
   1179c:	00070593          	mv	a1,a4
   117a0:	03010113          	addi	sp,sp,48
   117a4:	00008067          	ret
   117a8:	03300693          	li	a3,51
   117ac:	0316d663          	bge	a3,a7,117d8 <floor+0xf4>
   117b0:	40000613          	li	a2,1024
   117b4:	00050693          	mv	a3,a0
   117b8:	00058713          	mv	a4,a1
   117bc:	fcc89ce3          	bne	a7,a2,11794 <floor+0xb0>
   117c0:	00058693          	mv	a3,a1
   117c4:	00050613          	mv	a2,a0
   117c8:	045000ef          	jal	1200c <__adddf3>
   117cc:	00050693          	mv	a3,a0
   117d0:	00058713          	mv	a4,a1
   117d4:	fc1ff06f          	j	11794 <floor+0xb0>
   117d8:	bed70713          	addi	a4,a4,-1043
   117dc:	fff00e93          	li	t4,-1
   117e0:	00eedeb3          	srl	t4,t4,a4
   117e4:	00aef633          	and	a2,t4,a0
   117e8:	00050693          	mv	a3,a0
   117ec:	00058713          	mv	a4,a1
   117f0:	fa0602e3          	beqz	a2,11794 <floor+0xb0>
   117f4:	8301a603          	lw	a2,-2000(gp) # 1c708 <__SDATA_BEGIN__+0x30>
   117f8:	8341a683          	lw	a3,-1996(gp) # 1c70c <__SDATA_BEGIN__+0x34>
   117fc:	01d12823          	sw	t4,16(sp)
   11800:	01112c23          	sw	a7,24(sp)
   11804:	00b12a23          	sw	a1,20(sp)
   11808:	00a12623          	sw	a0,12(sp)
   1180c:	00b12223          	sw	a1,4(sp)
   11810:	00a12423          	sw	a0,8(sp)
   11814:	00a12e23          	sw	a0,28(sp)
   11818:	7f4000ef          	jal	1200c <__adddf3>
   1181c:	00000613          	li	a2,0
   11820:	00000693          	li	a3,0
   11824:	77c010ef          	jal	12fa0 <__gedf2>
   11828:	00412e03          	lw	t3,4(sp)
   1182c:	00812303          	lw	t1,8(sp)
   11830:	f4a05ee3          	blez	a0,1178c <floor+0xa8>
   11834:	00c12803          	lw	a6,12(sp)
   11838:	01012e83          	lw	t4,16(sp)
   1183c:	00080313          	mv	t1,a6
   11840:	060e4e63          	bltz	t3,118bc <floor+0x1d8>
   11844:	fffece93          	not	t4,t4
   11848:	006ef333          	and	t1,t4,t1
   1184c:	f41ff06f          	j	1178c <floor+0xa8>
   11850:	8301a603          	lw	a2,-2000(gp) # 1c708 <__SDATA_BEGIN__+0x30>
   11854:	8341a683          	lw	a3,-1996(gp) # 1c70c <__SDATA_BEGIN__+0x34>
   11858:	00b12823          	sw	a1,16(sp)
   1185c:	00a12623          	sw	a0,12(sp)
   11860:	00a12423          	sw	a0,8(sp)
   11864:	00b12223          	sw	a1,4(sp)
   11868:	7a4000ef          	jal	1200c <__adddf3>
   1186c:	00000613          	li	a2,0
   11870:	00000693          	li	a3,0
   11874:	72c010ef          	jal	12fa0 <__gedf2>
   11878:	00412e03          	lw	t3,4(sp)
   1187c:	00812303          	lw	t1,8(sp)
   11880:	f0a056e3          	blez	a0,1178c <floor+0xa8>
   11884:	000e4863          	bltz	t3,11894 <floor+0x1b0>
   11888:	00000313          	li	t1,0
   1188c:	00000e13          	li	t3,0
   11890:	efdff06f          	j	1178c <floor+0xa8>
   11894:	800005b7          	lui	a1,0x80000
   11898:	00c12803          	lw	a6,12(sp)
   1189c:	fff58313          	addi	t1,a1,-1 # 7fffffff <__BSS_END__+0x7ffdf19f>
   118a0:	01c37333          	and	t1,t1,t3
   118a4:	01036333          	or	t1,t1,a6
   118a8:	00058e13          	mv	t3,a1
   118ac:	ee0300e3          	beqz	t1,1178c <floor+0xa8>
   118b0:	00000313          	li	t1,0
   118b4:	bff00e37          	lui	t3,0xbff00
   118b8:	ed5ff06f          	j	1178c <floor+0xa8>
   118bc:	01812883          	lw	a7,24(sp)
   118c0:	01400713          	li	a4,20
   118c4:	01412783          	lw	a5,20(sp)
   118c8:	01c12f83          	lw	t6,28(sp)
   118cc:	00e88e63          	beq	a7,a4,118e8 <floor+0x204>
   118d0:	03400713          	li	a4,52
   118d4:	41170733          	sub	a4,a4,a7
   118d8:	00100313          	li	t1,1
   118dc:	00e31333          	sll	t1,t1,a4
   118e0:	01030333          	add	t1,t1,a6
   118e4:	f7f370e3          	bgeu	t1,t6,11844 <floor+0x160>
   118e8:	00178e13          	addi	t3,a5,1
   118ec:	f59ff06f          	j	11844 <floor+0x160>

000118f0 <frexp>:
   118f0:	80000837          	lui	a6,0x80000
   118f4:	fff80813          	addi	a6,a6,-1 # 7fffffff <__BSS_END__+0x7ffdf19f>
   118f8:	00062023          	sw	zero,0(a2)
   118fc:	00b876b3          	and	a3,a6,a1
   11900:	7ff008b7          	lui	a7,0x7ff00
   11904:	00058793          	mv	a5,a1
   11908:	00050713          	mv	a4,a0
   1190c:	0916f863          	bgeu	a3,a7,1199c <frexp+0xac>
   11910:	00a6e8b3          	or	a7,a3,a0
   11914:	08088463          	beqz	a7,1199c <frexp+0xac>
   11918:	fe010113          	addi	sp,sp,-32
   1191c:	0145de13          	srli	t3,a1,0x14
   11920:	00112e23          	sw	ra,28(sp)
   11924:	7ffe7e13          	andi	t3,t3,2047
   11928:	00060893          	mv	a7,a2
   1192c:	00058313          	mv	t1,a1
   11930:	00000613          	li	a2,0
   11934:	020e1863          	bnez	t3,11964 <frexp+0x74>
   11938:	8381a603          	lw	a2,-1992(gp) # 1c710 <__SDATA_BEGIN__+0x38>
   1193c:	83c1a683          	lw	a3,-1988(gp) # 1c714 <__SDATA_BEGIN__+0x3c>
   11940:	01112623          	sw	a7,12(sp)
   11944:	00d010ef          	jal	13150 <__muldf3>
   11948:	80000737          	lui	a4,0x80000
   1194c:	00c12883          	lw	a7,12(sp)
   11950:	fff70813          	addi	a6,a4,-1 # 7fffffff <__BSS_END__+0x7ffdf19f>
   11954:	00b876b3          	and	a3,a6,a1
   11958:	00058313          	mv	t1,a1
   1195c:	00050713          	mv	a4,a0
   11960:	fca00613          	li	a2,-54
   11964:	4146d693          	srai	a3,a3,0x14
   11968:	801007b7          	lui	a5,0x80100
   1196c:	01c12083          	lw	ra,28(sp)
   11970:	fff78793          	addi	a5,a5,-1 # 800fffff <__BSS_END__+0x800df19f>
   11974:	c0268693          	addi	a3,a3,-1022
   11978:	00f37333          	and	t1,t1,a5
   1197c:	00c686b3          	add	a3,a3,a2
   11980:	3fe007b7          	lui	a5,0x3fe00
   11984:	00f367b3          	or	a5,t1,a5
   11988:	00d8a023          	sw	a3,0(a7) # 7ff00000 <__BSS_END__+0x7fedf1a0>
   1198c:	00070513          	mv	a0,a4
   11990:	00078593          	mv	a1,a5
   11994:	02010113          	addi	sp,sp,32
   11998:	00008067          	ret
   1199c:	00070513          	mv	a0,a4
   119a0:	00078593          	mv	a1,a5
   119a4:	00008067          	ret

000119a8 <logf>:
   119a8:	ff010113          	addi	sp,sp,-16
   119ac:	00812423          	sw	s0,8(sp)
   119b0:	00912223          	sw	s1,4(sp)
   119b4:	00050413          	mv	s0,a0
   119b8:	00112623          	sw	ra,12(sp)
   119bc:	220000ef          	jal	11bdc <__ieee754_logf>
   119c0:	00050493          	mv	s1,a0
   119c4:	00040593          	mv	a1,s0
   119c8:	00040513          	mv	a0,s0
   119cc:	2b8030ef          	jal	14c84 <__unordsf2>
   119d0:	02051a63          	bnez	a0,11a04 <logf+0x5c>
   119d4:	00000593          	li	a1,0
   119d8:	00040513          	mv	a0,s0
   119dc:	1ed020ef          	jal	143c8 <__gesf2>
   119e0:	02a04263          	bgtz	a0,11a04 <logf+0x5c>
   119e4:	00040513          	mv	a0,s0
   119e8:	00000593          	li	a1,0
   119ec:	171020ef          	jal	1435c <__eqsf2>
   119f0:	02051663          	bnez	a0,11a1c <logf+0x74>
   119f4:	390060ef          	jal	17d84 <__errno>
   119f8:	84c1a483          	lw	s1,-1972(gp) # 1c724 <__SDATA_BEGIN__+0x4c>
   119fc:	02200713          	li	a4,34
   11a00:	00e52023          	sw	a4,0(a0)
   11a04:	00c12083          	lw	ra,12(sp)
   11a08:	00812403          	lw	s0,8(sp)
   11a0c:	00048513          	mv	a0,s1
   11a10:	00412483          	lw	s1,4(sp)
   11a14:	01010113          	addi	sp,sp,16
   11a18:	00008067          	ret
   11a1c:	368060ef          	jal	17d84 <__errno>
   11a20:	00812403          	lw	s0,8(sp)
   11a24:	00c12083          	lw	ra,12(sp)
   11a28:	00412483          	lw	s1,4(sp)
   11a2c:	02100713          	li	a4,33
   11a30:	00e52023          	sw	a4,0(a0)
   11a34:	0001b7b7          	lui	a5,0x1b
   11a38:	cb078513          	addi	a0,a5,-848 # 1acb0 <_exit+0x1cc>
   11a3c:	01010113          	addi	sp,sp,16
   11a40:	1080006f          	j	11b48 <nanf>

00011a44 <round>:
   11a44:	4145d793          	srai	a5,a1,0x14
   11a48:	7ff7f793          	andi	a5,a5,2047
   11a4c:	c0178613          	addi	a2,a5,-1023
   11a50:	01300813          	li	a6,19
   11a54:	00058693          	mv	a3,a1
   11a58:	00050893          	mv	a7,a0
   11a5c:	04c84463          	blt	a6,a2,11aa4 <round+0x60>
   11a60:	0a064e63          	bltz	a2,11b1c <round+0xd8>
   11a64:	001007b7          	lui	a5,0x100
   11a68:	fff78793          	addi	a5,a5,-1 # fffff <__BSS_END__+0xdf19f>
   11a6c:	40c7d7b3          	sra	a5,a5,a2
   11a70:	00b7f733          	and	a4,a5,a1
   11a74:	00a76733          	or	a4,a4,a0
   11a78:	0c070263          	beqz	a4,11b3c <round+0xf8>
   11a7c:	00080737          	lui	a4,0x80
   11a80:	40c75733          	sra	a4,a4,a2
   11a84:	fff7c793          	not	a5,a5
   11a88:	00b70733          	add	a4,a4,a1
   11a8c:	00f77733          	and	a4,a4,a5
   11a90:	00000793          	li	a5,0
   11a94:	00070813          	mv	a6,a4
   11a98:	00078513          	mv	a0,a5
   11a9c:	00080593          	mv	a1,a6
   11aa0:	00008067          	ret
   11aa4:	03300313          	li	t1,51
   11aa8:	02c35863          	bge	t1,a2,11ad8 <round+0x94>
   11aac:	40000713          	li	a4,1024
   11ab0:	00050793          	mv	a5,a0
   11ab4:	00058813          	mv	a6,a1
   11ab8:	fee610e3          	bne	a2,a4,11a98 <round+0x54>
   11abc:	ff010113          	addi	sp,sp,-16
   11ac0:	00050613          	mv	a2,a0
   11ac4:	00112623          	sw	ra,12(sp)
   11ac8:	544000ef          	jal	1200c <__adddf3>
   11acc:	00c12083          	lw	ra,12(sp)
   11ad0:	01010113          	addi	sp,sp,16
   11ad4:	00008067          	ret
   11ad8:	bed78793          	addi	a5,a5,-1043
   11adc:	00058713          	mv	a4,a1
   11ae0:	fff00593          	li	a1,-1
   11ae4:	00f5d5b3          	srl	a1,a1,a5
   11ae8:	00a5f533          	and	a0,a1,a0
   11aec:	00088793          	mv	a5,a7
   11af0:	00068813          	mv	a6,a3
   11af4:	fa0502e3          	beqz	a0,11a98 <round+0x54>
   11af8:	40c30333          	sub	t1,t1,a2
   11afc:	00100613          	li	a2,1
   11b00:	00661633          	sll	a2,a2,t1
   11b04:	011607b3          	add	a5,a2,a7
   11b08:	00c7f463          	bgeu	a5,a2,11b10 <round+0xcc>
   11b0c:	00168713          	addi	a4,a3,1
   11b10:	fff5c593          	not	a1,a1
   11b14:	00f5f7b3          	and	a5,a1,a5
   11b18:	f7dff06f          	j	11a94 <round+0x50>
   11b1c:	80000737          	lui	a4,0x80000
   11b20:	fff00693          	li	a3,-1
   11b24:	00b77733          	and	a4,a4,a1
   11b28:	00000793          	li	a5,0
   11b2c:	f6d614e3          	bne	a2,a3,11a94 <round+0x50>
   11b30:	3ff006b7          	lui	a3,0x3ff00
   11b34:	00d76733          	or	a4,a4,a3
   11b38:	f5dff06f          	j	11a94 <round+0x50>
   11b3c:	00050793          	mv	a5,a0
   11b40:	00058813          	mv	a6,a1
   11b44:	f55ff06f          	j	11a98 <round+0x54>

00011b48 <nanf>:
   11b48:	8501a503          	lw	a0,-1968(gp) # 1c728 <__SDATA_BEGIN__+0x50>
   11b4c:	00008067          	ret

00011b50 <roundf>:
   11b50:	01755793          	srli	a5,a0,0x17
   11b54:	0ff7f793          	zext.b	a5,a5
   11b58:	f8178793          	addi	a5,a5,-127
   11b5c:	01600693          	li	a3,22
   11b60:	02f6ce63          	blt	a3,a5,11b9c <roundf+0x4c>
   11b64:	0407ce63          	bltz	a5,11bc0 <roundf+0x70>
   11b68:	008006b7          	lui	a3,0x800
   11b6c:	fff68693          	addi	a3,a3,-1 # 7fffff <__BSS_END__+0x7df19f>
   11b70:	40f6d6b3          	sra	a3,a3,a5
   11b74:	00a6f633          	and	a2,a3,a0
   11b78:	00050593          	mv	a1,a0
   11b7c:	00060c63          	beqz	a2,11b94 <roundf+0x44>
   11b80:	004005b7          	lui	a1,0x400
   11b84:	40f5d5b3          	sra	a1,a1,a5
   11b88:	fff6c693          	not	a3,a3
   11b8c:	00a585b3          	add	a1,a1,a0
   11b90:	00b6f5b3          	and	a1,a3,a1
   11b94:	00058513          	mv	a0,a1
   11b98:	00008067          	ret
   11b9c:	08000693          	li	a3,128
   11ba0:	00050593          	mv	a1,a0
   11ba4:	fed798e3          	bne	a5,a3,11b94 <roundf+0x44>
   11ba8:	ff010113          	addi	sp,sp,-16
   11bac:	00112623          	sw	ra,12(sp)
   11bb0:	00c020ef          	jal	13bbc <__addsf3>
   11bb4:	00c12083          	lw	ra,12(sp)
   11bb8:	01010113          	addi	sp,sp,16
   11bbc:	00008067          	ret
   11bc0:	800005b7          	lui	a1,0x80000
   11bc4:	fff00693          	li	a3,-1
   11bc8:	00a5f5b3          	and	a1,a1,a0
   11bcc:	fcd794e3          	bne	a5,a3,11b94 <roundf+0x44>
   11bd0:	3f8007b7          	lui	a5,0x3f800
   11bd4:	00f5e5b3          	or	a1,a1,a5
   11bd8:	fbdff06f          	j	11b94 <roundf+0x44>

00011bdc <__ieee754_logf>:
   11bdc:	fd010113          	addi	sp,sp,-48
   11be0:	02112623          	sw	ra,44(sp)
   11be4:	00151793          	slli	a5,a0,0x1
   11be8:	0a078e63          	beqz	a5,11ca4 <__ieee754_logf+0xc8>
   11bec:	00050593          	mv	a1,a0
   11bf0:	00050793          	mv	a5,a0
   11bf4:	0c054463          	bltz	a0,11cbc <__ieee754_logf+0xe0>
   11bf8:	7f800737          	lui	a4,0x7f800
   11bfc:	26e55c63          	bge	a0,a4,11e74 <__ieee754_logf+0x298>
   11c00:	01412c23          	sw	s4,24(sp)
   11c04:	01512a23          	sw	s5,20(sp)
   11c08:	00800737          	lui	a4,0x800
   11c0c:	00000813          	li	a6,0
   11c10:	00e55a63          	bge	a0,a4,11c24 <__ieee754_logf+0x48>
   11c14:	8581a583          	lw	a1,-1960(gp) # 1c730 <__SDATA_BEGIN__+0x58>
   11c18:	0e1020ef          	jal	144f8 <__mulsf3>
   11c1c:	00050793          	mv	a5,a0
   11c20:	fe700813          	li	a6,-25
   11c24:	00800637          	lui	a2,0x800
   11c28:	fff60693          	addi	a3,a2,-1 # 7fffff <__BSS_END__+0x7df19f>
   11c2c:	004b0737          	lui	a4,0x4b0
   11c30:	00d7f6b3          	and	a3,a5,a3
   11c34:	b2070713          	addi	a4,a4,-1248 # 4afb20 <__BSS_END__+0x48ecc0>
   11c38:	00e68733          	add	a4,a3,a4
   11c3c:	00c77733          	and	a4,a4,a2
   11c40:	8401a583          	lw	a1,-1984(gp) # 1c718 <__SDATA_BEGIN__+0x40>
   11c44:	4177d793          	srai	a5,a5,0x17
   11c48:	3f800537          	lui	a0,0x3f800
   11c4c:	00a74533          	xor	a0,a4,a0
   11c50:	f8178793          	addi	a5,a5,-127 # 3f7fff81 <__BSS_END__+0x3f7df121>
   11c54:	010787b3          	add	a5,a5,a6
   11c58:	41775713          	srai	a4,a4,0x17
   11c5c:	00d56533          	or	a0,a0,a3
   11c60:	00f70a33          	add	s4,a4,a5
   11c64:	00d12423          	sw	a3,8(sp)
   11c68:	3d9020ef          	jal	14840 <__subsf3>
   11c6c:	00812683          	lw	a3,8(sp)
   11c70:	00050a93          	mv	s5,a0
   11c74:	00f68793          	addi	a5,a3,15
   11c78:	00979713          	slli	a4,a5,0x9
   11c7c:	00d75713          	srli	a4,a4,0xd
   11c80:	04071a63          	bnez	a4,11cd4 <__ieee754_logf+0xf8>
   11c84:	00000593          	li	a1,0
   11c88:	6d4020ef          	jal	1435c <__eqsf2>
   11c8c:	1e051c63          	bnez	a0,11e84 <__ieee754_logf+0x2a8>
   11c90:	00000513          	li	a0,0
   11c94:	320a1063          	bnez	s4,11fb4 <__ieee754_logf+0x3d8>
   11c98:	01812a03          	lw	s4,24(sp)
   11c9c:	01412a83          	lw	s5,20(sp)
   11ca0:	0100006f          	j	11cb0 <__ieee754_logf+0xd4>
   11ca4:	8541a503          	lw	a0,-1964(gp) # 1c72c <__SDATA_BEGIN__+0x54>
   11ca8:	00000593          	li	a1,0
   11cac:	33c020ef          	jal	13fe8 <__divsf3>
   11cb0:	02c12083          	lw	ra,44(sp)
   11cb4:	03010113          	addi	sp,sp,48
   11cb8:	00008067          	ret
   11cbc:	385020ef          	jal	14840 <__subsf3>
   11cc0:	00000593          	li	a1,0
   11cc4:	324020ef          	jal	13fe8 <__divsf3>
   11cc8:	02c12083          	lw	ra,44(sp)
   11ccc:	03010113          	addi	sp,sp,48
   11cd0:	00008067          	ret
   11cd4:	86c1a583          	lw	a1,-1940(gp) # 1c744 <__SDATA_BEGIN__+0x6c>
   11cd8:	00d12423          	sw	a3,8(sp)
   11cdc:	02812423          	sw	s0,40(sp)
   11ce0:	02912223          	sw	s1,36(sp)
   11ce4:	01312e23          	sw	s3,28(sp)
   11ce8:	01612823          	sw	s6,16(sp)
   11cec:	6d1010ef          	jal	13bbc <__addsf3>
   11cf0:	00050593          	mv	a1,a0
   11cf4:	000a8513          	mv	a0,s5
   11cf8:	2f0020ef          	jal	13fe8 <__divsf3>
   11cfc:	00050413          	mv	s0,a0
   11d00:	00050493          	mv	s1,a0
   11d04:	000a0513          	mv	a0,s4
   11d08:	098030ef          	jal	14da0 <__floatsisf>
   11d0c:	00040593          	mv	a1,s0
   11d10:	00050b13          	mv	s6,a0
   11d14:	00040513          	mv	a0,s0
   11d18:	7e0020ef          	jal	144f8 <__mulsf3>
   11d1c:	00812683          	lw	a3,8(sp)
   11d20:	ffcf6737          	lui	a4,0xffcf6
   11d24:	c3070713          	addi	a4,a4,-976 # ffcf5c30 <__BSS_END__+0xffcd4dd0>
   11d28:	00e68733          	add	a4,a3,a4
   11d2c:	00050593          	mv	a1,a0
   11d30:	00d12623          	sw	a3,12(sp)
   11d34:	00e12423          	sw	a4,8(sp)
   11d38:	00050993          	mv	s3,a0
   11d3c:	7bc020ef          	jal	144f8 <__mulsf3>
   11d40:	8701a583          	lw	a1,-1936(gp) # 1c748 <__SDATA_BEGIN__+0x70>
   11d44:	00050413          	mv	s0,a0
   11d48:	7b0020ef          	jal	144f8 <__mulsf3>
   11d4c:	8741a583          	lw	a1,-1932(gp) # 1c74c <__SDATA_BEGIN__+0x74>
   11d50:	66d010ef          	jal	13bbc <__addsf3>
   11d54:	00040593          	mv	a1,s0
   11d58:	7a0020ef          	jal	144f8 <__mulsf3>
   11d5c:	8781a583          	lw	a1,-1928(gp) # 1c750 <__SDATA_BEGIN__+0x78>
   11d60:	65d010ef          	jal	13bbc <__addsf3>
   11d64:	00040593          	mv	a1,s0
   11d68:	790020ef          	jal	144f8 <__mulsf3>
   11d6c:	87c1a583          	lw	a1,-1924(gp) # 1c754 <__SDATA_BEGIN__+0x7c>
   11d70:	64d010ef          	jal	13bbc <__addsf3>
   11d74:	00098593          	mv	a1,s3
   11d78:	780020ef          	jal	144f8 <__mulsf3>
   11d7c:	8801a583          	lw	a1,-1920(gp) # 1c758 <__SDATA_BEGIN__+0x80>
   11d80:	00050993          	mv	s3,a0
   11d84:	00040513          	mv	a0,s0
   11d88:	770020ef          	jal	144f8 <__mulsf3>
   11d8c:	8841a583          	lw	a1,-1916(gp) # 1c75c <__SDATA_BEGIN__+0x84>
   11d90:	62d010ef          	jal	13bbc <__addsf3>
   11d94:	00040593          	mv	a1,s0
   11d98:	760020ef          	jal	144f8 <__mulsf3>
   11d9c:	8881a583          	lw	a1,-1912(gp) # 1c760 <__SDATA_BEGIN__+0x88>
   11da0:	61d010ef          	jal	13bbc <__addsf3>
   11da4:	00040593          	mv	a1,s0
   11da8:	750020ef          	jal	144f8 <__mulsf3>
   11dac:	00050593          	mv	a1,a0
   11db0:	00098513          	mv	a0,s3
   11db4:	609010ef          	jal	13bbc <__addsf3>
   11db8:	00c12683          	lw	a3,12(sp)
   11dbc:	00812703          	lw	a4,8(sp)
   11dc0:	0035c7b7          	lui	a5,0x35c
   11dc4:	28878793          	addi	a5,a5,648 # 35c288 <__BSS_END__+0x33b428>
   11dc8:	40d787b3          	sub	a5,a5,a3
   11dcc:	00e7e7b3          	or	a5,a5,a4
   11dd0:	10f05c63          	blez	a5,11ee8 <__ieee754_logf+0x30c>
   11dd4:	8681a583          	lw	a1,-1944(gp) # 1c740 <__SDATA_BEGIN__+0x68>
   11dd8:	00a12423          	sw	a0,8(sp)
   11ddc:	000a8513          	mv	a0,s5
   11de0:	03212023          	sw	s2,32(sp)
   11de4:	714020ef          	jal	144f8 <__mulsf3>
   11de8:	000a8593          	mv	a1,s5
   11dec:	70c020ef          	jal	144f8 <__mulsf3>
   11df0:	00050593          	mv	a1,a0
   11df4:	00050913          	mv	s2,a0
   11df8:	00812503          	lw	a0,8(sp)
   11dfc:	5c1010ef          	jal	13bbc <__addsf3>
   11e00:	00048593          	mv	a1,s1
   11e04:	6f4020ef          	jal	144f8 <__mulsf3>
   11e08:	140a0a63          	beqz	s4,11f5c <__ieee754_logf+0x380>
   11e0c:	85c1a583          	lw	a1,-1956(gp) # 1c734 <__SDATA_BEGIN__+0x5c>
   11e10:	00a12423          	sw	a0,8(sp)
   11e14:	000b0513          	mv	a0,s6
   11e18:	6e0020ef          	jal	144f8 <__mulsf3>
   11e1c:	8601a583          	lw	a1,-1952(gp) # 1c738 <__SDATA_BEGIN__+0x60>
   11e20:	00050493          	mv	s1,a0
   11e24:	000b0513          	mv	a0,s6
   11e28:	6d0020ef          	jal	144f8 <__mulsf3>
   11e2c:	00812583          	lw	a1,8(sp)
   11e30:	58d010ef          	jal	13bbc <__addsf3>
   11e34:	00050593          	mv	a1,a0
   11e38:	00090513          	mv	a0,s2
   11e3c:	205020ef          	jal	14840 <__subsf3>
   11e40:	000a8593          	mv	a1,s5
   11e44:	1fd020ef          	jal	14840 <__subsf3>
   11e48:	00050593          	mv	a1,a0
   11e4c:	00048513          	mv	a0,s1
   11e50:	1f1020ef          	jal	14840 <__subsf3>
   11e54:	02812403          	lw	s0,40(sp)
   11e58:	02412483          	lw	s1,36(sp)
   11e5c:	02012903          	lw	s2,32(sp)
   11e60:	01c12983          	lw	s3,28(sp)
   11e64:	01812a03          	lw	s4,24(sp)
   11e68:	01412a83          	lw	s5,20(sp)
   11e6c:	01012b03          	lw	s6,16(sp)
   11e70:	e41ff06f          	j	11cb0 <__ieee754_logf+0xd4>
   11e74:	549010ef          	jal	13bbc <__addsf3>
   11e78:	02c12083          	lw	ra,44(sp)
   11e7c:	03010113          	addi	sp,sp,48
   11e80:	00008067          	ret
   11e84:	8641a583          	lw	a1,-1948(gp) # 1c73c <__SDATA_BEGIN__+0x64>
   11e88:	000a8513          	mv	a0,s5
   11e8c:	02812423          	sw	s0,40(sp)
   11e90:	02912223          	sw	s1,36(sp)
   11e94:	664020ef          	jal	144f8 <__mulsf3>
   11e98:	00050593          	mv	a1,a0
   11e9c:	8681a503          	lw	a0,-1944(gp) # 1c740 <__SDATA_BEGIN__+0x68>
   11ea0:	000a8413          	mv	s0,s5
   11ea4:	19d020ef          	jal	14840 <__subsf3>
   11ea8:	00050493          	mv	s1,a0
   11eac:	000a8593          	mv	a1,s5
   11eb0:	000a8513          	mv	a0,s5
   11eb4:	644020ef          	jal	144f8 <__mulsf3>
   11eb8:	00050593          	mv	a1,a0
   11ebc:	00048513          	mv	a0,s1
   11ec0:	638020ef          	jal	144f8 <__mulsf3>
   11ec4:	0a0a1863          	bnez	s4,11f74 <__ieee754_logf+0x398>
   11ec8:	00050593          	mv	a1,a0
   11ecc:	00040513          	mv	a0,s0
   11ed0:	171020ef          	jal	14840 <__subsf3>
   11ed4:	02812403          	lw	s0,40(sp)
   11ed8:	02412483          	lw	s1,36(sp)
   11edc:	01812a03          	lw	s4,24(sp)
   11ee0:	01412a83          	lw	s5,20(sp)
   11ee4:	dcdff06f          	j	11cb0 <__ieee754_logf+0xd4>
   11ee8:	00050593          	mv	a1,a0
   11eec:	000a8513          	mv	a0,s5
   11ef0:	151020ef          	jal	14840 <__subsf3>
   11ef4:	00048593          	mv	a1,s1
   11ef8:	600020ef          	jal	144f8 <__mulsf3>
   11efc:	100a0263          	beqz	s4,12000 <__ieee754_logf+0x424>
   11f00:	85c1a583          	lw	a1,-1956(gp) # 1c734 <__SDATA_BEGIN__+0x5c>
   11f04:	00a12423          	sw	a0,8(sp)
   11f08:	000b0513          	mv	a0,s6
   11f0c:	5ec020ef          	jal	144f8 <__mulsf3>
   11f10:	8601a583          	lw	a1,-1952(gp) # 1c738 <__SDATA_BEGIN__+0x60>
   11f14:	00050493          	mv	s1,a0
   11f18:	000b0513          	mv	a0,s6
   11f1c:	5dc020ef          	jal	144f8 <__mulsf3>
   11f20:	00050593          	mv	a1,a0
   11f24:	00812503          	lw	a0,8(sp)
   11f28:	119020ef          	jal	14840 <__subsf3>
   11f2c:	000a8593          	mv	a1,s5
   11f30:	111020ef          	jal	14840 <__subsf3>
   11f34:	00050593          	mv	a1,a0
   11f38:	00048513          	mv	a0,s1
   11f3c:	105020ef          	jal	14840 <__subsf3>
   11f40:	02812403          	lw	s0,40(sp)
   11f44:	02412483          	lw	s1,36(sp)
   11f48:	01c12983          	lw	s3,28(sp)
   11f4c:	01812a03          	lw	s4,24(sp)
   11f50:	01412a83          	lw	s5,20(sp)
   11f54:	01012b03          	lw	s6,16(sp)
   11f58:	d59ff06f          	j	11cb0 <__ieee754_logf+0xd4>
   11f5c:	00050593          	mv	a1,a0
   11f60:	00090513          	mv	a0,s2
   11f64:	0dd020ef          	jal	14840 <__subsf3>
   11f68:	00050593          	mv	a1,a0
   11f6c:	000a8513          	mv	a0,s5
   11f70:	ee1ff06f          	j	11e50 <__ieee754_logf+0x274>
   11f74:	00a12423          	sw	a0,8(sp)
   11f78:	000a0513          	mv	a0,s4
   11f7c:	625020ef          	jal	14da0 <__floatsisf>
   11f80:	85c1a583          	lw	a1,-1956(gp) # 1c734 <__SDATA_BEGIN__+0x5c>
   11f84:	00050493          	mv	s1,a0
   11f88:	570020ef          	jal	144f8 <__mulsf3>
   11f8c:	8601a583          	lw	a1,-1952(gp) # 1c738 <__SDATA_BEGIN__+0x60>
   11f90:	00050413          	mv	s0,a0
   11f94:	00048513          	mv	a0,s1
   11f98:	560020ef          	jal	144f8 <__mulsf3>
   11f9c:	00050593          	mv	a1,a0
   11fa0:	00812503          	lw	a0,8(sp)
   11fa4:	09d020ef          	jal	14840 <__subsf3>
   11fa8:	000a8593          	mv	a1,s5
   11fac:	095020ef          	jal	14840 <__subsf3>
   11fb0:	f19ff06f          	j	11ec8 <__ieee754_logf+0x2ec>
   11fb4:	000a0513          	mv	a0,s4
   11fb8:	02812423          	sw	s0,40(sp)
   11fbc:	02912223          	sw	s1,36(sp)
   11fc0:	5e1020ef          	jal	14da0 <__floatsisf>
   11fc4:	85c1a583          	lw	a1,-1956(gp) # 1c734 <__SDATA_BEGIN__+0x5c>
   11fc8:	00050493          	mv	s1,a0
   11fcc:	52c020ef          	jal	144f8 <__mulsf3>
   11fd0:	8601a583          	lw	a1,-1952(gp) # 1c738 <__SDATA_BEGIN__+0x60>
   11fd4:	00050413          	mv	s0,a0
   11fd8:	00048513          	mv	a0,s1
   11fdc:	51c020ef          	jal	144f8 <__mulsf3>
   11fe0:	00050593          	mv	a1,a0
   11fe4:	00040513          	mv	a0,s0
   11fe8:	3d5010ef          	jal	13bbc <__addsf3>
   11fec:	02812403          	lw	s0,40(sp)
   11ff0:	02412483          	lw	s1,36(sp)
   11ff4:	01812a03          	lw	s4,24(sp)
   11ff8:	01412a83          	lw	s5,20(sp)
   11ffc:	cb5ff06f          	j	11cb0 <__ieee754_logf+0xd4>
   12000:	00050593          	mv	a1,a0
   12004:	000a8513          	mv	a0,s5
   12008:	f35ff06f          	j	11f3c <__ieee754_logf+0x360>

0001200c <__adddf3>:
   1200c:	00100737          	lui	a4,0x100
   12010:	fe010113          	addi	sp,sp,-32
   12014:	fff70713          	addi	a4,a4,-1 # fffff <__BSS_END__+0xdf19f>
   12018:	00b777b3          	and	a5,a4,a1
   1201c:	0146d893          	srli	a7,a3,0x14
   12020:	00d77733          	and	a4,a4,a3
   12024:	00812c23          	sw	s0,24(sp)
   12028:	0145d413          	srli	s0,a1,0x14
   1202c:	00371713          	slli	a4,a4,0x3
   12030:	01d65813          	srli	a6,a2,0x1d
   12034:	01212823          	sw	s2,16(sp)
   12038:	7ff47413          	andi	s0,s0,2047
   1203c:	01f5d913          	srli	s2,a1,0x1f
   12040:	00379793          	slli	a5,a5,0x3
   12044:	01d55593          	srli	a1,a0,0x1d
   12048:	7ff8f893          	andi	a7,a7,2047
   1204c:	00112e23          	sw	ra,28(sp)
   12050:	00912a23          	sw	s1,20(sp)
   12054:	01312623          	sw	s3,12(sp)
   12058:	01f6d693          	srli	a3,a3,0x1f
   1205c:	00f5e7b3          	or	a5,a1,a5
   12060:	00e86833          	or	a6,a6,a4
   12064:	00351513          	slli	a0,a0,0x3
   12068:	00361613          	slli	a2,a2,0x3
   1206c:	41140733          	sub	a4,s0,a7
   12070:	7ff00593          	li	a1,2047
   12074:	30d91463          	bne	s2,a3,1237c <__adddf3+0x370>
   12078:	10e05263          	blez	a4,1217c <__adddf3+0x170>
   1207c:	02089c63          	bnez	a7,120b4 <__adddf3+0xa8>
   12080:	00c86733          	or	a4,a6,a2
   12084:	02070463          	beqz	a4,120ac <__adddf3+0xa0>
   12088:	fff40713          	addi	a4,s0,-1
   1208c:	00071e63          	bnez	a4,120a8 <__adddf3+0x9c>
   12090:	00c50633          	add	a2,a0,a2
   12094:	010787b3          	add	a5,a5,a6
   12098:	00a63533          	sltu	a0,a2,a0
   1209c:	00a787b3          	add	a5,a5,a0
   120a0:	00100413          	li	s0,1
   120a4:	0600006f          	j	12104 <__adddf3+0xf8>
   120a8:	00b41c63          	bne	s0,a1,120c0 <__adddf3+0xb4>
   120ac:	00050613          	mv	a2,a0
   120b0:	1d80006f          	j	12288 <__adddf3+0x27c>
   120b4:	feb40ce3          	beq	s0,a1,120ac <__adddf3+0xa0>
   120b8:	008006b7          	lui	a3,0x800
   120bc:	00d86833          	or	a6,a6,a3
   120c0:	03800693          	li	a3,56
   120c4:	0ae6c663          	blt	a3,a4,12170 <__adddf3+0x164>
   120c8:	01f00693          	li	a3,31
   120cc:	02000893          	li	a7,32
   120d0:	06e6c863          	blt	a3,a4,12140 <__adddf3+0x134>
   120d4:	40e888b3          	sub	a7,a7,a4
   120d8:	011816b3          	sll	a3,a6,a7
   120dc:	00e655b3          	srl	a1,a2,a4
   120e0:	011618b3          	sll	a7,a2,a7
   120e4:	00b6e6b3          	or	a3,a3,a1
   120e8:	011038b3          	snez	a7,a7
   120ec:	0116e6b3          	or	a3,a3,a7
   120f0:	00e85733          	srl	a4,a6,a4
   120f4:	00a68633          	add	a2,a3,a0
   120f8:	00f70733          	add	a4,a4,a5
   120fc:	00d636b3          	sltu	a3,a2,a3
   12100:	00d707b3          	add	a5,a4,a3
   12104:	00879713          	slli	a4,a5,0x8
   12108:	22075663          	bgez	a4,12334 <__adddf3+0x328>
   1210c:	00140413          	addi	s0,s0,1
   12110:	7ff00713          	li	a4,2047
   12114:	60e40863          	beq	s0,a4,12724 <__adddf3+0x718>
   12118:	ff800737          	lui	a4,0xff800
   1211c:	fff70713          	addi	a4,a4,-1 # ff7fffff <__BSS_END__+0xff7df19f>
   12120:	00e7f7b3          	and	a5,a5,a4
   12124:	00165713          	srli	a4,a2,0x1
   12128:	00167613          	andi	a2,a2,1
   1212c:	00c76733          	or	a4,a4,a2
   12130:	01f79613          	slli	a2,a5,0x1f
   12134:	00e66633          	or	a2,a2,a4
   12138:	0017d793          	srli	a5,a5,0x1
   1213c:	1f80006f          	j	12334 <__adddf3+0x328>
   12140:	fe070693          	addi	a3,a4,-32
   12144:	00d856b3          	srl	a3,a6,a3
   12148:	00000593          	li	a1,0
   1214c:	01170863          	beq	a4,a7,1215c <__adddf3+0x150>
   12150:	04000593          	li	a1,64
   12154:	40e585b3          	sub	a1,a1,a4
   12158:	00b815b3          	sll	a1,a6,a1
   1215c:	00c5e5b3          	or	a1,a1,a2
   12160:	00b035b3          	snez	a1,a1
   12164:	00b6e6b3          	or	a3,a3,a1
   12168:	00000713          	li	a4,0
   1216c:	f89ff06f          	j	120f4 <__adddf3+0xe8>
   12170:	00c866b3          	or	a3,a6,a2
   12174:	00d036b3          	snez	a3,a3
   12178:	ff1ff06f          	j	12168 <__adddf3+0x15c>
   1217c:	0c070263          	beqz	a4,12240 <__adddf3+0x234>
   12180:	40888733          	sub	a4,a7,s0
   12184:	02041263          	bnez	s0,121a8 <__adddf3+0x19c>
   12188:	00a7e6b3          	or	a3,a5,a0
   1218c:	00068863          	beqz	a3,1219c <__adddf3+0x190>
   12190:	fff70693          	addi	a3,a4,-1
   12194:	ee068ee3          	beqz	a3,12090 <__adddf3+0x84>
   12198:	02b71063          	bne	a4,a1,121b8 <__adddf3+0x1ac>
   1219c:	00080793          	mv	a5,a6
   121a0:	00070413          	mv	s0,a4
   121a4:	0e40006f          	j	12288 <__adddf3+0x27c>
   121a8:	58b88663          	beq	a7,a1,12734 <__adddf3+0x728>
   121ac:	008006b7          	lui	a3,0x800
   121b0:	00d7e7b3          	or	a5,a5,a3
   121b4:	00070693          	mv	a3,a4
   121b8:	03800713          	li	a4,56
   121bc:	06d74c63          	blt	a4,a3,12234 <__adddf3+0x228>
   121c0:	01f00713          	li	a4,31
   121c4:	02000313          	li	t1,32
   121c8:	02d74e63          	blt	a4,a3,12204 <__adddf3+0x1f8>
   121cc:	40d30333          	sub	t1,t1,a3
   121d0:	00679733          	sll	a4,a5,t1
   121d4:	00d555b3          	srl	a1,a0,a3
   121d8:	00651333          	sll	t1,a0,t1
   121dc:	00b76733          	or	a4,a4,a1
   121e0:	00603333          	snez	t1,t1
   121e4:	00676733          	or	a4,a4,t1
   121e8:	00d7d6b3          	srl	a3,a5,a3
   121ec:	00c70633          	add	a2,a4,a2
   121f0:	010686b3          	add	a3,a3,a6
   121f4:	00e63733          	sltu	a4,a2,a4
   121f8:	00e687b3          	add	a5,a3,a4
   121fc:	00088413          	mv	s0,a7
   12200:	f05ff06f          	j	12104 <__adddf3+0xf8>
   12204:	fe068713          	addi	a4,a3,-32 # 7fffe0 <__BSS_END__+0x7df180>
   12208:	00e7d733          	srl	a4,a5,a4
   1220c:	00000593          	li	a1,0
   12210:	00668863          	beq	a3,t1,12220 <__adddf3+0x214>
   12214:	04000593          	li	a1,64
   12218:	40d585b3          	sub	a1,a1,a3
   1221c:	00b795b3          	sll	a1,a5,a1
   12220:	00a5e5b3          	or	a1,a1,a0
   12224:	00b035b3          	snez	a1,a1
   12228:	00b76733          	or	a4,a4,a1
   1222c:	00000693          	li	a3,0
   12230:	fbdff06f          	j	121ec <__adddf3+0x1e0>
   12234:	00a7e733          	or	a4,a5,a0
   12238:	00e03733          	snez	a4,a4
   1223c:	ff1ff06f          	j	1222c <__adddf3+0x220>
   12240:	00140713          	addi	a4,s0,1
   12244:	7fe77693          	andi	a3,a4,2046
   12248:	0c069263          	bnez	a3,1230c <__adddf3+0x300>
   1224c:	00a7e733          	or	a4,a5,a0
   12250:	0a041463          	bnez	s0,122f8 <__adddf3+0x2ec>
   12254:	4a070863          	beqz	a4,12704 <__adddf3+0x6f8>
   12258:	00c86733          	or	a4,a6,a2
   1225c:	4a070863          	beqz	a4,1270c <__adddf3+0x700>
   12260:	00c50633          	add	a2,a0,a2
   12264:	010787b3          	add	a5,a5,a6
   12268:	00a63533          	sltu	a0,a2,a0
   1226c:	00a787b3          	add	a5,a5,a0
   12270:	00879713          	slli	a4,a5,0x8
   12274:	32075a63          	bgez	a4,125a8 <__adddf3+0x59c>
   12278:	ff800737          	lui	a4,0xff800
   1227c:	fff70713          	addi	a4,a4,-1 # ff7fffff <__BSS_END__+0xff7df19f>
   12280:	00e7f7b3          	and	a5,a5,a4
   12284:	00100413          	li	s0,1
   12288:	01d79713          	slli	a4,a5,0x1d
   1228c:	00365613          	srli	a2,a2,0x3
   12290:	7ff00693          	li	a3,2047
   12294:	00c76733          	or	a4,a4,a2
   12298:	0037d793          	srli	a5,a5,0x3
   1229c:	00d41e63          	bne	s0,a3,122b8 <__adddf3+0x2ac>
   122a0:	00f76733          	or	a4,a4,a5
   122a4:	00000793          	li	a5,0
   122a8:	00070863          	beqz	a4,122b8 <__adddf3+0x2ac>
   122ac:	000807b7          	lui	a5,0x80
   122b0:	00000713          	li	a4,0
   122b4:	00000913          	li	s2,0
   122b8:	7ff47413          	andi	s0,s0,2047
   122bc:	00c79793          	slli	a5,a5,0xc
   122c0:	00c7d793          	srli	a5,a5,0xc
   122c4:	01441413          	slli	s0,s0,0x14
   122c8:	01f91593          	slli	a1,s2,0x1f
   122cc:	00f46433          	or	s0,s0,a5
   122d0:	01c12083          	lw	ra,28(sp)
   122d4:	00b467b3          	or	a5,s0,a1
   122d8:	01812403          	lw	s0,24(sp)
   122dc:	01412483          	lw	s1,20(sp)
   122e0:	01012903          	lw	s2,16(sp)
   122e4:	00c12983          	lw	s3,12(sp)
   122e8:	00070513          	mv	a0,a4
   122ec:	00078593          	mv	a1,a5
   122f0:	02010113          	addi	sp,sp,32
   122f4:	00008067          	ret
   122f8:	40070e63          	beqz	a4,12714 <__adddf3+0x708>
   122fc:	00c86833          	or	a6,a6,a2
   12300:	2c081c63          	bnez	a6,125d8 <__adddf3+0x5cc>
   12304:	00050613          	mv	a2,a0
   12308:	4100006f          	j	12718 <__adddf3+0x70c>
   1230c:	40b70a63          	beq	a4,a1,12720 <__adddf3+0x714>
   12310:	00c50633          	add	a2,a0,a2
   12314:	00a63533          	sltu	a0,a2,a0
   12318:	010787b3          	add	a5,a5,a6
   1231c:	00a787b3          	add	a5,a5,a0
   12320:	01f79693          	slli	a3,a5,0x1f
   12324:	00165613          	srli	a2,a2,0x1
   12328:	00c6e633          	or	a2,a3,a2
   1232c:	0017d793          	srli	a5,a5,0x1
   12330:	00070413          	mv	s0,a4
   12334:	00767713          	andi	a4,a2,7
   12338:	02070063          	beqz	a4,12358 <__adddf3+0x34c>
   1233c:	00f67713          	andi	a4,a2,15
   12340:	00400693          	li	a3,4
   12344:	00d70a63          	beq	a4,a3,12358 <__adddf3+0x34c>
   12348:	00d60733          	add	a4,a2,a3
   1234c:	00c736b3          	sltu	a3,a4,a2
   12350:	00d787b3          	add	a5,a5,a3
   12354:	00070613          	mv	a2,a4
   12358:	00879713          	slli	a4,a5,0x8
   1235c:	f20756e3          	bgez	a4,12288 <__adddf3+0x27c>
   12360:	00140413          	addi	s0,s0,1
   12364:	7ff00713          	li	a4,2047
   12368:	3ae40e63          	beq	s0,a4,12724 <__adddf3+0x718>
   1236c:	ff800737          	lui	a4,0xff800
   12370:	fff70713          	addi	a4,a4,-1 # ff7fffff <__BSS_END__+0xff7df19f>
   12374:	00e7f7b3          	and	a5,a5,a4
   12378:	f11ff06f          	j	12288 <__adddf3+0x27c>
   1237c:	0ee05063          	blez	a4,1245c <__adddf3+0x450>
   12380:	08089863          	bnez	a7,12410 <__adddf3+0x404>
   12384:	00c86733          	or	a4,a6,a2
   12388:	d20702e3          	beqz	a4,120ac <__adddf3+0xa0>
   1238c:	fff40713          	addi	a4,s0,-1
   12390:	00071e63          	bnez	a4,123ac <__adddf3+0x3a0>
   12394:	40c50633          	sub	a2,a0,a2
   12398:	410787b3          	sub	a5,a5,a6
   1239c:	00c53533          	sltu	a0,a0,a2
   123a0:	40a787b3          	sub	a5,a5,a0
   123a4:	00100413          	li	s0,1
   123a8:	04c0006f          	j	123f4 <__adddf3+0x3e8>
   123ac:	d0b400e3          	beq	s0,a1,120ac <__adddf3+0xa0>
   123b0:	03800693          	li	a3,56
   123b4:	08e6ce63          	blt	a3,a4,12450 <__adddf3+0x444>
   123b8:	01f00693          	li	a3,31
   123bc:	02000893          	li	a7,32
   123c0:	06e6c063          	blt	a3,a4,12420 <__adddf3+0x414>
   123c4:	40e888b3          	sub	a7,a7,a4
   123c8:	011816b3          	sll	a3,a6,a7
   123cc:	00e655b3          	srl	a1,a2,a4
   123d0:	011618b3          	sll	a7,a2,a7
   123d4:	00b6e6b3          	or	a3,a3,a1
   123d8:	011038b3          	snez	a7,a7
   123dc:	0116e6b3          	or	a3,a3,a7
   123e0:	00e85733          	srl	a4,a6,a4
   123e4:	40d50633          	sub	a2,a0,a3
   123e8:	40e78733          	sub	a4,a5,a4
   123ec:	00c53533          	sltu	a0,a0,a2
   123f0:	40a707b3          	sub	a5,a4,a0
   123f4:	00879713          	slli	a4,a5,0x8
   123f8:	f2075ee3          	bgez	a4,12334 <__adddf3+0x328>
   123fc:	008004b7          	lui	s1,0x800
   12400:	fff48493          	addi	s1,s1,-1 # 7fffff <__BSS_END__+0x7df19f>
   12404:	0097f4b3          	and	s1,a5,s1
   12408:	00060993          	mv	s3,a2
   1240c:	2140006f          	j	12620 <__adddf3+0x614>
   12410:	c8b40ee3          	beq	s0,a1,120ac <__adddf3+0xa0>
   12414:	008006b7          	lui	a3,0x800
   12418:	00d86833          	or	a6,a6,a3
   1241c:	f95ff06f          	j	123b0 <__adddf3+0x3a4>
   12420:	fe070693          	addi	a3,a4,-32
   12424:	00d856b3          	srl	a3,a6,a3
   12428:	00000593          	li	a1,0
   1242c:	01170863          	beq	a4,a7,1243c <__adddf3+0x430>
   12430:	04000593          	li	a1,64
   12434:	40e585b3          	sub	a1,a1,a4
   12438:	00b815b3          	sll	a1,a6,a1
   1243c:	00c5e5b3          	or	a1,a1,a2
   12440:	00b035b3          	snez	a1,a1
   12444:	00b6e6b3          	or	a3,a3,a1
   12448:	00000713          	li	a4,0
   1244c:	f99ff06f          	j	123e4 <__adddf3+0x3d8>
   12450:	00c866b3          	or	a3,a6,a2
   12454:	00d036b3          	snez	a3,a3
   12458:	ff1ff06f          	j	12448 <__adddf3+0x43c>
   1245c:	0e070663          	beqz	a4,12548 <__adddf3+0x53c>
   12460:	40888333          	sub	t1,a7,s0
   12464:	04041263          	bnez	s0,124a8 <__adddf3+0x49c>
   12468:	00a7e733          	or	a4,a5,a0
   1246c:	02070663          	beqz	a4,12498 <__adddf3+0x48c>
   12470:	fff30713          	addi	a4,t1,-1 # 7fffffff <__BSS_END__+0x7ffdf19f>
   12474:	02071063          	bnez	a4,12494 <__adddf3+0x488>
   12478:	40a60533          	sub	a0,a2,a0
   1247c:	00a63733          	sltu	a4,a2,a0
   12480:	40f807b3          	sub	a5,a6,a5
   12484:	00050613          	mv	a2,a0
   12488:	40e787b3          	sub	a5,a5,a4
   1248c:	00068913          	mv	s2,a3
   12490:	f15ff06f          	j	123a4 <__adddf3+0x398>
   12494:	02b31263          	bne	t1,a1,124b8 <__adddf3+0x4ac>
   12498:	00068913          	mv	s2,a3
   1249c:	00080793          	mv	a5,a6
   124a0:	00030413          	mv	s0,t1
   124a4:	de5ff06f          	j	12288 <__adddf3+0x27c>
   124a8:	28b88463          	beq	a7,a1,12730 <__adddf3+0x724>
   124ac:	00800737          	lui	a4,0x800
   124b0:	00e7e7b3          	or	a5,a5,a4
   124b4:	00030713          	mv	a4,t1
   124b8:	03800593          	li	a1,56
   124bc:	08e5c063          	blt	a1,a4,1253c <__adddf3+0x530>
   124c0:	01f00593          	li	a1,31
   124c4:	02000e13          	li	t3,32
   124c8:	04e5c263          	blt	a1,a4,1250c <__adddf3+0x500>
   124cc:	40ee0e33          	sub	t3,t3,a4
   124d0:	01c795b3          	sll	a1,a5,t3
   124d4:	00e55333          	srl	t1,a0,a4
   124d8:	01c51e33          	sll	t3,a0,t3
   124dc:	0065e5b3          	or	a1,a1,t1
   124e0:	01c03e33          	snez	t3,t3
   124e4:	01c5e5b3          	or	a1,a1,t3
   124e8:	00e7d733          	srl	a4,a5,a4
   124ec:	40b605b3          	sub	a1,a2,a1
   124f0:	00b637b3          	sltu	a5,a2,a1
   124f4:	40e80733          	sub	a4,a6,a4
   124f8:	00058613          	mv	a2,a1
   124fc:	40f707b3          	sub	a5,a4,a5
   12500:	00088413          	mv	s0,a7
   12504:	00068913          	mv	s2,a3
   12508:	eedff06f          	j	123f4 <__adddf3+0x3e8>
   1250c:	fe070593          	addi	a1,a4,-32 # 7fffe0 <__BSS_END__+0x7df180>
   12510:	00b7d5b3          	srl	a1,a5,a1
   12514:	00000313          	li	t1,0
   12518:	01c70863          	beq	a4,t3,12528 <__adddf3+0x51c>
   1251c:	04000313          	li	t1,64
   12520:	40e30333          	sub	t1,t1,a4
   12524:	00679333          	sll	t1,a5,t1
   12528:	00a36333          	or	t1,t1,a0
   1252c:	00603333          	snez	t1,t1
   12530:	0065e5b3          	or	a1,a1,t1
   12534:	00000713          	li	a4,0
   12538:	fb5ff06f          	j	124ec <__adddf3+0x4e0>
   1253c:	00a7e5b3          	or	a1,a5,a0
   12540:	00b035b3          	snez	a1,a1
   12544:	ff1ff06f          	j	12534 <__adddf3+0x528>
   12548:	00140713          	addi	a4,s0,1
   1254c:	7fe77713          	andi	a4,a4,2046
   12550:	0a071063          	bnez	a4,125f0 <__adddf3+0x5e4>
   12554:	00a7e8b3          	or	a7,a5,a0
   12558:	00c86733          	or	a4,a6,a2
   1255c:	06041863          	bnez	s0,125cc <__adddf3+0x5c0>
   12560:	00089a63          	bnez	a7,12574 <__adddf3+0x568>
   12564:	00080793          	mv	a5,a6
   12568:	02071e63          	bnez	a4,125a4 <__adddf3+0x598>
   1256c:	00000913          	li	s2,0
   12570:	1b40006f          	j	12724 <__adddf3+0x718>
   12574:	18070c63          	beqz	a4,1270c <__adddf3+0x700>
   12578:	40c505b3          	sub	a1,a0,a2
   1257c:	00b538b3          	sltu	a7,a0,a1
   12580:	41078733          	sub	a4,a5,a6
   12584:	41170733          	sub	a4,a4,a7
   12588:	00871893          	slli	a7,a4,0x8
   1258c:	0208d663          	bgez	a7,125b8 <__adddf3+0x5ac>
   12590:	40a60533          	sub	a0,a2,a0
   12594:	00a63733          	sltu	a4,a2,a0
   12598:	40f807b3          	sub	a5,a6,a5
   1259c:	00050613          	mv	a2,a0
   125a0:	40e787b3          	sub	a5,a5,a4
   125a4:	00068913          	mv	s2,a3
   125a8:	00f66733          	or	a4,a2,a5
   125ac:	1a070063          	beqz	a4,1274c <__adddf3+0x740>
   125b0:	00000413          	li	s0,0
   125b4:	d81ff06f          	j	12334 <__adddf3+0x328>
   125b8:	00e5e633          	or	a2,a1,a4
   125bc:	18060263          	beqz	a2,12740 <__adddf3+0x734>
   125c0:	00070793          	mv	a5,a4
   125c4:	00058613          	mv	a2,a1
   125c8:	fe1ff06f          	j	125a8 <__adddf3+0x59c>
   125cc:	00089e63          	bnez	a7,125e8 <__adddf3+0x5dc>
   125d0:	00068913          	mv	s2,a3
   125d4:	14071063          	bnez	a4,12714 <__adddf3+0x708>
   125d8:	00000913          	li	s2,0
   125dc:	004007b7          	lui	a5,0x400
   125e0:	00000613          	li	a2,0
   125e4:	1340006f          	j	12718 <__adddf3+0x70c>
   125e8:	d0070ee3          	beqz	a4,12304 <__adddf3+0x2f8>
   125ec:	fedff06f          	j	125d8 <__adddf3+0x5cc>
   125f0:	40c50733          	sub	a4,a0,a2
   125f4:	00e535b3          	sltu	a1,a0,a4
   125f8:	410784b3          	sub	s1,a5,a6
   125fc:	40b484b3          	sub	s1,s1,a1
   12600:	00849593          	slli	a1,s1,0x8
   12604:	00070993          	mv	s3,a4
   12608:	0605de63          	bgez	a1,12684 <__adddf3+0x678>
   1260c:	40a609b3          	sub	s3,a2,a0
   12610:	40f804b3          	sub	s1,a6,a5
   12614:	01363633          	sltu	a2,a2,s3
   12618:	40c484b3          	sub	s1,s1,a2
   1261c:	00068913          	mv	s2,a3
   12620:	06048e63          	beqz	s1,1269c <__adddf3+0x690>
   12624:	00048513          	mv	a0,s1
   12628:	261020ef          	jal	15088 <__clzsi2>
   1262c:	ff850713          	addi	a4,a0,-8 # 3f7ffff8 <__BSS_END__+0x3f7df198>
   12630:	02000793          	li	a5,32
   12634:	40e787b3          	sub	a5,a5,a4
   12638:	00e494b3          	sll	s1,s1,a4
   1263c:	00f9d7b3          	srl	a5,s3,a5
   12640:	0097e7b3          	or	a5,a5,s1
   12644:	00e99633          	sll	a2,s3,a4
   12648:	0a874463          	blt	a4,s0,126f0 <__adddf3+0x6e4>
   1264c:	40870733          	sub	a4,a4,s0
   12650:	00170513          	addi	a0,a4,1
   12654:	01f00693          	li	a3,31
   12658:	02000593          	li	a1,32
   1265c:	06a6c263          	blt	a3,a0,126c0 <__adddf3+0x6b4>
   12660:	40a585b3          	sub	a1,a1,a0
   12664:	00b79733          	sll	a4,a5,a1
   12668:	00a656b3          	srl	a3,a2,a0
   1266c:	00b615b3          	sll	a1,a2,a1
   12670:	00d76733          	or	a4,a4,a3
   12674:	00b035b3          	snez	a1,a1
   12678:	00b76633          	or	a2,a4,a1
   1267c:	00a7d7b3          	srl	a5,a5,a0
   12680:	f29ff06f          	j	125a8 <__adddf3+0x59c>
   12684:	00976633          	or	a2,a4,s1
   12688:	f8061ce3          	bnez	a2,12620 <__adddf3+0x614>
   1268c:	00000913          	li	s2,0
   12690:	00000793          	li	a5,0
   12694:	00000413          	li	s0,0
   12698:	bf1ff06f          	j	12288 <__adddf3+0x27c>
   1269c:	00098513          	mv	a0,s3
   126a0:	1e9020ef          	jal	15088 <__clzsi2>
   126a4:	01850713          	addi	a4,a0,24
   126a8:	01f00793          	li	a5,31
   126ac:	f8e7d2e3          	bge	a5,a4,12630 <__adddf3+0x624>
   126b0:	ff850793          	addi	a5,a0,-8
   126b4:	00f997b3          	sll	a5,s3,a5
   126b8:	00000613          	li	a2,0
   126bc:	f8dff06f          	j	12648 <__adddf3+0x63c>
   126c0:	fe170713          	addi	a4,a4,-31
   126c4:	00e7d733          	srl	a4,a5,a4
   126c8:	00000693          	li	a3,0
   126cc:	00b50863          	beq	a0,a1,126dc <__adddf3+0x6d0>
   126d0:	04000693          	li	a3,64
   126d4:	40a686b3          	sub	a3,a3,a0
   126d8:	00d796b3          	sll	a3,a5,a3
   126dc:	00d666b3          	or	a3,a2,a3
   126e0:	00d036b3          	snez	a3,a3
   126e4:	00d76633          	or	a2,a4,a3
   126e8:	00000793          	li	a5,0
   126ec:	ebdff06f          	j	125a8 <__adddf3+0x59c>
   126f0:	40e40433          	sub	s0,s0,a4
   126f4:	ff800737          	lui	a4,0xff800
   126f8:	fff70713          	addi	a4,a4,-1 # ff7fffff <__BSS_END__+0xff7df19f>
   126fc:	00e7f7b3          	and	a5,a5,a4
   12700:	c35ff06f          	j	12334 <__adddf3+0x328>
   12704:	00080793          	mv	a5,a6
   12708:	ea1ff06f          	j	125a8 <__adddf3+0x59c>
   1270c:	00050613          	mv	a2,a0
   12710:	e99ff06f          	j	125a8 <__adddf3+0x59c>
   12714:	00080793          	mv	a5,a6
   12718:	00058413          	mv	s0,a1
   1271c:	b6dff06f          	j	12288 <__adddf3+0x27c>
   12720:	00070413          	mv	s0,a4
   12724:	00000793          	li	a5,0
   12728:	00000613          	li	a2,0
   1272c:	b5dff06f          	j	12288 <__adddf3+0x27c>
   12730:	00068913          	mv	s2,a3
   12734:	00080793          	mv	a5,a6
   12738:	00088413          	mv	s0,a7
   1273c:	b4dff06f          	j	12288 <__adddf3+0x27c>
   12740:	00000913          	li	s2,0
   12744:	00000793          	li	a5,0
   12748:	b41ff06f          	j	12288 <__adddf3+0x27c>
   1274c:	00000793          	li	a5,0
   12750:	00000613          	li	a2,0
   12754:	f41ff06f          	j	12694 <__adddf3+0x688>

00012758 <__divdf3>:
   12758:	fb010113          	addi	sp,sp,-80
   1275c:	03512a23          	sw	s5,52(sp)
   12760:	0145da93          	srli	s5,a1,0x14
   12764:	04812423          	sw	s0,72(sp)
   12768:	05212023          	sw	s2,64(sp)
   1276c:	03312e23          	sw	s3,60(sp)
   12770:	03412c23          	sw	s4,56(sp)
   12774:	03712623          	sw	s7,44(sp)
   12778:	00c59413          	slli	s0,a1,0xc
   1277c:	04112623          	sw	ra,76(sp)
   12780:	04912223          	sw	s1,68(sp)
   12784:	03612823          	sw	s6,48(sp)
   12788:	03812423          	sw	s8,40(sp)
   1278c:	03912223          	sw	s9,36(sp)
   12790:	03a12023          	sw	s10,32(sp)
   12794:	01b12e23          	sw	s11,28(sp)
   12798:	7ffafa93          	andi	s5,s5,2047
   1279c:	00050913          	mv	s2,a0
   127a0:	00060b93          	mv	s7,a2
   127a4:	00068a13          	mv	s4,a3
   127a8:	00c45413          	srli	s0,s0,0xc
   127ac:	01f5d993          	srli	s3,a1,0x1f
   127b0:	0a0a8063          	beqz	s5,12850 <__divdf3+0xf8>
   127b4:	7ff00793          	li	a5,2047
   127b8:	10fa8063          	beq	s5,a5,128b8 <__divdf3+0x160>
   127bc:	01d55c93          	srli	s9,a0,0x1d
   127c0:	00341413          	slli	s0,s0,0x3
   127c4:	008cecb3          	or	s9,s9,s0
   127c8:	008007b7          	lui	a5,0x800
   127cc:	00fcecb3          	or	s9,s9,a5
   127d0:	00351493          	slli	s1,a0,0x3
   127d4:	c01a8a93          	addi	s5,s5,-1023
   127d8:	00000b13          	li	s6,0
   127dc:	014a5793          	srli	a5,s4,0x14
   127e0:	00ca1413          	slli	s0,s4,0xc
   127e4:	7ff7f793          	andi	a5,a5,2047
   127e8:	00c45413          	srli	s0,s0,0xc
   127ec:	01fa5a13          	srli	s4,s4,0x1f
   127f0:	0e078e63          	beqz	a5,128ec <__divdf3+0x194>
   127f4:	7ff00713          	li	a4,2047
   127f8:	16e78263          	beq	a5,a4,1295c <__divdf3+0x204>
   127fc:	00341413          	slli	s0,s0,0x3
   12800:	01dbd713          	srli	a4,s7,0x1d
   12804:	00876733          	or	a4,a4,s0
   12808:	00800437          	lui	s0,0x800
   1280c:	00876433          	or	s0,a4,s0
   12810:	003b9593          	slli	a1,s7,0x3
   12814:	c0178793          	addi	a5,a5,-1023 # 7ffc01 <__BSS_END__+0x7deda1>
   12818:	00000713          	li	a4,0
   1281c:	40fa8ab3          	sub	s5,s5,a5
   12820:	002b1793          	slli	a5,s6,0x2
   12824:	00e7e7b3          	or	a5,a5,a4
   12828:	fff78793          	addi	a5,a5,-1
   1282c:	00e00693          	li	a3,14
   12830:	0149c933          	xor	s2,s3,s4
   12834:	14f6ec63          	bltu	a3,a5,1298c <__divdf3+0x234>
   12838:	0001b6b7          	lui	a3,0x1b
   1283c:	00279793          	slli	a5,a5,0x2
   12840:	d2468693          	addi	a3,a3,-732 # 1ad24 <_exit+0x240>
   12844:	00d787b3          	add	a5,a5,a3
   12848:	0007a783          	lw	a5,0(a5)
   1284c:	00078067          	jr	a5
   12850:	00a46cb3          	or	s9,s0,a0
   12854:	060c8c63          	beqz	s9,128cc <__divdf3+0x174>
   12858:	04040063          	beqz	s0,12898 <__divdf3+0x140>
   1285c:	00040513          	mv	a0,s0
   12860:	029020ef          	jal	15088 <__clzsi2>
   12864:	00050793          	mv	a5,a0
   12868:	ff550713          	addi	a4,a0,-11
   1286c:	01d00c93          	li	s9,29
   12870:	ff878693          	addi	a3,a5,-8
   12874:	40ec8cb3          	sub	s9,s9,a4
   12878:	00d41433          	sll	s0,s0,a3
   1287c:	01995cb3          	srl	s9,s2,s9
   12880:	008cecb3          	or	s9,s9,s0
   12884:	00d91433          	sll	s0,s2,a3
   12888:	c0d00a93          	li	s5,-1011
   1288c:	40fa8ab3          	sub	s5,s5,a5
   12890:	00040493          	mv	s1,s0
   12894:	f45ff06f          	j	127d8 <__divdf3+0x80>
   12898:	7f0020ef          	jal	15088 <__clzsi2>
   1289c:	01550713          	addi	a4,a0,21
   128a0:	01c00693          	li	a3,28
   128a4:	02050793          	addi	a5,a0,32
   128a8:	fce6d2e3          	bge	a3,a4,1286c <__divdf3+0x114>
   128ac:	ff850513          	addi	a0,a0,-8
   128b0:	00a91cb3          	sll	s9,s2,a0
   128b4:	fd5ff06f          	j	12888 <__divdf3+0x130>
   128b8:	00a46cb3          	or	s9,s0,a0
   128bc:	020c9063          	bnez	s9,128dc <__divdf3+0x184>
   128c0:	00000493          	li	s1,0
   128c4:	00200b13          	li	s6,2
   128c8:	f15ff06f          	j	127dc <__divdf3+0x84>
   128cc:	00000493          	li	s1,0
   128d0:	00000a93          	li	s5,0
   128d4:	00100b13          	li	s6,1
   128d8:	f05ff06f          	j	127dc <__divdf3+0x84>
   128dc:	00050493          	mv	s1,a0
   128e0:	00040c93          	mv	s9,s0
   128e4:	00300b13          	li	s6,3
   128e8:	ef5ff06f          	j	127dc <__divdf3+0x84>
   128ec:	017465b3          	or	a1,s0,s7
   128f0:	08058063          	beqz	a1,12970 <__divdf3+0x218>
   128f4:	04040263          	beqz	s0,12938 <__divdf3+0x1e0>
   128f8:	00040513          	mv	a0,s0
   128fc:	78c020ef          	jal	15088 <__clzsi2>
   12900:	00050693          	mv	a3,a0
   12904:	ff550793          	addi	a5,a0,-11
   12908:	01d00713          	li	a4,29
   1290c:	ff868613          	addi	a2,a3,-8
   12910:	40f70733          	sub	a4,a4,a5
   12914:	00c41433          	sll	s0,s0,a2
   12918:	00ebd733          	srl	a4,s7,a4
   1291c:	00876733          	or	a4,a4,s0
   12920:	00cb9433          	sll	s0,s7,a2
   12924:	c0d00793          	li	a5,-1011
   12928:	00040593          	mv	a1,s0
   1292c:	40d787b3          	sub	a5,a5,a3
   12930:	00070413          	mv	s0,a4
   12934:	ee5ff06f          	j	12818 <__divdf3+0xc0>
   12938:	000b8513          	mv	a0,s7
   1293c:	74c020ef          	jal	15088 <__clzsi2>
   12940:	01550793          	addi	a5,a0,21
   12944:	01c00713          	li	a4,28
   12948:	02050693          	addi	a3,a0,32
   1294c:	faf75ee3          	bge	a4,a5,12908 <__divdf3+0x1b0>
   12950:	ff850713          	addi	a4,a0,-8
   12954:	00eb9733          	sll	a4,s7,a4
   12958:	fcdff06f          	j	12924 <__divdf3+0x1cc>
   1295c:	017465b3          	or	a1,s0,s7
   12960:	02059063          	bnez	a1,12980 <__divdf3+0x228>
   12964:	00000413          	li	s0,0
   12968:	00200713          	li	a4,2
   1296c:	eb1ff06f          	j	1281c <__divdf3+0xc4>
   12970:	00000413          	li	s0,0
   12974:	00000793          	li	a5,0
   12978:	00100713          	li	a4,1
   1297c:	ea1ff06f          	j	1281c <__divdf3+0xc4>
   12980:	000b8593          	mv	a1,s7
   12984:	00300713          	li	a4,3
   12988:	e95ff06f          	j	1281c <__divdf3+0xc4>
   1298c:	01946663          	bltu	s0,s9,12998 <__divdf3+0x240>
   12990:	408c9a63          	bne	s9,s0,12da4 <__divdf3+0x64c>
   12994:	40b4e863          	bltu	s1,a1,12da4 <__divdf3+0x64c>
   12998:	01fc9713          	slli	a4,s9,0x1f
   1299c:	0014d793          	srli	a5,s1,0x1
   129a0:	01f49c13          	slli	s8,s1,0x1f
   129a4:	001cdc93          	srli	s9,s9,0x1
   129a8:	00f764b3          	or	s1,a4,a5
   129ac:	00841793          	slli	a5,s0,0x8
   129b0:	0185db13          	srli	s6,a1,0x18
   129b4:	00fb6b33          	or	s6,s6,a5
   129b8:	0107dd13          	srli	s10,a5,0x10
   129bc:	010b1793          	slli	a5,s6,0x10
   129c0:	0107d793          	srli	a5,a5,0x10
   129c4:	00859b93          	slli	s7,a1,0x8
   129c8:	000c8513          	mv	a0,s9
   129cc:	000d0593          	mv	a1,s10
   129d0:	00f12623          	sw	a5,12(sp)
   129d4:	590020ef          	jal	14f64 <__hidden___udivsi3>
   129d8:	00050593          	mv	a1,a0
   129dc:	00050a13          	mv	s4,a0
   129e0:	010b1513          	slli	a0,s6,0x10
   129e4:	01055513          	srli	a0,a0,0x10
   129e8:	4c4020ef          	jal	14eac <__mulsi3>
   129ec:	00050993          	mv	s3,a0
   129f0:	000d0593          	mv	a1,s10
   129f4:	000c8513          	mv	a0,s9
   129f8:	5b4020ef          	jal	14fac <__umodsi3>
   129fc:	01051513          	slli	a0,a0,0x10
   12a00:	0104d793          	srli	a5,s1,0x10
   12a04:	00a7e7b3          	or	a5,a5,a0
   12a08:	0137fa63          	bgeu	a5,s3,12a1c <__divdf3+0x2c4>
   12a0c:	00fb07b3          	add	a5,s6,a5
   12a10:	0167e463          	bltu	a5,s6,12a18 <__divdf3+0x2c0>
   12a14:	3937ee63          	bltu	a5,s3,12db0 <__divdf3+0x658>
   12a18:	fffa0a13          	addi	s4,s4,-1
   12a1c:	413789b3          	sub	s3,a5,s3
   12a20:	000d0593          	mv	a1,s10
   12a24:	00098513          	mv	a0,s3
   12a28:	53c020ef          	jal	14f64 <__hidden___udivsi3>
   12a2c:	00050593          	mv	a1,a0
   12a30:	00050413          	mv	s0,a0
   12a34:	010b1513          	slli	a0,s6,0x10
   12a38:	01055513          	srli	a0,a0,0x10
   12a3c:	470020ef          	jal	14eac <__mulsi3>
   12a40:	00050c93          	mv	s9,a0
   12a44:	000d0593          	mv	a1,s10
   12a48:	00098513          	mv	a0,s3
   12a4c:	560020ef          	jal	14fac <__umodsi3>
   12a50:	01049993          	slli	s3,s1,0x10
   12a54:	01051513          	slli	a0,a0,0x10
   12a58:	0109d993          	srli	s3,s3,0x10
   12a5c:	00a9e9b3          	or	s3,s3,a0
   12a60:	0199fa63          	bgeu	s3,s9,12a74 <__divdf3+0x31c>
   12a64:	013b09b3          	add	s3,s6,s3
   12a68:	0199f463          	bgeu	s3,s9,12a70 <__divdf3+0x318>
   12a6c:	3569f863          	bgeu	s3,s6,12dbc <__divdf3+0x664>
   12a70:	fff40413          	addi	s0,s0,-1 # 7fffff <__BSS_END__+0x7df19f>
   12a74:	010a1513          	slli	a0,s4,0x10
   12a78:	00856733          	or	a4,a0,s0
   12a7c:	010b9693          	slli	a3,s7,0x10
   12a80:	0106d693          	srli	a3,a3,0x10
   12a84:	01071513          	slli	a0,a4,0x10
   12a88:	419989b3          	sub	s3,s3,s9
   12a8c:	010bdd93          	srli	s11,s7,0x10
   12a90:	01055513          	srli	a0,a0,0x10
   12a94:	00d12623          	sw	a3,12(sp)
   12a98:	00068593          	mv	a1,a3
   12a9c:	410020ef          	jal	14eac <__mulsi3>
   12aa0:	00050813          	mv	a6,a0
   12aa4:	01071513          	slli	a0,a4,0x10
   12aa8:	01055513          	srli	a0,a0,0x10
   12aac:	000d8593          	mv	a1,s11
   12ab0:	3fc020ef          	jal	14eac <__mulsi3>
   12ab4:	010b9593          	slli	a1,s7,0x10
   12ab8:	00050793          	mv	a5,a0
   12abc:	0105d593          	srli	a1,a1,0x10
   12ac0:	01075513          	srli	a0,a4,0x10
   12ac4:	3e8020ef          	jal	14eac <__mulsi3>
   12ac8:	00050893          	mv	a7,a0
   12acc:	000d8593          	mv	a1,s11
   12ad0:	01075513          	srli	a0,a4,0x10
   12ad4:	3d8020ef          	jal	14eac <__mulsi3>
   12ad8:	01085a13          	srli	s4,a6,0x10
   12adc:	011787b3          	add	a5,a5,a7
   12ae0:	00fa0a33          	add	s4,s4,a5
   12ae4:	011a7663          	bgeu	s4,a7,12af0 <__divdf3+0x398>
   12ae8:	000107b7          	lui	a5,0x10
   12aec:	00f50533          	add	a0,a0,a5
   12af0:	010a5793          	srli	a5,s4,0x10
   12af4:	01081813          	slli	a6,a6,0x10
   12af8:	010a1a13          	slli	s4,s4,0x10
   12afc:	01085813          	srli	a6,a6,0x10
   12b00:	00a78533          	add	a0,a5,a0
   12b04:	010a0a33          	add	s4,s4,a6
   12b08:	00a9e663          	bltu	s3,a0,12b14 <__divdf3+0x3bc>
   12b0c:	2aa99e63          	bne	s3,a0,12dc8 <__divdf3+0x670>
   12b10:	2b4c7c63          	bgeu	s8,s4,12dc8 <__divdf3+0x670>
   12b14:	017c07b3          	add	a5,s8,s7
   12b18:	0187b6b3          	sltu	a3,a5,s8
   12b1c:	01668633          	add	a2,a3,s6
   12b20:	00c989b3          	add	s3,s3,a2
   12b24:	fff70413          	addi	s0,a4,-1
   12b28:	00078c13          	mv	s8,a5
   12b2c:	013b6663          	bltu	s6,s3,12b38 <__divdf3+0x3e0>
   12b30:	02069463          	bnez	a3,12b58 <__divdf3+0x400>
   12b34:	033b1263          	bne	s6,s3,12b58 <__divdf3+0x400>
   12b38:	00a9e663          	bltu	s3,a0,12b44 <__divdf3+0x3ec>
   12b3c:	01351e63          	bne	a0,s3,12b58 <__divdf3+0x400>
   12b40:	0147fc63          	bgeu	a5,s4,12b58 <__divdf3+0x400>
   12b44:	00fb8c33          	add	s8,s7,a5
   12b48:	017c37b3          	sltu	a5,s8,s7
   12b4c:	016787b3          	add	a5,a5,s6
   12b50:	ffe70413          	addi	s0,a4,-2
   12b54:	00f989b3          	add	s3,s3,a5
   12b58:	414c0a33          	sub	s4,s8,s4
   12b5c:	40a989b3          	sub	s3,s3,a0
   12b60:	014c37b3          	sltu	a5,s8,s4
   12b64:	40f989b3          	sub	s3,s3,a5
   12b68:	fff00593          	li	a1,-1
   12b6c:	193b0263          	beq	s6,s3,12cf0 <__divdf3+0x598>
   12b70:	000d0593          	mv	a1,s10
   12b74:	00098513          	mv	a0,s3
   12b78:	3ec020ef          	jal	14f64 <__hidden___udivsi3>
   12b7c:	00050593          	mv	a1,a0
   12b80:	00050493          	mv	s1,a0
   12b84:	010b1513          	slli	a0,s6,0x10
   12b88:	01055513          	srli	a0,a0,0x10
   12b8c:	320020ef          	jal	14eac <__mulsi3>
   12b90:	00050c13          	mv	s8,a0
   12b94:	000d0593          	mv	a1,s10
   12b98:	00098513          	mv	a0,s3
   12b9c:	410020ef          	jal	14fac <__umodsi3>
   12ba0:	01051513          	slli	a0,a0,0x10
   12ba4:	010a5713          	srli	a4,s4,0x10
   12ba8:	00a76733          	or	a4,a4,a0
   12bac:	01877a63          	bgeu	a4,s8,12bc0 <__divdf3+0x468>
   12bb0:	00eb0733          	add	a4,s6,a4
   12bb4:	01676463          	bltu	a4,s6,12bbc <__divdf3+0x464>
   12bb8:	21876c63          	bltu	a4,s8,12dd0 <__divdf3+0x678>
   12bbc:	fff48493          	addi	s1,s1,-1
   12bc0:	418709b3          	sub	s3,a4,s8
   12bc4:	000d0593          	mv	a1,s10
   12bc8:	00098513          	mv	a0,s3
   12bcc:	398020ef          	jal	14f64 <__hidden___udivsi3>
   12bd0:	00050593          	mv	a1,a0
   12bd4:	00050c13          	mv	s8,a0
   12bd8:	010b1513          	slli	a0,s6,0x10
   12bdc:	01055513          	srli	a0,a0,0x10
   12be0:	2cc020ef          	jal	14eac <__mulsi3>
   12be4:	00050c93          	mv	s9,a0
   12be8:	000d0593          	mv	a1,s10
   12bec:	00098513          	mv	a0,s3
   12bf0:	3bc020ef          	jal	14fac <__umodsi3>
   12bf4:	010a1793          	slli	a5,s4,0x10
   12bf8:	01051513          	slli	a0,a0,0x10
   12bfc:	0107d793          	srli	a5,a5,0x10
   12c00:	00a7e7b3          	or	a5,a5,a0
   12c04:	0197fa63          	bgeu	a5,s9,12c18 <__divdf3+0x4c0>
   12c08:	00fb07b3          	add	a5,s6,a5
   12c0c:	0197f463          	bgeu	a5,s9,12c14 <__divdf3+0x4bc>
   12c10:	1d67f663          	bgeu	a5,s6,12ddc <__divdf3+0x684>
   12c14:	fffc0c13          	addi	s8,s8,-1
   12c18:	01049713          	slli	a4,s1,0x10
   12c1c:	01876733          	or	a4,a4,s8
   12c20:	01071513          	slli	a0,a4,0x10
   12c24:	010b9593          	slli	a1,s7,0x10
   12c28:	419787b3          	sub	a5,a5,s9
   12c2c:	01055513          	srli	a0,a0,0x10
   12c30:	0105d593          	srli	a1,a1,0x10
   12c34:	278020ef          	jal	14eac <__mulsi3>
   12c38:	00050813          	mv	a6,a0
   12c3c:	01071513          	slli	a0,a4,0x10
   12c40:	01055513          	srli	a0,a0,0x10
   12c44:	000d8593          	mv	a1,s11
   12c48:	264020ef          	jal	14eac <__mulsi3>
   12c4c:	010b9593          	slli	a1,s7,0x10
   12c50:	00050893          	mv	a7,a0
   12c54:	0105d593          	srli	a1,a1,0x10
   12c58:	01075513          	srli	a0,a4,0x10
   12c5c:	250020ef          	jal	14eac <__mulsi3>
   12c60:	00050313          	mv	t1,a0
   12c64:	000d8593          	mv	a1,s11
   12c68:	01075513          	srli	a0,a4,0x10
   12c6c:	240020ef          	jal	14eac <__mulsi3>
   12c70:	01085693          	srli	a3,a6,0x10
   12c74:	006888b3          	add	a7,a7,t1
   12c78:	011686b3          	add	a3,a3,a7
   12c7c:	0066f663          	bgeu	a3,t1,12c88 <__divdf3+0x530>
   12c80:	00010637          	lui	a2,0x10
   12c84:	00c50533          	add	a0,a0,a2
   12c88:	0106d613          	srli	a2,a3,0x10
   12c8c:	01081813          	slli	a6,a6,0x10
   12c90:	01069693          	slli	a3,a3,0x10
   12c94:	01085813          	srli	a6,a6,0x10
   12c98:	00a60533          	add	a0,a2,a0
   12c9c:	010686b3          	add	a3,a3,a6
   12ca0:	00a7e663          	bltu	a5,a0,12cac <__divdf3+0x554>
   12ca4:	04a79463          	bne	a5,a0,12cec <__divdf3+0x594>
   12ca8:	14068063          	beqz	a3,12de8 <__divdf3+0x690>
   12cac:	00fb0633          	add	a2,s6,a5
   12cb0:	fff70593          	addi	a1,a4,-1
   12cb4:	00060793          	mv	a5,a2
   12cb8:	03666463          	bltu	a2,s6,12ce0 <__divdf3+0x588>
   12cbc:	00a66663          	bltu	a2,a0,12cc8 <__divdf3+0x570>
   12cc0:	02a61463          	bne	a2,a0,12ce8 <__divdf3+0x590>
   12cc4:	00dbfe63          	bgeu	s7,a3,12ce0 <__divdf3+0x588>
   12cc8:	ffe70593          	addi	a1,a4,-2
   12ccc:	001b9713          	slli	a4,s7,0x1
   12cd0:	017737b3          	sltu	a5,a4,s7
   12cd4:	016787b3          	add	a5,a5,s6
   12cd8:	00f607b3          	add	a5,a2,a5
   12cdc:	00070b93          	mv	s7,a4
   12ce0:	00db9463          	bne	s7,a3,12ce8 <__divdf3+0x590>
   12ce4:	00a78663          	beq	a5,a0,12cf0 <__divdf3+0x598>
   12ce8:	00058713          	mv	a4,a1
   12cec:	00176593          	ori	a1,a4,1
   12cf0:	3ffa8793          	addi	a5,s5,1023
   12cf4:	12f05e63          	blez	a5,12e30 <__divdf3+0x6d8>
   12cf8:	0075f713          	andi	a4,a1,7
   12cfc:	02070063          	beqz	a4,12d1c <__divdf3+0x5c4>
   12d00:	00f5f713          	andi	a4,a1,15
   12d04:	00400693          	li	a3,4
   12d08:	00d70a63          	beq	a4,a3,12d1c <__divdf3+0x5c4>
   12d0c:	00d58733          	add	a4,a1,a3
   12d10:	00b736b3          	sltu	a3,a4,a1
   12d14:	00d40433          	add	s0,s0,a3
   12d18:	00070593          	mv	a1,a4
   12d1c:	00741713          	slli	a4,s0,0x7
   12d20:	00075a63          	bgez	a4,12d34 <__divdf3+0x5dc>
   12d24:	ff0007b7          	lui	a5,0xff000
   12d28:	fff78793          	addi	a5,a5,-1 # feffffff <__BSS_END__+0xfefdf19f>
   12d2c:	00f47433          	and	s0,s0,a5
   12d30:	400a8793          	addi	a5,s5,1024
   12d34:	7fe00713          	li	a4,2046
   12d38:	1cf74263          	blt	a4,a5,12efc <__divdf3+0x7a4>
   12d3c:	01d41713          	slli	a4,s0,0x1d
   12d40:	0035d593          	srli	a1,a1,0x3
   12d44:	00b76733          	or	a4,a4,a1
   12d48:	00345413          	srli	s0,s0,0x3
   12d4c:	00c41413          	slli	s0,s0,0xc
   12d50:	00c45413          	srli	s0,s0,0xc
   12d54:	01479793          	slli	a5,a5,0x14
   12d58:	04c12083          	lw	ra,76(sp)
   12d5c:	0087e7b3          	or	a5,a5,s0
   12d60:	04812403          	lw	s0,72(sp)
   12d64:	01f91913          	slli	s2,s2,0x1f
   12d68:	04412483          	lw	s1,68(sp)
   12d6c:	03c12983          	lw	s3,60(sp)
   12d70:	03812a03          	lw	s4,56(sp)
   12d74:	03412a83          	lw	s5,52(sp)
   12d78:	03012b03          	lw	s6,48(sp)
   12d7c:	02c12b83          	lw	s7,44(sp)
   12d80:	02812c03          	lw	s8,40(sp)
   12d84:	02412c83          	lw	s9,36(sp)
   12d88:	02012d03          	lw	s10,32(sp)
   12d8c:	01c12d83          	lw	s11,28(sp)
   12d90:	0127e5b3          	or	a1,a5,s2
   12d94:	00070513          	mv	a0,a4
   12d98:	04012903          	lw	s2,64(sp)
   12d9c:	05010113          	addi	sp,sp,80
   12da0:	00008067          	ret
   12da4:	fffa8a93          	addi	s5,s5,-1
   12da8:	00000c13          	li	s8,0
   12dac:	c01ff06f          	j	129ac <__divdf3+0x254>
   12db0:	ffea0a13          	addi	s4,s4,-2
   12db4:	016787b3          	add	a5,a5,s6
   12db8:	c65ff06f          	j	12a1c <__divdf3+0x2c4>
   12dbc:	ffe40413          	addi	s0,s0,-2
   12dc0:	016989b3          	add	s3,s3,s6
   12dc4:	cb1ff06f          	j	12a74 <__divdf3+0x31c>
   12dc8:	00070413          	mv	s0,a4
   12dcc:	d8dff06f          	j	12b58 <__divdf3+0x400>
   12dd0:	ffe48493          	addi	s1,s1,-2
   12dd4:	01670733          	add	a4,a4,s6
   12dd8:	de9ff06f          	j	12bc0 <__divdf3+0x468>
   12ddc:	ffec0c13          	addi	s8,s8,-2
   12de0:	016787b3          	add	a5,a5,s6
   12de4:	e35ff06f          	j	12c18 <__divdf3+0x4c0>
   12de8:	00000b93          	li	s7,0
   12dec:	00070593          	mv	a1,a4
   12df0:	ef1ff06f          	j	12ce0 <__divdf3+0x588>
   12df4:	000a0913          	mv	s2,s4
   12df8:	00070b13          	mv	s6,a4
   12dfc:	00200793          	li	a5,2
   12e00:	0efb0e63          	beq	s6,a5,12efc <__divdf3+0x7a4>
   12e04:	00300793          	li	a5,3
   12e08:	0efb0063          	beq	s6,a5,12ee8 <__divdf3+0x790>
   12e0c:	00100793          	li	a5,1
   12e10:	eefb10e3          	bne	s6,a5,12cf0 <__divdf3+0x598>
   12e14:	00000413          	li	s0,0
   12e18:	00000713          	li	a4,0
   12e1c:	08c0006f          	j	12ea8 <__divdf3+0x750>
   12e20:	00098913          	mv	s2,s3
   12e24:	000c8413          	mv	s0,s9
   12e28:	00048593          	mv	a1,s1
   12e2c:	fd1ff06f          	j	12dfc <__divdf3+0x6a4>
   12e30:	08078063          	beqz	a5,12eb0 <__divdf3+0x758>
   12e34:	fc900713          	li	a4,-55
   12e38:	fce7cee3          	blt	a5,a4,12e14 <__divdf3+0x6bc>
   12e3c:	fe200713          	li	a4,-30
   12e40:	06e7cc63          	blt	a5,a4,12eb8 <__divdf3+0x760>
   12e44:	00100713          	li	a4,1
   12e48:	40f70733          	sub	a4,a4,a5
   12e4c:	41ea8a93          	addi	s5,s5,1054
   12e50:	00e5d7b3          	srl	a5,a1,a4
   12e54:	015595b3          	sll	a1,a1,s5
   12e58:	00b035b3          	snez	a1,a1
   12e5c:	01541ab3          	sll	s5,s0,s5
   12e60:	0155e5b3          	or	a1,a1,s5
   12e64:	00b7e7b3          	or	a5,a5,a1
   12e68:	00e45433          	srl	s0,s0,a4
   12e6c:	0077f713          	andi	a4,a5,7
   12e70:	02070063          	beqz	a4,12e90 <__divdf3+0x738>
   12e74:	00f7f713          	andi	a4,a5,15
   12e78:	00400693          	li	a3,4
   12e7c:	00d70a63          	beq	a4,a3,12e90 <__divdf3+0x738>
   12e80:	00d78733          	add	a4,a5,a3
   12e84:	00f736b3          	sltu	a3,a4,a5
   12e88:	00d40433          	add	s0,s0,a3
   12e8c:	00070793          	mv	a5,a4
   12e90:	00841713          	slli	a4,s0,0x8
   12e94:	06074c63          	bltz	a4,12f0c <__divdf3+0x7b4>
   12e98:	01d41713          	slli	a4,s0,0x1d
   12e9c:	0037d793          	srli	a5,a5,0x3
   12ea0:	00f76733          	or	a4,a4,a5
   12ea4:	00345413          	srli	s0,s0,0x3
   12ea8:	00000793          	li	a5,0
   12eac:	ea1ff06f          	j	12d4c <__divdf3+0x5f4>
   12eb0:	00100713          	li	a4,1
   12eb4:	f99ff06f          	j	12e4c <__divdf3+0x6f4>
   12eb8:	fe100613          	li	a2,-31
   12ebc:	40f60733          	sub	a4,a2,a5
   12ec0:	00e45733          	srl	a4,s0,a4
   12ec4:	00000693          	li	a3,0
   12ec8:	00c78663          	beq	a5,a2,12ed4 <__divdf3+0x77c>
   12ecc:	43ea8a93          	addi	s5,s5,1086
   12ed0:	015416b3          	sll	a3,s0,s5
   12ed4:	00b6e6b3          	or	a3,a3,a1
   12ed8:	00d036b3          	snez	a3,a3
   12edc:	00d767b3          	or	a5,a4,a3
   12ee0:	00000413          	li	s0,0
   12ee4:	f89ff06f          	j	12e6c <__divdf3+0x714>
   12ee8:	00080437          	lui	s0,0x80
   12eec:	00000713          	li	a4,0
   12ef0:	7ff00793          	li	a5,2047
   12ef4:	00000913          	li	s2,0
   12ef8:	e55ff06f          	j	12d4c <__divdf3+0x5f4>
   12efc:	00000413          	li	s0,0
   12f00:	00000713          	li	a4,0
   12f04:	7ff00793          	li	a5,2047
   12f08:	e45ff06f          	j	12d4c <__divdf3+0x5f4>
   12f0c:	00000413          	li	s0,0
   12f10:	00000713          	li	a4,0
   12f14:	00100793          	li	a5,1
   12f18:	e35ff06f          	j	12d4c <__divdf3+0x5f4>

00012f1c <__eqdf2>:
   12f1c:	001007b7          	lui	a5,0x100
   12f20:	0145d813          	srli	a6,a1,0x14
   12f24:	fff78793          	addi	a5,a5,-1 # fffff <__BSS_END__+0xdf19f>
   12f28:	0146d313          	srli	t1,a3,0x14
   12f2c:	7ff87813          	andi	a6,a6,2047
   12f30:	7ff00e93          	li	t4,2047
   12f34:	00b7f733          	and	a4,a5,a1
   12f38:	00050893          	mv	a7,a0
   12f3c:	01f5df93          	srli	t6,a1,0x1f
   12f40:	00d7f7b3          	and	a5,a5,a3
   12f44:	7ff37313          	andi	t1,t1,2047
   12f48:	01f6df13          	srli	t5,a3,0x1f
   12f4c:	01d81863          	bne	a6,t4,12f5c <__eqdf2+0x40>
   12f50:	00a76e33          	or	t3,a4,a0
   12f54:	00100513          	li	a0,1
   12f58:	040e1263          	bnez	t3,12f9c <__eqdf2+0x80>
   12f5c:	01d31863          	bne	t1,t4,12f6c <__eqdf2+0x50>
   12f60:	00c7e7b3          	or	a5,a5,a2
   12f64:	00100513          	li	a0,1
   12f68:	02079a63          	bnez	a5,12f9c <__eqdf2+0x80>
   12f6c:	00b6c6b3          	xor	a3,a3,a1
   12f70:	00169693          	slli	a3,a3,0x1
   12f74:	02069263          	bnez	a3,12f98 <__eqdf2+0x7c>
   12f78:	03161063          	bne	a2,a7,12f98 <__eqdf2+0x7c>
   12f7c:	00000513          	li	a0,0
   12f80:	01ef8e63          	beq	t6,t5,12f9c <__eqdf2+0x80>
   12f84:	00100513          	li	a0,1
   12f88:	00081a63          	bnez	a6,12f9c <__eqdf2+0x80>
   12f8c:	01176733          	or	a4,a4,a7
   12f90:	00e03533          	snez	a0,a4
   12f94:	00008067          	ret
   12f98:	00100513          	li	a0,1
   12f9c:	00008067          	ret

00012fa0 <__gedf2>:
   12fa0:	0145d893          	srli	a7,a1,0x14
   12fa4:	00100737          	lui	a4,0x100
   12fa8:	fff70713          	addi	a4,a4,-1 # fffff <__BSS_END__+0xdf19f>
   12fac:	0146d813          	srli	a6,a3,0x14
   12fb0:	7ff8f893          	andi	a7,a7,2047
   12fb4:	7ff00793          	li	a5,2047
   12fb8:	00b77333          	and	t1,a4,a1
   12fbc:	7ff87813          	andi	a6,a6,2047
   12fc0:	00d77733          	and	a4,a4,a3
   12fc4:	01f5d593          	srli	a1,a1,0x1f
   12fc8:	01f6d693          	srli	a3,a3,0x1f
   12fcc:	02f88063          	beq	a7,a5,12fec <__gedf2+0x4c>
   12fd0:	7ff00e13          	li	t3,2047
   12fd4:	00080793          	mv	a5,a6
   12fd8:	03c81463          	bne	a6,t3,13000 <__gedf2+0x60>
   12fdc:	00c76e33          	or	t3,a4,a2
   12fe0:	020e0063          	beqz	t3,13000 <__gedf2+0x60>
   12fe4:	ffe00793          	li	a5,-2
   12fe8:	0100006f          	j	12ff8 <__gedf2+0x58>
   12fec:	00a36e33          	or	t3,t1,a0
   12ff0:	ffe00793          	li	a5,-2
   12ff4:	fc0e0ee3          	beqz	t3,12fd0 <__gedf2+0x30>
   12ff8:	00078513          	mv	a0,a5
   12ffc:	00008067          	ret
   13000:	00000e13          	li	t3,0
   13004:	00089663          	bnez	a7,13010 <__gedf2+0x70>
   13008:	00a36e33          	or	t3,t1,a0
   1300c:	001e3e13          	seqz	t3,t3
   13010:	04081863          	bnez	a6,13060 <__gedf2+0xc0>
   13014:	00c76eb3          	or	t4,a4,a2
   13018:	000e0a63          	beqz	t3,1302c <__gedf2+0x8c>
   1301c:	fc0e8ee3          	beqz	t4,12ff8 <__gedf2+0x58>
   13020:	00169793          	slli	a5,a3,0x1
   13024:	fff78793          	addi	a5,a5,-1
   13028:	fd1ff06f          	j	12ff8 <__gedf2+0x58>
   1302c:	020e9c63          	bnez	t4,13064 <__gedf2+0xc4>
   13030:	40b005b3          	neg	a1,a1
   13034:	0015e793          	ori	a5,a1,1
   13038:	fc1ff06f          	j	12ff8 <__gedf2+0x58>
   1303c:	ff08c2e3          	blt	a7,a6,13020 <__gedf2+0x80>
   13040:	fe6768e3          	bltu	a4,t1,13030 <__gedf2+0x90>
   13044:	00a67463          	bgeu	a2,a0,1304c <__gedf2+0xac>
   13048:	fee304e3          	beq	t1,a4,13030 <__gedf2+0x90>
   1304c:	00c56663          	bltu	a0,a2,13058 <__gedf2+0xb8>
   13050:	00000793          	li	a5,0
   13054:	fae372e3          	bgeu	t1,a4,12ff8 <__gedf2+0x58>
   13058:	00159793          	slli	a5,a1,0x1
   1305c:	fc9ff06f          	j	13024 <__gedf2+0x84>
   13060:	fc0e10e3          	bnez	t3,13020 <__gedf2+0x80>
   13064:	fcb696e3          	bne	a3,a1,13030 <__gedf2+0x90>
   13068:	fd185ae3          	bge	a6,a7,1303c <__gedf2+0x9c>
   1306c:	40d006b3          	neg	a3,a3
   13070:	0016e793          	ori	a5,a3,1
   13074:	f85ff06f          	j	12ff8 <__gedf2+0x58>

00013078 <__ledf2>:
   13078:	0145d893          	srli	a7,a1,0x14
   1307c:	00100737          	lui	a4,0x100
   13080:	fff70713          	addi	a4,a4,-1 # fffff <__BSS_END__+0xdf19f>
   13084:	0146d813          	srli	a6,a3,0x14
   13088:	7ff8f893          	andi	a7,a7,2047
   1308c:	7ff00793          	li	a5,2047
   13090:	00b77333          	and	t1,a4,a1
   13094:	7ff87813          	andi	a6,a6,2047
   13098:	00d77733          	and	a4,a4,a3
   1309c:	01f5d593          	srli	a1,a1,0x1f
   130a0:	01f6d693          	srli	a3,a3,0x1f
   130a4:	02f88063          	beq	a7,a5,130c4 <__ledf2+0x4c>
   130a8:	7ff00e13          	li	t3,2047
   130ac:	00080793          	mv	a5,a6
   130b0:	03c81463          	bne	a6,t3,130d8 <__ledf2+0x60>
   130b4:	00c76e33          	or	t3,a4,a2
   130b8:	020e0063          	beqz	t3,130d8 <__ledf2+0x60>
   130bc:	00200793          	li	a5,2
   130c0:	0100006f          	j	130d0 <__ledf2+0x58>
   130c4:	00a36e33          	or	t3,t1,a0
   130c8:	00200793          	li	a5,2
   130cc:	fc0e0ee3          	beqz	t3,130a8 <__ledf2+0x30>
   130d0:	00078513          	mv	a0,a5
   130d4:	00008067          	ret
   130d8:	00000e13          	li	t3,0
   130dc:	00089663          	bnez	a7,130e8 <__ledf2+0x70>
   130e0:	00a36e33          	or	t3,t1,a0
   130e4:	001e3e13          	seqz	t3,t3
   130e8:	04081863          	bnez	a6,13138 <__ledf2+0xc0>
   130ec:	00c76eb3          	or	t4,a4,a2
   130f0:	000e0a63          	beqz	t3,13104 <__ledf2+0x8c>
   130f4:	fc0e8ee3          	beqz	t4,130d0 <__ledf2+0x58>
   130f8:	00169793          	slli	a5,a3,0x1
   130fc:	fff78793          	addi	a5,a5,-1
   13100:	fd1ff06f          	j	130d0 <__ledf2+0x58>
   13104:	020e9c63          	bnez	t4,1313c <__ledf2+0xc4>
   13108:	40b005b3          	neg	a1,a1
   1310c:	0015e793          	ori	a5,a1,1
   13110:	fc1ff06f          	j	130d0 <__ledf2+0x58>
   13114:	ff08c2e3          	blt	a7,a6,130f8 <__ledf2+0x80>
   13118:	fe6768e3          	bltu	a4,t1,13108 <__ledf2+0x90>
   1311c:	00a67463          	bgeu	a2,a0,13124 <__ledf2+0xac>
   13120:	fee304e3          	beq	t1,a4,13108 <__ledf2+0x90>
   13124:	00c56663          	bltu	a0,a2,13130 <__ledf2+0xb8>
   13128:	00000793          	li	a5,0
   1312c:	fae372e3          	bgeu	t1,a4,130d0 <__ledf2+0x58>
   13130:	00159793          	slli	a5,a1,0x1
   13134:	fc9ff06f          	j	130fc <__ledf2+0x84>
   13138:	fc0e10e3          	bnez	t3,130f8 <__ledf2+0x80>
   1313c:	fcb696e3          	bne	a3,a1,13108 <__ledf2+0x90>
   13140:	fd185ae3          	bge	a6,a7,13114 <__ledf2+0x9c>
   13144:	40d006b3          	neg	a3,a3
   13148:	0016e793          	ori	a5,a3,1
   1314c:	f85ff06f          	j	130d0 <__ledf2+0x58>

00013150 <__muldf3>:
   13150:	fd010113          	addi	sp,sp,-48
   13154:	01312e23          	sw	s3,28(sp)
   13158:	0145d993          	srli	s3,a1,0x14
   1315c:	02812423          	sw	s0,40(sp)
   13160:	02912223          	sw	s1,36(sp)
   13164:	01412c23          	sw	s4,24(sp)
   13168:	01512a23          	sw	s5,20(sp)
   1316c:	01712623          	sw	s7,12(sp)
   13170:	00c59493          	slli	s1,a1,0xc
   13174:	02112623          	sw	ra,44(sp)
   13178:	03212023          	sw	s2,32(sp)
   1317c:	01612823          	sw	s6,16(sp)
   13180:	7ff9f993          	andi	s3,s3,2047
   13184:	00050413          	mv	s0,a0
   13188:	00060b93          	mv	s7,a2
   1318c:	00068a13          	mv	s4,a3
   13190:	00c4d493          	srli	s1,s1,0xc
   13194:	01f5da93          	srli	s5,a1,0x1f
   13198:	0c098263          	beqz	s3,1325c <__muldf3+0x10c>
   1319c:	7ff00793          	li	a5,2047
   131a0:	12f98463          	beq	s3,a5,132c8 <__muldf3+0x178>
   131a4:	00349493          	slli	s1,s1,0x3
   131a8:	01d55793          	srli	a5,a0,0x1d
   131ac:	0097e7b3          	or	a5,a5,s1
   131b0:	008004b7          	lui	s1,0x800
   131b4:	0097e4b3          	or	s1,a5,s1
   131b8:	00351913          	slli	s2,a0,0x3
   131bc:	c0198993          	addi	s3,s3,-1023
   131c0:	00000b13          	li	s6,0
   131c4:	014a5793          	srli	a5,s4,0x14
   131c8:	00ca1413          	slli	s0,s4,0xc
   131cc:	7ff7f793          	andi	a5,a5,2047
   131d0:	00c45413          	srli	s0,s0,0xc
   131d4:	01fa5a13          	srli	s4,s4,0x1f
   131d8:	12078063          	beqz	a5,132f8 <__muldf3+0x1a8>
   131dc:	7ff00713          	li	a4,2047
   131e0:	18e78463          	beq	a5,a4,13368 <__muldf3+0x218>
   131e4:	00341413          	slli	s0,s0,0x3
   131e8:	01dbd713          	srli	a4,s7,0x1d
   131ec:	00876733          	or	a4,a4,s0
   131f0:	00800437          	lui	s0,0x800
   131f4:	00876433          	or	s0,a4,s0
   131f8:	003b9593          	slli	a1,s7,0x3
   131fc:	c0178793          	addi	a5,a5,-1023
   13200:	00000693          	li	a3,0
   13204:	00f989b3          	add	s3,s3,a5
   13208:	002b1793          	slli	a5,s6,0x2
   1320c:	00d7e7b3          	or	a5,a5,a3
   13210:	00a00713          	li	a4,10
   13214:	00198893          	addi	a7,s3,1
   13218:	1af74263          	blt	a4,a5,133bc <__muldf3+0x26c>
   1321c:	00200613          	li	a2,2
   13220:	014ac833          	xor	a6,s5,s4
   13224:	00100713          	li	a4,1
   13228:	16f64863          	blt	a2,a5,13398 <__muldf3+0x248>
   1322c:	fff78793          	addi	a5,a5,-1
   13230:	1af76663          	bltu	a4,a5,133dc <__muldf3+0x28c>
   13234:	00068b13          	mv	s6,a3
   13238:	00200793          	li	a5,2
   1323c:	58fb0863          	beq	s6,a5,137cc <__muldf3+0x67c>
   13240:	00300793          	li	a5,3
   13244:	56fb0e63          	beq	s6,a5,137c0 <__muldf3+0x670>
   13248:	00100793          	li	a5,1
   1324c:	40fb1063          	bne	s6,a5,1364c <__muldf3+0x4fc>
   13250:	00000413          	li	s0,0
   13254:	00000713          	li	a4,0
   13258:	5180006f          	j	13770 <__muldf3+0x620>
   1325c:	00a4e933          	or	s2,s1,a0
   13260:	06090e63          	beqz	s2,132dc <__muldf3+0x18c>
   13264:	04048263          	beqz	s1,132a8 <__muldf3+0x158>
   13268:	00048513          	mv	a0,s1
   1326c:	61d010ef          	jal	15088 <__clzsi2>
   13270:	00050713          	mv	a4,a0
   13274:	ff550693          	addi	a3,a0,-11
   13278:	01d00793          	li	a5,29
   1327c:	ff870613          	addi	a2,a4,-8
   13280:	40d787b3          	sub	a5,a5,a3
   13284:	00c494b3          	sll	s1,s1,a2
   13288:	00f457b3          	srl	a5,s0,a5
   1328c:	0097e7b3          	or	a5,a5,s1
   13290:	00c414b3          	sll	s1,s0,a2
   13294:	c0d00993          	li	s3,-1011
   13298:	00048913          	mv	s2,s1
   1329c:	40e989b3          	sub	s3,s3,a4
   132a0:	00078493          	mv	s1,a5
   132a4:	f1dff06f          	j	131c0 <__muldf3+0x70>
   132a8:	5e1010ef          	jal	15088 <__clzsi2>
   132ac:	01550693          	addi	a3,a0,21
   132b0:	01c00793          	li	a5,28
   132b4:	02050713          	addi	a4,a0,32
   132b8:	fcd7d0e3          	bge	a5,a3,13278 <__muldf3+0x128>
   132bc:	ff850793          	addi	a5,a0,-8
   132c0:	00f417b3          	sll	a5,s0,a5
   132c4:	fd1ff06f          	j	13294 <__muldf3+0x144>
   132c8:	00a4e933          	or	s2,s1,a0
   132cc:	02091063          	bnez	s2,132ec <__muldf3+0x19c>
   132d0:	00000493          	li	s1,0
   132d4:	00200b13          	li	s6,2
   132d8:	eedff06f          	j	131c4 <__muldf3+0x74>
   132dc:	00000493          	li	s1,0
   132e0:	00000993          	li	s3,0
   132e4:	00100b13          	li	s6,1
   132e8:	eddff06f          	j	131c4 <__muldf3+0x74>
   132ec:	00050913          	mv	s2,a0
   132f0:	00300b13          	li	s6,3
   132f4:	ed1ff06f          	j	131c4 <__muldf3+0x74>
   132f8:	017465b3          	or	a1,s0,s7
   132fc:	08058063          	beqz	a1,1337c <__muldf3+0x22c>
   13300:	04040263          	beqz	s0,13344 <__muldf3+0x1f4>
   13304:	00040513          	mv	a0,s0
   13308:	581010ef          	jal	15088 <__clzsi2>
   1330c:	00050693          	mv	a3,a0
   13310:	ff550793          	addi	a5,a0,-11
   13314:	01d00713          	li	a4,29
   13318:	ff868613          	addi	a2,a3,-8
   1331c:	40f70733          	sub	a4,a4,a5
   13320:	00c41433          	sll	s0,s0,a2
   13324:	00ebd733          	srl	a4,s7,a4
   13328:	00876733          	or	a4,a4,s0
   1332c:	00cb9433          	sll	s0,s7,a2
   13330:	c0d00793          	li	a5,-1011
   13334:	00040593          	mv	a1,s0
   13338:	40d787b3          	sub	a5,a5,a3
   1333c:	00070413          	mv	s0,a4
   13340:	ec1ff06f          	j	13200 <__muldf3+0xb0>
   13344:	000b8513          	mv	a0,s7
   13348:	541010ef          	jal	15088 <__clzsi2>
   1334c:	01550793          	addi	a5,a0,21
   13350:	01c00713          	li	a4,28
   13354:	02050693          	addi	a3,a0,32
   13358:	faf75ee3          	bge	a4,a5,13314 <__muldf3+0x1c4>
   1335c:	ff850713          	addi	a4,a0,-8
   13360:	00eb9733          	sll	a4,s7,a4
   13364:	fcdff06f          	j	13330 <__muldf3+0x1e0>
   13368:	017465b3          	or	a1,s0,s7
   1336c:	02059063          	bnez	a1,1338c <__muldf3+0x23c>
   13370:	00000413          	li	s0,0
   13374:	00200693          	li	a3,2
   13378:	e8dff06f          	j	13204 <__muldf3+0xb4>
   1337c:	00000413          	li	s0,0
   13380:	00000793          	li	a5,0
   13384:	00100693          	li	a3,1
   13388:	e7dff06f          	j	13204 <__muldf3+0xb4>
   1338c:	000b8593          	mv	a1,s7
   13390:	00300693          	li	a3,3
   13394:	e71ff06f          	j	13204 <__muldf3+0xb4>
   13398:	00f717b3          	sll	a5,a4,a5
   1339c:	5307f713          	andi	a4,a5,1328
   133a0:	02071863          	bnez	a4,133d0 <__muldf3+0x280>
   133a4:	2407f613          	andi	a2,a5,576
   133a8:	40061463          	bnez	a2,137b0 <__muldf3+0x660>
   133ac:	0887f793          	andi	a5,a5,136
   133b0:	02078663          	beqz	a5,133dc <__muldf3+0x28c>
   133b4:	000a0813          	mv	a6,s4
   133b8:	e7dff06f          	j	13234 <__muldf3+0xe4>
   133bc:	00f00713          	li	a4,15
   133c0:	40e78063          	beq	a5,a4,137c0 <__muldf3+0x670>
   133c4:	00b00713          	li	a4,11
   133c8:	000a8813          	mv	a6,s5
   133cc:	fee784e3          	beq	a5,a4,133b4 <__muldf3+0x264>
   133d0:	00048413          	mv	s0,s1
   133d4:	00090593          	mv	a1,s2
   133d8:	e61ff06f          	j	13238 <__muldf3+0xe8>
   133dc:	01095793          	srli	a5,s2,0x10
   133e0:	01059f13          	slli	t5,a1,0x10
   133e4:	01091913          	slli	s2,s2,0x10
   133e8:	01095913          	srli	s2,s2,0x10
   133ec:	010f5f13          	srli	t5,t5,0x10
   133f0:	0105de93          	srli	t4,a1,0x10
   133f4:	00090513          	mv	a0,s2
   133f8:	000f0593          	mv	a1,t5
   133fc:	2b1010ef          	jal	14eac <__mulsi3>
   13400:	00050e13          	mv	t3,a0
   13404:	000e8593          	mv	a1,t4
   13408:	00090513          	mv	a0,s2
   1340c:	2a1010ef          	jal	14eac <__mulsi3>
   13410:	00050f93          	mv	t6,a0
   13414:	000f0593          	mv	a1,t5
   13418:	00078513          	mv	a0,a5
   1341c:	291010ef          	jal	14eac <__mulsi3>
   13420:	00050293          	mv	t0,a0
   13424:	000e8593          	mv	a1,t4
   13428:	00078513          	mv	a0,a5
   1342c:	281010ef          	jal	14eac <__mulsi3>
   13430:	010e5313          	srli	t1,t3,0x10
   13434:	005f8fb3          	add	t6,t6,t0
   13438:	01f30333          	add	t1,t1,t6
   1343c:	00050713          	mv	a4,a0
   13440:	00537663          	bgeu	t1,t0,1344c <__muldf3+0x2fc>
   13444:	000106b7          	lui	a3,0x10
   13448:	00d50733          	add	a4,a0,a3
   1344c:	010e1e13          	slli	t3,t3,0x10
   13450:	01035393          	srli	t2,t1,0x10
   13454:	010e5e13          	srli	t3,t3,0x10
   13458:	01031313          	slli	t1,t1,0x10
   1345c:	01c30333          	add	t1,t1,t3
   13460:	01045e13          	srli	t3,s0,0x10
   13464:	01041413          	slli	s0,s0,0x10
   13468:	01045413          	srli	s0,s0,0x10
   1346c:	00090513          	mv	a0,s2
   13470:	00040593          	mv	a1,s0
   13474:	239010ef          	jal	14eac <__mulsi3>
   13478:	00050293          	mv	t0,a0
   1347c:	000e0593          	mv	a1,t3
   13480:	00090513          	mv	a0,s2
   13484:	229010ef          	jal	14eac <__mulsi3>
   13488:	00050f93          	mv	t6,a0
   1348c:	00040593          	mv	a1,s0
   13490:	00078513          	mv	a0,a5
   13494:	219010ef          	jal	14eac <__mulsi3>
   13498:	00050913          	mv	s2,a0
   1349c:	000e0593          	mv	a1,t3
   134a0:	00078513          	mv	a0,a5
   134a4:	209010ef          	jal	14eac <__mulsi3>
   134a8:	0102d793          	srli	a5,t0,0x10
   134ac:	012f8fb3          	add	t6,t6,s2
   134b0:	01f787b3          	add	a5,a5,t6
   134b4:	0127f663          	bgeu	a5,s2,134c0 <__muldf3+0x370>
   134b8:	000106b7          	lui	a3,0x10
   134bc:	00d50533          	add	a0,a0,a3
   134c0:	01029293          	slli	t0,t0,0x10
   134c4:	0107d593          	srli	a1,a5,0x10
   134c8:	0102d293          	srli	t0,t0,0x10
   134cc:	0104d913          	srli	s2,s1,0x10
   134d0:	01079793          	slli	a5,a5,0x10
   134d4:	01049493          	slli	s1,s1,0x10
   134d8:	005787b3          	add	a5,a5,t0
   134dc:	0104d493          	srli	s1,s1,0x10
   134e0:	00a58fb3          	add	t6,a1,a0
   134e4:	00f383b3          	add	t2,t2,a5
   134e8:	00048513          	mv	a0,s1
   134ec:	000f0593          	mv	a1,t5
   134f0:	1bd010ef          	jal	14eac <__mulsi3>
   134f4:	00050293          	mv	t0,a0
   134f8:	000e8593          	mv	a1,t4
   134fc:	00048513          	mv	a0,s1
   13500:	1ad010ef          	jal	14eac <__mulsi3>
   13504:	00050a13          	mv	s4,a0
   13508:	000f0593          	mv	a1,t5
   1350c:	00090513          	mv	a0,s2
   13510:	19d010ef          	jal	14eac <__mulsi3>
   13514:	00050f13          	mv	t5,a0
   13518:	000e8593          	mv	a1,t4
   1351c:	00090513          	mv	a0,s2
   13520:	18d010ef          	jal	14eac <__mulsi3>
   13524:	0102d613          	srli	a2,t0,0x10
   13528:	01ea0a33          	add	s4,s4,t5
   1352c:	01460633          	add	a2,a2,s4
   13530:	01e67663          	bgeu	a2,t5,1353c <__muldf3+0x3ec>
   13534:	000106b7          	lui	a3,0x10
   13538:	00d50533          	add	a0,a0,a3
   1353c:	01029293          	slli	t0,t0,0x10
   13540:	01065593          	srli	a1,a2,0x10
   13544:	0102d293          	srli	t0,t0,0x10
   13548:	01061613          	slli	a2,a2,0x10
   1354c:	00a58eb3          	add	t4,a1,a0
   13550:	00560f33          	add	t5,a2,t0
   13554:	00048513          	mv	a0,s1
   13558:	00040593          	mv	a1,s0
   1355c:	151010ef          	jal	14eac <__mulsi3>
   13560:	00050293          	mv	t0,a0
   13564:	000e0593          	mv	a1,t3
   13568:	00048513          	mv	a0,s1
   1356c:	141010ef          	jal	14eac <__mulsi3>
   13570:	00050493          	mv	s1,a0
   13574:	00040593          	mv	a1,s0
   13578:	00090513          	mv	a0,s2
   1357c:	131010ef          	jal	14eac <__mulsi3>
   13580:	00050413          	mv	s0,a0
   13584:	000e0593          	mv	a1,t3
   13588:	00090513          	mv	a0,s2
   1358c:	121010ef          	jal	14eac <__mulsi3>
   13590:	0102d613          	srli	a2,t0,0x10
   13594:	008484b3          	add	s1,s1,s0
   13598:	00960633          	add	a2,a2,s1
   1359c:	00050e13          	mv	t3,a0
   135a0:	00867663          	bgeu	a2,s0,135ac <__muldf3+0x45c>
   135a4:	000106b7          	lui	a3,0x10
   135a8:	00d50e33          	add	t3,a0,a3
   135ac:	01029293          	slli	t0,t0,0x10
   135b0:	01061693          	slli	a3,a2,0x10
   135b4:	0102d293          	srli	t0,t0,0x10
   135b8:	00770733          	add	a4,a4,t2
   135bc:	005686b3          	add	a3,a3,t0
   135c0:	01f685b3          	add	a1,a3,t6
   135c4:	00f737b3          	sltu	a5,a4,a5
   135c8:	00f587b3          	add	a5,a1,a5
   135cc:	00d5b6b3          	sltu	a3,a1,a3
   135d0:	00b7b5b3          	sltu	a1,a5,a1
   135d4:	00b6e6b3          	or	a3,a3,a1
   135d8:	01065613          	srli	a2,a2,0x10
   135dc:	00c686b3          	add	a3,a3,a2
   135e0:	01e70633          	add	a2,a4,t5
   135e4:	01d785b3          	add	a1,a5,t4
   135e8:	00e63733          	sltu	a4,a2,a4
   135ec:	00e58733          	add	a4,a1,a4
   135f0:	00f5b7b3          	sltu	a5,a1,a5
   135f4:	00b735b3          	sltu	a1,a4,a1
   135f8:	00b7e7b3          	or	a5,a5,a1
   135fc:	00961593          	slli	a1,a2,0x9
   13600:	00d787b3          	add	a5,a5,a3
   13604:	0065e5b3          	or	a1,a1,t1
   13608:	01c787b3          	add	a5,a5,t3
   1360c:	00b035b3          	snez	a1,a1
   13610:	01765613          	srli	a2,a2,0x17
   13614:	00979793          	slli	a5,a5,0x9
   13618:	01775413          	srli	s0,a4,0x17
   1361c:	00c5e5b3          	or	a1,a1,a2
   13620:	00971713          	slli	a4,a4,0x9
   13624:	00e5e5b3          	or	a1,a1,a4
   13628:	00779713          	slli	a4,a5,0x7
   1362c:	0087e433          	or	s0,a5,s0
   13630:	0c075063          	bgez	a4,136f0 <__muldf3+0x5a0>
   13634:	0015d793          	srli	a5,a1,0x1
   13638:	0015f593          	andi	a1,a1,1
   1363c:	00b7e7b3          	or	a5,a5,a1
   13640:	01f41593          	slli	a1,s0,0x1f
   13644:	00b7e5b3          	or	a1,a5,a1
   13648:	00145413          	srli	s0,s0,0x1
   1364c:	3ff88793          	addi	a5,a7,1023
   13650:	0af05463          	blez	a5,136f8 <__muldf3+0x5a8>
   13654:	0075f713          	andi	a4,a1,7
   13658:	02070063          	beqz	a4,13678 <__muldf3+0x528>
   1365c:	00f5f713          	andi	a4,a1,15
   13660:	00400693          	li	a3,4
   13664:	00d70a63          	beq	a4,a3,13678 <__muldf3+0x528>
   13668:	00d58733          	add	a4,a1,a3
   1366c:	00b736b3          	sltu	a3,a4,a1
   13670:	00d40433          	add	s0,s0,a3
   13674:	00070593          	mv	a1,a4
   13678:	00741713          	slli	a4,s0,0x7
   1367c:	00075a63          	bgez	a4,13690 <__muldf3+0x540>
   13680:	ff0007b7          	lui	a5,0xff000
   13684:	fff78793          	addi	a5,a5,-1 # feffffff <__BSS_END__+0xfefdf19f>
   13688:	00f47433          	and	s0,s0,a5
   1368c:	40088793          	addi	a5,a7,1024
   13690:	7fe00713          	li	a4,2046
   13694:	12f74c63          	blt	a4,a5,137cc <__muldf3+0x67c>
   13698:	01d41713          	slli	a4,s0,0x1d
   1369c:	0035d593          	srli	a1,a1,0x3
   136a0:	00b76733          	or	a4,a4,a1
   136a4:	00345413          	srli	s0,s0,0x3
   136a8:	00c41413          	slli	s0,s0,0xc
   136ac:	00c45413          	srli	s0,s0,0xc
   136b0:	01479793          	slli	a5,a5,0x14
   136b4:	02c12083          	lw	ra,44(sp)
   136b8:	0087e7b3          	or	a5,a5,s0
   136bc:	02812403          	lw	s0,40(sp)
   136c0:	01f81813          	slli	a6,a6,0x1f
   136c4:	02412483          	lw	s1,36(sp)
   136c8:	02012903          	lw	s2,32(sp)
   136cc:	01c12983          	lw	s3,28(sp)
   136d0:	01812a03          	lw	s4,24(sp)
   136d4:	01412a83          	lw	s5,20(sp)
   136d8:	01012b03          	lw	s6,16(sp)
   136dc:	00c12b83          	lw	s7,12(sp)
   136e0:	00070513          	mv	a0,a4
   136e4:	0107e5b3          	or	a1,a5,a6
   136e8:	03010113          	addi	sp,sp,48
   136ec:	00008067          	ret
   136f0:	00098893          	mv	a7,s3
   136f4:	f59ff06f          	j	1364c <__muldf3+0x4fc>
   136f8:	08078063          	beqz	a5,13778 <__muldf3+0x628>
   136fc:	fc900713          	li	a4,-55
   13700:	b4e7c8e3          	blt	a5,a4,13250 <__muldf3+0x100>
   13704:	fe200713          	li	a4,-30
   13708:	06e7cc63          	blt	a5,a4,13780 <__muldf3+0x630>
   1370c:	00100713          	li	a4,1
   13710:	40f70733          	sub	a4,a4,a5
   13714:	41e88893          	addi	a7,a7,1054
   13718:	011597b3          	sll	a5,a1,a7
   1371c:	00f037b3          	snez	a5,a5
   13720:	011418b3          	sll	a7,s0,a7
   13724:	00e5d6b3          	srl	a3,a1,a4
   13728:	0117e7b3          	or	a5,a5,a7
   1372c:	00d7e7b3          	or	a5,a5,a3
   13730:	00e45433          	srl	s0,s0,a4
   13734:	0077f713          	andi	a4,a5,7
   13738:	02070063          	beqz	a4,13758 <__muldf3+0x608>
   1373c:	00f7f713          	andi	a4,a5,15
   13740:	00400693          	li	a3,4
   13744:	00d70a63          	beq	a4,a3,13758 <__muldf3+0x608>
   13748:	00d78733          	add	a4,a5,a3
   1374c:	00f736b3          	sltu	a3,a4,a5
   13750:	00d40433          	add	s0,s0,a3
   13754:	00070793          	mv	a5,a4
   13758:	00841713          	slli	a4,s0,0x8
   1375c:	08074063          	bltz	a4,137dc <__muldf3+0x68c>
   13760:	01d41713          	slli	a4,s0,0x1d
   13764:	0037d793          	srli	a5,a5,0x3
   13768:	00f76733          	or	a4,a4,a5
   1376c:	00345413          	srli	s0,s0,0x3
   13770:	00000793          	li	a5,0
   13774:	f35ff06f          	j	136a8 <__muldf3+0x558>
   13778:	00100713          	li	a4,1
   1377c:	f99ff06f          	j	13714 <__muldf3+0x5c4>
   13780:	fe100613          	li	a2,-31
   13784:	40f60733          	sub	a4,a2,a5
   13788:	00e45733          	srl	a4,s0,a4
   1378c:	00000693          	li	a3,0
   13790:	00c78663          	beq	a5,a2,1379c <__muldf3+0x64c>
   13794:	43e88893          	addi	a7,a7,1086
   13798:	011416b3          	sll	a3,s0,a7
   1379c:	00d5e5b3          	or	a1,a1,a3
   137a0:	00b035b3          	snez	a1,a1
   137a4:	00b767b3          	or	a5,a4,a1
   137a8:	00000413          	li	s0,0
   137ac:	f89ff06f          	j	13734 <__muldf3+0x5e4>
   137b0:	00080437          	lui	s0,0x80
   137b4:	7ff00793          	li	a5,2047
   137b8:	00000813          	li	a6,0
   137bc:	eedff06f          	j	136a8 <__muldf3+0x558>
   137c0:	00080437          	lui	s0,0x80
   137c4:	00000713          	li	a4,0
   137c8:	fedff06f          	j	137b4 <__muldf3+0x664>
   137cc:	00000413          	li	s0,0
   137d0:	00000713          	li	a4,0
   137d4:	7ff00793          	li	a5,2047
   137d8:	ed1ff06f          	j	136a8 <__muldf3+0x558>
   137dc:	00000413          	li	s0,0
   137e0:	00000713          	li	a4,0
   137e4:	00100793          	li	a5,1
   137e8:	ec1ff06f          	j	136a8 <__muldf3+0x558>

000137ec <__fixdfsi>:
   137ec:	0145d713          	srli	a4,a1,0x14
   137f0:	001006b7          	lui	a3,0x100
   137f4:	fff68793          	addi	a5,a3,-1 # fffff <__BSS_END__+0xdf19f>
   137f8:	7ff77713          	andi	a4,a4,2047
   137fc:	3fe00613          	li	a2,1022
   13800:	00b7f7b3          	and	a5,a5,a1
   13804:	01f5d593          	srli	a1,a1,0x1f
   13808:	04e65c63          	bge	a2,a4,13860 <__fixdfsi+0x74>
   1380c:	41d00613          	li	a2,1053
   13810:	00e65a63          	bge	a2,a4,13824 <__fixdfsi+0x38>
   13814:	80000537          	lui	a0,0x80000
   13818:	fff50513          	addi	a0,a0,-1 # 7fffffff <__BSS_END__+0x7ffdf19f>
   1381c:	00a58533          	add	a0,a1,a0
   13820:	00008067          	ret
   13824:	00d7e7b3          	or	a5,a5,a3
   13828:	41300693          	li	a3,1043
   1382c:	02e6d463          	bge	a3,a4,13854 <__fixdfsi+0x68>
   13830:	bed70693          	addi	a3,a4,-1043
   13834:	00d797b3          	sll	a5,a5,a3
   13838:	43300693          	li	a3,1075
   1383c:	40e68733          	sub	a4,a3,a4
   13840:	00e55533          	srl	a0,a0,a4
   13844:	00a7e533          	or	a0,a5,a0
   13848:	00058e63          	beqz	a1,13864 <__fixdfsi+0x78>
   1384c:	40a00533          	neg	a0,a0
   13850:	00008067          	ret
   13854:	40e686b3          	sub	a3,a3,a4
   13858:	00d7d533          	srl	a0,a5,a3
   1385c:	fedff06f          	j	13848 <__fixdfsi+0x5c>
   13860:	00000513          	li	a0,0
   13864:	00008067          	ret

00013868 <__floatsidf>:
   13868:	ff010113          	addi	sp,sp,-16
   1386c:	00112623          	sw	ra,12(sp)
   13870:	00812423          	sw	s0,8(sp)
   13874:	00912223          	sw	s1,4(sp)
   13878:	00050793          	mv	a5,a0
   1387c:	08050063          	beqz	a0,138fc <__floatsidf+0x94>
   13880:	41f55713          	srai	a4,a0,0x1f
   13884:	00a74433          	xor	s0,a4,a0
   13888:	40e40433          	sub	s0,s0,a4
   1388c:	01f55493          	srli	s1,a0,0x1f
   13890:	00040513          	mv	a0,s0
   13894:	7f4010ef          	jal	15088 <__clzsi2>
   13898:	41e00793          	li	a5,1054
   1389c:	00a00713          	li	a4,10
   138a0:	40a787b3          	sub	a5,a5,a0
   138a4:	04a74463          	blt	a4,a0,138ec <__floatsidf+0x84>
   138a8:	00b00713          	li	a4,11
   138ac:	40a70733          	sub	a4,a4,a0
   138b0:	01550513          	addi	a0,a0,21
   138b4:	00e45733          	srl	a4,s0,a4
   138b8:	00a41433          	sll	s0,s0,a0
   138bc:	00c12083          	lw	ra,12(sp)
   138c0:	00040513          	mv	a0,s0
   138c4:	00c71713          	slli	a4,a4,0xc
   138c8:	00812403          	lw	s0,8(sp)
   138cc:	01479793          	slli	a5,a5,0x14
   138d0:	00c75713          	srli	a4,a4,0xc
   138d4:	01f49493          	slli	s1,s1,0x1f
   138d8:	00e7e7b3          	or	a5,a5,a4
   138dc:	0097e5b3          	or	a1,a5,s1
   138e0:	00412483          	lw	s1,4(sp)
   138e4:	01010113          	addi	sp,sp,16
   138e8:	00008067          	ret
   138ec:	ff550513          	addi	a0,a0,-11
   138f0:	00a41733          	sll	a4,s0,a0
   138f4:	00000413          	li	s0,0
   138f8:	fc5ff06f          	j	138bc <__floatsidf+0x54>
   138fc:	00000493          	li	s1,0
   13900:	00000713          	li	a4,0
   13904:	ff1ff06f          	j	138f4 <__floatsidf+0x8c>

00013908 <__fixdfdi>:
   13908:	00100737          	lui	a4,0x100
   1390c:	0145d613          	srli	a2,a1,0x14
   13910:	fff70793          	addi	a5,a4,-1 # fffff <__BSS_END__+0xdf19f>
   13914:	7ff67613          	andi	a2,a2,2047
   13918:	3fe00693          	li	a3,1022
   1391c:	00b7f7b3          	and	a5,a5,a1
   13920:	0ac6d063          	bge	a3,a2,139c0 <__fixdfdi+0xb8>
   13924:	ff010113          	addi	sp,sp,-16
   13928:	00812423          	sw	s0,8(sp)
   1392c:	00112623          	sw	ra,12(sp)
   13930:	43d00693          	li	a3,1085
   13934:	01f5d413          	srli	s0,a1,0x1f
   13938:	02c6d263          	bge	a3,a2,1395c <__fixdfdi+0x54>
   1393c:	800005b7          	lui	a1,0x80000
   13940:	fff58593          	addi	a1,a1,-1 # 7fffffff <__BSS_END__+0x7ffdf19f>
   13944:	fff40513          	addi	a0,s0,-1 # 7ffff <__BSS_END__+0x5f19f>
   13948:	00b405b3          	add	a1,s0,a1
   1394c:	00c12083          	lw	ra,12(sp)
   13950:	00812403          	lw	s0,8(sp)
   13954:	01010113          	addi	sp,sp,16
   13958:	00008067          	ret
   1395c:	00e7e5b3          	or	a1,a5,a4
   13960:	43200793          	li	a5,1074
   13964:	02c7d263          	bge	a5,a2,13988 <__fixdfdi+0x80>
   13968:	bcd60613          	addi	a2,a2,-1075 # fbcd <exit-0x4e7>
   1396c:	6e0010ef          	jal	1504c <__ashldi3>
   13970:	fc040ee3          	beqz	s0,1394c <__fixdfdi+0x44>
   13974:	00a037b3          	snez	a5,a0
   13978:	40b005b3          	neg	a1,a1
   1397c:	40f585b3          	sub	a1,a1,a5
   13980:	40a00533          	neg	a0,a0
   13984:	fc9ff06f          	j	1394c <__fixdfdi+0x44>
   13988:	41300793          	li	a5,1043
   1398c:	02c7d263          	bge	a5,a2,139b0 <__fixdfdi+0xa8>
   13990:	43300793          	li	a5,1075
   13994:	40c787b3          	sub	a5,a5,a2
   13998:	bed60613          	addi	a2,a2,-1043
   1399c:	00c59633          	sll	a2,a1,a2
   139a0:	00f55533          	srl	a0,a0,a5
   139a4:	00a66533          	or	a0,a2,a0
   139a8:	00f5d5b3          	srl	a1,a1,a5
   139ac:	fc5ff06f          	j	13970 <__fixdfdi+0x68>
   139b0:	40c78533          	sub	a0,a5,a2
   139b4:	00a5d533          	srl	a0,a1,a0
   139b8:	00000593          	li	a1,0
   139bc:	fb5ff06f          	j	13970 <__fixdfdi+0x68>
   139c0:	00000513          	li	a0,0
   139c4:	00000593          	li	a1,0
   139c8:	00008067          	ret

000139cc <__floatdidf>:
   139cc:	fe010113          	addi	sp,sp,-32
   139d0:	00112e23          	sw	ra,28(sp)
   139d4:	00812c23          	sw	s0,24(sp)
   139d8:	00912a23          	sw	s1,20(sp)
   139dc:	01212823          	sw	s2,16(sp)
   139e0:	01312623          	sw	s3,12(sp)
   139e4:	01412423          	sw	s4,8(sp)
   139e8:	01512223          	sw	s5,4(sp)
   139ec:	00b567b3          	or	a5,a0,a1
   139f0:	1a078c63          	beqz	a5,13ba8 <__floatdidf+0x1dc>
   139f4:	41f5d793          	srai	a5,a1,0x1f
   139f8:	00a7c533          	xor	a0,a5,a0
   139fc:	00b7c433          	xor	s0,a5,a1
   13a00:	40f50ab3          	sub	s5,a0,a5
   13a04:	01553533          	sltu	a0,a0,s5
   13a08:	40f40433          	sub	s0,s0,a5
   13a0c:	40a40433          	sub	s0,s0,a0
   13a10:	01f5d493          	srli	s1,a1,0x1f
   13a14:	00040913          	mv	s2,s0
   13a18:	0a040e63          	beqz	s0,13ad4 <__floatdidf+0x108>
   13a1c:	00040513          	mv	a0,s0
   13a20:	668010ef          	jal	15088 <__clzsi2>
   13a24:	43e00793          	li	a5,1086
   13a28:	40a789b3          	sub	s3,a5,a0
   13a2c:	00a00793          	li	a5,10
   13a30:	00050a13          	mv	s4,a0
   13a34:	10a7cc63          	blt	a5,a0,13b4c <__floatdidf+0x180>
   13a38:	00700793          	li	a5,7
   13a3c:	12a7ca63          	blt	a5,a0,13b70 <__floatdidf+0x1a4>
   13a40:	03850613          	addi	a2,a0,56
   13a44:	00040593          	mv	a1,s0
   13a48:	000a8513          	mv	a0,s5
   13a4c:	600010ef          	jal	1504c <__ashldi3>
   13a50:	00800613          	li	a2,8
   13a54:	00b56933          	or	s2,a0,a1
   13a58:	41460633          	sub	a2,a2,s4
   13a5c:	00040593          	mv	a1,s0
   13a60:	000a8513          	mv	a0,s5
   13a64:	5ac010ef          	jal	15010 <__lshrdi3>
   13a68:	01203933          	snez	s2,s2
   13a6c:	00a96533          	or	a0,s2,a0
   13a70:	00058413          	mv	s0,a1
   13a74:	ff8007b7          	lui	a5,0xff800
   13a78:	fff78793          	addi	a5,a5,-1 # ff7fffff <__BSS_END__+0xff7df19f>
   13a7c:	00f477b3          	and	a5,s0,a5
   13a80:	00757713          	andi	a4,a0,7
   13a84:	02070e63          	beqz	a4,13ac0 <__floatdidf+0xf4>
   13a88:	00f57713          	andi	a4,a0,15
   13a8c:	00400693          	li	a3,4
   13a90:	02d70863          	beq	a4,a3,13ac0 <__floatdidf+0xf4>
   13a94:	00d50733          	add	a4,a0,a3
   13a98:	00a736b3          	sltu	a3,a4,a0
   13a9c:	00d787b3          	add	a5,a5,a3
   13aa0:	00070513          	mv	a0,a4
   13aa4:	00879713          	slli	a4,a5,0x8
   13aa8:	00075c63          	bgez	a4,13ac0 <__floatdidf+0xf4>
   13aac:	ff800737          	lui	a4,0xff800
   13ab0:	fff70713          	addi	a4,a4,-1 # ff7fffff <__BSS_END__+0xff7df19f>
   13ab4:	43f00993          	li	s3,1087
   13ab8:	00e7f7b3          	and	a5,a5,a4
   13abc:	414989b3          	sub	s3,s3,s4
   13ac0:	00355513          	srli	a0,a0,0x3
   13ac4:	01d79713          	slli	a4,a5,0x1d
   13ac8:	00a76733          	or	a4,a4,a0
   13acc:	0037d413          	srli	s0,a5,0x3
   13ad0:	03c0006f          	j	13b0c <__floatdidf+0x140>
   13ad4:	000a8513          	mv	a0,s5
   13ad8:	5b0010ef          	jal	15088 <__clzsi2>
   13adc:	43e00793          	li	a5,1086
   13ae0:	02050a13          	addi	s4,a0,32
   13ae4:	414789b3          	sub	s3,a5,s4
   13ae8:	02a00793          	li	a5,42
   13aec:	0747ca63          	blt	a5,s4,13b60 <__floatdidf+0x194>
   13af0:	02b00413          	li	s0,43
   13af4:	ff5a0713          	addi	a4,s4,-11
   13af8:	41440433          	sub	s0,s0,s4
   13afc:	00e917b3          	sll	a5,s2,a4
   13b00:	008ad433          	srl	s0,s5,s0
   13b04:	00f46433          	or	s0,s0,a5
   13b08:	00ea9733          	sll	a4,s5,a4
   13b0c:	00c41413          	slli	s0,s0,0xc
   13b10:	01499793          	slli	a5,s3,0x14
   13b14:	00c45413          	srli	s0,s0,0xc
   13b18:	01c12083          	lw	ra,28(sp)
   13b1c:	0087e7b3          	or	a5,a5,s0
   13b20:	01812403          	lw	s0,24(sp)
   13b24:	01f49493          	slli	s1,s1,0x1f
   13b28:	01012903          	lw	s2,16(sp)
   13b2c:	00c12983          	lw	s3,12(sp)
   13b30:	00812a03          	lw	s4,8(sp)
   13b34:	00412a83          	lw	s5,4(sp)
   13b38:	0097e5b3          	or	a1,a5,s1
   13b3c:	00070513          	mv	a0,a4
   13b40:	01412483          	lw	s1,20(sp)
   13b44:	02010113          	addi	sp,sp,32
   13b48:	00008067          	ret
   13b4c:	00b00793          	li	a5,11
   13b50:	000a8713          	mv	a4,s5
   13b54:	f8f51ee3          	bne	a0,a5,13af0 <__floatdidf+0x124>
   13b58:	43300993          	li	s3,1075
   13b5c:	fb1ff06f          	j	13b0c <__floatdidf+0x140>
   13b60:	ff550413          	addi	s0,a0,-11
   13b64:	00000713          	li	a4,0
   13b68:	008a9433          	sll	s0,s5,s0
   13b6c:	fa1ff06f          	j	13b0c <__floatdidf+0x140>
   13b70:	00800793          	li	a5,8
   13b74:	000a8513          	mv	a0,s5
   13b78:	eefa0ee3          	beq	s4,a5,13a74 <__floatdidf+0xa8>
   13b7c:	02800793          	li	a5,40
   13b80:	ff8a0713          	addi	a4,s4,-8
   13b84:	414787b3          	sub	a5,a5,s4
   13b88:	00e41433          	sll	s0,s0,a4
   13b8c:	00fad7b3          	srl	a5,s5,a5
   13b90:	00ea9533          	sll	a0,s5,a4
   13b94:	ff800737          	lui	a4,0xff800
   13b98:	0087e7b3          	or	a5,a5,s0
   13b9c:	fff70713          	addi	a4,a4,-1 # ff7fffff <__BSS_END__+0xff7df19f>
   13ba0:	00e7f7b3          	and	a5,a5,a4
   13ba4:	eddff06f          	j	13a80 <__floatdidf+0xb4>
   13ba8:	00000493          	li	s1,0
   13bac:	00000413          	li	s0,0
   13bb0:	00000713          	li	a4,0
   13bb4:	00000993          	li	s3,0
   13bb8:	f55ff06f          	j	13b0c <__floatdidf+0x140>

00013bbc <__addsf3>:
   13bbc:	ff010113          	addi	sp,sp,-16
   13bc0:	00800737          	lui	a4,0x800
   13bc4:	fff70713          	addi	a4,a4,-1 # 7fffff <__BSS_END__+0x7df19f>
   13bc8:	0175d613          	srli	a2,a1,0x17
   13bcc:	00812423          	sw	s0,8(sp)
   13bd0:	01755413          	srli	s0,a0,0x17
   13bd4:	00a777b3          	and	a5,a4,a0
   13bd8:	00912223          	sw	s1,4(sp)
   13bdc:	00b77733          	and	a4,a4,a1
   13be0:	0ff47413          	zext.b	s0,s0
   13be4:	0ff67613          	zext.b	a2,a2
   13be8:	00112623          	sw	ra,12(sp)
   13bec:	01212023          	sw	s2,0(sp)
   13bf0:	01f55493          	srli	s1,a0,0x1f
   13bf4:	01f5d593          	srli	a1,a1,0x1f
   13bf8:	00379793          	slli	a5,a5,0x3
   13bfc:	00371713          	slli	a4,a4,0x3
   13c00:	40c406b3          	sub	a3,s0,a2
   13c04:	1cb49c63          	bne	s1,a1,13ddc <__addsf3+0x220>
   13c08:	08d05e63          	blez	a3,13ca4 <__addsf3+0xe8>
   13c0c:	0ff00593          	li	a1,255
   13c10:	02061663          	bnez	a2,13c3c <__addsf3+0x80>
   13c14:	00070e63          	beqz	a4,13c30 <__addsf3+0x74>
   13c18:	fff68613          	addi	a2,a3,-1
   13c1c:	00061863          	bnez	a2,13c2c <__addsf3+0x70>
   13c20:	00e787b3          	add	a5,a5,a4
   13c24:	00100413          	li	s0,1
   13c28:	04c0006f          	j	13c74 <__addsf3+0xb8>
   13c2c:	02b69063          	bne	a3,a1,13c4c <__addsf3+0x90>
   13c30:	00068413          	mv	s0,a3
   13c34:	00078713          	mv	a4,a5
   13c38:	2c00006f          	j	13ef8 <__addsf3+0x33c>
   13c3c:	feb40ce3          	beq	s0,a1,13c34 <__addsf3+0x78>
   13c40:	04000637          	lui	a2,0x4000
   13c44:	00c76733          	or	a4,a4,a2
   13c48:	00068613          	mv	a2,a3
   13c4c:	01b00593          	li	a1,27
   13c50:	00100693          	li	a3,1
   13c54:	00c5ce63          	blt	a1,a2,13c70 <__addsf3+0xb4>
   13c58:	02000693          	li	a3,32
   13c5c:	40c686b3          	sub	a3,a3,a2
   13c60:	00c755b3          	srl	a1,a4,a2
   13c64:	00d71733          	sll	a4,a4,a3
   13c68:	00e03733          	snez	a4,a4
   13c6c:	00e5e6b3          	or	a3,a1,a4
   13c70:	00d787b3          	add	a5,a5,a3
   13c74:	00579713          	slli	a4,a5,0x5
   13c78:	12075263          	bgez	a4,13d9c <__addsf3+0x1e0>
   13c7c:	00140413          	addi	s0,s0,1
   13c80:	0ff00713          	li	a4,255
   13c84:	34e40e63          	beq	s0,a4,13fe0 <__addsf3+0x424>
   13c88:	7e0006b7          	lui	a3,0x7e000
   13c8c:	0017d713          	srli	a4,a5,0x1
   13c90:	fff68693          	addi	a3,a3,-1 # 7dffffff <__BSS_END__+0x7dfdf19f>
   13c94:	00d77733          	and	a4,a4,a3
   13c98:	0017f793          	andi	a5,a5,1
   13c9c:	00f767b3          	or	a5,a4,a5
   13ca0:	0fc0006f          	j	13d9c <__addsf3+0x1e0>
   13ca4:	06068463          	beqz	a3,13d0c <__addsf3+0x150>
   13ca8:	408606b3          	sub	a3,a2,s0
   13cac:	0ff00513          	li	a0,255
   13cb0:	00041e63          	bnez	s0,13ccc <__addsf3+0x110>
   13cb4:	32078063          	beqz	a5,13fd4 <__addsf3+0x418>
   13cb8:	fff68593          	addi	a1,a3,-1
   13cbc:	f60582e3          	beqz	a1,13c20 <__addsf3+0x64>
   13cc0:	00a69e63          	bne	a3,a0,13cdc <__addsf3+0x120>
   13cc4:	0ff00413          	li	s0,255
   13cc8:	2300006f          	j	13ef8 <__addsf3+0x33c>
   13ccc:	fea60ce3          	beq	a2,a0,13cc4 <__addsf3+0x108>
   13cd0:	040005b7          	lui	a1,0x4000
   13cd4:	00b7e7b3          	or	a5,a5,a1
   13cd8:	00068593          	mv	a1,a3
   13cdc:	01b00513          	li	a0,27
   13ce0:	00100693          	li	a3,1
   13ce4:	00b54e63          	blt	a0,a1,13d00 <__addsf3+0x144>
   13ce8:	02000693          	li	a3,32
   13cec:	40b686b3          	sub	a3,a3,a1
   13cf0:	00b7d533          	srl	a0,a5,a1
   13cf4:	00d797b3          	sll	a5,a5,a3
   13cf8:	00f037b3          	snez	a5,a5
   13cfc:	00f566b3          	or	a3,a0,a5
   13d00:	00e687b3          	add	a5,a3,a4
   13d04:	00060413          	mv	s0,a2
   13d08:	f6dff06f          	j	13c74 <__addsf3+0xb8>
   13d0c:	00140693          	addi	a3,s0,1
   13d10:	0fe6f613          	andi	a2,a3,254
   13d14:	06061a63          	bnez	a2,13d88 <__addsf3+0x1cc>
   13d18:	06041063          	bnez	s0,13d78 <__addsf3+0x1bc>
   13d1c:	2a078663          	beqz	a5,13fc8 <__addsf3+0x40c>
   13d20:	08070a63          	beqz	a4,13db4 <__addsf3+0x1f8>
   13d24:	00f70733          	add	a4,a4,a5
   13d28:	00571793          	slli	a5,a4,0x5
   13d2c:	1c07d663          	bgez	a5,13ef8 <__addsf3+0x33c>
   13d30:	1f8007b7          	lui	a5,0x1f800
   13d34:	00375713          	srli	a4,a4,0x3
   13d38:	fff78793          	addi	a5,a5,-1 # 1f7fffff <__BSS_END__+0x1f7df19f>
   13d3c:	00f777b3          	and	a5,a4,a5
   13d40:	00100413          	li	s0,1
   13d44:	0ff47413          	zext.b	s0,s0
   13d48:	00979793          	slli	a5,a5,0x9
   13d4c:	01741413          	slli	s0,s0,0x17
   13d50:	0097d793          	srli	a5,a5,0x9
   13d54:	00f46433          	or	s0,s0,a5
   13d58:	01f49513          	slli	a0,s1,0x1f
   13d5c:	00c12083          	lw	ra,12(sp)
   13d60:	00a46533          	or	a0,s0,a0
   13d64:	00812403          	lw	s0,8(sp)
   13d68:	00412483          	lw	s1,4(sp)
   13d6c:	00012903          	lw	s2,0(sp)
   13d70:	01010113          	addi	sp,sp,16
   13d74:	00008067          	ret
   13d78:	f40786e3          	beqz	a5,13cc4 <__addsf3+0x108>
   13d7c:	1c071863          	bnez	a4,13f4c <__addsf3+0x390>
   13d80:	00078713          	mv	a4,a5
   13d84:	f41ff06f          	j	13cc4 <__addsf3+0x108>
   13d88:	0ff00613          	li	a2,255
   13d8c:	24c68863          	beq	a3,a2,13fdc <__addsf3+0x420>
   13d90:	00e78733          	add	a4,a5,a4
   13d94:	00175793          	srli	a5,a4,0x1
   13d98:	00068413          	mv	s0,a3
   13d9c:	0077f713          	andi	a4,a5,7
   13da0:	00070a63          	beqz	a4,13db4 <__addsf3+0x1f8>
   13da4:	00f7f713          	andi	a4,a5,15
   13da8:	00400693          	li	a3,4
   13dac:	00d70463          	beq	a4,a3,13db4 <__addsf3+0x1f8>
   13db0:	00d787b3          	add	a5,a5,a3
   13db4:	00579713          	slli	a4,a5,0x5
   13db8:	e6075ee3          	bgez	a4,13c34 <__addsf3+0x78>
   13dbc:	00140413          	addi	s0,s0,1
   13dc0:	0ff00713          	li	a4,255
   13dc4:	20e40e63          	beq	s0,a4,13fe0 <__addsf3+0x424>
   13dc8:	1f800737          	lui	a4,0x1f800
   13dcc:	0037d793          	srli	a5,a5,0x3
   13dd0:	fff70713          	addi	a4,a4,-1 # 1f7fffff <__BSS_END__+0x1f7df19f>
   13dd4:	00e7f7b3          	and	a5,a5,a4
   13dd8:	f6dff06f          	j	13d44 <__addsf3+0x188>
   13ddc:	08d05063          	blez	a3,13e5c <__addsf3+0x2a0>
   13de0:	06061263          	bnez	a2,13e44 <__addsf3+0x288>
   13de4:	e40706e3          	beqz	a4,13c30 <__addsf3+0x74>
   13de8:	fff68613          	addi	a2,a3,-1
   13dec:	00061863          	bnez	a2,13dfc <__addsf3+0x240>
   13df0:	40e787b3          	sub	a5,a5,a4
   13df4:	00100413          	li	s0,1
   13df8:	0340006f          	j	13e2c <__addsf3+0x270>
   13dfc:	0ff00593          	li	a1,255
   13e00:	e2b688e3          	beq	a3,a1,13c30 <__addsf3+0x74>
   13e04:	01b00593          	li	a1,27
   13e08:	00100693          	li	a3,1
   13e0c:	00c5ce63          	blt	a1,a2,13e28 <__addsf3+0x26c>
   13e10:	02000693          	li	a3,32
   13e14:	40c686b3          	sub	a3,a3,a2
   13e18:	00c755b3          	srl	a1,a4,a2
   13e1c:	00d71733          	sll	a4,a4,a3
   13e20:	00e03733          	snez	a4,a4
   13e24:	00e5e6b3          	or	a3,a1,a4
   13e28:	40d787b3          	sub	a5,a5,a3
   13e2c:	00579713          	slli	a4,a5,0x5
   13e30:	f60756e3          	bgez	a4,13d9c <__addsf3+0x1e0>
   13e34:	04000937          	lui	s2,0x4000
   13e38:	fff90913          	addi	s2,s2,-1 # 3ffffff <__BSS_END__+0x3fdf19f>
   13e3c:	0127f933          	and	s2,a5,s2
   13e40:	1300006f          	j	13f70 <__addsf3+0x3b4>
   13e44:	0ff00613          	li	a2,255
   13e48:	dec406e3          	beq	s0,a2,13c34 <__addsf3+0x78>
   13e4c:	04000637          	lui	a2,0x4000
   13e50:	00c76733          	or	a4,a4,a2
   13e54:	00068613          	mv	a2,a3
   13e58:	fadff06f          	j	13e04 <__addsf3+0x248>
   13e5c:	06068e63          	beqz	a3,13ed8 <__addsf3+0x31c>
   13e60:	408606b3          	sub	a3,a2,s0
   13e64:	02041663          	bnez	s0,13e90 <__addsf3+0x2d4>
   13e68:	16078463          	beqz	a5,13fd0 <__addsf3+0x414>
   13e6c:	fff68513          	addi	a0,a3,-1
   13e70:	00051863          	bnez	a0,13e80 <__addsf3+0x2c4>
   13e74:	40f707b3          	sub	a5,a4,a5
   13e78:	00058493          	mv	s1,a1
   13e7c:	f79ff06f          	j	13df4 <__addsf3+0x238>
   13e80:	0ff00813          	li	a6,255
   13e84:	03069063          	bne	a3,a6,13ea4 <__addsf3+0x2e8>
   13e88:	00058493          	mv	s1,a1
   13e8c:	e39ff06f          	j	13cc4 <__addsf3+0x108>
   13e90:	0ff00513          	li	a0,255
   13e94:	fea60ae3          	beq	a2,a0,13e88 <__addsf3+0x2cc>
   13e98:	04000537          	lui	a0,0x4000
   13e9c:	00a7e7b3          	or	a5,a5,a0
   13ea0:	00068513          	mv	a0,a3
   13ea4:	01b00813          	li	a6,27
   13ea8:	00100693          	li	a3,1
   13eac:	00a84e63          	blt	a6,a0,13ec8 <__addsf3+0x30c>
   13eb0:	02000693          	li	a3,32
   13eb4:	40a686b3          	sub	a3,a3,a0
   13eb8:	00a7d833          	srl	a6,a5,a0
   13ebc:	00d797b3          	sll	a5,a5,a3
   13ec0:	00f037b3          	snez	a5,a5
   13ec4:	00f866b3          	or	a3,a6,a5
   13ec8:	40d707b3          	sub	a5,a4,a3
   13ecc:	00060413          	mv	s0,a2
   13ed0:	00058493          	mv	s1,a1
   13ed4:	f59ff06f          	j	13e2c <__addsf3+0x270>
   13ed8:	00140693          	addi	a3,s0,1
   13edc:	0fe6f693          	andi	a3,a3,254
   13ee0:	06069e63          	bnez	a3,13f5c <__addsf3+0x3a0>
   13ee4:	06041263          	bnez	s0,13f48 <__addsf3+0x38c>
   13ee8:	02079463          	bnez	a5,13f10 <__addsf3+0x354>
   13eec:	00000493          	li	s1,0
   13ef0:	e4070ae3          	beqz	a4,13d44 <__addsf3+0x188>
   13ef4:	00058493          	mv	s1,a1
   13ef8:	00375793          	srli	a5,a4,0x3
   13efc:	0ff00713          	li	a4,255
   13f00:	e4e412e3          	bne	s0,a4,13d44 <__addsf3+0x188>
   13f04:	e40780e3          	beqz	a5,13d44 <__addsf3+0x188>
   13f08:	004007b7          	lui	a5,0x400
   13f0c:	0340006f          	j	13f40 <__addsf3+0x384>
   13f10:	ea0702e3          	beqz	a4,13db4 <__addsf3+0x1f8>
   13f14:	40e786b3          	sub	a3,a5,a4
   13f18:	00569613          	slli	a2,a3,0x5
   13f1c:	00065c63          	bgez	a2,13f34 <__addsf3+0x378>
   13f20:	40f707b3          	sub	a5,a4,a5
   13f24:	00058493          	mv	s1,a1
   13f28:	00000413          	li	s0,0
   13f2c:	e0078ce3          	beqz	a5,13d44 <__addsf3+0x188>
   13f30:	e6dff06f          	j	13d9c <__addsf3+0x1e0>
   13f34:	00068713          	mv	a4,a3
   13f38:	fc0690e3          	bnez	a3,13ef8 <__addsf3+0x33c>
   13f3c:	00000793          	li	a5,0
   13f40:	00000493          	li	s1,0
   13f44:	e01ff06f          	j	13d44 <__addsf3+0x188>
   13f48:	e2079ae3          	bnez	a5,13d7c <__addsf3+0x1c0>
   13f4c:	00000493          	li	s1,0
   13f50:	0ff00413          	li	s0,255
   13f54:	004007b7          	lui	a5,0x400
   13f58:	dedff06f          	j	13d44 <__addsf3+0x188>
   13f5c:	40e78933          	sub	s2,a5,a4
   13f60:	00591693          	slli	a3,s2,0x5
   13f64:	0406d263          	bgez	a3,13fa8 <__addsf3+0x3ec>
   13f68:	40f70933          	sub	s2,a4,a5
   13f6c:	00058493          	mv	s1,a1
   13f70:	00090513          	mv	a0,s2
   13f74:	114010ef          	jal	15088 <__clzsi2>
   13f78:	ffb50513          	addi	a0,a0,-5 # 3fffffb <__BSS_END__+0x3fdf19b>
   13f7c:	00a91933          	sll	s2,s2,a0
   13f80:	02854a63          	blt	a0,s0,13fb4 <__addsf3+0x3f8>
   13f84:	40850533          	sub	a0,a0,s0
   13f88:	00150513          	addi	a0,a0,1
   13f8c:	02000713          	li	a4,32
   13f90:	40a70733          	sub	a4,a4,a0
   13f94:	00a957b3          	srl	a5,s2,a0
   13f98:	00e91933          	sll	s2,s2,a4
   13f9c:	01203933          	snez	s2,s2
   13fa0:	0127e7b3          	or	a5,a5,s2
   13fa4:	f85ff06f          	j	13f28 <__addsf3+0x36c>
   13fa8:	fc0914e3          	bnez	s2,13f70 <__addsf3+0x3b4>
   13fac:	00000413          	li	s0,0
   13fb0:	f8dff06f          	j	13f3c <__addsf3+0x380>
   13fb4:	fc0007b7          	lui	a5,0xfc000
   13fb8:	fff78793          	addi	a5,a5,-1 # fbffffff <__BSS_END__+0xfbfdf19f>
   13fbc:	40a40433          	sub	s0,s0,a0
   13fc0:	00f977b3          	and	a5,s2,a5
   13fc4:	dd9ff06f          	j	13d9c <__addsf3+0x1e0>
   13fc8:	00070793          	mv	a5,a4
   13fcc:	f5dff06f          	j	13f28 <__addsf3+0x36c>
   13fd0:	00058493          	mv	s1,a1
   13fd4:	00068413          	mv	s0,a3
   13fd8:	f21ff06f          	j	13ef8 <__addsf3+0x33c>
   13fdc:	00068413          	mv	s0,a3
   13fe0:	00000793          	li	a5,0
   13fe4:	d61ff06f          	j	13d44 <__addsf3+0x188>

00013fe8 <__divsf3>:
   13fe8:	fd010113          	addi	sp,sp,-48
   13fec:	02912223          	sw	s1,36(sp)
   13ff0:	01755493          	srli	s1,a0,0x17
   13ff4:	01412c23          	sw	s4,24(sp)
   13ff8:	01512a23          	sw	s5,20(sp)
   13ffc:	01712623          	sw	s7,12(sp)
   14000:	00951a13          	slli	s4,a0,0x9
   14004:	02112623          	sw	ra,44(sp)
   14008:	02812423          	sw	s0,40(sp)
   1400c:	03212023          	sw	s2,32(sp)
   14010:	01312e23          	sw	s3,28(sp)
   14014:	01612823          	sw	s6,16(sp)
   14018:	01812423          	sw	s8,8(sp)
   1401c:	0ff4f493          	zext.b	s1,s1
   14020:	00058b93          	mv	s7,a1
   14024:	009a5a13          	srli	s4,s4,0x9
   14028:	01f55a93          	srli	s5,a0,0x1f
   1402c:	08048463          	beqz	s1,140b4 <__divsf3+0xcc>
   14030:	0ff00793          	li	a5,255
   14034:	0af48063          	beq	s1,a5,140d4 <__divsf3+0xec>
   14038:	003a1a13          	slli	s4,s4,0x3
   1403c:	040007b7          	lui	a5,0x4000
   14040:	00fa6a33          	or	s4,s4,a5
   14044:	f8148493          	addi	s1,s1,-127 # 7fff81 <__BSS_END__+0x7df121>
   14048:	00000b13          	li	s6,0
   1404c:	017bd793          	srli	a5,s7,0x17
   14050:	009b9413          	slli	s0,s7,0x9
   14054:	0ff7f793          	zext.b	a5,a5
   14058:	00945413          	srli	s0,s0,0x9
   1405c:	01fbdb93          	srli	s7,s7,0x1f
   14060:	08078863          	beqz	a5,140f0 <__divsf3+0x108>
   14064:	0ff00713          	li	a4,255
   14068:	0ae78463          	beq	a5,a4,14110 <__divsf3+0x128>
   1406c:	00341413          	slli	s0,s0,0x3
   14070:	04000737          	lui	a4,0x4000
   14074:	00e46433          	or	s0,s0,a4
   14078:	f8178793          	addi	a5,a5,-127 # 3ffff81 <__BSS_END__+0x3fdf121>
   1407c:	00000713          	li	a4,0
   14080:	40f489b3          	sub	s3,s1,a5
   14084:	002b1793          	slli	a5,s6,0x2
   14088:	00e7e7b3          	or	a5,a5,a4
   1408c:	fff78793          	addi	a5,a5,-1
   14090:	00e00693          	li	a3,14
   14094:	017ac933          	xor	s2,s5,s7
   14098:	08f6ea63          	bltu	a3,a5,1412c <__divsf3+0x144>
   1409c:	0001b6b7          	lui	a3,0x1b
   140a0:	00279793          	slli	a5,a5,0x2
   140a4:	d6068693          	addi	a3,a3,-672 # 1ad60 <_exit+0x27c>
   140a8:	00d787b3          	add	a5,a5,a3
   140ac:	0007a783          	lw	a5,0(a5)
   140b0:	00078067          	jr	a5
   140b4:	020a0863          	beqz	s4,140e4 <__divsf3+0xfc>
   140b8:	000a0513          	mv	a0,s4
   140bc:	7cd000ef          	jal	15088 <__clzsi2>
   140c0:	ffb50793          	addi	a5,a0,-5
   140c4:	f8a00493          	li	s1,-118
   140c8:	00fa1a33          	sll	s4,s4,a5
   140cc:	40a484b3          	sub	s1,s1,a0
   140d0:	f79ff06f          	j	14048 <__divsf3+0x60>
   140d4:	00200b13          	li	s6,2
   140d8:	f60a0ae3          	beqz	s4,1404c <__divsf3+0x64>
   140dc:	00300b13          	li	s6,3
   140e0:	f6dff06f          	j	1404c <__divsf3+0x64>
   140e4:	00000493          	li	s1,0
   140e8:	00100b13          	li	s6,1
   140ec:	f61ff06f          	j	1404c <__divsf3+0x64>
   140f0:	02040863          	beqz	s0,14120 <__divsf3+0x138>
   140f4:	00040513          	mv	a0,s0
   140f8:	791000ef          	jal	15088 <__clzsi2>
   140fc:	ffb50793          	addi	a5,a0,-5
   14100:	00f41433          	sll	s0,s0,a5
   14104:	f8a00793          	li	a5,-118
   14108:	40a787b3          	sub	a5,a5,a0
   1410c:	f71ff06f          	j	1407c <__divsf3+0x94>
   14110:	00200713          	li	a4,2
   14114:	f60406e3          	beqz	s0,14080 <__divsf3+0x98>
   14118:	00300713          	li	a4,3
   1411c:	f65ff06f          	j	14080 <__divsf3+0x98>
   14120:	00000793          	li	a5,0
   14124:	00100713          	li	a4,1
   14128:	f59ff06f          	j	14080 <__divsf3+0x98>
   1412c:	00541b13          	slli	s6,s0,0x5
   14130:	148a7a63          	bgeu	s4,s0,14284 <__divsf3+0x29c>
   14134:	fff98993          	addi	s3,s3,-1
   14138:	00000413          	li	s0,0
   1413c:	010b5a93          	srli	s5,s6,0x10
   14140:	000a8593          	mv	a1,s5
   14144:	010b1c13          	slli	s8,s6,0x10
   14148:	000a0513          	mv	a0,s4
   1414c:	619000ef          	jal	14f64 <__hidden___udivsi3>
   14150:	010c5c13          	srli	s8,s8,0x10
   14154:	00050593          	mv	a1,a0
   14158:	00050493          	mv	s1,a0
   1415c:	000c0513          	mv	a0,s8
   14160:	54d000ef          	jal	14eac <__mulsi3>
   14164:	00050b93          	mv	s7,a0
   14168:	000a8593          	mv	a1,s5
   1416c:	000a0513          	mv	a0,s4
   14170:	63d000ef          	jal	14fac <__umodsi3>
   14174:	01051513          	slli	a0,a0,0x10
   14178:	01045793          	srli	a5,s0,0x10
   1417c:	00a7e7b3          	or	a5,a5,a0
   14180:	0177fa63          	bgeu	a5,s7,14194 <__divsf3+0x1ac>
   14184:	00fb07b3          	add	a5,s6,a5
   14188:	0177f463          	bgeu	a5,s7,14190 <__divsf3+0x1a8>
   1418c:	1167f263          	bgeu	a5,s6,14290 <__divsf3+0x2a8>
   14190:	fff48493          	addi	s1,s1,-1
   14194:	41778433          	sub	s0,a5,s7
   14198:	000a8593          	mv	a1,s5
   1419c:	00040513          	mv	a0,s0
   141a0:	5c5000ef          	jal	14f64 <__hidden___udivsi3>
   141a4:	00050593          	mv	a1,a0
   141a8:	00050a13          	mv	s4,a0
   141ac:	000c0513          	mv	a0,s8
   141b0:	4fd000ef          	jal	14eac <__mulsi3>
   141b4:	00050b93          	mv	s7,a0
   141b8:	000a8593          	mv	a1,s5
   141bc:	00040513          	mv	a0,s0
   141c0:	5ed000ef          	jal	14fac <__umodsi3>
   141c4:	01051793          	slli	a5,a0,0x10
   141c8:	0177fe63          	bgeu	a5,s7,141e4 <__divsf3+0x1fc>
   141cc:	01678733          	add	a4,a5,s6
   141d0:	00f736b3          	sltu	a3,a4,a5
   141d4:	00070793          	mv	a5,a4
   141d8:	01777463          	bgeu	a4,s7,141e0 <__divsf3+0x1f8>
   141dc:	0c068063          	beqz	a3,1429c <__divsf3+0x2b4>
   141e0:	fffa0a13          	addi	s4,s4,-1
   141e4:	01049413          	slli	s0,s1,0x10
   141e8:	417787b3          	sub	a5,a5,s7
   141ec:	01446433          	or	s0,s0,s4
   141f0:	00f037b3          	snez	a5,a5
   141f4:	00f46433          	or	s0,s0,a5
   141f8:	07f98713          	addi	a4,s3,127
   141fc:	0ee05263          	blez	a4,142e0 <__divsf3+0x2f8>
   14200:	00747793          	andi	a5,s0,7
   14204:	00078a63          	beqz	a5,14218 <__divsf3+0x230>
   14208:	00f47793          	andi	a5,s0,15
   1420c:	00400693          	li	a3,4
   14210:	00d78463          	beq	a5,a3,14218 <__divsf3+0x230>
   14214:	00d40433          	add	s0,s0,a3
   14218:	00441793          	slli	a5,s0,0x4
   1421c:	0007da63          	bgez	a5,14230 <__divsf3+0x248>
   14220:	f80007b7          	lui	a5,0xf8000
   14224:	fff78793          	addi	a5,a5,-1 # f7ffffff <__BSS_END__+0xf7fdf19f>
   14228:	00f47433          	and	s0,s0,a5
   1422c:	08098713          	addi	a4,s3,128
   14230:	0fe00793          	li	a5,254
   14234:	10e7ce63          	blt	a5,a4,14350 <__divsf3+0x368>
   14238:	00345793          	srli	a5,s0,0x3
   1423c:	02c12083          	lw	ra,44(sp)
   14240:	02812403          	lw	s0,40(sp)
   14244:	00979793          	slli	a5,a5,0x9
   14248:	01771713          	slli	a4,a4,0x17
   1424c:	0097d793          	srli	a5,a5,0x9
   14250:	01f91513          	slli	a0,s2,0x1f
   14254:	00f76733          	or	a4,a4,a5
   14258:	02412483          	lw	s1,36(sp)
   1425c:	02012903          	lw	s2,32(sp)
   14260:	01c12983          	lw	s3,28(sp)
   14264:	01812a03          	lw	s4,24(sp)
   14268:	01412a83          	lw	s5,20(sp)
   1426c:	01012b03          	lw	s6,16(sp)
   14270:	00c12b83          	lw	s7,12(sp)
   14274:	00812c03          	lw	s8,8(sp)
   14278:	00a76533          	or	a0,a4,a0
   1427c:	03010113          	addi	sp,sp,48
   14280:	00008067          	ret
   14284:	01fa1413          	slli	s0,s4,0x1f
   14288:	001a5a13          	srli	s4,s4,0x1
   1428c:	eb1ff06f          	j	1413c <__divsf3+0x154>
   14290:	ffe48493          	addi	s1,s1,-2
   14294:	016787b3          	add	a5,a5,s6
   14298:	efdff06f          	j	14194 <__divsf3+0x1ac>
   1429c:	ffea0a13          	addi	s4,s4,-2
   142a0:	016707b3          	add	a5,a4,s6
   142a4:	f41ff06f          	j	141e4 <__divsf3+0x1fc>
   142a8:	000b8913          	mv	s2,s7
   142ac:	00200793          	li	a5,2
   142b0:	0af70063          	beq	a4,a5,14350 <__divsf3+0x368>
   142b4:	00300793          	li	a5,3
   142b8:	08f70463          	beq	a4,a5,14340 <__divsf3+0x358>
   142bc:	00100793          	li	a5,1
   142c0:	f2f71ce3          	bne	a4,a5,141f8 <__divsf3+0x210>
   142c4:	00000793          	li	a5,0
   142c8:	00000713          	li	a4,0
   142cc:	f71ff06f          	j	1423c <__divsf3+0x254>
   142d0:	000a8913          	mv	s2,s5
   142d4:	000a0413          	mv	s0,s4
   142d8:	000b0713          	mv	a4,s6
   142dc:	fd1ff06f          	j	142ac <__divsf3+0x2c4>
   142e0:	04070c63          	beqz	a4,14338 <__divsf3+0x350>
   142e4:	fe600793          	li	a5,-26
   142e8:	fcf74ee3          	blt	a4,a5,142c4 <__divsf3+0x2dc>
   142ec:	00100793          	li	a5,1
   142f0:	40e787b3          	sub	a5,a5,a4
   142f4:	09e98493          	addi	s1,s3,158
   142f8:	00f457b3          	srl	a5,s0,a5
   142fc:	00941433          	sll	s0,s0,s1
   14300:	00803433          	snez	s0,s0
   14304:	0087e7b3          	or	a5,a5,s0
   14308:	0077f713          	andi	a4,a5,7
   1430c:	00070a63          	beqz	a4,14320 <__divsf3+0x338>
   14310:	00f7f713          	andi	a4,a5,15
   14314:	00400693          	li	a3,4
   14318:	00d70463          	beq	a4,a3,14320 <__divsf3+0x338>
   1431c:	00d787b3          	add	a5,a5,a3
   14320:	00579713          	slli	a4,a5,0x5
   14324:	0037d793          	srli	a5,a5,0x3
   14328:	fa0750e3          	bgez	a4,142c8 <__divsf3+0x2e0>
   1432c:	00000793          	li	a5,0
   14330:	00100713          	li	a4,1
   14334:	f09ff06f          	j	1423c <__divsf3+0x254>
   14338:	00100793          	li	a5,1
   1433c:	fb9ff06f          	j	142f4 <__divsf3+0x30c>
   14340:	004007b7          	lui	a5,0x400
   14344:	0ff00713          	li	a4,255
   14348:	00000913          	li	s2,0
   1434c:	ef1ff06f          	j	1423c <__divsf3+0x254>
   14350:	00000793          	li	a5,0
   14354:	0ff00713          	li	a4,255
   14358:	ee5ff06f          	j	1423c <__divsf3+0x254>

0001435c <__eqsf2>:
   1435c:	00800737          	lui	a4,0x800
   14360:	fff70713          	addi	a4,a4,-1 # 7fffff <__BSS_END__+0x7df19f>
   14364:	00a77633          	and	a2,a4,a0
   14368:	01755793          	srli	a5,a0,0x17
   1436c:	0ff7f793          	zext.b	a5,a5
   14370:	01f55693          	srli	a3,a0,0x1f
   14374:	00b77733          	and	a4,a4,a1
   14378:	01f5d893          	srli	a7,a1,0x1f
   1437c:	00060863          	beqz	a2,1438c <__eqsf2+0x30>
   14380:	f0178813          	addi	a6,a5,-255 # 3fff01 <__BSS_END__+0x3df0a1>
   14384:	00100513          	li	a0,1
   14388:	02080e63          	beqz	a6,143c4 <__eqsf2+0x68>
   1438c:	0175d593          	srli	a1,a1,0x17
   14390:	0ff5f593          	zext.b	a1,a1
   14394:	00070863          	beqz	a4,143a4 <__eqsf2+0x48>
   14398:	f0158813          	addi	a6,a1,-255 # 3ffff01 <__BSS_END__+0x3fdf0a1>
   1439c:	00100513          	li	a0,1
   143a0:	02080263          	beqz	a6,143c4 <__eqsf2+0x68>
   143a4:	00e61e63          	bne	a2,a4,143c0 <__eqsf2+0x64>
   143a8:	00b79c63          	bne	a5,a1,143c0 <__eqsf2+0x64>
   143ac:	00000513          	li	a0,0
   143b0:	01168a63          	beq	a3,a7,143c4 <__eqsf2+0x68>
   143b4:	00c7e7b3          	or	a5,a5,a2
   143b8:	00f03533          	snez	a0,a5
   143bc:	00008067          	ret
   143c0:	00100513          	li	a0,1
   143c4:	00008067          	ret

000143c8 <__gesf2>:
   143c8:	00800737          	lui	a4,0x800
   143cc:	fff70713          	addi	a4,a4,-1 # 7fffff <__BSS_END__+0x7df19f>
   143d0:	00a77633          	and	a2,a4,a0
   143d4:	01755693          	srli	a3,a0,0x17
   143d8:	0ff6f693          	zext.b	a3,a3
   143dc:	01f55793          	srli	a5,a0,0x1f
   143e0:	00b77733          	and	a4,a4,a1
   143e4:	01f5d893          	srli	a7,a1,0x1f
   143e8:	00060863          	beqz	a2,143f8 <__gesf2+0x30>
   143ec:	f0168813          	addi	a6,a3,-255
   143f0:	ffe00513          	li	a0,-2
   143f4:	06080463          	beqz	a6,1445c <__gesf2+0x94>
   143f8:	0175d593          	srli	a1,a1,0x17
   143fc:	0ff5f593          	zext.b	a1,a1
   14400:	00070863          	beqz	a4,14410 <__gesf2+0x48>
   14404:	f0158813          	addi	a6,a1,-255
   14408:	ffe00513          	li	a0,-2
   1440c:	04080863          	beqz	a6,1445c <__gesf2+0x94>
   14410:	00c6e533          	or	a0,a3,a2
   14414:	00e5e833          	or	a6,a1,a4
   14418:	00051a63          	bnez	a0,1442c <__gesf2+0x64>
   1441c:	04080063          	beqz	a6,1445c <__gesf2+0x94>
   14420:	00189513          	slli	a0,a7,0x1
   14424:	fff50513          	addi	a0,a0,-1
   14428:	00008067          	ret
   1442c:	00081863          	bnez	a6,1443c <__gesf2+0x74>
   14430:	40f007b3          	neg	a5,a5
   14434:	0017e513          	ori	a0,a5,1
   14438:	00008067          	ret
   1443c:	ff179ae3          	bne	a5,a7,14430 <__gesf2+0x68>
   14440:	fed5c8e3          	blt	a1,a3,14430 <__gesf2+0x68>
   14444:	00b6d663          	bge	a3,a1,14450 <__gesf2+0x88>
   14448:	00179513          	slli	a0,a5,0x1
   1444c:	fd9ff06f          	j	14424 <__gesf2+0x5c>
   14450:	fec760e3          	bltu	a4,a2,14430 <__gesf2+0x68>
   14454:	00000513          	li	a0,0
   14458:	fee668e3          	bltu	a2,a4,14448 <__gesf2+0x80>
   1445c:	00008067          	ret

00014460 <__lesf2>:
   14460:	00800737          	lui	a4,0x800
   14464:	fff70713          	addi	a4,a4,-1 # 7fffff <__BSS_END__+0x7df19f>
   14468:	00a77633          	and	a2,a4,a0
   1446c:	01755693          	srli	a3,a0,0x17
   14470:	0ff6f693          	zext.b	a3,a3
   14474:	01f55793          	srli	a5,a0,0x1f
   14478:	00b77733          	and	a4,a4,a1
   1447c:	01f5d893          	srli	a7,a1,0x1f
   14480:	00060863          	beqz	a2,14490 <__lesf2+0x30>
   14484:	f0168813          	addi	a6,a3,-255
   14488:	00200513          	li	a0,2
   1448c:	06080463          	beqz	a6,144f4 <__lesf2+0x94>
   14490:	0175d593          	srli	a1,a1,0x17
   14494:	0ff5f593          	zext.b	a1,a1
   14498:	00070863          	beqz	a4,144a8 <__lesf2+0x48>
   1449c:	f0158813          	addi	a6,a1,-255
   144a0:	00200513          	li	a0,2
   144a4:	04080863          	beqz	a6,144f4 <__lesf2+0x94>
   144a8:	00c6e533          	or	a0,a3,a2
   144ac:	00e5e833          	or	a6,a1,a4
   144b0:	00051a63          	bnez	a0,144c4 <__lesf2+0x64>
   144b4:	04080063          	beqz	a6,144f4 <__lesf2+0x94>
   144b8:	00189513          	slli	a0,a7,0x1
   144bc:	fff50513          	addi	a0,a0,-1
   144c0:	00008067          	ret
   144c4:	00081863          	bnez	a6,144d4 <__lesf2+0x74>
   144c8:	40f007b3          	neg	a5,a5
   144cc:	0017e513          	ori	a0,a5,1
   144d0:	00008067          	ret
   144d4:	ff179ae3          	bne	a5,a7,144c8 <__lesf2+0x68>
   144d8:	fed5c8e3          	blt	a1,a3,144c8 <__lesf2+0x68>
   144dc:	00b6d663          	bge	a3,a1,144e8 <__lesf2+0x88>
   144e0:	00179513          	slli	a0,a5,0x1
   144e4:	fd9ff06f          	j	144bc <__lesf2+0x5c>
   144e8:	fec760e3          	bltu	a4,a2,144c8 <__lesf2+0x68>
   144ec:	00000513          	li	a0,0
   144f0:	fee668e3          	bltu	a2,a4,144e0 <__lesf2+0x80>
   144f4:	00008067          	ret

000144f8 <__mulsf3>:
   144f8:	fe010113          	addi	sp,sp,-32
   144fc:	01212823          	sw	s2,16(sp)
   14500:	01755913          	srli	s2,a0,0x17
   14504:	00912a23          	sw	s1,20(sp)
   14508:	01312623          	sw	s3,12(sp)
   1450c:	01512223          	sw	s5,4(sp)
   14510:	00951493          	slli	s1,a0,0x9
   14514:	00112e23          	sw	ra,28(sp)
   14518:	00812c23          	sw	s0,24(sp)
   1451c:	01412423          	sw	s4,8(sp)
   14520:	0ff97913          	zext.b	s2,s2
   14524:	00058a93          	mv	s5,a1
   14528:	0094d493          	srli	s1,s1,0x9
   1452c:	01f55993          	srli	s3,a0,0x1f
   14530:	1a090a63          	beqz	s2,146e4 <__mulsf3+0x1ec>
   14534:	0ff00793          	li	a5,255
   14538:	1cf90663          	beq	s2,a5,14704 <__mulsf3+0x20c>
   1453c:	00349493          	slli	s1,s1,0x3
   14540:	040007b7          	lui	a5,0x4000
   14544:	00f4e4b3          	or	s1,s1,a5
   14548:	f8190913          	addi	s2,s2,-127
   1454c:	00000a13          	li	s4,0
   14550:	017ad793          	srli	a5,s5,0x17
   14554:	009a9413          	slli	s0,s5,0x9
   14558:	0ff7f793          	zext.b	a5,a5
   1455c:	00945413          	srli	s0,s0,0x9
   14560:	01fada93          	srli	s5,s5,0x1f
   14564:	1a078e63          	beqz	a5,14720 <__mulsf3+0x228>
   14568:	0ff00713          	li	a4,255
   1456c:	1ce78a63          	beq	a5,a4,14740 <__mulsf3+0x248>
   14570:	00341413          	slli	s0,s0,0x3
   14574:	04000737          	lui	a4,0x4000
   14578:	00e46433          	or	s0,s0,a4
   1457c:	f8178793          	addi	a5,a5,-127 # 3ffff81 <__BSS_END__+0x3fdf121>
   14580:	00000713          	li	a4,0
   14584:	00f90933          	add	s2,s2,a5
   14588:	002a1793          	slli	a5,s4,0x2
   1458c:	00e7e7b3          	or	a5,a5,a4
   14590:	00a00693          	li	a3,10
   14594:	00190813          	addi	a6,s2,1
   14598:	20f6c463          	blt	a3,a5,147a0 <__mulsf3+0x2a8>
   1459c:	00200613          	li	a2,2
   145a0:	0159c9b3          	xor	s3,s3,s5
   145a4:	00100693          	li	a3,1
   145a8:	1af64a63          	blt	a2,a5,1475c <__mulsf3+0x264>
   145ac:	fff78793          	addi	a5,a5,-1
   145b0:	1cf6f663          	bgeu	a3,a5,1477c <__mulsf3+0x284>
   145b4:	01045793          	srli	a5,s0,0x10
   145b8:	01041413          	slli	s0,s0,0x10
   145bc:	01049513          	slli	a0,s1,0x10
   145c0:	01045413          	srli	s0,s0,0x10
   145c4:	0104de13          	srli	t3,s1,0x10
   145c8:	01055513          	srli	a0,a0,0x10
   145cc:	00040593          	mv	a1,s0
   145d0:	0dd000ef          	jal	14eac <__mulsi3>
   145d4:	00050893          	mv	a7,a0
   145d8:	01049513          	slli	a0,s1,0x10
   145dc:	01055513          	srli	a0,a0,0x10
   145e0:	00078593          	mv	a1,a5
   145e4:	0c9000ef          	jal	14eac <__mulsi3>
   145e8:	00050713          	mv	a4,a0
   145ec:	00040593          	mv	a1,s0
   145f0:	000e0513          	mv	a0,t3
   145f4:	0b9000ef          	jal	14eac <__mulsi3>
   145f8:	00050313          	mv	t1,a0
   145fc:	00078593          	mv	a1,a5
   14600:	000e0513          	mv	a0,t3
   14604:	0a9000ef          	jal	14eac <__mulsi3>
   14608:	0108d793          	srli	a5,a7,0x10
   1460c:	00670733          	add	a4,a4,t1
   14610:	00e787b3          	add	a5,a5,a4
   14614:	0067f663          	bgeu	a5,t1,14620 <__mulsf3+0x128>
   14618:	00010737          	lui	a4,0x10
   1461c:	00e50533          	add	a0,a0,a4
   14620:	01089893          	slli	a7,a7,0x10
   14624:	01079713          	slli	a4,a5,0x10
   14628:	0108d893          	srli	a7,a7,0x10
   1462c:	01170733          	add	a4,a4,a7
   14630:	0107d793          	srli	a5,a5,0x10
   14634:	00671413          	slli	s0,a4,0x6
   14638:	00a787b3          	add	a5,a5,a0
   1463c:	01a75713          	srli	a4,a4,0x1a
   14640:	00679793          	slli	a5,a5,0x6
   14644:	00803433          	snez	s0,s0
   14648:	00e46433          	or	s0,s0,a4
   1464c:	00479713          	slli	a4,a5,0x4
   14650:	0087e433          	or	s0,a5,s0
   14654:	16075463          	bgez	a4,147bc <__mulsf3+0x2c4>
   14658:	00145793          	srli	a5,s0,0x1
   1465c:	00147413          	andi	s0,s0,1
   14660:	0087e433          	or	s0,a5,s0
   14664:	07f80513          	addi	a0,a6,127
   14668:	14a05e63          	blez	a0,147c4 <__mulsf3+0x2cc>
   1466c:	00747793          	andi	a5,s0,7
   14670:	00078a63          	beqz	a5,14684 <__mulsf3+0x18c>
   14674:	00f47793          	andi	a5,s0,15
   14678:	00400713          	li	a4,4
   1467c:	00e78463          	beq	a5,a4,14684 <__mulsf3+0x18c>
   14680:	00e40433          	add	s0,s0,a4
   14684:	00441793          	slli	a5,s0,0x4
   14688:	0007da63          	bgez	a5,1469c <__mulsf3+0x1a4>
   1468c:	f80007b7          	lui	a5,0xf8000
   14690:	fff78793          	addi	a5,a5,-1 # f7ffffff <__BSS_END__+0xf7fdf19f>
   14694:	00f47433          	and	s0,s0,a5
   14698:	08080513          	addi	a0,a6,128
   1469c:	0fe00793          	li	a5,254
   146a0:	18a7ca63          	blt	a5,a0,14834 <__mulsf3+0x33c>
   146a4:	00345793          	srli	a5,s0,0x3
   146a8:	01c12083          	lw	ra,28(sp)
   146ac:	01812403          	lw	s0,24(sp)
   146b0:	00979793          	slli	a5,a5,0x9
   146b4:	01751513          	slli	a0,a0,0x17
   146b8:	0097d793          	srli	a5,a5,0x9
   146bc:	01f99993          	slli	s3,s3,0x1f
   146c0:	00f56533          	or	a0,a0,a5
   146c4:	01412483          	lw	s1,20(sp)
   146c8:	01012903          	lw	s2,16(sp)
   146cc:	00812a03          	lw	s4,8(sp)
   146d0:	00412a83          	lw	s5,4(sp)
   146d4:	01356533          	or	a0,a0,s3
   146d8:	00c12983          	lw	s3,12(sp)
   146dc:	02010113          	addi	sp,sp,32
   146e0:	00008067          	ret
   146e4:	02048863          	beqz	s1,14714 <__mulsf3+0x21c>
   146e8:	00048513          	mv	a0,s1
   146ec:	19d000ef          	jal	15088 <__clzsi2>
   146f0:	ffb50793          	addi	a5,a0,-5
   146f4:	f8a00913          	li	s2,-118
   146f8:	00f494b3          	sll	s1,s1,a5
   146fc:	40a90933          	sub	s2,s2,a0
   14700:	e4dff06f          	j	1454c <__mulsf3+0x54>
   14704:	00200a13          	li	s4,2
   14708:	e40484e3          	beqz	s1,14550 <__mulsf3+0x58>
   1470c:	00300a13          	li	s4,3
   14710:	e41ff06f          	j	14550 <__mulsf3+0x58>
   14714:	00000913          	li	s2,0
   14718:	00100a13          	li	s4,1
   1471c:	e35ff06f          	j	14550 <__mulsf3+0x58>
   14720:	02040863          	beqz	s0,14750 <__mulsf3+0x258>
   14724:	00040513          	mv	a0,s0
   14728:	161000ef          	jal	15088 <__clzsi2>
   1472c:	ffb50793          	addi	a5,a0,-5
   14730:	00f41433          	sll	s0,s0,a5
   14734:	f8a00793          	li	a5,-118
   14738:	40a787b3          	sub	a5,a5,a0
   1473c:	e45ff06f          	j	14580 <__mulsf3+0x88>
   14740:	00200713          	li	a4,2
   14744:	e40400e3          	beqz	s0,14584 <__mulsf3+0x8c>
   14748:	00300713          	li	a4,3
   1474c:	e39ff06f          	j	14584 <__mulsf3+0x8c>
   14750:	00000793          	li	a5,0
   14754:	00100713          	li	a4,1
   14758:	e2dff06f          	j	14584 <__mulsf3+0x8c>
   1475c:	00f697b3          	sll	a5,a3,a5
   14760:	5307f693          	andi	a3,a5,1328
   14764:	04069663          	bnez	a3,147b0 <__mulsf3+0x2b8>
   14768:	2407f693          	andi	a3,a5,576
   1476c:	0a069c63          	bnez	a3,14824 <__mulsf3+0x32c>
   14770:	0887f793          	andi	a5,a5,136
   14774:	e40780e3          	beqz	a5,145b4 <__mulsf3+0xbc>
   14778:	000a8993          	mv	s3,s5
   1477c:	00200793          	li	a5,2
   14780:	0af70a63          	beq	a4,a5,14834 <__mulsf3+0x33c>
   14784:	00300793          	li	a5,3
   14788:	08f70e63          	beq	a4,a5,14824 <__mulsf3+0x32c>
   1478c:	00100793          	li	a5,1
   14790:	ecf71ae3          	bne	a4,a5,14664 <__mulsf3+0x16c>
   14794:	00000793          	li	a5,0
   14798:	00000513          	li	a0,0
   1479c:	f0dff06f          	j	146a8 <__mulsf3+0x1b0>
   147a0:	00f00693          	li	a3,15
   147a4:	08d78063          	beq	a5,a3,14824 <__mulsf3+0x32c>
   147a8:	00b00693          	li	a3,11
   147ac:	fcd786e3          	beq	a5,a3,14778 <__mulsf3+0x280>
   147b0:	00048413          	mv	s0,s1
   147b4:	000a0713          	mv	a4,s4
   147b8:	fc5ff06f          	j	1477c <__mulsf3+0x284>
   147bc:	00090813          	mv	a6,s2
   147c0:	ea5ff06f          	j	14664 <__mulsf3+0x16c>
   147c4:	04050c63          	beqz	a0,1481c <__mulsf3+0x324>
   147c8:	fe600793          	li	a5,-26
   147cc:	fcf544e3          	blt	a0,a5,14794 <__mulsf3+0x29c>
   147d0:	00100793          	li	a5,1
   147d4:	40a787b3          	sub	a5,a5,a0
   147d8:	09e80813          	addi	a6,a6,158
   147dc:	00f457b3          	srl	a5,s0,a5
   147e0:	01041433          	sll	s0,s0,a6
   147e4:	00803433          	snez	s0,s0
   147e8:	0087e7b3          	or	a5,a5,s0
   147ec:	0077f713          	andi	a4,a5,7
   147f0:	00070a63          	beqz	a4,14804 <__mulsf3+0x30c>
   147f4:	00f7f713          	andi	a4,a5,15
   147f8:	00400693          	li	a3,4
   147fc:	00d70463          	beq	a4,a3,14804 <__mulsf3+0x30c>
   14800:	00d787b3          	add	a5,a5,a3
   14804:	00579713          	slli	a4,a5,0x5
   14808:	0037d793          	srli	a5,a5,0x3
   1480c:	f80756e3          	bgez	a4,14798 <__mulsf3+0x2a0>
   14810:	00000793          	li	a5,0
   14814:	00100513          	li	a0,1
   14818:	e91ff06f          	j	146a8 <__mulsf3+0x1b0>
   1481c:	00100793          	li	a5,1
   14820:	fb9ff06f          	j	147d8 <__mulsf3+0x2e0>
   14824:	004007b7          	lui	a5,0x400
   14828:	0ff00513          	li	a0,255
   1482c:	00000993          	li	s3,0
   14830:	e79ff06f          	j	146a8 <__mulsf3+0x1b0>
   14834:	00000793          	li	a5,0
   14838:	0ff00513          	li	a0,255
   1483c:	e6dff06f          	j	146a8 <__mulsf3+0x1b0>

00014840 <__subsf3>:
   14840:	00800737          	lui	a4,0x800
   14844:	fff70713          	addi	a4,a4,-1 # 7fffff <__BSS_END__+0x7df19f>
   14848:	0175d693          	srli	a3,a1,0x17
   1484c:	00a777b3          	and	a5,a4,a0
   14850:	0ff6f693          	zext.b	a3,a3
   14854:	00b77733          	and	a4,a4,a1
   14858:	ff010113          	addi	sp,sp,-16
   1485c:	00371713          	slli	a4,a4,0x3
   14860:	f0168613          	addi	a2,a3,-255
   14864:	00812423          	sw	s0,8(sp)
   14868:	00912223          	sw	s1,4(sp)
   1486c:	01755413          	srli	s0,a0,0x17
   14870:	01f55493          	srli	s1,a0,0x1f
   14874:	00c03633          	snez	a2,a2
   14878:	00173513          	seqz	a0,a4
   1487c:	00a66633          	or	a2,a2,a0
   14880:	01f5d593          	srli	a1,a1,0x1f
   14884:	0ff47413          	zext.b	s0,s0
   14888:	00c5c5b3          	xor	a1,a1,a2
   1488c:	00112623          	sw	ra,12(sp)
   14890:	01212023          	sw	s2,0(sp)
   14894:	00379793          	slli	a5,a5,0x3
   14898:	40d40633          	sub	a2,s0,a3
   1489c:	1c959c63          	bne	a1,s1,14a74 <__subsf3+0x234>
   148a0:	08c05e63          	blez	a2,1493c <__subsf3+0xfc>
   148a4:	0ff00513          	li	a0,255
   148a8:	02069663          	bnez	a3,148d4 <__subsf3+0x94>
   148ac:	00070e63          	beqz	a4,148c8 <__subsf3+0x88>
   148b0:	fff60593          	addi	a1,a2,-1 # 3ffffff <__BSS_END__+0x3fdf19f>
   148b4:	00059863          	bnez	a1,148c4 <__subsf3+0x84>
   148b8:	00e787b3          	add	a5,a5,a4
   148bc:	00100413          	li	s0,1
   148c0:	04c0006f          	j	1490c <__subsf3+0xcc>
   148c4:	02a61063          	bne	a2,a0,148e4 <__subsf3+0xa4>
   148c8:	00060413          	mv	s0,a2
   148cc:	00078713          	mv	a4,a5
   148d0:	3880006f          	j	14c58 <__subsf3+0x418>
   148d4:	fea40ce3          	beq	s0,a0,148cc <__subsf3+0x8c>
   148d8:	040006b7          	lui	a3,0x4000
   148dc:	00d76733          	or	a4,a4,a3
   148e0:	00060593          	mv	a1,a2
   148e4:	01b00613          	li	a2,27
   148e8:	00100693          	li	a3,1
   148ec:	00b64e63          	blt	a2,a1,14908 <__subsf3+0xc8>
   148f0:	02000693          	li	a3,32
   148f4:	40b686b3          	sub	a3,a3,a1
   148f8:	00b75633          	srl	a2,a4,a1
   148fc:	00d71733          	sll	a4,a4,a3
   14900:	00e03733          	snez	a4,a4
   14904:	00e666b3          	or	a3,a2,a4
   14908:	00d787b3          	add	a5,a5,a3
   1490c:	00579713          	slli	a4,a5,0x5
   14910:	12075263          	bgez	a4,14a34 <__subsf3+0x1f4>
   14914:	00140413          	addi	s0,s0,1
   14918:	0ff00713          	li	a4,255
   1491c:	36e40063          	beq	s0,a4,14c7c <__subsf3+0x43c>
   14920:	7e0006b7          	lui	a3,0x7e000
   14924:	0017d713          	srli	a4,a5,0x1
   14928:	fff68693          	addi	a3,a3,-1 # 7dffffff <__BSS_END__+0x7dfdf19f>
   1492c:	00d77733          	and	a4,a4,a3
   14930:	0017f793          	andi	a5,a5,1
   14934:	00f767b3          	or	a5,a4,a5
   14938:	0fc0006f          	j	14a34 <__subsf3+0x1f4>
   1493c:	06060463          	beqz	a2,149a4 <__subsf3+0x164>
   14940:	40868633          	sub	a2,a3,s0
   14944:	0ff00513          	li	a0,255
   14948:	00041e63          	bnez	s0,14964 <__subsf3+0x124>
   1494c:	30078463          	beqz	a5,14c54 <__subsf3+0x414>
   14950:	fff60593          	addi	a1,a2,-1
   14954:	f60582e3          	beqz	a1,148b8 <__subsf3+0x78>
   14958:	00a61e63          	bne	a2,a0,14974 <__subsf3+0x134>
   1495c:	0ff00413          	li	s0,255
   14960:	2f80006f          	j	14c58 <__subsf3+0x418>
   14964:	fea68ce3          	beq	a3,a0,1495c <__subsf3+0x11c>
   14968:	040005b7          	lui	a1,0x4000
   1496c:	00b7e7b3          	or	a5,a5,a1
   14970:	00060593          	mv	a1,a2
   14974:	01b00513          	li	a0,27
   14978:	00100613          	li	a2,1
   1497c:	00b54e63          	blt	a0,a1,14998 <__subsf3+0x158>
   14980:	02000613          	li	a2,32
   14984:	40b60633          	sub	a2,a2,a1
   14988:	00b7d533          	srl	a0,a5,a1
   1498c:	00c797b3          	sll	a5,a5,a2
   14990:	00f037b3          	snez	a5,a5
   14994:	00f56633          	or	a2,a0,a5
   14998:	00e607b3          	add	a5,a2,a4
   1499c:	00068413          	mv	s0,a3
   149a0:	f6dff06f          	j	1490c <__subsf3+0xcc>
   149a4:	00140693          	addi	a3,s0,1
   149a8:	0fe6f613          	andi	a2,a3,254
   149ac:	06061a63          	bnez	a2,14a20 <__subsf3+0x1e0>
   149b0:	06041063          	bnez	s0,14a10 <__subsf3+0x1d0>
   149b4:	28078c63          	beqz	a5,14c4c <__subsf3+0x40c>
   149b8:	08070a63          	beqz	a4,14a4c <__subsf3+0x20c>
   149bc:	00f70733          	add	a4,a4,a5
   149c0:	00571793          	slli	a5,a4,0x5
   149c4:	2807da63          	bgez	a5,14c58 <__subsf3+0x418>
   149c8:	1f8007b7          	lui	a5,0x1f800
   149cc:	00375713          	srli	a4,a4,0x3
   149d0:	fff78793          	addi	a5,a5,-1 # 1f7fffff <__BSS_END__+0x1f7df19f>
   149d4:	00f777b3          	and	a5,a4,a5
   149d8:	00100413          	li	s0,1
   149dc:	0ff47413          	zext.b	s0,s0
   149e0:	00979793          	slli	a5,a5,0x9
   149e4:	01741413          	slli	s0,s0,0x17
   149e8:	0097d793          	srli	a5,a5,0x9
   149ec:	00f46433          	or	s0,s0,a5
   149f0:	01f49513          	slli	a0,s1,0x1f
   149f4:	00c12083          	lw	ra,12(sp)
   149f8:	00a46533          	or	a0,s0,a0
   149fc:	00812403          	lw	s0,8(sp)
   14a00:	00412483          	lw	s1,4(sp)
   14a04:	00012903          	lw	s2,0(sp)
   14a08:	01010113          	addi	sp,sp,16
   14a0c:	00008067          	ret
   14a10:	f40786e3          	beqz	a5,1495c <__subsf3+0x11c>
   14a14:	1a071e63          	bnez	a4,14bd0 <__subsf3+0x390>
   14a18:	00078713          	mv	a4,a5
   14a1c:	f41ff06f          	j	1495c <__subsf3+0x11c>
   14a20:	0ff00613          	li	a2,255
   14a24:	24c68a63          	beq	a3,a2,14c78 <__subsf3+0x438>
   14a28:	00e78733          	add	a4,a5,a4
   14a2c:	00175793          	srli	a5,a4,0x1
   14a30:	00068413          	mv	s0,a3
   14a34:	0077f713          	andi	a4,a5,7
   14a38:	00070a63          	beqz	a4,14a4c <__subsf3+0x20c>
   14a3c:	00f7f713          	andi	a4,a5,15
   14a40:	00400693          	li	a3,4
   14a44:	00d70463          	beq	a4,a3,14a4c <__subsf3+0x20c>
   14a48:	00d787b3          	add	a5,a5,a3
   14a4c:	00579713          	slli	a4,a5,0x5
   14a50:	e6075ee3          	bgez	a4,148cc <__subsf3+0x8c>
   14a54:	00140413          	addi	s0,s0,1
   14a58:	0ff00713          	li	a4,255
   14a5c:	22e40063          	beq	s0,a4,14c7c <__subsf3+0x43c>
   14a60:	1f800737          	lui	a4,0x1f800
   14a64:	0037d793          	srli	a5,a5,0x3
   14a68:	fff70713          	addi	a4,a4,-1 # 1f7fffff <__BSS_END__+0x1f7df19f>
   14a6c:	00e7f7b3          	and	a5,a5,a4
   14a70:	f6dff06f          	j	149dc <__subsf3+0x19c>
   14a74:	08c05063          	blez	a2,14af4 <__subsf3+0x2b4>
   14a78:	06069263          	bnez	a3,14adc <__subsf3+0x29c>
   14a7c:	e40706e3          	beqz	a4,148c8 <__subsf3+0x88>
   14a80:	fff60593          	addi	a1,a2,-1
   14a84:	00059863          	bnez	a1,14a94 <__subsf3+0x254>
   14a88:	40e787b3          	sub	a5,a5,a4
   14a8c:	00100413          	li	s0,1
   14a90:	0340006f          	j	14ac4 <__subsf3+0x284>
   14a94:	0ff00693          	li	a3,255
   14a98:	e2d608e3          	beq	a2,a3,148c8 <__subsf3+0x88>
   14a9c:	01b00613          	li	a2,27
   14aa0:	00100693          	li	a3,1
   14aa4:	00b64e63          	blt	a2,a1,14ac0 <__subsf3+0x280>
   14aa8:	02000693          	li	a3,32
   14aac:	40b686b3          	sub	a3,a3,a1
   14ab0:	00b75633          	srl	a2,a4,a1
   14ab4:	00d71733          	sll	a4,a4,a3
   14ab8:	00e03733          	snez	a4,a4
   14abc:	00e666b3          	or	a3,a2,a4
   14ac0:	40d787b3          	sub	a5,a5,a3
   14ac4:	00579713          	slli	a4,a5,0x5
   14ac8:	f60756e3          	bgez	a4,14a34 <__subsf3+0x1f4>
   14acc:	04000937          	lui	s2,0x4000
   14ad0:	fff90913          	addi	s2,s2,-1 # 3ffffff <__BSS_END__+0x3fdf19f>
   14ad4:	0127f933          	and	s2,a5,s2
   14ad8:	11c0006f          	j	14bf4 <__subsf3+0x3b4>
   14adc:	0ff00693          	li	a3,255
   14ae0:	ded406e3          	beq	s0,a3,148cc <__subsf3+0x8c>
   14ae4:	040006b7          	lui	a3,0x4000
   14ae8:	00d76733          	or	a4,a4,a3
   14aec:	00060593          	mv	a1,a2
   14af0:	fadff06f          	j	14a9c <__subsf3+0x25c>
   14af4:	06060e63          	beqz	a2,14b70 <__subsf3+0x330>
   14af8:	40868633          	sub	a2,a3,s0
   14afc:	02041663          	bnez	s0,14b28 <__subsf3+0x2e8>
   14b00:	02078063          	beqz	a5,14b20 <__subsf3+0x2e0>
   14b04:	fff60513          	addi	a0,a2,-1
   14b08:	00051863          	bnez	a0,14b18 <__subsf3+0x2d8>
   14b0c:	40f707b3          	sub	a5,a4,a5
   14b10:	00058493          	mv	s1,a1
   14b14:	f79ff06f          	j	14a8c <__subsf3+0x24c>
   14b18:	0ff00813          	li	a6,255
   14b1c:	03061063          	bne	a2,a6,14b3c <__subsf3+0x2fc>
   14b20:	00060413          	mv	s0,a2
   14b24:	0680006f          	j	14b8c <__subsf3+0x34c>
   14b28:	0ff00513          	li	a0,255
   14b2c:	14a68263          	beq	a3,a0,14c70 <__subsf3+0x430>
   14b30:	04000537          	lui	a0,0x4000
   14b34:	00a7e7b3          	or	a5,a5,a0
   14b38:	00060513          	mv	a0,a2
   14b3c:	01b00813          	li	a6,27
   14b40:	00100613          	li	a2,1
   14b44:	00a84e63          	blt	a6,a0,14b60 <__subsf3+0x320>
   14b48:	02000613          	li	a2,32
   14b4c:	40a60633          	sub	a2,a2,a0
   14b50:	00a7d833          	srl	a6,a5,a0
   14b54:	00c797b3          	sll	a5,a5,a2
   14b58:	00f037b3          	snez	a5,a5
   14b5c:	00f86633          	or	a2,a6,a5
   14b60:	40c707b3          	sub	a5,a4,a2
   14b64:	00068413          	mv	s0,a3
   14b68:	00058493          	mv	s1,a1
   14b6c:	f59ff06f          	j	14ac4 <__subsf3+0x284>
   14b70:	00140693          	addi	a3,s0,1
   14b74:	0fe6f693          	andi	a3,a3,254
   14b78:	06069463          	bnez	a3,14be0 <__subsf3+0x3a0>
   14b7c:	04041863          	bnez	s0,14bcc <__subsf3+0x38c>
   14b80:	00079a63          	bnez	a5,14b94 <__subsf3+0x354>
   14b84:	00000493          	li	s1,0
   14b88:	e4070ae3          	beqz	a4,149dc <__subsf3+0x19c>
   14b8c:	00058493          	mv	s1,a1
   14b90:	0c80006f          	j	14c58 <__subsf3+0x418>
   14b94:	ea070ce3          	beqz	a4,14a4c <__subsf3+0x20c>
   14b98:	40e786b3          	sub	a3,a5,a4
   14b9c:	00569613          	slli	a2,a3,0x5
   14ba0:	00065c63          	bgez	a2,14bb8 <__subsf3+0x378>
   14ba4:	40f707b3          	sub	a5,a4,a5
   14ba8:	00058493          	mv	s1,a1
   14bac:	00000413          	li	s0,0
   14bb0:	e20786e3          	beqz	a5,149dc <__subsf3+0x19c>
   14bb4:	e81ff06f          	j	14a34 <__subsf3+0x1f4>
   14bb8:	00068713          	mv	a4,a3
   14bbc:	08069e63          	bnez	a3,14c58 <__subsf3+0x418>
   14bc0:	00000793          	li	a5,0
   14bc4:	00000493          	li	s1,0
   14bc8:	e15ff06f          	j	149dc <__subsf3+0x19c>
   14bcc:	e40794e3          	bnez	a5,14a14 <__subsf3+0x1d4>
   14bd0:	00000493          	li	s1,0
   14bd4:	0ff00413          	li	s0,255
   14bd8:	004007b7          	lui	a5,0x400
   14bdc:	e01ff06f          	j	149dc <__subsf3+0x19c>
   14be0:	40e78933          	sub	s2,a5,a4
   14be4:	00591693          	slli	a3,s2,0x5
   14be8:	0406d263          	bgez	a3,14c2c <__subsf3+0x3ec>
   14bec:	40f70933          	sub	s2,a4,a5
   14bf0:	00058493          	mv	s1,a1
   14bf4:	00090513          	mv	a0,s2
   14bf8:	490000ef          	jal	15088 <__clzsi2>
   14bfc:	ffb50513          	addi	a0,a0,-5 # 3fffffb <__BSS_END__+0x3fdf19b>
   14c00:	00a91933          	sll	s2,s2,a0
   14c04:	02854a63          	blt	a0,s0,14c38 <__subsf3+0x3f8>
   14c08:	40850533          	sub	a0,a0,s0
   14c0c:	00150513          	addi	a0,a0,1
   14c10:	02000713          	li	a4,32
   14c14:	40a70733          	sub	a4,a4,a0
   14c18:	00a957b3          	srl	a5,s2,a0
   14c1c:	00e91933          	sll	s2,s2,a4
   14c20:	01203933          	snez	s2,s2
   14c24:	0127e7b3          	or	a5,a5,s2
   14c28:	f85ff06f          	j	14bac <__subsf3+0x36c>
   14c2c:	fc0914e3          	bnez	s2,14bf4 <__subsf3+0x3b4>
   14c30:	00000413          	li	s0,0
   14c34:	f8dff06f          	j	14bc0 <__subsf3+0x380>
   14c38:	fc0007b7          	lui	a5,0xfc000
   14c3c:	fff78793          	addi	a5,a5,-1 # fbffffff <__BSS_END__+0xfbfdf19f>
   14c40:	40a40433          	sub	s0,s0,a0
   14c44:	00f977b3          	and	a5,s2,a5
   14c48:	dedff06f          	j	14a34 <__subsf3+0x1f4>
   14c4c:	00070793          	mv	a5,a4
   14c50:	f5dff06f          	j	14bac <__subsf3+0x36c>
   14c54:	00060413          	mv	s0,a2
   14c58:	00375793          	srli	a5,a4,0x3
   14c5c:	0ff00713          	li	a4,255
   14c60:	d6e41ee3          	bne	s0,a4,149dc <__subsf3+0x19c>
   14c64:	d6078ce3          	beqz	a5,149dc <__subsf3+0x19c>
   14c68:	004007b7          	lui	a5,0x400
   14c6c:	f59ff06f          	j	14bc4 <__subsf3+0x384>
   14c70:	00068413          	mv	s0,a3
   14c74:	f19ff06f          	j	14b8c <__subsf3+0x34c>
   14c78:	00068413          	mv	s0,a3
   14c7c:	00000793          	li	a5,0
   14c80:	d5dff06f          	j	149dc <__subsf3+0x19c>

00014c84 <__unordsf2>:
   14c84:	008007b7          	lui	a5,0x800
   14c88:	fff78793          	addi	a5,a5,-1 # 7fffff <__BSS_END__+0x7df19f>
   14c8c:	00a7f733          	and	a4,a5,a0
   14c90:	01755513          	srli	a0,a0,0x17
   14c94:	0ff57513          	zext.b	a0,a0
   14c98:	f0150513          	addi	a0,a0,-255
   14c9c:	00b7f7b3          	and	a5,a5,a1
   14ca0:	00051663          	bnez	a0,14cac <__unordsf2+0x28>
   14ca4:	00100513          	li	a0,1
   14ca8:	00071e63          	bnez	a4,14cc4 <__unordsf2+0x40>
   14cac:	0175d593          	srli	a1,a1,0x17
   14cb0:	0ff5f593          	zext.b	a1,a1
   14cb4:	f0158593          	addi	a1,a1,-255 # 3ffff01 <__BSS_END__+0x3fdf0a1>
   14cb8:	00f037b3          	snez	a5,a5
   14cbc:	0015b593          	seqz	a1,a1
   14cc0:	00b7f533          	and	a0,a5,a1
   14cc4:	00008067          	ret

00014cc8 <__fixsfsi>:
   14cc8:	00800637          	lui	a2,0x800
   14ccc:	01755713          	srli	a4,a0,0x17
   14cd0:	fff60793          	addi	a5,a2,-1 # 7fffff <__BSS_END__+0x7df19f>
   14cd4:	0ff77713          	zext.b	a4,a4
   14cd8:	07e00593          	li	a1,126
   14cdc:	00a7f7b3          	and	a5,a5,a0
   14ce0:	01f55693          	srli	a3,a0,0x1f
   14ce4:	04e5d663          	bge	a1,a4,14d30 <__fixsfsi+0x68>
   14ce8:	09d00593          	li	a1,157
   14cec:	00e5da63          	bge	a1,a4,14d00 <__fixsfsi+0x38>
   14cf0:	80000537          	lui	a0,0x80000
   14cf4:	fff50513          	addi	a0,a0,-1 # 7fffffff <__BSS_END__+0x7ffdf19f>
   14cf8:	00a68533          	add	a0,a3,a0
   14cfc:	00008067          	ret
   14d00:	00c7e533          	or	a0,a5,a2
   14d04:	09500793          	li	a5,149
   14d08:	00e7dc63          	bge	a5,a4,14d20 <__fixsfsi+0x58>
   14d0c:	f6a70713          	addi	a4,a4,-150
   14d10:	00e51533          	sll	a0,a0,a4
   14d14:	02068063          	beqz	a3,14d34 <__fixsfsi+0x6c>
   14d18:	40a00533          	neg	a0,a0
   14d1c:	00008067          	ret
   14d20:	09600793          	li	a5,150
   14d24:	40e787b3          	sub	a5,a5,a4
   14d28:	00f55533          	srl	a0,a0,a5
   14d2c:	fe9ff06f          	j	14d14 <__fixsfsi+0x4c>
   14d30:	00000513          	li	a0,0
   14d34:	00008067          	ret

00014d38 <__fixunssfsi>:
   14d38:	008005b7          	lui	a1,0x800
   14d3c:	01755793          	srli	a5,a0,0x17
   14d40:	fff58693          	addi	a3,a1,-1 # 7fffff <__BSS_END__+0x7df19f>
   14d44:	0ff7f793          	zext.b	a5,a5
   14d48:	07e00613          	li	a2,126
   14d4c:	00a6f6b3          	and	a3,a3,a0
   14d50:	01f55713          	srli	a4,a0,0x1f
   14d54:	04f65263          	bge	a2,a5,14d98 <__fixunssfsi+0x60>
   14d58:	09f00613          	li	a2,159
   14d5c:	40e60633          	sub	a2,a2,a4
   14d60:	fff70513          	addi	a0,a4,-1
   14d64:	02c7dc63          	bge	a5,a2,14d9c <__fixunssfsi+0x64>
   14d68:	00000513          	li	a0,0
   14d6c:	02071863          	bnez	a4,14d9c <__fixunssfsi+0x64>
   14d70:	09500713          	li	a4,149
   14d74:	00b6e533          	or	a0,a3,a1
   14d78:	00f75863          	bge	a4,a5,14d88 <__fixunssfsi+0x50>
   14d7c:	f6a78793          	addi	a5,a5,-150
   14d80:	00f51533          	sll	a0,a0,a5
   14d84:	00008067          	ret
   14d88:	09600713          	li	a4,150
   14d8c:	40f707b3          	sub	a5,a4,a5
   14d90:	00f55533          	srl	a0,a0,a5
   14d94:	00008067          	ret
   14d98:	00000513          	li	a0,0
   14d9c:	00008067          	ret

00014da0 <__floatsisf>:
   14da0:	ff010113          	addi	sp,sp,-16
   14da4:	00112623          	sw	ra,12(sp)
   14da8:	00812423          	sw	s0,8(sp)
   14dac:	00912223          	sw	s1,4(sp)
   14db0:	0e050463          	beqz	a0,14e98 <__floatsisf+0xf8>
   14db4:	41f55793          	srai	a5,a0,0x1f
   14db8:	00a7c433          	xor	s0,a5,a0
   14dbc:	40f40433          	sub	s0,s0,a5
   14dc0:	01f55493          	srli	s1,a0,0x1f
   14dc4:	00040513          	mv	a0,s0
   14dc8:	2c0000ef          	jal	15088 <__clzsi2>
   14dcc:	09e00793          	li	a5,158
   14dd0:	00050693          	mv	a3,a0
   14dd4:	40a78533          	sub	a0,a5,a0
   14dd8:	00700793          	li	a5,7
   14ddc:	04d7d063          	bge	a5,a3,14e1c <__floatsisf+0x7c>
   14de0:	00800793          	li	a5,8
   14de4:	0cf68063          	beq	a3,a5,14ea4 <__floatsisf+0x104>
   14de8:	ff868693          	addi	a3,a3,-8 # 3fffff8 <__BSS_END__+0x3fdf198>
   14dec:	00d41433          	sll	s0,s0,a3
   14df0:	00941413          	slli	s0,s0,0x9
   14df4:	00945413          	srli	s0,s0,0x9
   14df8:	01751513          	slli	a0,a0,0x17
   14dfc:	00c12083          	lw	ra,12(sp)
   14e00:	00856533          	or	a0,a0,s0
   14e04:	00812403          	lw	s0,8(sp)
   14e08:	01f49493          	slli	s1,s1,0x1f
   14e0c:	00956533          	or	a0,a0,s1
   14e10:	00412483          	lw	s1,4(sp)
   14e14:	01010113          	addi	sp,sp,16
   14e18:	00008067          	ret
   14e1c:	00400793          	li	a5,4
   14e20:	00500713          	li	a4,5
   14e24:	06d7c263          	blt	a5,a3,14e88 <__floatsisf+0xe8>
   14e28:	01b68793          	addi	a5,a3,27
   14e2c:	00f417b3          	sll	a5,s0,a5
   14e30:	40d70733          	sub	a4,a4,a3
   14e34:	00f037b3          	snez	a5,a5
   14e38:	00e45433          	srl	s0,s0,a4
   14e3c:	0087e433          	or	s0,a5,s0
   14e40:	fc000737          	lui	a4,0xfc000
   14e44:	fff70713          	addi	a4,a4,-1 # fbffffff <__BSS_END__+0xfbfdf19f>
   14e48:	00747793          	andi	a5,s0,7
   14e4c:	00e47733          	and	a4,s0,a4
   14e50:	02078863          	beqz	a5,14e80 <__floatsisf+0xe0>
   14e54:	00f47413          	andi	s0,s0,15
   14e58:	00400793          	li	a5,4
   14e5c:	02f40263          	beq	s0,a5,14e80 <__floatsisf+0xe0>
   14e60:	00f70733          	add	a4,a4,a5
   14e64:	00571793          	slli	a5,a4,0x5
   14e68:	0007dc63          	bgez	a5,14e80 <__floatsisf+0xe0>
   14e6c:	fc0007b7          	lui	a5,0xfc000
   14e70:	fff78793          	addi	a5,a5,-1 # fbffffff <__BSS_END__+0xfbfdf19f>
   14e74:	00f77733          	and	a4,a4,a5
   14e78:	09f00793          	li	a5,159
   14e7c:	40d78533          	sub	a0,a5,a3
   14e80:	00375413          	srli	s0,a4,0x3
   14e84:	f6dff06f          	j	14df0 <__floatsisf+0x50>
   14e88:	fae68ce3          	beq	a3,a4,14e40 <__floatsisf+0xa0>
   14e8c:	ffb68793          	addi	a5,a3,-5
   14e90:	00f41433          	sll	s0,s0,a5
   14e94:	fadff06f          	j	14e40 <__floatsisf+0xa0>
   14e98:	00000493          	li	s1,0
   14e9c:	00000413          	li	s0,0
   14ea0:	f51ff06f          	j	14df0 <__floatsisf+0x50>
   14ea4:	09600513          	li	a0,150
   14ea8:	f49ff06f          	j	14df0 <__floatsisf+0x50>

00014eac <__mulsi3>:
   14eac:	00050613          	mv	a2,a0
   14eb0:	00000513          	li	a0,0
   14eb4:	0015f693          	andi	a3,a1,1
   14eb8:	00068463          	beqz	a3,14ec0 <__mulsi3+0x14>
   14ebc:	00c50533          	add	a0,a0,a2
   14ec0:	0015d593          	srli	a1,a1,0x1
   14ec4:	00161613          	slli	a2,a2,0x1
   14ec8:	fe0596e3          	bnez	a1,14eb4 <__mulsi3+0x8>
   14ecc:	00008067          	ret

00014ed0 <__muldi3>:
   14ed0:	ff010113          	addi	sp,sp,-16
   14ed4:	00068313          	mv	t1,a3
   14ed8:	00112623          	sw	ra,12(sp)
   14edc:	00050e13          	mv	t3,a0
   14ee0:	00050693          	mv	a3,a0
   14ee4:	00060893          	mv	a7,a2
   14ee8:	00000713          	li	a4,0
   14eec:	00000793          	li	a5,0
   14ef0:	00000813          	li	a6,0
   14ef4:	0018fe93          	andi	t4,a7,1
   14ef8:	00171513          	slli	a0,a4,0x1
   14efc:	000e8a63          	beqz	t4,14f10 <__muldi3+0x40>
   14f00:	01068833          	add	a6,a3,a6
   14f04:	00e787b3          	add	a5,a5,a4
   14f08:	00d83733          	sltu	a4,a6,a3
   14f0c:	00f707b3          	add	a5,a4,a5
   14f10:	01f6d713          	srli	a4,a3,0x1f
   14f14:	0018d893          	srli	a7,a7,0x1
   14f18:	00e56733          	or	a4,a0,a4
   14f1c:	00169693          	slli	a3,a3,0x1
   14f20:	fc089ae3          	bnez	a7,14ef4 <__muldi3+0x24>
   14f24:	00058863          	beqz	a1,14f34 <__muldi3+0x64>
   14f28:	00060513          	mv	a0,a2
   14f2c:	f81ff0ef          	jal	14eac <__mulsi3>
   14f30:	00a787b3          	add	a5,a5,a0
   14f34:	00030a63          	beqz	t1,14f48 <__muldi3+0x78>
   14f38:	000e0513          	mv	a0,t3
   14f3c:	00030593          	mv	a1,t1
   14f40:	f6dff0ef          	jal	14eac <__mulsi3>
   14f44:	00f507b3          	add	a5,a0,a5
   14f48:	00c12083          	lw	ra,12(sp)
   14f4c:	00080513          	mv	a0,a6
   14f50:	00078593          	mv	a1,a5
   14f54:	01010113          	addi	sp,sp,16
   14f58:	00008067          	ret

00014f5c <__divsi3>:
   14f5c:	06054063          	bltz	a0,14fbc <__umodsi3+0x10>
   14f60:	0605c663          	bltz	a1,14fcc <__umodsi3+0x20>

00014f64 <__hidden___udivsi3>:
   14f64:	00058613          	mv	a2,a1
   14f68:	00050593          	mv	a1,a0
   14f6c:	fff00513          	li	a0,-1
   14f70:	02060c63          	beqz	a2,14fa8 <__hidden___udivsi3+0x44>
   14f74:	00100693          	li	a3,1
   14f78:	00b67a63          	bgeu	a2,a1,14f8c <__hidden___udivsi3+0x28>
   14f7c:	00c05863          	blez	a2,14f8c <__hidden___udivsi3+0x28>
   14f80:	00161613          	slli	a2,a2,0x1
   14f84:	00169693          	slli	a3,a3,0x1
   14f88:	feb66ae3          	bltu	a2,a1,14f7c <__hidden___udivsi3+0x18>
   14f8c:	00000513          	li	a0,0
   14f90:	00c5e663          	bltu	a1,a2,14f9c <__hidden___udivsi3+0x38>
   14f94:	40c585b3          	sub	a1,a1,a2
   14f98:	00d56533          	or	a0,a0,a3
   14f9c:	0016d693          	srli	a3,a3,0x1
   14fa0:	00165613          	srli	a2,a2,0x1
   14fa4:	fe0696e3          	bnez	a3,14f90 <__hidden___udivsi3+0x2c>
   14fa8:	00008067          	ret

00014fac <__umodsi3>:
   14fac:	00008293          	mv	t0,ra
   14fb0:	fb5ff0ef          	jal	14f64 <__hidden___udivsi3>
   14fb4:	00058513          	mv	a0,a1
   14fb8:	00028067          	jr	t0
   14fbc:	40a00533          	neg	a0,a0
   14fc0:	00b04863          	bgtz	a1,14fd0 <__umodsi3+0x24>
   14fc4:	40b005b3          	neg	a1,a1
   14fc8:	f9dff06f          	j	14f64 <__hidden___udivsi3>
   14fcc:	40b005b3          	neg	a1,a1
   14fd0:	00008293          	mv	t0,ra
   14fd4:	f91ff0ef          	jal	14f64 <__hidden___udivsi3>
   14fd8:	40a00533          	neg	a0,a0
   14fdc:	00028067          	jr	t0

00014fe0 <__modsi3>:
   14fe0:	00008293          	mv	t0,ra
   14fe4:	0005ca63          	bltz	a1,14ff8 <__modsi3+0x18>
   14fe8:	00054c63          	bltz	a0,15000 <__modsi3+0x20>
   14fec:	f79ff0ef          	jal	14f64 <__hidden___udivsi3>
   14ff0:	00058513          	mv	a0,a1
   14ff4:	00028067          	jr	t0
   14ff8:	40b005b3          	neg	a1,a1
   14ffc:	fe0558e3          	bgez	a0,14fec <__modsi3+0xc>
   15000:	40a00533          	neg	a0,a0
   15004:	f61ff0ef          	jal	14f64 <__hidden___udivsi3>
   15008:	40b00533          	neg	a0,a1
   1500c:	00028067          	jr	t0

00015010 <__lshrdi3>:
   15010:	00060e63          	beqz	a2,1502c <__lshrdi3+0x1c>
   15014:	01f00793          	li	a5,31
   15018:	00c7dc63          	bge	a5,a2,15030 <__lshrdi3+0x20>
   1501c:	fe060613          	addi	a2,a2,-32
   15020:	00c5d533          	srl	a0,a1,a2
   15024:	00000713          	li	a4,0
   15028:	00070593          	mv	a1,a4
   1502c:	00008067          	ret
   15030:	02000793          	li	a5,32
   15034:	40c787b3          	sub	a5,a5,a2
   15038:	00c5d733          	srl	a4,a1,a2
   1503c:	00c55533          	srl	a0,a0,a2
   15040:	00f595b3          	sll	a1,a1,a5
   15044:	00a5e533          	or	a0,a1,a0
   15048:	fe1ff06f          	j	15028 <__lshrdi3+0x18>

0001504c <__ashldi3>:
   1504c:	00060e63          	beqz	a2,15068 <__ashldi3+0x1c>
   15050:	01f00793          	li	a5,31
   15054:	00c7dc63          	bge	a5,a2,1506c <__ashldi3+0x20>
   15058:	fe060613          	addi	a2,a2,-32
   1505c:	00c515b3          	sll	a1,a0,a2
   15060:	00000713          	li	a4,0
   15064:	00070513          	mv	a0,a4
   15068:	00008067          	ret
   1506c:	02000793          	li	a5,32
   15070:	40c787b3          	sub	a5,a5,a2
   15074:	00c51733          	sll	a4,a0,a2
   15078:	00c595b3          	sll	a1,a1,a2
   1507c:	00f55533          	srl	a0,a0,a5
   15080:	00b565b3          	or	a1,a0,a1
   15084:	fe1ff06f          	j	15064 <__ashldi3+0x18>

00015088 <__clzsi2>:
   15088:	000107b7          	lui	a5,0x10
   1508c:	02f57a63          	bgeu	a0,a5,150c0 <__clzsi2+0x38>
   15090:	10053793          	sltiu	a5,a0,256
   15094:	0017b793          	seqz	a5,a5
   15098:	00379793          	slli	a5,a5,0x3
   1509c:	0001b737          	lui	a4,0x1b
   150a0:	00f55533          	srl	a0,a0,a5
   150a4:	d9c70713          	addi	a4,a4,-612 # 1ad9c <__clz_tab>
   150a8:	00a70733          	add	a4,a4,a0
   150ac:	00074503          	lbu	a0,0(a4)
   150b0:	02000693          	li	a3,32
   150b4:	40f686b3          	sub	a3,a3,a5
   150b8:	40a68533          	sub	a0,a3,a0
   150bc:	00008067          	ret
   150c0:	01000737          	lui	a4,0x1000
   150c4:	01800793          	li	a5,24
   150c8:	fce57ae3          	bgeu	a0,a4,1509c <__clzsi2+0x14>
   150cc:	01000793          	li	a5,16
   150d0:	fcdff06f          	j	1509c <__clzsi2+0x14>

000150d4 <abort>:
   150d4:	ff010113          	addi	sp,sp,-16
   150d8:	00600513          	li	a0,6
   150dc:	00112623          	sw	ra,12(sp)
   150e0:	724020ef          	jal	17804 <raise>
   150e4:	00100513          	li	a0,1
   150e8:	1fd050ef          	jal	1aae4 <_exit>

000150ec <__assert_func>:
   150ec:	8901a783          	lw	a5,-1904(gp) # 1c768 <_impure_ptr>
   150f0:	ff010113          	addi	sp,sp,-16
   150f4:	00060813          	mv	a6,a2
   150f8:	00112623          	sw	ra,12(sp)
   150fc:	00050313          	mv	t1,a0
   15100:	00058713          	mv	a4,a1
   15104:	00c7a503          	lw	a0,12(a5) # 1000c <exit-0xa8>
   15108:	00068613          	mv	a2,a3
   1510c:	02080063          	beqz	a6,1512c <__assert_func+0x40>
   15110:	0001b7b7          	lui	a5,0x1b
   15114:	ca478793          	addi	a5,a5,-860 # 1aca4 <_exit+0x1c0>
   15118:	0001b5b7          	lui	a1,0x1b
   1511c:	00030693          	mv	a3,t1
   15120:	cb458593          	addi	a1,a1,-844 # 1acb4 <_exit+0x1d0>
   15124:	064000ef          	jal	15188 <fiprintf>
   15128:	fadff0ef          	jal	150d4 <abort>
   1512c:	0001b7b7          	lui	a5,0x1b
   15130:	cb078793          	addi	a5,a5,-848 # 1acb0 <_exit+0x1cc>
   15134:	00078813          	mv	a6,a5
   15138:	fe1ff06f          	j	15118 <__assert_func+0x2c>

0001513c <__assert>:
   1513c:	ff010113          	addi	sp,sp,-16
   15140:	00060693          	mv	a3,a2
   15144:	00000613          	li	a2,0
   15148:	00112623          	sw	ra,12(sp)
   1514c:	fa1ff0ef          	jal	150ec <__assert_func>

00015150 <_fiprintf_r>:
   15150:	fc010113          	addi	sp,sp,-64
   15154:	02c10313          	addi	t1,sp,44
   15158:	02d12623          	sw	a3,44(sp)
   1515c:	00030693          	mv	a3,t1
   15160:	00112e23          	sw	ra,28(sp)
   15164:	02e12823          	sw	a4,48(sp)
   15168:	02f12a23          	sw	a5,52(sp)
   1516c:	03012c23          	sw	a6,56(sp)
   15170:	03112e23          	sw	a7,60(sp)
   15174:	00612623          	sw	t1,12(sp)
   15178:	060000ef          	jal	151d8 <_vfiprintf_r>
   1517c:	01c12083          	lw	ra,28(sp)
   15180:	04010113          	addi	sp,sp,64
   15184:	00008067          	ret

00015188 <fiprintf>:
   15188:	fc010113          	addi	sp,sp,-64
   1518c:	00050e93          	mv	t4,a0
   15190:	8901a503          	lw	a0,-1904(gp) # 1c768 <_impure_ptr>
   15194:	00058e13          	mv	t3,a1
   15198:	02810313          	addi	t1,sp,40
   1519c:	02c12423          	sw	a2,40(sp)
   151a0:	02d12623          	sw	a3,44(sp)
   151a4:	000e8593          	mv	a1,t4
   151a8:	000e0613          	mv	a2,t3
   151ac:	00030693          	mv	a3,t1
   151b0:	00112e23          	sw	ra,28(sp)
   151b4:	02e12823          	sw	a4,48(sp)
   151b8:	02f12a23          	sw	a5,52(sp)
   151bc:	03012c23          	sw	a6,56(sp)
   151c0:	03112e23          	sw	a7,60(sp)
   151c4:	00612623          	sw	t1,12(sp)
   151c8:	010000ef          	jal	151d8 <_vfiprintf_r>
   151cc:	01c12083          	lw	ra,28(sp)
   151d0:	04010113          	addi	sp,sp,64
   151d4:	00008067          	ret

000151d8 <_vfiprintf_r>:
   151d8:	ed010113          	addi	sp,sp,-304
   151dc:	11312e23          	sw	s3,284(sp)
   151e0:	11a12023          	sw	s10,256(sp)
   151e4:	12112623          	sw	ra,300(sp)
   151e8:	00a12223          	sw	a0,4(sp)
   151ec:	00d12623          	sw	a3,12(sp)
   151f0:	00060d13          	mv	s10,a2
   151f4:	00058993          	mv	s3,a1
   151f8:	00050863          	beqz	a0,15208 <_vfiprintf_r+0x30>
   151fc:	03452783          	lw	a5,52(a0)
   15200:	00079463          	bnez	a5,15208 <_vfiprintf_r+0x30>
   15204:	7ed0006f          	j	161f0 <_vfiprintf_r+0x1018>
   15208:	00c99703          	lh	a4,12(s3)
   1520c:	0649a783          	lw	a5,100(s3)
   15210:	00002637          	lui	a2,0x2
   15214:	01271693          	slli	a3,a4,0x12
   15218:	0006ce63          	bltz	a3,15234 <_vfiprintf_r+0x5c>
   1521c:	ffffe6b7          	lui	a3,0xffffe
   15220:	fff68693          	addi	a3,a3,-1 # ffffdfff <__BSS_END__+0xfffdd19f>
   15224:	00c76733          	or	a4,a4,a2
   15228:	00d7f7b3          	and	a5,a5,a3
   1522c:	00e99623          	sh	a4,12(s3)
   15230:	06f9a223          	sw	a5,100(s3)
   15234:	01279713          	slli	a4,a5,0x12
   15238:	00075463          	bgez	a4,15240 <_vfiprintf_r+0x68>
   1523c:	1880106f          	j	163c4 <_vfiprintf_r+0x11ec>
   15240:	00c99783          	lh	a5,12(s3)
   15244:	0087f713          	andi	a4,a5,8
   15248:	28070463          	beqz	a4,154d0 <_vfiprintf_r+0x2f8>
   1524c:	0109a703          	lw	a4,16(s3)
   15250:	28070063          	beqz	a4,154d0 <_vfiprintf_r+0x2f8>
   15254:	01a7f793          	andi	a5,a5,26
   15258:	00a00713          	li	a4,10
   1525c:	28e78a63          	beq	a5,a4,154f0 <_vfiprintf_r+0x318>
   15260:	0001b737          	lui	a4,0x1b
   15264:	11612823          	sw	s6,272(sp)
   15268:	11712623          	sw	s7,268(sp)
   1526c:	04c10b13          	addi	s6,sp,76
   15270:	0001bbb7          	lui	s7,0x1b
   15274:	e9c70713          	addi	a4,a4,-356 # 1ae9c <__clz_tab+0x100>
   15278:	12912223          	sw	s1,292(sp)
   1527c:	12812423          	sw	s0,296(sp)
   15280:	13212023          	sw	s2,288(sp)
   15284:	11412c23          	sw	s4,280(sp)
   15288:	11512a23          	sw	s5,276(sp)
   1528c:	11812423          	sw	s8,264(sp)
   15290:	11912223          	sw	s9,260(sp)
   15294:	0fb12e23          	sw	s11,252(sp)
   15298:	04012423          	sw	zero,72(sp)
   1529c:	04012223          	sw	zero,68(sp)
   152a0:	05612023          	sw	s6,64(sp)
   152a4:	000b0793          	mv	a5,s6
   152a8:	00e12a23          	sw	a4,20(sp)
   152ac:	008b8b93          	addi	s7,s7,8 # 1b008 <zeroes.0>
   152b0:	00012e23          	sw	zero,28(sp)
   152b4:	02012223          	sw	zero,36(sp)
   152b8:	02012023          	sw	zero,32(sp)
   152bc:	00012423          	sw	zero,8(sp)
   152c0:	01000493          	li	s1,16
   152c4:	000d4703          	lbu	a4,0(s10)
   152c8:	000d0413          	mv	s0,s10
   152cc:	fdb70693          	addi	a3,a4,-37
   152d0:	06068263          	beqz	a3,15334 <_vfiprintf_r+0x15c>
   152d4:	06070063          	beqz	a4,15334 <_vfiprintf_r+0x15c>
   152d8:	00040913          	mv	s2,s0
   152dc:	00144703          	lbu	a4,1(s0)
   152e0:	00140413          	addi	s0,s0,1
   152e4:	00070663          	beqz	a4,152f0 <_vfiprintf_r+0x118>
   152e8:	fdb70693          	addi	a3,a4,-37
   152ec:	fe0696e3          	bnez	a3,152d8 <_vfiprintf_r+0x100>
   152f0:	41a40a33          	sub	s4,s0,s10
   152f4:	05a40063          	beq	s0,s10,15334 <_vfiprintf_r+0x15c>
   152f8:	04812683          	lw	a3,72(sp)
   152fc:	04412703          	lw	a4,68(sp)
   15300:	01a7a023          	sw	s10,0(a5)
   15304:	014686b3          	add	a3,a3,s4
   15308:	00170713          	addi	a4,a4,1
   1530c:	0147a223          	sw	s4,4(a5)
   15310:	04d12423          	sw	a3,72(sp)
   15314:	04e12223          	sw	a4,68(sp)
   15318:	00700693          	li	a3,7
   1531c:	00878793          	addi	a5,a5,8
   15320:	1ee6ce63          	blt	a3,a4,1551c <_vfiprintf_r+0x344>
   15324:	00812703          	lw	a4,8(sp)
   15328:	01470733          	add	a4,a4,s4
   1532c:	00e12423          	sw	a4,8(sp)
   15330:	00194703          	lbu	a4,1(s2)
   15334:	20070263          	beqz	a4,15538 <_vfiprintf_r+0x360>
   15338:	00144683          	lbu	a3,1(s0)
   1533c:	00140d13          	addi	s10,s0,1
   15340:	02010da3          	sb	zero,59(sp)
   15344:	fff00a93          	li	s5,-1
   15348:	00000913          	li	s2,0
   1534c:	00000413          	li	s0,0
   15350:	05a00a13          	li	s4,90
   15354:	001d0d13          	addi	s10,s10,1
   15358:	fe068713          	addi	a4,a3,-32
   1535c:	04ea6663          	bltu	s4,a4,153a8 <_vfiprintf_r+0x1d0>
   15360:	01412603          	lw	a2,20(sp)
   15364:	00271713          	slli	a4,a4,0x2
   15368:	00c70733          	add	a4,a4,a2
   1536c:	00072703          	lw	a4,0(a4)
   15370:	00070067          	jr	a4
   15374:	fd068613          	addi	a2,a3,-48
   15378:	00000913          	li	s2,0
   1537c:	00900593          	li	a1,9
   15380:	00291713          	slli	a4,s2,0x2
   15384:	000d4683          	lbu	a3,0(s10)
   15388:	01270733          	add	a4,a4,s2
   1538c:	00171713          	slli	a4,a4,0x1
   15390:	00e60933          	add	s2,a2,a4
   15394:	fd068613          	addi	a2,a3,-48
   15398:	001d0d13          	addi	s10,s10,1
   1539c:	fec5f2e3          	bgeu	a1,a2,15380 <_vfiprintf_r+0x1a8>
   153a0:	fe068713          	addi	a4,a3,-32
   153a4:	faea7ee3          	bgeu	s4,a4,15360 <_vfiprintf_r+0x188>
   153a8:	18068863          	beqz	a3,15538 <_vfiprintf_r+0x360>
   153ac:	00100c13          	li	s8,1
   153b0:	08d10623          	sb	a3,140(sp)
   153b4:	02010da3          	sb	zero,59(sp)
   153b8:	000c0a13          	mv	s4,s8
   153bc:	00000a93          	li	s5,0
   153c0:	08c10c93          	addi	s9,sp,140
   153c4:	04812583          	lw	a1,72(sp)
   153c8:	04412603          	lw	a2,68(sp)
   153cc:	08447e13          	andi	t3,s0,132
   153d0:	00058693          	mv	a3,a1
   153d4:	00060713          	mv	a4,a2
   153d8:	060e1e63          	bnez	t3,15454 <_vfiprintf_r+0x27c>
   153dc:	41490db3          	sub	s11,s2,s4
   153e0:	23b04ee3          	bgtz	s11,15e1c <_vfiprintf_r+0xc44>
   153e4:	03b14603          	lbu	a2,59(sp)
   153e8:	06060a63          	beqz	a2,1545c <_vfiprintf_r+0x284>
   153ec:	00000e13          	li	t3,0
   153f0:	00012c23          	sw	zero,24(sp)
   153f4:	03b10613          	addi	a2,sp,59
   153f8:	00c7a023          	sw	a2,0(a5)
   153fc:	00168693          	addi	a3,a3,1
   15400:	00100613          	li	a2,1
   15404:	00170713          	addi	a4,a4,1
   15408:	00c7a223          	sw	a2,4(a5)
   1540c:	04d12423          	sw	a3,72(sp)
   15410:	04e12223          	sw	a4,68(sp)
   15414:	00700613          	li	a2,7
   15418:	00878793          	addi	a5,a5,8
   1541c:	16e64ee3          	blt	a2,a4,15d98 <_vfiprintf_r+0xbc0>
   15420:	01812603          	lw	a2,24(sp)
   15424:	02060863          	beqz	a2,15454 <_vfiprintf_r+0x27c>
   15428:	03c10613          	addi	a2,sp,60
   1542c:	00c7a023          	sw	a2,0(a5)
   15430:	00268693          	addi	a3,a3,2
   15434:	00200613          	li	a2,2
   15438:	00170713          	addi	a4,a4,1
   1543c:	00c7a223          	sw	a2,4(a5)
   15440:	04d12423          	sw	a3,72(sp)
   15444:	04e12223          	sw	a4,68(sp)
   15448:	00700613          	li	a2,7
   1544c:	00878793          	addi	a5,a5,8
   15450:	10e64ee3          	blt	a2,a4,15d6c <_vfiprintf_r+0xb94>
   15454:	08000613          	li	a2,128
   15458:	76ce0063          	beq	t3,a2,15bb8 <_vfiprintf_r+0x9e0>
   1545c:	418a8ab3          	sub	s5,s5,s8
   15460:	035044e3          	bgtz	s5,15c88 <_vfiprintf_r+0xab0>
   15464:	00dc06b3          	add	a3,s8,a3
   15468:	00170713          	addi	a4,a4,1
   1546c:	0197a023          	sw	s9,0(a5)
   15470:	0187a223          	sw	s8,4(a5)
   15474:	04d12423          	sw	a3,72(sp)
   15478:	04e12223          	sw	a4,68(sp)
   1547c:	00700613          	li	a2,7
   15480:	00878793          	addi	a5,a5,8
   15484:	0ae648e3          	blt	a2,a4,15d34 <_vfiprintf_r+0xb5c>
   15488:	00447413          	andi	s0,s0,4
   1548c:	00040663          	beqz	s0,15498 <_vfiprintf_r+0x2c0>
   15490:	41490433          	sub	s0,s2,s4
   15494:	0e804c63          	bgtz	s0,1558c <_vfiprintf_r+0x3b4>
   15498:	01495463          	bge	s2,s4,154a0 <_vfiprintf_r+0x2c8>
   1549c:	000a0913          	mv	s2,s4
   154a0:	00812783          	lw	a5,8(sp)
   154a4:	012787b3          	add	a5,a5,s2
   154a8:	00f12423          	sw	a5,8(sp)
   154ac:	0a0694e3          	bnez	a3,15d54 <_vfiprintf_r+0xb7c>
   154b0:	04012223          	sw	zero,68(sp)
   154b4:	000b0793          	mv	a5,s6
   154b8:	e0dff06f          	j	152c4 <_vfiprintf_r+0xec>
   154bc:	000d4683          	lbu	a3,0(s10)
   154c0:	e95ff06f          	j	15354 <_vfiprintf_r+0x17c>
   154c4:	000d4683          	lbu	a3,0(s10)
   154c8:	02046413          	ori	s0,s0,32
   154cc:	e89ff06f          	j	15354 <_vfiprintf_r+0x17c>
   154d0:	00412503          	lw	a0,4(sp)
   154d4:	00098593          	mv	a1,s3
   154d8:	615010ef          	jal	172ec <__swsetup_r>
   154dc:	6e0514e3          	bnez	a0,163c4 <_vfiprintf_r+0x11ec>
   154e0:	00c99783          	lh	a5,12(s3)
   154e4:	00a00713          	li	a4,10
   154e8:	01a7f793          	andi	a5,a5,26
   154ec:	d6e79ae3          	bne	a5,a4,15260 <_vfiprintf_r+0x88>
   154f0:	00e99783          	lh	a5,14(s3)
   154f4:	d607c6e3          	bltz	a5,15260 <_vfiprintf_r+0x88>
   154f8:	00c12683          	lw	a3,12(sp)
   154fc:	00412503          	lw	a0,4(sp)
   15500:	12c12083          	lw	ra,300(sp)
   15504:	000d0613          	mv	a2,s10
   15508:	00098593          	mv	a1,s3
   1550c:	10012d03          	lw	s10,256(sp)
   15510:	11c12983          	lw	s3,284(sp)
   15514:	13010113          	addi	sp,sp,304
   15518:	7290006f          	j	16440 <__sbprintf>
   1551c:	00412503          	lw	a0,4(sp)
   15520:	04010613          	addi	a2,sp,64
   15524:	00098593          	mv	a1,s3
   15528:	7d9000ef          	jal	16500 <__sprint_r>
   1552c:	00051a63          	bnez	a0,15540 <_vfiprintf_r+0x368>
   15530:	000b0793          	mv	a5,s6
   15534:	df1ff06f          	j	15324 <_vfiprintf_r+0x14c>
   15538:	04812783          	lw	a5,72(sp)
   1553c:	5c079ae3          	bnez	a5,16310 <_vfiprintf_r+0x1138>
   15540:	00c9d783          	lhu	a5,12(s3)
   15544:	12812403          	lw	s0,296(sp)
   15548:	12412483          	lw	s1,292(sp)
   1554c:	0407f793          	andi	a5,a5,64
   15550:	12012903          	lw	s2,288(sp)
   15554:	11812a03          	lw	s4,280(sp)
   15558:	11412a83          	lw	s5,276(sp)
   1555c:	11012b03          	lw	s6,272(sp)
   15560:	10c12b83          	lw	s7,268(sp)
   15564:	10812c03          	lw	s8,264(sp)
   15568:	10412c83          	lw	s9,260(sp)
   1556c:	0fc12d83          	lw	s11,252(sp)
   15570:	64079ae3          	bnez	a5,163c4 <_vfiprintf_r+0x11ec>
   15574:	12c12083          	lw	ra,300(sp)
   15578:	00812503          	lw	a0,8(sp)
   1557c:	11c12983          	lw	s3,284(sp)
   15580:	10012d03          	lw	s10,256(sp)
   15584:	13010113          	addi	sp,sp,304
   15588:	00008067          	ret
   1558c:	0001be37          	lui	t3,0x1b
   15590:	01000c13          	li	s8,16
   15594:	04412703          	lw	a4,68(sp)
   15598:	018e0e13          	addi	t3,t3,24 # 1b018 <blanks.1>
   1559c:	00700d93          	li	s11,7
   155a0:	008c4863          	blt	s8,s0,155b0 <_vfiprintf_r+0x3d8>
   155a4:	05c0006f          	j	15600 <_vfiprintf_r+0x428>
   155a8:	ff040413          	addi	s0,s0,-16
   155ac:	048c5a63          	bge	s8,s0,15600 <_vfiprintf_r+0x428>
   155b0:	01068693          	addi	a3,a3,16
   155b4:	00170713          	addi	a4,a4,1
   155b8:	01c7a023          	sw	t3,0(a5)
   155bc:	0187a223          	sw	s8,4(a5)
   155c0:	04d12423          	sw	a3,72(sp)
   155c4:	04e12223          	sw	a4,68(sp)
   155c8:	00878793          	addi	a5,a5,8
   155cc:	fceddee3          	bge	s11,a4,155a8 <_vfiprintf_r+0x3d0>
   155d0:	00412503          	lw	a0,4(sp)
   155d4:	04010613          	addi	a2,sp,64
   155d8:	00098593          	mv	a1,s3
   155dc:	01c12823          	sw	t3,16(sp)
   155e0:	721000ef          	jal	16500 <__sprint_r>
   155e4:	f4051ee3          	bnez	a0,15540 <_vfiprintf_r+0x368>
   155e8:	ff040413          	addi	s0,s0,-16
   155ec:	04812683          	lw	a3,72(sp)
   155f0:	04412703          	lw	a4,68(sp)
   155f4:	01012e03          	lw	t3,16(sp)
   155f8:	000b0793          	mv	a5,s6
   155fc:	fa8c4ae3          	blt	s8,s0,155b0 <_vfiprintf_r+0x3d8>
   15600:	008686b3          	add	a3,a3,s0
   15604:	00170713          	addi	a4,a4,1
   15608:	01c7a023          	sw	t3,0(a5)
   1560c:	0087a223          	sw	s0,4(a5)
   15610:	04d12423          	sw	a3,72(sp)
   15614:	04e12223          	sw	a4,68(sp)
   15618:	00700793          	li	a5,7
   1561c:	e6e7dee3          	bge	a5,a4,15498 <_vfiprintf_r+0x2c0>
   15620:	00412503          	lw	a0,4(sp)
   15624:	04010613          	addi	a2,sp,64
   15628:	00098593          	mv	a1,s3
   1562c:	6d5000ef          	jal	16500 <__sprint_r>
   15630:	f00518e3          	bnez	a0,15540 <_vfiprintf_r+0x368>
   15634:	04812683          	lw	a3,72(sp)
   15638:	e61ff06f          	j	15498 <_vfiprintf_r+0x2c0>
   1563c:	02047713          	andi	a4,s0,32
   15640:	10071e63          	bnez	a4,1575c <_vfiprintf_r+0x584>
   15644:	00c12683          	lw	a3,12(sp)
   15648:	01047713          	andi	a4,s0,16
   1564c:	0006ae03          	lw	t3,0(a3)
   15650:	00468693          	addi	a3,a3,4
   15654:	160718e3          	bnez	a4,15fc4 <_vfiprintf_r+0xdec>
   15658:	04047713          	andi	a4,s0,64
   1565c:	3e070ce3          	beqz	a4,16254 <_vfiprintf_r+0x107c>
   15660:	010e1e13          	slli	t3,t3,0x10
   15664:	410e5e13          	srai	t3,t3,0x10
   15668:	41fe5d93          	srai	s11,t3,0x1f
   1566c:	00d12623          	sw	a3,12(sp)
   15670:	000d8693          	mv	a3,s11
   15674:	1006c663          	bltz	a3,15780 <_vfiprintf_r+0x5a8>
   15678:	120ac463          	bltz	s5,157a0 <_vfiprintf_r+0x5c8>
   1567c:	f7f47413          	andi	s0,s0,-129
   15680:	120a9063          	bnez	s5,157a0 <_vfiprintf_r+0x5c8>
   15684:	01be66b3          	or	a3,t3,s11
   15688:	10069c63          	bnez	a3,157a0 <_vfiprintf_r+0x5c8>
   1568c:	03b14703          	lbu	a4,59(sp)
   15690:	00000c13          	li	s8,0
   15694:	00000a93          	li	s5,0
   15698:	0f010c93          	addi	s9,sp,240
   1569c:	1a070263          	beqz	a4,15840 <_vfiprintf_r+0x668>
   156a0:	00100a13          	li	s4,1
   156a4:	04812683          	lw	a3,72(sp)
   156a8:	04412703          	lw	a4,68(sp)
   156ac:	08447e13          	andi	t3,s0,132
   156b0:	00068593          	mv	a1,a3
   156b4:	00070613          	mv	a2,a4
   156b8:	d20e02e3          	beqz	t3,153dc <_vfiprintf_r+0x204>
   156bc:	00012c23          	sw	zero,24(sp)
   156c0:	d35ff06f          	j	153f4 <_vfiprintf_r+0x21c>
   156c4:	00c12703          	lw	a4,12(sp)
   156c8:	02010da3          	sb	zero,59(sp)
   156cc:	00072c83          	lw	s9,0(a4)
   156d0:	00470d93          	addi	s11,a4,4
   156d4:	340c8ee3          	beqz	s9,16230 <_vfiprintf_r+0x1058>
   156d8:	00f12623          	sw	a5,12(sp)
   156dc:	240ac6e3          	bltz	s5,16128 <_vfiprintf_r+0xf50>
   156e0:	000a8613          	mv	a2,s5
   156e4:	00000593          	li	a1,0
   156e8:	000c8513          	mv	a0,s9
   156ec:	565010ef          	jal	17450 <memchr>
   156f0:	03b14703          	lbu	a4,59(sp)
   156f4:	00c12783          	lw	a5,12(sp)
   156f8:	4a050ae3          	beqz	a0,163ac <_vfiprintf_r+0x11d4>
   156fc:	41950c33          	sub	s8,a0,s9
   15700:	fffc4a13          	not	s4,s8
   15704:	41fa5a13          	srai	s4,s4,0x1f
   15708:	014c7a33          	and	s4,s8,s4
   1570c:	240700e3          	beqz	a4,1614c <_vfiprintf_r+0xf74>
   15710:	001a0a13          	addi	s4,s4,1
   15714:	01b12623          	sw	s11,12(sp)
   15718:	00000a93          	li	s5,0
   1571c:	f89ff06f          	j	156a4 <_vfiprintf_r+0x4cc>
   15720:	00c12703          	lw	a4,12(sp)
   15724:	00100c13          	li	s8,1
   15728:	02010da3          	sb	zero,59(sp)
   1572c:	00072703          	lw	a4,0(a4)
   15730:	000c0a13          	mv	s4,s8
   15734:	00000a93          	li	s5,0
   15738:	08e10623          	sb	a4,140(sp)
   1573c:	00c12703          	lw	a4,12(sp)
   15740:	08c10c93          	addi	s9,sp,140
   15744:	00470713          	addi	a4,a4,4
   15748:	00e12623          	sw	a4,12(sp)
   1574c:	c79ff06f          	j	153c4 <_vfiprintf_r+0x1ec>
   15750:	02047713          	andi	a4,s0,32
   15754:	01046413          	ori	s0,s0,16
   15758:	060702e3          	beqz	a4,15fbc <_vfiprintf_r+0xde4>
   1575c:	00c12703          	lw	a4,12(sp)
   15760:	00770713          	addi	a4,a4,7
   15764:	ff877713          	andi	a4,a4,-8
   15768:	00472683          	lw	a3,4(a4)
   1576c:	00870613          	addi	a2,a4,8
   15770:	00c12623          	sw	a2,12(sp)
   15774:	00072e03          	lw	t3,0(a4)
   15778:	00068d93          	mv	s11,a3
   1577c:	ee06dee3          	bgez	a3,15678 <_vfiprintf_r+0x4a0>
   15780:	01c036b3          	snez	a3,t3
   15784:	41b00733          	neg	a4,s11
   15788:	40d70db3          	sub	s11,a4,a3
   1578c:	02d00693          	li	a3,45
   15790:	02d10da3          	sb	a3,59(sp)
   15794:	41c00e33          	neg	t3,t3
   15798:	000ac463          	bltz	s5,157a0 <_vfiprintf_r+0x5c8>
   1579c:	f7f47413          	andi	s0,s0,-129
   157a0:	0c0d9c63          	bnez	s11,15878 <_vfiprintf_r+0x6a0>
   157a4:	00900693          	li	a3,9
   157a8:	0dc6e863          	bltu	a3,t3,15878 <_vfiprintf_r+0x6a0>
   157ac:	030e0e13          	addi	t3,t3,48
   157b0:	0fc107a3          	sb	t3,239(sp)
   157b4:	000a8a13          	mv	s4,s5
   157b8:	01504463          	bgtz	s5,157c0 <_vfiprintf_r+0x5e8>
   157bc:	00100a13          	li	s4,1
   157c0:	03b14703          	lbu	a4,59(sp)
   157c4:	72071463          	bnez	a4,15eec <_vfiprintf_r+0xd14>
   157c8:	00100c13          	li	s8,1
   157cc:	0ef10c93          	addi	s9,sp,239
   157d0:	bf5ff06f          	j	153c4 <_vfiprintf_r+0x1ec>
   157d4:	00c12703          	lw	a4,12(sp)
   157d8:	00072903          	lw	s2,0(a4)
   157dc:	70095063          	bgez	s2,15edc <_vfiprintf_r+0xd04>
   157e0:	00c12703          	lw	a4,12(sp)
   157e4:	41200933          	neg	s2,s2
   157e8:	00470713          	addi	a4,a4,4
   157ec:	00e12623          	sw	a4,12(sp)
   157f0:	000d4683          	lbu	a3,0(s10)
   157f4:	00446413          	ori	s0,s0,4
   157f8:	b5dff06f          	j	15354 <_vfiprintf_r+0x17c>
   157fc:	02047713          	andi	a4,s0,32
   15800:	01046413          	ori	s0,s0,16
   15804:	04071663          	bnez	a4,15850 <_vfiprintf_r+0x678>
   15808:	00c12703          	lw	a4,12(sp)
   1580c:	00470693          	addi	a3,a4,4
   15810:	00c12703          	lw	a4,12(sp)
   15814:	02010da3          	sb	zero,59(sp)
   15818:	00d12623          	sw	a3,12(sp)
   1581c:	00072e03          	lw	t3,0(a4)
   15820:	00000d93          	li	s11,0
   15824:	f80ac0e3          	bltz	s5,157a4 <_vfiprintf_r+0x5cc>
   15828:	f7f47413          	andi	s0,s0,-129
   1582c:	f60a9ae3          	bnez	s5,157a0 <_vfiprintf_r+0x5c8>
   15830:	01be66b3          	or	a3,t3,s11
   15834:	f60696e3          	bnez	a3,157a0 <_vfiprintf_r+0x5c8>
   15838:	00000c13          	li	s8,0
   1583c:	0f010c93          	addi	s9,sp,240
   15840:	00000a13          	li	s4,0
   15844:	b81ff06f          	j	153c4 <_vfiprintf_r+0x1ec>
   15848:	02047713          	andi	a4,s0,32
   1584c:	6e070063          	beqz	a4,15f2c <_vfiprintf_r+0xd54>
   15850:	00c12703          	lw	a4,12(sp)
   15854:	02010da3          	sb	zero,59(sp)
   15858:	00770713          	addi	a4,a4,7
   1585c:	ff877713          	andi	a4,a4,-8
   15860:	00870693          	addi	a3,a4,8
   15864:	00d12623          	sw	a3,12(sp)
   15868:	00072e03          	lw	t3,0(a4)
   1586c:	00472d83          	lw	s11,4(a4)
   15870:	fa0adce3          	bgez	s5,15828 <_vfiprintf_r+0x650>
   15874:	f20d88e3          	beqz	s11,157a4 <_vfiprintf_r+0x5cc>
   15878:	40047713          	andi	a4,s0,1024
   1587c:	02e12423          	sw	a4,40(sp)
   15880:	00000c13          	li	s8,0
   15884:	0f010a13          	addi	s4,sp,240
   15888:	03c0006f          	j	158c4 <_vfiprintf_r+0x6ec>
   1588c:	000e0513          	mv	a0,t3
   15890:	000d8593          	mv	a1,s11
   15894:	00a00613          	li	a2,10
   15898:	00000693          	li	a3,0
   1589c:	03c12623          	sw	t3,44(sp)
   158a0:	01b12c23          	sw	s11,24(sp)
   158a4:	00f12823          	sw	a5,16(sp)
   158a8:	634040ef          	jal	19edc <__udivdi3>
   158ac:	01812703          	lw	a4,24(sp)
   158b0:	01012783          	lw	a5,16(sp)
   158b4:	000c8a13          	mv	s4,s9
   158b8:	00050e13          	mv	t3,a0
   158bc:	00058d93          	mv	s11,a1
   158c0:	2c070ee3          	beqz	a4,1639c <_vfiprintf_r+0x11c4>
   158c4:	000e0513          	mv	a0,t3
   158c8:	00a00613          	li	a2,10
   158cc:	00000693          	li	a3,0
   158d0:	000d8593          	mv	a1,s11
   158d4:	00f12c23          	sw	a5,24(sp)
   158d8:	01c12823          	sw	t3,16(sp)
   158dc:	3b5040ef          	jal	1a490 <__umoddi3>
   158e0:	02812703          	lw	a4,40(sp)
   158e4:	03050513          	addi	a0,a0,48
   158e8:	feaa0fa3          	sb	a0,-1(s4)
   158ec:	01012e03          	lw	t3,16(sp)
   158f0:	01812783          	lw	a5,24(sp)
   158f4:	fffa0c93          	addi	s9,s4,-1
   158f8:	001c0c13          	addi	s8,s8,1
   158fc:	f80708e3          	beqz	a4,1588c <_vfiprintf_r+0x6b4>
   15900:	01c12703          	lw	a4,28(sp)
   15904:	00074683          	lbu	a3,0(a4)
   15908:	f98692e3          	bne	a3,s8,1588c <_vfiprintf_r+0x6b4>
   1590c:	f0168693          	addi	a3,a3,-255
   15910:	f6068ee3          	beqz	a3,1588c <_vfiprintf_r+0x6b4>
   15914:	200d98e3          	bnez	s11,16324 <_vfiprintf_r+0x114c>
   15918:	00900693          	li	a3,9
   1591c:	21c6e4e3          	bltu	a3,t3,16324 <_vfiprintf_r+0x114c>
   15920:	0f010713          	addi	a4,sp,240
   15924:	41970c33          	sub	s8,a4,s9
   15928:	000a8a13          	mv	s4,s5
   1592c:	03b14703          	lbu	a4,59(sp)
   15930:	018ad463          	bge	s5,s8,15938 <_vfiprintf_r+0x760>
   15934:	000c0a13          	mv	s4,s8
   15938:	00e03733          	snez	a4,a4
   1593c:	00ea0a33          	add	s4,s4,a4
   15940:	77c0006f          	j	160bc <_vfiprintf_r+0xee4>
   15944:	000d4683          	lbu	a3,0(s10)
   15948:	06800713          	li	a4,104
   1594c:	0ae686e3          	beq	a3,a4,161f8 <_vfiprintf_r+0x1020>
   15950:	04046413          	ori	s0,s0,64
   15954:	a01ff06f          	j	15354 <_vfiprintf_r+0x17c>
   15958:	02047713          	andi	a4,s0,32
   1595c:	01046a13          	ori	s4,s0,16
   15960:	64070063          	beqz	a4,15fa0 <_vfiprintf_r+0xdc8>
   15964:	00c12703          	lw	a4,12(sp)
   15968:	00770693          	addi	a3,a4,7
   1596c:	ff86f693          	andi	a3,a3,-8
   15970:	00868713          	addi	a4,a3,8
   15974:	00e12623          	sw	a4,12(sp)
   15978:	0046a603          	lw	a2,4(a3)
   1597c:	0006a703          	lw	a4,0(a3)
   15980:	02010da3          	sb	zero,59(sp)
   15984:	bffa7413          	andi	s0,s4,-1025
   15988:	420ace63          	bltz	s5,15dc4 <_vfiprintf_r+0xbec>
   1598c:	b7fa7413          	andi	s0,s4,-1153
   15990:	420a9a63          	bnez	s5,15dc4 <_vfiprintf_r+0xbec>
   15994:	00c766b3          	or	a3,a4,a2
   15998:	42069663          	bnez	a3,15dc4 <_vfiprintf_r+0xbec>
   1599c:	001a7a13          	andi	s4,s4,1
   159a0:	6a0a0263          	beqz	s4,16044 <_vfiprintf_r+0xe6c>
   159a4:	03000713          	li	a4,48
   159a8:	0ee107a3          	sb	a4,239(sp)
   159ac:	000a0c13          	mv	s8,s4
   159b0:	0ef10c93          	addi	s9,sp,239
   159b4:	a11ff06f          	j	153c4 <_vfiprintf_r+0x1ec>
   159b8:	02b00713          	li	a4,43
   159bc:	000d4683          	lbu	a3,0(s10)
   159c0:	02e10da3          	sb	a4,59(sp)
   159c4:	991ff06f          	j	15354 <_vfiprintf_r+0x17c>
   159c8:	00412c03          	lw	s8,4(sp)
   159cc:	00f12823          	sw	a5,16(sp)
   159d0:	000c0513          	mv	a0,s8
   159d4:	0b8020ef          	jal	17a8c <_localeconv_r>
   159d8:	00452783          	lw	a5,4(a0)
   159dc:	00078513          	mv	a0,a5
   159e0:	02f12023          	sw	a5,32(sp)
   159e4:	768020ef          	jal	1814c <strlen>
   159e8:	00050713          	mv	a4,a0
   159ec:	000c0513          	mv	a0,s8
   159f0:	02e12223          	sw	a4,36(sp)
   159f4:	00070c13          	mv	s8,a4
   159f8:	094020ef          	jal	17a8c <_localeconv_r>
   159fc:	00852783          	lw	a5,8(a0)
   15a00:	000d4683          	lbu	a3,0(s10)
   15a04:	00f12e23          	sw	a5,28(sp)
   15a08:	01012783          	lw	a5,16(sp)
   15a0c:	940c04e3          	beqz	s8,15354 <_vfiprintf_r+0x17c>
   15a10:	01c12703          	lw	a4,28(sp)
   15a14:	940700e3          	beqz	a4,15354 <_vfiprintf_r+0x17c>
   15a18:	00074703          	lbu	a4,0(a4)
   15a1c:	92070ce3          	beqz	a4,15354 <_vfiprintf_r+0x17c>
   15a20:	40046413          	ori	s0,s0,1024
   15a24:	931ff06f          	j	15354 <_vfiprintf_r+0x17c>
   15a28:	000d4683          	lbu	a3,0(s10)
   15a2c:	08046413          	ori	s0,s0,128
   15a30:	925ff06f          	j	15354 <_vfiprintf_r+0x17c>
   15a34:	000d4683          	lbu	a3,0(s10)
   15a38:	02a00713          	li	a4,42
   15a3c:	001d0593          	addi	a1,s10,1
   15a40:	1ae684e3          	beq	a3,a4,163e8 <_vfiprintf_r+0x1210>
   15a44:	fd068613          	addi	a2,a3,-48
   15a48:	00900513          	li	a0,9
   15a4c:	00000813          	li	a6,0
   15a50:	00058d13          	mv	s10,a1
   15a54:	00000a93          	li	s5,0
   15a58:	90c560e3          	bltu	a0,a2,15358 <_vfiprintf_r+0x180>
   15a5c:	00281713          	slli	a4,a6,0x2
   15a60:	0005c683          	lbu	a3,0(a1)
   15a64:	01070733          	add	a4,a4,a6
   15a68:	00171713          	slli	a4,a4,0x1
   15a6c:	00c70833          	add	a6,a4,a2
   15a70:	fd068613          	addi	a2,a3,-48
   15a74:	00158593          	addi	a1,a1,1
   15a78:	fec572e3          	bgeu	a0,a2,15a5c <_vfiprintf_r+0x884>
   15a7c:	00080a93          	mv	s5,a6
   15a80:	5c084a63          	bltz	a6,16054 <_vfiprintf_r+0xe7c>
   15a84:	00058d13          	mv	s10,a1
   15a88:	8d1ff06f          	j	15358 <_vfiprintf_r+0x180>
   15a8c:	000d4683          	lbu	a3,0(s10)
   15a90:	00146413          	ori	s0,s0,1
   15a94:	8c1ff06f          	j	15354 <_vfiprintf_r+0x17c>
   15a98:	03b14703          	lbu	a4,59(sp)
   15a9c:	000d4683          	lbu	a3,0(s10)
   15aa0:	8a071ae3          	bnez	a4,15354 <_vfiprintf_r+0x17c>
   15aa4:	02000713          	li	a4,32
   15aa8:	02e10da3          	sb	a4,59(sp)
   15aac:	8a9ff06f          	j	15354 <_vfiprintf_r+0x17c>
   15ab0:	00008737          	lui	a4,0x8
   15ab4:	83070713          	addi	a4,a4,-2000 # 7830 <exit-0x8884>
   15ab8:	02e11e23          	sh	a4,60(sp)
   15abc:	00c12703          	lw	a4,12(sp)
   15ac0:	02010da3          	sb	zero,59(sp)
   15ac4:	00000613          	li	a2,0
   15ac8:	00470693          	addi	a3,a4,4
   15acc:	00072703          	lw	a4,0(a4)
   15ad0:	500aca63          	bltz	s5,15fe4 <_vfiprintf_r+0xe0c>
   15ad4:	f7f47413          	andi	s0,s0,-129
   15ad8:	00246413          	ori	s0,s0,2
   15adc:	120718e3          	bnez	a4,1640c <_vfiprintf_r+0x1234>
   15ae0:	120a96e3          	bnez	s5,1640c <_vfiprintf_r+0x1234>
   15ae4:	00d12623          	sw	a3,12(sp)
   15ae8:	00000c13          	li	s8,0
   15aec:	00000a13          	li	s4,0
   15af0:	0f010c93          	addi	s9,sp,240
   15af4:	04812583          	lw	a1,72(sp)
   15af8:	04412603          	lw	a2,68(sp)
   15afc:	08447e13          	andi	t3,s0,132
   15b00:	002a0a13          	addi	s4,s4,2
   15b04:	00058693          	mv	a3,a1
   15b08:	00060713          	mv	a4,a2
   15b0c:	900e1ee3          	bnez	t3,15428 <_vfiprintf_r+0x250>
   15b10:	41490db3          	sub	s11,s2,s4
   15b14:	91b05ae3          	blez	s11,15428 <_vfiprintf_r+0x250>
   15b18:	00200713          	li	a4,2
   15b1c:	00e12c23          	sw	a4,24(sp)
   15b20:	3000006f          	j	15e20 <_vfiprintf_r+0xc48>
   15b24:	02047713          	andi	a4,s0,32
   15b28:	4a071a63          	bnez	a4,15fdc <_vfiprintf_r+0xe04>
   15b2c:	00c12703          	lw	a4,12(sp)
   15b30:	00c12683          	lw	a3,12(sp)
   15b34:	01047613          	andi	a2,s0,16
   15b38:	00072703          	lw	a4,0(a4)
   15b3c:	00468693          	addi	a3,a3,4
   15b40:	0e0610e3          	bnez	a2,16420 <_vfiprintf_r+0x1248>
   15b44:	04047613          	andi	a2,s0,64
   15b48:	72060663          	beqz	a2,16274 <_vfiprintf_r+0x109c>
   15b4c:	01071713          	slli	a4,a4,0x10
   15b50:	01075713          	srli	a4,a4,0x10
   15b54:	00d12623          	sw	a3,12(sp)
   15b58:	00040a13          	mv	s4,s0
   15b5c:	00000613          	li	a2,0
   15b60:	e21ff06f          	j	15980 <_vfiprintf_r+0x7a8>
   15b64:	00c12683          	lw	a3,12(sp)
   15b68:	02047713          	andi	a4,s0,32
   15b6c:	00468693          	addi	a3,a3,4
   15b70:	40071663          	bnez	a4,15f7c <_vfiprintf_r+0xda4>
   15b74:	01047713          	andi	a4,s0,16
   15b78:	6a071063          	bnez	a4,16218 <_vfiprintf_r+0x1040>
   15b7c:	04047713          	andi	a4,s0,64
   15b80:	74071063          	bnez	a4,162c0 <_vfiprintf_r+0x10e8>
   15b84:	20047413          	andi	s0,s0,512
   15b88:	68040863          	beqz	s0,16218 <_vfiprintf_r+0x1040>
   15b8c:	00c12703          	lw	a4,12(sp)
   15b90:	00812603          	lw	a2,8(sp)
   15b94:	00d12623          	sw	a3,12(sp)
   15b98:	00072703          	lw	a4,0(a4)
   15b9c:	00c70023          	sb	a2,0(a4)
   15ba0:	f24ff06f          	j	152c4 <_vfiprintf_r+0xec>
   15ba4:	000d4683          	lbu	a3,0(s10)
   15ba8:	06c00713          	li	a4,108
   15bac:	64e68e63          	beq	a3,a4,16208 <_vfiprintf_r+0x1030>
   15bb0:	01046413          	ori	s0,s0,16
   15bb4:	fa0ff06f          	j	15354 <_vfiprintf_r+0x17c>
   15bb8:	41490db3          	sub	s11,s2,s4
   15bbc:	8bb050e3          	blez	s11,1545c <_vfiprintf_r+0x284>
   15bc0:	0001b637          	lui	a2,0x1b
   15bc4:	00860613          	addi	a2,a2,8 # 1b008 <zeroes.0>
   15bc8:	01000e93          	li	t4,16
   15bcc:	00c12823          	sw	a2,16(sp)
   15bd0:	00700f13          	li	t5,7
   15bd4:	01bec863          	blt	t4,s11,15be4 <_vfiprintf_r+0xa0c>
   15bd8:	0600006f          	j	15c38 <_vfiprintf_r+0xa60>
   15bdc:	ff0d8d93          	addi	s11,s11,-16
   15be0:	05bedc63          	bge	t4,s11,15c38 <_vfiprintf_r+0xa60>
   15be4:	01012603          	lw	a2,16(sp)
   15be8:	01068693          	addi	a3,a3,16
   15bec:	00170713          	addi	a4,a4,1
   15bf0:	00c7a023          	sw	a2,0(a5)
   15bf4:	01d7a223          	sw	t4,4(a5)
   15bf8:	04d12423          	sw	a3,72(sp)
   15bfc:	04e12223          	sw	a4,68(sp)
   15c00:	00878793          	addi	a5,a5,8
   15c04:	fcef5ce3          	bge	t5,a4,15bdc <_vfiprintf_r+0xa04>
   15c08:	00412503          	lw	a0,4(sp)
   15c0c:	04010613          	addi	a2,sp,64
   15c10:	00098593          	mv	a1,s3
   15c14:	0ed000ef          	jal	16500 <__sprint_r>
   15c18:	920514e3          	bnez	a0,15540 <_vfiprintf_r+0x368>
   15c1c:	01000e93          	li	t4,16
   15c20:	ff0d8d93          	addi	s11,s11,-16
   15c24:	04812683          	lw	a3,72(sp)
   15c28:	04412703          	lw	a4,68(sp)
   15c2c:	000b0793          	mv	a5,s6
   15c30:	00700f13          	li	t5,7
   15c34:	fbbec8e3          	blt	t4,s11,15be4 <_vfiprintf_r+0xa0c>
   15c38:	01012603          	lw	a2,16(sp)
   15c3c:	01b686b3          	add	a3,a3,s11
   15c40:	00170713          	addi	a4,a4,1
   15c44:	00c7a023          	sw	a2,0(a5)
   15c48:	01b7a223          	sw	s11,4(a5)
   15c4c:	04d12423          	sw	a3,72(sp)
   15c50:	04e12223          	sw	a4,68(sp)
   15c54:	00700613          	li	a2,7
   15c58:	00878793          	addi	a5,a5,8
   15c5c:	80e650e3          	bge	a2,a4,1545c <_vfiprintf_r+0x284>
   15c60:	00412503          	lw	a0,4(sp)
   15c64:	04010613          	addi	a2,sp,64
   15c68:	00098593          	mv	a1,s3
   15c6c:	095000ef          	jal	16500 <__sprint_r>
   15c70:	8c0518e3          	bnez	a0,15540 <_vfiprintf_r+0x368>
   15c74:	04812683          	lw	a3,72(sp)
   15c78:	04412703          	lw	a4,68(sp)
   15c7c:	418a8ab3          	sub	s5,s5,s8
   15c80:	000b0793          	mv	a5,s6
   15c84:	ff505063          	blez	s5,15464 <_vfiprintf_r+0x28c>
   15c88:	6354d063          	bge	s1,s5,162a8 <_vfiprintf_r+0x10d0>
   15c8c:	01712823          	sw	s7,16(sp)
   15c90:	00700d93          	li	s11,7
   15c94:	00c0006f          	j	15ca0 <_vfiprintf_r+0xac8>
   15c98:	ff0a8a93          	addi	s5,s5,-16
   15c9c:	0554d663          	bge	s1,s5,15ce8 <_vfiprintf_r+0xb10>
   15ca0:	01068693          	addi	a3,a3,16
   15ca4:	00170713          	addi	a4,a4,1
   15ca8:	0177a023          	sw	s7,0(a5)
   15cac:	0097a223          	sw	s1,4(a5)
   15cb0:	04d12423          	sw	a3,72(sp)
   15cb4:	04e12223          	sw	a4,68(sp)
   15cb8:	00878793          	addi	a5,a5,8
   15cbc:	fceddee3          	bge	s11,a4,15c98 <_vfiprintf_r+0xac0>
   15cc0:	00412503          	lw	a0,4(sp)
   15cc4:	04010613          	addi	a2,sp,64
   15cc8:	00098593          	mv	a1,s3
   15ccc:	035000ef          	jal	16500 <__sprint_r>
   15cd0:	860518e3          	bnez	a0,15540 <_vfiprintf_r+0x368>
   15cd4:	ff0a8a93          	addi	s5,s5,-16
   15cd8:	04812683          	lw	a3,72(sp)
   15cdc:	04412703          	lw	a4,68(sp)
   15ce0:	000b0793          	mv	a5,s6
   15ce4:	fb54cee3          	blt	s1,s5,15ca0 <_vfiprintf_r+0xac8>
   15ce8:	01012603          	lw	a2,16(sp)
   15cec:	015686b3          	add	a3,a3,s5
   15cf0:	00170713          	addi	a4,a4,1
   15cf4:	00c7a023          	sw	a2,0(a5)
   15cf8:	0157a223          	sw	s5,4(a5)
   15cfc:	04d12423          	sw	a3,72(sp)
   15d00:	04e12223          	sw	a4,68(sp)
   15d04:	00700613          	li	a2,7
   15d08:	00878793          	addi	a5,a5,8
   15d0c:	f4e65c63          	bge	a2,a4,15464 <_vfiprintf_r+0x28c>
   15d10:	00412503          	lw	a0,4(sp)
   15d14:	04010613          	addi	a2,sp,64
   15d18:	00098593          	mv	a1,s3
   15d1c:	7e4000ef          	jal	16500 <__sprint_r>
   15d20:	820510e3          	bnez	a0,15540 <_vfiprintf_r+0x368>
   15d24:	04812683          	lw	a3,72(sp)
   15d28:	04412703          	lw	a4,68(sp)
   15d2c:	000b0793          	mv	a5,s6
   15d30:	f34ff06f          	j	15464 <_vfiprintf_r+0x28c>
   15d34:	00412503          	lw	a0,4(sp)
   15d38:	04010613          	addi	a2,sp,64
   15d3c:	00098593          	mv	a1,s3
   15d40:	7c0000ef          	jal	16500 <__sprint_r>
   15d44:	fe051e63          	bnez	a0,15540 <_vfiprintf_r+0x368>
   15d48:	04812683          	lw	a3,72(sp)
   15d4c:	000b0793          	mv	a5,s6
   15d50:	f38ff06f          	j	15488 <_vfiprintf_r+0x2b0>
   15d54:	00412503          	lw	a0,4(sp)
   15d58:	04010613          	addi	a2,sp,64
   15d5c:	00098593          	mv	a1,s3
   15d60:	7a0000ef          	jal	16500 <__sprint_r>
   15d64:	f4050663          	beqz	a0,154b0 <_vfiprintf_r+0x2d8>
   15d68:	fd8ff06f          	j	15540 <_vfiprintf_r+0x368>
   15d6c:	00412503          	lw	a0,4(sp)
   15d70:	04010613          	addi	a2,sp,64
   15d74:	00098593          	mv	a1,s3
   15d78:	01c12823          	sw	t3,16(sp)
   15d7c:	784000ef          	jal	16500 <__sprint_r>
   15d80:	fc051063          	bnez	a0,15540 <_vfiprintf_r+0x368>
   15d84:	04812683          	lw	a3,72(sp)
   15d88:	04412703          	lw	a4,68(sp)
   15d8c:	01012e03          	lw	t3,16(sp)
   15d90:	000b0793          	mv	a5,s6
   15d94:	ec0ff06f          	j	15454 <_vfiprintf_r+0x27c>
   15d98:	00412503          	lw	a0,4(sp)
   15d9c:	04010613          	addi	a2,sp,64
   15da0:	00098593          	mv	a1,s3
   15da4:	01c12823          	sw	t3,16(sp)
   15da8:	758000ef          	jal	16500 <__sprint_r>
   15dac:	f8051a63          	bnez	a0,15540 <_vfiprintf_r+0x368>
   15db0:	04812683          	lw	a3,72(sp)
   15db4:	04412703          	lw	a4,68(sp)
   15db8:	01012e03          	lw	t3,16(sp)
   15dbc:	000b0793          	mv	a5,s6
   15dc0:	e60ff06f          	j	15420 <_vfiprintf_r+0x248>
   15dc4:	0f010c93          	addi	s9,sp,240
   15dc8:	01d61593          	slli	a1,a2,0x1d
   15dcc:	00777693          	andi	a3,a4,7
   15dd0:	00375713          	srli	a4,a4,0x3
   15dd4:	000c8513          	mv	a0,s9
   15dd8:	00e58733          	add	a4,a1,a4
   15ddc:	03068693          	addi	a3,a3,48
   15de0:	00365613          	srli	a2,a2,0x3
   15de4:	00c765b3          	or	a1,a4,a2
   15de8:	fedc8fa3          	sb	a3,-1(s9)
   15dec:	fffc8c93          	addi	s9,s9,-1
   15df0:	fc059ce3          	bnez	a1,15dc8 <_vfiprintf_r+0xbf0>
   15df4:	fd068693          	addi	a3,a3,-48
   15df8:	00068663          	beqz	a3,15e04 <_vfiprintf_r+0xc2c>
   15dfc:	00147713          	andi	a4,s0,1
   15e00:	10071263          	bnez	a4,15f04 <_vfiprintf_r+0xd2c>
   15e04:	0f010713          	addi	a4,sp,240
   15e08:	41970c33          	sub	s8,a4,s9
   15e0c:	000a8a13          	mv	s4,s5
   15e10:	db8ada63          	bge	s5,s8,153c4 <_vfiprintf_r+0x1ec>
   15e14:	000c0a13          	mv	s4,s8
   15e18:	dacff06f          	j	153c4 <_vfiprintf_r+0x1ec>
   15e1c:	00012c23          	sw	zero,24(sp)
   15e20:	0001be37          	lui	t3,0x1b
   15e24:	01000f93          	li	t6,16
   15e28:	00058693          	mv	a3,a1
   15e2c:	00060713          	mv	a4,a2
   15e30:	018e0e13          	addi	t3,t3,24 # 1b018 <blanks.1>
   15e34:	00700f13          	li	t5,7
   15e38:	01bfc863          	blt	t6,s11,15e48 <_vfiprintf_r+0xc70>
   15e3c:	0640006f          	j	15ea0 <_vfiprintf_r+0xcc8>
   15e40:	ff0d8d93          	addi	s11,s11,-16
   15e44:	05bfde63          	bge	t6,s11,15ea0 <_vfiprintf_r+0xcc8>
   15e48:	01068693          	addi	a3,a3,16
   15e4c:	00170713          	addi	a4,a4,1
   15e50:	01c7a023          	sw	t3,0(a5)
   15e54:	01f7a223          	sw	t6,4(a5)
   15e58:	04d12423          	sw	a3,72(sp)
   15e5c:	04e12223          	sw	a4,68(sp)
   15e60:	00878793          	addi	a5,a5,8
   15e64:	fcef5ee3          	bge	t5,a4,15e40 <_vfiprintf_r+0xc68>
   15e68:	00412503          	lw	a0,4(sp)
   15e6c:	04010613          	addi	a2,sp,64
   15e70:	00098593          	mv	a1,s3
   15e74:	01c12823          	sw	t3,16(sp)
   15e78:	688000ef          	jal	16500 <__sprint_r>
   15e7c:	ec051263          	bnez	a0,15540 <_vfiprintf_r+0x368>
   15e80:	01000f93          	li	t6,16
   15e84:	ff0d8d93          	addi	s11,s11,-16
   15e88:	04812683          	lw	a3,72(sp)
   15e8c:	04412703          	lw	a4,68(sp)
   15e90:	01012e03          	lw	t3,16(sp)
   15e94:	000b0793          	mv	a5,s6
   15e98:	00700f13          	li	t5,7
   15e9c:	fbbfc6e3          	blt	t6,s11,15e48 <_vfiprintf_r+0xc70>
   15ea0:	00dd86b3          	add	a3,s11,a3
   15ea4:	00170713          	addi	a4,a4,1
   15ea8:	04d12423          	sw	a3,72(sp)
   15eac:	04e12223          	sw	a4,68(sp)
   15eb0:	01c7a023          	sw	t3,0(a5)
   15eb4:	01b7a223          	sw	s11,4(a5)
   15eb8:	00700613          	li	a2,7
   15ebc:	2ce64c63          	blt	a2,a4,16194 <_vfiprintf_r+0xfbc>
   15ec0:	03b14603          	lbu	a2,59(sp)
   15ec4:	00878793          	addi	a5,a5,8
   15ec8:	02061a63          	bnez	a2,15efc <_vfiprintf_r+0xd24>
   15ecc:	01812603          	lw	a2,24(sp)
   15ed0:	d8060663          	beqz	a2,1545c <_vfiprintf_r+0x284>
   15ed4:	00000e13          	li	t3,0
   15ed8:	d50ff06f          	j	15428 <_vfiprintf_r+0x250>
   15edc:	00470713          	addi	a4,a4,4
   15ee0:	000d4683          	lbu	a3,0(s10)
   15ee4:	00e12623          	sw	a4,12(sp)
   15ee8:	c6cff06f          	j	15354 <_vfiprintf_r+0x17c>
   15eec:	001a0a13          	addi	s4,s4,1
   15ef0:	00100c13          	li	s8,1
   15ef4:	0ef10c93          	addi	s9,sp,239
   15ef8:	facff06f          	j	156a4 <_vfiprintf_r+0x4cc>
   15efc:	00000e13          	li	t3,0
   15f00:	cf4ff06f          	j	153f4 <_vfiprintf_r+0x21c>
   15f04:	ffe50513          	addi	a0,a0,-2
   15f08:	03000713          	li	a4,48
   15f0c:	0f010693          	addi	a3,sp,240
   15f10:	40a68c33          	sub	s8,a3,a0
   15f14:	feec8fa3          	sb	a4,-1(s9)
   15f18:	000a8a13          	mv	s4,s5
   15f1c:	018ad463          	bge	s5,s8,15f24 <_vfiprintf_r+0xd4c>
   15f20:	000c0a13          	mv	s4,s8
   15f24:	00050c93          	mv	s9,a0
   15f28:	c9cff06f          	j	153c4 <_vfiprintf_r+0x1ec>
   15f2c:	00c12703          	lw	a4,12(sp)
   15f30:	01047a13          	andi	s4,s0,16
   15f34:	00072e03          	lw	t3,0(a4)
   15f38:	00470693          	addi	a3,a4,4
   15f3c:	8c0a1ae3          	bnez	s4,15810 <_vfiprintf_r+0x638>
   15f40:	04047713          	andi	a4,s0,64
   15f44:	20070a63          	beqz	a4,16158 <_vfiprintf_r+0xf80>
   15f48:	010e1e13          	slli	t3,t3,0x10
   15f4c:	02010da3          	sb	zero,59(sp)
   15f50:	010e5e13          	srli	t3,t3,0x10
   15f54:	00000d93          	li	s11,0
   15f58:	200acc63          	bltz	s5,16170 <_vfiprintf_r+0xf98>
   15f5c:	f7f47413          	andi	s0,s0,-129
   15f60:	200a9863          	bnez	s5,16170 <_vfiprintf_r+0xf98>
   15f64:	01be6633          	or	a2,t3,s11
   15f68:	20061463          	bnez	a2,16170 <_vfiprintf_r+0xf98>
   15f6c:	00d12623          	sw	a3,12(sp)
   15f70:	00000c13          	li	s8,0
   15f74:	0f010c93          	addi	s9,sp,240
   15f78:	c4cff06f          	j	153c4 <_vfiprintf_r+0x1ec>
   15f7c:	00c12703          	lw	a4,12(sp)
   15f80:	00812603          	lw	a2,8(sp)
   15f84:	00812583          	lw	a1,8(sp)
   15f88:	00072703          	lw	a4,0(a4)
   15f8c:	41f65613          	srai	a2,a2,0x1f
   15f90:	00d12623          	sw	a3,12(sp)
   15f94:	00b72023          	sw	a1,0(a4)
   15f98:	00c72223          	sw	a2,4(a4)
   15f9c:	b28ff06f          	j	152c4 <_vfiprintf_r+0xec>
   15fa0:	00c12703          	lw	a4,12(sp)
   15fa4:	00470693          	addi	a3,a4,4
   15fa8:	00c12703          	lw	a4,12(sp)
   15fac:	00000613          	li	a2,0
   15fb0:	00d12623          	sw	a3,12(sp)
   15fb4:	00072703          	lw	a4,0(a4)
   15fb8:	9c9ff06f          	j	15980 <_vfiprintf_r+0x7a8>
   15fbc:	00c12703          	lw	a4,12(sp)
   15fc0:	00470693          	addi	a3,a4,4
   15fc4:	00c12703          	lw	a4,12(sp)
   15fc8:	00d12623          	sw	a3,12(sp)
   15fcc:	00072e03          	lw	t3,0(a4)
   15fd0:	41fe5d93          	srai	s11,t3,0x1f
   15fd4:	000d8693          	mv	a3,s11
   15fd8:	e9cff06f          	j	15674 <_vfiprintf_r+0x49c>
   15fdc:	00040a13          	mv	s4,s0
   15fe0:	985ff06f          	j	15964 <_vfiprintf_r+0x78c>
   15fe4:	0001b537          	lui	a0,0x1b
   15fe8:	00246413          	ori	s0,s0,2
   15fec:	00d12623          	sw	a3,12(sp)
   15ff0:	cf850513          	addi	a0,a0,-776 # 1acf8 <_exit+0x214>
   15ff4:	00200e13          	li	t3,2
   15ff8:	0f010c93          	addi	s9,sp,240
   15ffc:	00f77693          	andi	a3,a4,15
   16000:	00d506b3          	add	a3,a0,a3
   16004:	0006c683          	lbu	a3,0(a3)
   16008:	01c61593          	slli	a1,a2,0x1c
   1600c:	00475713          	srli	a4,a4,0x4
   16010:	00e58733          	add	a4,a1,a4
   16014:	00465613          	srli	a2,a2,0x4
   16018:	fedc8fa3          	sb	a3,-1(s9)
   1601c:	00c766b3          	or	a3,a4,a2
   16020:	fffc8c93          	addi	s9,s9,-1
   16024:	fc069ce3          	bnez	a3,15ffc <_vfiprintf_r+0xe24>
   16028:	0f010713          	addi	a4,sp,240
   1602c:	41970c33          	sub	s8,a4,s9
   16030:	000a8a13          	mv	s4,s5
   16034:	018ad463          	bge	s5,s8,1603c <_vfiprintf_r+0xe64>
   16038:	000c0a13          	mv	s4,s8
   1603c:	aa0e1ce3          	bnez	t3,15af4 <_vfiprintf_r+0x91c>
   16040:	07c0006f          	j	160bc <_vfiprintf_r+0xee4>
   16044:	00000c13          	li	s8,0
   16048:	00000a93          	li	s5,0
   1604c:	0f010c93          	addi	s9,sp,240
   16050:	b74ff06f          	j	153c4 <_vfiprintf_r+0x1ec>
   16054:	fff00a93          	li	s5,-1
   16058:	00058d13          	mv	s10,a1
   1605c:	afcff06f          	j	15358 <_vfiprintf_r+0x180>
   16060:	0001b537          	lui	a0,0x1b
   16064:	02047713          	andi	a4,s0,32
   16068:	ce450513          	addi	a0,a0,-796 # 1ace4 <_exit+0x200>
   1606c:	08070463          	beqz	a4,160f4 <_vfiprintf_r+0xf1c>
   16070:	00c12703          	lw	a4,12(sp)
   16074:	00770613          	addi	a2,a4,7
   16078:	ff867613          	andi	a2,a2,-8
   1607c:	00860713          	addi	a4,a2,8
   16080:	00e12623          	sw	a4,12(sp)
   16084:	00062703          	lw	a4,0(a2)
   16088:	00462603          	lw	a2,4(a2)
   1608c:	00147593          	andi	a1,s0,1
   16090:	00c76333          	or	t1,a4,a2
   16094:	00058463          	beqz	a1,1609c <_vfiprintf_r+0xec4>
   16098:	12031a63          	bnez	t1,161cc <_vfiprintf_r+0xff4>
   1609c:	02010da3          	sb	zero,59(sp)
   160a0:	0e0ac463          	bltz	s5,16188 <_vfiprintf_r+0xfb0>
   160a4:	b7f47413          	andi	s0,s0,-1153
   160a8:	320a9c63          	bnez	s5,163e0 <_vfiprintf_r+0x1208>
   160ac:	32031a63          	bnez	t1,163e0 <_vfiprintf_r+0x1208>
   160b0:	00000c13          	li	s8,0
   160b4:	0f010c93          	addi	s9,sp,240
   160b8:	00000a13          	li	s4,0
   160bc:	04812683          	lw	a3,72(sp)
   160c0:	04412703          	lw	a4,68(sp)
   160c4:	08447e13          	andi	t3,s0,132
   160c8:	00068593          	mv	a1,a3
   160cc:	00070613          	mv	a2,a4
   160d0:	b00e0663          	beqz	t3,153dc <_vfiprintf_r+0x204>
   160d4:	03b14603          	lbu	a2,59(sp)
   160d8:	00012c23          	sw	zero,24(sp)
   160dc:	b0061c63          	bnez	a2,153f4 <_vfiprintf_r+0x21c>
   160e0:	b74ff06f          	j	15454 <_vfiprintf_r+0x27c>
   160e4:	0001b537          	lui	a0,0x1b
   160e8:	02047713          	andi	a4,s0,32
   160ec:	cf850513          	addi	a0,a0,-776 # 1acf8 <_exit+0x214>
   160f0:	f80710e3          	bnez	a4,16070 <_vfiprintf_r+0xe98>
   160f4:	00c12583          	lw	a1,12(sp)
   160f8:	00c12703          	lw	a4,12(sp)
   160fc:	01047613          	andi	a2,s0,16
   16100:	00458593          	addi	a1,a1,4
   16104:	00b12623          	sw	a1,12(sp)
   16108:	00072703          	lw	a4,0(a4)
   1610c:	06061a63          	bnez	a2,16180 <_vfiprintf_r+0xfa8>
   16110:	04047613          	andi	a2,s0,64
   16114:	06060263          	beqz	a2,16178 <_vfiprintf_r+0xfa0>
   16118:	01071713          	slli	a4,a4,0x10
   1611c:	01075713          	srli	a4,a4,0x10
   16120:	00000613          	li	a2,0
   16124:	f69ff06f          	j	1608c <_vfiprintf_r+0xeb4>
   16128:	000c8513          	mv	a0,s9
   1612c:	020020ef          	jal	1814c <strlen>
   16130:	03b14703          	lbu	a4,59(sp)
   16134:	fff54a13          	not	s4,a0
   16138:	41fa5a13          	srai	s4,s4,0x1f
   1613c:	00c12783          	lw	a5,12(sp)
   16140:	00050c13          	mv	s8,a0
   16144:	01457a33          	and	s4,a0,s4
   16148:	dc071463          	bnez	a4,15710 <_vfiprintf_r+0x538>
   1614c:	01b12623          	sw	s11,12(sp)
   16150:	00000a93          	li	s5,0
   16154:	a70ff06f          	j	153c4 <_vfiprintf_r+0x1ec>
   16158:	20047713          	andi	a4,s0,512
   1615c:	02010da3          	sb	zero,59(sp)
   16160:	18070863          	beqz	a4,162f0 <_vfiprintf_r+0x1118>
   16164:	0ffe7e13          	zext.b	t3,t3
   16168:	00000d93          	li	s11,0
   1616c:	de0ad8e3          	bgez	s5,15f5c <_vfiprintf_r+0xd84>
   16170:	00d12623          	sw	a3,12(sp)
   16174:	e2cff06f          	j	157a0 <_vfiprintf_r+0x5c8>
   16178:	20047613          	andi	a2,s0,512
   1617c:	14061e63          	bnez	a2,162d8 <_vfiprintf_r+0x1100>
   16180:	00000613          	li	a2,0
   16184:	f09ff06f          	j	1608c <_vfiprintf_r+0xeb4>
   16188:	bff47413          	andi	s0,s0,-1025
   1618c:	00000e13          	li	t3,0
   16190:	e69ff06f          	j	15ff8 <_vfiprintf_r+0xe20>
   16194:	00412503          	lw	a0,4(sp)
   16198:	04010613          	addi	a2,sp,64
   1619c:	00098593          	mv	a1,s3
   161a0:	360000ef          	jal	16500 <__sprint_r>
   161a4:	00050e13          	mv	t3,a0
   161a8:	b8051c63          	bnez	a0,15540 <_vfiprintf_r+0x368>
   161ac:	03b14783          	lbu	a5,59(sp)
   161b0:	04812683          	lw	a3,72(sp)
   161b4:	04412703          	lw	a4,68(sp)
   161b8:	0c079c63          	bnez	a5,16290 <_vfiprintf_r+0x10b8>
   161bc:	01812783          	lw	a5,24(sp)
   161c0:	aa078ee3          	beqz	a5,15c7c <_vfiprintf_r+0xaa4>
   161c4:	000b0793          	mv	a5,s6
   161c8:	a60ff06f          	j	15428 <_vfiprintf_r+0x250>
   161cc:	02d10ea3          	sb	a3,61(sp)
   161d0:	03000693          	li	a3,48
   161d4:	02010da3          	sb	zero,59(sp)
   161d8:	02d10e23          	sb	a3,60(sp)
   161dc:	0a0ace63          	bltz	s5,16298 <_vfiprintf_r+0x10c0>
   161e0:	b7f47413          	andi	s0,s0,-1153
   161e4:	00246413          	ori	s0,s0,2
   161e8:	00200e13          	li	t3,2
   161ec:	e0dff06f          	j	15ff8 <_vfiprintf_r+0xe20>
   161f0:	1d1000ef          	jal	16bc0 <__sinit>
   161f4:	814ff06f          	j	15208 <_vfiprintf_r+0x30>
   161f8:	001d4683          	lbu	a3,1(s10)
   161fc:	20046413          	ori	s0,s0,512
   16200:	001d0d13          	addi	s10,s10,1
   16204:	950ff06f          	j	15354 <_vfiprintf_r+0x17c>
   16208:	001d4683          	lbu	a3,1(s10)
   1620c:	02046413          	ori	s0,s0,32
   16210:	001d0d13          	addi	s10,s10,1
   16214:	940ff06f          	j	15354 <_vfiprintf_r+0x17c>
   16218:	00c12703          	lw	a4,12(sp)
   1621c:	00812603          	lw	a2,8(sp)
   16220:	00072703          	lw	a4,0(a4)
   16224:	00c72023          	sw	a2,0(a4)
   16228:	00d12623          	sw	a3,12(sp)
   1622c:	898ff06f          	j	152c4 <_vfiprintf_r+0xec>
   16230:	00600713          	li	a4,6
   16234:	000a8a13          	mv	s4,s5
   16238:	09576063          	bltu	a4,s5,162b8 <_vfiprintf_r+0x10e0>
   1623c:	0001b337          	lui	t1,0x1b
   16240:	01b12623          	sw	s11,12(sp)
   16244:	d0c30c93          	addi	s9,t1,-756 # 1ad0c <_exit+0x228>
   16248:	000a0c13          	mv	s8,s4
   1624c:	00000a93          	li	s5,0
   16250:	974ff06f          	j	153c4 <_vfiprintf_r+0x1ec>
   16254:	20047713          	andi	a4,s0,512
   16258:	0a070463          	beqz	a4,16300 <_vfiprintf_r+0x1128>
   1625c:	018e1e13          	slli	t3,t3,0x18
   16260:	418e5e13          	srai	t3,t3,0x18
   16264:	41fe5d93          	srai	s11,t3,0x1f
   16268:	00d12623          	sw	a3,12(sp)
   1626c:	000d8693          	mv	a3,s11
   16270:	c04ff06f          	j	15674 <_vfiprintf_r+0x49c>
   16274:	20047613          	andi	a2,s0,512
   16278:	06060663          	beqz	a2,162e4 <_vfiprintf_r+0x110c>
   1627c:	0ff77713          	zext.b	a4,a4
   16280:	00d12623          	sw	a3,12(sp)
   16284:	00040a13          	mv	s4,s0
   16288:	00000613          	li	a2,0
   1628c:	ef4ff06f          	j	15980 <_vfiprintf_r+0x7a8>
   16290:	000b0793          	mv	a5,s6
   16294:	960ff06f          	j	153f4 <_vfiprintf_r+0x21c>
   16298:	bff47413          	andi	s0,s0,-1025
   1629c:	00246413          	ori	s0,s0,2
   162a0:	00200e13          	li	t3,2
   162a4:	d55ff06f          	j	15ff8 <_vfiprintf_r+0xe20>
   162a8:	0001bdb7          	lui	s11,0x1b
   162ac:	008d8613          	addi	a2,s11,8 # 1b008 <zeroes.0>
   162b0:	00c12823          	sw	a2,16(sp)
   162b4:	a35ff06f          	j	15ce8 <_vfiprintf_r+0xb10>
   162b8:	00070a13          	mv	s4,a4
   162bc:	f81ff06f          	j	1623c <_vfiprintf_r+0x1064>
   162c0:	00c12703          	lw	a4,12(sp)
   162c4:	00812603          	lw	a2,8(sp)
   162c8:	00d12623          	sw	a3,12(sp)
   162cc:	00072703          	lw	a4,0(a4)
   162d0:	00c71023          	sh	a2,0(a4)
   162d4:	ff1fe06f          	j	152c4 <_vfiprintf_r+0xec>
   162d8:	0ff77713          	zext.b	a4,a4
   162dc:	00000613          	li	a2,0
   162e0:	dadff06f          	j	1608c <_vfiprintf_r+0xeb4>
   162e4:	00d12623          	sw	a3,12(sp)
   162e8:	00040a13          	mv	s4,s0
   162ec:	e94ff06f          	j	15980 <_vfiprintf_r+0x7a8>
   162f0:	00000d93          	li	s11,0
   162f4:	c60ad4e3          	bgez	s5,15f5c <_vfiprintf_r+0xd84>
   162f8:	00d12623          	sw	a3,12(sp)
   162fc:	ca8ff06f          	j	157a4 <_vfiprintf_r+0x5cc>
   16300:	41fe5d93          	srai	s11,t3,0x1f
   16304:	00d12623          	sw	a3,12(sp)
   16308:	000d8693          	mv	a3,s11
   1630c:	b68ff06f          	j	15674 <_vfiprintf_r+0x49c>
   16310:	00412503          	lw	a0,4(sp)
   16314:	04010613          	addi	a2,sp,64
   16318:	00098593          	mv	a1,s3
   1631c:	1e4000ef          	jal	16500 <__sprint_r>
   16320:	a20ff06f          	j	15540 <_vfiprintf_r+0x368>
   16324:	00f12c23          	sw	a5,24(sp)
   16328:	02412783          	lw	a5,36(sp)
   1632c:	02012583          	lw	a1,32(sp)
   16330:	01c12823          	sw	t3,16(sp)
   16334:	40fc8a33          	sub	s4,s9,a5
   16338:	00078613          	mv	a2,a5
   1633c:	000a0513          	mv	a0,s4
   16340:	1b4010ef          	jal	174f4 <strncpy>
   16344:	01c12783          	lw	a5,28(sp)
   16348:	01012503          	lw	a0,16(sp)
   1634c:	000d8593          	mv	a1,s11
   16350:	0017c683          	lbu	a3,1(a5)
   16354:	00a00613          	li	a2,10
   16358:	fffa0c93          	addi	s9,s4,-1
   1635c:	00d03733          	snez	a4,a3
   16360:	00e787b3          	add	a5,a5,a4
   16364:	00000693          	li	a3,0
   16368:	00f12e23          	sw	a5,28(sp)
   1636c:	371030ef          	jal	19edc <__udivdi3>
   16370:	00000693          	li	a3,0
   16374:	00a00613          	li	a2,10
   16378:	00a12823          	sw	a0,16(sp)
   1637c:	00058d93          	mv	s11,a1
   16380:	110040ef          	jal	1a490 <__umoddi3>
   16384:	03050693          	addi	a3,a0,48
   16388:	01012e03          	lw	t3,16(sp)
   1638c:	01812783          	lw	a5,24(sp)
   16390:	feda0fa3          	sb	a3,-1(s4)
   16394:	00100c13          	li	s8,1
   16398:	d68ff06f          	j	15900 <_vfiprintf_r+0x728>
   1639c:	02c12703          	lw	a4,44(sp)
   163a0:	00900693          	li	a3,9
   163a4:	d2e6e063          	bltu	a3,a4,158c4 <_vfiprintf_r+0x6ec>
   163a8:	d78ff06f          	j	15920 <_vfiprintf_r+0x748>
   163ac:	01b12623          	sw	s11,12(sp)
   163b0:	02070063          	beqz	a4,163d0 <_vfiprintf_r+0x11f8>
   163b4:	001a8a13          	addi	s4,s5,1
   163b8:	000a8c13          	mv	s8,s5
   163bc:	00000a93          	li	s5,0
   163c0:	ae4ff06f          	j	156a4 <_vfiprintf_r+0x4cc>
   163c4:	fff00793          	li	a5,-1
   163c8:	00f12423          	sw	a5,8(sp)
   163cc:	9a8ff06f          	j	15574 <_vfiprintf_r+0x39c>
   163d0:	000a8c13          	mv	s8,s5
   163d4:	000a8a13          	mv	s4,s5
   163d8:	00000a93          	li	s5,0
   163dc:	fe9fe06f          	j	153c4 <_vfiprintf_r+0x1ec>
   163e0:	00000e13          	li	t3,0
   163e4:	c15ff06f          	j	15ff8 <_vfiprintf_r+0xe20>
   163e8:	00c12703          	lw	a4,12(sp)
   163ec:	00072a83          	lw	s5,0(a4)
   163f0:	00470c93          	addi	s9,a4,4
   163f4:	000ad463          	bgez	s5,163fc <_vfiprintf_r+0x1224>
   163f8:	fff00a93          	li	s5,-1
   163fc:	001d4683          	lbu	a3,1(s10)
   16400:	01912623          	sw	s9,12(sp)
   16404:	00058d13          	mv	s10,a1
   16408:	f4dfe06f          	j	15354 <_vfiprintf_r+0x17c>
   1640c:	0001b537          	lui	a0,0x1b
   16410:	00d12623          	sw	a3,12(sp)
   16414:	cf850513          	addi	a0,a0,-776 # 1acf8 <_exit+0x214>
   16418:	00200e13          	li	t3,2
   1641c:	bddff06f          	j	15ff8 <_vfiprintf_r+0xe20>
   16420:	00040a13          	mv	s4,s0
   16424:	b85ff06f          	j	15fa8 <_vfiprintf_r+0xdd0>

00016428 <vfiprintf>:
   16428:	00050713          	mv	a4,a0
   1642c:	8901a503          	lw	a0,-1904(gp) # 1c768 <_impure_ptr>
   16430:	00060693          	mv	a3,a2
   16434:	00058613          	mv	a2,a1
   16438:	00070593          	mv	a1,a4
   1643c:	d9dfe06f          	j	151d8 <_vfiprintf_r>

00016440 <__sbprintf>:
   16440:	00c5d783          	lhu	a5,12(a1)
   16444:	0645ae83          	lw	t4,100(a1)
   16448:	00e5de03          	lhu	t3,14(a1)
   1644c:	01c5a303          	lw	t1,28(a1)
   16450:	0245a883          	lw	a7,36(a1)
   16454:	b7010113          	addi	sp,sp,-1168
   16458:	ffd7f793          	andi	a5,a5,-3
   1645c:	08010813          	addi	a6,sp,128
   16460:	40000713          	li	a4,1024
   16464:	48812423          	sw	s0,1160(sp)
   16468:	00058413          	mv	s0,a1
   1646c:	01810593          	addi	a1,sp,24
   16470:	48912223          	sw	s1,1156(sp)
   16474:	02f11223          	sh	a5,36(sp)
   16478:	48112623          	sw	ra,1164(sp)
   1647c:	02012823          	sw	zero,48(sp)
   16480:	07d12e23          	sw	t4,124(sp)
   16484:	03c11323          	sh	t3,38(sp)
   16488:	02612a23          	sw	t1,52(sp)
   1648c:	03112e23          	sw	a7,60(sp)
   16490:	01012c23          	sw	a6,24(sp)
   16494:	03012423          	sw	a6,40(sp)
   16498:	02e12023          	sw	a4,32(sp)
   1649c:	02e12623          	sw	a4,44(sp)
   164a0:	00050493          	mv	s1,a0
   164a4:	d35fe0ef          	jal	151d8 <_vfiprintf_r>
   164a8:	00050793          	mv	a5,a0
   164ac:	02055a63          	bgez	a0,164e0 <__sbprintf+0xa0>
   164b0:	02415703          	lhu	a4,36(sp)
   164b4:	04077713          	andi	a4,a4,64
   164b8:	00070863          	beqz	a4,164c8 <__sbprintf+0x88>
   164bc:	00c45703          	lhu	a4,12(s0)
   164c0:	04076713          	ori	a4,a4,64
   164c4:	00e41623          	sh	a4,12(s0)
   164c8:	48c12083          	lw	ra,1164(sp)
   164cc:	48812403          	lw	s0,1160(sp)
   164d0:	48412483          	lw	s1,1156(sp)
   164d4:	00078513          	mv	a0,a5
   164d8:	49010113          	addi	sp,sp,1168
   164dc:	00008067          	ret
   164e0:	00a12623          	sw	a0,12(sp)
   164e4:	01810593          	addi	a1,sp,24
   164e8:	00048513          	mv	a0,s1
   164ec:	2ac000ef          	jal	16798 <_fflush_r>
   164f0:	00c12783          	lw	a5,12(sp)
   164f4:	fa050ee3          	beqz	a0,164b0 <__sbprintf+0x70>
   164f8:	fff00793          	li	a5,-1
   164fc:	fb5ff06f          	j	164b0 <__sbprintf+0x70>

00016500 <__sprint_r>:
   16500:	00862703          	lw	a4,8(a2)
   16504:	00071863          	bnez	a4,16514 <__sprint_r+0x14>
   16508:	00000513          	li	a0,0
   1650c:	00062223          	sw	zero,4(a2)
   16510:	00008067          	ret
   16514:	fe010113          	addi	sp,sp,-32
   16518:	00112e23          	sw	ra,28(sp)
   1651c:	00c12623          	sw	a2,12(sp)
   16520:	6fc000ef          	jal	16c1c <__sfvwrite_r>
   16524:	00c12783          	lw	a5,12(sp)
   16528:	01c12083          	lw	ra,28(sp)
   1652c:	0007a423          	sw	zero,8(a5)
   16530:	0007a223          	sw	zero,4(a5)
   16534:	02010113          	addi	sp,sp,32
   16538:	00008067          	ret

0001653c <__sflush_r>:
   1653c:	00c59703          	lh	a4,12(a1)
   16540:	fe010113          	addi	sp,sp,-32
   16544:	00812c23          	sw	s0,24(sp)
   16548:	01312623          	sw	s3,12(sp)
   1654c:	00112e23          	sw	ra,28(sp)
   16550:	00877793          	andi	a5,a4,8
   16554:	00058413          	mv	s0,a1
   16558:	00050993          	mv	s3,a0
   1655c:	12079263          	bnez	a5,16680 <__sflush_r+0x144>
   16560:	000017b7          	lui	a5,0x1
   16564:	80078793          	addi	a5,a5,-2048 # 800 <exit-0xf8b4>
   16568:	0045a683          	lw	a3,4(a1)
   1656c:	00f767b3          	or	a5,a4,a5
   16570:	00f59623          	sh	a5,12(a1)
   16574:	18d05c63          	blez	a3,1670c <__sflush_r+0x1d0>
   16578:	02842803          	lw	a6,40(s0)
   1657c:	0e080663          	beqz	a6,16668 <__sflush_r+0x12c>
   16580:	00912a23          	sw	s1,20(sp)
   16584:	01371693          	slli	a3,a4,0x13
   16588:	0009a483          	lw	s1,0(s3)
   1658c:	0009a023          	sw	zero,0(s3)
   16590:	1806ca63          	bltz	a3,16724 <__sflush_r+0x1e8>
   16594:	01c42583          	lw	a1,28(s0)
   16598:	00000613          	li	a2,0
   1659c:	00100693          	li	a3,1
   165a0:	00098513          	mv	a0,s3
   165a4:	000800e7          	jalr	a6
   165a8:	fff00793          	li	a5,-1
   165ac:	00050613          	mv	a2,a0
   165b0:	1af50c63          	beq	a0,a5,16768 <__sflush_r+0x22c>
   165b4:	00c41783          	lh	a5,12(s0)
   165b8:	02842803          	lw	a6,40(s0)
   165bc:	0047f793          	andi	a5,a5,4
   165c0:	00078e63          	beqz	a5,165dc <__sflush_r+0xa0>
   165c4:	00442703          	lw	a4,4(s0)
   165c8:	03042783          	lw	a5,48(s0)
   165cc:	40e60633          	sub	a2,a2,a4
   165d0:	00078663          	beqz	a5,165dc <__sflush_r+0xa0>
   165d4:	03c42783          	lw	a5,60(s0)
   165d8:	40f60633          	sub	a2,a2,a5
   165dc:	01c42583          	lw	a1,28(s0)
   165e0:	00000693          	li	a3,0
   165e4:	00098513          	mv	a0,s3
   165e8:	000800e7          	jalr	a6
   165ec:	fff00713          	li	a4,-1
   165f0:	00c41783          	lh	a5,12(s0)
   165f4:	12e51c63          	bne	a0,a4,1672c <__sflush_r+0x1f0>
   165f8:	0009a683          	lw	a3,0(s3)
   165fc:	01d00713          	li	a4,29
   16600:	18d76263          	bltu	a4,a3,16784 <__sflush_r+0x248>
   16604:	20400737          	lui	a4,0x20400
   16608:	00170713          	addi	a4,a4,1 # 20400001 <__BSS_END__+0x203df1a1>
   1660c:	00d75733          	srl	a4,a4,a3
   16610:	00177713          	andi	a4,a4,1
   16614:	16070863          	beqz	a4,16784 <__sflush_r+0x248>
   16618:	01042683          	lw	a3,16(s0)
   1661c:	fffff737          	lui	a4,0xfffff
   16620:	7ff70713          	addi	a4,a4,2047 # fffff7ff <__BSS_END__+0xfffde99f>
   16624:	00e7f733          	and	a4,a5,a4
   16628:	00e41623          	sh	a4,12(s0)
   1662c:	00042223          	sw	zero,4(s0)
   16630:	00d42023          	sw	a3,0(s0)
   16634:	01379713          	slli	a4,a5,0x13
   16638:	00075663          	bgez	a4,16644 <__sflush_r+0x108>
   1663c:	0009a783          	lw	a5,0(s3)
   16640:	10078863          	beqz	a5,16750 <__sflush_r+0x214>
   16644:	03042583          	lw	a1,48(s0)
   16648:	0099a023          	sw	s1,0(s3)
   1664c:	10058a63          	beqz	a1,16760 <__sflush_r+0x224>
   16650:	04040793          	addi	a5,s0,64
   16654:	00f58663          	beq	a1,a5,16660 <__sflush_r+0x124>
   16658:	00098513          	mv	a0,s3
   1665c:	60d010ef          	jal	18468 <_free_r>
   16660:	01412483          	lw	s1,20(sp)
   16664:	02042823          	sw	zero,48(s0)
   16668:	01c12083          	lw	ra,28(sp)
   1666c:	01812403          	lw	s0,24(sp)
   16670:	00c12983          	lw	s3,12(sp)
   16674:	00000513          	li	a0,0
   16678:	02010113          	addi	sp,sp,32
   1667c:	00008067          	ret
   16680:	01212823          	sw	s2,16(sp)
   16684:	0105a903          	lw	s2,16(a1)
   16688:	08090a63          	beqz	s2,1671c <__sflush_r+0x1e0>
   1668c:	00912a23          	sw	s1,20(sp)
   16690:	0005a483          	lw	s1,0(a1)
   16694:	00377713          	andi	a4,a4,3
   16698:	0125a023          	sw	s2,0(a1)
   1669c:	412484b3          	sub	s1,s1,s2
   166a0:	00000793          	li	a5,0
   166a4:	00071463          	bnez	a4,166ac <__sflush_r+0x170>
   166a8:	0145a783          	lw	a5,20(a1)
   166ac:	00f42423          	sw	a5,8(s0)
   166b0:	00904863          	bgtz	s1,166c0 <__sflush_r+0x184>
   166b4:	0640006f          	j	16718 <__sflush_r+0x1dc>
   166b8:	00a90933          	add	s2,s2,a0
   166bc:	04905e63          	blez	s1,16718 <__sflush_r+0x1dc>
   166c0:	02442783          	lw	a5,36(s0)
   166c4:	01c42583          	lw	a1,28(s0)
   166c8:	00048693          	mv	a3,s1
   166cc:	00090613          	mv	a2,s2
   166d0:	00098513          	mv	a0,s3
   166d4:	000780e7          	jalr	a5
   166d8:	40a484b3          	sub	s1,s1,a0
   166dc:	fca04ee3          	bgtz	a0,166b8 <__sflush_r+0x17c>
   166e0:	00c45783          	lhu	a5,12(s0)
   166e4:	01012903          	lw	s2,16(sp)
   166e8:	0407e793          	ori	a5,a5,64
   166ec:	01c12083          	lw	ra,28(sp)
   166f0:	00f41623          	sh	a5,12(s0)
   166f4:	01812403          	lw	s0,24(sp)
   166f8:	01412483          	lw	s1,20(sp)
   166fc:	00c12983          	lw	s3,12(sp)
   16700:	fff00513          	li	a0,-1
   16704:	02010113          	addi	sp,sp,32
   16708:	00008067          	ret
   1670c:	03c5a683          	lw	a3,60(a1)
   16710:	e6d044e3          	bgtz	a3,16578 <__sflush_r+0x3c>
   16714:	f55ff06f          	j	16668 <__sflush_r+0x12c>
   16718:	01412483          	lw	s1,20(sp)
   1671c:	01012903          	lw	s2,16(sp)
   16720:	f49ff06f          	j	16668 <__sflush_r+0x12c>
   16724:	05042603          	lw	a2,80(s0)
   16728:	e95ff06f          	j	165bc <__sflush_r+0x80>
   1672c:	01042683          	lw	a3,16(s0)
   16730:	fffff737          	lui	a4,0xfffff
   16734:	7ff70713          	addi	a4,a4,2047 # fffff7ff <__BSS_END__+0xfffde99f>
   16738:	00e7f733          	and	a4,a5,a4
   1673c:	00e41623          	sh	a4,12(s0)
   16740:	00042223          	sw	zero,4(s0)
   16744:	00d42023          	sw	a3,0(s0)
   16748:	01379713          	slli	a4,a5,0x13
   1674c:	ee075ce3          	bgez	a4,16644 <__sflush_r+0x108>
   16750:	03042583          	lw	a1,48(s0)
   16754:	04a42823          	sw	a0,80(s0)
   16758:	0099a023          	sw	s1,0(s3)
   1675c:	ee059ae3          	bnez	a1,16650 <__sflush_r+0x114>
   16760:	01412483          	lw	s1,20(sp)
   16764:	f05ff06f          	j	16668 <__sflush_r+0x12c>
   16768:	0009a783          	lw	a5,0(s3)
   1676c:	e40784e3          	beqz	a5,165b4 <__sflush_r+0x78>
   16770:	fe378713          	addi	a4,a5,-29
   16774:	00070c63          	beqz	a4,1678c <__sflush_r+0x250>
   16778:	fea78793          	addi	a5,a5,-22
   1677c:	00078863          	beqz	a5,1678c <__sflush_r+0x250>
   16780:	00c45783          	lhu	a5,12(s0)
   16784:	0407e793          	ori	a5,a5,64
   16788:	f65ff06f          	j	166ec <__sflush_r+0x1b0>
   1678c:	0099a023          	sw	s1,0(s3)
   16790:	01412483          	lw	s1,20(sp)
   16794:	ed5ff06f          	j	16668 <__sflush_r+0x12c>

00016798 <_fflush_r>:
   16798:	00050793          	mv	a5,a0
   1679c:	00050663          	beqz	a0,167a8 <_fflush_r+0x10>
   167a0:	03452703          	lw	a4,52(a0)
   167a4:	00070e63          	beqz	a4,167c0 <_fflush_r+0x28>
   167a8:	00c59703          	lh	a4,12(a1)
   167ac:	00071663          	bnez	a4,167b8 <_fflush_r+0x20>
   167b0:	00000513          	li	a0,0
   167b4:	00008067          	ret
   167b8:	00078513          	mv	a0,a5
   167bc:	d81ff06f          	j	1653c <__sflush_r>
   167c0:	fe010113          	addi	sp,sp,-32
   167c4:	00b12623          	sw	a1,12(sp)
   167c8:	00112e23          	sw	ra,28(sp)
   167cc:	00a12423          	sw	a0,8(sp)
   167d0:	3f0000ef          	jal	16bc0 <__sinit>
   167d4:	00c12583          	lw	a1,12(sp)
   167d8:	00812783          	lw	a5,8(sp)
   167dc:	00c59703          	lh	a4,12(a1)
   167e0:	00070a63          	beqz	a4,167f4 <_fflush_r+0x5c>
   167e4:	01c12083          	lw	ra,28(sp)
   167e8:	00078513          	mv	a0,a5
   167ec:	02010113          	addi	sp,sp,32
   167f0:	d4dff06f          	j	1653c <__sflush_r>
   167f4:	01c12083          	lw	ra,28(sp)
   167f8:	00000513          	li	a0,0
   167fc:	02010113          	addi	sp,sp,32
   16800:	00008067          	ret

00016804 <fflush>:
   16804:	06050063          	beqz	a0,16864 <fflush+0x60>
   16808:	00050593          	mv	a1,a0
   1680c:	8901a503          	lw	a0,-1904(gp) # 1c768 <_impure_ptr>
   16810:	00050663          	beqz	a0,1681c <fflush+0x18>
   16814:	03452783          	lw	a5,52(a0)
   16818:	00078c63          	beqz	a5,16830 <fflush+0x2c>
   1681c:	00c59783          	lh	a5,12(a1)
   16820:	00079663          	bnez	a5,1682c <fflush+0x28>
   16824:	00000513          	li	a0,0
   16828:	00008067          	ret
   1682c:	d11ff06f          	j	1653c <__sflush_r>
   16830:	fe010113          	addi	sp,sp,-32
   16834:	00b12623          	sw	a1,12(sp)
   16838:	00a12423          	sw	a0,8(sp)
   1683c:	00112e23          	sw	ra,28(sp)
   16840:	380000ef          	jal	16bc0 <__sinit>
   16844:	00c12583          	lw	a1,12(sp)
   16848:	00812503          	lw	a0,8(sp)
   1684c:	00c59783          	lh	a5,12(a1)
   16850:	02079863          	bnez	a5,16880 <fflush+0x7c>
   16854:	01c12083          	lw	ra,28(sp)
   16858:	00000513          	li	a0,0
   1685c:	02010113          	addi	sp,sp,32
   16860:	00008067          	ret
   16864:	0001c637          	lui	a2,0x1c
   16868:	000165b7          	lui	a1,0x16
   1686c:	0001c537          	lui	a0,0x1c
   16870:	01060613          	addi	a2,a2,16 # 1c010 <__sglue>
   16874:	79858593          	addi	a1,a1,1944 # 16798 <_fflush_r>
   16878:	02050513          	addi	a0,a0,32 # 1c020 <_impure_data>
   1687c:	0650006f          	j	170e0 <_fwalk_sglue>
   16880:	01c12083          	lw	ra,28(sp)
   16884:	02010113          	addi	sp,sp,32
   16888:	cb5ff06f          	j	1653c <__sflush_r>

0001688c <__fp_lock>:
   1688c:	00000513          	li	a0,0
   16890:	00008067          	ret

00016894 <stdio_exit_handler>:
   16894:	0001c637          	lui	a2,0x1c
   16898:	000195b7          	lui	a1,0x19
   1689c:	0001c537          	lui	a0,0x1c
   168a0:	01060613          	addi	a2,a2,16 # 1c010 <__sglue>
   168a4:	60c58593          	addi	a1,a1,1548 # 1960c <_fclose_r>
   168a8:	02050513          	addi	a0,a0,32 # 1c020 <_impure_data>
   168ac:	0350006f          	j	170e0 <_fwalk_sglue>

000168b0 <cleanup_stdio>:
   168b0:	00452583          	lw	a1,4(a0)
   168b4:	ff010113          	addi	sp,sp,-16
   168b8:	000217b7          	lui	a5,0x21
   168bc:	00812423          	sw	s0,8(sp)
   168c0:	00112623          	sw	ra,12(sp)
   168c4:	b7078793          	addi	a5,a5,-1168 # 20b70 <__sf>
   168c8:	00050413          	mv	s0,a0
   168cc:	00f58463          	beq	a1,a5,168d4 <cleanup_stdio+0x24>
   168d0:	53d020ef          	jal	1960c <_fclose_r>
   168d4:	00842583          	lw	a1,8(s0)
   168d8:	000217b7          	lui	a5,0x21
   168dc:	bd878793          	addi	a5,a5,-1064 # 20bd8 <__sf+0x68>
   168e0:	00f58663          	beq	a1,a5,168ec <cleanup_stdio+0x3c>
   168e4:	00040513          	mv	a0,s0
   168e8:	525020ef          	jal	1960c <_fclose_r>
   168ec:	00c42583          	lw	a1,12(s0)
   168f0:	000217b7          	lui	a5,0x21
   168f4:	c4078793          	addi	a5,a5,-960 # 20c40 <__sf+0xd0>
   168f8:	00f58c63          	beq	a1,a5,16910 <cleanup_stdio+0x60>
   168fc:	00040513          	mv	a0,s0
   16900:	00812403          	lw	s0,8(sp)
   16904:	00c12083          	lw	ra,12(sp)
   16908:	01010113          	addi	sp,sp,16
   1690c:	5010206f          	j	1960c <_fclose_r>
   16910:	00c12083          	lw	ra,12(sp)
   16914:	00812403          	lw	s0,8(sp)
   16918:	01010113          	addi	sp,sp,16
   1691c:	00008067          	ret

00016920 <__fp_unlock>:
   16920:	00000513          	li	a0,0
   16924:	00008067          	ret

00016928 <global_stdio_init.part.0>:
   16928:	fe010113          	addi	sp,sp,-32
   1692c:	000177b7          	lui	a5,0x17
   16930:	00812c23          	sw	s0,24(sp)
   16934:	89478793          	addi	a5,a5,-1900 # 16894 <stdio_exit_handler>
   16938:	00021437          	lui	s0,0x21
   1693c:	00021537          	lui	a0,0x21
   16940:	b7040413          	addi	s0,s0,-1168 # 20b70 <__sf>
   16944:	00112e23          	sw	ra,28(sp)
   16948:	00912a23          	sw	s1,20(sp)
   1694c:	01212823          	sw	s2,16(sp)
   16950:	01312623          	sw	s3,12(sp)
   16954:	01412423          	sw	s4,8(sp)
   16958:	88f1ae23          	sw	a5,-1892(gp) # 1c774 <__stdio_exit_handler>
   1695c:	00800613          	li	a2,8
   16960:	00400793          	li	a5,4
   16964:	00000593          	li	a1,0
   16968:	bcc50513          	addi	a0,a0,-1076 # 20bcc <__sf+0x5c>
   1696c:	00f42623          	sw	a5,12(s0)
   16970:	00042023          	sw	zero,0(s0)
   16974:	00042223          	sw	zero,4(s0)
   16978:	00042423          	sw	zero,8(s0)
   1697c:	06042223          	sw	zero,100(s0)
   16980:	00042823          	sw	zero,16(s0)
   16984:	00042a23          	sw	zero,20(s0)
   16988:	00042c23          	sw	zero,24(s0)
   1698c:	5bc010ef          	jal	17f48 <memset>
   16990:	00017a37          	lui	s4,0x17
   16994:	000179b7          	lui	s3,0x17
   16998:	00017937          	lui	s2,0x17
   1699c:	000174b7          	lui	s1,0x17
   169a0:	00021537          	lui	a0,0x21
   169a4:	000107b7          	lui	a5,0x10
   169a8:	194a0a13          	addi	s4,s4,404 # 17194 <__sread>
   169ac:	1f898993          	addi	s3,s3,504 # 171f8 <__swrite>
   169b0:	28090913          	addi	s2,s2,640 # 17280 <__sseek>
   169b4:	2e448493          	addi	s1,s1,740 # 172e4 <__sclose>
   169b8:	00978793          	addi	a5,a5,9 # 10009 <exit-0xab>
   169bc:	00800613          	li	a2,8
   169c0:	00000593          	li	a1,0
   169c4:	c3450513          	addi	a0,a0,-972 # 20c34 <__sf+0xc4>
   169c8:	06f42a23          	sw	a5,116(s0)
   169cc:	03442023          	sw	s4,32(s0)
   169d0:	03342223          	sw	s3,36(s0)
   169d4:	03242423          	sw	s2,40(s0)
   169d8:	02942623          	sw	s1,44(s0)
   169dc:	00842e23          	sw	s0,28(s0)
   169e0:	06042423          	sw	zero,104(s0)
   169e4:	06042623          	sw	zero,108(s0)
   169e8:	06042823          	sw	zero,112(s0)
   169ec:	0c042623          	sw	zero,204(s0)
   169f0:	06042c23          	sw	zero,120(s0)
   169f4:	06042e23          	sw	zero,124(s0)
   169f8:	08042023          	sw	zero,128(s0)
   169fc:	54c010ef          	jal	17f48 <memset>
   16a00:	00021737          	lui	a4,0x21
   16a04:	00021537          	lui	a0,0x21
   16a08:	000207b7          	lui	a5,0x20
   16a0c:	01278793          	addi	a5,a5,18 # 20012 <input_data+0x13e2>
   16a10:	bd870713          	addi	a4,a4,-1064 # 20bd8 <__sf+0x68>
   16a14:	c9c50513          	addi	a0,a0,-868 # 20c9c <__sf+0x12c>
   16a18:	00800613          	li	a2,8
   16a1c:	00000593          	li	a1,0
   16a20:	09442423          	sw	s4,136(s0)
   16a24:	09342623          	sw	s3,140(s0)
   16a28:	09242823          	sw	s2,144(s0)
   16a2c:	08942a23          	sw	s1,148(s0)
   16a30:	0cf42e23          	sw	a5,220(s0)
   16a34:	0c042823          	sw	zero,208(s0)
   16a38:	0c042a23          	sw	zero,212(s0)
   16a3c:	0c042c23          	sw	zero,216(s0)
   16a40:	12042a23          	sw	zero,308(s0)
   16a44:	0e042023          	sw	zero,224(s0)
   16a48:	0e042223          	sw	zero,228(s0)
   16a4c:	0e042423          	sw	zero,232(s0)
   16a50:	08e42223          	sw	a4,132(s0)
   16a54:	4f4010ef          	jal	17f48 <memset>
   16a58:	000217b7          	lui	a5,0x21
   16a5c:	c4078793          	addi	a5,a5,-960 # 20c40 <__sf+0xd0>
   16a60:	0f442823          	sw	s4,240(s0)
   16a64:	0f342a23          	sw	s3,244(s0)
   16a68:	0f242c23          	sw	s2,248(s0)
   16a6c:	0e942e23          	sw	s1,252(s0)
   16a70:	01c12083          	lw	ra,28(sp)
   16a74:	0ef42623          	sw	a5,236(s0)
   16a78:	01812403          	lw	s0,24(sp)
   16a7c:	01412483          	lw	s1,20(sp)
   16a80:	01012903          	lw	s2,16(sp)
   16a84:	00c12983          	lw	s3,12(sp)
   16a88:	00812a03          	lw	s4,8(sp)
   16a8c:	02010113          	addi	sp,sp,32
   16a90:	00008067          	ret

00016a94 <__sfp>:
   16a94:	89c1a783          	lw	a5,-1892(gp) # 1c774 <__stdio_exit_handler>
   16a98:	fe010113          	addi	sp,sp,-32
   16a9c:	00912a23          	sw	s1,20(sp)
   16aa0:	00112e23          	sw	ra,28(sp)
   16aa4:	00812c23          	sw	s0,24(sp)
   16aa8:	00050493          	mv	s1,a0
   16aac:	0e078e63          	beqz	a5,16ba8 <__sfp+0x114>
   16ab0:	0001c837          	lui	a6,0x1c
   16ab4:	01080813          	addi	a6,a6,16 # 1c010 <__sglue>
   16ab8:	fff00693          	li	a3,-1
   16abc:	00482783          	lw	a5,4(a6)
   16ac0:	fff78793          	addi	a5,a5,-1
   16ac4:	0807c063          	bltz	a5,16b44 <__sfp+0xb0>
   16ac8:	00882403          	lw	s0,8(a6)
   16acc:	00c0006f          	j	16ad8 <__sfp+0x44>
   16ad0:	06840413          	addi	s0,s0,104
   16ad4:	06d78863          	beq	a5,a3,16b44 <__sfp+0xb0>
   16ad8:	00c41703          	lh	a4,12(s0)
   16adc:	fff78793          	addi	a5,a5,-1
   16ae0:	fe0718e3          	bnez	a4,16ad0 <__sfp+0x3c>
   16ae4:	ffff07b7          	lui	a5,0xffff0
   16ae8:	00178793          	addi	a5,a5,1 # ffff0001 <__BSS_END__+0xfffcf1a1>
   16aec:	00f42623          	sw	a5,12(s0)
   16af0:	06042223          	sw	zero,100(s0)
   16af4:	00042023          	sw	zero,0(s0)
   16af8:	00042423          	sw	zero,8(s0)
   16afc:	00042223          	sw	zero,4(s0)
   16b00:	00042823          	sw	zero,16(s0)
   16b04:	00042a23          	sw	zero,20(s0)
   16b08:	00042c23          	sw	zero,24(s0)
   16b0c:	00800613          	li	a2,8
   16b10:	00000593          	li	a1,0
   16b14:	05c40513          	addi	a0,s0,92
   16b18:	430010ef          	jal	17f48 <memset>
   16b1c:	02042823          	sw	zero,48(s0)
   16b20:	02042a23          	sw	zero,52(s0)
   16b24:	04042223          	sw	zero,68(s0)
   16b28:	04042423          	sw	zero,72(s0)
   16b2c:	01c12083          	lw	ra,28(sp)
   16b30:	00040513          	mv	a0,s0
   16b34:	01812403          	lw	s0,24(sp)
   16b38:	01412483          	lw	s1,20(sp)
   16b3c:	02010113          	addi	sp,sp,32
   16b40:	00008067          	ret
   16b44:	00082403          	lw	s0,0(a6)
   16b48:	00040663          	beqz	s0,16b54 <__sfp+0xc0>
   16b4c:	00040813          	mv	a6,s0
   16b50:	f6dff06f          	j	16abc <__sfp+0x28>
   16b54:	1ac00593          	li	a1,428
   16b58:	00048513          	mv	a0,s1
   16b5c:	01012623          	sw	a6,12(sp)
   16b60:	3f1010ef          	jal	18750 <_malloc_r>
   16b64:	00c12803          	lw	a6,12(sp)
   16b68:	00050413          	mv	s0,a0
   16b6c:	04050263          	beqz	a0,16bb0 <__sfp+0x11c>
   16b70:	00400793          	li	a5,4
   16b74:	00f52223          	sw	a5,4(a0)
   16b78:	00c50513          	addi	a0,a0,12
   16b7c:	00042023          	sw	zero,0(s0)
   16b80:	00a42423          	sw	a0,8(s0)
   16b84:	1a000613          	li	a2,416
   16b88:	00000593          	li	a1,0
   16b8c:	01012623          	sw	a6,12(sp)
   16b90:	3b8010ef          	jal	17f48 <memset>
   16b94:	00c12803          	lw	a6,12(sp)
   16b98:	fff00693          	li	a3,-1
   16b9c:	00882023          	sw	s0,0(a6)
   16ba0:	00040813          	mv	a6,s0
   16ba4:	f19ff06f          	j	16abc <__sfp+0x28>
   16ba8:	d81ff0ef          	jal	16928 <global_stdio_init.part.0>
   16bac:	f05ff06f          	j	16ab0 <__sfp+0x1c>
   16bb0:	00082023          	sw	zero,0(a6)
   16bb4:	00c00793          	li	a5,12
   16bb8:	00f4a023          	sw	a5,0(s1)
   16bbc:	f71ff06f          	j	16b2c <__sfp+0x98>

00016bc0 <__sinit>:
   16bc0:	03452783          	lw	a5,52(a0)
   16bc4:	00078463          	beqz	a5,16bcc <__sinit+0xc>
   16bc8:	00008067          	ret
   16bcc:	000177b7          	lui	a5,0x17
   16bd0:	89c1a703          	lw	a4,-1892(gp) # 1c774 <__stdio_exit_handler>
   16bd4:	8b078793          	addi	a5,a5,-1872 # 168b0 <cleanup_stdio>
   16bd8:	02f52a23          	sw	a5,52(a0)
   16bdc:	fe0716e3          	bnez	a4,16bc8 <__sinit+0x8>
   16be0:	d49ff06f          	j	16928 <global_stdio_init.part.0>

00016be4 <__sfp_lock_acquire>:
   16be4:	00008067          	ret

00016be8 <__sfp_lock_release>:
   16be8:	00008067          	ret

00016bec <__fp_lock_all>:
   16bec:	0001c637          	lui	a2,0x1c
   16bf0:	000175b7          	lui	a1,0x17
   16bf4:	01060613          	addi	a2,a2,16 # 1c010 <__sglue>
   16bf8:	88c58593          	addi	a1,a1,-1908 # 1688c <__fp_lock>
   16bfc:	00000513          	li	a0,0
   16c00:	4e00006f          	j	170e0 <_fwalk_sglue>

00016c04 <__fp_unlock_all>:
   16c04:	0001c637          	lui	a2,0x1c
   16c08:	000175b7          	lui	a1,0x17
   16c0c:	01060613          	addi	a2,a2,16 # 1c010 <__sglue>
   16c10:	92058593          	addi	a1,a1,-1760 # 16920 <__fp_unlock>
   16c14:	00000513          	li	a0,0
   16c18:	4c80006f          	j	170e0 <_fwalk_sglue>

00016c1c <__sfvwrite_r>:
   16c1c:	00862783          	lw	a5,8(a2)
   16c20:	22078c63          	beqz	a5,16e58 <__sfvwrite_r+0x23c>
   16c24:	00c59683          	lh	a3,12(a1)
   16c28:	fc010113          	addi	sp,sp,-64
   16c2c:	02812c23          	sw	s0,56(sp)
   16c30:	03412423          	sw	s4,40(sp)
   16c34:	03512223          	sw	s5,36(sp)
   16c38:	02112e23          	sw	ra,60(sp)
   16c3c:	0086f793          	andi	a5,a3,8
   16c40:	00058413          	mv	s0,a1
   16c44:	00050a93          	mv	s5,a0
   16c48:	00060a13          	mv	s4,a2
   16c4c:	0a078463          	beqz	a5,16cf4 <__sfvwrite_r+0xd8>
   16c50:	0105a783          	lw	a5,16(a1)
   16c54:	0a078063          	beqz	a5,16cf4 <__sfvwrite_r+0xd8>
   16c58:	02912a23          	sw	s1,52(sp)
   16c5c:	03212823          	sw	s2,48(sp)
   16c60:	03312623          	sw	s3,44(sp)
   16c64:	03612023          	sw	s6,32(sp)
   16c68:	0026f793          	andi	a5,a3,2
   16c6c:	000a2483          	lw	s1,0(s4)
   16c70:	0a078a63          	beqz	a5,16d24 <__sfvwrite_r+0x108>
   16c74:	80000b37          	lui	s6,0x80000
   16c78:	c00b0b13          	addi	s6,s6,-1024 # 7ffffc00 <__BSS_END__+0x7ffdeda0>
   16c7c:	00000993          	li	s3,0
   16c80:	00000913          	li	s2,0
   16c84:	00098613          	mv	a2,s3
   16c88:	000a8513          	mv	a0,s5
   16c8c:	1a090e63          	beqz	s2,16e48 <__sfvwrite_r+0x22c>
   16c90:	00090693          	mv	a3,s2
   16c94:	012b7663          	bgeu	s6,s2,16ca0 <__sfvwrite_r+0x84>
   16c98:	800006b7          	lui	a3,0x80000
   16c9c:	c0068693          	addi	a3,a3,-1024 # 7ffffc00 <__BSS_END__+0x7ffdeda0>
   16ca0:	02442783          	lw	a5,36(s0)
   16ca4:	01c42583          	lw	a1,28(s0)
   16ca8:	000780e7          	jalr	a5
   16cac:	40a05a63          	blez	a0,170c0 <__sfvwrite_r+0x4a4>
   16cb0:	008a2783          	lw	a5,8(s4)
   16cb4:	00a989b3          	add	s3,s3,a0
   16cb8:	40a90933          	sub	s2,s2,a0
   16cbc:	40a787b3          	sub	a5,a5,a0
   16cc0:	00fa2423          	sw	a5,8(s4)
   16cc4:	fc0790e3          	bnez	a5,16c84 <__sfvwrite_r+0x68>
   16cc8:	03412483          	lw	s1,52(sp)
   16ccc:	03012903          	lw	s2,48(sp)
   16cd0:	02c12983          	lw	s3,44(sp)
   16cd4:	02012b03          	lw	s6,32(sp)
   16cd8:	00000513          	li	a0,0
   16cdc:	03c12083          	lw	ra,60(sp)
   16ce0:	03812403          	lw	s0,56(sp)
   16ce4:	02812a03          	lw	s4,40(sp)
   16ce8:	02412a83          	lw	s5,36(sp)
   16cec:	04010113          	addi	sp,sp,64
   16cf0:	00008067          	ret
   16cf4:	00040593          	mv	a1,s0
   16cf8:	000a8513          	mv	a0,s5
   16cfc:	5f0000ef          	jal	172ec <__swsetup_r>
   16d00:	26051663          	bnez	a0,16f6c <__sfvwrite_r+0x350>
   16d04:	00c41683          	lh	a3,12(s0)
   16d08:	02912a23          	sw	s1,52(sp)
   16d0c:	03212823          	sw	s2,48(sp)
   16d10:	03312623          	sw	s3,44(sp)
   16d14:	03612023          	sw	s6,32(sp)
   16d18:	0026f793          	andi	a5,a3,2
   16d1c:	000a2483          	lw	s1,0(s4)
   16d20:	f4079ae3          	bnez	a5,16c74 <__sfvwrite_r+0x58>
   16d24:	01712e23          	sw	s7,28(sp)
   16d28:	01812c23          	sw	s8,24(sp)
   16d2c:	0016f793          	andi	a5,a3,1
   16d30:	12079863          	bnez	a5,16e60 <__sfvwrite_r+0x244>
   16d34:	00042783          	lw	a5,0(s0)
   16d38:	80000737          	lui	a4,0x80000
   16d3c:	fff70c13          	addi	s8,a4,-1 # 7fffffff <__BSS_END__+0x7ffdf19f>
   16d40:	00000b13          	li	s6,0
   16d44:	00000993          	li	s3,0
   16d48:	0e098863          	beqz	s3,16e38 <__sfvwrite_r+0x21c>
   16d4c:	2006f713          	andi	a4,a3,512
   16d50:	00842903          	lw	s2,8(s0)
   16d54:	00078513          	mv	a0,a5
   16d58:	20070e63          	beqz	a4,16f74 <__sfvwrite_r+0x358>
   16d5c:	00090b93          	mv	s7,s2
   16d60:	2d29e263          	bltu	s3,s2,17024 <__sfvwrite_r+0x408>
   16d64:	4806f713          	andi	a4,a3,1152
   16d68:	08070c63          	beqz	a4,16e00 <__sfvwrite_r+0x1e4>
   16d6c:	01442603          	lw	a2,20(s0)
   16d70:	01042583          	lw	a1,16(s0)
   16d74:	00161713          	slli	a4,a2,0x1
   16d78:	00c70733          	add	a4,a4,a2
   16d7c:	01f75913          	srli	s2,a4,0x1f
   16d80:	40b78bb3          	sub	s7,a5,a1
   16d84:	00e90933          	add	s2,s2,a4
   16d88:	001b8793          	addi	a5,s7,1
   16d8c:	40195913          	srai	s2,s2,0x1
   16d90:	013787b3          	add	a5,a5,s3
   16d94:	00090613          	mv	a2,s2
   16d98:	00f97663          	bgeu	s2,a5,16da4 <__sfvwrite_r+0x188>
   16d9c:	00078913          	mv	s2,a5
   16da0:	00078613          	mv	a2,a5
   16da4:	4006f693          	andi	a3,a3,1024
   16da8:	2c068463          	beqz	a3,17070 <__sfvwrite_r+0x454>
   16dac:	00060593          	mv	a1,a2
   16db0:	000a8513          	mv	a0,s5
   16db4:	19d010ef          	jal	18750 <_malloc_r>
   16db8:	30050863          	beqz	a0,170c8 <__sfvwrite_r+0x4ac>
   16dbc:	01042583          	lw	a1,16(s0)
   16dc0:	000b8613          	mv	a2,s7
   16dc4:	00a12623          	sw	a0,12(sp)
   16dc8:	25c010ef          	jal	18024 <memcpy>
   16dcc:	00c45783          	lhu	a5,12(s0)
   16dd0:	00c12703          	lw	a4,12(sp)
   16dd4:	b7f7f793          	andi	a5,a5,-1153
   16dd8:	0807e793          	ori	a5,a5,128
   16ddc:	00f41623          	sh	a5,12(s0)
   16de0:	417907b3          	sub	a5,s2,s7
   16de4:	01770533          	add	a0,a4,s7
   16de8:	01242a23          	sw	s2,20(s0)
   16dec:	00e42823          	sw	a4,16(s0)
   16df0:	00a42023          	sw	a0,0(s0)
   16df4:	00f42423          	sw	a5,8(s0)
   16df8:	00098913          	mv	s2,s3
   16dfc:	00098b93          	mv	s7,s3
   16e00:	000b0593          	mv	a1,s6
   16e04:	000b8613          	mv	a2,s7
   16e08:	018010ef          	jal	17e20 <memmove>
   16e0c:	00842703          	lw	a4,8(s0)
   16e10:	00042783          	lw	a5,0(s0)
   16e14:	41270733          	sub	a4,a4,s2
   16e18:	00e42423          	sw	a4,8(s0)
   16e1c:	008a2703          	lw	a4,8(s4)
   16e20:	017787b3          	add	a5,a5,s7
   16e24:	00f42023          	sw	a5,0(s0)
   16e28:	41370733          	sub	a4,a4,s3
   16e2c:	00ea2423          	sw	a4,8(s4)
   16e30:	28070263          	beqz	a4,170b4 <__sfvwrite_r+0x498>
   16e34:	00c41683          	lh	a3,12(s0)
   16e38:	0004ab03          	lw	s6,0(s1)
   16e3c:	0044a983          	lw	s3,4(s1)
   16e40:	00848493          	addi	s1,s1,8
   16e44:	f05ff06f          	j	16d48 <__sfvwrite_r+0x12c>
   16e48:	0004a983          	lw	s3,0(s1)
   16e4c:	0044a903          	lw	s2,4(s1)
   16e50:	00848493          	addi	s1,s1,8
   16e54:	e31ff06f          	j	16c84 <__sfvwrite_r+0x68>
   16e58:	00000513          	li	a0,0
   16e5c:	00008067          	ret
   16e60:	00000b13          	li	s6,0
   16e64:	00000b93          	li	s7,0
   16e68:	00000513          	li	a0,0
   16e6c:	00000c13          	li	s8,0
   16e70:	060b0e63          	beqz	s6,16eec <__sfvwrite_r+0x2d0>
   16e74:	08050663          	beqz	a0,16f00 <__sfvwrite_r+0x2e4>
   16e78:	000b8793          	mv	a5,s7
   16e7c:	000b0993          	mv	s3,s6
   16e80:	0167f463          	bgeu	a5,s6,16e88 <__sfvwrite_r+0x26c>
   16e84:	00078993          	mv	s3,a5
   16e88:	01442683          	lw	a3,20(s0)
   16e8c:	00842903          	lw	s2,8(s0)
   16e90:	00042503          	lw	a0,0(s0)
   16e94:	01042783          	lw	a5,16(s0)
   16e98:	01268933          	add	s2,a3,s2
   16e9c:	00a7f463          	bgeu	a5,a0,16ea4 <__sfvwrite_r+0x288>
   16ea0:	09394063          	blt	s2,s3,16f20 <__sfvwrite_r+0x304>
   16ea4:	1ad9c063          	blt	s3,a3,17044 <__sfvwrite_r+0x428>
   16ea8:	02442783          	lw	a5,36(s0)
   16eac:	01c42583          	lw	a1,28(s0)
   16eb0:	000c0613          	mv	a2,s8
   16eb4:	000a8513          	mv	a0,s5
   16eb8:	000780e7          	jalr	a5
   16ebc:	00050913          	mv	s2,a0
   16ec0:	08a05463          	blez	a0,16f48 <__sfvwrite_r+0x32c>
   16ec4:	412b8bb3          	sub	s7,s7,s2
   16ec8:	00100513          	li	a0,1
   16ecc:	160b8263          	beqz	s7,17030 <__sfvwrite_r+0x414>
   16ed0:	008a2783          	lw	a5,8(s4)
   16ed4:	412787b3          	sub	a5,a5,s2
   16ed8:	00fa2423          	sw	a5,8(s4)
   16edc:	1c078c63          	beqz	a5,170b4 <__sfvwrite_r+0x498>
   16ee0:	412b0b33          	sub	s6,s6,s2
   16ee4:	012c0c33          	add	s8,s8,s2
   16ee8:	f80b16e3          	bnez	s6,16e74 <__sfvwrite_r+0x258>
   16eec:	0044ab03          	lw	s6,4(s1)
   16ef0:	00048793          	mv	a5,s1
   16ef4:	00848493          	addi	s1,s1,8
   16ef8:	fe0b0ae3          	beqz	s6,16eec <__sfvwrite_r+0x2d0>
   16efc:	0007ac03          	lw	s8,0(a5)
   16f00:	000b0613          	mv	a2,s6
   16f04:	00a00593          	li	a1,10
   16f08:	000c0513          	mv	a0,s8
   16f0c:	544000ef          	jal	17450 <memchr>
   16f10:	18050c63          	beqz	a0,170a8 <__sfvwrite_r+0x48c>
   16f14:	00150513          	addi	a0,a0,1
   16f18:	41850bb3          	sub	s7,a0,s8
   16f1c:	f5dff06f          	j	16e78 <__sfvwrite_r+0x25c>
   16f20:	000c0593          	mv	a1,s8
   16f24:	00090613          	mv	a2,s2
   16f28:	6f9000ef          	jal	17e20 <memmove>
   16f2c:	00042783          	lw	a5,0(s0)
   16f30:	00040593          	mv	a1,s0
   16f34:	000a8513          	mv	a0,s5
   16f38:	012787b3          	add	a5,a5,s2
   16f3c:	00f42023          	sw	a5,0(s0)
   16f40:	859ff0ef          	jal	16798 <_fflush_r>
   16f44:	f80500e3          	beqz	a0,16ec4 <__sfvwrite_r+0x2a8>
   16f48:	00c41783          	lh	a5,12(s0)
   16f4c:	01c12b83          	lw	s7,28(sp)
   16f50:	01812c03          	lw	s8,24(sp)
   16f54:	03412483          	lw	s1,52(sp)
   16f58:	03012903          	lw	s2,48(sp)
   16f5c:	02c12983          	lw	s3,44(sp)
   16f60:	02012b03          	lw	s6,32(sp)
   16f64:	0407e793          	ori	a5,a5,64
   16f68:	00f41623          	sh	a5,12(s0)
   16f6c:	fff00513          	li	a0,-1
   16f70:	d6dff06f          	j	16cdc <__sfvwrite_r+0xc0>
   16f74:	01042703          	lw	a4,16(s0)
   16f78:	06f76263          	bltu	a4,a5,16fdc <__sfvwrite_r+0x3c0>
   16f7c:	01442583          	lw	a1,20(s0)
   16f80:	04b9ee63          	bltu	s3,a1,16fdc <__sfvwrite_r+0x3c0>
   16f84:	00098913          	mv	s2,s3
   16f88:	013c7463          	bgeu	s8,s3,16f90 <__sfvwrite_r+0x374>
   16f8c:	000c0913          	mv	s2,s8
   16f90:	00090513          	mv	a0,s2
   16f94:	84cfe0ef          	jal	14fe0 <__modsi3>
   16f98:	02442783          	lw	a5,36(s0)
   16f9c:	01c42583          	lw	a1,28(s0)
   16fa0:	40a906b3          	sub	a3,s2,a0
   16fa4:	000b0613          	mv	a2,s6
   16fa8:	000a8513          	mv	a0,s5
   16fac:	000780e7          	jalr	a5
   16fb0:	f8a05ce3          	blez	a0,16f48 <__sfvwrite_r+0x32c>
   16fb4:	00050913          	mv	s2,a0
   16fb8:	008a2783          	lw	a5,8(s4)
   16fbc:	412989b3          	sub	s3,s3,s2
   16fc0:	412787b3          	sub	a5,a5,s2
   16fc4:	00fa2423          	sw	a5,8(s4)
   16fc8:	0e078663          	beqz	a5,170b4 <__sfvwrite_r+0x498>
   16fcc:	00c41683          	lh	a3,12(s0)
   16fd0:	00042783          	lw	a5,0(s0)
   16fd4:	012b0b33          	add	s6,s6,s2
   16fd8:	d71ff06f          	j	16d48 <__sfvwrite_r+0x12c>
   16fdc:	0129f463          	bgeu	s3,s2,16fe4 <__sfvwrite_r+0x3c8>
   16fe0:	00098913          	mv	s2,s3
   16fe4:	00078513          	mv	a0,a5
   16fe8:	00090613          	mv	a2,s2
   16fec:	000b0593          	mv	a1,s6
   16ff0:	631000ef          	jal	17e20 <memmove>
   16ff4:	00042783          	lw	a5,0(s0)
   16ff8:	00842703          	lw	a4,8(s0)
   16ffc:	012787b3          	add	a5,a5,s2
   17000:	41270733          	sub	a4,a4,s2
   17004:	00f42023          	sw	a5,0(s0)
   17008:	00e42423          	sw	a4,8(s0)
   1700c:	fa0716e3          	bnez	a4,16fb8 <__sfvwrite_r+0x39c>
   17010:	00040593          	mv	a1,s0
   17014:	000a8513          	mv	a0,s5
   17018:	f80ff0ef          	jal	16798 <_fflush_r>
   1701c:	f8050ee3          	beqz	a0,16fb8 <__sfvwrite_r+0x39c>
   17020:	f29ff06f          	j	16f48 <__sfvwrite_r+0x32c>
   17024:	00098913          	mv	s2,s3
   17028:	00098b93          	mv	s7,s3
   1702c:	dd5ff06f          	j	16e00 <__sfvwrite_r+0x1e4>
   17030:	00040593          	mv	a1,s0
   17034:	000a8513          	mv	a0,s5
   17038:	f60ff0ef          	jal	16798 <_fflush_r>
   1703c:	e8050ae3          	beqz	a0,16ed0 <__sfvwrite_r+0x2b4>
   17040:	f09ff06f          	j	16f48 <__sfvwrite_r+0x32c>
   17044:	00098613          	mv	a2,s3
   17048:	000c0593          	mv	a1,s8
   1704c:	5d5000ef          	jal	17e20 <memmove>
   17050:	00842703          	lw	a4,8(s0)
   17054:	00042783          	lw	a5,0(s0)
   17058:	00098913          	mv	s2,s3
   1705c:	41370733          	sub	a4,a4,s3
   17060:	013787b3          	add	a5,a5,s3
   17064:	00e42423          	sw	a4,8(s0)
   17068:	00f42023          	sw	a5,0(s0)
   1706c:	e59ff06f          	j	16ec4 <__sfvwrite_r+0x2a8>
   17070:	000a8513          	mv	a0,s5
   17074:	769010ef          	jal	18fdc <_realloc_r>
   17078:	00050713          	mv	a4,a0
   1707c:	d60512e3          	bnez	a0,16de0 <__sfvwrite_r+0x1c4>
   17080:	01042583          	lw	a1,16(s0)
   17084:	000a8513          	mv	a0,s5
   17088:	3e0010ef          	jal	18468 <_free_r>
   1708c:	00c45783          	lhu	a5,12(s0)
   17090:	00c00713          	li	a4,12
   17094:	01c12b83          	lw	s7,28(sp)
   17098:	01812c03          	lw	s8,24(sp)
   1709c:	00eaa023          	sw	a4,0(s5)
   170a0:	f7f7f793          	andi	a5,a5,-129
   170a4:	eb1ff06f          	j	16f54 <__sfvwrite_r+0x338>
   170a8:	001b0793          	addi	a5,s6,1
   170ac:	00078b93          	mv	s7,a5
   170b0:	dcdff06f          	j	16e7c <__sfvwrite_r+0x260>
   170b4:	01c12b83          	lw	s7,28(sp)
   170b8:	01812c03          	lw	s8,24(sp)
   170bc:	c0dff06f          	j	16cc8 <__sfvwrite_r+0xac>
   170c0:	00c41783          	lh	a5,12(s0)
   170c4:	e91ff06f          	j	16f54 <__sfvwrite_r+0x338>
   170c8:	00c00793          	li	a5,12
   170cc:	00faa023          	sw	a5,0(s5)
   170d0:	01c12b83          	lw	s7,28(sp)
   170d4:	00c41783          	lh	a5,12(s0)
   170d8:	01812c03          	lw	s8,24(sp)
   170dc:	e79ff06f          	j	16f54 <__sfvwrite_r+0x338>

000170e0 <_fwalk_sglue>:
   170e0:	fd010113          	addi	sp,sp,-48
   170e4:	03212023          	sw	s2,32(sp)
   170e8:	01312e23          	sw	s3,28(sp)
   170ec:	01412c23          	sw	s4,24(sp)
   170f0:	01512a23          	sw	s5,20(sp)
   170f4:	01612823          	sw	s6,16(sp)
   170f8:	01712623          	sw	s7,12(sp)
   170fc:	02112623          	sw	ra,44(sp)
   17100:	02812423          	sw	s0,40(sp)
   17104:	02912223          	sw	s1,36(sp)
   17108:	00060a93          	mv	s5,a2
   1710c:	00050b13          	mv	s6,a0
   17110:	00058b93          	mv	s7,a1
   17114:	00000a13          	li	s4,0
   17118:	00100993          	li	s3,1
   1711c:	fff00913          	li	s2,-1
   17120:	004aa483          	lw	s1,4(s5)
   17124:	fff48493          	addi	s1,s1,-1
   17128:	0204ca63          	bltz	s1,1715c <_fwalk_sglue+0x7c>
   1712c:	008aa403          	lw	s0,8(s5)
   17130:	00c45783          	lhu	a5,12(s0)
   17134:	00f9fe63          	bgeu	s3,a5,17150 <_fwalk_sglue+0x70>
   17138:	00e41783          	lh	a5,14(s0)
   1713c:	00040593          	mv	a1,s0
   17140:	000b0513          	mv	a0,s6
   17144:	01278663          	beq	a5,s2,17150 <_fwalk_sglue+0x70>
   17148:	000b80e7          	jalr	s7
   1714c:	00aa6a33          	or	s4,s4,a0
   17150:	fff48493          	addi	s1,s1,-1
   17154:	06840413          	addi	s0,s0,104
   17158:	fd249ce3          	bne	s1,s2,17130 <_fwalk_sglue+0x50>
   1715c:	000aaa83          	lw	s5,0(s5)
   17160:	fc0a90e3          	bnez	s5,17120 <_fwalk_sglue+0x40>
   17164:	02c12083          	lw	ra,44(sp)
   17168:	02812403          	lw	s0,40(sp)
   1716c:	02412483          	lw	s1,36(sp)
   17170:	02012903          	lw	s2,32(sp)
   17174:	01c12983          	lw	s3,28(sp)
   17178:	01412a83          	lw	s5,20(sp)
   1717c:	01012b03          	lw	s6,16(sp)
   17180:	00c12b83          	lw	s7,12(sp)
   17184:	000a0513          	mv	a0,s4
   17188:	01812a03          	lw	s4,24(sp)
   1718c:	03010113          	addi	sp,sp,48
   17190:	00008067          	ret

00017194 <__sread>:
   17194:	ff010113          	addi	sp,sp,-16
   17198:	00812423          	sw	s0,8(sp)
   1719c:	00058413          	mv	s0,a1
   171a0:	00e59583          	lh	a1,14(a1)
   171a4:	00112623          	sw	ra,12(sp)
   171a8:	2a5000ef          	jal	17c4c <_read_r>
   171ac:	02054063          	bltz	a0,171cc <__sread+0x38>
   171b0:	05042783          	lw	a5,80(s0)
   171b4:	00c12083          	lw	ra,12(sp)
   171b8:	00a787b3          	add	a5,a5,a0
   171bc:	04f42823          	sw	a5,80(s0)
   171c0:	00812403          	lw	s0,8(sp)
   171c4:	01010113          	addi	sp,sp,16
   171c8:	00008067          	ret
   171cc:	00c45783          	lhu	a5,12(s0)
   171d0:	fffff737          	lui	a4,0xfffff
   171d4:	fff70713          	addi	a4,a4,-1 # ffffefff <__BSS_END__+0xfffde19f>
   171d8:	00e7f7b3          	and	a5,a5,a4
   171dc:	00c12083          	lw	ra,12(sp)
   171e0:	00f41623          	sh	a5,12(s0)
   171e4:	00812403          	lw	s0,8(sp)
   171e8:	01010113          	addi	sp,sp,16
   171ec:	00008067          	ret

000171f0 <__seofread>:
   171f0:	00000513          	li	a0,0
   171f4:	00008067          	ret

000171f8 <__swrite>:
   171f8:	00c59783          	lh	a5,12(a1)
   171fc:	fe010113          	addi	sp,sp,-32
   17200:	00068313          	mv	t1,a3
   17204:	00112e23          	sw	ra,28(sp)
   17208:	1007f693          	andi	a3,a5,256
   1720c:	00058713          	mv	a4,a1
   17210:	00060893          	mv	a7,a2
   17214:	00050813          	mv	a6,a0
   17218:	02069863          	bnez	a3,17248 <__swrite+0x50>
   1721c:	fffff6b7          	lui	a3,0xfffff
   17220:	fff68693          	addi	a3,a3,-1 # ffffefff <__BSS_END__+0xfffde19f>
   17224:	01c12083          	lw	ra,28(sp)
   17228:	00d7f7b3          	and	a5,a5,a3
   1722c:	00e71583          	lh	a1,14(a4)
   17230:	00f71623          	sh	a5,12(a4)
   17234:	00030693          	mv	a3,t1
   17238:	00088613          	mv	a2,a7
   1723c:	00080513          	mv	a0,a6
   17240:	02010113          	addi	sp,sp,32
   17244:	2d90006f          	j	17d1c <_write_r>
   17248:	00e59583          	lh	a1,14(a1)
   1724c:	00c12423          	sw	a2,8(sp)
   17250:	00200693          	li	a3,2
   17254:	00000613          	li	a2,0
   17258:	00612623          	sw	t1,12(sp)
   1725c:	00e12023          	sw	a4,0(sp)
   17260:	00a12223          	sw	a0,4(sp)
   17264:	181000ef          	jal	17be4 <_lseek_r>
   17268:	00012703          	lw	a4,0(sp)
   1726c:	00c12303          	lw	t1,12(sp)
   17270:	00812883          	lw	a7,8(sp)
   17274:	00c71783          	lh	a5,12(a4)
   17278:	00412803          	lw	a6,4(sp)
   1727c:	fa1ff06f          	j	1721c <__swrite+0x24>

00017280 <__sseek>:
   17280:	ff010113          	addi	sp,sp,-16
   17284:	00812423          	sw	s0,8(sp)
   17288:	00058413          	mv	s0,a1
   1728c:	00e59583          	lh	a1,14(a1)
   17290:	00112623          	sw	ra,12(sp)
   17294:	151000ef          	jal	17be4 <_lseek_r>
   17298:	fff00713          	li	a4,-1
   1729c:	00c41783          	lh	a5,12(s0)
   172a0:	02e50263          	beq	a0,a4,172c4 <__sseek+0x44>
   172a4:	00001737          	lui	a4,0x1
   172a8:	00e7e7b3          	or	a5,a5,a4
   172ac:	00c12083          	lw	ra,12(sp)
   172b0:	04a42823          	sw	a0,80(s0)
   172b4:	00f41623          	sh	a5,12(s0)
   172b8:	00812403          	lw	s0,8(sp)
   172bc:	01010113          	addi	sp,sp,16
   172c0:	00008067          	ret
   172c4:	80050713          	addi	a4,a0,-2048
   172c8:	80070713          	addi	a4,a4,-2048 # 800 <exit-0xf8b4>
   172cc:	00e7f7b3          	and	a5,a5,a4
   172d0:	00c12083          	lw	ra,12(sp)
   172d4:	00f41623          	sh	a5,12(s0)
   172d8:	00812403          	lw	s0,8(sp)
   172dc:	01010113          	addi	sp,sp,16
   172e0:	00008067          	ret

000172e4 <__sclose>:
   172e4:	00e59583          	lh	a1,14(a1)
   172e8:	7bc0006f          	j	17aa4 <_close_r>

000172ec <__swsetup_r>:
   172ec:	8901a703          	lw	a4,-1904(gp) # 1c768 <_impure_ptr>
   172f0:	fe010113          	addi	sp,sp,-32
   172f4:	00112e23          	sw	ra,28(sp)
   172f8:	00050613          	mv	a2,a0
   172fc:	00058793          	mv	a5,a1
   17300:	00070663          	beqz	a4,1730c <__swsetup_r+0x20>
   17304:	03472683          	lw	a3,52(a4)
   17308:	10068a63          	beqz	a3,1741c <__swsetup_r+0x130>
   1730c:	00c79703          	lh	a4,12(a5)
   17310:	00877693          	andi	a3,a4,8
   17314:	02068e63          	beqz	a3,17350 <__swsetup_r+0x64>
   17318:	0107a683          	lw	a3,16(a5)
   1731c:	04068a63          	beqz	a3,17370 <__swsetup_r+0x84>
   17320:	00c79703          	lh	a4,12(a5)
   17324:	00177613          	andi	a2,a4,1
   17328:	06060e63          	beqz	a2,173a4 <__swsetup_r+0xb8>
   1732c:	0147a603          	lw	a2,20(a5)
   17330:	0007a423          	sw	zero,8(a5)
   17334:	00000513          	li	a0,0
   17338:	40c00633          	neg	a2,a2
   1733c:	00c7ac23          	sw	a2,24(a5)
   17340:	08068063          	beqz	a3,173c0 <__swsetup_r+0xd4>
   17344:	01c12083          	lw	ra,28(sp)
   17348:	02010113          	addi	sp,sp,32
   1734c:	00008067          	ret
   17350:	01077693          	andi	a3,a4,16
   17354:	0e068263          	beqz	a3,17438 <__swsetup_r+0x14c>
   17358:	00477693          	andi	a3,a4,4
   1735c:	06069e63          	bnez	a3,173d8 <__swsetup_r+0xec>
   17360:	0107a683          	lw	a3,16(a5)
   17364:	00876713          	ori	a4,a4,8
   17368:	00e79623          	sh	a4,12(a5)
   1736c:	fa069ae3          	bnez	a3,17320 <__swsetup_r+0x34>
   17370:	00c7a703          	lw	a4,12(a5)
   17374:	20000593          	li	a1,512
   17378:	28077713          	andi	a4,a4,640
   1737c:	fab702e3          	beq	a4,a1,17320 <__swsetup_r+0x34>
   17380:	00060513          	mv	a0,a2
   17384:	00078593          	mv	a1,a5
   17388:	00f12423          	sw	a5,8(sp)
   1738c:	394020ef          	jal	19720 <__smakebuf_r>
   17390:	00812783          	lw	a5,8(sp)
   17394:	00c79703          	lh	a4,12(a5)
   17398:	0107a683          	lw	a3,16(a5)
   1739c:	00177613          	andi	a2,a4,1
   173a0:	f80616e3          	bnez	a2,1732c <__swsetup_r+0x40>
   173a4:	00277613          	andi	a2,a4,2
   173a8:	00000593          	li	a1,0
   173ac:	00061463          	bnez	a2,173b4 <__swsetup_r+0xc8>
   173b0:	0147a583          	lw	a1,20(a5)
   173b4:	00b7a423          	sw	a1,8(a5)
   173b8:	00000513          	li	a0,0
   173bc:	f80694e3          	bnez	a3,17344 <__swsetup_r+0x58>
   173c0:	08077693          	andi	a3,a4,128
   173c4:	f80680e3          	beqz	a3,17344 <__swsetup_r+0x58>
   173c8:	04076713          	ori	a4,a4,64
   173cc:	00e79623          	sh	a4,12(a5)
   173d0:	fff00513          	li	a0,-1
   173d4:	f71ff06f          	j	17344 <__swsetup_r+0x58>
   173d8:	0307a583          	lw	a1,48(a5)
   173dc:	02058663          	beqz	a1,17408 <__swsetup_r+0x11c>
   173e0:	04078693          	addi	a3,a5,64
   173e4:	02d58063          	beq	a1,a3,17404 <__swsetup_r+0x118>
   173e8:	00060513          	mv	a0,a2
   173ec:	00f12623          	sw	a5,12(sp)
   173f0:	00c12423          	sw	a2,8(sp)
   173f4:	074010ef          	jal	18468 <_free_r>
   173f8:	00c12783          	lw	a5,12(sp)
   173fc:	00812603          	lw	a2,8(sp)
   17400:	00c79703          	lh	a4,12(a5)
   17404:	0207a823          	sw	zero,48(a5)
   17408:	0107a683          	lw	a3,16(a5)
   1740c:	fdb77713          	andi	a4,a4,-37
   17410:	0007a223          	sw	zero,4(a5)
   17414:	00d7a023          	sw	a3,0(a5)
   17418:	f4dff06f          	j	17364 <__swsetup_r+0x78>
   1741c:	00a12423          	sw	a0,8(sp)
   17420:	00070513          	mv	a0,a4
   17424:	00b12623          	sw	a1,12(sp)
   17428:	f98ff0ef          	jal	16bc0 <__sinit>
   1742c:	00c12783          	lw	a5,12(sp)
   17430:	00812603          	lw	a2,8(sp)
   17434:	ed9ff06f          	j	1730c <__swsetup_r+0x20>
   17438:	00900693          	li	a3,9
   1743c:	04076713          	ori	a4,a4,64
   17440:	00d62023          	sw	a3,0(a2)
   17444:	00e79623          	sh	a4,12(a5)
   17448:	fff00513          	li	a0,-1
   1744c:	ef9ff06f          	j	17344 <__swsetup_r+0x58>

00017450 <memchr>:
   17450:	00357793          	andi	a5,a0,3
   17454:	0ff5f713          	zext.b	a4,a1
   17458:	02078063          	beqz	a5,17478 <memchr+0x28>
   1745c:	08060863          	beqz	a2,174ec <memchr+0x9c>
   17460:	00054783          	lbu	a5,0(a0)
   17464:	fff60613          	addi	a2,a2,-1
   17468:	08e78063          	beq	a5,a4,174e8 <memchr+0x98>
   1746c:	00150513          	addi	a0,a0,1
   17470:	00357793          	andi	a5,a0,3
   17474:	fe0794e3          	bnez	a5,1745c <memchr+0xc>
   17478:	00300813          	li	a6,3
   1747c:	04c87863          	bgeu	a6,a2,174cc <memchr+0x7c>
   17480:	0ff5f593          	zext.b	a1,a1
   17484:	00859793          	slli	a5,a1,0x8
   17488:	00b785b3          	add	a1,a5,a1
   1748c:	01059793          	slli	a5,a1,0x10
   17490:	feff0337          	lui	t1,0xfeff0
   17494:	808088b7          	lui	a7,0x80808
   17498:	00f585b3          	add	a1,a1,a5
   1749c:	eff30313          	addi	t1,t1,-257 # fefefeff <__BSS_END__+0xfefcf09f>
   174a0:	08088893          	addi	a7,a7,128 # 80808080 <__BSS_END__+0x807e7220>
   174a4:	00052783          	lw	a5,0(a0)
   174a8:	00f5c7b3          	xor	a5,a1,a5
   174ac:	006786b3          	add	a3,a5,t1
   174b0:	fff7c793          	not	a5,a5
   174b4:	00f6f7b3          	and	a5,a3,a5
   174b8:	0117f7b3          	and	a5,a5,a7
   174bc:	00079a63          	bnez	a5,174d0 <memchr+0x80>
   174c0:	ffc60613          	addi	a2,a2,-4
   174c4:	00450513          	addi	a0,a0,4
   174c8:	fcc86ee3          	bltu	a6,a2,174a4 <memchr+0x54>
   174cc:	02060063          	beqz	a2,174ec <memchr+0x9c>
   174d0:	00c50633          	add	a2,a0,a2
   174d4:	00c0006f          	j	174e0 <memchr+0x90>
   174d8:	00150513          	addi	a0,a0,1
   174dc:	00c50863          	beq	a0,a2,174ec <memchr+0x9c>
   174e0:	00054783          	lbu	a5,0(a0)
   174e4:	fee79ae3          	bne	a5,a4,174d8 <memchr+0x88>
   174e8:	00008067          	ret
   174ec:	00000513          	li	a0,0
   174f0:	00008067          	ret

000174f4 <strncpy>:
   174f4:	00a5e7b3          	or	a5,a1,a0
   174f8:	0037f793          	andi	a5,a5,3
   174fc:	00079663          	bnez	a5,17508 <strncpy+0x14>
   17500:	00463793          	sltiu	a5,a2,4
   17504:	04078663          	beqz	a5,17550 <strncpy+0x5c>
   17508:	00050713          	mv	a4,a0
   1750c:	01c0006f          	j	17528 <strncpy+0x34>
   17510:	fff5c683          	lbu	a3,-1(a1)
   17514:	fff60813          	addi	a6,a2,-1
   17518:	fed78fa3          	sb	a3,-1(a5)
   1751c:	00068e63          	beqz	a3,17538 <strncpy+0x44>
   17520:	00078713          	mv	a4,a5
   17524:	00080613          	mv	a2,a6
   17528:	00158593          	addi	a1,a1,1
   1752c:	00170793          	addi	a5,a4,1
   17530:	fe0610e3          	bnez	a2,17510 <strncpy+0x1c>
   17534:	00008067          	ret
   17538:	00c70733          	add	a4,a4,a2
   1753c:	04080e63          	beqz	a6,17598 <strncpy+0xa4>
   17540:	00178793          	addi	a5,a5,1
   17544:	fe078fa3          	sb	zero,-1(a5)
   17548:	fee79ce3          	bne	a5,a4,17540 <strncpy+0x4c>
   1754c:	00008067          	ret
   17550:	feff0337          	lui	t1,0xfeff0
   17554:	808088b7          	lui	a7,0x80808
   17558:	eff30313          	addi	t1,t1,-257 # fefefeff <__BSS_END__+0xfefcf09f>
   1755c:	08088893          	addi	a7,a7,128 # 80808080 <__BSS_END__+0x807e7220>
   17560:	00050713          	mv	a4,a0
   17564:	00300e13          	li	t3,3
   17568:	0005a683          	lw	a3,0(a1)
   1756c:	006687b3          	add	a5,a3,t1
   17570:	fff6c813          	not	a6,a3
   17574:	0107f7b3          	and	a5,a5,a6
   17578:	0117f7b3          	and	a5,a5,a7
   1757c:	fa0796e3          	bnez	a5,17528 <strncpy+0x34>
   17580:	ffc60613          	addi	a2,a2,-4
   17584:	00d72023          	sw	a3,0(a4)
   17588:	00470713          	addi	a4,a4,4
   1758c:	00458593          	addi	a1,a1,4
   17590:	fcce6ce3          	bltu	t3,a2,17568 <strncpy+0x74>
   17594:	f95ff06f          	j	17528 <strncpy+0x34>
   17598:	00008067          	ret

0001759c <_init_signal_r>:
   1759c:	13852703          	lw	a4,312(a0)
   175a0:	00070663          	beqz	a4,175ac <_init_signal_r+0x10>
   175a4:	00000513          	li	a0,0
   175a8:	00008067          	ret
   175ac:	fe010113          	addi	sp,sp,-32
   175b0:	08000593          	li	a1,128
   175b4:	00112e23          	sw	ra,28(sp)
   175b8:	00a12623          	sw	a0,12(sp)
   175bc:	194010ef          	jal	18750 <_malloc_r>
   175c0:	00c12783          	lw	a5,12(sp)
   175c4:	12a7ac23          	sw	a0,312(a5)
   175c8:	02050263          	beqz	a0,175ec <_init_signal_r+0x50>
   175cc:	08050793          	addi	a5,a0,128
   175d0:	00052023          	sw	zero,0(a0)
   175d4:	00450513          	addi	a0,a0,4
   175d8:	fef51ce3          	bne	a0,a5,175d0 <_init_signal_r+0x34>
   175dc:	00000513          	li	a0,0
   175e0:	01c12083          	lw	ra,28(sp)
   175e4:	02010113          	addi	sp,sp,32
   175e8:	00008067          	ret
   175ec:	fff00513          	li	a0,-1
   175f0:	ff1ff06f          	j	175e0 <_init_signal_r+0x44>

000175f4 <_signal_r>:
   175f4:	01f00713          	li	a4,31
   175f8:	02b76063          	bltu	a4,a1,17618 <_signal_r+0x24>
   175fc:	13852703          	lw	a4,312(a0)
   17600:	02070463          	beqz	a4,17628 <_signal_r+0x34>
   17604:	00259593          	slli	a1,a1,0x2
   17608:	00b70733          	add	a4,a4,a1
   1760c:	00072503          	lw	a0,0(a4)
   17610:	00c72023          	sw	a2,0(a4)
   17614:	00008067          	ret
   17618:	01600713          	li	a4,22
   1761c:	00e52023          	sw	a4,0(a0)
   17620:	fff00513          	li	a0,-1
   17624:	00008067          	ret
   17628:	fe010113          	addi	sp,sp,-32
   1762c:	00b12223          	sw	a1,4(sp)
   17630:	08000593          	li	a1,128
   17634:	00c12423          	sw	a2,8(sp)
   17638:	00112e23          	sw	ra,28(sp)
   1763c:	00a12623          	sw	a0,12(sp)
   17640:	110010ef          	jal	18750 <_malloc_r>
   17644:	00c12683          	lw	a3,12(sp)
   17648:	00050713          	mv	a4,a0
   1764c:	08050593          	addi	a1,a0,128
   17650:	12a6ac23          	sw	a0,312(a3)
   17654:	00412783          	lw	a5,4(sp)
   17658:	00050693          	mv	a3,a0
   1765c:	00812603          	lw	a2,8(sp)
   17660:	fff00513          	li	a0,-1
   17664:	02070063          	beqz	a4,17684 <_signal_r+0x90>
   17668:	0006a023          	sw	zero,0(a3)
   1766c:	00468693          	addi	a3,a3,4
   17670:	feb69ce3          	bne	a3,a1,17668 <_signal_r+0x74>
   17674:	00279593          	slli	a1,a5,0x2
   17678:	00b70733          	add	a4,a4,a1
   1767c:	00072503          	lw	a0,0(a4)
   17680:	00c72023          	sw	a2,0(a4)
   17684:	01c12083          	lw	ra,28(sp)
   17688:	02010113          	addi	sp,sp,32
   1768c:	00008067          	ret

00017690 <_raise_r>:
   17690:	01f00793          	li	a5,31
   17694:	08b7ea63          	bltu	a5,a1,17728 <_raise_r+0x98>
   17698:	13852783          	lw	a5,312(a0)
   1769c:	fe010113          	addi	sp,sp,-32
   176a0:	00112e23          	sw	ra,28(sp)
   176a4:	00050713          	mv	a4,a0
   176a8:	00058613          	mv	a2,a1
   176ac:	04078063          	beqz	a5,176ec <_raise_r+0x5c>
   176b0:	00259693          	slli	a3,a1,0x2
   176b4:	00d787b3          	add	a5,a5,a3
   176b8:	0007a683          	lw	a3,0(a5)
   176bc:	02068863          	beqz	a3,176ec <_raise_r+0x5c>
   176c0:	00100513          	li	a0,1
   176c4:	00a68c63          	beq	a3,a0,176dc <_raise_r+0x4c>
   176c8:	fff00593          	li	a1,-1
   176cc:	04b68463          	beq	a3,a1,17714 <_raise_r+0x84>
   176d0:	0007a023          	sw	zero,0(a5)
   176d4:	00060513          	mv	a0,a2
   176d8:	000680e7          	jalr	a3
   176dc:	01c12083          	lw	ra,28(sp)
   176e0:	00000513          	li	a0,0
   176e4:	02010113          	addi	sp,sp,32
   176e8:	00008067          	ret
   176ec:	00070513          	mv	a0,a4
   176f0:	00c12623          	sw	a2,12(sp)
   176f4:	00e12423          	sw	a4,8(sp)
   176f8:	620000ef          	jal	17d18 <_getpid_r>
   176fc:	00c12603          	lw	a2,12(sp)
   17700:	01c12083          	lw	ra,28(sp)
   17704:	00050593          	mv	a1,a0
   17708:	00812503          	lw	a0,8(sp)
   1770c:	02010113          	addi	sp,sp,32
   17710:	5a40006f          	j	17cb4 <_kill_r>
   17714:	01c12083          	lw	ra,28(sp)
   17718:	01600793          	li	a5,22
   1771c:	00f72023          	sw	a5,0(a4)
   17720:	02010113          	addi	sp,sp,32
   17724:	00008067          	ret
   17728:	01600793          	li	a5,22
   1772c:	00f52023          	sw	a5,0(a0)
   17730:	fff00513          	li	a0,-1
   17734:	00008067          	ret

00017738 <__sigtramp_r>:
   17738:	01f00793          	li	a5,31
   1773c:	0cb7e063          	bltu	a5,a1,177fc <__sigtramp_r+0xc4>
   17740:	13852783          	lw	a5,312(a0)
   17744:	fe010113          	addi	sp,sp,-32
   17748:	00112e23          	sw	ra,28(sp)
   1774c:	00058713          	mv	a4,a1
   17750:	06078463          	beqz	a5,177b8 <__sigtramp_r+0x80>
   17754:	00271693          	slli	a3,a4,0x2
   17758:	00d787b3          	add	a5,a5,a3
   1775c:	0007a683          	lw	a3,0(a5)
   17760:	02068863          	beqz	a3,17790 <__sigtramp_r+0x58>
   17764:	fff00613          	li	a2,-1
   17768:	04c68463          	beq	a3,a2,177b0 <__sigtramp_r+0x78>
   1776c:	00100613          	li	a2,1
   17770:	02c68863          	beq	a3,a2,177a0 <__sigtramp_r+0x68>
   17774:	00070513          	mv	a0,a4
   17778:	0007a023          	sw	zero,0(a5)
   1777c:	000680e7          	jalr	a3
   17780:	00000513          	li	a0,0
   17784:	01c12083          	lw	ra,28(sp)
   17788:	02010113          	addi	sp,sp,32
   1778c:	00008067          	ret
   17790:	01c12083          	lw	ra,28(sp)
   17794:	00100513          	li	a0,1
   17798:	02010113          	addi	sp,sp,32
   1779c:	00008067          	ret
   177a0:	01c12083          	lw	ra,28(sp)
   177a4:	00300513          	li	a0,3
   177a8:	02010113          	addi	sp,sp,32
   177ac:	00008067          	ret
   177b0:	00200513          	li	a0,2
   177b4:	fd1ff06f          	j	17784 <__sigtramp_r+0x4c>
   177b8:	00b12623          	sw	a1,12(sp)
   177bc:	08000593          	li	a1,128
   177c0:	00a12423          	sw	a0,8(sp)
   177c4:	78d000ef          	jal	18750 <_malloc_r>
   177c8:	00812683          	lw	a3,8(sp)
   177cc:	00050793          	mv	a5,a0
   177d0:	12a6ac23          	sw	a0,312(a3)
   177d4:	02050063          	beqz	a0,177f4 <__sigtramp_r+0xbc>
   177d8:	00c12703          	lw	a4,12(sp)
   177dc:	00050693          	mv	a3,a0
   177e0:	08050613          	addi	a2,a0,128
   177e4:	0006a023          	sw	zero,0(a3)
   177e8:	00468693          	addi	a3,a3,4
   177ec:	fec69ce3          	bne	a3,a2,177e4 <__sigtramp_r+0xac>
   177f0:	f65ff06f          	j	17754 <__sigtramp_r+0x1c>
   177f4:	fff00513          	li	a0,-1
   177f8:	f8dff06f          	j	17784 <__sigtramp_r+0x4c>
   177fc:	fff00513          	li	a0,-1
   17800:	00008067          	ret

00017804 <raise>:
   17804:	01f00793          	li	a5,31
   17808:	8901a803          	lw	a6,-1904(gp) # 1c768 <_impure_ptr>
   1780c:	08a7e863          	bltu	a5,a0,1789c <raise+0x98>
   17810:	13882783          	lw	a5,312(a6)
   17814:	fe010113          	addi	sp,sp,-32
   17818:	00112e23          	sw	ra,28(sp)
   1781c:	00050613          	mv	a2,a0
   17820:	02078e63          	beqz	a5,1785c <raise+0x58>
   17824:	00251713          	slli	a4,a0,0x2
   17828:	00e787b3          	add	a5,a5,a4
   1782c:	0007a703          	lw	a4,0(a5)
   17830:	02070663          	beqz	a4,1785c <raise+0x58>
   17834:	00100693          	li	a3,1
   17838:	00d70a63          	beq	a4,a3,1784c <raise+0x48>
   1783c:	fff00613          	li	a2,-1
   17840:	04c70263          	beq	a4,a2,17884 <raise+0x80>
   17844:	0007a023          	sw	zero,0(a5)
   17848:	000700e7          	jalr	a4
   1784c:	01c12083          	lw	ra,28(sp)
   17850:	00000513          	li	a0,0
   17854:	02010113          	addi	sp,sp,32
   17858:	00008067          	ret
   1785c:	00080513          	mv	a0,a6
   17860:	00c12623          	sw	a2,12(sp)
   17864:	01012423          	sw	a6,8(sp)
   17868:	4b0000ef          	jal	17d18 <_getpid_r>
   1786c:	00c12603          	lw	a2,12(sp)
   17870:	01c12083          	lw	ra,28(sp)
   17874:	00050593          	mv	a1,a0
   17878:	00812503          	lw	a0,8(sp)
   1787c:	02010113          	addi	sp,sp,32
   17880:	4340006f          	j	17cb4 <_kill_r>
   17884:	01c12083          	lw	ra,28(sp)
   17888:	01600793          	li	a5,22
   1788c:	00f82023          	sw	a5,0(a6)
   17890:	00068513          	mv	a0,a3
   17894:	02010113          	addi	sp,sp,32
   17898:	00008067          	ret
   1789c:	01600793          	li	a5,22
   178a0:	00f82023          	sw	a5,0(a6)
   178a4:	fff00513          	li	a0,-1
   178a8:	00008067          	ret

000178ac <signal>:
   178ac:	01f00793          	li	a5,31
   178b0:	8901a603          	lw	a2,-1904(gp) # 1c768 <_impure_ptr>
   178b4:	02a7e063          	bltu	a5,a0,178d4 <signal+0x28>
   178b8:	13862703          	lw	a4,312(a2)
   178bc:	02070463          	beqz	a4,178e4 <signal+0x38>
   178c0:	00251513          	slli	a0,a0,0x2
   178c4:	00a70733          	add	a4,a4,a0
   178c8:	00072503          	lw	a0,0(a4)
   178cc:	00b72023          	sw	a1,0(a4)
   178d0:	00008067          	ret
   178d4:	01600793          	li	a5,22
   178d8:	00f62023          	sw	a5,0(a2)
   178dc:	fff00513          	li	a0,-1
   178e0:	00008067          	ret
   178e4:	fe010113          	addi	sp,sp,-32
   178e8:	00b12623          	sw	a1,12(sp)
   178ec:	00a12423          	sw	a0,8(sp)
   178f0:	08000593          	li	a1,128
   178f4:	00060513          	mv	a0,a2
   178f8:	00c12223          	sw	a2,4(sp)
   178fc:	00112e23          	sw	ra,28(sp)
   17900:	651000ef          	jal	18750 <_malloc_r>
   17904:	00412603          	lw	a2,4(sp)
   17908:	00050713          	mv	a4,a0
   1790c:	08050593          	addi	a1,a0,128
   17910:	12a62c23          	sw	a0,312(a2)
   17914:	00812783          	lw	a5,8(sp)
   17918:	00050613          	mv	a2,a0
   1791c:	00c12683          	lw	a3,12(sp)
   17920:	fff00513          	li	a0,-1
   17924:	02070063          	beqz	a4,17944 <signal+0x98>
   17928:	00062023          	sw	zero,0(a2)
   1792c:	00460613          	addi	a2,a2,4
   17930:	fec59ce3          	bne	a1,a2,17928 <signal+0x7c>
   17934:	00279513          	slli	a0,a5,0x2
   17938:	00a70733          	add	a4,a4,a0
   1793c:	00072503          	lw	a0,0(a4)
   17940:	00d72023          	sw	a3,0(a4)
   17944:	01c12083          	lw	ra,28(sp)
   17948:	02010113          	addi	sp,sp,32
   1794c:	00008067          	ret

00017950 <_init_signal>:
   17950:	8901a783          	lw	a5,-1904(gp) # 1c768 <_impure_ptr>
   17954:	1387a703          	lw	a4,312(a5)
   17958:	00070663          	beqz	a4,17964 <_init_signal+0x14>
   1795c:	00000513          	li	a0,0
   17960:	00008067          	ret
   17964:	fe010113          	addi	sp,sp,-32
   17968:	00078513          	mv	a0,a5
   1796c:	08000593          	li	a1,128
   17970:	00f12623          	sw	a5,12(sp)
   17974:	00112e23          	sw	ra,28(sp)
   17978:	5d9000ef          	jal	18750 <_malloc_r>
   1797c:	00c12783          	lw	a5,12(sp)
   17980:	12a7ac23          	sw	a0,312(a5)
   17984:	02050263          	beqz	a0,179a8 <_init_signal+0x58>
   17988:	08050793          	addi	a5,a0,128
   1798c:	00052023          	sw	zero,0(a0)
   17990:	00450513          	addi	a0,a0,4
   17994:	fef51ce3          	bne	a0,a5,1798c <_init_signal+0x3c>
   17998:	00000513          	li	a0,0
   1799c:	01c12083          	lw	ra,28(sp)
   179a0:	02010113          	addi	sp,sp,32
   179a4:	00008067          	ret
   179a8:	fff00513          	li	a0,-1
   179ac:	ff1ff06f          	j	1799c <_init_signal+0x4c>

000179b0 <__sigtramp>:
   179b0:	01f00793          	li	a5,31
   179b4:	0ca7e463          	bltu	a5,a0,17a7c <__sigtramp+0xcc>
   179b8:	8901a683          	lw	a3,-1904(gp) # 1c768 <_impure_ptr>
   179bc:	fe010113          	addi	sp,sp,-32
   179c0:	00112e23          	sw	ra,28(sp)
   179c4:	1386a783          	lw	a5,312(a3)
   179c8:	00050713          	mv	a4,a0
   179cc:	06078463          	beqz	a5,17a34 <__sigtramp+0x84>
   179d0:	00271693          	slli	a3,a4,0x2
   179d4:	00d787b3          	add	a5,a5,a3
   179d8:	0007a683          	lw	a3,0(a5)
   179dc:	02068863          	beqz	a3,17a0c <__sigtramp+0x5c>
   179e0:	fff00613          	li	a2,-1
   179e4:	04c68463          	beq	a3,a2,17a2c <__sigtramp+0x7c>
   179e8:	00100613          	li	a2,1
   179ec:	02c68863          	beq	a3,a2,17a1c <__sigtramp+0x6c>
   179f0:	00070513          	mv	a0,a4
   179f4:	0007a023          	sw	zero,0(a5)
   179f8:	000680e7          	jalr	a3
   179fc:	00000513          	li	a0,0
   17a00:	01c12083          	lw	ra,28(sp)
   17a04:	02010113          	addi	sp,sp,32
   17a08:	00008067          	ret
   17a0c:	01c12083          	lw	ra,28(sp)
   17a10:	00100513          	li	a0,1
   17a14:	02010113          	addi	sp,sp,32
   17a18:	00008067          	ret
   17a1c:	01c12083          	lw	ra,28(sp)
   17a20:	00300513          	li	a0,3
   17a24:	02010113          	addi	sp,sp,32
   17a28:	00008067          	ret
   17a2c:	00200513          	li	a0,2
   17a30:	fd1ff06f          	j	17a00 <__sigtramp+0x50>
   17a34:	00a12623          	sw	a0,12(sp)
   17a38:	08000593          	li	a1,128
   17a3c:	00068513          	mv	a0,a3
   17a40:	00d12423          	sw	a3,8(sp)
   17a44:	50d000ef          	jal	18750 <_malloc_r>
   17a48:	00812683          	lw	a3,8(sp)
   17a4c:	00050793          	mv	a5,a0
   17a50:	12a6ac23          	sw	a0,312(a3)
   17a54:	02050063          	beqz	a0,17a74 <__sigtramp+0xc4>
   17a58:	00c12703          	lw	a4,12(sp)
   17a5c:	00050693          	mv	a3,a0
   17a60:	08050613          	addi	a2,a0,128
   17a64:	0006a023          	sw	zero,0(a3)
   17a68:	00468693          	addi	a3,a3,4
   17a6c:	fed61ce3          	bne	a2,a3,17a64 <__sigtramp+0xb4>
   17a70:	f61ff06f          	j	179d0 <__sigtramp+0x20>
   17a74:	fff00513          	li	a0,-1
   17a78:	f89ff06f          	j	17a00 <__sigtramp+0x50>
   17a7c:	fff00513          	li	a0,-1
   17a80:	00008067          	ret

00017a84 <__localeconv_l>:
   17a84:	0f050513          	addi	a0,a0,240
   17a88:	00008067          	ret

00017a8c <_localeconv_r>:
   17a8c:	0001c537          	lui	a0,0x1c
   17a90:	65850513          	addi	a0,a0,1624 # 1c658 <__global_locale+0xf0>
   17a94:	00008067          	ret

00017a98 <localeconv>:
   17a98:	0001c537          	lui	a0,0x1c
   17a9c:	65850513          	addi	a0,a0,1624 # 1c658 <__global_locale+0xf0>
   17aa0:	00008067          	ret

00017aa4 <_close_r>:
   17aa4:	ff010113          	addi	sp,sp,-16
   17aa8:	00812423          	sw	s0,8(sp)
   17aac:	00912223          	sw	s1,4(sp)
   17ab0:	00050493          	mv	s1,a0
   17ab4:	00058513          	mv	a0,a1
   17ab8:	00112623          	sw	ra,12(sp)
   17abc:	8a01a023          	sw	zero,-1888(gp) # 1c778 <errno>
   17ac0:	775020ef          	jal	1aa34 <_close>
   17ac4:	fff00793          	li	a5,-1
   17ac8:	00f50c63          	beq	a0,a5,17ae0 <_close_r+0x3c>
   17acc:	00c12083          	lw	ra,12(sp)
   17ad0:	00812403          	lw	s0,8(sp)
   17ad4:	00412483          	lw	s1,4(sp)
   17ad8:	01010113          	addi	sp,sp,16
   17adc:	00008067          	ret
   17ae0:	8a01a783          	lw	a5,-1888(gp) # 1c778 <errno>
   17ae4:	fe0784e3          	beqz	a5,17acc <_close_r+0x28>
   17ae8:	00c12083          	lw	ra,12(sp)
   17aec:	00812403          	lw	s0,8(sp)
   17af0:	00f4a023          	sw	a5,0(s1)
   17af4:	00412483          	lw	s1,4(sp)
   17af8:	01010113          	addi	sp,sp,16
   17afc:	00008067          	ret

00017b00 <_reclaim_reent>:
   17b00:	8901a783          	lw	a5,-1904(gp) # 1c768 <_impure_ptr>
   17b04:	0ca78e63          	beq	a5,a0,17be0 <_reclaim_reent+0xe0>
   17b08:	04452583          	lw	a1,68(a0)
   17b0c:	fe010113          	addi	sp,sp,-32
   17b10:	00912a23          	sw	s1,20(sp)
   17b14:	00112e23          	sw	ra,28(sp)
   17b18:	00812c23          	sw	s0,24(sp)
   17b1c:	00050493          	mv	s1,a0
   17b20:	04058863          	beqz	a1,17b70 <_reclaim_reent+0x70>
   17b24:	01212823          	sw	s2,16(sp)
   17b28:	01312623          	sw	s3,12(sp)
   17b2c:	00000913          	li	s2,0
   17b30:	08000993          	li	s3,128
   17b34:	012587b3          	add	a5,a1,s2
   17b38:	0007a403          	lw	s0,0(a5)
   17b3c:	00040e63          	beqz	s0,17b58 <_reclaim_reent+0x58>
   17b40:	00040593          	mv	a1,s0
   17b44:	00042403          	lw	s0,0(s0)
   17b48:	00048513          	mv	a0,s1
   17b4c:	11d000ef          	jal	18468 <_free_r>
   17b50:	fe0418e3          	bnez	s0,17b40 <_reclaim_reent+0x40>
   17b54:	0444a583          	lw	a1,68(s1)
   17b58:	00490913          	addi	s2,s2,4
   17b5c:	fd391ce3          	bne	s2,s3,17b34 <_reclaim_reent+0x34>
   17b60:	00048513          	mv	a0,s1
   17b64:	105000ef          	jal	18468 <_free_r>
   17b68:	01012903          	lw	s2,16(sp)
   17b6c:	00c12983          	lw	s3,12(sp)
   17b70:	0384a583          	lw	a1,56(s1)
   17b74:	00058663          	beqz	a1,17b80 <_reclaim_reent+0x80>
   17b78:	00048513          	mv	a0,s1
   17b7c:	0ed000ef          	jal	18468 <_free_r>
   17b80:	0404a403          	lw	s0,64(s1)
   17b84:	00040c63          	beqz	s0,17b9c <_reclaim_reent+0x9c>
   17b88:	00040593          	mv	a1,s0
   17b8c:	00042403          	lw	s0,0(s0)
   17b90:	00048513          	mv	a0,s1
   17b94:	0d5000ef          	jal	18468 <_free_r>
   17b98:	fe0418e3          	bnez	s0,17b88 <_reclaim_reent+0x88>
   17b9c:	04c4a583          	lw	a1,76(s1)
   17ba0:	00058663          	beqz	a1,17bac <_reclaim_reent+0xac>
   17ba4:	00048513          	mv	a0,s1
   17ba8:	0c1000ef          	jal	18468 <_free_r>
   17bac:	0344a783          	lw	a5,52(s1)
   17bb0:	00078e63          	beqz	a5,17bcc <_reclaim_reent+0xcc>
   17bb4:	01812403          	lw	s0,24(sp)
   17bb8:	01c12083          	lw	ra,28(sp)
   17bbc:	00048513          	mv	a0,s1
   17bc0:	01412483          	lw	s1,20(sp)
   17bc4:	02010113          	addi	sp,sp,32
   17bc8:	00078067          	jr	a5
   17bcc:	01c12083          	lw	ra,28(sp)
   17bd0:	01812403          	lw	s0,24(sp)
   17bd4:	01412483          	lw	s1,20(sp)
   17bd8:	02010113          	addi	sp,sp,32
   17bdc:	00008067          	ret
   17be0:	00008067          	ret

00017be4 <_lseek_r>:
   17be4:	ff010113          	addi	sp,sp,-16
   17be8:	00058793          	mv	a5,a1
   17bec:	00812423          	sw	s0,8(sp)
   17bf0:	00912223          	sw	s1,4(sp)
   17bf4:	00060593          	mv	a1,a2
   17bf8:	00050493          	mv	s1,a0
   17bfc:	00068613          	mv	a2,a3
   17c00:	00078513          	mv	a0,a5
   17c04:	00112623          	sw	ra,12(sp)
   17c08:	8a01a023          	sw	zero,-1888(gp) # 1c778 <errno>
   17c0c:	679020ef          	jal	1aa84 <_lseek>
   17c10:	fff00793          	li	a5,-1
   17c14:	00f50c63          	beq	a0,a5,17c2c <_lseek_r+0x48>
   17c18:	00c12083          	lw	ra,12(sp)
   17c1c:	00812403          	lw	s0,8(sp)
   17c20:	00412483          	lw	s1,4(sp)
   17c24:	01010113          	addi	sp,sp,16
   17c28:	00008067          	ret
   17c2c:	8a01a783          	lw	a5,-1888(gp) # 1c778 <errno>
   17c30:	fe0784e3          	beqz	a5,17c18 <_lseek_r+0x34>
   17c34:	00c12083          	lw	ra,12(sp)
   17c38:	00812403          	lw	s0,8(sp)
   17c3c:	00f4a023          	sw	a5,0(s1)
   17c40:	00412483          	lw	s1,4(sp)
   17c44:	01010113          	addi	sp,sp,16
   17c48:	00008067          	ret

00017c4c <_read_r>:
   17c4c:	ff010113          	addi	sp,sp,-16
   17c50:	00058793          	mv	a5,a1
   17c54:	00812423          	sw	s0,8(sp)
   17c58:	00912223          	sw	s1,4(sp)
   17c5c:	00060593          	mv	a1,a2
   17c60:	00050493          	mv	s1,a0
   17c64:	00068613          	mv	a2,a3
   17c68:	00078513          	mv	a0,a5
   17c6c:	00112623          	sw	ra,12(sp)
   17c70:	8a01a023          	sw	zero,-1888(gp) # 1c778 <errno>
   17c74:	621020ef          	jal	1aa94 <_read>
   17c78:	fff00793          	li	a5,-1
   17c7c:	00f50c63          	beq	a0,a5,17c94 <_read_r+0x48>
   17c80:	00c12083          	lw	ra,12(sp)
   17c84:	00812403          	lw	s0,8(sp)
   17c88:	00412483          	lw	s1,4(sp)
   17c8c:	01010113          	addi	sp,sp,16
   17c90:	00008067          	ret
   17c94:	8a01a783          	lw	a5,-1888(gp) # 1c778 <errno>
   17c98:	fe0784e3          	beqz	a5,17c80 <_read_r+0x34>
   17c9c:	00c12083          	lw	ra,12(sp)
   17ca0:	00812403          	lw	s0,8(sp)
   17ca4:	00f4a023          	sw	a5,0(s1)
   17ca8:	00412483          	lw	s1,4(sp)
   17cac:	01010113          	addi	sp,sp,16
   17cb0:	00008067          	ret

00017cb4 <_kill_r>:
   17cb4:	ff010113          	addi	sp,sp,-16
   17cb8:	00058793          	mv	a5,a1
   17cbc:	00812423          	sw	s0,8(sp)
   17cc0:	00912223          	sw	s1,4(sp)
   17cc4:	00060593          	mv	a1,a2
   17cc8:	00050493          	mv	s1,a0
   17ccc:	00078513          	mv	a0,a5
   17cd0:	00112623          	sw	ra,12(sp)
   17cd4:	8a01a023          	sw	zero,-1888(gp) # 1c778 <errno>
   17cd8:	59d020ef          	jal	1aa74 <_kill>
   17cdc:	fff00793          	li	a5,-1
   17ce0:	00f50c63          	beq	a0,a5,17cf8 <_kill_r+0x44>
   17ce4:	00c12083          	lw	ra,12(sp)
   17ce8:	00812403          	lw	s0,8(sp)
   17cec:	00412483          	lw	s1,4(sp)
   17cf0:	01010113          	addi	sp,sp,16
   17cf4:	00008067          	ret
   17cf8:	8a01a783          	lw	a5,-1888(gp) # 1c778 <errno>
   17cfc:	fe0784e3          	beqz	a5,17ce4 <_kill_r+0x30>
   17d00:	00c12083          	lw	ra,12(sp)
   17d04:	00812403          	lw	s0,8(sp)
   17d08:	00f4a023          	sw	a5,0(s1)
   17d0c:	00412483          	lw	s1,4(sp)
   17d10:	01010113          	addi	sp,sp,16
   17d14:	00008067          	ret

00017d18 <_getpid_r>:
   17d18:	53d0206f          	j	1aa54 <_getpid>

00017d1c <_write_r>:
   17d1c:	ff010113          	addi	sp,sp,-16
   17d20:	00058793          	mv	a5,a1
   17d24:	00812423          	sw	s0,8(sp)
   17d28:	00912223          	sw	s1,4(sp)
   17d2c:	00060593          	mv	a1,a2
   17d30:	00050493          	mv	s1,a0
   17d34:	00068613          	mv	a2,a3
   17d38:	00078513          	mv	a0,a5
   17d3c:	00112623          	sw	ra,12(sp)
   17d40:	8a01a023          	sw	zero,-1888(gp) # 1c778 <errno>
   17d44:	591020ef          	jal	1aad4 <_write>
   17d48:	fff00793          	li	a5,-1
   17d4c:	00f50c63          	beq	a0,a5,17d64 <_write_r+0x48>
   17d50:	00c12083          	lw	ra,12(sp)
   17d54:	00812403          	lw	s0,8(sp)
   17d58:	00412483          	lw	s1,4(sp)
   17d5c:	01010113          	addi	sp,sp,16
   17d60:	00008067          	ret
   17d64:	8a01a783          	lw	a5,-1888(gp) # 1c778 <errno>
   17d68:	fe0784e3          	beqz	a5,17d50 <_write_r+0x34>
   17d6c:	00c12083          	lw	ra,12(sp)
   17d70:	00812403          	lw	s0,8(sp)
   17d74:	00f4a023          	sw	a5,0(s1)
   17d78:	00412483          	lw	s1,4(sp)
   17d7c:	01010113          	addi	sp,sp,16
   17d80:	00008067          	ret

00017d84 <__errno>:
   17d84:	8901a503          	lw	a0,-1904(gp) # 1c768 <_impure_ptr>
   17d88:	00008067          	ret

00017d8c <__libc_init_array>:
   17d8c:	ff010113          	addi	sp,sp,-16
   17d90:	00812423          	sw	s0,8(sp)
   17d94:	01212023          	sw	s2,0(sp)
   17d98:	0001c437          	lui	s0,0x1c
   17d9c:	0001c937          	lui	s2,0x1c
   17da0:	00112623          	sw	ra,12(sp)
   17da4:	00912223          	sw	s1,4(sp)
   17da8:	00090913          	mv	s2,s2
   17dac:	00040413          	mv	s0,s0
   17db0:	02890263          	beq	s2,s0,17dd4 <__libc_init_array+0x48>
   17db4:	40890933          	sub	s2,s2,s0
   17db8:	40295913          	srai	s2,s2,0x2
   17dbc:	00000493          	li	s1,0
   17dc0:	00042783          	lw	a5,0(s0) # 1c000 <__init_array_start>
   17dc4:	00148493          	addi	s1,s1,1
   17dc8:	00440413          	addi	s0,s0,4
   17dcc:	000780e7          	jalr	a5
   17dd0:	ff24e8e3          	bltu	s1,s2,17dc0 <__libc_init_array+0x34>
   17dd4:	0001c937          	lui	s2,0x1c
   17dd8:	0001c437          	lui	s0,0x1c
   17ddc:	00890913          	addi	s2,s2,8 # 1c008 <__do_global_dtors_aux_fini_array_entry>
   17de0:	00040413          	mv	s0,s0
   17de4:	02890263          	beq	s2,s0,17e08 <__libc_init_array+0x7c>
   17de8:	40890933          	sub	s2,s2,s0
   17dec:	40295913          	srai	s2,s2,0x2
   17df0:	00000493          	li	s1,0
   17df4:	00042783          	lw	a5,0(s0) # 1c000 <__init_array_start>
   17df8:	00148493          	addi	s1,s1,1
   17dfc:	00440413          	addi	s0,s0,4
   17e00:	000780e7          	jalr	a5
   17e04:	ff24e8e3          	bltu	s1,s2,17df4 <__libc_init_array+0x68>
   17e08:	00c12083          	lw	ra,12(sp)
   17e0c:	00812403          	lw	s0,8(sp)
   17e10:	00412483          	lw	s1,4(sp)
   17e14:	00012903          	lw	s2,0(sp)
   17e18:	01010113          	addi	sp,sp,16
   17e1c:	00008067          	ret

00017e20 <memmove>:
   17e20:	02a5f663          	bgeu	a1,a0,17e4c <memmove+0x2c>
   17e24:	00c587b3          	add	a5,a1,a2
   17e28:	02f57263          	bgeu	a0,a5,17e4c <memmove+0x2c>
   17e2c:	04060863          	beqz	a2,17e7c <memmove+0x5c>
   17e30:	00c50633          	add	a2,a0,a2
   17e34:	fff7c703          	lbu	a4,-1(a5)
   17e38:	fff60613          	addi	a2,a2,-1
   17e3c:	fff78793          	addi	a5,a5,-1
   17e40:	00e60023          	sb	a4,0(a2)
   17e44:	fec518e3          	bne	a0,a2,17e34 <memmove+0x14>
   17e48:	00008067          	ret
   17e4c:	00f00793          	li	a5,15
   17e50:	02c7e863          	bltu	a5,a2,17e80 <memmove+0x60>
   17e54:	00050793          	mv	a5,a0
   17e58:	fff60693          	addi	a3,a2,-1
   17e5c:	0e060063          	beqz	a2,17f3c <memmove+0x11c>
   17e60:	00168693          	addi	a3,a3,1
   17e64:	00d786b3          	add	a3,a5,a3
   17e68:	0005c703          	lbu	a4,0(a1)
   17e6c:	00178793          	addi	a5,a5,1
   17e70:	00158593          	addi	a1,a1,1
   17e74:	fee78fa3          	sb	a4,-1(a5)
   17e78:	fed798e3          	bne	a5,a3,17e68 <memmove+0x48>
   17e7c:	00008067          	ret
   17e80:	00b567b3          	or	a5,a0,a1
   17e84:	0037f793          	andi	a5,a5,3
   17e88:	00058893          	mv	a7,a1
   17e8c:	0a079263          	bnez	a5,17f30 <memmove+0x110>
   17e90:	00465793          	srli	a5,a2,0x4
   17e94:	00479813          	slli	a6,a5,0x4
   17e98:	01050833          	add	a6,a0,a6
   17e9c:	fff78793          	addi	a5,a5,-1
   17ea0:	00050713          	mv	a4,a0
   17ea4:	0005a683          	lw	a3,0(a1)
   17ea8:	01058593          	addi	a1,a1,16
   17eac:	01070713          	addi	a4,a4,16
   17eb0:	fed72823          	sw	a3,-16(a4)
   17eb4:	ff45a683          	lw	a3,-12(a1)
   17eb8:	fed72a23          	sw	a3,-12(a4)
   17ebc:	ff85a683          	lw	a3,-8(a1)
   17ec0:	fed72c23          	sw	a3,-8(a4)
   17ec4:	ffc5a683          	lw	a3,-4(a1)
   17ec8:	fed72e23          	sw	a3,-4(a4)
   17ecc:	fd071ce3          	bne	a4,a6,17ea4 <memmove+0x84>
   17ed0:	00479793          	slli	a5,a5,0x4
   17ed4:	01178733          	add	a4,a5,a7
   17ed8:	01070593          	addi	a1,a4,16
   17edc:	00f507b3          	add	a5,a0,a5
   17ee0:	00c67813          	andi	a6,a2,12
   17ee4:	01078793          	addi	a5,a5,16
   17ee8:	00058e13          	mv	t3,a1
   17eec:	00f67693          	andi	a3,a2,15
   17ef0:	04080863          	beqz	a6,17f40 <memmove+0x120>
   17ef4:	ffc68693          	addi	a3,a3,-4
   17ef8:	ffc6f693          	andi	a3,a3,-4
   17efc:	00d70733          	add	a4,a4,a3
   17f00:	01470713          	addi	a4,a4,20
   17f04:	41150833          	sub	a6,a0,a7
   17f08:	0005a303          	lw	t1,0(a1)
   17f0c:	010588b3          	add	a7,a1,a6
   17f10:	00458593          	addi	a1,a1,4
   17f14:	0068a023          	sw	t1,0(a7)
   17f18:	fee598e3          	bne	a1,a4,17f08 <memmove+0xe8>
   17f1c:	00468713          	addi	a4,a3,4
   17f20:	01c705b3          	add	a1,a4,t3
   17f24:	00f707b3          	add	a5,a4,a5
   17f28:	00367613          	andi	a2,a2,3
   17f2c:	f2dff06f          	j	17e58 <memmove+0x38>
   17f30:	fff60693          	addi	a3,a2,-1
   17f34:	00050793          	mv	a5,a0
   17f38:	f29ff06f          	j	17e60 <memmove+0x40>
   17f3c:	00008067          	ret
   17f40:	00068613          	mv	a2,a3
   17f44:	f15ff06f          	j	17e58 <memmove+0x38>

00017f48 <memset>:
   17f48:	00f00313          	li	t1,15
   17f4c:	00050713          	mv	a4,a0
   17f50:	02c37e63          	bgeu	t1,a2,17f8c <memset+0x44>
   17f54:	00f77793          	andi	a5,a4,15
   17f58:	0a079063          	bnez	a5,17ff8 <memset+0xb0>
   17f5c:	08059263          	bnez	a1,17fe0 <memset+0x98>
   17f60:	ff067693          	andi	a3,a2,-16
   17f64:	00f67613          	andi	a2,a2,15
   17f68:	00e686b3          	add	a3,a3,a4
   17f6c:	00b72023          	sw	a1,0(a4)
   17f70:	00b72223          	sw	a1,4(a4)
   17f74:	00b72423          	sw	a1,8(a4)
   17f78:	00b72623          	sw	a1,12(a4)
   17f7c:	01070713          	addi	a4,a4,16
   17f80:	fed766e3          	bltu	a4,a3,17f6c <memset+0x24>
   17f84:	00061463          	bnez	a2,17f8c <memset+0x44>
   17f88:	00008067          	ret
   17f8c:	40c306b3          	sub	a3,t1,a2
   17f90:	00269693          	slli	a3,a3,0x2
   17f94:	00000297          	auipc	t0,0x0
   17f98:	005686b3          	add	a3,a3,t0
   17f9c:	00c68067          	jr	12(a3)
   17fa0:	00b70723          	sb	a1,14(a4)
   17fa4:	00b706a3          	sb	a1,13(a4)
   17fa8:	00b70623          	sb	a1,12(a4)
   17fac:	00b705a3          	sb	a1,11(a4)
   17fb0:	00b70523          	sb	a1,10(a4)
   17fb4:	00b704a3          	sb	a1,9(a4)
   17fb8:	00b70423          	sb	a1,8(a4)
   17fbc:	00b703a3          	sb	a1,7(a4)
   17fc0:	00b70323          	sb	a1,6(a4)
   17fc4:	00b702a3          	sb	a1,5(a4)
   17fc8:	00b70223          	sb	a1,4(a4)
   17fcc:	00b701a3          	sb	a1,3(a4)
   17fd0:	00b70123          	sb	a1,2(a4)
   17fd4:	00b700a3          	sb	a1,1(a4)
   17fd8:	00b70023          	sb	a1,0(a4)
   17fdc:	00008067          	ret
   17fe0:	0ff5f593          	zext.b	a1,a1
   17fe4:	00859693          	slli	a3,a1,0x8
   17fe8:	00d5e5b3          	or	a1,a1,a3
   17fec:	01059693          	slli	a3,a1,0x10
   17ff0:	00d5e5b3          	or	a1,a1,a3
   17ff4:	f6dff06f          	j	17f60 <memset+0x18>
   17ff8:	00279693          	slli	a3,a5,0x2
   17ffc:	00000297          	auipc	t0,0x0
   18000:	005686b3          	add	a3,a3,t0
   18004:	00008293          	mv	t0,ra
   18008:	fa0680e7          	jalr	-96(a3)
   1800c:	00028093          	mv	ra,t0
   18010:	ff078793          	addi	a5,a5,-16
   18014:	40f70733          	sub	a4,a4,a5
   18018:	00f60633          	add	a2,a2,a5
   1801c:	f6c378e3          	bgeu	t1,a2,17f8c <memset+0x44>
   18020:	f3dff06f          	j	17f5c <memset+0x14>

00018024 <memcpy>:
   18024:	00a5c7b3          	xor	a5,a1,a0
   18028:	0037f793          	andi	a5,a5,3
   1802c:	00c508b3          	add	a7,a0,a2
   18030:	06079663          	bnez	a5,1809c <memcpy+0x78>
   18034:	00463613          	sltiu	a2,a2,4
   18038:	06061263          	bnez	a2,1809c <memcpy+0x78>
   1803c:	00357793          	andi	a5,a0,3
   18040:	00050713          	mv	a4,a0
   18044:	0c079a63          	bnez	a5,18118 <memcpy+0xf4>
   18048:	ffc8f613          	andi	a2,a7,-4
   1804c:	40e606b3          	sub	a3,a2,a4
   18050:	02000793          	li	a5,32
   18054:	06d7c463          	blt	a5,a3,180bc <memcpy+0x98>
   18058:	00058693          	mv	a3,a1
   1805c:	00070793          	mv	a5,a4
   18060:	02c77a63          	bgeu	a4,a2,18094 <memcpy+0x70>
   18064:	0006a803          	lw	a6,0(a3)
   18068:	00478793          	addi	a5,a5,4
   1806c:	00468693          	addi	a3,a3,4
   18070:	ff07ae23          	sw	a6,-4(a5)
   18074:	fec7e8e3          	bltu	a5,a2,18064 <memcpy+0x40>
   18078:	fff60613          	addi	a2,a2,-1
   1807c:	40e60633          	sub	a2,a2,a4
   18080:	ffc67613          	andi	a2,a2,-4
   18084:	00458593          	addi	a1,a1,4
   18088:	00470713          	addi	a4,a4,4
   1808c:	00c585b3          	add	a1,a1,a2
   18090:	00c70733          	add	a4,a4,a2
   18094:	01176863          	bltu	a4,a7,180a4 <memcpy+0x80>
   18098:	00008067          	ret
   1809c:	00050713          	mv	a4,a0
   180a0:	ff157ce3          	bgeu	a0,a7,18098 <memcpy+0x74>
   180a4:	0005c783          	lbu	a5,0(a1)
   180a8:	00170713          	addi	a4,a4,1
   180ac:	00158593          	addi	a1,a1,1
   180b0:	fef70fa3          	sb	a5,-1(a4)
   180b4:	fee898e3          	bne	a7,a4,180a4 <memcpy+0x80>
   180b8:	00008067          	ret
   180bc:	0005a683          	lw	a3,0(a1)
   180c0:	0045a283          	lw	t0,4(a1)
   180c4:	0085af83          	lw	t6,8(a1)
   180c8:	00c5af03          	lw	t5,12(a1)
   180cc:	0105ae83          	lw	t4,16(a1)
   180d0:	0145ae03          	lw	t3,20(a1)
   180d4:	0185a303          	lw	t1,24(a1)
   180d8:	01c5a803          	lw	a6,28(a1)
   180dc:	00d72023          	sw	a3,0(a4)
   180e0:	0205a683          	lw	a3,32(a1)
   180e4:	02470713          	addi	a4,a4,36
   180e8:	fe572023          	sw	t0,-32(a4)
   180ec:	fed72e23          	sw	a3,-4(a4)
   180f0:	fff72223          	sw	t6,-28(a4)
   180f4:	40e606b3          	sub	a3,a2,a4
   180f8:	ffe72423          	sw	t5,-24(a4)
   180fc:	ffd72623          	sw	t4,-20(a4)
   18100:	ffc72823          	sw	t3,-16(a4)
   18104:	fe672a23          	sw	t1,-12(a4)
   18108:	ff072c23          	sw	a6,-8(a4)
   1810c:	02458593          	addi	a1,a1,36
   18110:	fad7c6e3          	blt	a5,a3,180bc <memcpy+0x98>
   18114:	f45ff06f          	j	18058 <memcpy+0x34>
   18118:	0005c683          	lbu	a3,0(a1)
   1811c:	00170713          	addi	a4,a4,1
   18120:	00377793          	andi	a5,a4,3
   18124:	fed70fa3          	sb	a3,-1(a4)
   18128:	00158593          	addi	a1,a1,1
   1812c:	f0078ee3          	beqz	a5,18048 <memcpy+0x24>
   18130:	0005c683          	lbu	a3,0(a1)
   18134:	00170713          	addi	a4,a4,1
   18138:	00377793          	andi	a5,a4,3
   1813c:	fed70fa3          	sb	a3,-1(a4)
   18140:	00158593          	addi	a1,a1,1
   18144:	fc079ae3          	bnez	a5,18118 <memcpy+0xf4>
   18148:	f01ff06f          	j	18048 <memcpy+0x24>

0001814c <strlen>:
   1814c:	00357793          	andi	a5,a0,3
   18150:	00050713          	mv	a4,a0
   18154:	04079c63          	bnez	a5,181ac <strlen+0x60>
   18158:	7f7f86b7          	lui	a3,0x7f7f8
   1815c:	f7f68693          	addi	a3,a3,-129 # 7f7f7f7f <__BSS_END__+0x7f7d711f>
   18160:	fff00593          	li	a1,-1
   18164:	00072603          	lw	a2,0(a4)
   18168:	00470713          	addi	a4,a4,4
   1816c:	00d677b3          	and	a5,a2,a3
   18170:	00d787b3          	add	a5,a5,a3
   18174:	00c7e7b3          	or	a5,a5,a2
   18178:	00d7e7b3          	or	a5,a5,a3
   1817c:	feb784e3          	beq	a5,a1,18164 <strlen+0x18>
   18180:	ffc74683          	lbu	a3,-4(a4)
   18184:	40a707b3          	sub	a5,a4,a0
   18188:	04068463          	beqz	a3,181d0 <strlen+0x84>
   1818c:	ffd74683          	lbu	a3,-3(a4)
   18190:	02068c63          	beqz	a3,181c8 <strlen+0x7c>
   18194:	ffe74503          	lbu	a0,-2(a4)
   18198:	00a03533          	snez	a0,a0
   1819c:	00f50533          	add	a0,a0,a5
   181a0:	ffe50513          	addi	a0,a0,-2
   181a4:	00008067          	ret
   181a8:	fa0688e3          	beqz	a3,18158 <strlen+0xc>
   181ac:	00074783          	lbu	a5,0(a4)
   181b0:	00170713          	addi	a4,a4,1
   181b4:	00377693          	andi	a3,a4,3
   181b8:	fe0798e3          	bnez	a5,181a8 <strlen+0x5c>
   181bc:	40a70733          	sub	a4,a4,a0
   181c0:	fff70513          	addi	a0,a4,-1
   181c4:	00008067          	ret
   181c8:	ffd78513          	addi	a0,a5,-3
   181cc:	00008067          	ret
   181d0:	ffc78513          	addi	a0,a5,-4
   181d4:	00008067          	ret

000181d8 <__call_exitprocs>:
   181d8:	fd010113          	addi	sp,sp,-48
   181dc:	01412c23          	sw	s4,24(sp)
   181e0:	03212023          	sw	s2,32(sp)
   181e4:	8a41a903          	lw	s2,-1884(gp) # 1c77c <__atexit>
   181e8:	02112623          	sw	ra,44(sp)
   181ec:	0a090863          	beqz	s2,1829c <__call_exitprocs+0xc4>
   181f0:	01312e23          	sw	s3,28(sp)
   181f4:	01512a23          	sw	s5,20(sp)
   181f8:	01612823          	sw	s6,16(sp)
   181fc:	01712623          	sw	s7,12(sp)
   18200:	02812423          	sw	s0,40(sp)
   18204:	02912223          	sw	s1,36(sp)
   18208:	01812423          	sw	s8,8(sp)
   1820c:	00050b13          	mv	s6,a0
   18210:	00058b93          	mv	s7,a1
   18214:	fff00993          	li	s3,-1
   18218:	00100a93          	li	s5,1
   1821c:	00492483          	lw	s1,4(s2)
   18220:	fff48413          	addi	s0,s1,-1
   18224:	04044e63          	bltz	s0,18280 <__call_exitprocs+0xa8>
   18228:	00249493          	slli	s1,s1,0x2
   1822c:	009904b3          	add	s1,s2,s1
   18230:	080b9063          	bnez	s7,182b0 <__call_exitprocs+0xd8>
   18234:	00492783          	lw	a5,4(s2)
   18238:	0044a683          	lw	a3,4(s1)
   1823c:	fff78793          	addi	a5,a5,-1
   18240:	0c878463          	beq	a5,s0,18308 <__call_exitprocs+0x130>
   18244:	0004a223          	sw	zero,4(s1)
   18248:	02068663          	beqz	a3,18274 <__call_exitprocs+0x9c>
   1824c:	18892783          	lw	a5,392(s2)
   18250:	008a9733          	sll	a4,s5,s0
   18254:	00492c03          	lw	s8,4(s2)
   18258:	00f777b3          	and	a5,a4,a5
   1825c:	06079e63          	bnez	a5,182d8 <__call_exitprocs+0x100>
   18260:	000680e7          	jalr	a3
   18264:	00492703          	lw	a4,4(s2)
   18268:	8a41a783          	lw	a5,-1884(gp) # 1c77c <__atexit>
   1826c:	09871863          	bne	a4,s8,182fc <__call_exitprocs+0x124>
   18270:	09279663          	bne	a5,s2,182fc <__call_exitprocs+0x124>
   18274:	fff40413          	addi	s0,s0,-1
   18278:	ffc48493          	addi	s1,s1,-4
   1827c:	fb341ae3          	bne	s0,s3,18230 <__call_exitprocs+0x58>
   18280:	02812403          	lw	s0,40(sp)
   18284:	02412483          	lw	s1,36(sp)
   18288:	01c12983          	lw	s3,28(sp)
   1828c:	01412a83          	lw	s5,20(sp)
   18290:	01012b03          	lw	s6,16(sp)
   18294:	00c12b83          	lw	s7,12(sp)
   18298:	00812c03          	lw	s8,8(sp)
   1829c:	02c12083          	lw	ra,44(sp)
   182a0:	02012903          	lw	s2,32(sp)
   182a4:	01812a03          	lw	s4,24(sp)
   182a8:	03010113          	addi	sp,sp,48
   182ac:	00008067          	ret
   182b0:	1044a783          	lw	a5,260(s1)
   182b4:	fff40713          	addi	a4,s0,-1
   182b8:	f6fb8ee3          	beq	s7,a5,18234 <__call_exitprocs+0x5c>
   182bc:	ffe40413          	addi	s0,s0,-2
   182c0:	fd3700e3          	beq	a4,s3,18280 <__call_exitprocs+0xa8>
   182c4:	1004a783          	lw	a5,256(s1)
   182c8:	05778463          	beq	a5,s7,18310 <__call_exitprocs+0x138>
   182cc:	ff848493          	addi	s1,s1,-8
   182d0:	ff3410e3          	bne	s0,s3,182b0 <__call_exitprocs+0xd8>
   182d4:	fadff06f          	j	18280 <__call_exitprocs+0xa8>
   182d8:	18c92783          	lw	a5,396(s2)
   182dc:	0844a583          	lw	a1,132(s1)
   182e0:	00f77733          	and	a4,a4,a5
   182e4:	02071c63          	bnez	a4,1831c <__call_exitprocs+0x144>
   182e8:	000b0513          	mv	a0,s6
   182ec:	000680e7          	jalr	a3
   182f0:	00492703          	lw	a4,4(s2)
   182f4:	8a41a783          	lw	a5,-1884(gp) # 1c77c <__atexit>
   182f8:	f7870ce3          	beq	a4,s8,18270 <__call_exitprocs+0x98>
   182fc:	f80782e3          	beqz	a5,18280 <__call_exitprocs+0xa8>
   18300:	00078913          	mv	s2,a5
   18304:	f19ff06f          	j	1821c <__call_exitprocs+0x44>
   18308:	00892223          	sw	s0,4(s2)
   1830c:	f3dff06f          	j	18248 <__call_exitprocs+0x70>
   18310:	00070413          	mv	s0,a4
   18314:	ffc48493          	addi	s1,s1,-4
   18318:	f1dff06f          	j	18234 <__call_exitprocs+0x5c>
   1831c:	00058513          	mv	a0,a1
   18320:	000680e7          	jalr	a3
   18324:	f41ff06f          	j	18264 <__call_exitprocs+0x8c>

00018328 <atexit>:
   18328:	00050593          	mv	a1,a0
   1832c:	00000693          	li	a3,0
   18330:	00000613          	li	a2,0
   18334:	00000513          	li	a0,0
   18338:	25d0106f          	j	19d94 <__register_exitproc>

0001833c <_malloc_trim_r>:
   1833c:	fe010113          	addi	sp,sp,-32
   18340:	01212823          	sw	s2,16(sp)
   18344:	0001c937          	lui	s2,0x1c
   18348:	00812c23          	sw	s0,24(sp)
   1834c:	00912a23          	sw	s1,20(sp)
   18350:	01312623          	sw	s3,12(sp)
   18354:	00058413          	mv	s0,a1
   18358:	00112e23          	sw	ra,28(sp)
   1835c:	00050993          	mv	s3,a0
   18360:	16090913          	addi	s2,s2,352 # 1c160 <__malloc_av_>
   18364:	471000ef          	jal	18fd4 <__malloc_lock>
   18368:	00892783          	lw	a5,8(s2)
   1836c:	00001737          	lui	a4,0x1
   18370:	0047a483          	lw	s1,4(a5)
   18374:	ffc4f493          	andi	s1,s1,-4
   18378:	7ff48793          	addi	a5,s1,2047
   1837c:	7f078793          	addi	a5,a5,2032
   18380:	40878433          	sub	s0,a5,s0
   18384:	00c45413          	srli	s0,s0,0xc
   18388:	fff40413          	addi	s0,s0,-1
   1838c:	00c41413          	slli	s0,s0,0xc
   18390:	00e44e63          	blt	s0,a4,183ac <_malloc_trim_r+0x70>
   18394:	00000593          	li	a1,0
   18398:	00098513          	mv	a0,s3
   1839c:	7c4010ef          	jal	19b60 <_sbrk_r>
   183a0:	00892783          	lw	a5,8(s2)
   183a4:	009787b3          	add	a5,a5,s1
   183a8:	02f50663          	beq	a0,a5,183d4 <_malloc_trim_r+0x98>
   183ac:	00098513          	mv	a0,s3
   183b0:	429000ef          	jal	18fd8 <__malloc_unlock>
   183b4:	01c12083          	lw	ra,28(sp)
   183b8:	01812403          	lw	s0,24(sp)
   183bc:	01412483          	lw	s1,20(sp)
   183c0:	01012903          	lw	s2,16(sp)
   183c4:	00c12983          	lw	s3,12(sp)
   183c8:	00000513          	li	a0,0
   183cc:	02010113          	addi	sp,sp,32
   183d0:	00008067          	ret
   183d4:	408005b3          	neg	a1,s0
   183d8:	00098513          	mv	a0,s3
   183dc:	784010ef          	jal	19b60 <_sbrk_r>
   183e0:	fff00793          	li	a5,-1
   183e4:	04f50663          	beq	a0,a5,18430 <_malloc_trim_r+0xf4>
   183e8:	00021737          	lui	a4,0x21
   183ec:	00892683          	lw	a3,8(s2)
   183f0:	ca872783          	lw	a5,-856(a4) # 20ca8 <__malloc_current_mallinfo>
   183f4:	408484b3          	sub	s1,s1,s0
   183f8:	0014e493          	ori	s1,s1,1
   183fc:	00098513          	mv	a0,s3
   18400:	408787b3          	sub	a5,a5,s0
   18404:	0096a223          	sw	s1,4(a3)
   18408:	caf72423          	sw	a5,-856(a4)
   1840c:	3cd000ef          	jal	18fd8 <__malloc_unlock>
   18410:	01c12083          	lw	ra,28(sp)
   18414:	01812403          	lw	s0,24(sp)
   18418:	01412483          	lw	s1,20(sp)
   1841c:	01012903          	lw	s2,16(sp)
   18420:	00c12983          	lw	s3,12(sp)
   18424:	00100513          	li	a0,1
   18428:	02010113          	addi	sp,sp,32
   1842c:	00008067          	ret
   18430:	00000593          	li	a1,0
   18434:	00098513          	mv	a0,s3
   18438:	728010ef          	jal	19b60 <_sbrk_r>
   1843c:	00892703          	lw	a4,8(s2)
   18440:	00f00693          	li	a3,15
   18444:	40e507b3          	sub	a5,a0,a4
   18448:	f6f6d2e3          	bge	a3,a5,183ac <_malloc_trim_r+0x70>
   1844c:	8941a603          	lw	a2,-1900(gp) # 1c76c <__malloc_sbrk_base>
   18450:	0017e793          	ori	a5,a5,1
   18454:	000216b7          	lui	a3,0x21
   18458:	40c50533          	sub	a0,a0,a2
   1845c:	00f72223          	sw	a5,4(a4)
   18460:	caa6a423          	sw	a0,-856(a3) # 20ca8 <__malloc_current_mallinfo>
   18464:	f49ff06f          	j	183ac <_malloc_trim_r+0x70>

00018468 <_free_r>:
   18468:	12058463          	beqz	a1,18590 <_free_r+0x128>
   1846c:	fe010113          	addi	sp,sp,-32
   18470:	00812c23          	sw	s0,24(sp)
   18474:	00b12623          	sw	a1,12(sp)
   18478:	00050413          	mv	s0,a0
   1847c:	00112e23          	sw	ra,28(sp)
   18480:	355000ef          	jal	18fd4 <__malloc_lock>
   18484:	00c12583          	lw	a1,12(sp)
   18488:	0001c837          	lui	a6,0x1c
   1848c:	16080813          	addi	a6,a6,352 # 1c160 <__malloc_av_>
   18490:	ffc5a503          	lw	a0,-4(a1)
   18494:	ff858713          	addi	a4,a1,-8
   18498:	00882883          	lw	a7,8(a6)
   1849c:	ffe57793          	andi	a5,a0,-2
   184a0:	00f70633          	add	a2,a4,a5
   184a4:	00462683          	lw	a3,4(a2)
   184a8:	00157313          	andi	t1,a0,1
   184ac:	ffc6f693          	andi	a3,a3,-4
   184b0:	18c88863          	beq	a7,a2,18640 <_free_r+0x1d8>
   184b4:	00d62223          	sw	a3,4(a2)
   184b8:	00d608b3          	add	a7,a2,a3
   184bc:	0048a883          	lw	a7,4(a7)
   184c0:	0018f893          	andi	a7,a7,1
   184c4:	08031a63          	bnez	t1,18558 <_free_r+0xf0>
   184c8:	ff85a303          	lw	t1,-8(a1)
   184cc:	0001c5b7          	lui	a1,0x1c
   184d0:	16858593          	addi	a1,a1,360 # 1c168 <__malloc_av_+0x8>
   184d4:	40670733          	sub	a4,a4,t1
   184d8:	00872503          	lw	a0,8(a4)
   184dc:	006787b3          	add	a5,a5,t1
   184e0:	12b50a63          	beq	a0,a1,18614 <_free_r+0x1ac>
   184e4:	00c72303          	lw	t1,12(a4)
   184e8:	00652623          	sw	t1,12(a0)
   184ec:	00a32423          	sw	a0,8(t1)
   184f0:	18088c63          	beqz	a7,18688 <_free_r+0x220>
   184f4:	0017e693          	ori	a3,a5,1
   184f8:	00d72223          	sw	a3,4(a4)
   184fc:	00f62023          	sw	a5,0(a2)
   18500:	1ff00693          	li	a3,511
   18504:	0af6e263          	bltu	a3,a5,185a8 <_free_r+0x140>
   18508:	ff87f693          	andi	a3,a5,-8
   1850c:	00868693          	addi	a3,a3,8
   18510:	00482583          	lw	a1,4(a6)
   18514:	00d806b3          	add	a3,a6,a3
   18518:	0006a603          	lw	a2,0(a3)
   1851c:	0057d513          	srli	a0,a5,0x5
   18520:	00100793          	li	a5,1
   18524:	00a797b3          	sll	a5,a5,a0
   18528:	00b7e7b3          	or	a5,a5,a1
   1852c:	ff868593          	addi	a1,a3,-8
   18530:	00c72423          	sw	a2,8(a4)
   18534:	00b72623          	sw	a1,12(a4)
   18538:	00f82223          	sw	a5,4(a6)
   1853c:	00e6a023          	sw	a4,0(a3)
   18540:	00e62623          	sw	a4,12(a2)
   18544:	00040513          	mv	a0,s0
   18548:	01812403          	lw	s0,24(sp)
   1854c:	01c12083          	lw	ra,28(sp)
   18550:	02010113          	addi	sp,sp,32
   18554:	2850006f          	j	18fd8 <__malloc_unlock>
   18558:	02089e63          	bnez	a7,18594 <_free_r+0x12c>
   1855c:	0001c5b7          	lui	a1,0x1c
   18560:	00d787b3          	add	a5,a5,a3
   18564:	16858593          	addi	a1,a1,360 # 1c168 <__malloc_av_+0x8>
   18568:	00862683          	lw	a3,8(a2)
   1856c:	0017e893          	ori	a7,a5,1
   18570:	00f70533          	add	a0,a4,a5
   18574:	16b68063          	beq	a3,a1,186d4 <_free_r+0x26c>
   18578:	00c62603          	lw	a2,12(a2)
   1857c:	00c6a623          	sw	a2,12(a3)
   18580:	00d62423          	sw	a3,8(a2)
   18584:	01172223          	sw	a7,4(a4)
   18588:	00f52023          	sw	a5,0(a0)
   1858c:	f75ff06f          	j	18500 <_free_r+0x98>
   18590:	00008067          	ret
   18594:	00156513          	ori	a0,a0,1
   18598:	fea5ae23          	sw	a0,-4(a1)
   1859c:	00f62023          	sw	a5,0(a2)
   185a0:	1ff00693          	li	a3,511
   185a4:	f6f6f2e3          	bgeu	a3,a5,18508 <_free_r+0xa0>
   185a8:	0097d693          	srli	a3,a5,0x9
   185ac:	00400613          	li	a2,4
   185b0:	0ed66063          	bltu	a2,a3,18690 <_free_r+0x228>
   185b4:	0067d693          	srli	a3,a5,0x6
   185b8:	03968593          	addi	a1,a3,57
   185bc:	00359593          	slli	a1,a1,0x3
   185c0:	03868613          	addi	a2,a3,56
   185c4:	00b805b3          	add	a1,a6,a1
   185c8:	0005a683          	lw	a3,0(a1)
   185cc:	ff858593          	addi	a1,a1,-8
   185d0:	00d59863          	bne	a1,a3,185e0 <_free_r+0x178>
   185d4:	11c0006f          	j	186f0 <_free_r+0x288>
   185d8:	0086a683          	lw	a3,8(a3)
   185dc:	00d58863          	beq	a1,a3,185ec <_free_r+0x184>
   185e0:	0046a603          	lw	a2,4(a3)
   185e4:	ffc67613          	andi	a2,a2,-4
   185e8:	fec7e8e3          	bltu	a5,a2,185d8 <_free_r+0x170>
   185ec:	00c6a583          	lw	a1,12(a3)
   185f0:	00b72623          	sw	a1,12(a4)
   185f4:	00d72423          	sw	a3,8(a4)
   185f8:	00040513          	mv	a0,s0
   185fc:	01812403          	lw	s0,24(sp)
   18600:	01c12083          	lw	ra,28(sp)
   18604:	00e5a423          	sw	a4,8(a1)
   18608:	00e6a623          	sw	a4,12(a3)
   1860c:	02010113          	addi	sp,sp,32
   18610:	1c90006f          	j	18fd8 <__malloc_unlock>
   18614:	0a089063          	bnez	a7,186b4 <_free_r+0x24c>
   18618:	00c62583          	lw	a1,12(a2)
   1861c:	00862603          	lw	a2,8(a2)
   18620:	00f686b3          	add	a3,a3,a5
   18624:	0016e793          	ori	a5,a3,1
   18628:	00b62623          	sw	a1,12(a2)
   1862c:	00c5a423          	sw	a2,8(a1)
   18630:	00f72223          	sw	a5,4(a4)
   18634:	00d70733          	add	a4,a4,a3
   18638:	00d72023          	sw	a3,0(a4)
   1863c:	f09ff06f          	j	18544 <_free_r+0xdc>
   18640:	00d786b3          	add	a3,a5,a3
   18644:	02031063          	bnez	t1,18664 <_free_r+0x1fc>
   18648:	ff85a783          	lw	a5,-8(a1)
   1864c:	40f70733          	sub	a4,a4,a5
   18650:	00872603          	lw	a2,8(a4)
   18654:	00f686b3          	add	a3,a3,a5
   18658:	00c72783          	lw	a5,12(a4)
   1865c:	00f62623          	sw	a5,12(a2)
   18660:	00c7a423          	sw	a2,8(a5)
   18664:	0016e613          	ori	a2,a3,1
   18668:	8981a783          	lw	a5,-1896(gp) # 1c770 <__malloc_trim_threshold>
   1866c:	00c72223          	sw	a2,4(a4)
   18670:	00e82423          	sw	a4,8(a6)
   18674:	ecf6e8e3          	bltu	a3,a5,18544 <_free_r+0xdc>
   18678:	8b01a583          	lw	a1,-1872(gp) # 1c788 <__malloc_top_pad>
   1867c:	00040513          	mv	a0,s0
   18680:	cbdff0ef          	jal	1833c <_malloc_trim_r>
   18684:	ec1ff06f          	j	18544 <_free_r+0xdc>
   18688:	00d787b3          	add	a5,a5,a3
   1868c:	eddff06f          	j	18568 <_free_r+0x100>
   18690:	01400613          	li	a2,20
   18694:	02d67863          	bgeu	a2,a3,186c4 <_free_r+0x25c>
   18698:	05400613          	li	a2,84
   1869c:	06d66863          	bltu	a2,a3,1870c <_free_r+0x2a4>
   186a0:	00c7d693          	srli	a3,a5,0xc
   186a4:	06f68593          	addi	a1,a3,111
   186a8:	00359593          	slli	a1,a1,0x3
   186ac:	06e68613          	addi	a2,a3,110
   186b0:	f15ff06f          	j	185c4 <_free_r+0x15c>
   186b4:	0017e693          	ori	a3,a5,1
   186b8:	00d72223          	sw	a3,4(a4)
   186bc:	00f62023          	sw	a5,0(a2)
   186c0:	e85ff06f          	j	18544 <_free_r+0xdc>
   186c4:	05c68593          	addi	a1,a3,92
   186c8:	00359593          	slli	a1,a1,0x3
   186cc:	05b68613          	addi	a2,a3,91
   186d0:	ef5ff06f          	j	185c4 <_free_r+0x15c>
   186d4:	00e82a23          	sw	a4,20(a6)
   186d8:	00e82823          	sw	a4,16(a6)
   186dc:	00b72623          	sw	a1,12(a4)
   186e0:	00b72423          	sw	a1,8(a4)
   186e4:	01172223          	sw	a7,4(a4)
   186e8:	00f52023          	sw	a5,0(a0)
   186ec:	e59ff06f          	j	18544 <_free_r+0xdc>
   186f0:	00482503          	lw	a0,4(a6)
   186f4:	40265613          	srai	a2,a2,0x2
   186f8:	00100793          	li	a5,1
   186fc:	00c797b3          	sll	a5,a5,a2
   18700:	00a7e7b3          	or	a5,a5,a0
   18704:	00f82223          	sw	a5,4(a6)
   18708:	ee9ff06f          	j	185f0 <_free_r+0x188>
   1870c:	15400613          	li	a2,340
   18710:	00d66c63          	bltu	a2,a3,18728 <_free_r+0x2c0>
   18714:	00f7d693          	srli	a3,a5,0xf
   18718:	07868593          	addi	a1,a3,120
   1871c:	00359593          	slli	a1,a1,0x3
   18720:	07768613          	addi	a2,a3,119
   18724:	ea1ff06f          	j	185c4 <_free_r+0x15c>
   18728:	55400613          	li	a2,1364
   1872c:	00d66c63          	bltu	a2,a3,18744 <_free_r+0x2dc>
   18730:	0127d693          	srli	a3,a5,0x12
   18734:	07d68593          	addi	a1,a3,125
   18738:	00359593          	slli	a1,a1,0x3
   1873c:	07c68613          	addi	a2,a3,124
   18740:	e85ff06f          	j	185c4 <_free_r+0x15c>
   18744:	3f800593          	li	a1,1016
   18748:	07e00613          	li	a2,126
   1874c:	e79ff06f          	j	185c4 <_free_r+0x15c>

00018750 <_malloc_r>:
   18750:	fc010113          	addi	sp,sp,-64
   18754:	02812c23          	sw	s0,56(sp)
   18758:	02112e23          	sw	ra,60(sp)
   1875c:	00b58793          	addi	a5,a1,11
   18760:	01600713          	li	a4,22
   18764:	00050413          	mv	s0,a0
   18768:	08f76e63          	bltu	a4,a5,18804 <_malloc_r+0xb4>
   1876c:	01000693          	li	a3,16
   18770:	06b6ec63          	bltu	a3,a1,187e8 <_malloc_r+0x98>
   18774:	061000ef          	jal	18fd4 <__malloc_lock>
   18778:	01000693          	li	a3,16
   1877c:	01800713          	li	a4,24
   18780:	00200893          	li	a7,2
   18784:	0001c837          	lui	a6,0x1c
   18788:	16080813          	addi	a6,a6,352 # 1c160 <__malloc_av_>
   1878c:	00e80733          	add	a4,a6,a4
   18790:	00472783          	lw	a5,4(a4)
   18794:	ff870613          	addi	a2,a4,-8
   18798:	44c78e63          	beq	a5,a2,18bf4 <_malloc_r+0x4a4>
   1879c:	0047a703          	lw	a4,4(a5)
   187a0:	00c7a603          	lw	a2,12(a5)
   187a4:	0087a583          	lw	a1,8(a5)
   187a8:	ffc77713          	andi	a4,a4,-4
   187ac:	00e78733          	add	a4,a5,a4
   187b0:	00472683          	lw	a3,4(a4)
   187b4:	00c5a623          	sw	a2,12(a1)
   187b8:	00f12623          	sw	a5,12(sp)
   187bc:	00b62423          	sw	a1,8(a2)
   187c0:	0016e693          	ori	a3,a3,1
   187c4:	00040513          	mv	a0,s0
   187c8:	00d72223          	sw	a3,4(a4)
   187cc:	00d000ef          	jal	18fd8 <__malloc_unlock>
   187d0:	00c12783          	lw	a5,12(sp)
   187d4:	03c12083          	lw	ra,60(sp)
   187d8:	03812403          	lw	s0,56(sp)
   187dc:	00878513          	addi	a0,a5,8
   187e0:	04010113          	addi	sp,sp,64
   187e4:	00008067          	ret
   187e8:	00c00793          	li	a5,12
   187ec:	00f42023          	sw	a5,0(s0)
   187f0:	00000513          	li	a0,0
   187f4:	03c12083          	lw	ra,60(sp)
   187f8:	03812403          	lw	s0,56(sp)
   187fc:	04010113          	addi	sp,sp,64
   18800:	00008067          	ret
   18804:	ff87f693          	andi	a3,a5,-8
   18808:	fe07c0e3          	bltz	a5,187e8 <_malloc_r+0x98>
   1880c:	fcb6eee3          	bltu	a3,a1,187e8 <_malloc_r+0x98>
   18810:	00d12623          	sw	a3,12(sp)
   18814:	7c0000ef          	jal	18fd4 <__malloc_lock>
   18818:	00c12683          	lw	a3,12(sp)
   1881c:	1f700793          	li	a5,503
   18820:	4cd7f863          	bgeu	a5,a3,18cf0 <_malloc_r+0x5a0>
   18824:	0096d793          	srli	a5,a3,0x9
   18828:	16078e63          	beqz	a5,189a4 <_malloc_r+0x254>
   1882c:	00400713          	li	a4,4
   18830:	42f76a63          	bltu	a4,a5,18c64 <_malloc_r+0x514>
   18834:	0066d793          	srli	a5,a3,0x6
   18838:	03978893          	addi	a7,a5,57
   1883c:	03878e13          	addi	t3,a5,56
   18840:	00389513          	slli	a0,a7,0x3
   18844:	0001c837          	lui	a6,0x1c
   18848:	16080813          	addi	a6,a6,352 # 1c160 <__malloc_av_>
   1884c:	00a80533          	add	a0,a6,a0
   18850:	00452783          	lw	a5,4(a0)
   18854:	ff850513          	addi	a0,a0,-8
   18858:	02f50863          	beq	a0,a5,18888 <_malloc_r+0x138>
   1885c:	00f00313          	li	t1,15
   18860:	0140006f          	j	18874 <_malloc_r+0x124>
   18864:	00c7a583          	lw	a1,12(a5)
   18868:	34065663          	bgez	a2,18bb4 <_malloc_r+0x464>
   1886c:	00b50e63          	beq	a0,a1,18888 <_malloc_r+0x138>
   18870:	00058793          	mv	a5,a1
   18874:	0047a703          	lw	a4,4(a5)
   18878:	ffc77713          	andi	a4,a4,-4
   1887c:	40d70633          	sub	a2,a4,a3
   18880:	fec352e3          	bge	t1,a2,18864 <_malloc_r+0x114>
   18884:	000e0893          	mv	a7,t3
   18888:	01082783          	lw	a5,16(a6)
   1888c:	0001ce37          	lui	t3,0x1c
   18890:	168e0e13          	addi	t3,t3,360 # 1c168 <__malloc_av_+0x8>
   18894:	2dc78e63          	beq	a5,t3,18b70 <_malloc_r+0x420>
   18898:	0047a703          	lw	a4,4(a5)
   1889c:	00f00593          	li	a1,15
   188a0:	ffc77713          	andi	a4,a4,-4
   188a4:	40d70633          	sub	a2,a4,a3
   188a8:	46c5ce63          	blt	a1,a2,18d24 <_malloc_r+0x5d4>
   188ac:	01c82a23          	sw	t3,20(a6)
   188b0:	01c82823          	sw	t3,16(a6)
   188b4:	44065463          	bgez	a2,18cfc <_malloc_r+0x5ac>
   188b8:	1ff00613          	li	a2,511
   188bc:	00482303          	lw	t1,4(a6)
   188c0:	34e66263          	bltu	a2,a4,18c04 <_malloc_r+0x4b4>
   188c4:	ff877613          	andi	a2,a4,-8
   188c8:	00860613          	addi	a2,a2,8
   188cc:	00c80633          	add	a2,a6,a2
   188d0:	00062583          	lw	a1,0(a2)
   188d4:	00575513          	srli	a0,a4,0x5
   188d8:	00100713          	li	a4,1
   188dc:	00a71733          	sll	a4,a4,a0
   188e0:	00e36333          	or	t1,t1,a4
   188e4:	ff860713          	addi	a4,a2,-8
   188e8:	00b7a423          	sw	a1,8(a5)
   188ec:	00e7a623          	sw	a4,12(a5)
   188f0:	00682223          	sw	t1,4(a6)
   188f4:	00f62023          	sw	a5,0(a2)
   188f8:	00f5a623          	sw	a5,12(a1)
   188fc:	4028d793          	srai	a5,a7,0x2
   18900:	00100513          	li	a0,1
   18904:	00f51533          	sll	a0,a0,a5
   18908:	0aa36663          	bltu	t1,a0,189b4 <_malloc_r+0x264>
   1890c:	006577b3          	and	a5,a0,t1
   18910:	02079463          	bnez	a5,18938 <_malloc_r+0x1e8>
   18914:	00151513          	slli	a0,a0,0x1
   18918:	ffc8f893          	andi	a7,a7,-4
   1891c:	006577b3          	and	a5,a0,t1
   18920:	00488893          	addi	a7,a7,4
   18924:	00079a63          	bnez	a5,18938 <_malloc_r+0x1e8>
   18928:	00151513          	slli	a0,a0,0x1
   1892c:	006577b3          	and	a5,a0,t1
   18930:	00488893          	addi	a7,a7,4
   18934:	fe078ae3          	beqz	a5,18928 <_malloc_r+0x1d8>
   18938:	00f00e93          	li	t4,15
   1893c:	00389f13          	slli	t5,a7,0x3
   18940:	01e80f33          	add	t5,a6,t5
   18944:	000f0313          	mv	t1,t5
   18948:	00c32703          	lw	a4,12(t1)
   1894c:	00088f93          	mv	t6,a7
   18950:	32e30c63          	beq	t1,a4,18c88 <_malloc_r+0x538>
   18954:	00472603          	lw	a2,4(a4)
   18958:	00070793          	mv	a5,a4
   1895c:	00c72703          	lw	a4,12(a4)
   18960:	ffc67613          	andi	a2,a2,-4
   18964:	40d605b3          	sub	a1,a2,a3
   18968:	32becc63          	blt	t4,a1,18ca0 <_malloc_r+0x550>
   1896c:	fe05c2e3          	bltz	a1,18950 <_malloc_r+0x200>
   18970:	00c78633          	add	a2,a5,a2
   18974:	00462683          	lw	a3,4(a2)
   18978:	0087a583          	lw	a1,8(a5)
   1897c:	00040513          	mv	a0,s0
   18980:	0016e693          	ori	a3,a3,1
   18984:	00d62223          	sw	a3,4(a2)
   18988:	00e5a623          	sw	a4,12(a1)
   1898c:	00b72423          	sw	a1,8(a4)
   18990:	00f12623          	sw	a5,12(sp)
   18994:	644000ef          	jal	18fd8 <__malloc_unlock>
   18998:	00c12783          	lw	a5,12(sp)
   1899c:	00878513          	addi	a0,a5,8
   189a0:	e55ff06f          	j	187f4 <_malloc_r+0xa4>
   189a4:	20000513          	li	a0,512
   189a8:	04000893          	li	a7,64
   189ac:	03f00e13          	li	t3,63
   189b0:	e95ff06f          	j	18844 <_malloc_r+0xf4>
   189b4:	00882783          	lw	a5,8(a6)
   189b8:	0047a703          	lw	a4,4(a5)
   189bc:	ffc77313          	andi	t1,a4,-4
   189c0:	40d30633          	sub	a2,t1,a3
   189c4:	00d36663          	bltu	t1,a3,189d0 <_malloc_r+0x280>
   189c8:	01062713          	slti	a4,a2,16
   189cc:	1a070663          	beqz	a4,18b78 <_malloc_r+0x428>
   189d0:	8b01a583          	lw	a1,-1872(gp) # 1c788 <__malloc_top_pad>
   189d4:	8941a603          	lw	a2,-1900(gp) # 1c76c <__malloc_sbrk_base>
   189d8:	fff00713          	li	a4,-1
   189dc:	00b685b3          	add	a1,a3,a1
   189e0:	42e60663          	beq	a2,a4,18e0c <_malloc_r+0x6bc>
   189e4:	00001737          	lui	a4,0x1
   189e8:	00f70713          	addi	a4,a4,15 # 100f <exit-0xf0a5>
   189ec:	00e585b3          	add	a1,a1,a4
   189f0:	fffff737          	lui	a4,0xfffff
   189f4:	00e5f5b3          	and	a1,a1,a4
   189f8:	00040513          	mv	a0,s0
   189fc:	01012e23          	sw	a6,28(sp)
   18a00:	00f12c23          	sw	a5,24(sp)
   18a04:	00d12a23          	sw	a3,20(sp)
   18a08:	00612823          	sw	t1,16(sp)
   18a0c:	00b12623          	sw	a1,12(sp)
   18a10:	150010ef          	jal	19b60 <_sbrk_r>
   18a14:	fff00713          	li	a4,-1
   18a18:	00c12583          	lw	a1,12(sp)
   18a1c:	01012303          	lw	t1,16(sp)
   18a20:	01412683          	lw	a3,20(sp)
   18a24:	01812783          	lw	a5,24(sp)
   18a28:	01c12803          	lw	a6,28(sp)
   18a2c:	00050e13          	mv	t3,a0
   18a30:	34e50863          	beq	a0,a4,18d80 <_malloc_r+0x630>
   18a34:	00678733          	add	a4,a5,t1
   18a38:	34e56263          	bltu	a0,a4,18d7c <_malloc_r+0x62c>
   18a3c:	00021eb7          	lui	t4,0x21
   18a40:	ca8e8e93          	addi	t4,t4,-856 # 20ca8 <__malloc_current_mallinfo>
   18a44:	000ea603          	lw	a2,0(t4)
   18a48:	00c58633          	add	a2,a1,a2
   18a4c:	00cea023          	sw	a2,0(t4)
   18a50:	48a70c63          	beq	a4,a0,18ee8 <_malloc_r+0x798>
   18a54:	8941af03          	lw	t5,-1900(gp) # 1c76c <__malloc_sbrk_base>
   18a58:	fff00513          	li	a0,-1
   18a5c:	4aaf0463          	beq	t5,a0,18f04 <_malloc_r+0x7b4>
   18a60:	40ee0733          	sub	a4,t3,a4
   18a64:	00c70733          	add	a4,a4,a2
   18a68:	00eea023          	sw	a4,0(t4)
   18a6c:	007e7f13          	andi	t5,t3,7
   18a70:	3a0f0e63          	beqz	t5,18e2c <_malloc_r+0x6dc>
   18a74:	ff8e7e13          	andi	t3,t3,-8
   18a78:	000018b7          	lui	a7,0x1
   18a7c:	008e0e13          	addi	t3,t3,8
   18a80:	00888893          	addi	a7,a7,8 # 1008 <exit-0xf0ac>
   18a84:	00be0633          	add	a2,t3,a1
   18a88:	41e885b3          	sub	a1,a7,t5
   18a8c:	40c585b3          	sub	a1,a1,a2
   18a90:	01459593          	slli	a1,a1,0x14
   18a94:	0145d593          	srli	a1,a1,0x14
   18a98:	00040513          	mv	a0,s0
   18a9c:	03012623          	sw	a6,44(sp)
   18aa0:	03d12423          	sw	t4,40(sp)
   18aa4:	02f12223          	sw	a5,36(sp)
   18aa8:	02d12023          	sw	a3,32(sp)
   18aac:	00612e23          	sw	t1,28(sp)
   18ab0:	01c12c23          	sw	t3,24(sp)
   18ab4:	01e12a23          	sw	t5,20(sp)
   18ab8:	00c12823          	sw	a2,16(sp)
   18abc:	00b12623          	sw	a1,12(sp)
   18ac0:	0a0010ef          	jal	19b60 <_sbrk_r>
   18ac4:	00050713          	mv	a4,a0
   18ac8:	fff00513          	li	a0,-1
   18acc:	00c12583          	lw	a1,12(sp)
   18ad0:	01012603          	lw	a2,16(sp)
   18ad4:	01412f03          	lw	t5,20(sp)
   18ad8:	01812e03          	lw	t3,24(sp)
   18adc:	01c12303          	lw	t1,28(sp)
   18ae0:	02012683          	lw	a3,32(sp)
   18ae4:	02412783          	lw	a5,36(sp)
   18ae8:	02812e83          	lw	t4,40(sp)
   18aec:	02c12803          	lw	a6,44(sp)
   18af0:	46a70063          	beq	a4,a0,18f50 <_malloc_r+0x800>
   18af4:	000ea603          	lw	a2,0(t4)
   18af8:	41c70733          	sub	a4,a4,t3
   18afc:	00b70733          	add	a4,a4,a1
   18b00:	00176713          	ori	a4,a4,1
   18b04:	01c82423          	sw	t3,8(a6)
   18b08:	00c58633          	add	a2,a1,a2
   18b0c:	00ee2223          	sw	a4,4(t3)
   18b10:	00cea023          	sw	a2,0(t4)
   18b14:	03078e63          	beq	a5,a6,18b50 <_malloc_r+0x400>
   18b18:	00f00513          	li	a0,15
   18b1c:	3e657863          	bgeu	a0,t1,18f0c <_malloc_r+0x7bc>
   18b20:	0047a583          	lw	a1,4(a5)
   18b24:	ff430713          	addi	a4,t1,-12
   18b28:	ff877713          	andi	a4,a4,-8
   18b2c:	0015f593          	andi	a1,a1,1
   18b30:	00e5e5b3          	or	a1,a1,a4
   18b34:	00b7a223          	sw	a1,4(a5)
   18b38:	00500893          	li	a7,5
   18b3c:	00e785b3          	add	a1,a5,a4
   18b40:	0115a223          	sw	a7,4(a1)
   18b44:	0115a423          	sw	a7,8(a1)
   18b48:	40e56c63          	bltu	a0,a4,18f60 <_malloc_r+0x810>
   18b4c:	004e2703          	lw	a4,4(t3)
   18b50:	8ac1a583          	lw	a1,-1876(gp) # 1c784 <__malloc_max_sbrked_mem>
   18b54:	00c5f463          	bgeu	a1,a2,18b5c <_malloc_r+0x40c>
   18b58:	8ac1a623          	sw	a2,-1876(gp) # 1c784 <__malloc_max_sbrked_mem>
   18b5c:	8a81a583          	lw	a1,-1880(gp) # 1c780 <__malloc_max_total_mem>
   18b60:	00c5f463          	bgeu	a1,a2,18b68 <_malloc_r+0x418>
   18b64:	8ac1a423          	sw	a2,-1880(gp) # 1c780 <__malloc_max_total_mem>
   18b68:	000e0793          	mv	a5,t3
   18b6c:	21c0006f          	j	18d88 <_malloc_r+0x638>
   18b70:	00482303          	lw	t1,4(a6)
   18b74:	d89ff06f          	j	188fc <_malloc_r+0x1ac>
   18b78:	0016e713          	ori	a4,a3,1
   18b7c:	00e7a223          	sw	a4,4(a5)
   18b80:	00d786b3          	add	a3,a5,a3
   18b84:	00166613          	ori	a2,a2,1
   18b88:	00d82423          	sw	a3,8(a6)
   18b8c:	00040513          	mv	a0,s0
   18b90:	00c6a223          	sw	a2,4(a3)
   18b94:	00f12623          	sw	a5,12(sp)
   18b98:	440000ef          	jal	18fd8 <__malloc_unlock>
   18b9c:	00c12783          	lw	a5,12(sp)
   18ba0:	03c12083          	lw	ra,60(sp)
   18ba4:	03812403          	lw	s0,56(sp)
   18ba8:	00878513          	addi	a0,a5,8
   18bac:	04010113          	addi	sp,sp,64
   18bb0:	00008067          	ret
   18bb4:	0087a603          	lw	a2,8(a5)
   18bb8:	00e78733          	add	a4,a5,a4
   18bbc:	00472683          	lw	a3,4(a4) # fffff004 <__BSS_END__+0xfffde1a4>
   18bc0:	00b62623          	sw	a1,12(a2)
   18bc4:	00f12623          	sw	a5,12(sp)
   18bc8:	0016e693          	ori	a3,a3,1
   18bcc:	00c5a423          	sw	a2,8(a1)
   18bd0:	00040513          	mv	a0,s0
   18bd4:	00d72223          	sw	a3,4(a4)
   18bd8:	400000ef          	jal	18fd8 <__malloc_unlock>
   18bdc:	00c12783          	lw	a5,12(sp)
   18be0:	03c12083          	lw	ra,60(sp)
   18be4:	03812403          	lw	s0,56(sp)
   18be8:	00878513          	addi	a0,a5,8
   18bec:	04010113          	addi	sp,sp,64
   18bf0:	00008067          	ret
   18bf4:	00c72783          	lw	a5,12(a4)
   18bf8:	00288893          	addi	a7,a7,2
   18bfc:	c8f706e3          	beq	a4,a5,18888 <_malloc_r+0x138>
   18c00:	b9dff06f          	j	1879c <_malloc_r+0x4c>
   18c04:	00975613          	srli	a2,a4,0x9
   18c08:	00400593          	li	a1,4
   18c0c:	14c5fe63          	bgeu	a1,a2,18d68 <_malloc_r+0x618>
   18c10:	01400593          	li	a1,20
   18c14:	28c5e263          	bltu	a1,a2,18e98 <_malloc_r+0x748>
   18c18:	05c60513          	addi	a0,a2,92
   18c1c:	00351513          	slli	a0,a0,0x3
   18c20:	05b60593          	addi	a1,a2,91
   18c24:	00a80533          	add	a0,a6,a0
   18c28:	00052603          	lw	a2,0(a0)
   18c2c:	ff850513          	addi	a0,a0,-8
   18c30:	00c51863          	bne	a0,a2,18c40 <_malloc_r+0x4f0>
   18c34:	1e00006f          	j	18e14 <_malloc_r+0x6c4>
   18c38:	00862603          	lw	a2,8(a2)
   18c3c:	00c50863          	beq	a0,a2,18c4c <_malloc_r+0x4fc>
   18c40:	00462583          	lw	a1,4(a2)
   18c44:	ffc5f593          	andi	a1,a1,-4
   18c48:	feb768e3          	bltu	a4,a1,18c38 <_malloc_r+0x4e8>
   18c4c:	00c62503          	lw	a0,12(a2)
   18c50:	00a7a623          	sw	a0,12(a5)
   18c54:	00c7a423          	sw	a2,8(a5)
   18c58:	00f52423          	sw	a5,8(a0)
   18c5c:	00f62623          	sw	a5,12(a2)
   18c60:	c9dff06f          	j	188fc <_malloc_r+0x1ac>
   18c64:	01400713          	li	a4,20
   18c68:	14f77063          	bgeu	a4,a5,18da8 <_malloc_r+0x658>
   18c6c:	05400713          	li	a4,84
   18c70:	24f76263          	bltu	a4,a5,18eb4 <_malloc_r+0x764>
   18c74:	00c6d793          	srli	a5,a3,0xc
   18c78:	06f78893          	addi	a7,a5,111
   18c7c:	06e78e13          	addi	t3,a5,110
   18c80:	00389513          	slli	a0,a7,0x3
   18c84:	bc1ff06f          	j	18844 <_malloc_r+0xf4>
   18c88:	001f8f93          	addi	t6,t6,1 # 100001 <__BSS_END__+0xdf1a1>
   18c8c:	003ff793          	andi	a5,t6,3
   18c90:	00830313          	addi	t1,t1,8
   18c94:	12078863          	beqz	a5,18dc4 <_malloc_r+0x674>
   18c98:	00c32703          	lw	a4,12(t1)
   18c9c:	cb5ff06f          	j	18950 <_malloc_r+0x200>
   18ca0:	0087a503          	lw	a0,8(a5)
   18ca4:	0016e893          	ori	a7,a3,1
   18ca8:	0117a223          	sw	a7,4(a5)
   18cac:	00e52623          	sw	a4,12(a0)
   18cb0:	00a72423          	sw	a0,8(a4)
   18cb4:	00d786b3          	add	a3,a5,a3
   18cb8:	00d82a23          	sw	a3,20(a6)
   18cbc:	00d82823          	sw	a3,16(a6)
   18cc0:	0015e713          	ori	a4,a1,1
   18cc4:	00c78633          	add	a2,a5,a2
   18cc8:	01c6a623          	sw	t3,12(a3)
   18ccc:	01c6a423          	sw	t3,8(a3)
   18cd0:	00e6a223          	sw	a4,4(a3)
   18cd4:	00040513          	mv	a0,s0
   18cd8:	00b62023          	sw	a1,0(a2)
   18cdc:	00f12623          	sw	a5,12(sp)
   18ce0:	2f8000ef          	jal	18fd8 <__malloc_unlock>
   18ce4:	00c12783          	lw	a5,12(sp)
   18ce8:	00878513          	addi	a0,a5,8
   18cec:	b09ff06f          	j	187f4 <_malloc_r+0xa4>
   18cf0:	0036d893          	srli	a7,a3,0x3
   18cf4:	00868713          	addi	a4,a3,8
   18cf8:	a8dff06f          	j	18784 <_malloc_r+0x34>
   18cfc:	00e78733          	add	a4,a5,a4
   18d00:	00472683          	lw	a3,4(a4)
   18d04:	00f12623          	sw	a5,12(sp)
   18d08:	00040513          	mv	a0,s0
   18d0c:	0016e693          	ori	a3,a3,1
   18d10:	00d72223          	sw	a3,4(a4)
   18d14:	2c4000ef          	jal	18fd8 <__malloc_unlock>
   18d18:	00c12783          	lw	a5,12(sp)
   18d1c:	00878513          	addi	a0,a5,8
   18d20:	ad5ff06f          	j	187f4 <_malloc_r+0xa4>
   18d24:	0016e593          	ori	a1,a3,1
   18d28:	00b7a223          	sw	a1,4(a5)
   18d2c:	00d786b3          	add	a3,a5,a3
   18d30:	00d82a23          	sw	a3,20(a6)
   18d34:	00d82823          	sw	a3,16(a6)
   18d38:	00166593          	ori	a1,a2,1
   18d3c:	00e78733          	add	a4,a5,a4
   18d40:	01c6a623          	sw	t3,12(a3)
   18d44:	01c6a423          	sw	t3,8(a3)
   18d48:	00b6a223          	sw	a1,4(a3)
   18d4c:	00040513          	mv	a0,s0
   18d50:	00c72023          	sw	a2,0(a4)
   18d54:	00f12623          	sw	a5,12(sp)
   18d58:	280000ef          	jal	18fd8 <__malloc_unlock>
   18d5c:	00c12783          	lw	a5,12(sp)
   18d60:	00878513          	addi	a0,a5,8
   18d64:	a91ff06f          	j	187f4 <_malloc_r+0xa4>
   18d68:	00675613          	srli	a2,a4,0x6
   18d6c:	03960513          	addi	a0,a2,57
   18d70:	00351513          	slli	a0,a0,0x3
   18d74:	03860593          	addi	a1,a2,56
   18d78:	eadff06f          	j	18c24 <_malloc_r+0x4d4>
   18d7c:	15078a63          	beq	a5,a6,18ed0 <_malloc_r+0x780>
   18d80:	00882783          	lw	a5,8(a6)
   18d84:	0047a703          	lw	a4,4(a5)
   18d88:	ffc77713          	andi	a4,a4,-4
   18d8c:	40d70633          	sub	a2,a4,a3
   18d90:	00d76663          	bltu	a4,a3,18d9c <_malloc_r+0x64c>
   18d94:	01062713          	slti	a4,a2,16
   18d98:	de0700e3          	beqz	a4,18b78 <_malloc_r+0x428>
   18d9c:	00040513          	mv	a0,s0
   18da0:	238000ef          	jal	18fd8 <__malloc_unlock>
   18da4:	a4dff06f          	j	187f0 <_malloc_r+0xa0>
   18da8:	05c78893          	addi	a7,a5,92
   18dac:	05b78e13          	addi	t3,a5,91
   18db0:	00389513          	slli	a0,a7,0x3
   18db4:	a91ff06f          	j	18844 <_malloc_r+0xf4>
   18db8:	008f2783          	lw	a5,8(t5)
   18dbc:	fff88893          	addi	a7,a7,-1
   18dc0:	21e79663          	bne	a5,t5,18fcc <_malloc_r+0x87c>
   18dc4:	0038f793          	andi	a5,a7,3
   18dc8:	ff8f0f13          	addi	t5,t5,-8
   18dcc:	fe0796e3          	bnez	a5,18db8 <_malloc_r+0x668>
   18dd0:	00482703          	lw	a4,4(a6)
   18dd4:	fff54793          	not	a5,a0
   18dd8:	00e7f7b3          	and	a5,a5,a4
   18ddc:	00f82223          	sw	a5,4(a6)
   18de0:	00151513          	slli	a0,a0,0x1
   18de4:	fff50713          	addi	a4,a0,-1
   18de8:	bcf776e3          	bgeu	a4,a5,189b4 <_malloc_r+0x264>
   18dec:	00f57733          	and	a4,a0,a5
   18df0:	00071a63          	bnez	a4,18e04 <_malloc_r+0x6b4>
   18df4:	00151513          	slli	a0,a0,0x1
   18df8:	00f57733          	and	a4,a0,a5
   18dfc:	004f8f93          	addi	t6,t6,4
   18e00:	fe070ae3          	beqz	a4,18df4 <_malloc_r+0x6a4>
   18e04:	000f8893          	mv	a7,t6
   18e08:	b35ff06f          	j	1893c <_malloc_r+0x1ec>
   18e0c:	01058593          	addi	a1,a1,16
   18e10:	be9ff06f          	j	189f8 <_malloc_r+0x2a8>
   18e14:	4025d593          	srai	a1,a1,0x2
   18e18:	00100713          	li	a4,1
   18e1c:	00b71733          	sll	a4,a4,a1
   18e20:	00e36333          	or	t1,t1,a4
   18e24:	00682223          	sw	t1,4(a6)
   18e28:	e29ff06f          	j	18c50 <_malloc_r+0x500>
   18e2c:	00be0633          	add	a2,t3,a1
   18e30:	40c005b3          	neg	a1,a2
   18e34:	01459593          	slli	a1,a1,0x14
   18e38:	0145d593          	srli	a1,a1,0x14
   18e3c:	00040513          	mv	a0,s0
   18e40:	03012423          	sw	a6,40(sp)
   18e44:	03d12223          	sw	t4,36(sp)
   18e48:	02f12023          	sw	a5,32(sp)
   18e4c:	00d12e23          	sw	a3,28(sp)
   18e50:	00612c23          	sw	t1,24(sp)
   18e54:	01c12a23          	sw	t3,20(sp)
   18e58:	00b12623          	sw	a1,12(sp)
   18e5c:	00c12823          	sw	a2,16(sp)
   18e60:	501000ef          	jal	19b60 <_sbrk_r>
   18e64:	00050713          	mv	a4,a0
   18e68:	fff00513          	li	a0,-1
   18e6c:	00c12583          	lw	a1,12(sp)
   18e70:	01412e03          	lw	t3,20(sp)
   18e74:	01812303          	lw	t1,24(sp)
   18e78:	01c12683          	lw	a3,28(sp)
   18e7c:	02012783          	lw	a5,32(sp)
   18e80:	02412e83          	lw	t4,36(sp)
   18e84:	02812803          	lw	a6,40(sp)
   18e88:	c6a716e3          	bne	a4,a0,18af4 <_malloc_r+0x3a4>
   18e8c:	01012703          	lw	a4,16(sp)
   18e90:	00000593          	li	a1,0
   18e94:	c61ff06f          	j	18af4 <_malloc_r+0x3a4>
   18e98:	05400593          	li	a1,84
   18e9c:	06c5ee63          	bltu	a1,a2,18f18 <_malloc_r+0x7c8>
   18ea0:	00c75613          	srli	a2,a4,0xc
   18ea4:	06f60513          	addi	a0,a2,111
   18ea8:	00351513          	slli	a0,a0,0x3
   18eac:	06e60593          	addi	a1,a2,110
   18eb0:	d75ff06f          	j	18c24 <_malloc_r+0x4d4>
   18eb4:	15400713          	li	a4,340
   18eb8:	06f76e63          	bltu	a4,a5,18f34 <_malloc_r+0x7e4>
   18ebc:	00f6d793          	srli	a5,a3,0xf
   18ec0:	07878893          	addi	a7,a5,120
   18ec4:	07778e13          	addi	t3,a5,119
   18ec8:	00389513          	slli	a0,a7,0x3
   18ecc:	979ff06f          	j	18844 <_malloc_r+0xf4>
   18ed0:	00021eb7          	lui	t4,0x21
   18ed4:	ca8e8e93          	addi	t4,t4,-856 # 20ca8 <__malloc_current_mallinfo>
   18ed8:	000ea603          	lw	a2,0(t4)
   18edc:	00c58633          	add	a2,a1,a2
   18ee0:	00cea023          	sw	a2,0(t4)
   18ee4:	b71ff06f          	j	18a54 <_malloc_r+0x304>
   18ee8:	01451513          	slli	a0,a0,0x14
   18eec:	b60514e3          	bnez	a0,18a54 <_malloc_r+0x304>
   18ef0:	00882e03          	lw	t3,8(a6)
   18ef4:	00b305b3          	add	a1,t1,a1
   18ef8:	0015e713          	ori	a4,a1,1
   18efc:	00ee2223          	sw	a4,4(t3)
   18f00:	c51ff06f          	j	18b50 <_malloc_r+0x400>
   18f04:	89c1aa23          	sw	t3,-1900(gp) # 1c76c <__malloc_sbrk_base>
   18f08:	b65ff06f          	j	18a6c <_malloc_r+0x31c>
   18f0c:	00100793          	li	a5,1
   18f10:	00fe2223          	sw	a5,4(t3)
   18f14:	e89ff06f          	j	18d9c <_malloc_r+0x64c>
   18f18:	15400593          	li	a1,340
   18f1c:	06c5ec63          	bltu	a1,a2,18f94 <_malloc_r+0x844>
   18f20:	00f75613          	srli	a2,a4,0xf
   18f24:	07860513          	addi	a0,a2,120
   18f28:	00351513          	slli	a0,a0,0x3
   18f2c:	07760593          	addi	a1,a2,119
   18f30:	cf5ff06f          	j	18c24 <_malloc_r+0x4d4>
   18f34:	55400713          	li	a4,1364
   18f38:	06f76c63          	bltu	a4,a5,18fb0 <_malloc_r+0x860>
   18f3c:	0126d793          	srli	a5,a3,0x12
   18f40:	07d78893          	addi	a7,a5,125
   18f44:	07c78e13          	addi	t3,a5,124
   18f48:	00389513          	slli	a0,a7,0x3
   18f4c:	8f9ff06f          	j	18844 <_malloc_r+0xf4>
   18f50:	ff8f0f13          	addi	t5,t5,-8
   18f54:	01e60733          	add	a4,a2,t5
   18f58:	00000593          	li	a1,0
   18f5c:	b99ff06f          	j	18af4 <_malloc_r+0x3a4>
   18f60:	00878593          	addi	a1,a5,8
   18f64:	00040513          	mv	a0,s0
   18f68:	01012a23          	sw	a6,20(sp)
   18f6c:	01d12823          	sw	t4,16(sp)
   18f70:	00d12623          	sw	a3,12(sp)
   18f74:	cf4ff0ef          	jal	18468 <_free_r>
   18f78:	01412803          	lw	a6,20(sp)
   18f7c:	01012e83          	lw	t4,16(sp)
   18f80:	00c12683          	lw	a3,12(sp)
   18f84:	00882e03          	lw	t3,8(a6)
   18f88:	000ea603          	lw	a2,0(t4)
   18f8c:	004e2703          	lw	a4,4(t3)
   18f90:	bc1ff06f          	j	18b50 <_malloc_r+0x400>
   18f94:	55400593          	li	a1,1364
   18f98:	02c5e463          	bltu	a1,a2,18fc0 <_malloc_r+0x870>
   18f9c:	01275613          	srli	a2,a4,0x12
   18fa0:	07d60513          	addi	a0,a2,125
   18fa4:	00351513          	slli	a0,a0,0x3
   18fa8:	07c60593          	addi	a1,a2,124
   18fac:	c79ff06f          	j	18c24 <_malloc_r+0x4d4>
   18fb0:	3f800513          	li	a0,1016
   18fb4:	07f00893          	li	a7,127
   18fb8:	07e00e13          	li	t3,126
   18fbc:	889ff06f          	j	18844 <_malloc_r+0xf4>
   18fc0:	3f800513          	li	a0,1016
   18fc4:	07e00593          	li	a1,126
   18fc8:	c5dff06f          	j	18c24 <_malloc_r+0x4d4>
   18fcc:	00482783          	lw	a5,4(a6)
   18fd0:	e11ff06f          	j	18de0 <_malloc_r+0x690>

00018fd4 <__malloc_lock>:
   18fd4:	00008067          	ret

00018fd8 <__malloc_unlock>:
   18fd8:	00008067          	ret

00018fdc <_realloc_r>:
   18fdc:	1e058863          	beqz	a1,191cc <_realloc_r+0x1f0>
   18fe0:	fe010113          	addi	sp,sp,-32
   18fe4:	00812c23          	sw	s0,24(sp)
   18fe8:	00912a23          	sw	s1,20(sp)
   18fec:	00058413          	mv	s0,a1
   18ff0:	00112e23          	sw	ra,28(sp)
   18ff4:	00050493          	mv	s1,a0
   18ff8:	00c12023          	sw	a2,0(sp)
   18ffc:	fd9ff0ef          	jal	18fd4 <__malloc_lock>
   19000:	00012583          	lw	a1,0(sp)
   19004:	01600713          	li	a4,22
   19008:	00b58793          	addi	a5,a1,11
   1900c:	12f77863          	bgeu	a4,a5,1913c <_realloc_r+0x160>
   19010:	ff87f793          	andi	a5,a5,-8
   19014:	00078693          	mv	a3,a5
   19018:	01f7d713          	srli	a4,a5,0x1f
   1901c:	1eb7e463          	bltu	a5,a1,19204 <_realloc_r+0x228>
   19020:	1e071263          	bnez	a4,19204 <_realloc_r+0x228>
   19024:	ffc42603          	lw	a2,-4(s0)
   19028:	ff840813          	addi	a6,s0,-8
   1902c:	ffc67713          	andi	a4,a2,-4
   19030:	12d75863          	bge	a4,a3,19160 <_realloc_r+0x184>
   19034:	0001ce37          	lui	t3,0x1c
   19038:	160e0e13          	addi	t3,t3,352 # 1c160 <__malloc_av_>
   1903c:	008e2883          	lw	a7,8(t3)
   19040:	00e80333          	add	t1,a6,a4
   19044:	00432503          	lw	a0,4(t1)
   19048:	1e688063          	beq	a7,t1,19228 <_realloc_r+0x24c>
   1904c:	ffe57893          	andi	a7,a0,-2
   19050:	011308b3          	add	a7,t1,a7
   19054:	0048a883          	lw	a7,4(a7)
   19058:	0018f893          	andi	a7,a7,1
   1905c:	14089a63          	bnez	a7,191b0 <_realloc_r+0x1d4>
   19060:	ffc57513          	andi	a0,a0,-4
   19064:	00a708b3          	add	a7,a4,a0
   19068:	0ed8d263          	bge	a7,a3,1914c <_realloc_r+0x170>
   1906c:	00167613          	andi	a2,a2,1
   19070:	02061463          	bnez	a2,19098 <_realloc_r+0xbc>
   19074:	ff842e83          	lw	t4,-8(s0)
   19078:	41d80eb3          	sub	t4,a6,t4
   1907c:	004ea603          	lw	a2,4(t4)
   19080:	ffc67613          	andi	a2,a2,-4
   19084:	00c50533          	add	a0,a0,a2
   19088:	00e508b3          	add	a7,a0,a4
   1908c:	32d8d463          	bge	a7,a3,193b4 <_realloc_r+0x3d8>
   19090:	00c708b3          	add	a7,a4,a2
   19094:	28d8dc63          	bge	a7,a3,1932c <_realloc_r+0x350>
   19098:	00048513          	mv	a0,s1
   1909c:	00e12423          	sw	a4,8(sp)
   190a0:	01012223          	sw	a6,4(sp)
   190a4:	00f12023          	sw	a5,0(sp)
   190a8:	ea8ff0ef          	jal	18750 <_malloc_r>
   190ac:	00012783          	lw	a5,0(sp)
   190b0:	00412803          	lw	a6,4(sp)
   190b4:	00812703          	lw	a4,8(sp)
   190b8:	00050693          	mv	a3,a0
   190bc:	44050863          	beqz	a0,1950c <_realloc_r+0x530>
   190c0:	ffc42603          	lw	a2,-4(s0)
   190c4:	ff850593          	addi	a1,a0,-8
   190c8:	ffe67613          	andi	a2,a2,-2
   190cc:	00c80633          	add	a2,a6,a2
   190d0:	22b60463          	beq	a2,a1,192f8 <_realloc_r+0x31c>
   190d4:	ffc70613          	addi	a2,a4,-4
   190d8:	02400793          	li	a5,36
   190dc:	2cc7e263          	bltu	a5,a2,193a0 <_realloc_r+0x3c4>
   190e0:	01300713          	li	a4,19
   190e4:	22c76263          	bltu	a4,a2,19308 <_realloc_r+0x32c>
   190e8:	00050793          	mv	a5,a0
   190ec:	00040713          	mv	a4,s0
   190f0:	00072603          	lw	a2,0(a4)
   190f4:	00c7a023          	sw	a2,0(a5)
   190f8:	00472603          	lw	a2,4(a4)
   190fc:	00c7a223          	sw	a2,4(a5)
   19100:	00872703          	lw	a4,8(a4)
   19104:	00e7a423          	sw	a4,8(a5)
   19108:	00040593          	mv	a1,s0
   1910c:	00048513          	mv	a0,s1
   19110:	00d12023          	sw	a3,0(sp)
   19114:	b54ff0ef          	jal	18468 <_free_r>
   19118:	00048513          	mv	a0,s1
   1911c:	ebdff0ef          	jal	18fd8 <__malloc_unlock>
   19120:	00012683          	lw	a3,0(sp)
   19124:	01c12083          	lw	ra,28(sp)
   19128:	01812403          	lw	s0,24(sp)
   1912c:	01412483          	lw	s1,20(sp)
   19130:	00068513          	mv	a0,a3
   19134:	02010113          	addi	sp,sp,32
   19138:	00008067          	ret
   1913c:	01000693          	li	a3,16
   19140:	00068793          	mv	a5,a3
   19144:	00000713          	li	a4,0
   19148:	ed5ff06f          	j	1901c <_realloc_r+0x40>
   1914c:	00c32683          	lw	a3,12(t1)
   19150:	00832603          	lw	a2,8(t1)
   19154:	00088713          	mv	a4,a7
   19158:	00d62623          	sw	a3,12(a2)
   1915c:	00c6a423          	sw	a2,8(a3)
   19160:	00482683          	lw	a3,4(a6)
   19164:	40f70533          	sub	a0,a4,a5
   19168:	00f00593          	li	a1,15
   1916c:	0016f693          	andi	a3,a3,1
   19170:	00e80633          	add	a2,a6,a4
   19174:	06a5e063          	bltu	a1,a0,191d4 <_realloc_r+0x1f8>
   19178:	00d766b3          	or	a3,a4,a3
   1917c:	00d82223          	sw	a3,4(a6)
   19180:	00462783          	lw	a5,4(a2)
   19184:	0017e793          	ori	a5,a5,1
   19188:	00f62223          	sw	a5,4(a2)
   1918c:	00048513          	mv	a0,s1
   19190:	e49ff0ef          	jal	18fd8 <__malloc_unlock>
   19194:	00040693          	mv	a3,s0
   19198:	01c12083          	lw	ra,28(sp)
   1919c:	01812403          	lw	s0,24(sp)
   191a0:	01412483          	lw	s1,20(sp)
   191a4:	00068513          	mv	a0,a3
   191a8:	02010113          	addi	sp,sp,32
   191ac:	00008067          	ret
   191b0:	00167613          	andi	a2,a2,1
   191b4:	ee0612e3          	bnez	a2,19098 <_realloc_r+0xbc>
   191b8:	ff842e83          	lw	t4,-8(s0)
   191bc:	41d80eb3          	sub	t4,a6,t4
   191c0:	004ea603          	lw	a2,4(t4)
   191c4:	ffc67613          	andi	a2,a2,-4
   191c8:	ec9ff06f          	j	19090 <_realloc_r+0xb4>
   191cc:	00060593          	mv	a1,a2
   191d0:	d80ff06f          	j	18750 <_malloc_r>
   191d4:	00d7e6b3          	or	a3,a5,a3
   191d8:	00d82223          	sw	a3,4(a6)
   191dc:	00f805b3          	add	a1,a6,a5
   191e0:	00156513          	ori	a0,a0,1
   191e4:	00a5a223          	sw	a0,4(a1)
   191e8:	00462783          	lw	a5,4(a2)
   191ec:	00858593          	addi	a1,a1,8
   191f0:	00048513          	mv	a0,s1
   191f4:	0017e793          	ori	a5,a5,1
   191f8:	00f62223          	sw	a5,4(a2)
   191fc:	a6cff0ef          	jal	18468 <_free_r>
   19200:	f8dff06f          	j	1918c <_realloc_r+0x1b0>
   19204:	00c00793          	li	a5,12
   19208:	00f4a023          	sw	a5,0(s1)
   1920c:	00000693          	li	a3,0
   19210:	01c12083          	lw	ra,28(sp)
   19214:	01812403          	lw	s0,24(sp)
   19218:	01412483          	lw	s1,20(sp)
   1921c:	00068513          	mv	a0,a3
   19220:	02010113          	addi	sp,sp,32
   19224:	00008067          	ret
   19228:	ffc57513          	andi	a0,a0,-4
   1922c:	00e508b3          	add	a7,a0,a4
   19230:	01078313          	addi	t1,a5,16
   19234:	2468da63          	bge	a7,t1,19488 <_realloc_r+0x4ac>
   19238:	00167613          	andi	a2,a2,1
   1923c:	e4061ee3          	bnez	a2,19098 <_realloc_r+0xbc>
   19240:	ff842e83          	lw	t4,-8(s0)
   19244:	41d80eb3          	sub	t4,a6,t4
   19248:	004ea603          	lw	a2,4(t4)
   1924c:	ffc67613          	andi	a2,a2,-4
   19250:	00c50533          	add	a0,a0,a2
   19254:	00e508b3          	add	a7,a0,a4
   19258:	e268cce3          	blt	a7,t1,19090 <_realloc_r+0xb4>
   1925c:	00cea683          	lw	a3,12(t4)
   19260:	008ea583          	lw	a1,8(t4)
   19264:	ffc70613          	addi	a2,a4,-4
   19268:	02400713          	li	a4,36
   1926c:	00d5a623          	sw	a3,12(a1)
   19270:	00b6a423          	sw	a1,8(a3)
   19274:	008e8693          	addi	a3,t4,8
   19278:	2ec76263          	bltu	a4,a2,1955c <_realloc_r+0x580>
   1927c:	01300593          	li	a1,19
   19280:	00068713          	mv	a4,a3
   19284:	02c5f263          	bgeu	a1,a2,192a8 <_realloc_r+0x2cc>
   19288:	00042583          	lw	a1,0(s0)
   1928c:	01b00713          	li	a4,27
   19290:	00bea423          	sw	a1,8(t4)
   19294:	00442583          	lw	a1,4(s0)
   19298:	00bea623          	sw	a1,12(t4)
   1929c:	30c76a63          	bltu	a4,a2,195b0 <_realloc_r+0x5d4>
   192a0:	00840413          	addi	s0,s0,8
   192a4:	010e8713          	addi	a4,t4,16
   192a8:	00042603          	lw	a2,0(s0)
   192ac:	00c72023          	sw	a2,0(a4)
   192b0:	00442603          	lw	a2,4(s0)
   192b4:	00c72223          	sw	a2,4(a4)
   192b8:	00842603          	lw	a2,8(s0)
   192bc:	00c72423          	sw	a2,8(a4)
   192c0:	00fe8633          	add	a2,t4,a5
   192c4:	40f88733          	sub	a4,a7,a5
   192c8:	00ce2423          	sw	a2,8(t3)
   192cc:	00176713          	ori	a4,a4,1
   192d0:	00e62223          	sw	a4,4(a2)
   192d4:	004ea703          	lw	a4,4(t4)
   192d8:	00048513          	mv	a0,s1
   192dc:	00d12023          	sw	a3,0(sp)
   192e0:	00177713          	andi	a4,a4,1
   192e4:	00f767b3          	or	a5,a4,a5
   192e8:	00fea223          	sw	a5,4(t4)
   192ec:	cedff0ef          	jal	18fd8 <__malloc_unlock>
   192f0:	00012683          	lw	a3,0(sp)
   192f4:	ea5ff06f          	j	19198 <_realloc_r+0x1bc>
   192f8:	ffc52683          	lw	a3,-4(a0)
   192fc:	ffc6f693          	andi	a3,a3,-4
   19300:	00d70733          	add	a4,a4,a3
   19304:	e5dff06f          	j	19160 <_realloc_r+0x184>
   19308:	00042583          	lw	a1,0(s0)
   1930c:	01b00713          	li	a4,27
   19310:	00b52023          	sw	a1,0(a0)
   19314:	00442583          	lw	a1,4(s0)
   19318:	00b52223          	sw	a1,4(a0)
   1931c:	10c76e63          	bltu	a4,a2,19438 <_realloc_r+0x45c>
   19320:	00840713          	addi	a4,s0,8
   19324:	00850793          	addi	a5,a0,8
   19328:	dc9ff06f          	j	190f0 <_realloc_r+0x114>
   1932c:	00cea683          	lw	a3,12(t4)
   19330:	008ea583          	lw	a1,8(t4)
   19334:	ffc70613          	addi	a2,a4,-4
   19338:	02400513          	li	a0,36
   1933c:	00d5a623          	sw	a3,12(a1)
   19340:	00b6a423          	sw	a1,8(a3)
   19344:	008e8693          	addi	a3,t4,8
   19348:	10c56863          	bltu	a0,a2,19458 <_realloc_r+0x47c>
   1934c:	01300593          	li	a1,19
   19350:	00068713          	mv	a4,a3
   19354:	02c5f263          	bgeu	a1,a2,19378 <_realloc_r+0x39c>
   19358:	00042583          	lw	a1,0(s0)
   1935c:	01b00713          	li	a4,27
   19360:	00bea423          	sw	a1,8(t4)
   19364:	00442583          	lw	a1,4(s0)
   19368:	00bea623          	sw	a1,12(t4)
   1936c:	18c76063          	bltu	a4,a2,194ec <_realloc_r+0x510>
   19370:	00840413          	addi	s0,s0,8
   19374:	010e8713          	addi	a4,t4,16
   19378:	00042603          	lw	a2,0(s0)
   1937c:	00c72023          	sw	a2,0(a4)
   19380:	00442603          	lw	a2,4(s0)
   19384:	00c72223          	sw	a2,4(a4)
   19388:	00842603          	lw	a2,8(s0)
   1938c:	00c72423          	sw	a2,8(a4)
   19390:	00068413          	mv	s0,a3
   19394:	00088713          	mv	a4,a7
   19398:	000e8813          	mv	a6,t4
   1939c:	dc5ff06f          	j	19160 <_realloc_r+0x184>
   193a0:	00040593          	mv	a1,s0
   193a4:	00a12023          	sw	a0,0(sp)
   193a8:	a79fe0ef          	jal	17e20 <memmove>
   193ac:	00012683          	lw	a3,0(sp)
   193b0:	d59ff06f          	j	19108 <_realloc_r+0x12c>
   193b4:	00c32683          	lw	a3,12(t1)
   193b8:	00832583          	lw	a1,8(t1)
   193bc:	ffc70613          	addi	a2,a4,-4
   193c0:	02400513          	li	a0,36
   193c4:	00d5a623          	sw	a3,12(a1)
   193c8:	00b6a423          	sw	a1,8(a3)
   193cc:	00cea703          	lw	a4,12(t4)
   193d0:	008ea683          	lw	a3,8(t4)
   193d4:	008e8813          	addi	a6,t4,8
   193d8:	00e6a623          	sw	a4,12(a3)
   193dc:	00d72423          	sw	a3,8(a4)
   193e0:	0cc56e63          	bltu	a0,a2,194bc <_realloc_r+0x4e0>
   193e4:	01300693          	li	a3,19
   193e8:	00080713          	mv	a4,a6
   193ec:	02c6f263          	bgeu	a3,a2,19410 <_realloc_r+0x434>
   193f0:	00042683          	lw	a3,0(s0)
   193f4:	01b00713          	li	a4,27
   193f8:	00dea423          	sw	a3,8(t4)
   193fc:	00442683          	lw	a3,4(s0)
   19400:	00dea623          	sw	a3,12(t4)
   19404:	12c76a63          	bltu	a4,a2,19538 <_realloc_r+0x55c>
   19408:	00840413          	addi	s0,s0,8
   1940c:	010e8713          	addi	a4,t4,16
   19410:	00042683          	lw	a3,0(s0)
   19414:	00d72023          	sw	a3,0(a4)
   19418:	00442683          	lw	a3,4(s0)
   1941c:	00d72223          	sw	a3,4(a4)
   19420:	00842683          	lw	a3,8(s0)
   19424:	00d72423          	sw	a3,8(a4)
   19428:	00080413          	mv	s0,a6
   1942c:	00088713          	mv	a4,a7
   19430:	000e8813          	mv	a6,t4
   19434:	d2dff06f          	j	19160 <_realloc_r+0x184>
   19438:	00842703          	lw	a4,8(s0)
   1943c:	00e52423          	sw	a4,8(a0)
   19440:	00c42703          	lw	a4,12(s0)
   19444:	00e52623          	sw	a4,12(a0)
   19448:	0cf60a63          	beq	a2,a5,1951c <_realloc_r+0x540>
   1944c:	01040713          	addi	a4,s0,16
   19450:	01050793          	addi	a5,a0,16
   19454:	c9dff06f          	j	190f0 <_realloc_r+0x114>
   19458:	00068513          	mv	a0,a3
   1945c:	00040593          	mv	a1,s0
   19460:	01d12623          	sw	t4,12(sp)
   19464:	00f12423          	sw	a5,8(sp)
   19468:	01112223          	sw	a7,4(sp)
   1946c:	00d12023          	sw	a3,0(sp)
   19470:	9b1fe0ef          	jal	17e20 <memmove>
   19474:	00c12e83          	lw	t4,12(sp)
   19478:	00812783          	lw	a5,8(sp)
   1947c:	00412883          	lw	a7,4(sp)
   19480:	00012683          	lw	a3,0(sp)
   19484:	f0dff06f          	j	19390 <_realloc_r+0x3b4>
   19488:	00f80833          	add	a6,a6,a5
   1948c:	40f88733          	sub	a4,a7,a5
   19490:	010e2423          	sw	a6,8(t3)
   19494:	00176713          	ori	a4,a4,1
   19498:	00e82223          	sw	a4,4(a6)
   1949c:	ffc42703          	lw	a4,-4(s0)
   194a0:	00048513          	mv	a0,s1
   194a4:	00177713          	andi	a4,a4,1
   194a8:	00f767b3          	or	a5,a4,a5
   194ac:	fef42e23          	sw	a5,-4(s0)
   194b0:	b29ff0ef          	jal	18fd8 <__malloc_unlock>
   194b4:	00040693          	mv	a3,s0
   194b8:	ce1ff06f          	j	19198 <_realloc_r+0x1bc>
   194bc:	00080513          	mv	a0,a6
   194c0:	00040593          	mv	a1,s0
   194c4:	01d12623          	sw	t4,12(sp)
   194c8:	00f12423          	sw	a5,8(sp)
   194cc:	01112223          	sw	a7,4(sp)
   194d0:	01012023          	sw	a6,0(sp)
   194d4:	94dfe0ef          	jal	17e20 <memmove>
   194d8:	00012803          	lw	a6,0(sp)
   194dc:	00412883          	lw	a7,4(sp)
   194e0:	00812783          	lw	a5,8(sp)
   194e4:	00c12e83          	lw	t4,12(sp)
   194e8:	f41ff06f          	j	19428 <_realloc_r+0x44c>
   194ec:	00842703          	lw	a4,8(s0)
   194f0:	00eea823          	sw	a4,16(t4)
   194f4:	00c42703          	lw	a4,12(s0)
   194f8:	00eeaa23          	sw	a4,20(t4)
   194fc:	08a60c63          	beq	a2,a0,19594 <_realloc_r+0x5b8>
   19500:	01040413          	addi	s0,s0,16
   19504:	018e8713          	addi	a4,t4,24
   19508:	e71ff06f          	j	19378 <_realloc_r+0x39c>
   1950c:	00048513          	mv	a0,s1
   19510:	ac9ff0ef          	jal	18fd8 <__malloc_unlock>
   19514:	00000693          	li	a3,0
   19518:	cf9ff06f          	j	19210 <_realloc_r+0x234>
   1951c:	01042603          	lw	a2,16(s0)
   19520:	01840713          	addi	a4,s0,24
   19524:	01850793          	addi	a5,a0,24
   19528:	00c52823          	sw	a2,16(a0)
   1952c:	01442603          	lw	a2,20(s0)
   19530:	00c52a23          	sw	a2,20(a0)
   19534:	bbdff06f          	j	190f0 <_realloc_r+0x114>
   19538:	00842683          	lw	a3,8(s0)
   1953c:	02400713          	li	a4,36
   19540:	00dea823          	sw	a3,16(t4)
   19544:	00c42683          	lw	a3,12(s0)
   19548:	00deaa23          	sw	a3,20(t4)
   1954c:	08e60463          	beq	a2,a4,195d4 <_realloc_r+0x5f8>
   19550:	01040413          	addi	s0,s0,16
   19554:	018e8713          	addi	a4,t4,24
   19558:	eb9ff06f          	j	19410 <_realloc_r+0x434>
   1955c:	00068513          	mv	a0,a3
   19560:	00040593          	mv	a1,s0
   19564:	01d12623          	sw	t4,12(sp)
   19568:	00f12423          	sw	a5,8(sp)
   1956c:	01112223          	sw	a7,4(sp)
   19570:	00d12023          	sw	a3,0(sp)
   19574:	8adfe0ef          	jal	17e20 <memmove>
   19578:	0001c7b7          	lui	a5,0x1c
   1957c:	16078e13          	addi	t3,a5,352 # 1c160 <__malloc_av_>
   19580:	00c12e83          	lw	t4,12(sp)
   19584:	00812783          	lw	a5,8(sp)
   19588:	00412883          	lw	a7,4(sp)
   1958c:	00012683          	lw	a3,0(sp)
   19590:	d31ff06f          	j	192c0 <_realloc_r+0x2e4>
   19594:	01042603          	lw	a2,16(s0)
   19598:	020e8713          	addi	a4,t4,32
   1959c:	01840413          	addi	s0,s0,24
   195a0:	00ceac23          	sw	a2,24(t4)
   195a4:	ffc42603          	lw	a2,-4(s0)
   195a8:	00ceae23          	sw	a2,28(t4)
   195ac:	dcdff06f          	j	19378 <_realloc_r+0x39c>
   195b0:	00842583          	lw	a1,8(s0)
   195b4:	02400713          	li	a4,36
   195b8:	00bea823          	sw	a1,16(t4)
   195bc:	00c42583          	lw	a1,12(s0)
   195c0:	00beaa23          	sw	a1,20(t4)
   195c4:	02e60663          	beq	a2,a4,195f0 <_realloc_r+0x614>
   195c8:	01040413          	addi	s0,s0,16
   195cc:	018e8713          	addi	a4,t4,24
   195d0:	cd9ff06f          	j	192a8 <_realloc_r+0x2cc>
   195d4:	01042683          	lw	a3,16(s0)
   195d8:	020e8713          	addi	a4,t4,32
   195dc:	01840413          	addi	s0,s0,24
   195e0:	00deac23          	sw	a3,24(t4)
   195e4:	ffc42683          	lw	a3,-4(s0)
   195e8:	00deae23          	sw	a3,28(t4)
   195ec:	e25ff06f          	j	19410 <_realloc_r+0x434>
   195f0:	01042603          	lw	a2,16(s0)
   195f4:	020e8713          	addi	a4,t4,32
   195f8:	01840413          	addi	s0,s0,24
   195fc:	00ceac23          	sw	a2,24(t4)
   19600:	ffc42603          	lw	a2,-4(s0)
   19604:	00ceae23          	sw	a2,28(t4)
   19608:	ca1ff06f          	j	192a8 <_realloc_r+0x2cc>

0001960c <_fclose_r>:
   1960c:	ff010113          	addi	sp,sp,-16
   19610:	00112623          	sw	ra,12(sp)
   19614:	01212023          	sw	s2,0(sp)
   19618:	02058863          	beqz	a1,19648 <_fclose_r+0x3c>
   1961c:	00812423          	sw	s0,8(sp)
   19620:	00912223          	sw	s1,4(sp)
   19624:	00058413          	mv	s0,a1
   19628:	00050493          	mv	s1,a0
   1962c:	00050663          	beqz	a0,19638 <_fclose_r+0x2c>
   19630:	03452783          	lw	a5,52(a0)
   19634:	0c078c63          	beqz	a5,1970c <_fclose_r+0x100>
   19638:	00c41783          	lh	a5,12(s0)
   1963c:	02079263          	bnez	a5,19660 <_fclose_r+0x54>
   19640:	00812403          	lw	s0,8(sp)
   19644:	00412483          	lw	s1,4(sp)
   19648:	00c12083          	lw	ra,12(sp)
   1964c:	00000913          	li	s2,0
   19650:	00090513          	mv	a0,s2
   19654:	00012903          	lw	s2,0(sp)
   19658:	01010113          	addi	sp,sp,16
   1965c:	00008067          	ret
   19660:	00040593          	mv	a1,s0
   19664:	00048513          	mv	a0,s1
   19668:	ed5fc0ef          	jal	1653c <__sflush_r>
   1966c:	02c42783          	lw	a5,44(s0)
   19670:	00050913          	mv	s2,a0
   19674:	00078a63          	beqz	a5,19688 <_fclose_r+0x7c>
   19678:	01c42583          	lw	a1,28(s0)
   1967c:	00048513          	mv	a0,s1
   19680:	000780e7          	jalr	a5
   19684:	06054463          	bltz	a0,196ec <_fclose_r+0xe0>
   19688:	00c45783          	lhu	a5,12(s0)
   1968c:	0807f793          	andi	a5,a5,128
   19690:	06079663          	bnez	a5,196fc <_fclose_r+0xf0>
   19694:	03042583          	lw	a1,48(s0)
   19698:	00058c63          	beqz	a1,196b0 <_fclose_r+0xa4>
   1969c:	04040793          	addi	a5,s0,64
   196a0:	00f58663          	beq	a1,a5,196ac <_fclose_r+0xa0>
   196a4:	00048513          	mv	a0,s1
   196a8:	dc1fe0ef          	jal	18468 <_free_r>
   196ac:	02042823          	sw	zero,48(s0)
   196b0:	04442583          	lw	a1,68(s0)
   196b4:	00058863          	beqz	a1,196c4 <_fclose_r+0xb8>
   196b8:	00048513          	mv	a0,s1
   196bc:	dadfe0ef          	jal	18468 <_free_r>
   196c0:	04042223          	sw	zero,68(s0)
   196c4:	d20fd0ef          	jal	16be4 <__sfp_lock_acquire>
   196c8:	00041623          	sh	zero,12(s0)
   196cc:	d1cfd0ef          	jal	16be8 <__sfp_lock_release>
   196d0:	00c12083          	lw	ra,12(sp)
   196d4:	00812403          	lw	s0,8(sp)
   196d8:	00412483          	lw	s1,4(sp)
   196dc:	00090513          	mv	a0,s2
   196e0:	00012903          	lw	s2,0(sp)
   196e4:	01010113          	addi	sp,sp,16
   196e8:	00008067          	ret
   196ec:	00c45783          	lhu	a5,12(s0)
   196f0:	fff00913          	li	s2,-1
   196f4:	0807f793          	andi	a5,a5,128
   196f8:	f8078ee3          	beqz	a5,19694 <_fclose_r+0x88>
   196fc:	01042583          	lw	a1,16(s0)
   19700:	00048513          	mv	a0,s1
   19704:	d65fe0ef          	jal	18468 <_free_r>
   19708:	f8dff06f          	j	19694 <_fclose_r+0x88>
   1970c:	cb4fd0ef          	jal	16bc0 <__sinit>
   19710:	f29ff06f          	j	19638 <_fclose_r+0x2c>

00019714 <fclose>:
   19714:	00050593          	mv	a1,a0
   19718:	8901a503          	lw	a0,-1904(gp) # 1c768 <_impure_ptr>
   1971c:	ef1ff06f          	j	1960c <_fclose_r>

00019720 <__smakebuf_r>:
   19720:	00c59783          	lh	a5,12(a1)
   19724:	0027f713          	andi	a4,a5,2
   19728:	00070e63          	beqz	a4,19744 <__smakebuf_r+0x24>
   1972c:	04358793          	addi	a5,a1,67
   19730:	00100713          	li	a4,1
   19734:	00f5a023          	sw	a5,0(a1)
   19738:	00f5a823          	sw	a5,16(a1)
   1973c:	00e5aa23          	sw	a4,20(a1)
   19740:	00008067          	ret
   19744:	00058713          	mv	a4,a1
   19748:	00e59583          	lh	a1,14(a1)
   1974c:	f8010113          	addi	sp,sp,-128
   19750:	06812c23          	sw	s0,120(sp)
   19754:	06112e23          	sw	ra,124(sp)
   19758:	00050413          	mv	s0,a0
   1975c:	0805ce63          	bltz	a1,197f8 <__smakebuf_r+0xd8>
   19760:	01810613          	addi	a2,sp,24
   19764:	00e12423          	sw	a4,8(sp)
   19768:	338000ef          	jal	19aa0 <_fstat_r>
   1976c:	00812703          	lw	a4,8(sp)
   19770:	08054263          	bltz	a0,197f4 <__smakebuf_r+0xd4>
   19774:	40000593          	li	a1,1024
   19778:	00040513          	mv	a0,s0
   1977c:	06912a23          	sw	s1,116(sp)
   19780:	00e12423          	sw	a4,8(sp)
   19784:	01c12483          	lw	s1,28(sp)
   19788:	fc9fe0ef          	jal	18750 <_malloc_r>
   1978c:	00812703          	lw	a4,8(sp)
   19790:	00c71783          	lh	a5,12(a4)
   19794:	0c050263          	beqz	a0,19858 <__smakebuf_r+0x138>
   19798:	40000693          	li	a3,1024
   1979c:	0807e793          	ori	a5,a5,128
   197a0:	00d72a23          	sw	a3,20(a4)
   197a4:	40c4d693          	srai	a3,s1,0xc
   197a8:	00f71623          	sh	a5,12(a4)
   197ac:	00a72023          	sw	a0,0(a4)
   197b0:	00a72823          	sw	a0,16(a4)
   197b4:	00f6f693          	andi	a3,a3,15
   197b8:	00200613          	li	a2,2
   197bc:	0cc69663          	bne	a3,a2,19888 <__smakebuf_r+0x168>
   197c0:	00e71583          	lh	a1,14(a4)
   197c4:	00040513          	mv	a0,s0
   197c8:	00e12423          	sw	a4,8(sp)
   197cc:	338000ef          	jal	19b04 <_isatty_r>
   197d0:	00812703          	lw	a4,8(sp)
   197d4:	00c71783          	lh	a5,12(a4)
   197d8:	0a050863          	beqz	a0,19888 <__smakebuf_r+0x168>
   197dc:	ffc7f793          	andi	a5,a5,-4
   197e0:	000016b7          	lui	a3,0x1
   197e4:	07412483          	lw	s1,116(sp)
   197e8:	0017e793          	ori	a5,a5,1
   197ec:	80068693          	addi	a3,a3,-2048 # 800 <exit-0xf8b4>
   197f0:	0500006f          	j	19840 <__smakebuf_r+0x120>
   197f4:	00c71783          	lh	a5,12(a4)
   197f8:	0807f793          	andi	a5,a5,128
   197fc:	0017b793          	seqz	a5,a5
   19800:	40f007b3          	neg	a5,a5
   19804:	3c07f593          	andi	a1,a5,960
   19808:	04058593          	addi	a1,a1,64
   1980c:	00040513          	mv	a0,s0
   19810:	00e12623          	sw	a4,12(sp)
   19814:	00b12423          	sw	a1,8(sp)
   19818:	f39fe0ef          	jal	18750 <_malloc_r>
   1981c:	00c12703          	lw	a4,12(sp)
   19820:	00812583          	lw	a1,8(sp)
   19824:	00c71783          	lh	a5,12(a4)
   19828:	02050a63          	beqz	a0,1985c <__smakebuf_r+0x13c>
   1982c:	0807e793          	ori	a5,a5,128
   19830:	00a72023          	sw	a0,0(a4)
   19834:	00a72823          	sw	a0,16(a4)
   19838:	00b72a23          	sw	a1,20(a4)
   1983c:	00000693          	li	a3,0
   19840:	00d7e7b3          	or	a5,a5,a3
   19844:	00f71623          	sh	a5,12(a4)
   19848:	07c12083          	lw	ra,124(sp)
   1984c:	07812403          	lw	s0,120(sp)
   19850:	08010113          	addi	sp,sp,128
   19854:	00008067          	ret
   19858:	07412483          	lw	s1,116(sp)
   1985c:	2007f693          	andi	a3,a5,512
   19860:	fe0694e3          	bnez	a3,19848 <__smakebuf_r+0x128>
   19864:	ffc7f793          	andi	a5,a5,-4
   19868:	04370693          	addi	a3,a4,67
   1986c:	0027e793          	ori	a5,a5,2
   19870:	00100613          	li	a2,1
   19874:	00f71623          	sh	a5,12(a4)
   19878:	00d72023          	sw	a3,0(a4)
   1987c:	00d72823          	sw	a3,16(a4)
   19880:	00c72a23          	sw	a2,20(a4)
   19884:	fc5ff06f          	j	19848 <__smakebuf_r+0x128>
   19888:	000016b7          	lui	a3,0x1
   1988c:	07412483          	lw	s1,116(sp)
   19890:	80068693          	addi	a3,a3,-2048 # 800 <exit-0xf8b4>
   19894:	fadff06f          	j	19840 <__smakebuf_r+0x120>

00019898 <__swhatbuf_r>:
   19898:	00058793          	mv	a5,a1
   1989c:	00e59583          	lh	a1,14(a1)
   198a0:	00060713          	mv	a4,a2
   198a4:	0805ca63          	bltz	a1,19938 <__swhatbuf_r+0xa0>
   198a8:	f8010113          	addi	sp,sp,-128
   198ac:	00c12423          	sw	a2,8(sp)
   198b0:	01810613          	addi	a2,sp,24
   198b4:	00d12623          	sw	a3,12(sp)
   198b8:	00f12223          	sw	a5,4(sp)
   198bc:	06112e23          	sw	ra,124(sp)
   198c0:	1e0000ef          	jal	19aa0 <_fstat_r>
   198c4:	00412783          	lw	a5,4(sp)
   198c8:	00812703          	lw	a4,8(sp)
   198cc:	00c12683          	lw	a3,12(sp)
   198d0:	02054e63          	bltz	a0,1990c <__swhatbuf_r+0x74>
   198d4:	01c12783          	lw	a5,28(sp)
   198d8:	0000f5b7          	lui	a1,0xf
   198dc:	ffffe637          	lui	a2,0xffffe
   198e0:	00b7f7b3          	and	a5,a5,a1
   198e4:	00c787b3          	add	a5,a5,a2
   198e8:	07c12083          	lw	ra,124(sp)
   198ec:	0017b793          	seqz	a5,a5
   198f0:	00f6a023          	sw	a5,0(a3)
   198f4:	40000613          	li	a2,1024
   198f8:	00001537          	lui	a0,0x1
   198fc:	00c72023          	sw	a2,0(a4)
   19900:	80050513          	addi	a0,a0,-2048 # 800 <exit-0xf8b4>
   19904:	08010113          	addi	sp,sp,128
   19908:	00008067          	ret
   1990c:	00c7d783          	lhu	a5,12(a5)
   19910:	0807f793          	andi	a5,a5,128
   19914:	04078263          	beqz	a5,19958 <__swhatbuf_r+0xc0>
   19918:	07c12083          	lw	ra,124(sp)
   1991c:	00000793          	li	a5,0
   19920:	00f6a023          	sw	a5,0(a3)
   19924:	04000613          	li	a2,64
   19928:	00c72023          	sw	a2,0(a4)
   1992c:	00000513          	li	a0,0
   19930:	08010113          	addi	sp,sp,128
   19934:	00008067          	ret
   19938:	00c7d783          	lhu	a5,12(a5)
   1993c:	0807f793          	andi	a5,a5,128
   19940:	02079a63          	bnez	a5,19974 <__swhatbuf_r+0xdc>
   19944:	40000613          	li	a2,1024
   19948:	00f6a023          	sw	a5,0(a3)
   1994c:	00000513          	li	a0,0
   19950:	00c72023          	sw	a2,0(a4)
   19954:	00008067          	ret
   19958:	07c12083          	lw	ra,124(sp)
   1995c:	00f6a023          	sw	a5,0(a3)
   19960:	40000613          	li	a2,1024
   19964:	00c72023          	sw	a2,0(a4)
   19968:	00000513          	li	a0,0
   1996c:	08010113          	addi	sp,sp,128
   19970:	00008067          	ret
   19974:	00000793          	li	a5,0
   19978:	04000613          	li	a2,64
   1997c:	00f6a023          	sw	a5,0(a3)
   19980:	00000513          	li	a0,0
   19984:	00c72023          	sw	a2,0(a4)
   19988:	00008067          	ret

0001998c <_setlocale_r>:
   1998c:	04060063          	beqz	a2,199cc <_setlocale_r+0x40>
   19990:	0001b5b7          	lui	a1,0x1b
   19994:	fe010113          	addi	sp,sp,-32
   19998:	d1858593          	addi	a1,a1,-744 # 1ad18 <_exit+0x234>
   1999c:	00060513          	mv	a0,a2
   199a0:	00812c23          	sw	s0,24(sp)
   199a4:	00112e23          	sw	ra,28(sp)
   199a8:	00060413          	mv	s0,a2
   199ac:	26c000ef          	jal	19c18 <strcmp>
   199b0:	0001b7b7          	lui	a5,0x1b
   199b4:	02051263          	bnez	a0,199d8 <_setlocale_r+0x4c>
   199b8:	d1478513          	addi	a0,a5,-748 # 1ad14 <_exit+0x230>
   199bc:	01c12083          	lw	ra,28(sp)
   199c0:	01812403          	lw	s0,24(sp)
   199c4:	02010113          	addi	sp,sp,32
   199c8:	00008067          	ret
   199cc:	0001b7b7          	lui	a5,0x1b
   199d0:	d1478513          	addi	a0,a5,-748 # 1ad14 <_exit+0x230>
   199d4:	00008067          	ret
   199d8:	d1478593          	addi	a1,a5,-748
   199dc:	00040513          	mv	a0,s0
   199e0:	00f12623          	sw	a5,12(sp)
   199e4:	234000ef          	jal	19c18 <strcmp>
   199e8:	00c12783          	lw	a5,12(sp)
   199ec:	fc0506e3          	beqz	a0,199b8 <_setlocale_r+0x2c>
   199f0:	0001b5b7          	lui	a1,0x1b
   199f4:	00040513          	mv	a0,s0
   199f8:	cb058593          	addi	a1,a1,-848 # 1acb0 <_exit+0x1cc>
   199fc:	21c000ef          	jal	19c18 <strcmp>
   19a00:	00c12783          	lw	a5,12(sp)
   19a04:	fa050ae3          	beqz	a0,199b8 <_setlocale_r+0x2c>
   19a08:	00000513          	li	a0,0
   19a0c:	fb1ff06f          	j	199bc <_setlocale_r+0x30>

00019a10 <__locale_mb_cur_max>:
   19a10:	0001c7b7          	lui	a5,0x1c
   19a14:	6907c503          	lbu	a0,1680(a5) # 1c690 <__global_locale+0x128>
   19a18:	00008067          	ret

00019a1c <setlocale>:
   19a1c:	04058063          	beqz	a1,19a5c <setlocale+0x40>
   19a20:	fe010113          	addi	sp,sp,-32
   19a24:	00812c23          	sw	s0,24(sp)
   19a28:	00058513          	mv	a0,a1
   19a2c:	00058413          	mv	s0,a1
   19a30:	0001b5b7          	lui	a1,0x1b
   19a34:	d1858593          	addi	a1,a1,-744 # 1ad18 <_exit+0x234>
   19a38:	00112e23          	sw	ra,28(sp)
   19a3c:	1dc000ef          	jal	19c18 <strcmp>
   19a40:	0001b7b7          	lui	a5,0x1b
   19a44:	02051263          	bnez	a0,19a68 <setlocale+0x4c>
   19a48:	d1478513          	addi	a0,a5,-748 # 1ad14 <_exit+0x230>
   19a4c:	01c12083          	lw	ra,28(sp)
   19a50:	01812403          	lw	s0,24(sp)
   19a54:	02010113          	addi	sp,sp,32
   19a58:	00008067          	ret
   19a5c:	0001b7b7          	lui	a5,0x1b
   19a60:	d1478513          	addi	a0,a5,-748 # 1ad14 <_exit+0x230>
   19a64:	00008067          	ret
   19a68:	d1478593          	addi	a1,a5,-748
   19a6c:	00040513          	mv	a0,s0
   19a70:	00f12623          	sw	a5,12(sp)
   19a74:	1a4000ef          	jal	19c18 <strcmp>
   19a78:	00c12783          	lw	a5,12(sp)
   19a7c:	fc0506e3          	beqz	a0,19a48 <setlocale+0x2c>
   19a80:	0001b5b7          	lui	a1,0x1b
   19a84:	00040513          	mv	a0,s0
   19a88:	cb058593          	addi	a1,a1,-848 # 1acb0 <_exit+0x1cc>
   19a8c:	18c000ef          	jal	19c18 <strcmp>
   19a90:	00c12783          	lw	a5,12(sp)
   19a94:	fa050ae3          	beqz	a0,19a48 <setlocale+0x2c>
   19a98:	00000513          	li	a0,0
   19a9c:	fb1ff06f          	j	19a4c <setlocale+0x30>

00019aa0 <_fstat_r>:
   19aa0:	ff010113          	addi	sp,sp,-16
   19aa4:	00058793          	mv	a5,a1
   19aa8:	00812423          	sw	s0,8(sp)
   19aac:	00912223          	sw	s1,4(sp)
   19ab0:	00060593          	mv	a1,a2
   19ab4:	00050493          	mv	s1,a0
   19ab8:	00078513          	mv	a0,a5
   19abc:	00112623          	sw	ra,12(sp)
   19ac0:	8a01a023          	sw	zero,-1888(gp) # 1c778 <errno>
   19ac4:	781000ef          	jal	1aa44 <_fstat>
   19ac8:	fff00793          	li	a5,-1
   19acc:	00f50c63          	beq	a0,a5,19ae4 <_fstat_r+0x44>
   19ad0:	00c12083          	lw	ra,12(sp)
   19ad4:	00812403          	lw	s0,8(sp)
   19ad8:	00412483          	lw	s1,4(sp)
   19adc:	01010113          	addi	sp,sp,16
   19ae0:	00008067          	ret
   19ae4:	8a01a783          	lw	a5,-1888(gp) # 1c778 <errno>
   19ae8:	fe0784e3          	beqz	a5,19ad0 <_fstat_r+0x30>
   19aec:	00c12083          	lw	ra,12(sp)
   19af0:	00812403          	lw	s0,8(sp)
   19af4:	00f4a023          	sw	a5,0(s1)
   19af8:	00412483          	lw	s1,4(sp)
   19afc:	01010113          	addi	sp,sp,16
   19b00:	00008067          	ret

00019b04 <_isatty_r>:
   19b04:	ff010113          	addi	sp,sp,-16
   19b08:	00812423          	sw	s0,8(sp)
   19b0c:	00912223          	sw	s1,4(sp)
   19b10:	00050493          	mv	s1,a0
   19b14:	00058513          	mv	a0,a1
   19b18:	00112623          	sw	ra,12(sp)
   19b1c:	8a01a023          	sw	zero,-1888(gp) # 1c778 <errno>
   19b20:	745000ef          	jal	1aa64 <_isatty>
   19b24:	fff00793          	li	a5,-1
   19b28:	00f50c63          	beq	a0,a5,19b40 <_isatty_r+0x3c>
   19b2c:	00c12083          	lw	ra,12(sp)
   19b30:	00812403          	lw	s0,8(sp)
   19b34:	00412483          	lw	s1,4(sp)
   19b38:	01010113          	addi	sp,sp,16
   19b3c:	00008067          	ret
   19b40:	8a01a783          	lw	a5,-1888(gp) # 1c778 <errno>
   19b44:	fe0784e3          	beqz	a5,19b2c <_isatty_r+0x28>
   19b48:	00c12083          	lw	ra,12(sp)
   19b4c:	00812403          	lw	s0,8(sp)
   19b50:	00f4a023          	sw	a5,0(s1)
   19b54:	00412483          	lw	s1,4(sp)
   19b58:	01010113          	addi	sp,sp,16
   19b5c:	00008067          	ret

00019b60 <_sbrk_r>:
   19b60:	ff010113          	addi	sp,sp,-16
   19b64:	00812423          	sw	s0,8(sp)
   19b68:	00912223          	sw	s1,4(sp)
   19b6c:	00050493          	mv	s1,a0
   19b70:	00058513          	mv	a0,a1
   19b74:	00112623          	sw	ra,12(sp)
   19b78:	8a01a023          	sw	zero,-1888(gp) # 1c778 <errno>
   19b7c:	729000ef          	jal	1aaa4 <_sbrk>
   19b80:	fff00793          	li	a5,-1
   19b84:	00f50c63          	beq	a0,a5,19b9c <_sbrk_r+0x3c>
   19b88:	00c12083          	lw	ra,12(sp)
   19b8c:	00812403          	lw	s0,8(sp)
   19b90:	00412483          	lw	s1,4(sp)
   19b94:	01010113          	addi	sp,sp,16
   19b98:	00008067          	ret
   19b9c:	8a01a783          	lw	a5,-1888(gp) # 1c778 <errno>
   19ba0:	fe0784e3          	beqz	a5,19b88 <_sbrk_r+0x28>
   19ba4:	00c12083          	lw	ra,12(sp)
   19ba8:	00812403          	lw	s0,8(sp)
   19bac:	00f4a023          	sw	a5,0(s1)
   19bb0:	00412483          	lw	s1,4(sp)
   19bb4:	01010113          	addi	sp,sp,16
   19bb8:	00008067          	ret

00019bbc <__libc_fini_array>:
   19bbc:	ff010113          	addi	sp,sp,-16
   19bc0:	00812423          	sw	s0,8(sp)
   19bc4:	0001c7b7          	lui	a5,0x1c
   19bc8:	0001c437          	lui	s0,0x1c
   19bcc:	00c78793          	addi	a5,a5,12 # 1c00c <__fini_array_end>
   19bd0:	00840413          	addi	s0,s0,8 # 1c008 <__do_global_dtors_aux_fini_array_entry>
   19bd4:	408787b3          	sub	a5,a5,s0
   19bd8:	00912223          	sw	s1,4(sp)
   19bdc:	00112623          	sw	ra,12(sp)
   19be0:	4027d493          	srai	s1,a5,0x2
   19be4:	02048063          	beqz	s1,19c04 <__libc_fini_array+0x48>
   19be8:	ffc40413          	addi	s0,s0,-4
   19bec:	00f40433          	add	s0,s0,a5
   19bf0:	00042783          	lw	a5,0(s0)
   19bf4:	fff48493          	addi	s1,s1,-1
   19bf8:	ffc40413          	addi	s0,s0,-4
   19bfc:	000780e7          	jalr	a5
   19c00:	fe0498e3          	bnez	s1,19bf0 <__libc_fini_array+0x34>
   19c04:	00c12083          	lw	ra,12(sp)
   19c08:	00812403          	lw	s0,8(sp)
   19c0c:	00412483          	lw	s1,4(sp)
   19c10:	01010113          	addi	sp,sp,16
   19c14:	00008067          	ret

00019c18 <strcmp>:
   19c18:	00b56733          	or	a4,a0,a1
   19c1c:	fff00393          	li	t2,-1
   19c20:	00377713          	andi	a4,a4,3
   19c24:	10071063          	bnez	a4,19d24 <strcmp+0x10c>
   19c28:	7f7f87b7          	lui	a5,0x7f7f8
   19c2c:	f7f78793          	addi	a5,a5,-129 # 7f7f7f7f <__BSS_END__+0x7f7d711f>
   19c30:	00052603          	lw	a2,0(a0)
   19c34:	0005a683          	lw	a3,0(a1)
   19c38:	00f672b3          	and	t0,a2,a5
   19c3c:	00f66333          	or	t1,a2,a5
   19c40:	00f282b3          	add	t0,t0,a5
   19c44:	0062e2b3          	or	t0,t0,t1
   19c48:	10729263          	bne	t0,t2,19d4c <strcmp+0x134>
   19c4c:	08d61663          	bne	a2,a3,19cd8 <strcmp+0xc0>
   19c50:	00452603          	lw	a2,4(a0)
   19c54:	0045a683          	lw	a3,4(a1)
   19c58:	00f672b3          	and	t0,a2,a5
   19c5c:	00f66333          	or	t1,a2,a5
   19c60:	00f282b3          	add	t0,t0,a5
   19c64:	0062e2b3          	or	t0,t0,t1
   19c68:	0c729e63          	bne	t0,t2,19d44 <strcmp+0x12c>
   19c6c:	06d61663          	bne	a2,a3,19cd8 <strcmp+0xc0>
   19c70:	00852603          	lw	a2,8(a0)
   19c74:	0085a683          	lw	a3,8(a1)
   19c78:	00f672b3          	and	t0,a2,a5
   19c7c:	00f66333          	or	t1,a2,a5
   19c80:	00f282b3          	add	t0,t0,a5
   19c84:	0062e2b3          	or	t0,t0,t1
   19c88:	0c729863          	bne	t0,t2,19d58 <strcmp+0x140>
   19c8c:	04d61663          	bne	a2,a3,19cd8 <strcmp+0xc0>
   19c90:	00c52603          	lw	a2,12(a0)
   19c94:	00c5a683          	lw	a3,12(a1)
   19c98:	00f672b3          	and	t0,a2,a5
   19c9c:	00f66333          	or	t1,a2,a5
   19ca0:	00f282b3          	add	t0,t0,a5
   19ca4:	0062e2b3          	or	t0,t0,t1
   19ca8:	0c729263          	bne	t0,t2,19d6c <strcmp+0x154>
   19cac:	02d61663          	bne	a2,a3,19cd8 <strcmp+0xc0>
   19cb0:	01052603          	lw	a2,16(a0)
   19cb4:	0105a683          	lw	a3,16(a1)
   19cb8:	00f672b3          	and	t0,a2,a5
   19cbc:	00f66333          	or	t1,a2,a5
   19cc0:	00f282b3          	add	t0,t0,a5
   19cc4:	0062e2b3          	or	t0,t0,t1
   19cc8:	0a729c63          	bne	t0,t2,19d80 <strcmp+0x168>
   19ccc:	01450513          	addi	a0,a0,20
   19cd0:	01458593          	addi	a1,a1,20
   19cd4:	f4d60ee3          	beq	a2,a3,19c30 <strcmp+0x18>
   19cd8:	01061713          	slli	a4,a2,0x10
   19cdc:	01069793          	slli	a5,a3,0x10
   19ce0:	00f71e63          	bne	a4,a5,19cfc <strcmp+0xe4>
   19ce4:	01065713          	srli	a4,a2,0x10
   19ce8:	0106d793          	srli	a5,a3,0x10
   19cec:	40f70533          	sub	a0,a4,a5
   19cf0:	0ff57593          	zext.b	a1,a0
   19cf4:	02059063          	bnez	a1,19d14 <strcmp+0xfc>
   19cf8:	00008067          	ret
   19cfc:	01075713          	srli	a4,a4,0x10
   19d00:	0107d793          	srli	a5,a5,0x10
   19d04:	40f70533          	sub	a0,a4,a5
   19d08:	0ff57593          	zext.b	a1,a0
   19d0c:	00059463          	bnez	a1,19d14 <strcmp+0xfc>
   19d10:	00008067          	ret
   19d14:	0ff77713          	zext.b	a4,a4
   19d18:	0ff7f793          	zext.b	a5,a5
   19d1c:	40f70533          	sub	a0,a4,a5
   19d20:	00008067          	ret
   19d24:	00054603          	lbu	a2,0(a0)
   19d28:	0005c683          	lbu	a3,0(a1)
   19d2c:	00150513          	addi	a0,a0,1
   19d30:	00158593          	addi	a1,a1,1
   19d34:	00d61463          	bne	a2,a3,19d3c <strcmp+0x124>
   19d38:	fe0616e3          	bnez	a2,19d24 <strcmp+0x10c>
   19d3c:	40d60533          	sub	a0,a2,a3
   19d40:	00008067          	ret
   19d44:	00450513          	addi	a0,a0,4
   19d48:	00458593          	addi	a1,a1,4
   19d4c:	fcd61ce3          	bne	a2,a3,19d24 <strcmp+0x10c>
   19d50:	00000513          	li	a0,0
   19d54:	00008067          	ret
   19d58:	00850513          	addi	a0,a0,8
   19d5c:	00858593          	addi	a1,a1,8
   19d60:	fcd612e3          	bne	a2,a3,19d24 <strcmp+0x10c>
   19d64:	00000513          	li	a0,0
   19d68:	00008067          	ret
   19d6c:	00c50513          	addi	a0,a0,12
   19d70:	00c58593          	addi	a1,a1,12
   19d74:	fad618e3          	bne	a2,a3,19d24 <strcmp+0x10c>
   19d78:	00000513          	li	a0,0
   19d7c:	00008067          	ret
   19d80:	01050513          	addi	a0,a0,16
   19d84:	01058593          	addi	a1,a1,16
   19d88:	f8d61ee3          	bne	a2,a3,19d24 <strcmp+0x10c>
   19d8c:	00000513          	li	a0,0
   19d90:	00008067          	ret

00019d94 <__register_exitproc>:
   19d94:	8a41a783          	lw	a5,-1884(gp) # 1c77c <__atexit>
   19d98:	04078c63          	beqz	a5,19df0 <__register_exitproc+0x5c>
   19d9c:	0047a703          	lw	a4,4(a5)
   19da0:	01f00813          	li	a6,31
   19da4:	08e84063          	blt	a6,a4,19e24 <__register_exitproc+0x90>
   19da8:	00271813          	slli	a6,a4,0x2
   19dac:	02050663          	beqz	a0,19dd8 <__register_exitproc+0x44>
   19db0:	01078333          	add	t1,a5,a6
   19db4:	08c32423          	sw	a2,136(t1)
   19db8:	1887a883          	lw	a7,392(a5)
   19dbc:	00100613          	li	a2,1
   19dc0:	00e61633          	sll	a2,a2,a4
   19dc4:	00c8e8b3          	or	a7,a7,a2
   19dc8:	1917a423          	sw	a7,392(a5)
   19dcc:	10d32423          	sw	a3,264(t1)
   19dd0:	00200693          	li	a3,2
   19dd4:	02d50663          	beq	a0,a3,19e00 <__register_exitproc+0x6c>
   19dd8:	00170713          	addi	a4,a4,1
   19ddc:	00e7a223          	sw	a4,4(a5)
   19de0:	010787b3          	add	a5,a5,a6
   19de4:	00b7a423          	sw	a1,8(a5)
   19de8:	00000513          	li	a0,0
   19dec:	00008067          	ret
   19df0:	000217b7          	lui	a5,0x21
   19df4:	cd078793          	addi	a5,a5,-816 # 20cd0 <__atexit0>
   19df8:	8af1a223          	sw	a5,-1884(gp) # 1c77c <__atexit>
   19dfc:	fa1ff06f          	j	19d9c <__register_exitproc+0x8>
   19e00:	18c7a683          	lw	a3,396(a5)
   19e04:	00170713          	addi	a4,a4,1
   19e08:	00e7a223          	sw	a4,4(a5)
   19e0c:	00c6e6b3          	or	a3,a3,a2
   19e10:	18d7a623          	sw	a3,396(a5)
   19e14:	010787b3          	add	a5,a5,a6
   19e18:	00b7a423          	sw	a1,8(a5)
   19e1c:	00000513          	li	a0,0
   19e20:	00008067          	ret
   19e24:	fff00513          	li	a0,-1
   19e28:	00008067          	ret

00019e2c <_mbtowc_r>:
   19e2c:	0001c7b7          	lui	a5,0x1c
   19e30:	64c7a783          	lw	a5,1612(a5) # 1c64c <__global_locale+0xe4>
   19e34:	00078067          	jr	a5

00019e38 <__ascii_mbtowc>:
   19e38:	02058063          	beqz	a1,19e58 <__ascii_mbtowc+0x20>
   19e3c:	04060263          	beqz	a2,19e80 <__ascii_mbtowc+0x48>
   19e40:	04068863          	beqz	a3,19e90 <__ascii_mbtowc+0x58>
   19e44:	00064783          	lbu	a5,0(a2) # ffffe000 <__BSS_END__+0xfffdd1a0>
   19e48:	00f5a023          	sw	a5,0(a1)
   19e4c:	00064503          	lbu	a0,0(a2)
   19e50:	00a03533          	snez	a0,a0
   19e54:	00008067          	ret
   19e58:	ff010113          	addi	sp,sp,-16
   19e5c:	00c10593          	addi	a1,sp,12
   19e60:	02060463          	beqz	a2,19e88 <__ascii_mbtowc+0x50>
   19e64:	02068a63          	beqz	a3,19e98 <__ascii_mbtowc+0x60>
   19e68:	00064783          	lbu	a5,0(a2)
   19e6c:	00f5a023          	sw	a5,0(a1)
   19e70:	00064503          	lbu	a0,0(a2)
   19e74:	00a03533          	snez	a0,a0
   19e78:	01010113          	addi	sp,sp,16
   19e7c:	00008067          	ret
   19e80:	00000513          	li	a0,0
   19e84:	00008067          	ret
   19e88:	00000513          	li	a0,0
   19e8c:	fedff06f          	j	19e78 <__ascii_mbtowc+0x40>
   19e90:	ffe00513          	li	a0,-2
   19e94:	00008067          	ret
   19e98:	ffe00513          	li	a0,-2
   19e9c:	fddff06f          	j	19e78 <__ascii_mbtowc+0x40>

00019ea0 <_wctomb_r>:
   19ea0:	0001c7b7          	lui	a5,0x1c
   19ea4:	6487a783          	lw	a5,1608(a5) # 1c648 <__global_locale+0xe0>
   19ea8:	00078067          	jr	a5

00019eac <__ascii_wctomb>:
   19eac:	02058463          	beqz	a1,19ed4 <__ascii_wctomb+0x28>
   19eb0:	0ff00793          	li	a5,255
   19eb4:	00c7e863          	bltu	a5,a2,19ec4 <__ascii_wctomb+0x18>
   19eb8:	00c58023          	sb	a2,0(a1)
   19ebc:	00100513          	li	a0,1
   19ec0:	00008067          	ret
   19ec4:	08a00793          	li	a5,138
   19ec8:	00f52023          	sw	a5,0(a0)
   19ecc:	fff00513          	li	a0,-1
   19ed0:	00008067          	ret
   19ed4:	00000513          	li	a0,0
   19ed8:	00008067          	ret

00019edc <__udivdi3>:
   19edc:	fd010113          	addi	sp,sp,-48
   19ee0:	01512a23          	sw	s5,20(sp)
   19ee4:	02112623          	sw	ra,44(sp)
   19ee8:	02812423          	sw	s0,40(sp)
   19eec:	02912223          	sw	s1,36(sp)
   19ef0:	03212023          	sw	s2,32(sp)
   19ef4:	01312e23          	sw	s3,28(sp)
   19ef8:	01412c23          	sw	s4,24(sp)
   19efc:	01612823          	sw	s6,16(sp)
   19f00:	01712623          	sw	s7,12(sp)
   19f04:	01812423          	sw	s8,8(sp)
   19f08:	01912223          	sw	s9,4(sp)
   19f0c:	00050a93          	mv	s5,a0
   19f10:	38069463          	bnez	a3,1a298 <__udivdi3+0x3bc>
   19f14:	0001b7b7          	lui	a5,0x1b
   19f18:	00060993          	mv	s3,a2
   19f1c:	00050493          	mv	s1,a0
   19f20:	d9c78793          	addi	a5,a5,-612 # 1ad9c <__clz_tab>
   19f24:	16c5f463          	bgeu	a1,a2,1a08c <__udivdi3+0x1b0>
   19f28:	00010737          	lui	a4,0x10
   19f2c:	00068a13          	mv	s4,a3
   19f30:	00058c13          	mv	s8,a1
   19f34:	12e67863          	bgeu	a2,a4,1a064 <__udivdi3+0x188>
   19f38:	10063713          	sltiu	a4,a2,256
   19f3c:	00173713          	seqz	a4,a4
   19f40:	00371713          	slli	a4,a4,0x3
   19f44:	00e656b3          	srl	a3,a2,a4
   19f48:	00d787b3          	add	a5,a5,a3
   19f4c:	0007c783          	lbu	a5,0(a5)
   19f50:	00e787b3          	add	a5,a5,a4
   19f54:	02000713          	li	a4,32
   19f58:	00e78e63          	beq	a5,a4,19f74 <__udivdi3+0x98>
   19f5c:	40f70733          	sub	a4,a4,a5
   19f60:	00e59c33          	sll	s8,a1,a4
   19f64:	00fad7b3          	srl	a5,s5,a5
   19f68:	00e619b3          	sll	s3,a2,a4
   19f6c:	0187ec33          	or	s8,a5,s8
   19f70:	00ea94b3          	sll	s1,s5,a4
   19f74:	0109db13          	srli	s6,s3,0x10
   19f78:	000b0593          	mv	a1,s6
   19f7c:	01099b93          	slli	s7,s3,0x10
   19f80:	000c0513          	mv	a0,s8
   19f84:	fe1fa0ef          	jal	14f64 <__hidden___udivsi3>
   19f88:	010bdb93          	srli	s7,s7,0x10
   19f8c:	00050593          	mv	a1,a0
   19f90:	00050913          	mv	s2,a0
   19f94:	000b8513          	mv	a0,s7
   19f98:	f15fa0ef          	jal	14eac <__mulsi3>
   19f9c:	00050413          	mv	s0,a0
   19fa0:	000b0593          	mv	a1,s6
   19fa4:	000c0513          	mv	a0,s8
   19fa8:	804fb0ef          	jal	14fac <__umodsi3>
   19fac:	01051513          	slli	a0,a0,0x10
   19fb0:	0104d693          	srli	a3,s1,0x10
   19fb4:	00a6e6b3          	or	a3,a3,a0
   19fb8:	0086fa63          	bgeu	a3,s0,19fcc <__udivdi3+0xf0>
   19fbc:	00d986b3          	add	a3,s3,a3
   19fc0:	0086f463          	bgeu	a3,s0,19fc8 <__udivdi3+0xec>
   19fc4:	0b36fa63          	bgeu	a3,s3,1a078 <__udivdi3+0x19c>
   19fc8:	fff90913          	addi	s2,s2,-1
   19fcc:	40868433          	sub	s0,a3,s0
   19fd0:	000b0593          	mv	a1,s6
   19fd4:	00040513          	mv	a0,s0
   19fd8:	f8dfa0ef          	jal	14f64 <__hidden___udivsi3>
   19fdc:	00050593          	mv	a1,a0
   19fe0:	00050a93          	mv	s5,a0
   19fe4:	000b8513          	mv	a0,s7
   19fe8:	ec5fa0ef          	jal	14eac <__mulsi3>
   19fec:	00050b93          	mv	s7,a0
   19ff0:	000b0593          	mv	a1,s6
   19ff4:	00040513          	mv	a0,s0
   19ff8:	fb5fa0ef          	jal	14fac <__umodsi3>
   19ffc:	01049493          	slli	s1,s1,0x10
   1a000:	01051513          	slli	a0,a0,0x10
   1a004:	0104d493          	srli	s1,s1,0x10
   1a008:	00a4e4b3          	or	s1,s1,a0
   1a00c:	0174fa63          	bgeu	s1,s7,1a020 <__udivdi3+0x144>
   1a010:	009984b3          	add	s1,s3,s1
   1a014:	0174f463          	bgeu	s1,s7,1a01c <__udivdi3+0x140>
   1a018:	0734f663          	bgeu	s1,s3,1a084 <__udivdi3+0x1a8>
   1a01c:	fffa8a93          	addi	s5,s5,-1
   1a020:	01091793          	slli	a5,s2,0x10
   1a024:	0157e7b3          	or	a5,a5,s5
   1a028:	02c12083          	lw	ra,44(sp)
   1a02c:	02812403          	lw	s0,40(sp)
   1a030:	02412483          	lw	s1,36(sp)
   1a034:	02012903          	lw	s2,32(sp)
   1a038:	01c12983          	lw	s3,28(sp)
   1a03c:	01412a83          	lw	s5,20(sp)
   1a040:	01012b03          	lw	s6,16(sp)
   1a044:	00c12b83          	lw	s7,12(sp)
   1a048:	00812c03          	lw	s8,8(sp)
   1a04c:	00412c83          	lw	s9,4(sp)
   1a050:	000a0593          	mv	a1,s4
   1a054:	00078513          	mv	a0,a5
   1a058:	01812a03          	lw	s4,24(sp)
   1a05c:	03010113          	addi	sp,sp,48
   1a060:	00008067          	ret
   1a064:	010006b7          	lui	a3,0x1000
   1a068:	01800713          	li	a4,24
   1a06c:	ecd67ce3          	bgeu	a2,a3,19f44 <__udivdi3+0x68>
   1a070:	01000713          	li	a4,16
   1a074:	ed1ff06f          	j	19f44 <__udivdi3+0x68>
   1a078:	ffe90913          	addi	s2,s2,-2
   1a07c:	013686b3          	add	a3,a3,s3
   1a080:	f4dff06f          	j	19fcc <__udivdi3+0xf0>
   1a084:	ffea8a93          	addi	s5,s5,-2
   1a088:	f99ff06f          	j	1a020 <__udivdi3+0x144>
   1a08c:	00000713          	li	a4,0
   1a090:	00060c63          	beqz	a2,1a0a8 <__udivdi3+0x1cc>
   1a094:	00010737          	lui	a4,0x10
   1a098:	0ee67463          	bgeu	a2,a4,1a180 <__udivdi3+0x2a4>
   1a09c:	10063713          	sltiu	a4,a2,256
   1a0a0:	00173713          	seqz	a4,a4
   1a0a4:	00371713          	slli	a4,a4,0x3
   1a0a8:	00e656b3          	srl	a3,a2,a4
   1a0ac:	00d787b3          	add	a5,a5,a3
   1a0b0:	0007c783          	lbu	a5,0(a5)
   1a0b4:	00e787b3          	add	a5,a5,a4
   1a0b8:	02000713          	li	a4,32
   1a0bc:	0ce79c63          	bne	a5,a4,1a194 <__udivdi3+0x2b8>
   1a0c0:	40c58433          	sub	s0,a1,a2
   1a0c4:	00100a13          	li	s4,1
   1a0c8:	0109da93          	srli	s5,s3,0x10
   1a0cc:	000a8593          	mv	a1,s5
   1a0d0:	01099b13          	slli	s6,s3,0x10
   1a0d4:	00040513          	mv	a0,s0
   1a0d8:	e8dfa0ef          	jal	14f64 <__hidden___udivsi3>
   1a0dc:	010b5b13          	srli	s6,s6,0x10
   1a0e0:	00050593          	mv	a1,a0
   1a0e4:	00050913          	mv	s2,a0
   1a0e8:	000b0513          	mv	a0,s6
   1a0ec:	dc1fa0ef          	jal	14eac <__mulsi3>
   1a0f0:	00050b93          	mv	s7,a0
   1a0f4:	000a8593          	mv	a1,s5
   1a0f8:	00040513          	mv	a0,s0
   1a0fc:	eb1fa0ef          	jal	14fac <__umodsi3>
   1a100:	01051513          	slli	a0,a0,0x10
   1a104:	0104d693          	srli	a3,s1,0x10
   1a108:	00a6e6b3          	or	a3,a3,a0
   1a10c:	0176fa63          	bgeu	a3,s7,1a120 <__udivdi3+0x244>
   1a110:	00d986b3          	add	a3,s3,a3
   1a114:	0176f463          	bgeu	a3,s7,1a11c <__udivdi3+0x240>
   1a118:	1736f663          	bgeu	a3,s3,1a284 <__udivdi3+0x3a8>
   1a11c:	fff90913          	addi	s2,s2,-1
   1a120:	41768433          	sub	s0,a3,s7
   1a124:	000a8593          	mv	a1,s5
   1a128:	00040513          	mv	a0,s0
   1a12c:	e39fa0ef          	jal	14f64 <__hidden___udivsi3>
   1a130:	00050593          	mv	a1,a0
   1a134:	00050b93          	mv	s7,a0
   1a138:	000b0513          	mv	a0,s6
   1a13c:	d71fa0ef          	jal	14eac <__mulsi3>
   1a140:	00050b13          	mv	s6,a0
   1a144:	000a8593          	mv	a1,s5
   1a148:	00040513          	mv	a0,s0
   1a14c:	e61fa0ef          	jal	14fac <__umodsi3>
   1a150:	01049493          	slli	s1,s1,0x10
   1a154:	01051513          	slli	a0,a0,0x10
   1a158:	0104d493          	srli	s1,s1,0x10
   1a15c:	00a4e4b3          	or	s1,s1,a0
   1a160:	0164fa63          	bgeu	s1,s6,1a174 <__udivdi3+0x298>
   1a164:	009984b3          	add	s1,s3,s1
   1a168:	0164f463          	bgeu	s1,s6,1a170 <__udivdi3+0x294>
   1a16c:	1334f263          	bgeu	s1,s3,1a290 <__udivdi3+0x3b4>
   1a170:	fffb8b93          	addi	s7,s7,-1
   1a174:	01091793          	slli	a5,s2,0x10
   1a178:	0177e7b3          	or	a5,a5,s7
   1a17c:	eadff06f          	j	1a028 <__udivdi3+0x14c>
   1a180:	010006b7          	lui	a3,0x1000
   1a184:	01800713          	li	a4,24
   1a188:	f2d670e3          	bgeu	a2,a3,1a0a8 <__udivdi3+0x1cc>
   1a18c:	01000713          	li	a4,16
   1a190:	f19ff06f          	j	1a0a8 <__udivdi3+0x1cc>
   1a194:	40f70733          	sub	a4,a4,a5
   1a198:	00e619b3          	sll	s3,a2,a4
   1a19c:	00f5d433          	srl	s0,a1,a5
   1a1a0:	0109db13          	srli	s6,s3,0x10
   1a1a4:	00e595b3          	sll	a1,a1,a4
   1a1a8:	00fad7b3          	srl	a5,s5,a5
   1a1ac:	00b7ea33          	or	s4,a5,a1
   1a1b0:	01099b93          	slli	s7,s3,0x10
   1a1b4:	000b0593          	mv	a1,s6
   1a1b8:	00040513          	mv	a0,s0
   1a1bc:	00ea94b3          	sll	s1,s5,a4
   1a1c0:	010bdb93          	srli	s7,s7,0x10
   1a1c4:	da1fa0ef          	jal	14f64 <__hidden___udivsi3>
   1a1c8:	00050593          	mv	a1,a0
   1a1cc:	00050913          	mv	s2,a0
   1a1d0:	000b8513          	mv	a0,s7
   1a1d4:	cd9fa0ef          	jal	14eac <__mulsi3>
   1a1d8:	00050a93          	mv	s5,a0
   1a1dc:	000b0593          	mv	a1,s6
   1a1e0:	00040513          	mv	a0,s0
   1a1e4:	dc9fa0ef          	jal	14fac <__umodsi3>
   1a1e8:	01051513          	slli	a0,a0,0x10
   1a1ec:	010a5693          	srli	a3,s4,0x10
   1a1f0:	00a6e6b3          	or	a3,a3,a0
   1a1f4:	0156fa63          	bgeu	a3,s5,1a208 <__udivdi3+0x32c>
   1a1f8:	00d986b3          	add	a3,s3,a3
   1a1fc:	0156f463          	bgeu	a3,s5,1a204 <__udivdi3+0x328>
   1a200:	0736f663          	bgeu	a3,s3,1a26c <__udivdi3+0x390>
   1a204:	fff90913          	addi	s2,s2,-1
   1a208:	41568433          	sub	s0,a3,s5
   1a20c:	000b0593          	mv	a1,s6
   1a210:	00040513          	mv	a0,s0
   1a214:	d51fa0ef          	jal	14f64 <__hidden___udivsi3>
   1a218:	00050593          	mv	a1,a0
   1a21c:	00050a93          	mv	s5,a0
   1a220:	000b8513          	mv	a0,s7
   1a224:	c89fa0ef          	jal	14eac <__mulsi3>
   1a228:	00050b93          	mv	s7,a0
   1a22c:	000b0593          	mv	a1,s6
   1a230:	00040513          	mv	a0,s0
   1a234:	d79fa0ef          	jal	14fac <__umodsi3>
   1a238:	010a1793          	slli	a5,s4,0x10
   1a23c:	01051513          	slli	a0,a0,0x10
   1a240:	0107d793          	srli	a5,a5,0x10
   1a244:	00a7e7b3          	or	a5,a5,a0
   1a248:	0177fa63          	bgeu	a5,s7,1a25c <__udivdi3+0x380>
   1a24c:	00f987b3          	add	a5,s3,a5
   1a250:	0177f463          	bgeu	a5,s7,1a258 <__udivdi3+0x37c>
   1a254:	0337f263          	bgeu	a5,s3,1a278 <__udivdi3+0x39c>
   1a258:	fffa8a93          	addi	s5,s5,-1
   1a25c:	01091913          	slli	s2,s2,0x10
   1a260:	41778433          	sub	s0,a5,s7
   1a264:	01596a33          	or	s4,s2,s5
   1a268:	e61ff06f          	j	1a0c8 <__udivdi3+0x1ec>
   1a26c:	ffe90913          	addi	s2,s2,-2
   1a270:	013686b3          	add	a3,a3,s3
   1a274:	f95ff06f          	j	1a208 <__udivdi3+0x32c>
   1a278:	ffea8a93          	addi	s5,s5,-2
   1a27c:	013787b3          	add	a5,a5,s3
   1a280:	fddff06f          	j	1a25c <__udivdi3+0x380>
   1a284:	ffe90913          	addi	s2,s2,-2
   1a288:	013686b3          	add	a3,a3,s3
   1a28c:	e95ff06f          	j	1a120 <__udivdi3+0x244>
   1a290:	ffeb8b93          	addi	s7,s7,-2
   1a294:	ee1ff06f          	j	1a174 <__udivdi3+0x298>
   1a298:	1ed5e663          	bltu	a1,a3,1a484 <__udivdi3+0x5a8>
   1a29c:	000107b7          	lui	a5,0x10
   1a2a0:	04f6f463          	bgeu	a3,a5,1a2e8 <__udivdi3+0x40c>
   1a2a4:	1006b713          	sltiu	a4,a3,256
   1a2a8:	00173713          	seqz	a4,a4
   1a2ac:	00371713          	slli	a4,a4,0x3
   1a2b0:	0001b7b7          	lui	a5,0x1b
   1a2b4:	00e6d533          	srl	a0,a3,a4
   1a2b8:	d9c78793          	addi	a5,a5,-612 # 1ad9c <__clz_tab>
   1a2bc:	00a787b3          	add	a5,a5,a0
   1a2c0:	0007c783          	lbu	a5,0(a5)
   1a2c4:	02000b13          	li	s6,32
   1a2c8:	00e787b3          	add	a5,a5,a4
   1a2cc:	03679863          	bne	a5,s6,1a2fc <__udivdi3+0x420>
   1a2d0:	00cab7b3          	sltu	a5,s5,a2
   1a2d4:	0017b793          	seqz	a5,a5
   1a2d8:	00b6b6b3          	sltu	a3,a3,a1
   1a2dc:	00d7e7b3          	or	a5,a5,a3
   1a2e0:	00000a13          	li	s4,0
   1a2e4:	d45ff06f          	j	1a028 <__udivdi3+0x14c>
   1a2e8:	010007b7          	lui	a5,0x1000
   1a2ec:	01800713          	li	a4,24
   1a2f0:	fcf6f0e3          	bgeu	a3,a5,1a2b0 <__udivdi3+0x3d4>
   1a2f4:	01000713          	li	a4,16
   1a2f8:	fb9ff06f          	j	1a2b0 <__udivdi3+0x3d4>
   1a2fc:	40fb0b33          	sub	s6,s6,a5
   1a300:	00f65bb3          	srl	s7,a2,a5
   1a304:	016696b3          	sll	a3,a3,s6
   1a308:	00dbebb3          	or	s7,s7,a3
   1a30c:	00f5d4b3          	srl	s1,a1,a5
   1a310:	010bdc93          	srli	s9,s7,0x10
   1a314:	00fad7b3          	srl	a5,s5,a5
   1a318:	016595b3          	sll	a1,a1,s6
   1a31c:	00b7ea33          	or	s4,a5,a1
   1a320:	010b9c13          	slli	s8,s7,0x10
   1a324:	000c8593          	mv	a1,s9
   1a328:	00048513          	mv	a0,s1
   1a32c:	016619b3          	sll	s3,a2,s6
   1a330:	010c5c13          	srli	s8,s8,0x10
   1a334:	c31fa0ef          	jal	14f64 <__hidden___udivsi3>
   1a338:	00050593          	mv	a1,a0
   1a33c:	00050413          	mv	s0,a0
   1a340:	000c0513          	mv	a0,s8
   1a344:	b69fa0ef          	jal	14eac <__mulsi3>
   1a348:	00050913          	mv	s2,a0
   1a34c:	000c8593          	mv	a1,s9
   1a350:	00048513          	mv	a0,s1
   1a354:	c59fa0ef          	jal	14fac <__umodsi3>
   1a358:	01051513          	slli	a0,a0,0x10
   1a35c:	010a5713          	srli	a4,s4,0x10
   1a360:	00a76733          	or	a4,a4,a0
   1a364:	01277a63          	bgeu	a4,s2,1a378 <__udivdi3+0x49c>
   1a368:	00eb8733          	add	a4,s7,a4
   1a36c:	01277463          	bgeu	a4,s2,1a374 <__udivdi3+0x498>
   1a370:	0f777e63          	bgeu	a4,s7,1a46c <__udivdi3+0x590>
   1a374:	fff40413          	addi	s0,s0,-1
   1a378:	412704b3          	sub	s1,a4,s2
   1a37c:	000c8593          	mv	a1,s9
   1a380:	00048513          	mv	a0,s1
   1a384:	be1fa0ef          	jal	14f64 <__hidden___udivsi3>
   1a388:	00050593          	mv	a1,a0
   1a38c:	00050913          	mv	s2,a0
   1a390:	000c0513          	mv	a0,s8
   1a394:	b19fa0ef          	jal	14eac <__mulsi3>
   1a398:	00050c13          	mv	s8,a0
   1a39c:	000c8593          	mv	a1,s9
   1a3a0:	00048513          	mv	a0,s1
   1a3a4:	c09fa0ef          	jal	14fac <__umodsi3>
   1a3a8:	010a1793          	slli	a5,s4,0x10
   1a3ac:	01051513          	slli	a0,a0,0x10
   1a3b0:	0107d793          	srli	a5,a5,0x10
   1a3b4:	00a7e7b3          	or	a5,a5,a0
   1a3b8:	0187fa63          	bgeu	a5,s8,1a3cc <__udivdi3+0x4f0>
   1a3bc:	00fb87b3          	add	a5,s7,a5
   1a3c0:	0187f463          	bgeu	a5,s8,1a3c8 <__udivdi3+0x4ec>
   1a3c4:	0b77fa63          	bgeu	a5,s7,1a478 <__udivdi3+0x59c>
   1a3c8:	fff90913          	addi	s2,s2,-1
   1a3cc:	01099313          	slli	t1,s3,0x10
   1a3d0:	01041413          	slli	s0,s0,0x10
   1a3d4:	01035313          	srli	t1,t1,0x10
   1a3d8:	01091513          	slli	a0,s2,0x10
   1a3dc:	418788b3          	sub	a7,a5,s8
   1a3e0:	01055513          	srli	a0,a0,0x10
   1a3e4:	012467b3          	or	a5,s0,s2
   1a3e8:	00030593          	mv	a1,t1
   1a3ec:	ac1fa0ef          	jal	14eac <__mulsi3>
   1a3f0:	00050813          	mv	a6,a0
   1a3f4:	01091513          	slli	a0,s2,0x10
   1a3f8:	01055513          	srli	a0,a0,0x10
   1a3fc:	0109d593          	srli	a1,s3,0x10
   1a400:	aadfa0ef          	jal	14eac <__mulsi3>
   1a404:	00050713          	mv	a4,a0
   1a408:	00030593          	mv	a1,t1
   1a40c:	0107d513          	srli	a0,a5,0x10
   1a410:	a9dfa0ef          	jal	14eac <__mulsi3>
   1a414:	00050313          	mv	t1,a0
   1a418:	0109d593          	srli	a1,s3,0x10
   1a41c:	0107d513          	srli	a0,a5,0x10
   1a420:	a8dfa0ef          	jal	14eac <__mulsi3>
   1a424:	01085693          	srli	a3,a6,0x10
   1a428:	00670733          	add	a4,a4,t1
   1a42c:	00e686b3          	add	a3,a3,a4
   1a430:	0066f663          	bgeu	a3,t1,1a43c <__udivdi3+0x560>
   1a434:	00010737          	lui	a4,0x10
   1a438:	00e50533          	add	a0,a0,a4
   1a43c:	0106d613          	srli	a2,a3,0x10
   1a440:	00a60633          	add	a2,a2,a0
   1a444:	02c8e063          	bltu	a7,a2,1a464 <__udivdi3+0x588>
   1a448:	01081813          	slli	a6,a6,0x10
   1a44c:	01069693          	slli	a3,a3,0x10
   1a450:	01085813          	srli	a6,a6,0x10
   1a454:	016a9733          	sll	a4,s5,s6
   1a458:	010686b3          	add	a3,a3,a6
   1a45c:	e8d772e3          	bgeu	a4,a3,1a2e0 <__udivdi3+0x404>
   1a460:	e8c890e3          	bne	a7,a2,1a2e0 <__udivdi3+0x404>
   1a464:	fff78793          	addi	a5,a5,-1 # ffffff <__BSS_END__+0xfdf19f>
   1a468:	e79ff06f          	j	1a2e0 <__udivdi3+0x404>
   1a46c:	ffe40413          	addi	s0,s0,-2
   1a470:	01770733          	add	a4,a4,s7
   1a474:	f05ff06f          	j	1a378 <__udivdi3+0x49c>
   1a478:	ffe90913          	addi	s2,s2,-2
   1a47c:	017787b3          	add	a5,a5,s7
   1a480:	f4dff06f          	j	1a3cc <__udivdi3+0x4f0>
   1a484:	00000a13          	li	s4,0
   1a488:	00000793          	li	a5,0
   1a48c:	b9dff06f          	j	1a028 <__udivdi3+0x14c>

0001a490 <__umoddi3>:
   1a490:	fc010113          	addi	sp,sp,-64
   1a494:	02812c23          	sw	s0,56(sp)
   1a498:	02912a23          	sw	s1,52(sp)
   1a49c:	02112e23          	sw	ra,60(sp)
   1a4a0:	03212823          	sw	s2,48(sp)
   1a4a4:	03312623          	sw	s3,44(sp)
   1a4a8:	03412423          	sw	s4,40(sp)
   1a4ac:	03512223          	sw	s5,36(sp)
   1a4b0:	03612023          	sw	s6,32(sp)
   1a4b4:	01712e23          	sw	s7,28(sp)
   1a4b8:	01812c23          	sw	s8,24(sp)
   1a4bc:	01912a23          	sw	s9,20(sp)
   1a4c0:	01a12823          	sw	s10,16(sp)
   1a4c4:	01b12623          	sw	s11,12(sp)
   1a4c8:	00050413          	mv	s0,a0
   1a4cc:	00058493          	mv	s1,a1
   1a4d0:	32069a63          	bnez	a3,1a804 <__umoddi3+0x374>
   1a4d4:	0001b7b7          	lui	a5,0x1b
   1a4d8:	00060993          	mv	s3,a2
   1a4dc:	d9c78793          	addi	a5,a5,-612 # 1ad9c <__clz_tab>
   1a4e0:	16c5f063          	bgeu	a1,a2,1a640 <__umoddi3+0x1b0>
   1a4e4:	00010737          	lui	a4,0x10
   1a4e8:	14e67263          	bgeu	a2,a4,1a62c <__umoddi3+0x19c>
   1a4ec:	10063713          	sltiu	a4,a2,256
   1a4f0:	00173713          	seqz	a4,a4
   1a4f4:	00371713          	slli	a4,a4,0x3
   1a4f8:	00e656b3          	srl	a3,a2,a4
   1a4fc:	00d787b3          	add	a5,a5,a3
   1a500:	0007c783          	lbu	a5,0(a5)
   1a504:	00e787b3          	add	a5,a5,a4
   1a508:	02000713          	li	a4,32
   1a50c:	40f70933          	sub	s2,a4,a5
   1a510:	00e78c63          	beq	a5,a4,1a528 <__umoddi3+0x98>
   1a514:	012595b3          	sll	a1,a1,s2
   1a518:	00f557b3          	srl	a5,a0,a5
   1a51c:	012619b3          	sll	s3,a2,s2
   1a520:	00b7e4b3          	or	s1,a5,a1
   1a524:	01251433          	sll	s0,a0,s2
   1a528:	0109da13          	srli	s4,s3,0x10
   1a52c:	000a0593          	mv	a1,s4
   1a530:	01099a93          	slli	s5,s3,0x10
   1a534:	00048513          	mv	a0,s1
   1a538:	a2dfa0ef          	jal	14f64 <__hidden___udivsi3>
   1a53c:	010ada93          	srli	s5,s5,0x10
   1a540:	000a8593          	mv	a1,s5
   1a544:	969fa0ef          	jal	14eac <__mulsi3>
   1a548:	00050b13          	mv	s6,a0
   1a54c:	000a0593          	mv	a1,s4
   1a550:	00048513          	mv	a0,s1
   1a554:	a59fa0ef          	jal	14fac <__umodsi3>
   1a558:	01051513          	slli	a0,a0,0x10
   1a55c:	01045793          	srli	a5,s0,0x10
   1a560:	00a7e7b3          	or	a5,a5,a0
   1a564:	0367f263          	bgeu	a5,s6,1a588 <__umoddi3+0xf8>
   1a568:	00f987b3          	add	a5,s3,a5
   1a56c:	0137b6b3          	sltu	a3,a5,s3
   1a570:	0167b733          	sltu	a4,a5,s6
   1a574:	0016b693          	seqz	a3,a3
   1a578:	00d77733          	and	a4,a4,a3
   1a57c:	40e00733          	neg	a4,a4
   1a580:	01377733          	and	a4,a4,s3
   1a584:	00f707b3          	add	a5,a4,a5
   1a588:	41678b33          	sub	s6,a5,s6
   1a58c:	000a0593          	mv	a1,s4
   1a590:	000b0513          	mv	a0,s6
   1a594:	9d1fa0ef          	jal	14f64 <__hidden___udivsi3>
   1a598:	000a8593          	mv	a1,s5
   1a59c:	911fa0ef          	jal	14eac <__mulsi3>
   1a5a0:	00050a93          	mv	s5,a0
   1a5a4:	000a0593          	mv	a1,s4
   1a5a8:	000b0513          	mv	a0,s6
   1a5ac:	a01fa0ef          	jal	14fac <__umodsi3>
   1a5b0:	01051793          	slli	a5,a0,0x10
   1a5b4:	01041513          	slli	a0,s0,0x10
   1a5b8:	01055513          	srli	a0,a0,0x10
   1a5bc:	00f56533          	or	a0,a0,a5
   1a5c0:	03557263          	bgeu	a0,s5,1a5e4 <__umoddi3+0x154>
   1a5c4:	00a98533          	add	a0,s3,a0
   1a5c8:	01353733          	sltu	a4,a0,s3
   1a5cc:	015537b3          	sltu	a5,a0,s5
   1a5d0:	00173713          	seqz	a4,a4
   1a5d4:	00e7f7b3          	and	a5,a5,a4
   1a5d8:	40f007b3          	neg	a5,a5
   1a5dc:	0137f7b3          	and	a5,a5,s3
   1a5e0:	00a78533          	add	a0,a5,a0
   1a5e4:	41550533          	sub	a0,a0,s5
   1a5e8:	01255533          	srl	a0,a0,s2
   1a5ec:	00000593          	li	a1,0
   1a5f0:	03c12083          	lw	ra,60(sp)
   1a5f4:	03812403          	lw	s0,56(sp)
   1a5f8:	03412483          	lw	s1,52(sp)
   1a5fc:	03012903          	lw	s2,48(sp)
   1a600:	02c12983          	lw	s3,44(sp)
   1a604:	02812a03          	lw	s4,40(sp)
   1a608:	02412a83          	lw	s5,36(sp)
   1a60c:	02012b03          	lw	s6,32(sp)
   1a610:	01c12b83          	lw	s7,28(sp)
   1a614:	01812c03          	lw	s8,24(sp)
   1a618:	01412c83          	lw	s9,20(sp)
   1a61c:	01012d03          	lw	s10,16(sp)
   1a620:	00c12d83          	lw	s11,12(sp)
   1a624:	04010113          	addi	sp,sp,64
   1a628:	00008067          	ret
   1a62c:	010006b7          	lui	a3,0x1000
   1a630:	01800713          	li	a4,24
   1a634:	ecd672e3          	bgeu	a2,a3,1a4f8 <__umoddi3+0x68>
   1a638:	01000713          	li	a4,16
   1a63c:	ebdff06f          	j	1a4f8 <__umoddi3+0x68>
   1a640:	00000713          	li	a4,0
   1a644:	00060c63          	beqz	a2,1a65c <__umoddi3+0x1cc>
   1a648:	00010737          	lui	a4,0x10
   1a64c:	1ae67263          	bgeu	a2,a4,1a7f0 <__umoddi3+0x360>
   1a650:	10063713          	sltiu	a4,a2,256
   1a654:	00173713          	seqz	a4,a4
   1a658:	00371713          	slli	a4,a4,0x3
   1a65c:	00e656b3          	srl	a3,a2,a4
   1a660:	00d787b3          	add	a5,a5,a3
   1a664:	0007c683          	lbu	a3,0(a5)
   1a668:	02000793          	li	a5,32
   1a66c:	40c584b3          	sub	s1,a1,a2
   1a670:	00e68733          	add	a4,a3,a4
   1a674:	40e78933          	sub	s2,a5,a4
   1a678:	0cf70e63          	beq	a4,a5,1a754 <__umoddi3+0x2c4>
   1a67c:	012619b3          	sll	s3,a2,s2
   1a680:	00e5dbb3          	srl	s7,a1,a4
   1a684:	00e557b3          	srl	a5,a0,a4
   1a688:	012595b3          	sll	a1,a1,s2
   1a68c:	0109da93          	srli	s5,s3,0x10
   1a690:	00b7ea33          	or	s4,a5,a1
   1a694:	01251433          	sll	s0,a0,s2
   1a698:	000a8593          	mv	a1,s5
   1a69c:	01099b13          	slli	s6,s3,0x10
   1a6a0:	000b8513          	mv	a0,s7
   1a6a4:	8c1fa0ef          	jal	14f64 <__hidden___udivsi3>
   1a6a8:	010b5b13          	srli	s6,s6,0x10
   1a6ac:	000b0593          	mv	a1,s6
   1a6b0:	ffcfa0ef          	jal	14eac <__mulsi3>
   1a6b4:	00050493          	mv	s1,a0
   1a6b8:	000a8593          	mv	a1,s5
   1a6bc:	000b8513          	mv	a0,s7
   1a6c0:	8edfa0ef          	jal	14fac <__umodsi3>
   1a6c4:	01051513          	slli	a0,a0,0x10
   1a6c8:	010a5713          	srli	a4,s4,0x10
   1a6cc:	00a76733          	or	a4,a4,a0
   1a6d0:	02977263          	bgeu	a4,s1,1a6f4 <__umoddi3+0x264>
   1a6d4:	00e98733          	add	a4,s3,a4
   1a6d8:	013736b3          	sltu	a3,a4,s3
   1a6dc:	009737b3          	sltu	a5,a4,s1
   1a6e0:	0016b693          	seqz	a3,a3
   1a6e4:	00d7f7b3          	and	a5,a5,a3
   1a6e8:	40f007b3          	neg	a5,a5
   1a6ec:	0137f7b3          	and	a5,a5,s3
   1a6f0:	00e78733          	add	a4,a5,a4
   1a6f4:	409704b3          	sub	s1,a4,s1
   1a6f8:	000a8593          	mv	a1,s5
   1a6fc:	00048513          	mv	a0,s1
   1a700:	865fa0ef          	jal	14f64 <__hidden___udivsi3>
   1a704:	000b0593          	mv	a1,s6
   1a708:	fa4fa0ef          	jal	14eac <__mulsi3>
   1a70c:	00050b13          	mv	s6,a0
   1a710:	000a8593          	mv	a1,s5
   1a714:	00048513          	mv	a0,s1
   1a718:	895fa0ef          	jal	14fac <__umodsi3>
   1a71c:	010a1793          	slli	a5,s4,0x10
   1a720:	01051513          	slli	a0,a0,0x10
   1a724:	0107d793          	srli	a5,a5,0x10
   1a728:	00a7e7b3          	or	a5,a5,a0
   1a72c:	0367f263          	bgeu	a5,s6,1a750 <__umoddi3+0x2c0>
   1a730:	00f987b3          	add	a5,s3,a5
   1a734:	0137b6b3          	sltu	a3,a5,s3
   1a738:	0167b733          	sltu	a4,a5,s6
   1a73c:	0016b693          	seqz	a3,a3
   1a740:	00d77733          	and	a4,a4,a3
   1a744:	40e00733          	neg	a4,a4
   1a748:	01377733          	and	a4,a4,s3
   1a74c:	00f707b3          	add	a5,a4,a5
   1a750:	416784b3          	sub	s1,a5,s6
   1a754:	0109da13          	srli	s4,s3,0x10
   1a758:	000a0593          	mv	a1,s4
   1a75c:	01099a93          	slli	s5,s3,0x10
   1a760:	00048513          	mv	a0,s1
   1a764:	801fa0ef          	jal	14f64 <__hidden___udivsi3>
   1a768:	010ada93          	srli	s5,s5,0x10
   1a76c:	000a8593          	mv	a1,s5
   1a770:	f3cfa0ef          	jal	14eac <__mulsi3>
   1a774:	00050b13          	mv	s6,a0
   1a778:	000a0593          	mv	a1,s4
   1a77c:	00048513          	mv	a0,s1
   1a780:	82dfa0ef          	jal	14fac <__umodsi3>
   1a784:	01051513          	slli	a0,a0,0x10
   1a788:	01045793          	srli	a5,s0,0x10
   1a78c:	00a7e7b3          	or	a5,a5,a0
   1a790:	0367f263          	bgeu	a5,s6,1a7b4 <__umoddi3+0x324>
   1a794:	00f987b3          	add	a5,s3,a5
   1a798:	0137b6b3          	sltu	a3,a5,s3
   1a79c:	0167b733          	sltu	a4,a5,s6
   1a7a0:	0016b693          	seqz	a3,a3
   1a7a4:	00d77733          	and	a4,a4,a3
   1a7a8:	40e00733          	neg	a4,a4
   1a7ac:	01377733          	and	a4,a4,s3
   1a7b0:	00f707b3          	add	a5,a4,a5
   1a7b4:	41678b33          	sub	s6,a5,s6
   1a7b8:	000a0593          	mv	a1,s4
   1a7bc:	000b0513          	mv	a0,s6
   1a7c0:	fa4fa0ef          	jal	14f64 <__hidden___udivsi3>
   1a7c4:	000a8593          	mv	a1,s5
   1a7c8:	ee4fa0ef          	jal	14eac <__mulsi3>
   1a7cc:	00050a93          	mv	s5,a0
   1a7d0:	000a0593          	mv	a1,s4
   1a7d4:	000b0513          	mv	a0,s6
   1a7d8:	fd4fa0ef          	jal	14fac <__umodsi3>
   1a7dc:	01041413          	slli	s0,s0,0x10
   1a7e0:	01051513          	slli	a0,a0,0x10
   1a7e4:	01045413          	srli	s0,s0,0x10
   1a7e8:	00a46533          	or	a0,s0,a0
   1a7ec:	dd5ff06f          	j	1a5c0 <__umoddi3+0x130>
   1a7f0:	010006b7          	lui	a3,0x1000
   1a7f4:	01800713          	li	a4,24
   1a7f8:	e6d672e3          	bgeu	a2,a3,1a65c <__umoddi3+0x1cc>
   1a7fc:	01000713          	li	a4,16
   1a800:	e5dff06f          	j	1a65c <__umoddi3+0x1cc>
   1a804:	ded5e6e3          	bltu	a1,a3,1a5f0 <__umoddi3+0x160>
   1a808:	000107b7          	lui	a5,0x10
   1a80c:	04f6fc63          	bgeu	a3,a5,1a864 <__umoddi3+0x3d4>
   1a810:	1006b713          	sltiu	a4,a3,256
   1a814:	00173713          	seqz	a4,a4
   1a818:	00371713          	slli	a4,a4,0x3
   1a81c:	0001b7b7          	lui	a5,0x1b
   1a820:	00e6d833          	srl	a6,a3,a4
   1a824:	d9c78793          	addi	a5,a5,-612 # 1ad9c <__clz_tab>
   1a828:	010787b3          	add	a5,a5,a6
   1a82c:	0007ca03          	lbu	s4,0(a5)
   1a830:	02000a93          	li	s5,32
   1a834:	00ea0a33          	add	s4,s4,a4
   1a838:	055a1063          	bne	s4,s5,1a878 <__umoddi3+0x3e8>
   1a83c:	00c57463          	bgeu	a0,a2,1a844 <__umoddi3+0x3b4>
   1a840:	00b6fc63          	bgeu	a3,a1,1a858 <__umoddi3+0x3c8>
   1a844:	40c504b3          	sub	s1,a0,a2
   1a848:	00048413          	mv	s0,s1
   1a84c:	40d586b3          	sub	a3,a1,a3
   1a850:	009534b3          	sltu	s1,a0,s1
   1a854:	409684b3          	sub	s1,a3,s1
   1a858:	00040513          	mv	a0,s0
   1a85c:	00048593          	mv	a1,s1
   1a860:	d91ff06f          	j	1a5f0 <__umoddi3+0x160>
   1a864:	010007b7          	lui	a5,0x1000
   1a868:	01800713          	li	a4,24
   1a86c:	faf6f8e3          	bgeu	a3,a5,1a81c <__umoddi3+0x38c>
   1a870:	01000713          	li	a4,16
   1a874:	fa9ff06f          	j	1a81c <__umoddi3+0x38c>
   1a878:	414a8ab3          	sub	s5,s5,s4
   1a87c:	015696b3          	sll	a3,a3,s5
   1a880:	01465bb3          	srl	s7,a2,s4
   1a884:	00dbebb3          	or	s7,s7,a3
   1a888:	0145db33          	srl	s6,a1,s4
   1a88c:	010bdc93          	srli	s9,s7,0x10
   1a890:	015597b3          	sll	a5,a1,s5
   1a894:	01455933          	srl	s2,a0,s4
   1a898:	000c8593          	mv	a1,s9
   1a89c:	015514b3          	sll	s1,a0,s5
   1a8a0:	010b9d13          	slli	s10,s7,0x10
   1a8a4:	000b0513          	mv	a0,s6
   1a8a8:	00f96933          	or	s2,s2,a5
   1a8ac:	015619b3          	sll	s3,a2,s5
   1a8b0:	010d5d13          	srli	s10,s10,0x10
   1a8b4:	eb0fa0ef          	jal	14f64 <__hidden___udivsi3>
   1a8b8:	00050593          	mv	a1,a0
   1a8bc:	00050413          	mv	s0,a0
   1a8c0:	000d0513          	mv	a0,s10
   1a8c4:	de8fa0ef          	jal	14eac <__mulsi3>
   1a8c8:	00050c13          	mv	s8,a0
   1a8cc:	000c8593          	mv	a1,s9
   1a8d0:	000b0513          	mv	a0,s6
   1a8d4:	ed8fa0ef          	jal	14fac <__umodsi3>
   1a8d8:	01051513          	slli	a0,a0,0x10
   1a8dc:	01095793          	srli	a5,s2,0x10
   1a8e0:	00a7e7b3          	or	a5,a5,a0
   1a8e4:	0187fa63          	bgeu	a5,s8,1a8f8 <__umoddi3+0x468>
   1a8e8:	00fb87b3          	add	a5,s7,a5
   1a8ec:	0187f463          	bgeu	a5,s8,1a8f4 <__umoddi3+0x464>
   1a8f0:	1377f663          	bgeu	a5,s7,1aa1c <__umoddi3+0x58c>
   1a8f4:	fff40413          	addi	s0,s0,-1
   1a8f8:	41878db3          	sub	s11,a5,s8
   1a8fc:	000c8593          	mv	a1,s9
   1a900:	000d8513          	mv	a0,s11
   1a904:	e60fa0ef          	jal	14f64 <__hidden___udivsi3>
   1a908:	00050593          	mv	a1,a0
   1a90c:	00050b13          	mv	s6,a0
   1a910:	000d0513          	mv	a0,s10
   1a914:	d98fa0ef          	jal	14eac <__mulsi3>
   1a918:	000c8593          	mv	a1,s9
   1a91c:	00050c13          	mv	s8,a0
   1a920:	000d8513          	mv	a0,s11
   1a924:	e88fa0ef          	jal	14fac <__umodsi3>
   1a928:	01091593          	slli	a1,s2,0x10
   1a92c:	01051513          	slli	a0,a0,0x10
   1a930:	0105d593          	srli	a1,a1,0x10
   1a934:	00a5e5b3          	or	a1,a1,a0
   1a938:	0185fa63          	bgeu	a1,s8,1a94c <__umoddi3+0x4bc>
   1a93c:	00bb85b3          	add	a1,s7,a1
   1a940:	0185f463          	bgeu	a1,s8,1a948 <__umoddi3+0x4b8>
   1a944:	0f75f263          	bgeu	a1,s7,1aa28 <__umoddi3+0x598>
   1a948:	fffb0b13          	addi	s6,s6,-1
   1a94c:	01041413          	slli	s0,s0,0x10
   1a950:	41858733          	sub	a4,a1,s8
   1a954:	01646433          	or	s0,s0,s6
   1a958:	010b1513          	slli	a0,s6,0x10
   1a95c:	01099593          	slli	a1,s3,0x10
   1a960:	01045413          	srli	s0,s0,0x10
   1a964:	01055513          	srli	a0,a0,0x10
   1a968:	0105d593          	srli	a1,a1,0x10
   1a96c:	d40fa0ef          	jal	14eac <__mulsi3>
   1a970:	00050813          	mv	a6,a0
   1a974:	010b1513          	slli	a0,s6,0x10
   1a978:	01055513          	srli	a0,a0,0x10
   1a97c:	0109d593          	srli	a1,s3,0x10
   1a980:	d2cfa0ef          	jal	14eac <__mulsi3>
   1a984:	01099593          	slli	a1,s3,0x10
   1a988:	00050793          	mv	a5,a0
   1a98c:	0105d593          	srli	a1,a1,0x10
   1a990:	00040513          	mv	a0,s0
   1a994:	d18fa0ef          	jal	14eac <__mulsi3>
   1a998:	00050313          	mv	t1,a0
   1a99c:	0109d593          	srli	a1,s3,0x10
   1a9a0:	00040513          	mv	a0,s0
   1a9a4:	d08fa0ef          	jal	14eac <__mulsi3>
   1a9a8:	006787b3          	add	a5,a5,t1
   1a9ac:	01085693          	srli	a3,a6,0x10
   1a9b0:	00d787b3          	add	a5,a5,a3
   1a9b4:	0067f663          	bgeu	a5,t1,1a9c0 <__umoddi3+0x530>
   1a9b8:	000106b7          	lui	a3,0x10
   1a9bc:	00d50533          	add	a0,a0,a3
   1a9c0:	0107d693          	srli	a3,a5,0x10
   1a9c4:	01081813          	slli	a6,a6,0x10
   1a9c8:	01079793          	slli	a5,a5,0x10
   1a9cc:	01085813          	srli	a6,a6,0x10
   1a9d0:	00a68533          	add	a0,a3,a0
   1a9d4:	010787b3          	add	a5,a5,a6
   1a9d8:	00a76663          	bltu	a4,a0,1a9e4 <__umoddi3+0x554>
   1a9dc:	00f4fe63          	bgeu	s1,a5,1a9f8 <__umoddi3+0x568>
   1a9e0:	00a71c63          	bne	a4,a0,1a9f8 <__umoddi3+0x568>
   1a9e4:	413789b3          	sub	s3,a5,s3
   1a9e8:	0137b6b3          	sltu	a3,a5,s3
   1a9ec:	017686b3          	add	a3,a3,s7
   1a9f0:	00098793          	mv	a5,s3
   1a9f4:	40d50533          	sub	a0,a0,a3
   1a9f8:	40f487b3          	sub	a5,s1,a5
   1a9fc:	40a705b3          	sub	a1,a4,a0
   1aa00:	00f4b4b3          	sltu	s1,s1,a5
   1aa04:	409585b3          	sub	a1,a1,s1
   1aa08:	01459a33          	sll	s4,a1,s4
   1aa0c:	0157d7b3          	srl	a5,a5,s5
   1aa10:	00fa6533          	or	a0,s4,a5
   1aa14:	0155d5b3          	srl	a1,a1,s5
   1aa18:	bd9ff06f          	j	1a5f0 <__umoddi3+0x160>
   1aa1c:	ffe40413          	addi	s0,s0,-2
   1aa20:	017787b3          	add	a5,a5,s7
   1aa24:	ed5ff06f          	j	1a8f8 <__umoddi3+0x468>
   1aa28:	ffeb0b13          	addi	s6,s6,-2
   1aa2c:	017585b3          	add	a1,a1,s7
   1aa30:	f1dff06f          	j	1a94c <__umoddi3+0x4bc>

0001aa34 <_close>:
   1aa34:	05800713          	li	a4,88
   1aa38:	8ae1a023          	sw	a4,-1888(gp) # 1c778 <errno>
   1aa3c:	fff00513          	li	a0,-1
   1aa40:	00008067          	ret

0001aa44 <_fstat>:
   1aa44:	05800713          	li	a4,88
   1aa48:	8ae1a023          	sw	a4,-1888(gp) # 1c778 <errno>
   1aa4c:	fff00513          	li	a0,-1
   1aa50:	00008067          	ret

0001aa54 <_getpid>:
   1aa54:	05800713          	li	a4,88
   1aa58:	8ae1a023          	sw	a4,-1888(gp) # 1c778 <errno>
   1aa5c:	fff00513          	li	a0,-1
   1aa60:	00008067          	ret

0001aa64 <_isatty>:
   1aa64:	05800713          	li	a4,88
   1aa68:	8ae1a023          	sw	a4,-1888(gp) # 1c778 <errno>
   1aa6c:	00000513          	li	a0,0
   1aa70:	00008067          	ret

0001aa74 <_kill>:
   1aa74:	05800713          	li	a4,88
   1aa78:	8ae1a023          	sw	a4,-1888(gp) # 1c778 <errno>
   1aa7c:	fff00513          	li	a0,-1
   1aa80:	00008067          	ret

0001aa84 <_lseek>:
   1aa84:	05800713          	li	a4,88
   1aa88:	8ae1a023          	sw	a4,-1888(gp) # 1c778 <errno>
   1aa8c:	fff00513          	li	a0,-1
   1aa90:	00008067          	ret

0001aa94 <_read>:
   1aa94:	05800713          	li	a4,88
   1aa98:	8ae1a023          	sw	a4,-1888(gp) # 1c778 <errno>
   1aa9c:	fff00513          	li	a0,-1
   1aaa0:	00008067          	ret

0001aaa4 <_sbrk>:
   1aaa4:	8b81a783          	lw	a5,-1864(gp) # 1c790 <heap_end.0>
   1aaa8:	00078a63          	beqz	a5,1aabc <_sbrk+0x18>
   1aaac:	00a78533          	add	a0,a5,a0
   1aab0:	8aa1ac23          	sw	a0,-1864(gp) # 1c790 <heap_end.0>
   1aab4:	00078513          	mv	a0,a5
   1aab8:	00008067          	ret
   1aabc:	000217b7          	lui	a5,0x21
   1aac0:	e6078793          	addi	a5,a5,-416 # 20e60 <__BSS_END__>
   1aac4:	00a78533          	add	a0,a5,a0
   1aac8:	8aa1ac23          	sw	a0,-1864(gp) # 1c790 <heap_end.0>
   1aacc:	00078513          	mv	a0,a5
   1aad0:	00008067          	ret

0001aad4 <_write>:
   1aad4:	05800713          	li	a4,88
   1aad8:	8ae1a023          	sw	a4,-1888(gp) # 1c778 <errno>
   1aadc:	fff00513          	li	a0,-1
   1aae0:	00008067          	ret

0001aae4 <_exit>:
   1aae4:	0000006f          	j	1aae4 <_exit>
