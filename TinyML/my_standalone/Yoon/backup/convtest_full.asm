
convtest.elf:     file format elf32-littleriscv


Disassembly of section .text:

000100b4 <exit>:
   100b4:	ff010113          	addi	sp,sp,-16
   100b8:	00000593          	li	a1,0
   100bc:	00812423          	sw	s0,8(sp)
   100c0:	00112623          	sw	ra,12(sp)
   100c4:	00050413          	mv	s0,a0
   100c8:	681070ef          	jal	17f48 <__call_exitprocs>
   100cc:	f681a783          	lw	a5,-152(gp) # 1ca58 <__stdio_exit_handler>
   100d0:	00078463          	beqz	a5,100d8 <exit+0x24>
   100d4:	000780e7          	jalr	a5
   100d8:	00040513          	mv	a0,s0
   100dc:	7580a0ef          	jal	1a834 <_exit>

000100e0 <main>:
   100e0:	fa010113          	addi	sp,sp,-96
   100e4:	04912a23          	sw	s1,84(sp)
   100e8:	04112e23          	sw	ra,92(sp)
   100ec:	04812c23          	sw	s0,88(sp)
   100f0:	05212823          	sw	s2,80(sp)
   100f4:	05312623          	sw	s3,76(sp)
   100f8:	05412423          	sw	s4,72(sp)
   100fc:	05512223          	sw	s5,68(sp)
   10100:	05612023          	sw	s6,64(sp)
   10104:	03712e23          	sw	s7,60(sp)
   10108:	03812c23          	sw	s8,56(sp)
   1010c:	fa418493          	addi	s1,gp,-92 # 1ca94 <_ZZ4mainE10input_data>
   10110:	00000793          	li	a5,0
   10114:	00a00693          	li	a3,10
   10118:	02400713          	li	a4,36
   1011c:	00f48633          	add	a2,s1,a5
   10120:	00d60023          	sb	a3,0(a2)
   10124:	00178793          	addi	a5,a5,1
   10128:	fee79ae3          	bne	a5,a4,1011c <main+0x3c>
   1012c:	00012623          	sw	zero,12(sp)
   10130:	00012823          	sw	zero,16(sp)
   10134:	00012a23          	sw	zero,20(sp)
   10138:	00012c23          	sw	zero,24(sp)
   1013c:	00012e23          	sw	zero,28(sp)
   10140:	02012023          	sw	zero,32(sp)
   10144:	02012223          	sw	zero,36(sp)
   10148:	02012423          	sw	zero,40(sp)
   1014c:	02012623          	sw	zero,44(sp)
   10150:	00c10913          	addi	s2,sp,12
   10154:	00000b93          	li	s7,0
   10158:	f8000a93          	li	s5,-128
   1015c:	07f00a13          	li	s4,127
   10160:	00600993          	li	s3,6
   10164:	02400c13          	li	s8,36
   10168:	00000413          	li	s0,0
   1016c:	008487b3          	add	a5,s1,s0
   10170:	00078503          	lb	a0,0(a5)
   10174:	f5818583          	lb	a1,-168(gp) # 1ca48 <_ZZ4mainE11filter_data>
   10178:	3ad040ef          	jal	14d24 <__mulsi3>
   1017c:	00000613          	li	a2,0
   10180:	400005b7          	lui	a1,0x40000
   10184:	17c000ef          	jal	10300 <_ZN6tflite29MultiplyByQuantizedMultiplierElli>
   10188:	008907b3          	add	a5,s2,s0
   1018c:	00140413          	addi	s0,s0,1
   10190:	01555463          	bge	a0,s5,10198 <main+0xb8>
   10194:	f8000513          	li	a0,-128
   10198:	00aa5463          	bge	s4,a0,101a0 <main+0xc0>
   1019c:	07f00513          	li	a0,127
   101a0:	00a78023          	sb	a0,0(a5)
   101a4:	fd3414e3          	bne	s0,s3,1016c <main+0x8c>
   101a8:	006b8b93          	addi	s7,s7,6
   101ac:	00648493          	addi	s1,s1,6
   101b0:	00690913          	addi	s2,s2,6
   101b4:	fb8b9ae3          	bne	s7,s8,10168 <main+0x88>
   101b8:	05c12083          	lw	ra,92(sp)
   101bc:	05812403          	lw	s0,88(sp)
   101c0:	00c10503          	lb	a0,12(sp)
   101c4:	05412483          	lw	s1,84(sp)
   101c8:	05012903          	lw	s2,80(sp)
   101cc:	04c12983          	lw	s3,76(sp)
   101d0:	04812a03          	lw	s4,72(sp)
   101d4:	04412a83          	lw	s5,68(sp)
   101d8:	04012b03          	lw	s6,64(sp)
   101dc:	03c12b83          	lw	s7,60(sp)
   101e0:	03812c03          	lw	s8,56(sp)
   101e4:	06010113          	addi	sp,sp,96
   101e8:	00008067          	ret

000101ec <register_fini>:
   101ec:	00000793          	li	a5,0
   101f0:	00078863          	beqz	a5,10200 <register_fini+0x14>
   101f4:	0001a537          	lui	a0,0x1a
   101f8:	91850513          	addi	a0,a0,-1768 # 19918 <__libc_fini_array>
   101fc:	69d0706f          	j	18098 <atexit>
   10200:	00008067          	ret

00010204 <_start>:
   10204:	0000d197          	auipc	gp,0xd
   10208:	8ec18193          	addi	gp,gp,-1812 # 1caf0 <__global_pointer$>
   1020c:	00000513          	li	a0,0
   10210:	00050463          	beqz	a0,10218 <_start+0x14>
   10214:	01751073          	csrw	jvt,a0
   10218:	0000d517          	auipc	a0,0xd
   1021c:	84050513          	addi	a0,a0,-1984 # 1ca58 <__stdio_exit_handler>
   10220:	0000d617          	auipc	a2,0xd
   10224:	b8860613          	addi	a2,a2,-1144 # 1cda8 <__BSS_END__>
   10228:	40a60633          	sub	a2,a2,a0
   1022c:	00000593          	li	a1,0
   10230:	0a0000ef          	jal	102d0 <memset>
   10234:	00008517          	auipc	a0,0x8
   10238:	e6450513          	addi	a0,a0,-412 # 18098 <atexit>
   1023c:	00050863          	beqz	a0,1024c <_start+0x48>
   10240:	00009517          	auipc	a0,0x9
   10244:	6d850513          	addi	a0,a0,1752 # 19918 <__libc_fini_array>
   10248:	651070ef          	jal	18098 <atexit>
   1024c:	18d070ef          	jal	17bd8 <__libc_init_array>
   10250:	00012503          	lw	a0,0(sp)
   10254:	00410593          	addi	a1,sp,4
   10258:	00251613          	slli	a2,a0,0x2
   1025c:	00460613          	addi	a2,a2,4
   10260:	00b60633          	add	a2,a2,a1
   10264:	e7dff0ef          	jal	100e0 <main>
   10268:	e4dff06f          	j	100b4 <exit>

0001026c <__do_global_dtors_aux>:
   1026c:	ff010113          	addi	sp,sp,-16
   10270:	00812423          	sw	s0,8(sp)
   10274:	f881c783          	lbu	a5,-120(gp) # 1ca78 <completed.1>
   10278:	00112623          	sw	ra,12(sp)
   1027c:	02079263          	bnez	a5,102a0 <__do_global_dtors_aux+0x34>
   10280:	00000793          	li	a5,0
   10284:	00078a63          	beqz	a5,10298 <__do_global_dtors_aux+0x2c>
   10288:	0001b537          	lui	a0,0x1b
   1028c:	e7c50513          	addi	a0,a0,-388 # 1ae7c <__EH_FRAME_BEGIN__>
   10290:	00000097          	auipc	ra,0x0
   10294:	000000e7          	jalr	zero # 0 <exit-0x100b4>
   10298:	00100793          	li	a5,1
   1029c:	f8f18423          	sb	a5,-120(gp) # 1ca78 <completed.1>
   102a0:	00c12083          	lw	ra,12(sp)
   102a4:	00812403          	lw	s0,8(sp)
   102a8:	01010113          	addi	sp,sp,16
   102ac:	00008067          	ret

000102b0 <frame_dummy>:
   102b0:	00000793          	li	a5,0
   102b4:	00078c63          	beqz	a5,102cc <frame_dummy+0x1c>
   102b8:	0001b537          	lui	a0,0x1b
   102bc:	f8c18593          	addi	a1,gp,-116 # 1ca7c <object.0>
   102c0:	e7c50513          	addi	a0,a0,-388 # 1ae7c <__EH_FRAME_BEGIN__>
   102c4:	00000317          	auipc	t1,0x0
   102c8:	00000067          	jr	zero # 0 <exit-0x100b4>
   102cc:	00008067          	ret

000102d0 <memset>:
   102d0:	ff010113          	addi	sp,sp,-16
   102d4:	00812423          	sw	s0,8(sp)
   102d8:	00112623          	sw	ra,12(sp)
   102dc:	00050413          	mv	s0,a0
   102e0:	00060663          	beqz	a2,102ec <memset+0x1c>
   102e4:	0ff5f593          	zext.b	a1,a1
   102e8:	fe9ff0ef          	jal	102d0 <memset>
   102ec:	00c12083          	lw	ra,12(sp)
   102f0:	00040513          	mv	a0,s0
   102f4:	00812403          	lw	s0,8(sp)
   102f8:	01010113          	addi	sp,sp,16
   102fc:	00008067          	ret

00010300 <_ZN6tflite29MultiplyByQuantizedMultiplierElli>:
   10300:	fff64793          	not	a5,a2
   10304:	41f7d793          	srai	a5,a5,0x1f
   10308:	00f677b3          	and	a5,a2,a5
   1030c:	ff010113          	addi	sp,sp,-16
   10310:	00f51533          	sll	a0,a0,a5
   10314:	800007b7          	lui	a5,0x80000
   10318:	00812423          	sw	s0,8(sp)
   1031c:	00912223          	sw	s1,4(sp)
   10320:	00060413          	mv	s0,a2
   10324:	40b504b3          	sub	s1,a0,a1
   10328:	00f507b3          	add	a5,a0,a5
   1032c:	00058613          	mv	a2,a1
   10330:	0017b793          	seqz	a5,a5
   10334:	fff40713          	addi	a4,s0,-1
   10338:	0014b493          	seqz	s1,s1
   1033c:	01212023          	sw	s2,0(sp)
   10340:	00f4f4b3          	and	s1,s1,a5
   10344:	40800933          	neg	s2,s0
   10348:	41f75793          	srai	a5,a4,0x1f
   1034c:	41f55593          	srai	a1,a0,0x1f
   10350:	41f65693          	srai	a3,a2,0x1f
   10354:	00112623          	sw	ra,12(sp)
   10358:	00f97933          	and	s2,s2,a5
   1035c:	1ed040ef          	jal	14d48 <__muldi3>
   10360:	0805ce63          	bltz	a1,103fc <_ZN6tflite29MultiplyByQuantizedMultiplierElli+0xfc>
   10364:	40000737          	lui	a4,0x40000
   10368:	00000793          	li	a5,0
   1036c:	0a049063          	bnez	s1,1040c <_ZN6tflite29MultiplyByQuantizedMultiplierElli+0x10c>
   10370:	fe100693          	li	a3,-31
   10374:	0cd44463          	blt	s0,a3,1043c <_ZN6tflite29MultiplyByQuantizedMultiplierElli+0x13c>
   10378:	00a70733          	add	a4,a4,a0
   1037c:	00a73533          	sltu	a0,a4,a0
   10380:	00b787b3          	add	a5,a5,a1
   10384:	00f50533          	add	a0,a0,a5
   10388:	41f55793          	srai	a5,a0,0x1f
   1038c:	00179793          	slli	a5,a5,0x1
   10390:	0017d793          	srli	a5,a5,0x1
   10394:	00e78733          	add	a4,a5,a4
   10398:	00f737b3          	sltu	a5,a4,a5
   1039c:	00a787b3          	add	a5,a5,a0
   103a0:	01f75713          	srli	a4,a4,0x1f
   103a4:	00179793          	slli	a5,a5,0x1
   103a8:	00e787b3          	add	a5,a5,a4
   103ac:	fe090713          	addi	a4,s2,-32
   103b0:	00000513          	li	a0,0
   103b4:	02074e63          	bltz	a4,103f0 <_ZN6tflite29MultiplyByQuantizedMultiplierElli+0xf0>
   103b8:	fff50513          	addi	a0,a0,-1
   103bc:	40155693          	srai	a3,a0,0x1
   103c0:	01f7d713          	srli	a4,a5,0x1f
   103c4:	00a7f533          	and	a0,a5,a0
   103c8:	00d70733          	add	a4,a4,a3
   103cc:	00c12083          	lw	ra,12(sp)
   103d0:	00812403          	lw	s0,8(sp)
   103d4:	4127d7b3          	sra	a5,a5,s2
   103d8:	00a72533          	slt	a0,a4,a0
   103dc:	00412483          	lw	s1,4(sp)
   103e0:	00012903          	lw	s2,0(sp)
   103e4:	00a78533          	add	a0,a5,a0
   103e8:	01010113          	addi	sp,sp,16
   103ec:	00008067          	ret
   103f0:	00100513          	li	a0,1
   103f4:	01251533          	sll	a0,a0,s2
   103f8:	fc1ff06f          	j	103b8 <_ZN6tflite29MultiplyByQuantizedMultiplierElli+0xb8>
   103fc:	c0000737          	lui	a4,0xc0000
   10400:	00170713          	addi	a4,a4,1 # c0000001 <__BSS_END__+0xbffe3259>
   10404:	fff00793          	li	a5,-1
   10408:	f60484e3          	beqz	s1,10370 <_ZN6tflite29MultiplyByQuantizedMultiplierElli+0x70>
   1040c:	fe100793          	li	a5,-31
   10410:	02f44663          	blt	s0,a5,1043c <_ZN6tflite29MultiplyByQuantizedMultiplierElli+0x13c>
   10414:	fe090793          	addi	a5,s2,-32
   10418:	00000513          	li	a0,0
   1041c:	0007d663          	bgez	a5,10428 <_ZN6tflite29MultiplyByQuantizedMultiplierElli+0x128>
   10420:	00100513          	li	a0,1
   10424:	01251533          	sll	a0,a0,s2
   10428:	fff50513          	addi	a0,a0,-1
   1042c:	800007b7          	lui	a5,0x80000
   10430:	40155713          	srai	a4,a0,0x1
   10434:	fff78793          	addi	a5,a5,-1 # 7fffffff <__BSS_END__+0x7ffe3257>
   10438:	f95ff06f          	j	103cc <_ZN6tflite29MultiplyByQuantizedMultiplierElli+0xcc>
   1043c:	0001b6b7          	lui	a3,0x1b
   10440:	0001b637          	lui	a2,0x1b
   10444:	0001b537          	lui	a0,0x1b
   10448:	83868693          	addi	a3,a3,-1992 # 1a838 <_exit+0x4>
   1044c:	84860613          	addi	a2,a2,-1976 # 1a848 <_exit+0x14>
   10450:	8a450513          	addi	a0,a0,-1884 # 1a8a4 <_exit+0x70>
   10454:	16700593          	li	a1,359
   10458:	30d040ef          	jal	14f64 <__assert_func>

0001045c <_ZN6tflite29MultiplyByQuantizedMultiplierExli>:
   1045c:	ff010113          	addi	sp,sp,-16
   10460:	00112623          	sw	ra,12(sp)
   10464:	00812423          	sw	s0,8(sp)
   10468:	12064e63          	bltz	a2,105a4 <_ZN6tflite29MultiplyByQuantizedMultiplierExli+0x148>
   1046c:	01f68793          	addi	a5,a3,31
   10470:	02600713          	li	a4,38
   10474:	00068413          	mv	s0,a3
   10478:	10f76663          	bltu	a4,a5,10584 <_ZN6tflite29MultiplyByQuantizedMultiplierExli+0x128>
   1047c:	000087b7          	lui	a5,0x8
   10480:	00f586b3          	add	a3,a1,a5
   10484:	00010737          	lui	a4,0x10
   10488:	0ce6fe63          	bgeu	a3,a4,10564 <_ZN6tflite29MultiplyByQuantizedMultiplierExli+0x108>
   1048c:	7fff0737          	lui	a4,0x7fff0
   10490:	06e64063          	blt	a2,a4,104f0 <_ZN6tflite29MultiplyByQuantizedMultiplierExli+0x94>
   10494:	fff78613          	addi	a2,a5,-1 # 7fff <exit-0x80b5>
   10498:	00000693          	li	a3,0
   1049c:	0ad040ef          	jal	14d48 <__muldi3>
   104a0:	00e00713          	li	a4,14
   104a4:	40870733          	sub	a4,a4,s0
   104a8:	fe070793          	addi	a5,a4,-32 # 7ffeffe0 <__BSS_END__+0x7ffd3238>
   104ac:	0607c263          	bltz	a5,10510 <_ZN6tflite29MultiplyByQuantizedMultiplierExli+0xb4>
   104b0:	00100713          	li	a4,1
   104b4:	00f71733          	sll	a4,a4,a5
   104b8:	00f00693          	li	a3,15
   104bc:	00000793          	li	a5,0
   104c0:	00a78533          	add	a0,a5,a0
   104c4:	408686b3          	sub	a3,a3,s0
   104c8:	00f537b3          	sltu	a5,a0,a5
   104cc:	00b70733          	add	a4,a4,a1
   104d0:	fe068613          	addi	a2,a3,-32
   104d4:	00e787b3          	add	a5,a5,a4
   104d8:	06064263          	bltz	a2,1053c <_ZN6tflite29MultiplyByQuantizedMultiplierExli+0xe0>
   104dc:	00c12083          	lw	ra,12(sp)
   104e0:	00812403          	lw	s0,8(sp)
   104e4:	40c7d533          	sra	a0,a5,a2
   104e8:	01010113          	addi	sp,sp,16
   104ec:	00008067          	ret
   104f0:	00f606b3          	add	a3,a2,a5
   104f4:	4106d613          	srai	a2,a3,0x10
   104f8:	41f6d693          	srai	a3,a3,0x1f
   104fc:	04d040ef          	jal	14d48 <__muldi3>
   10500:	00e00713          	li	a4,14
   10504:	40870733          	sub	a4,a4,s0
   10508:	fe070793          	addi	a5,a4,-32
   1050c:	fa07d2e3          	bgez	a5,104b0 <_ZN6tflite29MultiplyByQuantizedMultiplierExli+0x54>
   10510:	00100793          	li	a5,1
   10514:	00e797b3          	sll	a5,a5,a4
   10518:	00f00693          	li	a3,15
   1051c:	00000713          	li	a4,0
   10520:	00a78533          	add	a0,a5,a0
   10524:	408686b3          	sub	a3,a3,s0
   10528:	00f537b3          	sltu	a5,a0,a5
   1052c:	00b70733          	add	a4,a4,a1
   10530:	fe068613          	addi	a2,a3,-32
   10534:	00e787b3          	add	a5,a5,a4
   10538:	fa0652e3          	bgez	a2,104dc <_ZN6tflite29MultiplyByQuantizedMultiplierExli+0x80>
   1053c:	00c12083          	lw	ra,12(sp)
   10540:	00812403          	lw	s0,8(sp)
   10544:	01f00713          	li	a4,31
   10548:	00179793          	slli	a5,a5,0x1
   1054c:	40d70733          	sub	a4,a4,a3
   10550:	00d55533          	srl	a0,a0,a3
   10554:	00e797b3          	sll	a5,a5,a4
   10558:	00a78533          	add	a0,a5,a0
   1055c:	01010113          	addi	sp,sp,16
   10560:	00008067          	ret
   10564:	0001b6b7          	lui	a3,0x1b
   10568:	0001b637          	lui	a2,0x1b
   1056c:	0001b537          	lui	a0,0x1b
   10570:	9a468693          	addi	a3,a3,-1628 # 1a9a4 <_exit+0x170>
   10574:	91060613          	addi	a2,a2,-1776 # 1a910 <_exit+0xdc>
   10578:	95850513          	addi	a0,a0,-1704 # 1a958 <_exit+0x124>
   1057c:	05a00593          	li	a1,90
   10580:	1e5040ef          	jal	14f64 <__assert_func>
   10584:	0001b6b7          	lui	a3,0x1b
   10588:	0001b637          	lui	a2,0x1b
   1058c:	0001b537          	lui	a0,0x1b
   10590:	98868693          	addi	a3,a3,-1656 # 1a988 <_exit+0x154>
   10594:	91060613          	addi	a2,a2,-1776 # 1a910 <_exit+0xdc>
   10598:	95850513          	addi	a0,a0,-1704 # 1a958 <_exit+0x124>
   1059c:	05900593          	li	a1,89
   105a0:	1c5040ef          	jal	14f64 <__assert_func>
   105a4:	0001b6b7          	lui	a3,0x1b
   105a8:	0001b637          	lui	a2,0x1b
   105ac:	0001b537          	lui	a0,0x1b
   105b0:	8f468693          	addi	a3,a3,-1804 # 1a8f4 <_exit+0xc0>
   105b4:	91060613          	addi	a2,a2,-1776 # 1a910 <_exit+0xdc>
   105b8:	95850513          	addi	a0,a0,-1704 # 1a958 <_exit+0x124>
   105bc:	05800593          	li	a1,88
   105c0:	1a5040ef          	jal	14f64 <__assert_func>

000105c4 <_ZN6tflite18QuantizeMultiplierEdPlPi.part.0>:
   105c4:	ff010113          	addi	sp,sp,-16
   105c8:	00912223          	sw	s1,4(sp)
   105cc:	00060493          	mv	s1,a2
   105d0:	00068613          	mv	a2,a3
   105d4:	00112623          	sw	ra,12(sp)
   105d8:	00812423          	sw	s0,8(sp)
   105dc:	00068413          	mv	s0,a3
   105e0:	188010ef          	jal	11768 <frexp>
   105e4:	ec81a603          	lw	a2,-312(gp) # 1c9b8 <__SDATA_BEGIN__>
   105e8:	ecc1a683          	lw	a3,-308(gp) # 1c9bc <__SDATA_BEGIN__+0x4>
   105ec:	1dd020ef          	jal	12fc8 <__muldf3>
   105f0:	2cc010ef          	jal	118bc <round>
   105f4:	18c030ef          	jal	13780 <__fixdfdi>
   105f8:	04b04c63          	bgtz	a1,10650 <_ZN6tflite18QuantizeMultiplierEdPlPi.part.0+0x8c>
   105fc:	04058663          	beqz	a1,10648 <_ZN6tflite18QuantizeMultiplierEdPlPi.part.0+0x84>
   10600:	80000737          	lui	a4,0x80000
   10604:	00042783          	lw	a5,0(s0)
   10608:	02e50663          	beq	a0,a4,10634 <_ZN6tflite18QuantizeMultiplierEdPlPi.part.0+0x70>
   1060c:	fe100713          	li	a4,-31
   10610:	00e7d663          	bge	a5,a4,1061c <_ZN6tflite18QuantizeMultiplierEdPlPi.part.0+0x58>
   10614:	00042023          	sw	zero,0(s0)
   10618:	00000513          	li	a0,0
   1061c:	00c12083          	lw	ra,12(sp)
   10620:	00812403          	lw	s0,8(sp)
   10624:	00a4a023          	sw	a0,0(s1)
   10628:	00412483          	lw	s1,4(sp)
   1062c:	01010113          	addi	sp,sp,16
   10630:	00008067          	ret
   10634:	fc059ce3          	bnez	a1,1060c <_ZN6tflite18QuantizeMultiplierEdPlPi.part.0+0x48>
   10638:	00178793          	addi	a5,a5,1
   1063c:	00f42023          	sw	a5,0(s0)
   10640:	40000537          	lui	a0,0x40000
   10644:	fc9ff06f          	j	1060c <_ZN6tflite18QuantizeMultiplierEdPlPi.part.0+0x48>
   10648:	800007b7          	lui	a5,0x80000
   1064c:	faa7fae3          	bgeu	a5,a0,10600 <_ZN6tflite18QuantizeMultiplierEdPlPi.part.0+0x3c>
   10650:	0fd040ef          	jal	14f4c <abort>

00010654 <_ZN6tflite18QuantizeMultiplierEdPlPi>:
   10654:	fe010113          	addi	sp,sp,-32
   10658:	00812c23          	sw	s0,24(sp)
   1065c:	00912a23          	sw	s1,20(sp)
   10660:	00060413          	mv	s0,a2
   10664:	00068493          	mv	s1,a3
   10668:	00000613          	li	a2,0
   1066c:	00000693          	li	a3,0
   10670:	01212823          	sw	s2,16(sp)
   10674:	01312623          	sw	s3,12(sp)
   10678:	00112e23          	sw	ra,28(sp)
   1067c:	00050913          	mv	s2,a0
   10680:	00058993          	mv	s3,a1
   10684:	710020ef          	jal	12d94 <__eqdf2>
   10688:	02051463          	bnez	a0,106b0 <_ZN6tflite18QuantizeMultiplierEdPlPi+0x5c>
   1068c:	00042023          	sw	zero,0(s0)
   10690:	01c12083          	lw	ra,28(sp)
   10694:	01812403          	lw	s0,24(sp)
   10698:	0004a023          	sw	zero,0(s1)
   1069c:	01012903          	lw	s2,16(sp)
   106a0:	01412483          	lw	s1,20(sp)
   106a4:	00c12983          	lw	s3,12(sp)
   106a8:	02010113          	addi	sp,sp,32
   106ac:	00008067          	ret
   106b0:	00040613          	mv	a2,s0
   106b4:	01812403          	lw	s0,24(sp)
   106b8:	01c12083          	lw	ra,28(sp)
   106bc:	00090513          	mv	a0,s2
   106c0:	00098593          	mv	a1,s3
   106c4:	01012903          	lw	s2,16(sp)
   106c8:	00c12983          	lw	s3,12(sp)
   106cc:	00048693          	mv	a3,s1
   106d0:	01412483          	lw	s1,20(sp)
   106d4:	02010113          	addi	sp,sp,32
   106d8:	eedff06f          	j	105c4 <_ZN6tflite18QuantizeMultiplierEdPlPi.part.0>

000106dc <_ZN6tflite32QuantizeMultiplierGreaterThanOneEdPlPi>:
   106dc:	fe010113          	addi	sp,sp,-32
   106e0:	00812c23          	sw	s0,24(sp)
   106e4:	00912a23          	sw	s1,20(sp)
   106e8:	00068413          	mv	s0,a3
   106ec:	00060493          	mv	s1,a2
   106f0:	ed41a683          	lw	a3,-300(gp) # 1c9c4 <__SDATA_BEGIN__+0xc>
   106f4:	ed01a603          	lw	a2,-304(gp) # 1c9c0 <__SDATA_BEGIN__+0x8>
   106f8:	01212823          	sw	s2,16(sp)
   106fc:	01312623          	sw	s3,12(sp)
   10700:	00112e23          	sw	ra,28(sp)
   10704:	00050913          	mv	s2,a0
   10708:	00058993          	mv	s3,a1
   1070c:	70c020ef          	jal	12e18 <__gedf2>
   10710:	02a05e63          	blez	a0,1074c <_ZN6tflite32QuantizeMultiplierGreaterThanOneEdPlPi+0x70>
   10714:	00090513          	mv	a0,s2
   10718:	00098593          	mv	a1,s3
   1071c:	00048613          	mv	a2,s1
   10720:	00040693          	mv	a3,s0
   10724:	ea1ff0ef          	jal	105c4 <_ZN6tflite18QuantizeMultiplierEdPlPi.part.0>
   10728:	00042783          	lw	a5,0(s0)
   1072c:	0207c063          	bltz	a5,1074c <_ZN6tflite32QuantizeMultiplierGreaterThanOneEdPlPi+0x70>
   10730:	01c12083          	lw	ra,28(sp)
   10734:	01812403          	lw	s0,24(sp)
   10738:	01412483          	lw	s1,20(sp)
   1073c:	01012903          	lw	s2,16(sp)
   10740:	00c12983          	lw	s3,12(sp)
   10744:	02010113          	addi	sp,sp,32
   10748:	00008067          	ret
   1074c:	001040ef          	jal	14f4c <abort>

00010750 <_ZN6tflite35QuantizeMultiplierSmallerThanOneExpEdPlPi>:
   10750:	fd010113          	addi	sp,sp,-48
   10754:	03212023          	sw	s2,32(sp)
   10758:	01312e23          	sw	s3,28(sp)
   1075c:	00060913          	mv	s2,a2
   10760:	00068993          	mv	s3,a3
   10764:	ed01a603          	lw	a2,-304(gp) # 1c9c0 <__SDATA_BEGIN__+0x8>
   10768:	ed41a683          	lw	a3,-300(gp) # 1c9c4 <__SDATA_BEGIN__+0xc>
   1076c:	02812423          	sw	s0,40(sp)
   10770:	02912223          	sw	s1,36(sp)
   10774:	02112623          	sw	ra,44(sp)
   10778:	00050413          	mv	s0,a0
   1077c:	00058493          	mv	s1,a1
   10780:	770020ef          	jal	12ef0 <__ledf2>
   10784:	04055c63          	bgez	a0,107dc <_ZN6tflite35QuantizeMultiplierSmallerThanOneExpEdPlPi+0x8c>
   10788:	00000613          	li	a2,0
   1078c:	00000693          	li	a3,0
   10790:	00040513          	mv	a0,s0
   10794:	00048593          	mv	a1,s1
   10798:	680020ef          	jal	12e18 <__gedf2>
   1079c:	04a05063          	blez	a0,107dc <_ZN6tflite35QuantizeMultiplierSmallerThanOneExpEdPlPi+0x8c>
   107a0:	00040513          	mv	a0,s0
   107a4:	00048593          	mv	a1,s1
   107a8:	00090613          	mv	a2,s2
   107ac:	00c10693          	addi	a3,sp,12
   107b0:	e15ff0ef          	jal	105c4 <_ZN6tflite18QuantizeMultiplierEdPlPi.part.0>
   107b4:	00c12783          	lw	a5,12(sp)
   107b8:	02f04263          	bgtz	a5,107dc <_ZN6tflite35QuantizeMultiplierSmallerThanOneExpEdPlPi+0x8c>
   107bc:	02c12083          	lw	ra,44(sp)
   107c0:	02812403          	lw	s0,40(sp)
   107c4:	00f9a023          	sw	a5,0(s3)
   107c8:	02412483          	lw	s1,36(sp)
   107cc:	02012903          	lw	s2,32(sp)
   107d0:	01c12983          	lw	s3,28(sp)
   107d4:	03010113          	addi	sp,sp,48
   107d8:	00008067          	ret
   107dc:	770040ef          	jal	14f4c <abort>

000107e0 <_ZN6tflite12IntegerFrExpEdPi>:
   107e0:	800007b7          	lui	a5,0x80000
   107e4:	fff78793          	addi	a5,a5,-1 # 7fffffff <__BSS_END__+0x7ffe3257>
   107e8:	00b7f733          	and	a4,a5,a1
   107ec:	00a76733          	or	a4,a4,a0
   107f0:	00058813          	mv	a6,a1
   107f4:	08070a63          	beqz	a4,10888 <_ZN6tflite12IntegerFrExpEdPi+0xa8>
   107f8:	0145d693          	srli	a3,a1,0x14
   107fc:	7ff6f693          	andi	a3,a3,2047
   10800:	7ff00713          	li	a4,2047
   10804:	04e68a63          	beq	a3,a4,10858 <_ZN6tflite12IntegerFrExpEdPi+0x78>
   10808:	00a59593          	slli	a1,a1,0xa
   1080c:	01655713          	srli	a4,a0,0x16
   10810:	400007b7          	lui	a5,0x40000
   10814:	00a51513          	slli	a0,a0,0xa
   10818:	00e58733          	add	a4,a1,a4
   1081c:	fff78893          	addi	a7,a5,-1 # 3fffffff <__BSS_END__+0x3ffe3257>
   10820:	00a55513          	srli	a0,a0,0xa
   10824:	002005b7          	lui	a1,0x200
   10828:	c0268693          	addi	a3,a3,-1022
   1082c:	01177733          	and	a4,a4,a7
   10830:	06a5e663          	bltu	a1,a0,1089c <_ZN6tflite12IntegerFrExpEdPi+0xbc>
   10834:	00f70533          	add	a0,a4,a5
   10838:	00e535b3          	sltu	a1,a0,a4
   1083c:	00085a63          	bgez	a6,10850 <_ZN6tflite12IntegerFrExpEdPi+0x70>
   10840:	00a037b3          	snez	a5,a0
   10844:	40b005b3          	neg	a1,a1
   10848:	40f585b3          	sub	a1,a1,a5
   1084c:	40a00533          	neg	a0,a0
   10850:	00d62023          	sw	a3,0(a2)
   10854:	00008067          	ret
   10858:	ffc00737          	lui	a4,0xffc00
   1085c:	00c59693          	slli	a3,a1,0xc
   10860:	00a77733          	and	a4,a4,a0
   10864:	00c6d693          	srli	a3,a3,0xc
   10868:	00d76733          	or	a4,a4,a3
   1086c:	04071263          	bnez	a4,108b0 <_ZN6tflite12IntegerFrExpEdPi+0xd0>
   10870:	41f5d513          	srai	a0,a1,0x1f
   10874:	00078693          	mv	a3,a5
   10878:	00f545b3          	xor	a1,a0,a5
   1087c:	00d62023          	sw	a3,0(a2)
   10880:	fff54513          	not	a0,a0
   10884:	00008067          	ret
   10888:	00000693          	li	a3,0
   1088c:	00000513          	li	a0,0
   10890:	00000593          	li	a1,0
   10894:	00d62023          	sw	a3,0(a2)
   10898:	00008067          	ret
   1089c:	40000537          	lui	a0,0x40000
   108a0:	00150513          	addi	a0,a0,1 # 40000001 <__BSS_END__+0x3ffe3259>
   108a4:	00a70533          	add	a0,a4,a0
   108a8:	00e535b3          	sltu	a1,a0,a4
   108ac:	f91ff06f          	j	1083c <_ZN6tflite12IntegerFrExpEdPi+0x5c>
   108b0:	00078693          	mv	a3,a5
   108b4:	00000513          	li	a0,0
   108b8:	00000593          	li	a1,0
   108bc:	f95ff06f          	j	10850 <_ZN6tflite12IntegerFrExpEdPi+0x70>

000108c0 <_ZN6tflite26DoubleFromFractionAndShiftExi>:
   108c0:	800007b7          	lui	a5,0x80000
   108c4:	fff78793          	addi	a5,a5,-1 # 7fffffff <__BSS_END__+0x7ffe3257>
   108c8:	10f60463          	beq	a2,a5,109d0 <_ZN6tflite26DoubleFromFractionAndShiftExi+0x110>
   108cc:	00b566b3          	or	a3,a0,a1
   108d0:	00000713          	li	a4,0
   108d4:	00000793          	li	a5,0
   108d8:	0a068c63          	beqz	a3,10990 <_ZN6tflite26DoubleFromFractionAndShiftExi+0xd0>
   108dc:	41f5d713          	srai	a4,a1,0x1f
   108e0:	00a74533          	xor	a0,a4,a0
   108e4:	40e506b3          	sub	a3,a0,a4
   108e8:	00b747b3          	xor	a5,a4,a1
   108ec:	00d53533          	sltu	a0,a0,a3
   108f0:	40e787b3          	sub	a5,a5,a4
   108f4:	40a787b3          	sub	a5,a5,a0
   108f8:	fff60613          	addi	a2,a2,-1
   108fc:	00068513          	mv	a0,a3
   10900:	41f65713          	srai	a4,a2,0x1f
   10904:	0af04263          	bgtz	a5,109a8 <_ZN6tflite26DoubleFromFractionAndShiftExi+0xe8>
   10908:	12078863          	beqz	a5,10a38 <_ZN6tflite26DoubleFromFractionAndShiftExi+0x178>
   1090c:	01f55693          	srli	a3,a0,0x1f
   10910:	00179793          	slli	a5,a5,0x1
   10914:	00f687b3          	add	a5,a3,a5
   10918:	00163693          	seqz	a3,a2
   1091c:	00151513          	slli	a0,a0,0x1
   10920:	40d70733          	sub	a4,a4,a3
   10924:	fff60613          	addi	a2,a2,-1
   10928:	00f04863          	bgtz	a5,10938 <_ZN6tflite26DoubleFromFractionAndShiftExi+0x78>
   1092c:	fe0790e3          	bnez	a5,1090c <_ZN6tflite26DoubleFromFractionAndShiftExi+0x4c>
   10930:	400006b7          	lui	a3,0x40000
   10934:	fcd56ce3          	bltu	a0,a3,1090c <_ZN6tflite26DoubleFromFractionAndShiftExi+0x4c>
   10938:	0ce05e63          	blez	a4,10a14 <_ZN6tflite26DoubleFromFractionAndShiftExi+0x154>
   1093c:	3ff00613          	li	a2,1023
   10940:	00000713          	li	a4,0
   10944:	fff00693          	li	a3,-1
   10948:	0ad74863          	blt	a4,a3,109f8 <_ZN6tflite26DoubleFromFractionAndShiftExi+0x138>
   1094c:	0ad70263          	beq	a4,a3,109f0 <_ZN6tflite26DoubleFromFractionAndShiftExi+0x130>
   10950:	c0000737          	lui	a4,0xc0000
   10954:	00e50733          	add	a4,a0,a4
   10958:	fff78793          	addi	a5,a5,-1
   1095c:	00a73533          	sltu	a0,a4,a0
   10960:	00f50533          	add	a0,a0,a5
   10964:	01651513          	slli	a0,a0,0x16
   10968:	00a75793          	srli	a5,a4,0xa
   1096c:	00a78533          	add	a0,a5,a0
   10970:	800007b7          	lui	a5,0x80000
   10974:	00f5f5b3          	and	a1,a1,a5
   10978:	3ff60613          	addi	a2,a2,1023
   1097c:	00b56533          	or	a0,a0,a1
   10980:	01461613          	slli	a2,a2,0x14
   10984:	00c567b3          	or	a5,a0,a2
   10988:	01671513          	slli	a0,a4,0x16
   1098c:	00050713          	mv	a4,a0
   10990:	00070513          	mv	a0,a4
   10994:	00078593          	mv	a1,a5
   10998:	00008067          	ret
   1099c:	800006b7          	lui	a3,0x80000
   109a0:	f8079ce3          	bnez	a5,10938 <_ZN6tflite26DoubleFromFractionAndShiftExi+0x78>
   109a4:	f8a6fae3          	bgeu	a3,a0,10938 <_ZN6tflite26DoubleFromFractionAndShiftExi+0x78>
   109a8:	00160693          	addi	a3,a2,1
   109ac:	01f79813          	slli	a6,a5,0x1f
   109b0:	00c6b633          	sltu	a2,a3,a2
   109b4:	00155513          	srli	a0,a0,0x1
   109b8:	4017d793          	srai	a5,a5,0x1
   109bc:	00e60733          	add	a4,a2,a4
   109c0:	00a80533          	add	a0,a6,a0
   109c4:	00068613          	mv	a2,a3
   109c8:	fef040e3          	bgtz	a5,109a8 <_ZN6tflite26DoubleFromFractionAndShiftExi+0xe8>
   109cc:	fd1ff06f          	j	1099c <_ZN6tflite26DoubleFromFractionAndShiftExi+0xdc>
   109d0:	00b567b3          	or	a5,a0,a1
   109d4:	02078663          	beqz	a5,10a00 <_ZN6tflite26DoubleFromFractionAndShiftExi+0x140>
   109d8:	04b05663          	blez	a1,10a24 <_ZN6tflite26DoubleFromFractionAndShiftExi+0x164>
   109dc:	ee01a703          	lw	a4,-288(gp) # 1c9d0 <__SDATA_BEGIN__+0x18>
   109e0:	ee41a783          	lw	a5,-284(gp) # 1c9d4 <__SDATA_BEGIN__+0x1c>
   109e4:	00070513          	mv	a0,a4
   109e8:	00078593          	mv	a1,a5
   109ec:	00008067          	ret
   109f0:	c0100713          	li	a4,-1023
   109f4:	f4e67ee3          	bgeu	a2,a4,10950 <_ZN6tflite26DoubleFromFractionAndShiftExi+0x90>
   109f8:	c0100613          	li	a2,-1023
   109fc:	f55ff06f          	j	10950 <_ZN6tflite26DoubleFromFractionAndShiftExi+0x90>
   10a00:	ed81a703          	lw	a4,-296(gp) # 1c9c8 <__SDATA_BEGIN__+0x10>
   10a04:	edc1a783          	lw	a5,-292(gp) # 1c9cc <__SDATA_BEGIN__+0x14>
   10a08:	00070513          	mv	a0,a4
   10a0c:	00078593          	mv	a1,a5
   10a10:	00008067          	ret
   10a14:	f20718e3          	bnez	a4,10944 <_ZN6tflite26DoubleFromFractionAndShiftExi+0x84>
   10a18:	3ff00693          	li	a3,1023
   10a1c:	f2c6f4e3          	bgeu	a3,a2,10944 <_ZN6tflite26DoubleFromFractionAndShiftExi+0x84>
   10a20:	f1dff06f          	j	1093c <_ZN6tflite26DoubleFromFractionAndShiftExi+0x7c>
   10a24:	00059463          	bnez	a1,10a2c <_ZN6tflite26DoubleFromFractionAndShiftExi+0x16c>
   10a28:	fa051ae3          	bnez	a0,109dc <_ZN6tflite26DoubleFromFractionAndShiftExi+0x11c>
   10a2c:	ee81a703          	lw	a4,-280(gp) # 1c9d8 <__SDATA_BEGIN__+0x20>
   10a30:	eec1a783          	lw	a5,-276(gp) # 1c9dc <__SDATA_BEGIN__+0x24>
   10a34:	f5dff06f          	j	10990 <_ZN6tflite26DoubleFromFractionAndShiftExi+0xd0>
   10a38:	40000837          	lui	a6,0x40000
   10a3c:	ed06e8e3          	bltu	a3,a6,1090c <_ZN6tflite26DoubleFromFractionAndShiftExi+0x4c>
   10a40:	80000837          	lui	a6,0x80000
   10a44:	f6d862e3          	bltu	a6,a3,109a8 <_ZN6tflite26DoubleFromFractionAndShiftExi+0xe8>
   10a48:	ef1ff06f          	j	10938 <_ZN6tflite26DoubleFromFractionAndShiftExi+0x78>

00010a4c <_ZN6tflite21IntegerDoubleMultiplyEdd>:
   10a4c:	80000737          	lui	a4,0x80000
   10a50:	fff70713          	addi	a4,a4,-1 # 7fffffff <__BSS_END__+0x7ffe3257>
   10a54:	00b777b3          	and	a5,a4,a1
   10a58:	00a7e7b3          	or	a5,a5,a0
   10a5c:	00d77e33          	and	t3,a4,a3
   10a60:	00068313          	mv	t1,a3
   10a64:	10078e63          	beqz	a5,10b80 <_ZN6tflite21IntegerDoubleMultiplyEdd+0x134>
   10a68:	0145d793          	srli	a5,a1,0x14
   10a6c:	7ff7f793          	andi	a5,a5,2047
   10a70:	7ff00813          	li	a6,2047
   10a74:	0d078e63          	beq	a5,a6,10b50 <_ZN6tflite21IntegerDoubleMultiplyEdd+0x104>
   10a78:	00a59713          	slli	a4,a1,0xa
   10a7c:	01655893          	srli	a7,a0,0x16
   10a80:	00a51813          	slli	a6,a0,0xa
   10a84:	40000537          	lui	a0,0x40000
   10a88:	011708b3          	add	a7,a4,a7
   10a8c:	00a85813          	srli	a6,a6,0xa
   10a90:	fff50713          	addi	a4,a0,-1 # 3fffffff <__BSS_END__+0x3ffe3257>
   10a94:	00200eb7          	lui	t4,0x200
   10a98:	00e8f8b3          	and	a7,a7,a4
   10a9c:	c0278713          	addi	a4,a5,-1022 # 7ffffc02 <__BSS_END__+0x7ffe2e5a>
   10aa0:	110ee863          	bltu	t4,a6,10bb0 <_ZN6tflite21IntegerDoubleMultiplyEdd+0x164>
   10aa4:	00a88833          	add	a6,a7,a0
   10aa8:	011838b3          	sltu	a7,a6,a7
   10aac:	00ce6e33          	or	t3,t3,a2
   10ab0:	1005cc63          	bltz	a1,10bc8 <_ZN6tflite21IntegerDoubleMultiplyEdd+0x17c>
   10ab4:	120e0663          	beqz	t3,10be0 <_ZN6tflite21IntegerDoubleMultiplyEdd+0x194>
   10ab8:	0146d793          	srli	a5,a3,0x14
   10abc:	7ff7f793          	andi	a5,a5,2047
   10ac0:	7ff00593          	li	a1,2047
   10ac4:	0eb78063          	beq	a5,a1,10ba4 <_ZN6tflite21IntegerDoubleMultiplyEdd+0x158>
   10ac8:	00a69513          	slli	a0,a3,0xa
   10acc:	01665593          	srli	a1,a2,0x16
   10ad0:	00b505b3          	add	a1,a0,a1
   10ad4:	fe010113          	addi	sp,sp,-32
   10ad8:	00a61613          	slli	a2,a2,0xa
   10adc:	40000537          	lui	a0,0x40000
   10ae0:	fff50e13          	addi	t3,a0,-1 # 3fffffff <__BSS_END__+0x3ffe3257>
   10ae4:	00112e23          	sw	ra,28(sp)
   10ae8:	00a65613          	srli	a2,a2,0xa
   10aec:	002006b7          	lui	a3,0x200
   10af0:	c0278793          	addi	a5,a5,-1022
   10af4:	01c5f5b3          	and	a1,a1,t3
   10af8:	00c6f663          	bgeu	a3,a2,10b04 <_ZN6tflite21IntegerDoubleMultiplyEdd+0xb8>
   10afc:	40000537          	lui	a0,0x40000
   10b00:	00150513          	addi	a0,a0,1 # 40000001 <__BSS_END__+0x3ffe3259>
   10b04:	00a58533          	add	a0,a1,a0
   10b08:	800006b7          	lui	a3,0x80000
   10b0c:	00b535b3          	sltu	a1,a0,a1
   10b10:	fff68693          	addi	a3,a3,-1 # 7fffffff <__BSS_END__+0x7ffe3257>
   10b14:	10034263          	bltz	t1,10c18 <_ZN6tflite21IntegerDoubleMultiplyEdd+0x1cc>
   10b18:	0cd70e63          	beq	a4,a3,10bf4 <_ZN6tflite21IntegerDoubleMultiplyEdd+0x1a8>
   10b1c:	00e787b3          	add	a5,a5,a4
   10b20:	00080613          	mv	a2,a6
   10b24:	00088693          	mv	a3,a7
   10b28:	00178793          	addi	a5,a5,1
   10b2c:	00f12623          	sw	a5,12(sp)
   10b30:	218040ef          	jal	14d48 <__muldi3>
   10b34:	00c12783          	lw	a5,12(sp)
   10b38:	01c12083          	lw	ra,28(sp)
   10b3c:	00058513          	mv	a0,a1
   10b40:	41f5d593          	srai	a1,a1,0x1f
   10b44:	00078613          	mv	a2,a5
   10b48:	02010113          	addi	sp,sp,32
   10b4c:	d75ff06f          	j	108c0 <_ZN6tflite26DoubleFromFractionAndShiftExi>
   10b50:	ffc007b7          	lui	a5,0xffc00
   10b54:	00c59813          	slli	a6,a1,0xc
   10b58:	00a7f7b3          	and	a5,a5,a0
   10b5c:	00c85813          	srli	a6,a6,0xc
   10b60:	0107e7b3          	or	a5,a5,a6
   10b64:	00ce6e33          	or	t3,t3,a2
   10b68:	0a079063          	bnez	a5,10c08 <_ZN6tflite21IntegerDoubleMultiplyEdd+0x1bc>
   10b6c:	020e0c63          	beqz	t3,10ba4 <_ZN6tflite21IntegerDoubleMultiplyEdd+0x158>
   10b70:	41f5d813          	srai	a6,a1,0x1f
   10b74:	00e848b3          	xor	a7,a6,a4
   10b78:	fff84813          	not	a6,a6
   10b7c:	f3dff06f          	j	10ab8 <_ZN6tflite21IntegerDoubleMultiplyEdd+0x6c>
   10b80:	00ce6e33          	or	t3,t3,a2
   10b84:	0a0e0c63          	beqz	t3,10c3c <_ZN6tflite21IntegerDoubleMultiplyEdd+0x1f0>
   10b88:	0146d793          	srli	a5,a3,0x14
   10b8c:	7ff7f793          	andi	a5,a5,2047
   10b90:	7ff00593          	li	a1,2047
   10b94:	00000713          	li	a4,0
   10b98:	00000813          	li	a6,0
   10b9c:	00000893          	li	a7,0
   10ba0:	f2b794e3          	bne	a5,a1,10ac8 <_ZN6tflite21IntegerDoubleMultiplyEdd+0x7c>
   10ba4:	ed81a503          	lw	a0,-296(gp) # 1c9c8 <__SDATA_BEGIN__+0x10>
   10ba8:	edc1a583          	lw	a1,-292(gp) # 1c9cc <__SDATA_BEGIN__+0x14>
   10bac:	00008067          	ret
   10bb0:	40000837          	lui	a6,0x40000
   10bb4:	00180813          	addi	a6,a6,1 # 40000001 <__BSS_END__+0x3ffe3259>
   10bb8:	01088833          	add	a6,a7,a6
   10bbc:	011838b3          	sltu	a7,a6,a7
   10bc0:	00ce6e33          	or	t3,t3,a2
   10bc4:	ee05d8e3          	bgez	a1,10ab4 <_ZN6tflite21IntegerDoubleMultiplyEdd+0x68>
   10bc8:	000e0c63          	beqz	t3,10be0 <_ZN6tflite21IntegerDoubleMultiplyEdd+0x194>
   10bcc:	010037b3          	snez	a5,a6
   10bd0:	411008b3          	neg	a7,a7
   10bd4:	40f888b3          	sub	a7,a7,a5
   10bd8:	41000833          	neg	a6,a6
   10bdc:	eddff06f          	j	10ab8 <_ZN6tflite21IntegerDoubleMultiplyEdd+0x6c>
   10be0:	c0378793          	addi	a5,a5,-1021 # ffbffc03 <__BSS_END__+0xffbe2e5b>
   10be4:	00000513          	li	a0,0
   10be8:	00000593          	li	a1,0
   10bec:	00078613          	mv	a2,a5
   10bf0:	cd1ff06f          	j	108c0 <_ZN6tflite26DoubleFromFractionAndShiftExi>
   10bf4:	01c12083          	lw	ra,28(sp)
   10bf8:	ed81a503          	lw	a0,-296(gp) # 1c9c8 <__SDATA_BEGIN__+0x10>
   10bfc:	edc1a583          	lw	a1,-292(gp) # 1c9cc <__SDATA_BEGIN__+0x14>
   10c00:	02010113          	addi	sp,sp,32
   10c04:	00008067          	ret
   10c08:	f80e0ee3          	beqz	t3,10ba4 <_ZN6tflite21IntegerDoubleMultiplyEdd+0x158>
   10c0c:	00000813          	li	a6,0
   10c10:	00000893          	li	a7,0
   10c14:	ea5ff06f          	j	10ab8 <_ZN6tflite21IntegerDoubleMultiplyEdd+0x6c>
   10c18:	fcd70ee3          	beq	a4,a3,10bf4 <_ZN6tflite21IntegerDoubleMultiplyEdd+0x1a8>
   10c1c:	00a03333          	snez	t1,a0
   10c20:	40b005b3          	neg	a1,a1
   10c24:	00e787b3          	add	a5,a5,a4
   10c28:	00080613          	mv	a2,a6
   10c2c:	00088693          	mv	a3,a7
   10c30:	406585b3          	sub	a1,a1,t1
   10c34:	40a00533          	neg	a0,a0
   10c38:	ef1ff06f          	j	10b28 <_ZN6tflite21IntegerDoubleMultiplyEdd+0xdc>
   10c3c:	00100793          	li	a5,1
   10c40:	00000513          	li	a0,0
   10c44:	00000593          	li	a1,0
   10c48:	00078613          	mv	a2,a5
   10c4c:	c75ff06f          	j	108c0 <_ZN6tflite26DoubleFromFractionAndShiftExi>

00010c50 <_ZN6tflite20IntegerDoubleCompareEdd>:
   10c50:	800007b7          	lui	a5,0x80000
   10c54:	fff78793          	addi	a5,a5,-1 # 7fffffff <__BSS_END__+0x7ffe3257>
   10c58:	00b7f733          	and	a4,a5,a1
   10c5c:	00a76733          	or	a4,a4,a0
   10c60:	00d7fe33          	and	t3,a5,a3
   10c64:	00068893          	mv	a7,a3
   10c68:	0e070e63          	beqz	a4,10d64 <_ZN6tflite20IntegerDoubleCompareEdd+0x114>
   10c6c:	0145d713          	srli	a4,a1,0x14
   10c70:	7ff77713          	andi	a4,a4,2047
   10c74:	7ff00813          	li	a6,2047
   10c78:	0b070c63          	beq	a4,a6,10d30 <_ZN6tflite20IntegerDoubleCompareEdd+0xe0>
   10c7c:	00a59793          	slli	a5,a1,0xa
   10c80:	01655813          	srli	a6,a0,0x16
   10c84:	40000337          	lui	t1,0x40000
   10c88:	00a51513          	slli	a0,a0,0xa
   10c8c:	01078833          	add	a6,a5,a6
   10c90:	fff30f13          	addi	t5,t1,-1 # 3fffffff <__BSS_END__+0x3ffe3257>
   10c94:	00a55513          	srli	a0,a0,0xa
   10c98:	00200eb7          	lui	t4,0x200
   10c9c:	c0270793          	addi	a5,a4,-1022
   10ca0:	01e87833          	and	a6,a6,t5
   10ca4:	00aef663          	bgeu	t4,a0,10cb0 <_ZN6tflite20IntegerDoubleCompareEdd+0x60>
   10ca8:	40000337          	lui	t1,0x40000
   10cac:	00130313          	addi	t1,t1,1 # 40000001 <__BSS_END__+0x3ffe3259>
   10cb0:	00680333          	add	t1,a6,t1
   10cb4:	01033833          	sltu	a6,t1,a6
   10cb8:	00ce6733          	or	a4,t3,a2
   10cbc:	1005cc63          	bltz	a1,10dd4 <_ZN6tflite20IntegerDoubleCompareEdd+0x184>
   10cc0:	0c070063          	beqz	a4,10d80 <_ZN6tflite20IntegerDoubleCompareEdd+0x130>
   10cc4:	0146de13          	srli	t3,a3,0x14
   10cc8:	7ffe7e13          	andi	t3,t3,2047
   10ccc:	7ff00713          	li	a4,2047
   10cd0:	00100513          	li	a0,1
   10cd4:	04ee0c63          	beq	t3,a4,10d2c <_ZN6tflite20IntegerDoubleCompareEdd+0xdc>
   10cd8:	00a69693          	slli	a3,a3,0xa
   10cdc:	01665593          	srli	a1,a2,0x16
   10ce0:	40000737          	lui	a4,0x40000
   10ce4:	00a61613          	slli	a2,a2,0xa
   10ce8:	00b685b3          	add	a1,a3,a1
   10cec:	fff70513          	addi	a0,a4,-1 # 3fffffff <__BSS_END__+0x3ffe3257>
   10cf0:	00a65613          	srli	a2,a2,0xa
   10cf4:	002006b7          	lui	a3,0x200
   10cf8:	00a5f5b3          	and	a1,a1,a0
   10cfc:	00c6f663          	bgeu	a3,a2,10d08 <_ZN6tflite20IntegerDoubleCompareEdd+0xb8>
   10d00:	40000737          	lui	a4,0x40000
   10d04:	00170713          	addi	a4,a4,1 # 40000001 <__BSS_END__+0x3ffe3259>
   10d08:	00e58733          	add	a4,a1,a4
   10d0c:	800006b7          	lui	a3,0x80000
   10d10:	00b735b3          	sltu	a1,a4,a1
   10d14:	fff68693          	addi	a3,a3,-1 # 7fffffff <__BSS_END__+0x7ffe3257>
   10d18:	0c08cc63          	bltz	a7,10df0 <_ZN6tflite20IntegerDoubleCompareEdd+0x1a0>
   10d1c:	0ed78c63          	beq	a5,a3,10e14 <_ZN6tflite20IntegerDoubleCompareEdd+0x1c4>
   10d20:	c02e0e13          	addi	t3,t3,-1022
   10d24:	fff00513          	li	a0,-1
   10d28:	09c7dc63          	bge	a5,t3,10dc0 <_ZN6tflite20IntegerDoubleCompareEdd+0x170>
   10d2c:	00008067          	ret
   10d30:	ffc00737          	lui	a4,0xffc00
   10d34:	00c59813          	slli	a6,a1,0xc
   10d38:	00a77733          	and	a4,a4,a0
   10d3c:	00c85813          	srli	a6,a6,0xc
   10d40:	01076733          	or	a4,a4,a6
   10d44:	06071263          	bnez	a4,10da8 <_ZN6tflite20IntegerDoubleCompareEdd+0x158>
   10d48:	00ce6733          	or	a4,t3,a2
   10d4c:	00100513          	li	a0,1
   10d50:	fc070ee3          	beqz	a4,10d2c <_ZN6tflite20IntegerDoubleCompareEdd+0xdc>
   10d54:	41f5d313          	srai	t1,a1,0x1f
   10d58:	00f34833          	xor	a6,t1,a5
   10d5c:	fff34313          	not	t1,t1
   10d60:	f65ff06f          	j	10cc4 <_ZN6tflite20IntegerDoubleCompareEdd+0x74>
   10d64:	00ce6733          	or	a4,t3,a2
   10d68:	00000513          	li	a0,0
   10d6c:	fc0700e3          	beqz	a4,10d2c <_ZN6tflite20IntegerDoubleCompareEdd+0xdc>
   10d70:	00000793          	li	a5,0
   10d74:	00000313          	li	t1,0
   10d78:	00000813          	li	a6,0
   10d7c:	f49ff06f          	j	10cc4 <_ZN6tflite20IntegerDoubleCompareEdd+0x74>
   10d80:	fff00513          	li	a0,-1
   10d84:	fa07c4e3          	bltz	a5,10d2c <_ZN6tflite20IntegerDoubleCompareEdd+0xdc>
   10d88:	00100513          	li	a0,1
   10d8c:	00000593          	li	a1,0
   10d90:	f8079ee3          	bnez	a5,10d2c <_ZN6tflite20IntegerDoubleCompareEdd+0xdc>
   10d94:	00100513          	li	a0,1
   10d98:	f905cae3          	blt	a1,a6,10d2c <_ZN6tflite20IntegerDoubleCompareEdd+0xdc>
   10d9c:	08b80863          	beq	a6,a1,10e2c <_ZN6tflite20IntegerDoubleCompareEdd+0x1dc>
   10da0:	00000513          	li	a0,0
   10da4:	00008067          	ret
   10da8:	00ce6733          	or	a4,t3,a2
   10dac:	00100513          	li	a0,1
   10db0:	f6070ee3          	beqz	a4,10d2c <_ZN6tflite20IntegerDoubleCompareEdd+0xdc>
   10db4:	00000313          	li	t1,0
   10db8:	00000813          	li	a6,0
   10dbc:	f09ff06f          	j	10cc4 <_ZN6tflite20IntegerDoubleCompareEdd+0x74>
   10dc0:	00100513          	li	a0,1
   10dc4:	f6fe44e3          	blt	t3,a5,10d2c <_ZN6tflite20IntegerDoubleCompareEdd+0xdc>
   10dc8:	04b85a63          	bge	a6,a1,10e1c <_ZN6tflite20IntegerDoubleCompareEdd+0x1cc>
   10dcc:	fff00513          	li	a0,-1
   10dd0:	00008067          	ret
   10dd4:	fff00513          	li	a0,-1
   10dd8:	f4070ae3          	beqz	a4,10d2c <_ZN6tflite20IntegerDoubleCompareEdd+0xdc>
   10ddc:	00603733          	snez	a4,t1
   10de0:	41000833          	neg	a6,a6
   10de4:	40e80833          	sub	a6,a6,a4
   10de8:	40600333          	neg	t1,t1
   10dec:	ed9ff06f          	j	10cc4 <_ZN6tflite20IntegerDoubleCompareEdd+0x74>
   10df0:	02d78263          	beq	a5,a3,10e14 <_ZN6tflite20IntegerDoubleCompareEdd+0x1c4>
   10df4:	010366b3          	or	a3,t1,a6
   10df8:	00100513          	li	a0,1
   10dfc:	f20688e3          	beqz	a3,10d2c <_ZN6tflite20IntegerDoubleCompareEdd+0xdc>
   10e00:	00e036b3          	snez	a3,a4
   10e04:	40b005b3          	neg	a1,a1
   10e08:	40d585b3          	sub	a1,a1,a3
   10e0c:	40e00733          	neg	a4,a4
   10e10:	f11ff06f          	j	10d20 <_ZN6tflite20IntegerDoubleCompareEdd+0xd0>
   10e14:	00100513          	li	a0,1
   10e18:	00008067          	ret
   10e1c:	f7059ce3          	bne	a1,a6,10d94 <_ZN6tflite20IntegerDoubleCompareEdd+0x144>
   10e20:	f6e37ae3          	bgeu	t1,a4,10d94 <_ZN6tflite20IntegerDoubleCompareEdd+0x144>
   10e24:	fff00513          	li	a0,-1
   10e28:	00008067          	ret
   10e2c:	f6677ae3          	bgeu	a4,t1,10da0 <_ZN6tflite20IntegerDoubleCompareEdd+0x150>
   10e30:	00008067          	ret

00010e34 <_ZN6tflite24PreprocessSoftmaxScalingEddiPlPi>:
   10e34:	fd010113          	addi	sp,sp,-48
   10e38:	800008b7          	lui	a7,0x80000
   10e3c:	01312e23          	sw	s3,28(sp)
   10e40:	00050993          	mv	s3,a0
   10e44:	00e8d533          	srl	a0,a7,a4
   10e48:	02112623          	sw	ra,44(sp)
   10e4c:	02812423          	sw	s0,40(sp)
   10e50:	02912223          	sw	s1,36(sp)
   10e54:	03212023          	sw	s2,32(sp)
   10e58:	01412c23          	sw	s4,24(sp)
   10e5c:	01512a23          	sw	s5,20(sp)
   10e60:	00058a13          	mv	s4,a1
   10e64:	00078a93          	mv	s5,a5
   10e68:	00080913          	mv	s2,a6
   10e6c:	00c12423          	sw	a2,8(sp)
   10e70:	00d12623          	sw	a3,12(sp)
   10e74:	06d020ef          	jal	136e0 <__floatsidf>
   10e78:	00812603          	lw	a2,8(sp)
   10e7c:	00c12683          	lw	a3,12(sp)
   10e80:	00050413          	mv	s0,a0
   10e84:	00058493          	mv	s1,a1
   10e88:	00098513          	mv	a0,s3
   10e8c:	000a0593          	mv	a1,s4
   10e90:	138020ef          	jal	12fc8 <__muldf3>
   10e94:	00050613          	mv	a2,a0
   10e98:	00058693          	mv	a3,a1
   10e9c:	00040513          	mv	a0,s0
   10ea0:	00048593          	mv	a1,s1
   10ea4:	124020ef          	jal	12fc8 <__muldf3>
   10ea8:	ef41a403          	lw	s0,-268(gp) # 1c9e4 <__SDATA_BEGIN__+0x2c>
   10eac:	ef01a483          	lw	s1,-272(gp) # 1c9e0 <__SDATA_BEGIN__+0x28>
   10eb0:	00050a13          	mv	s4,a0
   10eb4:	00040693          	mv	a3,s0
   10eb8:	00048613          	mv	a2,s1
   10ebc:	00058993          	mv	s3,a1
   10ec0:	759010ef          	jal	12e18 <__gedf2>
   10ec4:	00a04663          	bgtz	a0,10ed0 <_ZN6tflite24PreprocessSoftmaxScalingEddiPlPi+0x9c>
   10ec8:	000a0493          	mv	s1,s4
   10ecc:	00098413          	mv	s0,s3
   10ed0:	ed01a603          	lw	a2,-304(gp) # 1c9c0 <__SDATA_BEGIN__+0x8>
   10ed4:	ed41a683          	lw	a3,-300(gp) # 1c9c4 <__SDATA_BEGIN__+0xc>
   10ed8:	00048513          	mv	a0,s1
   10edc:	00040593          	mv	a1,s0
   10ee0:	739010ef          	jal	12e18 <__gedf2>
   10ee4:	04a05263          	blez	a0,10f28 <_ZN6tflite24PreprocessSoftmaxScalingEddiPlPi+0xf4>
   10ee8:	00048513          	mv	a0,s1
   10eec:	00040593          	mv	a1,s0
   10ef0:	000a8613          	mv	a2,s5
   10ef4:	00090693          	mv	a3,s2
   10ef8:	eccff0ef          	jal	105c4 <_ZN6tflite18QuantizeMultiplierEdPlPi.part.0>
   10efc:	00092783          	lw	a5,0(s2)
   10f00:	0207c463          	bltz	a5,10f28 <_ZN6tflite24PreprocessSoftmaxScalingEddiPlPi+0xf4>
   10f04:	02c12083          	lw	ra,44(sp)
   10f08:	02812403          	lw	s0,40(sp)
   10f0c:	02412483          	lw	s1,36(sp)
   10f10:	02012903          	lw	s2,32(sp)
   10f14:	01c12983          	lw	s3,28(sp)
   10f18:	01812a03          	lw	s4,24(sp)
   10f1c:	01412a83          	lw	s5,20(sp)
   10f20:	03010113          	addi	sp,sp,48
   10f24:	00008067          	ret
   10f28:	024040ef          	jal	14f4c <abort>

00010f2c <_ZN6tflite30PreprocessLogSoftmaxScalingExpEddiPlPiS0_S1_>:
   10f2c:	fb010113          	addi	sp,sp,-80
   10f30:	80000337          	lui	t1,0x80000
   10f34:	03612823          	sw	s6,48(sp)
   10f38:	00050b13          	mv	s6,a0
   10f3c:	00e35533          	srl	a0,t1,a4
   10f40:	04112623          	sw	ra,76(sp)
   10f44:	04812423          	sw	s0,72(sp)
   10f48:	04912223          	sw	s1,68(sp)
   10f4c:	05212023          	sw	s2,64(sp)
   10f50:	00078493          	mv	s1,a5
   10f54:	03312e23          	sw	s3,60(sp)
   10f58:	03412c23          	sw	s4,56(sp)
   10f5c:	03512a23          	sw	s5,52(sp)
   10f60:	03712623          	sw	s7,44(sp)
   10f64:	03812423          	sw	s8,40(sp)
   10f68:	00080913          	mv	s2,a6
   10f6c:	00088c13          	mv	s8,a7
   10f70:	00058b93          	mv	s7,a1
   10f74:	00c12423          	sw	a2,8(sp)
   10f78:	00d12623          	sw	a3,12(sp)
   10f7c:	764020ef          	jal	136e0 <__floatsidf>
   10f80:	00812603          	lw	a2,8(sp)
   10f84:	00c12683          	lw	a3,12(sp)
   10f88:	00050a13          	mv	s4,a0
   10f8c:	00058a93          	mv	s5,a1
   10f90:	000b0513          	mv	a0,s6
   10f94:	000b8593          	mv	a1,s7
   10f98:	030020ef          	jal	12fc8 <__muldf3>
   10f9c:	00050613          	mv	a2,a0
   10fa0:	00058693          	mv	a3,a1
   10fa4:	000a0513          	mv	a0,s4
   10fa8:	000a8593          	mv	a1,s5
   10fac:	01c020ef          	jal	12fc8 <__muldf3>
   10fb0:	ef41a403          	lw	s0,-268(gp) # 1c9e4 <__SDATA_BEGIN__+0x2c>
   10fb4:	ef01a983          	lw	s3,-272(gp) # 1c9e0 <__SDATA_BEGIN__+0x28>
   10fb8:	00050a93          	mv	s5,a0
   10fbc:	00040693          	mv	a3,s0
   10fc0:	00098613          	mv	a2,s3
   10fc4:	00058a13          	mv	s4,a1
   10fc8:	651010ef          	jal	12e18 <__gedf2>
   10fcc:	00a04663          	bgtz	a0,10fd8 <_ZN6tflite30PreprocessLogSoftmaxScalingExpEddiPlPiS0_S1_+0xac>
   10fd0:	000a8993          	mv	s3,s5
   10fd4:	000a0413          	mv	s0,s4
   10fd8:	ed01aa03          	lw	s4,-304(gp) # 1c9c0 <__SDATA_BEGIN__+0x8>
   10fdc:	ed41aa83          	lw	s5,-300(gp) # 1c9c4 <__SDATA_BEGIN__+0xc>
   10fe0:	00098513          	mv	a0,s3
   10fe4:	00040593          	mv	a1,s0
   10fe8:	000a0613          	mv	a2,s4
   10fec:	000a8693          	mv	a3,s5
   10ff0:	629010ef          	jal	12e18 <__gedf2>
   10ff4:	0ca05a63          	blez	a0,110c8 <_ZN6tflite30PreprocessLogSoftmaxScalingExpEddiPlPiS0_S1_+0x19c>
   10ff8:	00098513          	mv	a0,s3
   10ffc:	00040593          	mv	a1,s0
   11000:	00090693          	mv	a3,s2
   11004:	00048613          	mv	a2,s1
   11008:	dbcff0ef          	jal	105c4 <_ZN6tflite18QuantizeMultiplierEdPlPi.part.0>
   1100c:	00092783          	lw	a5,0(s2)
   11010:	0a07cc63          	bltz	a5,110c8 <_ZN6tflite30PreprocessLogSoftmaxScalingExpEddiPlPiS0_S1_+0x19c>
   11014:	80000537          	lui	a0,0x80000
   11018:	00f55533          	srl	a0,a0,a5
   1101c:	6c4020ef          	jal	136e0 <__floatsidf>
   11020:	00050913          	mv	s2,a0
   11024:	0004a503          	lw	a0,0(s1)
   11028:	00058993          	mv	s3,a1
   1102c:	6b4020ef          	jal	136e0 <__floatsidf>
   11030:	00050613          	mv	a2,a0
   11034:	00058693          	mv	a3,a1
   11038:	00090513          	mv	a0,s2
   1103c:	00098593          	mv	a1,s3
   11040:	590010ef          	jal	125d0 <__divdf3>
   11044:	000a0613          	mv	a2,s4
   11048:	000a8693          	mv	a3,s5
   1104c:	00050413          	mv	s0,a0
   11050:	00058493          	mv	s1,a1
   11054:	69d010ef          	jal	12ef0 <__ledf2>
   11058:	06055863          	bgez	a0,110c8 <_ZN6tflite30PreprocessLogSoftmaxScalingExpEddiPlPiS0_S1_+0x19c>
   1105c:	00000613          	li	a2,0
   11060:	00000693          	li	a3,0
   11064:	00040513          	mv	a0,s0
   11068:	00048593          	mv	a1,s1
   1106c:	5ad010ef          	jal	12e18 <__gedf2>
   11070:	04a05c63          	blez	a0,110c8 <_ZN6tflite30PreprocessLogSoftmaxScalingExpEddiPlPiS0_S1_+0x19c>
   11074:	00040513          	mv	a0,s0
   11078:	00048593          	mv	a1,s1
   1107c:	000c0613          	mv	a2,s8
   11080:	01c10693          	addi	a3,sp,28
   11084:	d40ff0ef          	jal	105c4 <_ZN6tflite18QuantizeMultiplierEdPlPi.part.0>
   11088:	01c12783          	lw	a5,28(sp)
   1108c:	02f04e63          	bgtz	a5,110c8 <_ZN6tflite30PreprocessLogSoftmaxScalingExpEddiPlPiS0_S1_+0x19c>
   11090:	05012703          	lw	a4,80(sp)
   11094:	04c12083          	lw	ra,76(sp)
   11098:	04812403          	lw	s0,72(sp)
   1109c:	00f72023          	sw	a5,0(a4) # ffc00000 <__BSS_END__+0xffbe3258>
   110a0:	04412483          	lw	s1,68(sp)
   110a4:	04012903          	lw	s2,64(sp)
   110a8:	03c12983          	lw	s3,60(sp)
   110ac:	03812a03          	lw	s4,56(sp)
   110b0:	03412a83          	lw	s5,52(sp)
   110b4:	03012b03          	lw	s6,48(sp)
   110b8:	02c12b83          	lw	s7,44(sp)
   110bc:	02812c03          	lw	s8,40(sp)
   110c0:	05010113          	addi	sp,sp,80
   110c4:	00008067          	ret
   110c8:	685030ef          	jal	14f4c <abort>

000110cc <_ZN6tflite20CalculateInputRadiusEiii>:
   110cc:	fd010113          	addi	sp,sp,-48
   110d0:	02812423          	sw	s0,40(sp)
   110d4:	00100413          	li	s0,1
   110d8:	02912223          	sw	s1,36(sp)
   110dc:	00050493          	mv	s1,a0
   110e0:	00a41533          	sll	a0,s0,a0
   110e4:	fff50513          	addi	a0,a0,-1 # 7fffffff <__BSS_END__+0x7ffe3257>
   110e8:	03212023          	sw	s2,32(sp)
   110ec:	01312e23          	sw	s3,28(sp)
   110f0:	01412c23          	sw	s4,24(sp)
   110f4:	00c12623          	sw	a2,12(sp)
   110f8:	02112623          	sw	ra,44(sp)
   110fc:	00058913          	mv	s2,a1
   11100:	5e0020ef          	jal	136e0 <__floatsidf>
   11104:	00c12603          	lw	a2,12(sp)
   11108:	00050993          	mv	s3,a0
   1110c:	00058a13          	mv	s4,a1
   11110:	40960633          	sub	a2,a2,s1
   11114:	fe060793          	addi	a5,a2,-32
   11118:	0807c063          	bltz	a5,11198 <_ZN6tflite20CalculateInputRadiusEiii+0xcc>
   1111c:	00f415b3          	sll	a1,s0,a5
   11120:	00000513          	li	a0,0
   11124:	720020ef          	jal	13844 <__floatdidf>
   11128:	00050613          	mv	a2,a0
   1112c:	00058693          	mv	a3,a1
   11130:	00098513          	mv	a0,s3
   11134:	000a0593          	mv	a1,s4
   11138:	691010ef          	jal	12fc8 <__muldf3>
   1113c:	fe090793          	addi	a5,s2,-32
   11140:	00050413          	mv	s0,a0
   11144:	00058493          	mv	s1,a1
   11148:	0407ce63          	bltz	a5,111a4 <_ZN6tflite20CalculateInputRadiusEiii+0xd8>
   1114c:	00100593          	li	a1,1
   11150:	00f595b3          	sll	a1,a1,a5
   11154:	00000513          	li	a0,0
   11158:	6ec020ef          	jal	13844 <__floatdidf>
   1115c:	00050613          	mv	a2,a0
   11160:	00058693          	mv	a3,a1
   11164:	00040513          	mv	a0,s0
   11168:	00048593          	mv	a1,s1
   1116c:	464010ef          	jal	125d0 <__divdf3>
   11170:	3ec000ef          	jal	1155c <floor>
   11174:	4f0020ef          	jal	13664 <__fixdfsi>
   11178:	02c12083          	lw	ra,44(sp)
   1117c:	02812403          	lw	s0,40(sp)
   11180:	02412483          	lw	s1,36(sp)
   11184:	02012903          	lw	s2,32(sp)
   11188:	01c12983          	lw	s3,28(sp)
   1118c:	01812a03          	lw	s4,24(sp)
   11190:	03010113          	addi	sp,sp,48
   11194:	00008067          	ret
   11198:	00c41533          	sll	a0,s0,a2
   1119c:	00000593          	li	a1,0
   111a0:	f85ff06f          	j	11124 <_ZN6tflite20CalculateInputRadiusEiii+0x58>
   111a4:	00100513          	li	a0,1
   111a8:	01251533          	sll	a0,a0,s2
   111ac:	00000593          	li	a1,0
   111b0:	fa9ff06f          	j	11158 <_ZN6tflite20CalculateInputRadiusEiii+0x8c>

000111b4 <_ZN6tflite22NudgeQuantizationRangeEffiiPfS0_S0_>:
   111b4:	fc010113          	addi	sp,sp,-64
   111b8:	03412423          	sw	s4,40(sp)
   111bc:	00050a13          	mv	s4,a0
   111c0:	00060513          	mv	a0,a2
   111c4:	02112e23          	sw	ra,60(sp)
   111c8:	00c12623          	sw	a2,12(sp)
   111cc:	02812c23          	sw	s0,56(sp)
   111d0:	02912a23          	sw	s1,52(sp)
   111d4:	03212823          	sw	s2,48(sp)
   111d8:	00058493          	mv	s1,a1
   111dc:	00068913          	mv	s2,a3
   111e0:	03312623          	sw	s3,44(sp)
   111e4:	03512223          	sw	s5,36(sp)
   111e8:	00080993          	mv	s3,a6
   111ec:	00070a93          	mv	s5,a4
   111f0:	03612023          	sw	s6,32(sp)
   111f4:	01712e23          	sw	s7,28(sp)
   111f8:	00078b13          	mv	s6,a5
   111fc:	00068b93          	mv	s7,a3
   11200:	219030ef          	jal	14c18 <__floatsisf>
   11204:	00050413          	mv	s0,a0
   11208:	00090513          	mv	a0,s2
   1120c:	20d030ef          	jal	14c18 <__floatsisf>
   11210:	000a0593          	mv	a1,s4
   11214:	00050913          	mv	s2,a0
   11218:	00048513          	mv	a0,s1
   1121c:	49c030ef          	jal	146b8 <__subsf3>
   11220:	00050493          	mv	s1,a0
   11224:	00040593          	mv	a1,s0
   11228:	00090513          	mv	a0,s2
   1122c:	48c030ef          	jal	146b8 <__subsf3>
   11230:	00050593          	mv	a1,a0
   11234:	00048513          	mv	a0,s1
   11238:	429020ef          	jal	13e60 <__divsf3>
   1123c:	00050493          	mv	s1,a0
   11240:	00a9a023          	sw	a0,0(s3)
   11244:	00048593          	mv	a1,s1
   11248:	000a0513          	mv	a0,s4
   1124c:	415020ef          	jal	13e60 <__divsf3>
   11250:	00050593          	mv	a1,a0
   11254:	00040513          	mv	a0,s0
   11258:	460030ef          	jal	146b8 <__subsf3>
   1125c:	00050a13          	mv	s4,a0
   11260:	00050593          	mv	a1,a0
   11264:	00040513          	mv	a0,s0
   11268:	7d9020ef          	jal	14240 <__gesf2>
   1126c:	06a05663          	blez	a0,112d8 <_ZN6tflite22NudgeQuantizationRangeEffiiPfS0_S0_+0x124>
   11270:	00c15503          	lhu	a0,12(sp)
   11274:	1a5030ef          	jal	14c18 <__floatsisf>
   11278:	00050a13          	mv	s4,a0
   1127c:	00050593          	mv	a1,a0
   11280:	00040513          	mv	a0,s0
   11284:	434030ef          	jal	146b8 <__subsf3>
   11288:	00048593          	mv	a1,s1
   1128c:	0e4030ef          	jal	14370 <__mulsf3>
   11290:	000a0593          	mv	a1,s4
   11294:	00aaa023          	sw	a0,0(s5)
   11298:	00090513          	mv	a0,s2
   1129c:	41c030ef          	jal	146b8 <__subsf3>
   112a0:	0009a583          	lw	a1,0(s3)
   112a4:	0cc030ef          	jal	14370 <__mulsf3>
   112a8:	03c12083          	lw	ra,60(sp)
   112ac:	03812403          	lw	s0,56(sp)
   112b0:	00ab2023          	sw	a0,0(s6)
   112b4:	03412483          	lw	s1,52(sp)
   112b8:	03012903          	lw	s2,48(sp)
   112bc:	02c12983          	lw	s3,44(sp)
   112c0:	02812a03          	lw	s4,40(sp)
   112c4:	02412a83          	lw	s5,36(sp)
   112c8:	02012b03          	lw	s6,32(sp)
   112cc:	01c12b83          	lw	s7,28(sp)
   112d0:	04010113          	addi	sp,sp,64
   112d4:	00008067          	ret
   112d8:	000a0593          	mv	a1,s4
   112dc:	00090513          	mv	a0,s2
   112e0:	7f9020ef          	jal	142d8 <__lesf2>
   112e4:	00055863          	bgez	a0,112f4 <_ZN6tflite22NudgeQuantizationRangeEffiiPfS0_S0_+0x140>
   112e8:	010b9513          	slli	a0,s7,0x10
   112ec:	01055513          	srli	a0,a0,0x10
   112f0:	f85ff06f          	j	11274 <_ZN6tflite22NudgeQuantizationRangeEffiiPfS0_S0_+0xc0>
   112f4:	000a0513          	mv	a0,s4
   112f8:	6d0000ef          	jal	119c8 <roundf>
   112fc:	0b5030ef          	jal	14bb0 <__fixunssfsi>
   11300:	01051513          	slli	a0,a0,0x10
   11304:	01055513          	srli	a0,a0,0x10
   11308:	f6dff06f          	j	11274 <_ZN6tflite22NudgeQuantizationRangeEffiiPfS0_S0_+0xc0>

0001130c <_ZN6tflite17FakeQuantizeArrayEfffPKfPff>:
   1130c:	fd010113          	addi	sp,sp,-48
   11310:	02912223          	sw	s1,36(sp)
   11314:	01712623          	sw	s7,12(sp)
   11318:	00058493          	mv	s1,a1
   1131c:	00050b93          	mv	s7,a0
   11320:	00000593          	li	a1,0
   11324:	00078513          	mv	a0,a5
   11328:	03212023          	sw	s2,32(sp)
   1132c:	01312e23          	sw	s3,28(sp)
   11330:	01512a23          	sw	s5,20(sp)
   11334:	01612823          	sw	s6,16(sp)
   11338:	02112623          	sw	ra,44(sp)
   1133c:	00078b13          	mv	s6,a5
   11340:	00060a93          	mv	s5,a2
   11344:	00068993          	mv	s3,a3
   11348:	00070913          	mv	s2,a4
   1134c:	6f5020ef          	jal	14240 <__gesf2>
   11350:	0aa05663          	blez	a0,113fc <_ZN6tflite17FakeQuantizeArrayEfffPKfPff+0xf0>
   11354:	f081a503          	lw	a0,-248(gp) # 1c9f8 <__SDATA_BEGIN__+0x40>
   11358:	000b8593          	mv	a1,s7
   1135c:	01412c23          	sw	s4,24(sp)
   11360:	01812423          	sw	s8,8(sp)
   11364:	02812423          	sw	s0,40(sp)
   11368:	2f9020ef          	jal	13e60 <__divsf3>
   1136c:	00050c13          	mv	s8,a0
   11370:	00000a13          	li	s4,0
   11374:	0009a403          	lw	s0,0(s3)
   11378:	00048593          	mv	a1,s1
   1137c:	00040513          	mv	a0,s0
   11380:	6c1020ef          	jal	14240 <__gesf2>
   11384:	000a8593          	mv	a1,s5
   11388:	00a04463          	bgtz	a0,11390 <_ZN6tflite17FakeQuantizeArrayEfffPKfPff+0x84>
   1138c:	00048413          	mv	s0,s1
   11390:	00040513          	mv	a0,s0
   11394:	745020ef          	jal	142d8 <__lesf2>
   11398:	00048593          	mv	a1,s1
   1139c:	00054463          	bltz	a0,113a4 <_ZN6tflite17FakeQuantizeArrayEfffPKfPff+0x98>
   113a0:	000a8413          	mv	s0,s5
   113a4:	00040513          	mv	a0,s0
   113a8:	310030ef          	jal	146b8 <__subsf3>
   113ac:	000c0593          	mv	a1,s8
   113b0:	7c1020ef          	jal	14370 <__mulsf3>
   113b4:	614000ef          	jal	119c8 <roundf>
   113b8:	00050593          	mv	a1,a0
   113bc:	000b8513          	mv	a0,s7
   113c0:	7b1020ef          	jal	14370 <__mulsf3>
   113c4:	00048593          	mv	a1,s1
   113c8:	66c020ef          	jal	13a34 <__addsf3>
   113cc:	001a0a13          	addi	s4,s4,1
   113d0:	00a92023          	sw	a0,0(s2)
   113d4:	000a0513          	mv	a0,s4
   113d8:	041030ef          	jal	14c18 <__floatsisf>
   113dc:	000b0593          	mv	a1,s6
   113e0:	00498993          	addi	s3,s3,4
   113e4:	00490913          	addi	s2,s2,4
   113e8:	6f1020ef          	jal	142d8 <__lesf2>
   113ec:	f80544e3          	bltz	a0,11374 <_ZN6tflite17FakeQuantizeArrayEfffPKfPff+0x68>
   113f0:	02812403          	lw	s0,40(sp)
   113f4:	01812a03          	lw	s4,24(sp)
   113f8:	00812c03          	lw	s8,8(sp)
   113fc:	02c12083          	lw	ra,44(sp)
   11400:	02412483          	lw	s1,36(sp)
   11404:	02012903          	lw	s2,32(sp)
   11408:	01c12983          	lw	s3,28(sp)
   1140c:	01412a83          	lw	s5,20(sp)
   11410:	01012b03          	lw	s6,16(sp)
   11414:	00c12b83          	lw	s7,12(sp)
   11418:	03010113          	addi	sp,sp,48
   1141c:	00008067          	ret

00011420 <_ZN6tflite11CheckedLog2EfPi>:
   11420:	fe010113          	addi	sp,sp,-32
   11424:	00112e23          	sw	ra,28(sp)
   11428:	00812c23          	sw	s0,24(sp)
   1142c:	00912a23          	sw	s1,20(sp)
   11430:	00058413          	mv	s0,a1
   11434:	3ec000ef          	jal	11820 <logf>
   11438:	f0c1a583          	lw	a1,-244(gp) # 1c9fc <__SDATA_BEGIN__+0x44>
   1143c:	735020ef          	jal	14370 <__mulsf3>
   11440:	00050493          	mv	s1,a0
   11444:	584000ef          	jal	119c8 <roundf>
   11448:	00a12623          	sw	a0,12(sp)
   1144c:	6f4030ef          	jal	14b40 <__fixsfsi>
   11450:	00c12583          	lw	a1,12(sp)
   11454:	00a42023          	sw	a0,0(s0)
   11458:	00048513          	mv	a0,s1
   1145c:	25c030ef          	jal	146b8 <__subsf3>
   11460:	f101a583          	lw	a1,-240(gp) # 1ca00 <__SDATA_BEGIN__+0x48>
   11464:	00151513          	slli	a0,a0,0x1
   11468:	00155513          	srli	a0,a0,0x1
   1146c:	66d020ef          	jal	142d8 <__lesf2>
   11470:	01c12083          	lw	ra,28(sp)
   11474:	01812403          	lw	s0,24(sp)
   11478:	01412483          	lw	s1,20(sp)
   1147c:	01f55513          	srli	a0,a0,0x1f
   11480:	02010113          	addi	sp,sp,32
   11484:	00008067          	ret

00011488 <_ZN6tflite23QuantizeMultiplierArrayEPKdjPlPi>:
   11488:	0c058863          	beqz	a1,11558 <_ZN6tflite23QuantizeMultiplierArrayEPKdjPlPi+0xd0>
   1148c:	fe010113          	addi	sp,sp,-32
   11490:	00812c23          	sw	s0,24(sp)
   11494:	00912a23          	sw	s1,20(sp)
   11498:	01212823          	sw	s2,16(sp)
   1149c:	01312623          	sw	s3,12(sp)
   114a0:	01612023          	sw	s6,0(sp)
   114a4:	00112e23          	sw	ra,28(sp)
   114a8:	01412423          	sw	s4,8(sp)
   114ac:	01512223          	sw	s5,4(sp)
   114b0:	00058b13          	mv	s6,a1
   114b4:	00050913          	mv	s2,a0
   114b8:	00060493          	mv	s1,a2
   114bc:	00068413          	mv	s0,a3
   114c0:	00000993          	li	s3,0
   114c4:	0200006f          	j	114e4 <_ZN6tflite23QuantizeMultiplierArrayEPKdjPlPi+0x5c>
   114c8:	0004a023          	sw	zero,0(s1)
   114cc:	00042023          	sw	zero,0(s0)
   114d0:	00198993          	addi	s3,s3,1
   114d4:	00890913          	addi	s2,s2,8
   114d8:	00448493          	addi	s1,s1,4
   114dc:	00440413          	addi	s0,s0,4
   114e0:	053b0863          	beq	s6,s3,11530 <_ZN6tflite23QuantizeMultiplierArrayEPKdjPlPi+0xa8>
   114e4:	00092a03          	lw	s4,0(s2)
   114e8:	00492a83          	lw	s5,4(s2)
   114ec:	00000613          	li	a2,0
   114f0:	00000693          	li	a3,0
   114f4:	000a8593          	mv	a1,s5
   114f8:	000a0513          	mv	a0,s4
   114fc:	099010ef          	jal	12d94 <__eqdf2>
   11500:	00050793          	mv	a5,a0
   11504:	000a8593          	mv	a1,s5
   11508:	000a0513          	mv	a0,s4
   1150c:	00040693          	mv	a3,s0
   11510:	00048613          	mv	a2,s1
   11514:	fa078ae3          	beqz	a5,114c8 <_ZN6tflite23QuantizeMultiplierArrayEPKdjPlPi+0x40>
   11518:	00198993          	addi	s3,s3,1
   1151c:	8a8ff0ef          	jal	105c4 <_ZN6tflite18QuantizeMultiplierEdPlPi.part.0>
   11520:	00890913          	addi	s2,s2,8
   11524:	00448493          	addi	s1,s1,4
   11528:	00440413          	addi	s0,s0,4
   1152c:	fb3b1ce3          	bne	s6,s3,114e4 <_ZN6tflite23QuantizeMultiplierArrayEPKdjPlPi+0x5c>
   11530:	01c12083          	lw	ra,28(sp)
   11534:	01812403          	lw	s0,24(sp)
   11538:	01412483          	lw	s1,20(sp)
   1153c:	01012903          	lw	s2,16(sp)
   11540:	00c12983          	lw	s3,12(sp)
   11544:	00812a03          	lw	s4,8(sp)
   11548:	00412a83          	lw	s5,4(sp)
   1154c:	00012b03          	lw	s6,0(sp)
   11550:	02010113          	addi	sp,sp,32
   11554:	00008067          	ret
   11558:	00008067          	ret

0001155c <floor>:
   1155c:	4145d713          	srai	a4,a1,0x14
   11560:	fd010113          	addi	sp,sp,-48
   11564:	7ff77713          	andi	a4,a4,2047
   11568:	02112623          	sw	ra,44(sp)
   1156c:	c0170893          	addi	a7,a4,-1023
   11570:	01300693          	li	a3,19
   11574:	0b16c663          	blt	a3,a7,11620 <floor+0xc4>
   11578:	1408c863          	bltz	a7,116c8 <floor+0x16c>
   1157c:	00100fb7          	lui	t6,0x100
   11580:	ffff8e93          	addi	t4,t6,-1 # fffff <__BSS_END__+0xe3257>
   11584:	411edeb3          	sra	t4,t4,a7
   11588:	00bef633          	and	a2,t4,a1
   1158c:	00a66633          	or	a2,a2,a0
   11590:	00050693          	mv	a3,a0
   11594:	00058713          	mv	a4,a1
   11598:	06060a63          	beqz	a2,1160c <floor+0xb0>
   1159c:	ef81a603          	lw	a2,-264(gp) # 1c9e8 <__SDATA_BEGIN__+0x30>
   115a0:	efc1a683          	lw	a3,-260(gp) # 1c9ec <__SDATA_BEGIN__+0x34>
   115a4:	01d12623          	sw	t4,12(sp)
   115a8:	01112c23          	sw	a7,24(sp)
   115ac:	00b12a23          	sw	a1,20(sp)
   115b0:	00b12223          	sw	a1,4(sp)
   115b4:	00a12423          	sw	a0,8(sp)
   115b8:	00b12823          	sw	a1,16(sp)
   115bc:	0c9000ef          	jal	11e84 <__adddf3>
   115c0:	00000613          	li	a2,0
   115c4:	00000693          	li	a3,0
   115c8:	051010ef          	jal	12e18 <__gedf2>
   115cc:	00412e03          	lw	t3,4(sp)
   115d0:	00812303          	lw	t1,8(sp)
   115d4:	02a05863          	blez	a0,11604 <floor+0xa8>
   115d8:	01012f03          	lw	t5,16(sp)
   115dc:	00c12e83          	lw	t4,12(sp)
   115e0:	000f5c63          	bgez	t5,115f8 <floor+0x9c>
   115e4:	01812883          	lw	a7,24(sp)
   115e8:	01412783          	lw	a5,20(sp)
   115ec:	00100fb7          	lui	t6,0x100
   115f0:	411fdfb3          	sra	t6,t6,a7
   115f4:	00ff8f33          	add	t5,t6,a5
   115f8:	fffece93          	not	t4,t4
   115fc:	01eefe33          	and	t3,t4,t5
   11600:	00000313          	li	t1,0
   11604:	00030693          	mv	a3,t1
   11608:	000e0713          	mv	a4,t3
   1160c:	02c12083          	lw	ra,44(sp)
   11610:	00068513          	mv	a0,a3
   11614:	00070593          	mv	a1,a4
   11618:	03010113          	addi	sp,sp,48
   1161c:	00008067          	ret
   11620:	03300693          	li	a3,51
   11624:	0316d663          	bge	a3,a7,11650 <floor+0xf4>
   11628:	40000613          	li	a2,1024
   1162c:	00050693          	mv	a3,a0
   11630:	00058713          	mv	a4,a1
   11634:	fcc89ce3          	bne	a7,a2,1160c <floor+0xb0>
   11638:	00058693          	mv	a3,a1
   1163c:	00050613          	mv	a2,a0
   11640:	045000ef          	jal	11e84 <__adddf3>
   11644:	00050693          	mv	a3,a0
   11648:	00058713          	mv	a4,a1
   1164c:	fc1ff06f          	j	1160c <floor+0xb0>
   11650:	bed70713          	addi	a4,a4,-1043
   11654:	fff00e93          	li	t4,-1
   11658:	00eedeb3          	srl	t4,t4,a4
   1165c:	00aef633          	and	a2,t4,a0
   11660:	00050693          	mv	a3,a0
   11664:	00058713          	mv	a4,a1
   11668:	fa0602e3          	beqz	a2,1160c <floor+0xb0>
   1166c:	ef81a603          	lw	a2,-264(gp) # 1c9e8 <__SDATA_BEGIN__+0x30>
   11670:	efc1a683          	lw	a3,-260(gp) # 1c9ec <__SDATA_BEGIN__+0x34>
   11674:	01d12823          	sw	t4,16(sp)
   11678:	01112c23          	sw	a7,24(sp)
   1167c:	00b12a23          	sw	a1,20(sp)
   11680:	00a12623          	sw	a0,12(sp)
   11684:	00b12223          	sw	a1,4(sp)
   11688:	00a12423          	sw	a0,8(sp)
   1168c:	00a12e23          	sw	a0,28(sp)
   11690:	7f4000ef          	jal	11e84 <__adddf3>
   11694:	00000613          	li	a2,0
   11698:	00000693          	li	a3,0
   1169c:	77c010ef          	jal	12e18 <__gedf2>
   116a0:	00412e03          	lw	t3,4(sp)
   116a4:	00812303          	lw	t1,8(sp)
   116a8:	f4a05ee3          	blez	a0,11604 <floor+0xa8>
   116ac:	00c12803          	lw	a6,12(sp)
   116b0:	01012e83          	lw	t4,16(sp)
   116b4:	00080313          	mv	t1,a6
   116b8:	060e4e63          	bltz	t3,11734 <floor+0x1d8>
   116bc:	fffece93          	not	t4,t4
   116c0:	006ef333          	and	t1,t4,t1
   116c4:	f41ff06f          	j	11604 <floor+0xa8>
   116c8:	ef81a603          	lw	a2,-264(gp) # 1c9e8 <__SDATA_BEGIN__+0x30>
   116cc:	efc1a683          	lw	a3,-260(gp) # 1c9ec <__SDATA_BEGIN__+0x34>
   116d0:	00b12823          	sw	a1,16(sp)
   116d4:	00a12623          	sw	a0,12(sp)
   116d8:	00a12423          	sw	a0,8(sp)
   116dc:	00b12223          	sw	a1,4(sp)
   116e0:	7a4000ef          	jal	11e84 <__adddf3>
   116e4:	00000613          	li	a2,0
   116e8:	00000693          	li	a3,0
   116ec:	72c010ef          	jal	12e18 <__gedf2>
   116f0:	00412e03          	lw	t3,4(sp)
   116f4:	00812303          	lw	t1,8(sp)
   116f8:	f0a056e3          	blez	a0,11604 <floor+0xa8>
   116fc:	000e4863          	bltz	t3,1170c <floor+0x1b0>
   11700:	00000313          	li	t1,0
   11704:	00000e13          	li	t3,0
   11708:	efdff06f          	j	11604 <floor+0xa8>
   1170c:	800005b7          	lui	a1,0x80000
   11710:	00c12803          	lw	a6,12(sp)
   11714:	fff58313          	addi	t1,a1,-1 # 7fffffff <__BSS_END__+0x7ffe3257>
   11718:	01c37333          	and	t1,t1,t3
   1171c:	01036333          	or	t1,t1,a6
   11720:	00058e13          	mv	t3,a1
   11724:	ee0300e3          	beqz	t1,11604 <floor+0xa8>
   11728:	00000313          	li	t1,0
   1172c:	bff00e37          	lui	t3,0xbff00
   11730:	ed5ff06f          	j	11604 <floor+0xa8>
   11734:	01812883          	lw	a7,24(sp)
   11738:	01400713          	li	a4,20
   1173c:	01412783          	lw	a5,20(sp)
   11740:	01c12f83          	lw	t6,28(sp)
   11744:	00e88e63          	beq	a7,a4,11760 <floor+0x204>
   11748:	03400713          	li	a4,52
   1174c:	41170733          	sub	a4,a4,a7
   11750:	00100313          	li	t1,1
   11754:	00e31333          	sll	t1,t1,a4
   11758:	01030333          	add	t1,t1,a6
   1175c:	f7f370e3          	bgeu	t1,t6,116bc <floor+0x160>
   11760:	00178e13          	addi	t3,a5,1
   11764:	f59ff06f          	j	116bc <floor+0x160>

00011768 <frexp>:
   11768:	80000837          	lui	a6,0x80000
   1176c:	fff80813          	addi	a6,a6,-1 # 7fffffff <__BSS_END__+0x7ffe3257>
   11770:	00062023          	sw	zero,0(a2)
   11774:	00b876b3          	and	a3,a6,a1
   11778:	7ff008b7          	lui	a7,0x7ff00
   1177c:	00058793          	mv	a5,a1
   11780:	00050713          	mv	a4,a0
   11784:	0916f863          	bgeu	a3,a7,11814 <frexp+0xac>
   11788:	00a6e8b3          	or	a7,a3,a0
   1178c:	08088463          	beqz	a7,11814 <frexp+0xac>
   11790:	fe010113          	addi	sp,sp,-32
   11794:	0145de13          	srli	t3,a1,0x14
   11798:	00112e23          	sw	ra,28(sp)
   1179c:	7ffe7e13          	andi	t3,t3,2047
   117a0:	00060893          	mv	a7,a2
   117a4:	00058313          	mv	t1,a1
   117a8:	00000613          	li	a2,0
   117ac:	020e1863          	bnez	t3,117dc <frexp+0x74>
   117b0:	f001a603          	lw	a2,-256(gp) # 1c9f0 <__SDATA_BEGIN__+0x38>
   117b4:	f041a683          	lw	a3,-252(gp) # 1c9f4 <__SDATA_BEGIN__+0x3c>
   117b8:	01112623          	sw	a7,12(sp)
   117bc:	00d010ef          	jal	12fc8 <__muldf3>
   117c0:	80000737          	lui	a4,0x80000
   117c4:	00c12883          	lw	a7,12(sp)
   117c8:	fff70813          	addi	a6,a4,-1 # 7fffffff <__BSS_END__+0x7ffe3257>
   117cc:	00b876b3          	and	a3,a6,a1
   117d0:	00058313          	mv	t1,a1
   117d4:	00050713          	mv	a4,a0
   117d8:	fca00613          	li	a2,-54
   117dc:	4146d693          	srai	a3,a3,0x14
   117e0:	801007b7          	lui	a5,0x80100
   117e4:	01c12083          	lw	ra,28(sp)
   117e8:	fff78793          	addi	a5,a5,-1 # 800fffff <__BSS_END__+0x800e3257>
   117ec:	c0268693          	addi	a3,a3,-1022
   117f0:	00f37333          	and	t1,t1,a5
   117f4:	00c686b3          	add	a3,a3,a2
   117f8:	3fe007b7          	lui	a5,0x3fe00
   117fc:	00f367b3          	or	a5,t1,a5
   11800:	00d8a023          	sw	a3,0(a7) # 7ff00000 <__BSS_END__+0x7fee3258>
   11804:	00070513          	mv	a0,a4
   11808:	00078593          	mv	a1,a5
   1180c:	02010113          	addi	sp,sp,32
   11810:	00008067          	ret
   11814:	00070513          	mv	a0,a4
   11818:	00078593          	mv	a1,a5
   1181c:	00008067          	ret

00011820 <logf>:
   11820:	ff010113          	addi	sp,sp,-16
   11824:	00812423          	sw	s0,8(sp)
   11828:	00912223          	sw	s1,4(sp)
   1182c:	00050413          	mv	s0,a0
   11830:	00112623          	sw	ra,12(sp)
   11834:	220000ef          	jal	11a54 <__ieee754_logf>
   11838:	00050493          	mv	s1,a0
   1183c:	00040593          	mv	a1,s0
   11840:	00040513          	mv	a0,s0
   11844:	2b8030ef          	jal	14afc <__unordsf2>
   11848:	02051a63          	bnez	a0,1187c <logf+0x5c>
   1184c:	00000593          	li	a1,0
   11850:	00040513          	mv	a0,s0
   11854:	1ed020ef          	jal	14240 <__gesf2>
   11858:	02a04263          	bgtz	a0,1187c <logf+0x5c>
   1185c:	00040513          	mv	a0,s0
   11860:	00000593          	li	a1,0
   11864:	171020ef          	jal	141d4 <__eqsf2>
   11868:	02051663          	bnez	a0,11894 <logf+0x74>
   1186c:	364060ef          	jal	17bd0 <__errno>
   11870:	f141a483          	lw	s1,-236(gp) # 1ca04 <__SDATA_BEGIN__+0x4c>
   11874:	02200713          	li	a4,34
   11878:	00e52023          	sw	a4,0(a0)
   1187c:	00c12083          	lw	ra,12(sp)
   11880:	00812403          	lw	s0,8(sp)
   11884:	00048513          	mv	a0,s1
   11888:	00412483          	lw	s1,4(sp)
   1188c:	01010113          	addi	sp,sp,16
   11890:	00008067          	ret
   11894:	33c060ef          	jal	17bd0 <__errno>
   11898:	00812403          	lw	s0,8(sp)
   1189c:	00c12083          	lw	ra,12(sp)
   118a0:	00412483          	lw	s1,4(sp)
   118a4:	02100713          	li	a4,33
   118a8:	00e52023          	sw	a4,0(a0)
   118ac:	0001b7b7          	lui	a5,0x1b
   118b0:	a0078513          	addi	a0,a5,-1536 # 1aa00 <_exit+0x1cc>
   118b4:	01010113          	addi	sp,sp,16
   118b8:	1080006f          	j	119c0 <nanf>

000118bc <round>:
   118bc:	4145d793          	srai	a5,a1,0x14
   118c0:	7ff7f793          	andi	a5,a5,2047
   118c4:	c0178613          	addi	a2,a5,-1023
   118c8:	01300813          	li	a6,19
   118cc:	00058693          	mv	a3,a1
   118d0:	00050893          	mv	a7,a0
   118d4:	04c84463          	blt	a6,a2,1191c <round+0x60>
   118d8:	0a064e63          	bltz	a2,11994 <round+0xd8>
   118dc:	001007b7          	lui	a5,0x100
   118e0:	fff78793          	addi	a5,a5,-1 # fffff <__BSS_END__+0xe3257>
   118e4:	40c7d7b3          	sra	a5,a5,a2
   118e8:	00b7f733          	and	a4,a5,a1
   118ec:	00a76733          	or	a4,a4,a0
   118f0:	0c070263          	beqz	a4,119b4 <round+0xf8>
   118f4:	00080737          	lui	a4,0x80
   118f8:	40c75733          	sra	a4,a4,a2
   118fc:	fff7c793          	not	a5,a5
   11900:	00b70733          	add	a4,a4,a1
   11904:	00f77733          	and	a4,a4,a5
   11908:	00000793          	li	a5,0
   1190c:	00070813          	mv	a6,a4
   11910:	00078513          	mv	a0,a5
   11914:	00080593          	mv	a1,a6
   11918:	00008067          	ret
   1191c:	03300313          	li	t1,51
   11920:	02c35863          	bge	t1,a2,11950 <round+0x94>
   11924:	40000713          	li	a4,1024
   11928:	00050793          	mv	a5,a0
   1192c:	00058813          	mv	a6,a1
   11930:	fee610e3          	bne	a2,a4,11910 <round+0x54>
   11934:	ff010113          	addi	sp,sp,-16
   11938:	00050613          	mv	a2,a0
   1193c:	00112623          	sw	ra,12(sp)
   11940:	544000ef          	jal	11e84 <__adddf3>
   11944:	00c12083          	lw	ra,12(sp)
   11948:	01010113          	addi	sp,sp,16
   1194c:	00008067          	ret
   11950:	bed78793          	addi	a5,a5,-1043
   11954:	00058713          	mv	a4,a1
   11958:	fff00593          	li	a1,-1
   1195c:	00f5d5b3          	srl	a1,a1,a5
   11960:	00a5f533          	and	a0,a1,a0
   11964:	00088793          	mv	a5,a7
   11968:	00068813          	mv	a6,a3
   1196c:	fa0502e3          	beqz	a0,11910 <round+0x54>
   11970:	40c30333          	sub	t1,t1,a2
   11974:	00100613          	li	a2,1
   11978:	00661633          	sll	a2,a2,t1
   1197c:	011607b3          	add	a5,a2,a7
   11980:	00c7f463          	bgeu	a5,a2,11988 <round+0xcc>
   11984:	00168713          	addi	a4,a3,1
   11988:	fff5c593          	not	a1,a1
   1198c:	00f5f7b3          	and	a5,a1,a5
   11990:	f7dff06f          	j	1190c <round+0x50>
   11994:	80000737          	lui	a4,0x80000
   11998:	fff00693          	li	a3,-1
   1199c:	00b77733          	and	a4,a4,a1
   119a0:	00000793          	li	a5,0
   119a4:	f6d614e3          	bne	a2,a3,1190c <round+0x50>
   119a8:	3ff006b7          	lui	a3,0x3ff00
   119ac:	00d76733          	or	a4,a4,a3
   119b0:	f5dff06f          	j	1190c <round+0x50>
   119b4:	00050793          	mv	a5,a0
   119b8:	00058813          	mv	a6,a1
   119bc:	f55ff06f          	j	11910 <round+0x54>

000119c0 <nanf>:
   119c0:	f181a503          	lw	a0,-232(gp) # 1ca08 <__SDATA_BEGIN__+0x50>
   119c4:	00008067          	ret

000119c8 <roundf>:
   119c8:	01755793          	srli	a5,a0,0x17
   119cc:	0ff7f793          	zext.b	a5,a5
   119d0:	f8178793          	addi	a5,a5,-127
   119d4:	01600693          	li	a3,22
   119d8:	02f6ce63          	blt	a3,a5,11a14 <roundf+0x4c>
   119dc:	0407ce63          	bltz	a5,11a38 <roundf+0x70>
   119e0:	008006b7          	lui	a3,0x800
   119e4:	fff68693          	addi	a3,a3,-1 # 7fffff <__BSS_END__+0x7e3257>
   119e8:	40f6d6b3          	sra	a3,a3,a5
   119ec:	00a6f633          	and	a2,a3,a0
   119f0:	00050593          	mv	a1,a0
   119f4:	00060c63          	beqz	a2,11a0c <roundf+0x44>
   119f8:	004005b7          	lui	a1,0x400
   119fc:	40f5d5b3          	sra	a1,a1,a5
   11a00:	fff6c693          	not	a3,a3
   11a04:	00a585b3          	add	a1,a1,a0
   11a08:	00b6f5b3          	and	a1,a3,a1
   11a0c:	00058513          	mv	a0,a1
   11a10:	00008067          	ret
   11a14:	08000693          	li	a3,128
   11a18:	00050593          	mv	a1,a0
   11a1c:	fed798e3          	bne	a5,a3,11a0c <roundf+0x44>
   11a20:	ff010113          	addi	sp,sp,-16
   11a24:	00112623          	sw	ra,12(sp)
   11a28:	00c020ef          	jal	13a34 <__addsf3>
   11a2c:	00c12083          	lw	ra,12(sp)
   11a30:	01010113          	addi	sp,sp,16
   11a34:	00008067          	ret
   11a38:	800005b7          	lui	a1,0x80000
   11a3c:	fff00693          	li	a3,-1
   11a40:	00a5f5b3          	and	a1,a1,a0
   11a44:	fcd794e3          	bne	a5,a3,11a0c <roundf+0x44>
   11a48:	3f8007b7          	lui	a5,0x3f800
   11a4c:	00f5e5b3          	or	a1,a1,a5
   11a50:	fbdff06f          	j	11a0c <roundf+0x44>

00011a54 <__ieee754_logf>:
   11a54:	fd010113          	addi	sp,sp,-48
   11a58:	02112623          	sw	ra,44(sp)
   11a5c:	00151793          	slli	a5,a0,0x1
   11a60:	0a078e63          	beqz	a5,11b1c <__ieee754_logf+0xc8>
   11a64:	00050593          	mv	a1,a0
   11a68:	00050793          	mv	a5,a0
   11a6c:	0c054463          	bltz	a0,11b34 <__ieee754_logf+0xe0>
   11a70:	7f800737          	lui	a4,0x7f800
   11a74:	26e55c63          	bge	a0,a4,11cec <__ieee754_logf+0x298>
   11a78:	01412c23          	sw	s4,24(sp)
   11a7c:	01512a23          	sw	s5,20(sp)
   11a80:	00800737          	lui	a4,0x800
   11a84:	00000813          	li	a6,0
   11a88:	00e55a63          	bge	a0,a4,11a9c <__ieee754_logf+0x48>
   11a8c:	f201a583          	lw	a1,-224(gp) # 1ca10 <__SDATA_BEGIN__+0x58>
   11a90:	0e1020ef          	jal	14370 <__mulsf3>
   11a94:	00050793          	mv	a5,a0
   11a98:	fe700813          	li	a6,-25
   11a9c:	00800637          	lui	a2,0x800
   11aa0:	fff60693          	addi	a3,a2,-1 # 7fffff <__BSS_END__+0x7e3257>
   11aa4:	004b0737          	lui	a4,0x4b0
   11aa8:	00d7f6b3          	and	a3,a5,a3
   11aac:	b2070713          	addi	a4,a4,-1248 # 4afb20 <__BSS_END__+0x492d78>
   11ab0:	00e68733          	add	a4,a3,a4
   11ab4:	00c77733          	and	a4,a4,a2
   11ab8:	f081a583          	lw	a1,-248(gp) # 1c9f8 <__SDATA_BEGIN__+0x40>
   11abc:	4177d793          	srai	a5,a5,0x17
   11ac0:	3f800537          	lui	a0,0x3f800
   11ac4:	00a74533          	xor	a0,a4,a0
   11ac8:	f8178793          	addi	a5,a5,-127 # 3f7fff81 <__BSS_END__+0x3f7e31d9>
   11acc:	010787b3          	add	a5,a5,a6
   11ad0:	41775713          	srai	a4,a4,0x17
   11ad4:	00d56533          	or	a0,a0,a3
   11ad8:	00f70a33          	add	s4,a4,a5
   11adc:	00d12423          	sw	a3,8(sp)
   11ae0:	3d9020ef          	jal	146b8 <__subsf3>
   11ae4:	00812683          	lw	a3,8(sp)
   11ae8:	00050a93          	mv	s5,a0
   11aec:	00f68793          	addi	a5,a3,15
   11af0:	00979713          	slli	a4,a5,0x9
   11af4:	00d75713          	srli	a4,a4,0xd
   11af8:	04071a63          	bnez	a4,11b4c <__ieee754_logf+0xf8>
   11afc:	00000593          	li	a1,0
   11b00:	6d4020ef          	jal	141d4 <__eqsf2>
   11b04:	1e051c63          	bnez	a0,11cfc <__ieee754_logf+0x2a8>
   11b08:	00000513          	li	a0,0
   11b0c:	320a1063          	bnez	s4,11e2c <__ieee754_logf+0x3d8>
   11b10:	01812a03          	lw	s4,24(sp)
   11b14:	01412a83          	lw	s5,20(sp)
   11b18:	0100006f          	j	11b28 <__ieee754_logf+0xd4>
   11b1c:	f1c1a503          	lw	a0,-228(gp) # 1ca0c <__SDATA_BEGIN__+0x54>
   11b20:	00000593          	li	a1,0
   11b24:	33c020ef          	jal	13e60 <__divsf3>
   11b28:	02c12083          	lw	ra,44(sp)
   11b2c:	03010113          	addi	sp,sp,48
   11b30:	00008067          	ret
   11b34:	385020ef          	jal	146b8 <__subsf3>
   11b38:	00000593          	li	a1,0
   11b3c:	324020ef          	jal	13e60 <__divsf3>
   11b40:	02c12083          	lw	ra,44(sp)
   11b44:	03010113          	addi	sp,sp,48
   11b48:	00008067          	ret
   11b4c:	f341a583          	lw	a1,-204(gp) # 1ca24 <__SDATA_BEGIN__+0x6c>
   11b50:	00d12423          	sw	a3,8(sp)
   11b54:	02812423          	sw	s0,40(sp)
   11b58:	02912223          	sw	s1,36(sp)
   11b5c:	01312e23          	sw	s3,28(sp)
   11b60:	01612823          	sw	s6,16(sp)
   11b64:	6d1010ef          	jal	13a34 <__addsf3>
   11b68:	00050593          	mv	a1,a0
   11b6c:	000a8513          	mv	a0,s5
   11b70:	2f0020ef          	jal	13e60 <__divsf3>
   11b74:	00050413          	mv	s0,a0
   11b78:	00050493          	mv	s1,a0
   11b7c:	000a0513          	mv	a0,s4
   11b80:	098030ef          	jal	14c18 <__floatsisf>
   11b84:	00040593          	mv	a1,s0
   11b88:	00050b13          	mv	s6,a0
   11b8c:	00040513          	mv	a0,s0
   11b90:	7e0020ef          	jal	14370 <__mulsf3>
   11b94:	00812683          	lw	a3,8(sp)
   11b98:	ffcf6737          	lui	a4,0xffcf6
   11b9c:	c3070713          	addi	a4,a4,-976 # ffcf5c30 <__BSS_END__+0xffcd8e88>
   11ba0:	00e68733          	add	a4,a3,a4
   11ba4:	00050593          	mv	a1,a0
   11ba8:	00d12623          	sw	a3,12(sp)
   11bac:	00e12423          	sw	a4,8(sp)
   11bb0:	00050993          	mv	s3,a0
   11bb4:	7bc020ef          	jal	14370 <__mulsf3>
   11bb8:	f381a583          	lw	a1,-200(gp) # 1ca28 <__SDATA_BEGIN__+0x70>
   11bbc:	00050413          	mv	s0,a0
   11bc0:	7b0020ef          	jal	14370 <__mulsf3>
   11bc4:	f3c1a583          	lw	a1,-196(gp) # 1ca2c <__SDATA_BEGIN__+0x74>
   11bc8:	66d010ef          	jal	13a34 <__addsf3>
   11bcc:	00040593          	mv	a1,s0
   11bd0:	7a0020ef          	jal	14370 <__mulsf3>
   11bd4:	f401a583          	lw	a1,-192(gp) # 1ca30 <__SDATA_BEGIN__+0x78>
   11bd8:	65d010ef          	jal	13a34 <__addsf3>
   11bdc:	00040593          	mv	a1,s0
   11be0:	790020ef          	jal	14370 <__mulsf3>
   11be4:	f441a583          	lw	a1,-188(gp) # 1ca34 <__SDATA_BEGIN__+0x7c>
   11be8:	64d010ef          	jal	13a34 <__addsf3>
   11bec:	00098593          	mv	a1,s3
   11bf0:	780020ef          	jal	14370 <__mulsf3>
   11bf4:	f481a583          	lw	a1,-184(gp) # 1ca38 <__SDATA_BEGIN__+0x80>
   11bf8:	00050993          	mv	s3,a0
   11bfc:	00040513          	mv	a0,s0
   11c00:	770020ef          	jal	14370 <__mulsf3>
   11c04:	f4c1a583          	lw	a1,-180(gp) # 1ca3c <__SDATA_BEGIN__+0x84>
   11c08:	62d010ef          	jal	13a34 <__addsf3>
   11c0c:	00040593          	mv	a1,s0
   11c10:	760020ef          	jal	14370 <__mulsf3>
   11c14:	f501a583          	lw	a1,-176(gp) # 1ca40 <__SDATA_BEGIN__+0x88>
   11c18:	61d010ef          	jal	13a34 <__addsf3>
   11c1c:	00040593          	mv	a1,s0
   11c20:	750020ef          	jal	14370 <__mulsf3>
   11c24:	00050593          	mv	a1,a0
   11c28:	00098513          	mv	a0,s3
   11c2c:	609010ef          	jal	13a34 <__addsf3>
   11c30:	00c12683          	lw	a3,12(sp)
   11c34:	00812703          	lw	a4,8(sp)
   11c38:	0035c7b7          	lui	a5,0x35c
   11c3c:	28878793          	addi	a5,a5,648 # 35c288 <__BSS_END__+0x33f4e0>
   11c40:	40d787b3          	sub	a5,a5,a3
   11c44:	00e7e7b3          	or	a5,a5,a4
   11c48:	10f05c63          	blez	a5,11d60 <__ieee754_logf+0x30c>
   11c4c:	f301a583          	lw	a1,-208(gp) # 1ca20 <__SDATA_BEGIN__+0x68>
   11c50:	00a12423          	sw	a0,8(sp)
   11c54:	000a8513          	mv	a0,s5
   11c58:	03212023          	sw	s2,32(sp)
   11c5c:	714020ef          	jal	14370 <__mulsf3>
   11c60:	000a8593          	mv	a1,s5
   11c64:	70c020ef          	jal	14370 <__mulsf3>
   11c68:	00050593          	mv	a1,a0
   11c6c:	00050913          	mv	s2,a0
   11c70:	00812503          	lw	a0,8(sp)
   11c74:	5c1010ef          	jal	13a34 <__addsf3>
   11c78:	00048593          	mv	a1,s1
   11c7c:	6f4020ef          	jal	14370 <__mulsf3>
   11c80:	140a0a63          	beqz	s4,11dd4 <__ieee754_logf+0x380>
   11c84:	f241a583          	lw	a1,-220(gp) # 1ca14 <__SDATA_BEGIN__+0x5c>
   11c88:	00a12423          	sw	a0,8(sp)
   11c8c:	000b0513          	mv	a0,s6
   11c90:	6e0020ef          	jal	14370 <__mulsf3>
   11c94:	f281a583          	lw	a1,-216(gp) # 1ca18 <__SDATA_BEGIN__+0x60>
   11c98:	00050493          	mv	s1,a0
   11c9c:	000b0513          	mv	a0,s6
   11ca0:	6d0020ef          	jal	14370 <__mulsf3>
   11ca4:	00812583          	lw	a1,8(sp)
   11ca8:	58d010ef          	jal	13a34 <__addsf3>
   11cac:	00050593          	mv	a1,a0
   11cb0:	00090513          	mv	a0,s2
   11cb4:	205020ef          	jal	146b8 <__subsf3>
   11cb8:	000a8593          	mv	a1,s5
   11cbc:	1fd020ef          	jal	146b8 <__subsf3>
   11cc0:	00050593          	mv	a1,a0
   11cc4:	00048513          	mv	a0,s1
   11cc8:	1f1020ef          	jal	146b8 <__subsf3>
   11ccc:	02812403          	lw	s0,40(sp)
   11cd0:	02412483          	lw	s1,36(sp)
   11cd4:	02012903          	lw	s2,32(sp)
   11cd8:	01c12983          	lw	s3,28(sp)
   11cdc:	01812a03          	lw	s4,24(sp)
   11ce0:	01412a83          	lw	s5,20(sp)
   11ce4:	01012b03          	lw	s6,16(sp)
   11ce8:	e41ff06f          	j	11b28 <__ieee754_logf+0xd4>
   11cec:	549010ef          	jal	13a34 <__addsf3>
   11cf0:	02c12083          	lw	ra,44(sp)
   11cf4:	03010113          	addi	sp,sp,48
   11cf8:	00008067          	ret
   11cfc:	f2c1a583          	lw	a1,-212(gp) # 1ca1c <__SDATA_BEGIN__+0x64>
   11d00:	000a8513          	mv	a0,s5
   11d04:	02812423          	sw	s0,40(sp)
   11d08:	02912223          	sw	s1,36(sp)
   11d0c:	664020ef          	jal	14370 <__mulsf3>
   11d10:	00050593          	mv	a1,a0
   11d14:	f301a503          	lw	a0,-208(gp) # 1ca20 <__SDATA_BEGIN__+0x68>
   11d18:	000a8413          	mv	s0,s5
   11d1c:	19d020ef          	jal	146b8 <__subsf3>
   11d20:	00050493          	mv	s1,a0
   11d24:	000a8593          	mv	a1,s5
   11d28:	000a8513          	mv	a0,s5
   11d2c:	644020ef          	jal	14370 <__mulsf3>
   11d30:	00050593          	mv	a1,a0
   11d34:	00048513          	mv	a0,s1
   11d38:	638020ef          	jal	14370 <__mulsf3>
   11d3c:	0a0a1863          	bnez	s4,11dec <__ieee754_logf+0x398>
   11d40:	00050593          	mv	a1,a0
   11d44:	00040513          	mv	a0,s0
   11d48:	171020ef          	jal	146b8 <__subsf3>
   11d4c:	02812403          	lw	s0,40(sp)
   11d50:	02412483          	lw	s1,36(sp)
   11d54:	01812a03          	lw	s4,24(sp)
   11d58:	01412a83          	lw	s5,20(sp)
   11d5c:	dcdff06f          	j	11b28 <__ieee754_logf+0xd4>
   11d60:	00050593          	mv	a1,a0
   11d64:	000a8513          	mv	a0,s5
   11d68:	151020ef          	jal	146b8 <__subsf3>
   11d6c:	00048593          	mv	a1,s1
   11d70:	600020ef          	jal	14370 <__mulsf3>
   11d74:	100a0263          	beqz	s4,11e78 <__ieee754_logf+0x424>
   11d78:	f241a583          	lw	a1,-220(gp) # 1ca14 <__SDATA_BEGIN__+0x5c>
   11d7c:	00a12423          	sw	a0,8(sp)
   11d80:	000b0513          	mv	a0,s6
   11d84:	5ec020ef          	jal	14370 <__mulsf3>
   11d88:	f281a583          	lw	a1,-216(gp) # 1ca18 <__SDATA_BEGIN__+0x60>
   11d8c:	00050493          	mv	s1,a0
   11d90:	000b0513          	mv	a0,s6
   11d94:	5dc020ef          	jal	14370 <__mulsf3>
   11d98:	00050593          	mv	a1,a0
   11d9c:	00812503          	lw	a0,8(sp)
   11da0:	119020ef          	jal	146b8 <__subsf3>
   11da4:	000a8593          	mv	a1,s5
   11da8:	111020ef          	jal	146b8 <__subsf3>
   11dac:	00050593          	mv	a1,a0
   11db0:	00048513          	mv	a0,s1
   11db4:	105020ef          	jal	146b8 <__subsf3>
   11db8:	02812403          	lw	s0,40(sp)
   11dbc:	02412483          	lw	s1,36(sp)
   11dc0:	01c12983          	lw	s3,28(sp)
   11dc4:	01812a03          	lw	s4,24(sp)
   11dc8:	01412a83          	lw	s5,20(sp)
   11dcc:	01012b03          	lw	s6,16(sp)
   11dd0:	d59ff06f          	j	11b28 <__ieee754_logf+0xd4>
   11dd4:	00050593          	mv	a1,a0
   11dd8:	00090513          	mv	a0,s2
   11ddc:	0dd020ef          	jal	146b8 <__subsf3>
   11de0:	00050593          	mv	a1,a0
   11de4:	000a8513          	mv	a0,s5
   11de8:	ee1ff06f          	j	11cc8 <__ieee754_logf+0x274>
   11dec:	00a12423          	sw	a0,8(sp)
   11df0:	000a0513          	mv	a0,s4
   11df4:	625020ef          	jal	14c18 <__floatsisf>
   11df8:	f241a583          	lw	a1,-220(gp) # 1ca14 <__SDATA_BEGIN__+0x5c>
   11dfc:	00050493          	mv	s1,a0
   11e00:	570020ef          	jal	14370 <__mulsf3>
   11e04:	f281a583          	lw	a1,-216(gp) # 1ca18 <__SDATA_BEGIN__+0x60>
   11e08:	00050413          	mv	s0,a0
   11e0c:	00048513          	mv	a0,s1
   11e10:	560020ef          	jal	14370 <__mulsf3>
   11e14:	00050593          	mv	a1,a0
   11e18:	00812503          	lw	a0,8(sp)
   11e1c:	09d020ef          	jal	146b8 <__subsf3>
   11e20:	000a8593          	mv	a1,s5
   11e24:	095020ef          	jal	146b8 <__subsf3>
   11e28:	f19ff06f          	j	11d40 <__ieee754_logf+0x2ec>
   11e2c:	000a0513          	mv	a0,s4
   11e30:	02812423          	sw	s0,40(sp)
   11e34:	02912223          	sw	s1,36(sp)
   11e38:	5e1020ef          	jal	14c18 <__floatsisf>
   11e3c:	f241a583          	lw	a1,-220(gp) # 1ca14 <__SDATA_BEGIN__+0x5c>
   11e40:	00050493          	mv	s1,a0
   11e44:	52c020ef          	jal	14370 <__mulsf3>
   11e48:	f281a583          	lw	a1,-216(gp) # 1ca18 <__SDATA_BEGIN__+0x60>
   11e4c:	00050413          	mv	s0,a0
   11e50:	00048513          	mv	a0,s1
   11e54:	51c020ef          	jal	14370 <__mulsf3>
   11e58:	00050593          	mv	a1,a0
   11e5c:	00040513          	mv	a0,s0
   11e60:	3d5010ef          	jal	13a34 <__addsf3>
   11e64:	02812403          	lw	s0,40(sp)
   11e68:	02412483          	lw	s1,36(sp)
   11e6c:	01812a03          	lw	s4,24(sp)
   11e70:	01412a83          	lw	s5,20(sp)
   11e74:	cb5ff06f          	j	11b28 <__ieee754_logf+0xd4>
   11e78:	00050593          	mv	a1,a0
   11e7c:	000a8513          	mv	a0,s5
   11e80:	f35ff06f          	j	11db4 <__ieee754_logf+0x360>

00011e84 <__adddf3>:
   11e84:	00100737          	lui	a4,0x100
   11e88:	fe010113          	addi	sp,sp,-32
   11e8c:	fff70713          	addi	a4,a4,-1 # fffff <__BSS_END__+0xe3257>
   11e90:	00b777b3          	and	a5,a4,a1
   11e94:	0146d893          	srli	a7,a3,0x14
   11e98:	00d77733          	and	a4,a4,a3
   11e9c:	00812c23          	sw	s0,24(sp)
   11ea0:	0145d413          	srli	s0,a1,0x14
   11ea4:	00371713          	slli	a4,a4,0x3
   11ea8:	01d65813          	srli	a6,a2,0x1d
   11eac:	01212823          	sw	s2,16(sp)
   11eb0:	7ff47413          	andi	s0,s0,2047
   11eb4:	01f5d913          	srli	s2,a1,0x1f
   11eb8:	00379793          	slli	a5,a5,0x3
   11ebc:	01d55593          	srli	a1,a0,0x1d
   11ec0:	7ff8f893          	andi	a7,a7,2047
   11ec4:	00112e23          	sw	ra,28(sp)
   11ec8:	00912a23          	sw	s1,20(sp)
   11ecc:	01312623          	sw	s3,12(sp)
   11ed0:	01f6d693          	srli	a3,a3,0x1f
   11ed4:	00f5e7b3          	or	a5,a1,a5
   11ed8:	00e86833          	or	a6,a6,a4
   11edc:	00351513          	slli	a0,a0,0x3
   11ee0:	00361613          	slli	a2,a2,0x3
   11ee4:	41140733          	sub	a4,s0,a7
   11ee8:	7ff00593          	li	a1,2047
   11eec:	30d91463          	bne	s2,a3,121f4 <__adddf3+0x370>
   11ef0:	10e05263          	blez	a4,11ff4 <__adddf3+0x170>
   11ef4:	02089c63          	bnez	a7,11f2c <__adddf3+0xa8>
   11ef8:	00c86733          	or	a4,a6,a2
   11efc:	02070463          	beqz	a4,11f24 <__adddf3+0xa0>
   11f00:	fff40713          	addi	a4,s0,-1
   11f04:	00071e63          	bnez	a4,11f20 <__adddf3+0x9c>
   11f08:	00c50633          	add	a2,a0,a2
   11f0c:	010787b3          	add	a5,a5,a6
   11f10:	00a63533          	sltu	a0,a2,a0
   11f14:	00a787b3          	add	a5,a5,a0
   11f18:	00100413          	li	s0,1
   11f1c:	0600006f          	j	11f7c <__adddf3+0xf8>
   11f20:	00b41c63          	bne	s0,a1,11f38 <__adddf3+0xb4>
   11f24:	00050613          	mv	a2,a0
   11f28:	1d80006f          	j	12100 <__adddf3+0x27c>
   11f2c:	feb40ce3          	beq	s0,a1,11f24 <__adddf3+0xa0>
   11f30:	008006b7          	lui	a3,0x800
   11f34:	00d86833          	or	a6,a6,a3
   11f38:	03800693          	li	a3,56
   11f3c:	0ae6c663          	blt	a3,a4,11fe8 <__adddf3+0x164>
   11f40:	01f00693          	li	a3,31
   11f44:	02000893          	li	a7,32
   11f48:	06e6c863          	blt	a3,a4,11fb8 <__adddf3+0x134>
   11f4c:	40e888b3          	sub	a7,a7,a4
   11f50:	011816b3          	sll	a3,a6,a7
   11f54:	00e655b3          	srl	a1,a2,a4
   11f58:	011618b3          	sll	a7,a2,a7
   11f5c:	00b6e6b3          	or	a3,a3,a1
   11f60:	011038b3          	snez	a7,a7
   11f64:	0116e6b3          	or	a3,a3,a7
   11f68:	00e85733          	srl	a4,a6,a4
   11f6c:	00a68633          	add	a2,a3,a0
   11f70:	00f70733          	add	a4,a4,a5
   11f74:	00d636b3          	sltu	a3,a2,a3
   11f78:	00d707b3          	add	a5,a4,a3
   11f7c:	00879713          	slli	a4,a5,0x8
   11f80:	22075663          	bgez	a4,121ac <__adddf3+0x328>
   11f84:	00140413          	addi	s0,s0,1
   11f88:	7ff00713          	li	a4,2047
   11f8c:	60e40863          	beq	s0,a4,1259c <__adddf3+0x718>
   11f90:	ff800737          	lui	a4,0xff800
   11f94:	fff70713          	addi	a4,a4,-1 # ff7fffff <__BSS_END__+0xff7e3257>
   11f98:	00e7f7b3          	and	a5,a5,a4
   11f9c:	00165713          	srli	a4,a2,0x1
   11fa0:	00167613          	andi	a2,a2,1
   11fa4:	00c76733          	or	a4,a4,a2
   11fa8:	01f79613          	slli	a2,a5,0x1f
   11fac:	00e66633          	or	a2,a2,a4
   11fb0:	0017d793          	srli	a5,a5,0x1
   11fb4:	1f80006f          	j	121ac <__adddf3+0x328>
   11fb8:	fe070693          	addi	a3,a4,-32
   11fbc:	00d856b3          	srl	a3,a6,a3
   11fc0:	00000593          	li	a1,0
   11fc4:	01170863          	beq	a4,a7,11fd4 <__adddf3+0x150>
   11fc8:	04000593          	li	a1,64
   11fcc:	40e585b3          	sub	a1,a1,a4
   11fd0:	00b815b3          	sll	a1,a6,a1
   11fd4:	00c5e5b3          	or	a1,a1,a2
   11fd8:	00b035b3          	snez	a1,a1
   11fdc:	00b6e6b3          	or	a3,a3,a1
   11fe0:	00000713          	li	a4,0
   11fe4:	f89ff06f          	j	11f6c <__adddf3+0xe8>
   11fe8:	00c866b3          	or	a3,a6,a2
   11fec:	00d036b3          	snez	a3,a3
   11ff0:	ff1ff06f          	j	11fe0 <__adddf3+0x15c>
   11ff4:	0c070263          	beqz	a4,120b8 <__adddf3+0x234>
   11ff8:	40888733          	sub	a4,a7,s0
   11ffc:	02041263          	bnez	s0,12020 <__adddf3+0x19c>
   12000:	00a7e6b3          	or	a3,a5,a0
   12004:	00068863          	beqz	a3,12014 <__adddf3+0x190>
   12008:	fff70693          	addi	a3,a4,-1
   1200c:	ee068ee3          	beqz	a3,11f08 <__adddf3+0x84>
   12010:	02b71063          	bne	a4,a1,12030 <__adddf3+0x1ac>
   12014:	00080793          	mv	a5,a6
   12018:	00070413          	mv	s0,a4
   1201c:	0e40006f          	j	12100 <__adddf3+0x27c>
   12020:	58b88663          	beq	a7,a1,125ac <__adddf3+0x728>
   12024:	008006b7          	lui	a3,0x800
   12028:	00d7e7b3          	or	a5,a5,a3
   1202c:	00070693          	mv	a3,a4
   12030:	03800713          	li	a4,56
   12034:	06d74c63          	blt	a4,a3,120ac <__adddf3+0x228>
   12038:	01f00713          	li	a4,31
   1203c:	02000313          	li	t1,32
   12040:	02d74e63          	blt	a4,a3,1207c <__adddf3+0x1f8>
   12044:	40d30333          	sub	t1,t1,a3
   12048:	00679733          	sll	a4,a5,t1
   1204c:	00d555b3          	srl	a1,a0,a3
   12050:	00651333          	sll	t1,a0,t1
   12054:	00b76733          	or	a4,a4,a1
   12058:	00603333          	snez	t1,t1
   1205c:	00676733          	or	a4,a4,t1
   12060:	00d7d6b3          	srl	a3,a5,a3
   12064:	00c70633          	add	a2,a4,a2
   12068:	010686b3          	add	a3,a3,a6
   1206c:	00e63733          	sltu	a4,a2,a4
   12070:	00e687b3          	add	a5,a3,a4
   12074:	00088413          	mv	s0,a7
   12078:	f05ff06f          	j	11f7c <__adddf3+0xf8>
   1207c:	fe068713          	addi	a4,a3,-32 # 7fffe0 <__BSS_END__+0x7e3238>
   12080:	00e7d733          	srl	a4,a5,a4
   12084:	00000593          	li	a1,0
   12088:	00668863          	beq	a3,t1,12098 <__adddf3+0x214>
   1208c:	04000593          	li	a1,64
   12090:	40d585b3          	sub	a1,a1,a3
   12094:	00b795b3          	sll	a1,a5,a1
   12098:	00a5e5b3          	or	a1,a1,a0
   1209c:	00b035b3          	snez	a1,a1
   120a0:	00b76733          	or	a4,a4,a1
   120a4:	00000693          	li	a3,0
   120a8:	fbdff06f          	j	12064 <__adddf3+0x1e0>
   120ac:	00a7e733          	or	a4,a5,a0
   120b0:	00e03733          	snez	a4,a4
   120b4:	ff1ff06f          	j	120a4 <__adddf3+0x220>
   120b8:	00140713          	addi	a4,s0,1
   120bc:	7fe77693          	andi	a3,a4,2046
   120c0:	0c069263          	bnez	a3,12184 <__adddf3+0x300>
   120c4:	00a7e733          	or	a4,a5,a0
   120c8:	0a041463          	bnez	s0,12170 <__adddf3+0x2ec>
   120cc:	4a070863          	beqz	a4,1257c <__adddf3+0x6f8>
   120d0:	00c86733          	or	a4,a6,a2
   120d4:	4a070863          	beqz	a4,12584 <__adddf3+0x700>
   120d8:	00c50633          	add	a2,a0,a2
   120dc:	010787b3          	add	a5,a5,a6
   120e0:	00a63533          	sltu	a0,a2,a0
   120e4:	00a787b3          	add	a5,a5,a0
   120e8:	00879713          	slli	a4,a5,0x8
   120ec:	32075a63          	bgez	a4,12420 <__adddf3+0x59c>
   120f0:	ff800737          	lui	a4,0xff800
   120f4:	fff70713          	addi	a4,a4,-1 # ff7fffff <__BSS_END__+0xff7e3257>
   120f8:	00e7f7b3          	and	a5,a5,a4
   120fc:	00100413          	li	s0,1
   12100:	01d79713          	slli	a4,a5,0x1d
   12104:	00365613          	srli	a2,a2,0x3
   12108:	7ff00693          	li	a3,2047
   1210c:	00c76733          	or	a4,a4,a2
   12110:	0037d793          	srli	a5,a5,0x3
   12114:	00d41e63          	bne	s0,a3,12130 <__adddf3+0x2ac>
   12118:	00f76733          	or	a4,a4,a5
   1211c:	00000793          	li	a5,0
   12120:	00070863          	beqz	a4,12130 <__adddf3+0x2ac>
   12124:	000807b7          	lui	a5,0x80
   12128:	00000713          	li	a4,0
   1212c:	00000913          	li	s2,0
   12130:	7ff47413          	andi	s0,s0,2047
   12134:	00c79793          	slli	a5,a5,0xc
   12138:	00c7d793          	srli	a5,a5,0xc
   1213c:	01441413          	slli	s0,s0,0x14
   12140:	01f91593          	slli	a1,s2,0x1f
   12144:	00f46433          	or	s0,s0,a5
   12148:	01c12083          	lw	ra,28(sp)
   1214c:	00b467b3          	or	a5,s0,a1
   12150:	01812403          	lw	s0,24(sp)
   12154:	01412483          	lw	s1,20(sp)
   12158:	01012903          	lw	s2,16(sp)
   1215c:	00c12983          	lw	s3,12(sp)
   12160:	00070513          	mv	a0,a4
   12164:	00078593          	mv	a1,a5
   12168:	02010113          	addi	sp,sp,32
   1216c:	00008067          	ret
   12170:	40070e63          	beqz	a4,1258c <__adddf3+0x708>
   12174:	00c86833          	or	a6,a6,a2
   12178:	2c081c63          	bnez	a6,12450 <__adddf3+0x5cc>
   1217c:	00050613          	mv	a2,a0
   12180:	4100006f          	j	12590 <__adddf3+0x70c>
   12184:	40b70a63          	beq	a4,a1,12598 <__adddf3+0x714>
   12188:	00c50633          	add	a2,a0,a2
   1218c:	00a63533          	sltu	a0,a2,a0
   12190:	010787b3          	add	a5,a5,a6
   12194:	00a787b3          	add	a5,a5,a0
   12198:	01f79693          	slli	a3,a5,0x1f
   1219c:	00165613          	srli	a2,a2,0x1
   121a0:	00c6e633          	or	a2,a3,a2
   121a4:	0017d793          	srli	a5,a5,0x1
   121a8:	00070413          	mv	s0,a4
   121ac:	00767713          	andi	a4,a2,7
   121b0:	02070063          	beqz	a4,121d0 <__adddf3+0x34c>
   121b4:	00f67713          	andi	a4,a2,15
   121b8:	00400693          	li	a3,4
   121bc:	00d70a63          	beq	a4,a3,121d0 <__adddf3+0x34c>
   121c0:	00d60733          	add	a4,a2,a3
   121c4:	00c736b3          	sltu	a3,a4,a2
   121c8:	00d787b3          	add	a5,a5,a3
   121cc:	00070613          	mv	a2,a4
   121d0:	00879713          	slli	a4,a5,0x8
   121d4:	f20756e3          	bgez	a4,12100 <__adddf3+0x27c>
   121d8:	00140413          	addi	s0,s0,1
   121dc:	7ff00713          	li	a4,2047
   121e0:	3ae40e63          	beq	s0,a4,1259c <__adddf3+0x718>
   121e4:	ff800737          	lui	a4,0xff800
   121e8:	fff70713          	addi	a4,a4,-1 # ff7fffff <__BSS_END__+0xff7e3257>
   121ec:	00e7f7b3          	and	a5,a5,a4
   121f0:	f11ff06f          	j	12100 <__adddf3+0x27c>
   121f4:	0ee05063          	blez	a4,122d4 <__adddf3+0x450>
   121f8:	08089863          	bnez	a7,12288 <__adddf3+0x404>
   121fc:	00c86733          	or	a4,a6,a2
   12200:	d20702e3          	beqz	a4,11f24 <__adddf3+0xa0>
   12204:	fff40713          	addi	a4,s0,-1
   12208:	00071e63          	bnez	a4,12224 <__adddf3+0x3a0>
   1220c:	40c50633          	sub	a2,a0,a2
   12210:	410787b3          	sub	a5,a5,a6
   12214:	00c53533          	sltu	a0,a0,a2
   12218:	40a787b3          	sub	a5,a5,a0
   1221c:	00100413          	li	s0,1
   12220:	04c0006f          	j	1226c <__adddf3+0x3e8>
   12224:	d0b400e3          	beq	s0,a1,11f24 <__adddf3+0xa0>
   12228:	03800693          	li	a3,56
   1222c:	08e6ce63          	blt	a3,a4,122c8 <__adddf3+0x444>
   12230:	01f00693          	li	a3,31
   12234:	02000893          	li	a7,32
   12238:	06e6c063          	blt	a3,a4,12298 <__adddf3+0x414>
   1223c:	40e888b3          	sub	a7,a7,a4
   12240:	011816b3          	sll	a3,a6,a7
   12244:	00e655b3          	srl	a1,a2,a4
   12248:	011618b3          	sll	a7,a2,a7
   1224c:	00b6e6b3          	or	a3,a3,a1
   12250:	011038b3          	snez	a7,a7
   12254:	0116e6b3          	or	a3,a3,a7
   12258:	00e85733          	srl	a4,a6,a4
   1225c:	40d50633          	sub	a2,a0,a3
   12260:	40e78733          	sub	a4,a5,a4
   12264:	00c53533          	sltu	a0,a0,a2
   12268:	40a707b3          	sub	a5,a4,a0
   1226c:	00879713          	slli	a4,a5,0x8
   12270:	f2075ee3          	bgez	a4,121ac <__adddf3+0x328>
   12274:	008004b7          	lui	s1,0x800
   12278:	fff48493          	addi	s1,s1,-1 # 7fffff <__BSS_END__+0x7e3257>
   1227c:	0097f4b3          	and	s1,a5,s1
   12280:	00060993          	mv	s3,a2
   12284:	2140006f          	j	12498 <__adddf3+0x614>
   12288:	c8b40ee3          	beq	s0,a1,11f24 <__adddf3+0xa0>
   1228c:	008006b7          	lui	a3,0x800
   12290:	00d86833          	or	a6,a6,a3
   12294:	f95ff06f          	j	12228 <__adddf3+0x3a4>
   12298:	fe070693          	addi	a3,a4,-32
   1229c:	00d856b3          	srl	a3,a6,a3
   122a0:	00000593          	li	a1,0
   122a4:	01170863          	beq	a4,a7,122b4 <__adddf3+0x430>
   122a8:	04000593          	li	a1,64
   122ac:	40e585b3          	sub	a1,a1,a4
   122b0:	00b815b3          	sll	a1,a6,a1
   122b4:	00c5e5b3          	or	a1,a1,a2
   122b8:	00b035b3          	snez	a1,a1
   122bc:	00b6e6b3          	or	a3,a3,a1
   122c0:	00000713          	li	a4,0
   122c4:	f99ff06f          	j	1225c <__adddf3+0x3d8>
   122c8:	00c866b3          	or	a3,a6,a2
   122cc:	00d036b3          	snez	a3,a3
   122d0:	ff1ff06f          	j	122c0 <__adddf3+0x43c>
   122d4:	0e070663          	beqz	a4,123c0 <__adddf3+0x53c>
   122d8:	40888333          	sub	t1,a7,s0
   122dc:	04041263          	bnez	s0,12320 <__adddf3+0x49c>
   122e0:	00a7e733          	or	a4,a5,a0
   122e4:	02070663          	beqz	a4,12310 <__adddf3+0x48c>
   122e8:	fff30713          	addi	a4,t1,-1 # 7fffffff <__BSS_END__+0x7ffe3257>
   122ec:	02071063          	bnez	a4,1230c <__adddf3+0x488>
   122f0:	40a60533          	sub	a0,a2,a0
   122f4:	00a63733          	sltu	a4,a2,a0
   122f8:	40f807b3          	sub	a5,a6,a5
   122fc:	00050613          	mv	a2,a0
   12300:	40e787b3          	sub	a5,a5,a4
   12304:	00068913          	mv	s2,a3
   12308:	f15ff06f          	j	1221c <__adddf3+0x398>
   1230c:	02b31263          	bne	t1,a1,12330 <__adddf3+0x4ac>
   12310:	00068913          	mv	s2,a3
   12314:	00080793          	mv	a5,a6
   12318:	00030413          	mv	s0,t1
   1231c:	de5ff06f          	j	12100 <__adddf3+0x27c>
   12320:	28b88463          	beq	a7,a1,125a8 <__adddf3+0x724>
   12324:	00800737          	lui	a4,0x800
   12328:	00e7e7b3          	or	a5,a5,a4
   1232c:	00030713          	mv	a4,t1
   12330:	03800593          	li	a1,56
   12334:	08e5c063          	blt	a1,a4,123b4 <__adddf3+0x530>
   12338:	01f00593          	li	a1,31
   1233c:	02000e13          	li	t3,32
   12340:	04e5c263          	blt	a1,a4,12384 <__adddf3+0x500>
   12344:	40ee0e33          	sub	t3,t3,a4
   12348:	01c795b3          	sll	a1,a5,t3
   1234c:	00e55333          	srl	t1,a0,a4
   12350:	01c51e33          	sll	t3,a0,t3
   12354:	0065e5b3          	or	a1,a1,t1
   12358:	01c03e33          	snez	t3,t3
   1235c:	01c5e5b3          	or	a1,a1,t3
   12360:	00e7d733          	srl	a4,a5,a4
   12364:	40b605b3          	sub	a1,a2,a1
   12368:	00b637b3          	sltu	a5,a2,a1
   1236c:	40e80733          	sub	a4,a6,a4
   12370:	00058613          	mv	a2,a1
   12374:	40f707b3          	sub	a5,a4,a5
   12378:	00088413          	mv	s0,a7
   1237c:	00068913          	mv	s2,a3
   12380:	eedff06f          	j	1226c <__adddf3+0x3e8>
   12384:	fe070593          	addi	a1,a4,-32 # 7fffe0 <__BSS_END__+0x7e3238>
   12388:	00b7d5b3          	srl	a1,a5,a1
   1238c:	00000313          	li	t1,0
   12390:	01c70863          	beq	a4,t3,123a0 <__adddf3+0x51c>
   12394:	04000313          	li	t1,64
   12398:	40e30333          	sub	t1,t1,a4
   1239c:	00679333          	sll	t1,a5,t1
   123a0:	00a36333          	or	t1,t1,a0
   123a4:	00603333          	snez	t1,t1
   123a8:	0065e5b3          	or	a1,a1,t1
   123ac:	00000713          	li	a4,0
   123b0:	fb5ff06f          	j	12364 <__adddf3+0x4e0>
   123b4:	00a7e5b3          	or	a1,a5,a0
   123b8:	00b035b3          	snez	a1,a1
   123bc:	ff1ff06f          	j	123ac <__adddf3+0x528>
   123c0:	00140713          	addi	a4,s0,1
   123c4:	7fe77713          	andi	a4,a4,2046
   123c8:	0a071063          	bnez	a4,12468 <__adddf3+0x5e4>
   123cc:	00a7e8b3          	or	a7,a5,a0
   123d0:	00c86733          	or	a4,a6,a2
   123d4:	06041863          	bnez	s0,12444 <__adddf3+0x5c0>
   123d8:	00089a63          	bnez	a7,123ec <__adddf3+0x568>
   123dc:	00080793          	mv	a5,a6
   123e0:	02071e63          	bnez	a4,1241c <__adddf3+0x598>
   123e4:	00000913          	li	s2,0
   123e8:	1b40006f          	j	1259c <__adddf3+0x718>
   123ec:	18070c63          	beqz	a4,12584 <__adddf3+0x700>
   123f0:	40c505b3          	sub	a1,a0,a2
   123f4:	00b538b3          	sltu	a7,a0,a1
   123f8:	41078733          	sub	a4,a5,a6
   123fc:	41170733          	sub	a4,a4,a7
   12400:	00871893          	slli	a7,a4,0x8
   12404:	0208d663          	bgez	a7,12430 <__adddf3+0x5ac>
   12408:	40a60533          	sub	a0,a2,a0
   1240c:	00a63733          	sltu	a4,a2,a0
   12410:	40f807b3          	sub	a5,a6,a5
   12414:	00050613          	mv	a2,a0
   12418:	40e787b3          	sub	a5,a5,a4
   1241c:	00068913          	mv	s2,a3
   12420:	00f66733          	or	a4,a2,a5
   12424:	1a070063          	beqz	a4,125c4 <__adddf3+0x740>
   12428:	00000413          	li	s0,0
   1242c:	d81ff06f          	j	121ac <__adddf3+0x328>
   12430:	00e5e633          	or	a2,a1,a4
   12434:	18060263          	beqz	a2,125b8 <__adddf3+0x734>
   12438:	00070793          	mv	a5,a4
   1243c:	00058613          	mv	a2,a1
   12440:	fe1ff06f          	j	12420 <__adddf3+0x59c>
   12444:	00089e63          	bnez	a7,12460 <__adddf3+0x5dc>
   12448:	00068913          	mv	s2,a3
   1244c:	14071063          	bnez	a4,1258c <__adddf3+0x708>
   12450:	00000913          	li	s2,0
   12454:	004007b7          	lui	a5,0x400
   12458:	00000613          	li	a2,0
   1245c:	1340006f          	j	12590 <__adddf3+0x70c>
   12460:	d0070ee3          	beqz	a4,1217c <__adddf3+0x2f8>
   12464:	fedff06f          	j	12450 <__adddf3+0x5cc>
   12468:	40c50733          	sub	a4,a0,a2
   1246c:	00e535b3          	sltu	a1,a0,a4
   12470:	410784b3          	sub	s1,a5,a6
   12474:	40b484b3          	sub	s1,s1,a1
   12478:	00849593          	slli	a1,s1,0x8
   1247c:	00070993          	mv	s3,a4
   12480:	0605de63          	bgez	a1,124fc <__adddf3+0x678>
   12484:	40a609b3          	sub	s3,a2,a0
   12488:	40f804b3          	sub	s1,a6,a5
   1248c:	01363633          	sltu	a2,a2,s3
   12490:	40c484b3          	sub	s1,s1,a2
   12494:	00068913          	mv	s2,a3
   12498:	06048e63          	beqz	s1,12514 <__adddf3+0x690>
   1249c:	00048513          	mv	a0,s1
   124a0:	261020ef          	jal	14f00 <__clzsi2>
   124a4:	ff850713          	addi	a4,a0,-8 # 3f7ffff8 <__BSS_END__+0x3f7e3250>
   124a8:	02000793          	li	a5,32
   124ac:	40e787b3          	sub	a5,a5,a4
   124b0:	00e494b3          	sll	s1,s1,a4
   124b4:	00f9d7b3          	srl	a5,s3,a5
   124b8:	0097e7b3          	or	a5,a5,s1
   124bc:	00e99633          	sll	a2,s3,a4
   124c0:	0a874463          	blt	a4,s0,12568 <__adddf3+0x6e4>
   124c4:	40870733          	sub	a4,a4,s0
   124c8:	00170513          	addi	a0,a4,1
   124cc:	01f00693          	li	a3,31
   124d0:	02000593          	li	a1,32
   124d4:	06a6c263          	blt	a3,a0,12538 <__adddf3+0x6b4>
   124d8:	40a585b3          	sub	a1,a1,a0
   124dc:	00b79733          	sll	a4,a5,a1
   124e0:	00a656b3          	srl	a3,a2,a0
   124e4:	00b615b3          	sll	a1,a2,a1
   124e8:	00d76733          	or	a4,a4,a3
   124ec:	00b035b3          	snez	a1,a1
   124f0:	00b76633          	or	a2,a4,a1
   124f4:	00a7d7b3          	srl	a5,a5,a0
   124f8:	f29ff06f          	j	12420 <__adddf3+0x59c>
   124fc:	00976633          	or	a2,a4,s1
   12500:	f8061ce3          	bnez	a2,12498 <__adddf3+0x614>
   12504:	00000913          	li	s2,0
   12508:	00000793          	li	a5,0
   1250c:	00000413          	li	s0,0
   12510:	bf1ff06f          	j	12100 <__adddf3+0x27c>
   12514:	00098513          	mv	a0,s3
   12518:	1e9020ef          	jal	14f00 <__clzsi2>
   1251c:	01850713          	addi	a4,a0,24
   12520:	01f00793          	li	a5,31
   12524:	f8e7d2e3          	bge	a5,a4,124a8 <__adddf3+0x624>
   12528:	ff850793          	addi	a5,a0,-8
   1252c:	00f997b3          	sll	a5,s3,a5
   12530:	00000613          	li	a2,0
   12534:	f8dff06f          	j	124c0 <__adddf3+0x63c>
   12538:	fe170713          	addi	a4,a4,-31
   1253c:	00e7d733          	srl	a4,a5,a4
   12540:	00000693          	li	a3,0
   12544:	00b50863          	beq	a0,a1,12554 <__adddf3+0x6d0>
   12548:	04000693          	li	a3,64
   1254c:	40a686b3          	sub	a3,a3,a0
   12550:	00d796b3          	sll	a3,a5,a3
   12554:	00d666b3          	or	a3,a2,a3
   12558:	00d036b3          	snez	a3,a3
   1255c:	00d76633          	or	a2,a4,a3
   12560:	00000793          	li	a5,0
   12564:	ebdff06f          	j	12420 <__adddf3+0x59c>
   12568:	40e40433          	sub	s0,s0,a4
   1256c:	ff800737          	lui	a4,0xff800
   12570:	fff70713          	addi	a4,a4,-1 # ff7fffff <__BSS_END__+0xff7e3257>
   12574:	00e7f7b3          	and	a5,a5,a4
   12578:	c35ff06f          	j	121ac <__adddf3+0x328>
   1257c:	00080793          	mv	a5,a6
   12580:	ea1ff06f          	j	12420 <__adddf3+0x59c>
   12584:	00050613          	mv	a2,a0
   12588:	e99ff06f          	j	12420 <__adddf3+0x59c>
   1258c:	00080793          	mv	a5,a6
   12590:	00058413          	mv	s0,a1
   12594:	b6dff06f          	j	12100 <__adddf3+0x27c>
   12598:	00070413          	mv	s0,a4
   1259c:	00000793          	li	a5,0
   125a0:	00000613          	li	a2,0
   125a4:	b5dff06f          	j	12100 <__adddf3+0x27c>
   125a8:	00068913          	mv	s2,a3
   125ac:	00080793          	mv	a5,a6
   125b0:	00088413          	mv	s0,a7
   125b4:	b4dff06f          	j	12100 <__adddf3+0x27c>
   125b8:	00000913          	li	s2,0
   125bc:	00000793          	li	a5,0
   125c0:	b41ff06f          	j	12100 <__adddf3+0x27c>
   125c4:	00000793          	li	a5,0
   125c8:	00000613          	li	a2,0
   125cc:	f41ff06f          	j	1250c <__adddf3+0x688>

000125d0 <__divdf3>:
   125d0:	fb010113          	addi	sp,sp,-80
   125d4:	03512a23          	sw	s5,52(sp)
   125d8:	0145da93          	srli	s5,a1,0x14
   125dc:	04812423          	sw	s0,72(sp)
   125e0:	05212023          	sw	s2,64(sp)
   125e4:	03312e23          	sw	s3,60(sp)
   125e8:	03412c23          	sw	s4,56(sp)
   125ec:	03712623          	sw	s7,44(sp)
   125f0:	00c59413          	slli	s0,a1,0xc
   125f4:	04112623          	sw	ra,76(sp)
   125f8:	04912223          	sw	s1,68(sp)
   125fc:	03612823          	sw	s6,48(sp)
   12600:	03812423          	sw	s8,40(sp)
   12604:	03912223          	sw	s9,36(sp)
   12608:	03a12023          	sw	s10,32(sp)
   1260c:	01b12e23          	sw	s11,28(sp)
   12610:	7ffafa93          	andi	s5,s5,2047
   12614:	00050913          	mv	s2,a0
   12618:	00060b93          	mv	s7,a2
   1261c:	00068a13          	mv	s4,a3
   12620:	00c45413          	srli	s0,s0,0xc
   12624:	01f5d993          	srli	s3,a1,0x1f
   12628:	0a0a8063          	beqz	s5,126c8 <__divdf3+0xf8>
   1262c:	7ff00793          	li	a5,2047
   12630:	10fa8063          	beq	s5,a5,12730 <__divdf3+0x160>
   12634:	01d55c93          	srli	s9,a0,0x1d
   12638:	00341413          	slli	s0,s0,0x3
   1263c:	008cecb3          	or	s9,s9,s0
   12640:	008007b7          	lui	a5,0x800
   12644:	00fcecb3          	or	s9,s9,a5
   12648:	00351493          	slli	s1,a0,0x3
   1264c:	c01a8a93          	addi	s5,s5,-1023
   12650:	00000b13          	li	s6,0
   12654:	014a5793          	srli	a5,s4,0x14
   12658:	00ca1413          	slli	s0,s4,0xc
   1265c:	7ff7f793          	andi	a5,a5,2047
   12660:	00c45413          	srli	s0,s0,0xc
   12664:	01fa5a13          	srli	s4,s4,0x1f
   12668:	0e078e63          	beqz	a5,12764 <__divdf3+0x194>
   1266c:	7ff00713          	li	a4,2047
   12670:	16e78263          	beq	a5,a4,127d4 <__divdf3+0x204>
   12674:	00341413          	slli	s0,s0,0x3
   12678:	01dbd713          	srli	a4,s7,0x1d
   1267c:	00876733          	or	a4,a4,s0
   12680:	00800437          	lui	s0,0x800
   12684:	00876433          	or	s0,a4,s0
   12688:	003b9593          	slli	a1,s7,0x3
   1268c:	c0178793          	addi	a5,a5,-1023 # 7ffc01 <__BSS_END__+0x7e2e59>
   12690:	00000713          	li	a4,0
   12694:	40fa8ab3          	sub	s5,s5,a5
   12698:	002b1793          	slli	a5,s6,0x2
   1269c:	00e7e7b3          	or	a5,a5,a4
   126a0:	fff78793          	addi	a5,a5,-1
   126a4:	00e00693          	li	a3,14
   126a8:	0149c933          	xor	s2,s3,s4
   126ac:	14f6ec63          	bltu	a3,a5,12804 <__divdf3+0x234>
   126b0:	0001b6b7          	lui	a3,0x1b
   126b4:	00279793          	slli	a5,a5,0x2
   126b8:	a7468693          	addi	a3,a3,-1420 # 1aa74 <_exit+0x240>
   126bc:	00d787b3          	add	a5,a5,a3
   126c0:	0007a783          	lw	a5,0(a5)
   126c4:	00078067          	jr	a5
   126c8:	00a46cb3          	or	s9,s0,a0
   126cc:	060c8c63          	beqz	s9,12744 <__divdf3+0x174>
   126d0:	04040063          	beqz	s0,12710 <__divdf3+0x140>
   126d4:	00040513          	mv	a0,s0
   126d8:	029020ef          	jal	14f00 <__clzsi2>
   126dc:	00050793          	mv	a5,a0
   126e0:	ff550713          	addi	a4,a0,-11
   126e4:	01d00c93          	li	s9,29
   126e8:	ff878693          	addi	a3,a5,-8
   126ec:	40ec8cb3          	sub	s9,s9,a4
   126f0:	00d41433          	sll	s0,s0,a3
   126f4:	01995cb3          	srl	s9,s2,s9
   126f8:	008cecb3          	or	s9,s9,s0
   126fc:	00d91433          	sll	s0,s2,a3
   12700:	c0d00a93          	li	s5,-1011
   12704:	40fa8ab3          	sub	s5,s5,a5
   12708:	00040493          	mv	s1,s0
   1270c:	f45ff06f          	j	12650 <__divdf3+0x80>
   12710:	7f0020ef          	jal	14f00 <__clzsi2>
   12714:	01550713          	addi	a4,a0,21
   12718:	01c00693          	li	a3,28
   1271c:	02050793          	addi	a5,a0,32
   12720:	fce6d2e3          	bge	a3,a4,126e4 <__divdf3+0x114>
   12724:	ff850513          	addi	a0,a0,-8
   12728:	00a91cb3          	sll	s9,s2,a0
   1272c:	fd5ff06f          	j	12700 <__divdf3+0x130>
   12730:	00a46cb3          	or	s9,s0,a0
   12734:	020c9063          	bnez	s9,12754 <__divdf3+0x184>
   12738:	00000493          	li	s1,0
   1273c:	00200b13          	li	s6,2
   12740:	f15ff06f          	j	12654 <__divdf3+0x84>
   12744:	00000493          	li	s1,0
   12748:	00000a93          	li	s5,0
   1274c:	00100b13          	li	s6,1
   12750:	f05ff06f          	j	12654 <__divdf3+0x84>
   12754:	00050493          	mv	s1,a0
   12758:	00040c93          	mv	s9,s0
   1275c:	00300b13          	li	s6,3
   12760:	ef5ff06f          	j	12654 <__divdf3+0x84>
   12764:	017465b3          	or	a1,s0,s7
   12768:	08058063          	beqz	a1,127e8 <__divdf3+0x218>
   1276c:	04040263          	beqz	s0,127b0 <__divdf3+0x1e0>
   12770:	00040513          	mv	a0,s0
   12774:	78c020ef          	jal	14f00 <__clzsi2>
   12778:	00050693          	mv	a3,a0
   1277c:	ff550793          	addi	a5,a0,-11
   12780:	01d00713          	li	a4,29
   12784:	ff868613          	addi	a2,a3,-8
   12788:	40f70733          	sub	a4,a4,a5
   1278c:	00c41433          	sll	s0,s0,a2
   12790:	00ebd733          	srl	a4,s7,a4
   12794:	00876733          	or	a4,a4,s0
   12798:	00cb9433          	sll	s0,s7,a2
   1279c:	c0d00793          	li	a5,-1011
   127a0:	00040593          	mv	a1,s0
   127a4:	40d787b3          	sub	a5,a5,a3
   127a8:	00070413          	mv	s0,a4
   127ac:	ee5ff06f          	j	12690 <__divdf3+0xc0>
   127b0:	000b8513          	mv	a0,s7
   127b4:	74c020ef          	jal	14f00 <__clzsi2>
   127b8:	01550793          	addi	a5,a0,21
   127bc:	01c00713          	li	a4,28
   127c0:	02050693          	addi	a3,a0,32
   127c4:	faf75ee3          	bge	a4,a5,12780 <__divdf3+0x1b0>
   127c8:	ff850713          	addi	a4,a0,-8
   127cc:	00eb9733          	sll	a4,s7,a4
   127d0:	fcdff06f          	j	1279c <__divdf3+0x1cc>
   127d4:	017465b3          	or	a1,s0,s7
   127d8:	02059063          	bnez	a1,127f8 <__divdf3+0x228>
   127dc:	00000413          	li	s0,0
   127e0:	00200713          	li	a4,2
   127e4:	eb1ff06f          	j	12694 <__divdf3+0xc4>
   127e8:	00000413          	li	s0,0
   127ec:	00000793          	li	a5,0
   127f0:	00100713          	li	a4,1
   127f4:	ea1ff06f          	j	12694 <__divdf3+0xc4>
   127f8:	000b8593          	mv	a1,s7
   127fc:	00300713          	li	a4,3
   12800:	e95ff06f          	j	12694 <__divdf3+0xc4>
   12804:	01946663          	bltu	s0,s9,12810 <__divdf3+0x240>
   12808:	408c9a63          	bne	s9,s0,12c1c <__divdf3+0x64c>
   1280c:	40b4e863          	bltu	s1,a1,12c1c <__divdf3+0x64c>
   12810:	01fc9713          	slli	a4,s9,0x1f
   12814:	0014d793          	srli	a5,s1,0x1
   12818:	01f49c13          	slli	s8,s1,0x1f
   1281c:	001cdc93          	srli	s9,s9,0x1
   12820:	00f764b3          	or	s1,a4,a5
   12824:	00841793          	slli	a5,s0,0x8
   12828:	0185db13          	srli	s6,a1,0x18
   1282c:	00fb6b33          	or	s6,s6,a5
   12830:	0107dd13          	srli	s10,a5,0x10
   12834:	010b1793          	slli	a5,s6,0x10
   12838:	0107d793          	srli	a5,a5,0x10
   1283c:	00859b93          	slli	s7,a1,0x8
   12840:	000c8513          	mv	a0,s9
   12844:	000d0593          	mv	a1,s10
   12848:	00f12623          	sw	a5,12(sp)
   1284c:	590020ef          	jal	14ddc <__hidden___udivsi3>
   12850:	00050593          	mv	a1,a0
   12854:	00050a13          	mv	s4,a0
   12858:	010b1513          	slli	a0,s6,0x10
   1285c:	01055513          	srli	a0,a0,0x10
   12860:	4c4020ef          	jal	14d24 <__mulsi3>
   12864:	00050993          	mv	s3,a0
   12868:	000d0593          	mv	a1,s10
   1286c:	000c8513          	mv	a0,s9
   12870:	5b4020ef          	jal	14e24 <__umodsi3>
   12874:	01051513          	slli	a0,a0,0x10
   12878:	0104d793          	srli	a5,s1,0x10
   1287c:	00a7e7b3          	or	a5,a5,a0
   12880:	0137fa63          	bgeu	a5,s3,12894 <__divdf3+0x2c4>
   12884:	00fb07b3          	add	a5,s6,a5
   12888:	0167e463          	bltu	a5,s6,12890 <__divdf3+0x2c0>
   1288c:	3937ee63          	bltu	a5,s3,12c28 <__divdf3+0x658>
   12890:	fffa0a13          	addi	s4,s4,-1
   12894:	413789b3          	sub	s3,a5,s3
   12898:	000d0593          	mv	a1,s10
   1289c:	00098513          	mv	a0,s3
   128a0:	53c020ef          	jal	14ddc <__hidden___udivsi3>
   128a4:	00050593          	mv	a1,a0
   128a8:	00050413          	mv	s0,a0
   128ac:	010b1513          	slli	a0,s6,0x10
   128b0:	01055513          	srli	a0,a0,0x10
   128b4:	470020ef          	jal	14d24 <__mulsi3>
   128b8:	00050c93          	mv	s9,a0
   128bc:	000d0593          	mv	a1,s10
   128c0:	00098513          	mv	a0,s3
   128c4:	560020ef          	jal	14e24 <__umodsi3>
   128c8:	01049993          	slli	s3,s1,0x10
   128cc:	01051513          	slli	a0,a0,0x10
   128d0:	0109d993          	srli	s3,s3,0x10
   128d4:	00a9e9b3          	or	s3,s3,a0
   128d8:	0199fa63          	bgeu	s3,s9,128ec <__divdf3+0x31c>
   128dc:	013b09b3          	add	s3,s6,s3
   128e0:	0199f463          	bgeu	s3,s9,128e8 <__divdf3+0x318>
   128e4:	3569f863          	bgeu	s3,s6,12c34 <__divdf3+0x664>
   128e8:	fff40413          	addi	s0,s0,-1 # 7fffff <__BSS_END__+0x7e3257>
   128ec:	010a1513          	slli	a0,s4,0x10
   128f0:	00856733          	or	a4,a0,s0
   128f4:	010b9693          	slli	a3,s7,0x10
   128f8:	0106d693          	srli	a3,a3,0x10
   128fc:	01071513          	slli	a0,a4,0x10
   12900:	419989b3          	sub	s3,s3,s9
   12904:	010bdd93          	srli	s11,s7,0x10
   12908:	01055513          	srli	a0,a0,0x10
   1290c:	00d12623          	sw	a3,12(sp)
   12910:	00068593          	mv	a1,a3
   12914:	410020ef          	jal	14d24 <__mulsi3>
   12918:	00050813          	mv	a6,a0
   1291c:	01071513          	slli	a0,a4,0x10
   12920:	01055513          	srli	a0,a0,0x10
   12924:	000d8593          	mv	a1,s11
   12928:	3fc020ef          	jal	14d24 <__mulsi3>
   1292c:	010b9593          	slli	a1,s7,0x10
   12930:	00050793          	mv	a5,a0
   12934:	0105d593          	srli	a1,a1,0x10
   12938:	01075513          	srli	a0,a4,0x10
   1293c:	3e8020ef          	jal	14d24 <__mulsi3>
   12940:	00050893          	mv	a7,a0
   12944:	000d8593          	mv	a1,s11
   12948:	01075513          	srli	a0,a4,0x10
   1294c:	3d8020ef          	jal	14d24 <__mulsi3>
   12950:	01085a13          	srli	s4,a6,0x10
   12954:	011787b3          	add	a5,a5,a7
   12958:	00fa0a33          	add	s4,s4,a5
   1295c:	011a7663          	bgeu	s4,a7,12968 <__divdf3+0x398>
   12960:	000107b7          	lui	a5,0x10
   12964:	00f50533          	add	a0,a0,a5
   12968:	010a5793          	srli	a5,s4,0x10
   1296c:	01081813          	slli	a6,a6,0x10
   12970:	010a1a13          	slli	s4,s4,0x10
   12974:	01085813          	srli	a6,a6,0x10
   12978:	00a78533          	add	a0,a5,a0
   1297c:	010a0a33          	add	s4,s4,a6
   12980:	00a9e663          	bltu	s3,a0,1298c <__divdf3+0x3bc>
   12984:	2aa99e63          	bne	s3,a0,12c40 <__divdf3+0x670>
   12988:	2b4c7c63          	bgeu	s8,s4,12c40 <__divdf3+0x670>
   1298c:	017c07b3          	add	a5,s8,s7
   12990:	0187b6b3          	sltu	a3,a5,s8
   12994:	01668633          	add	a2,a3,s6
   12998:	00c989b3          	add	s3,s3,a2
   1299c:	fff70413          	addi	s0,a4,-1
   129a0:	00078c13          	mv	s8,a5
   129a4:	013b6663          	bltu	s6,s3,129b0 <__divdf3+0x3e0>
   129a8:	02069463          	bnez	a3,129d0 <__divdf3+0x400>
   129ac:	033b1263          	bne	s6,s3,129d0 <__divdf3+0x400>
   129b0:	00a9e663          	bltu	s3,a0,129bc <__divdf3+0x3ec>
   129b4:	01351e63          	bne	a0,s3,129d0 <__divdf3+0x400>
   129b8:	0147fc63          	bgeu	a5,s4,129d0 <__divdf3+0x400>
   129bc:	00fb8c33          	add	s8,s7,a5
   129c0:	017c37b3          	sltu	a5,s8,s7
   129c4:	016787b3          	add	a5,a5,s6
   129c8:	ffe70413          	addi	s0,a4,-2
   129cc:	00f989b3          	add	s3,s3,a5
   129d0:	414c0a33          	sub	s4,s8,s4
   129d4:	40a989b3          	sub	s3,s3,a0
   129d8:	014c37b3          	sltu	a5,s8,s4
   129dc:	40f989b3          	sub	s3,s3,a5
   129e0:	fff00593          	li	a1,-1
   129e4:	193b0263          	beq	s6,s3,12b68 <__divdf3+0x598>
   129e8:	000d0593          	mv	a1,s10
   129ec:	00098513          	mv	a0,s3
   129f0:	3ec020ef          	jal	14ddc <__hidden___udivsi3>
   129f4:	00050593          	mv	a1,a0
   129f8:	00050493          	mv	s1,a0
   129fc:	010b1513          	slli	a0,s6,0x10
   12a00:	01055513          	srli	a0,a0,0x10
   12a04:	320020ef          	jal	14d24 <__mulsi3>
   12a08:	00050c13          	mv	s8,a0
   12a0c:	000d0593          	mv	a1,s10
   12a10:	00098513          	mv	a0,s3
   12a14:	410020ef          	jal	14e24 <__umodsi3>
   12a18:	01051513          	slli	a0,a0,0x10
   12a1c:	010a5713          	srli	a4,s4,0x10
   12a20:	00a76733          	or	a4,a4,a0
   12a24:	01877a63          	bgeu	a4,s8,12a38 <__divdf3+0x468>
   12a28:	00eb0733          	add	a4,s6,a4
   12a2c:	01676463          	bltu	a4,s6,12a34 <__divdf3+0x464>
   12a30:	21876c63          	bltu	a4,s8,12c48 <__divdf3+0x678>
   12a34:	fff48493          	addi	s1,s1,-1
   12a38:	418709b3          	sub	s3,a4,s8
   12a3c:	000d0593          	mv	a1,s10
   12a40:	00098513          	mv	a0,s3
   12a44:	398020ef          	jal	14ddc <__hidden___udivsi3>
   12a48:	00050593          	mv	a1,a0
   12a4c:	00050c13          	mv	s8,a0
   12a50:	010b1513          	slli	a0,s6,0x10
   12a54:	01055513          	srli	a0,a0,0x10
   12a58:	2cc020ef          	jal	14d24 <__mulsi3>
   12a5c:	00050c93          	mv	s9,a0
   12a60:	000d0593          	mv	a1,s10
   12a64:	00098513          	mv	a0,s3
   12a68:	3bc020ef          	jal	14e24 <__umodsi3>
   12a6c:	010a1793          	slli	a5,s4,0x10
   12a70:	01051513          	slli	a0,a0,0x10
   12a74:	0107d793          	srli	a5,a5,0x10
   12a78:	00a7e7b3          	or	a5,a5,a0
   12a7c:	0197fa63          	bgeu	a5,s9,12a90 <__divdf3+0x4c0>
   12a80:	00fb07b3          	add	a5,s6,a5
   12a84:	0197f463          	bgeu	a5,s9,12a8c <__divdf3+0x4bc>
   12a88:	1d67f663          	bgeu	a5,s6,12c54 <__divdf3+0x684>
   12a8c:	fffc0c13          	addi	s8,s8,-1
   12a90:	01049713          	slli	a4,s1,0x10
   12a94:	01876733          	or	a4,a4,s8
   12a98:	01071513          	slli	a0,a4,0x10
   12a9c:	010b9593          	slli	a1,s7,0x10
   12aa0:	419787b3          	sub	a5,a5,s9
   12aa4:	01055513          	srli	a0,a0,0x10
   12aa8:	0105d593          	srli	a1,a1,0x10
   12aac:	278020ef          	jal	14d24 <__mulsi3>
   12ab0:	00050813          	mv	a6,a0
   12ab4:	01071513          	slli	a0,a4,0x10
   12ab8:	01055513          	srli	a0,a0,0x10
   12abc:	000d8593          	mv	a1,s11
   12ac0:	264020ef          	jal	14d24 <__mulsi3>
   12ac4:	010b9593          	slli	a1,s7,0x10
   12ac8:	00050893          	mv	a7,a0
   12acc:	0105d593          	srli	a1,a1,0x10
   12ad0:	01075513          	srli	a0,a4,0x10
   12ad4:	250020ef          	jal	14d24 <__mulsi3>
   12ad8:	00050313          	mv	t1,a0
   12adc:	000d8593          	mv	a1,s11
   12ae0:	01075513          	srli	a0,a4,0x10
   12ae4:	240020ef          	jal	14d24 <__mulsi3>
   12ae8:	01085693          	srli	a3,a6,0x10
   12aec:	006888b3          	add	a7,a7,t1
   12af0:	011686b3          	add	a3,a3,a7
   12af4:	0066f663          	bgeu	a3,t1,12b00 <__divdf3+0x530>
   12af8:	00010637          	lui	a2,0x10
   12afc:	00c50533          	add	a0,a0,a2
   12b00:	0106d613          	srli	a2,a3,0x10
   12b04:	01081813          	slli	a6,a6,0x10
   12b08:	01069693          	slli	a3,a3,0x10
   12b0c:	01085813          	srli	a6,a6,0x10
   12b10:	00a60533          	add	a0,a2,a0
   12b14:	010686b3          	add	a3,a3,a6
   12b18:	00a7e663          	bltu	a5,a0,12b24 <__divdf3+0x554>
   12b1c:	04a79463          	bne	a5,a0,12b64 <__divdf3+0x594>
   12b20:	14068063          	beqz	a3,12c60 <__divdf3+0x690>
   12b24:	00fb0633          	add	a2,s6,a5
   12b28:	fff70593          	addi	a1,a4,-1
   12b2c:	00060793          	mv	a5,a2
   12b30:	03666463          	bltu	a2,s6,12b58 <__divdf3+0x588>
   12b34:	00a66663          	bltu	a2,a0,12b40 <__divdf3+0x570>
   12b38:	02a61463          	bne	a2,a0,12b60 <__divdf3+0x590>
   12b3c:	00dbfe63          	bgeu	s7,a3,12b58 <__divdf3+0x588>
   12b40:	ffe70593          	addi	a1,a4,-2
   12b44:	001b9713          	slli	a4,s7,0x1
   12b48:	017737b3          	sltu	a5,a4,s7
   12b4c:	016787b3          	add	a5,a5,s6
   12b50:	00f607b3          	add	a5,a2,a5
   12b54:	00070b93          	mv	s7,a4
   12b58:	00db9463          	bne	s7,a3,12b60 <__divdf3+0x590>
   12b5c:	00a78663          	beq	a5,a0,12b68 <__divdf3+0x598>
   12b60:	00058713          	mv	a4,a1
   12b64:	00176593          	ori	a1,a4,1
   12b68:	3ffa8793          	addi	a5,s5,1023
   12b6c:	12f05e63          	blez	a5,12ca8 <__divdf3+0x6d8>
   12b70:	0075f713          	andi	a4,a1,7
   12b74:	02070063          	beqz	a4,12b94 <__divdf3+0x5c4>
   12b78:	00f5f713          	andi	a4,a1,15
   12b7c:	00400693          	li	a3,4
   12b80:	00d70a63          	beq	a4,a3,12b94 <__divdf3+0x5c4>
   12b84:	00d58733          	add	a4,a1,a3
   12b88:	00b736b3          	sltu	a3,a4,a1
   12b8c:	00d40433          	add	s0,s0,a3
   12b90:	00070593          	mv	a1,a4
   12b94:	00741713          	slli	a4,s0,0x7
   12b98:	00075a63          	bgez	a4,12bac <__divdf3+0x5dc>
   12b9c:	ff0007b7          	lui	a5,0xff000
   12ba0:	fff78793          	addi	a5,a5,-1 # feffffff <__BSS_END__+0xfefe3257>
   12ba4:	00f47433          	and	s0,s0,a5
   12ba8:	400a8793          	addi	a5,s5,1024
   12bac:	7fe00713          	li	a4,2046
   12bb0:	1cf74263          	blt	a4,a5,12d74 <__divdf3+0x7a4>
   12bb4:	01d41713          	slli	a4,s0,0x1d
   12bb8:	0035d593          	srli	a1,a1,0x3
   12bbc:	00b76733          	or	a4,a4,a1
   12bc0:	00345413          	srli	s0,s0,0x3
   12bc4:	00c41413          	slli	s0,s0,0xc
   12bc8:	00c45413          	srli	s0,s0,0xc
   12bcc:	01479793          	slli	a5,a5,0x14
   12bd0:	04c12083          	lw	ra,76(sp)
   12bd4:	0087e7b3          	or	a5,a5,s0
   12bd8:	04812403          	lw	s0,72(sp)
   12bdc:	01f91913          	slli	s2,s2,0x1f
   12be0:	04412483          	lw	s1,68(sp)
   12be4:	03c12983          	lw	s3,60(sp)
   12be8:	03812a03          	lw	s4,56(sp)
   12bec:	03412a83          	lw	s5,52(sp)
   12bf0:	03012b03          	lw	s6,48(sp)
   12bf4:	02c12b83          	lw	s7,44(sp)
   12bf8:	02812c03          	lw	s8,40(sp)
   12bfc:	02412c83          	lw	s9,36(sp)
   12c00:	02012d03          	lw	s10,32(sp)
   12c04:	01c12d83          	lw	s11,28(sp)
   12c08:	0127e5b3          	or	a1,a5,s2
   12c0c:	00070513          	mv	a0,a4
   12c10:	04012903          	lw	s2,64(sp)
   12c14:	05010113          	addi	sp,sp,80
   12c18:	00008067          	ret
   12c1c:	fffa8a93          	addi	s5,s5,-1
   12c20:	00000c13          	li	s8,0
   12c24:	c01ff06f          	j	12824 <__divdf3+0x254>
   12c28:	ffea0a13          	addi	s4,s4,-2
   12c2c:	016787b3          	add	a5,a5,s6
   12c30:	c65ff06f          	j	12894 <__divdf3+0x2c4>
   12c34:	ffe40413          	addi	s0,s0,-2
   12c38:	016989b3          	add	s3,s3,s6
   12c3c:	cb1ff06f          	j	128ec <__divdf3+0x31c>
   12c40:	00070413          	mv	s0,a4
   12c44:	d8dff06f          	j	129d0 <__divdf3+0x400>
   12c48:	ffe48493          	addi	s1,s1,-2
   12c4c:	01670733          	add	a4,a4,s6
   12c50:	de9ff06f          	j	12a38 <__divdf3+0x468>
   12c54:	ffec0c13          	addi	s8,s8,-2
   12c58:	016787b3          	add	a5,a5,s6
   12c5c:	e35ff06f          	j	12a90 <__divdf3+0x4c0>
   12c60:	00000b93          	li	s7,0
   12c64:	00070593          	mv	a1,a4
   12c68:	ef1ff06f          	j	12b58 <__divdf3+0x588>
   12c6c:	000a0913          	mv	s2,s4
   12c70:	00070b13          	mv	s6,a4
   12c74:	00200793          	li	a5,2
   12c78:	0efb0e63          	beq	s6,a5,12d74 <__divdf3+0x7a4>
   12c7c:	00300793          	li	a5,3
   12c80:	0efb0063          	beq	s6,a5,12d60 <__divdf3+0x790>
   12c84:	00100793          	li	a5,1
   12c88:	eefb10e3          	bne	s6,a5,12b68 <__divdf3+0x598>
   12c8c:	00000413          	li	s0,0
   12c90:	00000713          	li	a4,0
   12c94:	08c0006f          	j	12d20 <__divdf3+0x750>
   12c98:	00098913          	mv	s2,s3
   12c9c:	000c8413          	mv	s0,s9
   12ca0:	00048593          	mv	a1,s1
   12ca4:	fd1ff06f          	j	12c74 <__divdf3+0x6a4>
   12ca8:	08078063          	beqz	a5,12d28 <__divdf3+0x758>
   12cac:	fc900713          	li	a4,-55
   12cb0:	fce7cee3          	blt	a5,a4,12c8c <__divdf3+0x6bc>
   12cb4:	fe200713          	li	a4,-30
   12cb8:	06e7cc63          	blt	a5,a4,12d30 <__divdf3+0x760>
   12cbc:	00100713          	li	a4,1
   12cc0:	40f70733          	sub	a4,a4,a5
   12cc4:	41ea8a93          	addi	s5,s5,1054
   12cc8:	00e5d7b3          	srl	a5,a1,a4
   12ccc:	015595b3          	sll	a1,a1,s5
   12cd0:	00b035b3          	snez	a1,a1
   12cd4:	01541ab3          	sll	s5,s0,s5
   12cd8:	0155e5b3          	or	a1,a1,s5
   12cdc:	00b7e7b3          	or	a5,a5,a1
   12ce0:	00e45433          	srl	s0,s0,a4
   12ce4:	0077f713          	andi	a4,a5,7
   12ce8:	02070063          	beqz	a4,12d08 <__divdf3+0x738>
   12cec:	00f7f713          	andi	a4,a5,15
   12cf0:	00400693          	li	a3,4
   12cf4:	00d70a63          	beq	a4,a3,12d08 <__divdf3+0x738>
   12cf8:	00d78733          	add	a4,a5,a3
   12cfc:	00f736b3          	sltu	a3,a4,a5
   12d00:	00d40433          	add	s0,s0,a3
   12d04:	00070793          	mv	a5,a4
   12d08:	00841713          	slli	a4,s0,0x8
   12d0c:	06074c63          	bltz	a4,12d84 <__divdf3+0x7b4>
   12d10:	01d41713          	slli	a4,s0,0x1d
   12d14:	0037d793          	srli	a5,a5,0x3
   12d18:	00f76733          	or	a4,a4,a5
   12d1c:	00345413          	srli	s0,s0,0x3
   12d20:	00000793          	li	a5,0
   12d24:	ea1ff06f          	j	12bc4 <__divdf3+0x5f4>
   12d28:	00100713          	li	a4,1
   12d2c:	f99ff06f          	j	12cc4 <__divdf3+0x6f4>
   12d30:	fe100613          	li	a2,-31
   12d34:	40f60733          	sub	a4,a2,a5
   12d38:	00e45733          	srl	a4,s0,a4
   12d3c:	00000693          	li	a3,0
   12d40:	00c78663          	beq	a5,a2,12d4c <__divdf3+0x77c>
   12d44:	43ea8a93          	addi	s5,s5,1086
   12d48:	015416b3          	sll	a3,s0,s5
   12d4c:	00b6e6b3          	or	a3,a3,a1
   12d50:	00d036b3          	snez	a3,a3
   12d54:	00d767b3          	or	a5,a4,a3
   12d58:	00000413          	li	s0,0
   12d5c:	f89ff06f          	j	12ce4 <__divdf3+0x714>
   12d60:	00080437          	lui	s0,0x80
   12d64:	00000713          	li	a4,0
   12d68:	7ff00793          	li	a5,2047
   12d6c:	00000913          	li	s2,0
   12d70:	e55ff06f          	j	12bc4 <__divdf3+0x5f4>
   12d74:	00000413          	li	s0,0
   12d78:	00000713          	li	a4,0
   12d7c:	7ff00793          	li	a5,2047
   12d80:	e45ff06f          	j	12bc4 <__divdf3+0x5f4>
   12d84:	00000413          	li	s0,0
   12d88:	00000713          	li	a4,0
   12d8c:	00100793          	li	a5,1
   12d90:	e35ff06f          	j	12bc4 <__divdf3+0x5f4>

00012d94 <__eqdf2>:
   12d94:	001007b7          	lui	a5,0x100
   12d98:	0145d813          	srli	a6,a1,0x14
   12d9c:	fff78793          	addi	a5,a5,-1 # fffff <__BSS_END__+0xe3257>
   12da0:	0146d313          	srli	t1,a3,0x14
   12da4:	7ff87813          	andi	a6,a6,2047
   12da8:	7ff00e93          	li	t4,2047
   12dac:	00b7f733          	and	a4,a5,a1
   12db0:	00050893          	mv	a7,a0
   12db4:	01f5df93          	srli	t6,a1,0x1f
   12db8:	00d7f7b3          	and	a5,a5,a3
   12dbc:	7ff37313          	andi	t1,t1,2047
   12dc0:	01f6df13          	srli	t5,a3,0x1f
   12dc4:	01d81863          	bne	a6,t4,12dd4 <__eqdf2+0x40>
   12dc8:	00a76e33          	or	t3,a4,a0
   12dcc:	00100513          	li	a0,1
   12dd0:	040e1263          	bnez	t3,12e14 <__eqdf2+0x80>
   12dd4:	01d31863          	bne	t1,t4,12de4 <__eqdf2+0x50>
   12dd8:	00c7e7b3          	or	a5,a5,a2
   12ddc:	00100513          	li	a0,1
   12de0:	02079a63          	bnez	a5,12e14 <__eqdf2+0x80>
   12de4:	00b6c6b3          	xor	a3,a3,a1
   12de8:	00169693          	slli	a3,a3,0x1
   12dec:	02069263          	bnez	a3,12e10 <__eqdf2+0x7c>
   12df0:	03161063          	bne	a2,a7,12e10 <__eqdf2+0x7c>
   12df4:	00000513          	li	a0,0
   12df8:	01ef8e63          	beq	t6,t5,12e14 <__eqdf2+0x80>
   12dfc:	00100513          	li	a0,1
   12e00:	00081a63          	bnez	a6,12e14 <__eqdf2+0x80>
   12e04:	01176733          	or	a4,a4,a7
   12e08:	00e03533          	snez	a0,a4
   12e0c:	00008067          	ret
   12e10:	00100513          	li	a0,1
   12e14:	00008067          	ret

00012e18 <__gedf2>:
   12e18:	0145d893          	srli	a7,a1,0x14
   12e1c:	00100737          	lui	a4,0x100
   12e20:	fff70713          	addi	a4,a4,-1 # fffff <__BSS_END__+0xe3257>
   12e24:	0146d813          	srli	a6,a3,0x14
   12e28:	7ff8f893          	andi	a7,a7,2047
   12e2c:	7ff00793          	li	a5,2047
   12e30:	00b77333          	and	t1,a4,a1
   12e34:	7ff87813          	andi	a6,a6,2047
   12e38:	00d77733          	and	a4,a4,a3
   12e3c:	01f5d593          	srli	a1,a1,0x1f
   12e40:	01f6d693          	srli	a3,a3,0x1f
   12e44:	02f88063          	beq	a7,a5,12e64 <__gedf2+0x4c>
   12e48:	7ff00e13          	li	t3,2047
   12e4c:	00080793          	mv	a5,a6
   12e50:	03c81463          	bne	a6,t3,12e78 <__gedf2+0x60>
   12e54:	00c76e33          	or	t3,a4,a2
   12e58:	020e0063          	beqz	t3,12e78 <__gedf2+0x60>
   12e5c:	ffe00793          	li	a5,-2
   12e60:	0100006f          	j	12e70 <__gedf2+0x58>
   12e64:	00a36e33          	or	t3,t1,a0
   12e68:	ffe00793          	li	a5,-2
   12e6c:	fc0e0ee3          	beqz	t3,12e48 <__gedf2+0x30>
   12e70:	00078513          	mv	a0,a5
   12e74:	00008067          	ret
   12e78:	00000e13          	li	t3,0
   12e7c:	00089663          	bnez	a7,12e88 <__gedf2+0x70>
   12e80:	00a36e33          	or	t3,t1,a0
   12e84:	001e3e13          	seqz	t3,t3
   12e88:	04081863          	bnez	a6,12ed8 <__gedf2+0xc0>
   12e8c:	00c76eb3          	or	t4,a4,a2
   12e90:	000e0a63          	beqz	t3,12ea4 <__gedf2+0x8c>
   12e94:	fc0e8ee3          	beqz	t4,12e70 <__gedf2+0x58>
   12e98:	00169793          	slli	a5,a3,0x1
   12e9c:	fff78793          	addi	a5,a5,-1
   12ea0:	fd1ff06f          	j	12e70 <__gedf2+0x58>
   12ea4:	020e9c63          	bnez	t4,12edc <__gedf2+0xc4>
   12ea8:	40b005b3          	neg	a1,a1
   12eac:	0015e793          	ori	a5,a1,1
   12eb0:	fc1ff06f          	j	12e70 <__gedf2+0x58>
   12eb4:	ff08c2e3          	blt	a7,a6,12e98 <__gedf2+0x80>
   12eb8:	fe6768e3          	bltu	a4,t1,12ea8 <__gedf2+0x90>
   12ebc:	00a67463          	bgeu	a2,a0,12ec4 <__gedf2+0xac>
   12ec0:	fee304e3          	beq	t1,a4,12ea8 <__gedf2+0x90>
   12ec4:	00c56663          	bltu	a0,a2,12ed0 <__gedf2+0xb8>
   12ec8:	00000793          	li	a5,0
   12ecc:	fae372e3          	bgeu	t1,a4,12e70 <__gedf2+0x58>
   12ed0:	00159793          	slli	a5,a1,0x1
   12ed4:	fc9ff06f          	j	12e9c <__gedf2+0x84>
   12ed8:	fc0e10e3          	bnez	t3,12e98 <__gedf2+0x80>
   12edc:	fcb696e3          	bne	a3,a1,12ea8 <__gedf2+0x90>
   12ee0:	fd185ae3          	bge	a6,a7,12eb4 <__gedf2+0x9c>
   12ee4:	40d006b3          	neg	a3,a3
   12ee8:	0016e793          	ori	a5,a3,1
   12eec:	f85ff06f          	j	12e70 <__gedf2+0x58>

00012ef0 <__ledf2>:
   12ef0:	0145d893          	srli	a7,a1,0x14
   12ef4:	00100737          	lui	a4,0x100
   12ef8:	fff70713          	addi	a4,a4,-1 # fffff <__BSS_END__+0xe3257>
   12efc:	0146d813          	srli	a6,a3,0x14
   12f00:	7ff8f893          	andi	a7,a7,2047
   12f04:	7ff00793          	li	a5,2047
   12f08:	00b77333          	and	t1,a4,a1
   12f0c:	7ff87813          	andi	a6,a6,2047
   12f10:	00d77733          	and	a4,a4,a3
   12f14:	01f5d593          	srli	a1,a1,0x1f
   12f18:	01f6d693          	srli	a3,a3,0x1f
   12f1c:	02f88063          	beq	a7,a5,12f3c <__ledf2+0x4c>
   12f20:	7ff00e13          	li	t3,2047
   12f24:	00080793          	mv	a5,a6
   12f28:	03c81463          	bne	a6,t3,12f50 <__ledf2+0x60>
   12f2c:	00c76e33          	or	t3,a4,a2
   12f30:	020e0063          	beqz	t3,12f50 <__ledf2+0x60>
   12f34:	00200793          	li	a5,2
   12f38:	0100006f          	j	12f48 <__ledf2+0x58>
   12f3c:	00a36e33          	or	t3,t1,a0
   12f40:	00200793          	li	a5,2
   12f44:	fc0e0ee3          	beqz	t3,12f20 <__ledf2+0x30>
   12f48:	00078513          	mv	a0,a5
   12f4c:	00008067          	ret
   12f50:	00000e13          	li	t3,0
   12f54:	00089663          	bnez	a7,12f60 <__ledf2+0x70>
   12f58:	00a36e33          	or	t3,t1,a0
   12f5c:	001e3e13          	seqz	t3,t3
   12f60:	04081863          	bnez	a6,12fb0 <__ledf2+0xc0>
   12f64:	00c76eb3          	or	t4,a4,a2
   12f68:	000e0a63          	beqz	t3,12f7c <__ledf2+0x8c>
   12f6c:	fc0e8ee3          	beqz	t4,12f48 <__ledf2+0x58>
   12f70:	00169793          	slli	a5,a3,0x1
   12f74:	fff78793          	addi	a5,a5,-1
   12f78:	fd1ff06f          	j	12f48 <__ledf2+0x58>
   12f7c:	020e9c63          	bnez	t4,12fb4 <__ledf2+0xc4>
   12f80:	40b005b3          	neg	a1,a1
   12f84:	0015e793          	ori	a5,a1,1
   12f88:	fc1ff06f          	j	12f48 <__ledf2+0x58>
   12f8c:	ff08c2e3          	blt	a7,a6,12f70 <__ledf2+0x80>
   12f90:	fe6768e3          	bltu	a4,t1,12f80 <__ledf2+0x90>
   12f94:	00a67463          	bgeu	a2,a0,12f9c <__ledf2+0xac>
   12f98:	fee304e3          	beq	t1,a4,12f80 <__ledf2+0x90>
   12f9c:	00c56663          	bltu	a0,a2,12fa8 <__ledf2+0xb8>
   12fa0:	00000793          	li	a5,0
   12fa4:	fae372e3          	bgeu	t1,a4,12f48 <__ledf2+0x58>
   12fa8:	00159793          	slli	a5,a1,0x1
   12fac:	fc9ff06f          	j	12f74 <__ledf2+0x84>
   12fb0:	fc0e10e3          	bnez	t3,12f70 <__ledf2+0x80>
   12fb4:	fcb696e3          	bne	a3,a1,12f80 <__ledf2+0x90>
   12fb8:	fd185ae3          	bge	a6,a7,12f8c <__ledf2+0x9c>
   12fbc:	40d006b3          	neg	a3,a3
   12fc0:	0016e793          	ori	a5,a3,1
   12fc4:	f85ff06f          	j	12f48 <__ledf2+0x58>

00012fc8 <__muldf3>:
   12fc8:	fd010113          	addi	sp,sp,-48
   12fcc:	01312e23          	sw	s3,28(sp)
   12fd0:	0145d993          	srli	s3,a1,0x14
   12fd4:	02812423          	sw	s0,40(sp)
   12fd8:	02912223          	sw	s1,36(sp)
   12fdc:	01412c23          	sw	s4,24(sp)
   12fe0:	01512a23          	sw	s5,20(sp)
   12fe4:	01712623          	sw	s7,12(sp)
   12fe8:	00c59493          	slli	s1,a1,0xc
   12fec:	02112623          	sw	ra,44(sp)
   12ff0:	03212023          	sw	s2,32(sp)
   12ff4:	01612823          	sw	s6,16(sp)
   12ff8:	7ff9f993          	andi	s3,s3,2047
   12ffc:	00050413          	mv	s0,a0
   13000:	00060b93          	mv	s7,a2
   13004:	00068a13          	mv	s4,a3
   13008:	00c4d493          	srli	s1,s1,0xc
   1300c:	01f5da93          	srli	s5,a1,0x1f
   13010:	0c098263          	beqz	s3,130d4 <__muldf3+0x10c>
   13014:	7ff00793          	li	a5,2047
   13018:	12f98463          	beq	s3,a5,13140 <__muldf3+0x178>
   1301c:	00349493          	slli	s1,s1,0x3
   13020:	01d55793          	srli	a5,a0,0x1d
   13024:	0097e7b3          	or	a5,a5,s1
   13028:	008004b7          	lui	s1,0x800
   1302c:	0097e4b3          	or	s1,a5,s1
   13030:	00351913          	slli	s2,a0,0x3
   13034:	c0198993          	addi	s3,s3,-1023
   13038:	00000b13          	li	s6,0
   1303c:	014a5793          	srli	a5,s4,0x14
   13040:	00ca1413          	slli	s0,s4,0xc
   13044:	7ff7f793          	andi	a5,a5,2047
   13048:	00c45413          	srli	s0,s0,0xc
   1304c:	01fa5a13          	srli	s4,s4,0x1f
   13050:	12078063          	beqz	a5,13170 <__muldf3+0x1a8>
   13054:	7ff00713          	li	a4,2047
   13058:	18e78463          	beq	a5,a4,131e0 <__muldf3+0x218>
   1305c:	00341413          	slli	s0,s0,0x3
   13060:	01dbd713          	srli	a4,s7,0x1d
   13064:	00876733          	or	a4,a4,s0
   13068:	00800437          	lui	s0,0x800
   1306c:	00876433          	or	s0,a4,s0
   13070:	003b9593          	slli	a1,s7,0x3
   13074:	c0178793          	addi	a5,a5,-1023
   13078:	00000693          	li	a3,0
   1307c:	00f989b3          	add	s3,s3,a5
   13080:	002b1793          	slli	a5,s6,0x2
   13084:	00d7e7b3          	or	a5,a5,a3
   13088:	00a00713          	li	a4,10
   1308c:	00198893          	addi	a7,s3,1
   13090:	1af74263          	blt	a4,a5,13234 <__muldf3+0x26c>
   13094:	00200613          	li	a2,2
   13098:	014ac833          	xor	a6,s5,s4
   1309c:	00100713          	li	a4,1
   130a0:	16f64863          	blt	a2,a5,13210 <__muldf3+0x248>
   130a4:	fff78793          	addi	a5,a5,-1
   130a8:	1af76663          	bltu	a4,a5,13254 <__muldf3+0x28c>
   130ac:	00068b13          	mv	s6,a3
   130b0:	00200793          	li	a5,2
   130b4:	58fb0863          	beq	s6,a5,13644 <__muldf3+0x67c>
   130b8:	00300793          	li	a5,3
   130bc:	56fb0e63          	beq	s6,a5,13638 <__muldf3+0x670>
   130c0:	00100793          	li	a5,1
   130c4:	40fb1063          	bne	s6,a5,134c4 <__muldf3+0x4fc>
   130c8:	00000413          	li	s0,0
   130cc:	00000713          	li	a4,0
   130d0:	5180006f          	j	135e8 <__muldf3+0x620>
   130d4:	00a4e933          	or	s2,s1,a0
   130d8:	06090e63          	beqz	s2,13154 <__muldf3+0x18c>
   130dc:	04048263          	beqz	s1,13120 <__muldf3+0x158>
   130e0:	00048513          	mv	a0,s1
   130e4:	61d010ef          	jal	14f00 <__clzsi2>
   130e8:	00050713          	mv	a4,a0
   130ec:	ff550693          	addi	a3,a0,-11
   130f0:	01d00793          	li	a5,29
   130f4:	ff870613          	addi	a2,a4,-8
   130f8:	40d787b3          	sub	a5,a5,a3
   130fc:	00c494b3          	sll	s1,s1,a2
   13100:	00f457b3          	srl	a5,s0,a5
   13104:	0097e7b3          	or	a5,a5,s1
   13108:	00c414b3          	sll	s1,s0,a2
   1310c:	c0d00993          	li	s3,-1011
   13110:	00048913          	mv	s2,s1
   13114:	40e989b3          	sub	s3,s3,a4
   13118:	00078493          	mv	s1,a5
   1311c:	f1dff06f          	j	13038 <__muldf3+0x70>
   13120:	5e1010ef          	jal	14f00 <__clzsi2>
   13124:	01550693          	addi	a3,a0,21
   13128:	01c00793          	li	a5,28
   1312c:	02050713          	addi	a4,a0,32
   13130:	fcd7d0e3          	bge	a5,a3,130f0 <__muldf3+0x128>
   13134:	ff850793          	addi	a5,a0,-8
   13138:	00f417b3          	sll	a5,s0,a5
   1313c:	fd1ff06f          	j	1310c <__muldf3+0x144>
   13140:	00a4e933          	or	s2,s1,a0
   13144:	02091063          	bnez	s2,13164 <__muldf3+0x19c>
   13148:	00000493          	li	s1,0
   1314c:	00200b13          	li	s6,2
   13150:	eedff06f          	j	1303c <__muldf3+0x74>
   13154:	00000493          	li	s1,0
   13158:	00000993          	li	s3,0
   1315c:	00100b13          	li	s6,1
   13160:	eddff06f          	j	1303c <__muldf3+0x74>
   13164:	00050913          	mv	s2,a0
   13168:	00300b13          	li	s6,3
   1316c:	ed1ff06f          	j	1303c <__muldf3+0x74>
   13170:	017465b3          	or	a1,s0,s7
   13174:	08058063          	beqz	a1,131f4 <__muldf3+0x22c>
   13178:	04040263          	beqz	s0,131bc <__muldf3+0x1f4>
   1317c:	00040513          	mv	a0,s0
   13180:	581010ef          	jal	14f00 <__clzsi2>
   13184:	00050693          	mv	a3,a0
   13188:	ff550793          	addi	a5,a0,-11
   1318c:	01d00713          	li	a4,29
   13190:	ff868613          	addi	a2,a3,-8
   13194:	40f70733          	sub	a4,a4,a5
   13198:	00c41433          	sll	s0,s0,a2
   1319c:	00ebd733          	srl	a4,s7,a4
   131a0:	00876733          	or	a4,a4,s0
   131a4:	00cb9433          	sll	s0,s7,a2
   131a8:	c0d00793          	li	a5,-1011
   131ac:	00040593          	mv	a1,s0
   131b0:	40d787b3          	sub	a5,a5,a3
   131b4:	00070413          	mv	s0,a4
   131b8:	ec1ff06f          	j	13078 <__muldf3+0xb0>
   131bc:	000b8513          	mv	a0,s7
   131c0:	541010ef          	jal	14f00 <__clzsi2>
   131c4:	01550793          	addi	a5,a0,21
   131c8:	01c00713          	li	a4,28
   131cc:	02050693          	addi	a3,a0,32
   131d0:	faf75ee3          	bge	a4,a5,1318c <__muldf3+0x1c4>
   131d4:	ff850713          	addi	a4,a0,-8
   131d8:	00eb9733          	sll	a4,s7,a4
   131dc:	fcdff06f          	j	131a8 <__muldf3+0x1e0>
   131e0:	017465b3          	or	a1,s0,s7
   131e4:	02059063          	bnez	a1,13204 <__muldf3+0x23c>
   131e8:	00000413          	li	s0,0
   131ec:	00200693          	li	a3,2
   131f0:	e8dff06f          	j	1307c <__muldf3+0xb4>
   131f4:	00000413          	li	s0,0
   131f8:	00000793          	li	a5,0
   131fc:	00100693          	li	a3,1
   13200:	e7dff06f          	j	1307c <__muldf3+0xb4>
   13204:	000b8593          	mv	a1,s7
   13208:	00300693          	li	a3,3
   1320c:	e71ff06f          	j	1307c <__muldf3+0xb4>
   13210:	00f717b3          	sll	a5,a4,a5
   13214:	5307f713          	andi	a4,a5,1328
   13218:	02071863          	bnez	a4,13248 <__muldf3+0x280>
   1321c:	2407f613          	andi	a2,a5,576
   13220:	40061463          	bnez	a2,13628 <__muldf3+0x660>
   13224:	0887f793          	andi	a5,a5,136
   13228:	02078663          	beqz	a5,13254 <__muldf3+0x28c>
   1322c:	000a0813          	mv	a6,s4
   13230:	e7dff06f          	j	130ac <__muldf3+0xe4>
   13234:	00f00713          	li	a4,15
   13238:	40e78063          	beq	a5,a4,13638 <__muldf3+0x670>
   1323c:	00b00713          	li	a4,11
   13240:	000a8813          	mv	a6,s5
   13244:	fee784e3          	beq	a5,a4,1322c <__muldf3+0x264>
   13248:	00048413          	mv	s0,s1
   1324c:	00090593          	mv	a1,s2
   13250:	e61ff06f          	j	130b0 <__muldf3+0xe8>
   13254:	01095793          	srli	a5,s2,0x10
   13258:	01059f13          	slli	t5,a1,0x10
   1325c:	01091913          	slli	s2,s2,0x10
   13260:	01095913          	srli	s2,s2,0x10
   13264:	010f5f13          	srli	t5,t5,0x10
   13268:	0105de93          	srli	t4,a1,0x10
   1326c:	00090513          	mv	a0,s2
   13270:	000f0593          	mv	a1,t5
   13274:	2b1010ef          	jal	14d24 <__mulsi3>
   13278:	00050e13          	mv	t3,a0
   1327c:	000e8593          	mv	a1,t4
   13280:	00090513          	mv	a0,s2
   13284:	2a1010ef          	jal	14d24 <__mulsi3>
   13288:	00050f93          	mv	t6,a0
   1328c:	000f0593          	mv	a1,t5
   13290:	00078513          	mv	a0,a5
   13294:	291010ef          	jal	14d24 <__mulsi3>
   13298:	00050293          	mv	t0,a0
   1329c:	000e8593          	mv	a1,t4
   132a0:	00078513          	mv	a0,a5
   132a4:	281010ef          	jal	14d24 <__mulsi3>
   132a8:	010e5313          	srli	t1,t3,0x10
   132ac:	005f8fb3          	add	t6,t6,t0
   132b0:	01f30333          	add	t1,t1,t6
   132b4:	00050713          	mv	a4,a0
   132b8:	00537663          	bgeu	t1,t0,132c4 <__muldf3+0x2fc>
   132bc:	000106b7          	lui	a3,0x10
   132c0:	00d50733          	add	a4,a0,a3
   132c4:	010e1e13          	slli	t3,t3,0x10
   132c8:	01035393          	srli	t2,t1,0x10
   132cc:	010e5e13          	srli	t3,t3,0x10
   132d0:	01031313          	slli	t1,t1,0x10
   132d4:	01c30333          	add	t1,t1,t3
   132d8:	01045e13          	srli	t3,s0,0x10
   132dc:	01041413          	slli	s0,s0,0x10
   132e0:	01045413          	srli	s0,s0,0x10
   132e4:	00090513          	mv	a0,s2
   132e8:	00040593          	mv	a1,s0
   132ec:	239010ef          	jal	14d24 <__mulsi3>
   132f0:	00050293          	mv	t0,a0
   132f4:	000e0593          	mv	a1,t3
   132f8:	00090513          	mv	a0,s2
   132fc:	229010ef          	jal	14d24 <__mulsi3>
   13300:	00050f93          	mv	t6,a0
   13304:	00040593          	mv	a1,s0
   13308:	00078513          	mv	a0,a5
   1330c:	219010ef          	jal	14d24 <__mulsi3>
   13310:	00050913          	mv	s2,a0
   13314:	000e0593          	mv	a1,t3
   13318:	00078513          	mv	a0,a5
   1331c:	209010ef          	jal	14d24 <__mulsi3>
   13320:	0102d793          	srli	a5,t0,0x10
   13324:	012f8fb3          	add	t6,t6,s2
   13328:	01f787b3          	add	a5,a5,t6
   1332c:	0127f663          	bgeu	a5,s2,13338 <__muldf3+0x370>
   13330:	000106b7          	lui	a3,0x10
   13334:	00d50533          	add	a0,a0,a3
   13338:	01029293          	slli	t0,t0,0x10
   1333c:	0107d593          	srli	a1,a5,0x10
   13340:	0102d293          	srli	t0,t0,0x10
   13344:	0104d913          	srli	s2,s1,0x10
   13348:	01079793          	slli	a5,a5,0x10
   1334c:	01049493          	slli	s1,s1,0x10
   13350:	005787b3          	add	a5,a5,t0
   13354:	0104d493          	srli	s1,s1,0x10
   13358:	00a58fb3          	add	t6,a1,a0
   1335c:	00f383b3          	add	t2,t2,a5
   13360:	00048513          	mv	a0,s1
   13364:	000f0593          	mv	a1,t5
   13368:	1bd010ef          	jal	14d24 <__mulsi3>
   1336c:	00050293          	mv	t0,a0
   13370:	000e8593          	mv	a1,t4
   13374:	00048513          	mv	a0,s1
   13378:	1ad010ef          	jal	14d24 <__mulsi3>
   1337c:	00050a13          	mv	s4,a0
   13380:	000f0593          	mv	a1,t5
   13384:	00090513          	mv	a0,s2
   13388:	19d010ef          	jal	14d24 <__mulsi3>
   1338c:	00050f13          	mv	t5,a0
   13390:	000e8593          	mv	a1,t4
   13394:	00090513          	mv	a0,s2
   13398:	18d010ef          	jal	14d24 <__mulsi3>
   1339c:	0102d613          	srli	a2,t0,0x10
   133a0:	01ea0a33          	add	s4,s4,t5
   133a4:	01460633          	add	a2,a2,s4
   133a8:	01e67663          	bgeu	a2,t5,133b4 <__muldf3+0x3ec>
   133ac:	000106b7          	lui	a3,0x10
   133b0:	00d50533          	add	a0,a0,a3
   133b4:	01029293          	slli	t0,t0,0x10
   133b8:	01065593          	srli	a1,a2,0x10
   133bc:	0102d293          	srli	t0,t0,0x10
   133c0:	01061613          	slli	a2,a2,0x10
   133c4:	00a58eb3          	add	t4,a1,a0
   133c8:	00560f33          	add	t5,a2,t0
   133cc:	00048513          	mv	a0,s1
   133d0:	00040593          	mv	a1,s0
   133d4:	151010ef          	jal	14d24 <__mulsi3>
   133d8:	00050293          	mv	t0,a0
   133dc:	000e0593          	mv	a1,t3
   133e0:	00048513          	mv	a0,s1
   133e4:	141010ef          	jal	14d24 <__mulsi3>
   133e8:	00050493          	mv	s1,a0
   133ec:	00040593          	mv	a1,s0
   133f0:	00090513          	mv	a0,s2
   133f4:	131010ef          	jal	14d24 <__mulsi3>
   133f8:	00050413          	mv	s0,a0
   133fc:	000e0593          	mv	a1,t3
   13400:	00090513          	mv	a0,s2
   13404:	121010ef          	jal	14d24 <__mulsi3>
   13408:	0102d613          	srli	a2,t0,0x10
   1340c:	008484b3          	add	s1,s1,s0
   13410:	00960633          	add	a2,a2,s1
   13414:	00050e13          	mv	t3,a0
   13418:	00867663          	bgeu	a2,s0,13424 <__muldf3+0x45c>
   1341c:	000106b7          	lui	a3,0x10
   13420:	00d50e33          	add	t3,a0,a3
   13424:	01029293          	slli	t0,t0,0x10
   13428:	01061693          	slli	a3,a2,0x10
   1342c:	0102d293          	srli	t0,t0,0x10
   13430:	00770733          	add	a4,a4,t2
   13434:	005686b3          	add	a3,a3,t0
   13438:	01f685b3          	add	a1,a3,t6
   1343c:	00f737b3          	sltu	a5,a4,a5
   13440:	00f587b3          	add	a5,a1,a5
   13444:	00d5b6b3          	sltu	a3,a1,a3
   13448:	00b7b5b3          	sltu	a1,a5,a1
   1344c:	00b6e6b3          	or	a3,a3,a1
   13450:	01065613          	srli	a2,a2,0x10
   13454:	00c686b3          	add	a3,a3,a2
   13458:	01e70633          	add	a2,a4,t5
   1345c:	01d785b3          	add	a1,a5,t4
   13460:	00e63733          	sltu	a4,a2,a4
   13464:	00e58733          	add	a4,a1,a4
   13468:	00f5b7b3          	sltu	a5,a1,a5
   1346c:	00b735b3          	sltu	a1,a4,a1
   13470:	00b7e7b3          	or	a5,a5,a1
   13474:	00961593          	slli	a1,a2,0x9
   13478:	00d787b3          	add	a5,a5,a3
   1347c:	0065e5b3          	or	a1,a1,t1
   13480:	01c787b3          	add	a5,a5,t3
   13484:	00b035b3          	snez	a1,a1
   13488:	01765613          	srli	a2,a2,0x17
   1348c:	00979793          	slli	a5,a5,0x9
   13490:	01775413          	srli	s0,a4,0x17
   13494:	00c5e5b3          	or	a1,a1,a2
   13498:	00971713          	slli	a4,a4,0x9
   1349c:	00e5e5b3          	or	a1,a1,a4
   134a0:	00779713          	slli	a4,a5,0x7
   134a4:	0087e433          	or	s0,a5,s0
   134a8:	0c075063          	bgez	a4,13568 <__muldf3+0x5a0>
   134ac:	0015d793          	srli	a5,a1,0x1
   134b0:	0015f593          	andi	a1,a1,1
   134b4:	00b7e7b3          	or	a5,a5,a1
   134b8:	01f41593          	slli	a1,s0,0x1f
   134bc:	00b7e5b3          	or	a1,a5,a1
   134c0:	00145413          	srli	s0,s0,0x1
   134c4:	3ff88793          	addi	a5,a7,1023
   134c8:	0af05463          	blez	a5,13570 <__muldf3+0x5a8>
   134cc:	0075f713          	andi	a4,a1,7
   134d0:	02070063          	beqz	a4,134f0 <__muldf3+0x528>
   134d4:	00f5f713          	andi	a4,a1,15
   134d8:	00400693          	li	a3,4
   134dc:	00d70a63          	beq	a4,a3,134f0 <__muldf3+0x528>
   134e0:	00d58733          	add	a4,a1,a3
   134e4:	00b736b3          	sltu	a3,a4,a1
   134e8:	00d40433          	add	s0,s0,a3
   134ec:	00070593          	mv	a1,a4
   134f0:	00741713          	slli	a4,s0,0x7
   134f4:	00075a63          	bgez	a4,13508 <__muldf3+0x540>
   134f8:	ff0007b7          	lui	a5,0xff000
   134fc:	fff78793          	addi	a5,a5,-1 # feffffff <__BSS_END__+0xfefe3257>
   13500:	00f47433          	and	s0,s0,a5
   13504:	40088793          	addi	a5,a7,1024
   13508:	7fe00713          	li	a4,2046
   1350c:	12f74c63          	blt	a4,a5,13644 <__muldf3+0x67c>
   13510:	01d41713          	slli	a4,s0,0x1d
   13514:	0035d593          	srli	a1,a1,0x3
   13518:	00b76733          	or	a4,a4,a1
   1351c:	00345413          	srli	s0,s0,0x3
   13520:	00c41413          	slli	s0,s0,0xc
   13524:	00c45413          	srli	s0,s0,0xc
   13528:	01479793          	slli	a5,a5,0x14
   1352c:	02c12083          	lw	ra,44(sp)
   13530:	0087e7b3          	or	a5,a5,s0
   13534:	02812403          	lw	s0,40(sp)
   13538:	01f81813          	slli	a6,a6,0x1f
   1353c:	02412483          	lw	s1,36(sp)
   13540:	02012903          	lw	s2,32(sp)
   13544:	01c12983          	lw	s3,28(sp)
   13548:	01812a03          	lw	s4,24(sp)
   1354c:	01412a83          	lw	s5,20(sp)
   13550:	01012b03          	lw	s6,16(sp)
   13554:	00c12b83          	lw	s7,12(sp)
   13558:	00070513          	mv	a0,a4
   1355c:	0107e5b3          	or	a1,a5,a6
   13560:	03010113          	addi	sp,sp,48
   13564:	00008067          	ret
   13568:	00098893          	mv	a7,s3
   1356c:	f59ff06f          	j	134c4 <__muldf3+0x4fc>
   13570:	08078063          	beqz	a5,135f0 <__muldf3+0x628>
   13574:	fc900713          	li	a4,-55
   13578:	b4e7c8e3          	blt	a5,a4,130c8 <__muldf3+0x100>
   1357c:	fe200713          	li	a4,-30
   13580:	06e7cc63          	blt	a5,a4,135f8 <__muldf3+0x630>
   13584:	00100713          	li	a4,1
   13588:	40f70733          	sub	a4,a4,a5
   1358c:	41e88893          	addi	a7,a7,1054
   13590:	011597b3          	sll	a5,a1,a7
   13594:	00f037b3          	snez	a5,a5
   13598:	011418b3          	sll	a7,s0,a7
   1359c:	00e5d6b3          	srl	a3,a1,a4
   135a0:	0117e7b3          	or	a5,a5,a7
   135a4:	00d7e7b3          	or	a5,a5,a3
   135a8:	00e45433          	srl	s0,s0,a4
   135ac:	0077f713          	andi	a4,a5,7
   135b0:	02070063          	beqz	a4,135d0 <__muldf3+0x608>
   135b4:	00f7f713          	andi	a4,a5,15
   135b8:	00400693          	li	a3,4
   135bc:	00d70a63          	beq	a4,a3,135d0 <__muldf3+0x608>
   135c0:	00d78733          	add	a4,a5,a3
   135c4:	00f736b3          	sltu	a3,a4,a5
   135c8:	00d40433          	add	s0,s0,a3
   135cc:	00070793          	mv	a5,a4
   135d0:	00841713          	slli	a4,s0,0x8
   135d4:	08074063          	bltz	a4,13654 <__muldf3+0x68c>
   135d8:	01d41713          	slli	a4,s0,0x1d
   135dc:	0037d793          	srli	a5,a5,0x3
   135e0:	00f76733          	or	a4,a4,a5
   135e4:	00345413          	srli	s0,s0,0x3
   135e8:	00000793          	li	a5,0
   135ec:	f35ff06f          	j	13520 <__muldf3+0x558>
   135f0:	00100713          	li	a4,1
   135f4:	f99ff06f          	j	1358c <__muldf3+0x5c4>
   135f8:	fe100613          	li	a2,-31
   135fc:	40f60733          	sub	a4,a2,a5
   13600:	00e45733          	srl	a4,s0,a4
   13604:	00000693          	li	a3,0
   13608:	00c78663          	beq	a5,a2,13614 <__muldf3+0x64c>
   1360c:	43e88893          	addi	a7,a7,1086
   13610:	011416b3          	sll	a3,s0,a7
   13614:	00d5e5b3          	or	a1,a1,a3
   13618:	00b035b3          	snez	a1,a1
   1361c:	00b767b3          	or	a5,a4,a1
   13620:	00000413          	li	s0,0
   13624:	f89ff06f          	j	135ac <__muldf3+0x5e4>
   13628:	00080437          	lui	s0,0x80
   1362c:	7ff00793          	li	a5,2047
   13630:	00000813          	li	a6,0
   13634:	eedff06f          	j	13520 <__muldf3+0x558>
   13638:	00080437          	lui	s0,0x80
   1363c:	00000713          	li	a4,0
   13640:	fedff06f          	j	1362c <__muldf3+0x664>
   13644:	00000413          	li	s0,0
   13648:	00000713          	li	a4,0
   1364c:	7ff00793          	li	a5,2047
   13650:	ed1ff06f          	j	13520 <__muldf3+0x558>
   13654:	00000413          	li	s0,0
   13658:	00000713          	li	a4,0
   1365c:	00100793          	li	a5,1
   13660:	ec1ff06f          	j	13520 <__muldf3+0x558>

00013664 <__fixdfsi>:
   13664:	0145d713          	srli	a4,a1,0x14
   13668:	001006b7          	lui	a3,0x100
   1366c:	fff68793          	addi	a5,a3,-1 # fffff <__BSS_END__+0xe3257>
   13670:	7ff77713          	andi	a4,a4,2047
   13674:	3fe00613          	li	a2,1022
   13678:	00b7f7b3          	and	a5,a5,a1
   1367c:	01f5d593          	srli	a1,a1,0x1f
   13680:	04e65c63          	bge	a2,a4,136d8 <__fixdfsi+0x74>
   13684:	41d00613          	li	a2,1053
   13688:	00e65a63          	bge	a2,a4,1369c <__fixdfsi+0x38>
   1368c:	80000537          	lui	a0,0x80000
   13690:	fff50513          	addi	a0,a0,-1 # 7fffffff <__BSS_END__+0x7ffe3257>
   13694:	00a58533          	add	a0,a1,a0
   13698:	00008067          	ret
   1369c:	00d7e7b3          	or	a5,a5,a3
   136a0:	41300693          	li	a3,1043
   136a4:	02e6d463          	bge	a3,a4,136cc <__fixdfsi+0x68>
   136a8:	bed70693          	addi	a3,a4,-1043
   136ac:	00d797b3          	sll	a5,a5,a3
   136b0:	43300693          	li	a3,1075
   136b4:	40e68733          	sub	a4,a3,a4
   136b8:	00e55533          	srl	a0,a0,a4
   136bc:	00a7e533          	or	a0,a5,a0
   136c0:	00058e63          	beqz	a1,136dc <__fixdfsi+0x78>
   136c4:	40a00533          	neg	a0,a0
   136c8:	00008067          	ret
   136cc:	40e686b3          	sub	a3,a3,a4
   136d0:	00d7d533          	srl	a0,a5,a3
   136d4:	fedff06f          	j	136c0 <__fixdfsi+0x5c>
   136d8:	00000513          	li	a0,0
   136dc:	00008067          	ret

000136e0 <__floatsidf>:
   136e0:	ff010113          	addi	sp,sp,-16
   136e4:	00112623          	sw	ra,12(sp)
   136e8:	00812423          	sw	s0,8(sp)
   136ec:	00912223          	sw	s1,4(sp)
   136f0:	00050793          	mv	a5,a0
   136f4:	08050063          	beqz	a0,13774 <__floatsidf+0x94>
   136f8:	41f55713          	srai	a4,a0,0x1f
   136fc:	00a74433          	xor	s0,a4,a0
   13700:	40e40433          	sub	s0,s0,a4
   13704:	01f55493          	srli	s1,a0,0x1f
   13708:	00040513          	mv	a0,s0
   1370c:	7f4010ef          	jal	14f00 <__clzsi2>
   13710:	41e00793          	li	a5,1054
   13714:	00a00713          	li	a4,10
   13718:	40a787b3          	sub	a5,a5,a0
   1371c:	04a74463          	blt	a4,a0,13764 <__floatsidf+0x84>
   13720:	00b00713          	li	a4,11
   13724:	40a70733          	sub	a4,a4,a0
   13728:	01550513          	addi	a0,a0,21
   1372c:	00e45733          	srl	a4,s0,a4
   13730:	00a41433          	sll	s0,s0,a0
   13734:	00c12083          	lw	ra,12(sp)
   13738:	00040513          	mv	a0,s0
   1373c:	00c71713          	slli	a4,a4,0xc
   13740:	00812403          	lw	s0,8(sp)
   13744:	01479793          	slli	a5,a5,0x14
   13748:	00c75713          	srli	a4,a4,0xc
   1374c:	01f49493          	slli	s1,s1,0x1f
   13750:	00e7e7b3          	or	a5,a5,a4
   13754:	0097e5b3          	or	a1,a5,s1
   13758:	00412483          	lw	s1,4(sp)
   1375c:	01010113          	addi	sp,sp,16
   13760:	00008067          	ret
   13764:	ff550513          	addi	a0,a0,-11
   13768:	00a41733          	sll	a4,s0,a0
   1376c:	00000413          	li	s0,0
   13770:	fc5ff06f          	j	13734 <__floatsidf+0x54>
   13774:	00000493          	li	s1,0
   13778:	00000713          	li	a4,0
   1377c:	ff1ff06f          	j	1376c <__floatsidf+0x8c>

00013780 <__fixdfdi>:
   13780:	00100737          	lui	a4,0x100
   13784:	0145d613          	srli	a2,a1,0x14
   13788:	fff70793          	addi	a5,a4,-1 # fffff <__BSS_END__+0xe3257>
   1378c:	7ff67613          	andi	a2,a2,2047
   13790:	3fe00693          	li	a3,1022
   13794:	00b7f7b3          	and	a5,a5,a1
   13798:	0ac6d063          	bge	a3,a2,13838 <__fixdfdi+0xb8>
   1379c:	ff010113          	addi	sp,sp,-16
   137a0:	00812423          	sw	s0,8(sp)
   137a4:	00112623          	sw	ra,12(sp)
   137a8:	43d00693          	li	a3,1085
   137ac:	01f5d413          	srli	s0,a1,0x1f
   137b0:	02c6d263          	bge	a3,a2,137d4 <__fixdfdi+0x54>
   137b4:	800005b7          	lui	a1,0x80000
   137b8:	fff58593          	addi	a1,a1,-1 # 7fffffff <__BSS_END__+0x7ffe3257>
   137bc:	fff40513          	addi	a0,s0,-1 # 7ffff <__BSS_END__+0x63257>
   137c0:	00b405b3          	add	a1,s0,a1
   137c4:	00c12083          	lw	ra,12(sp)
   137c8:	00812403          	lw	s0,8(sp)
   137cc:	01010113          	addi	sp,sp,16
   137d0:	00008067          	ret
   137d4:	00e7e5b3          	or	a1,a5,a4
   137d8:	43200793          	li	a5,1074
   137dc:	02c7d263          	bge	a5,a2,13800 <__fixdfdi+0x80>
   137e0:	bcd60613          	addi	a2,a2,-1075 # fbcd <exit-0x4e7>
   137e4:	6e0010ef          	jal	14ec4 <__ashldi3>
   137e8:	fc040ee3          	beqz	s0,137c4 <__fixdfdi+0x44>
   137ec:	00a037b3          	snez	a5,a0
   137f0:	40b005b3          	neg	a1,a1
   137f4:	40f585b3          	sub	a1,a1,a5
   137f8:	40a00533          	neg	a0,a0
   137fc:	fc9ff06f          	j	137c4 <__fixdfdi+0x44>
   13800:	41300793          	li	a5,1043
   13804:	02c7d263          	bge	a5,a2,13828 <__fixdfdi+0xa8>
   13808:	43300793          	li	a5,1075
   1380c:	40c787b3          	sub	a5,a5,a2
   13810:	bed60613          	addi	a2,a2,-1043
   13814:	00c59633          	sll	a2,a1,a2
   13818:	00f55533          	srl	a0,a0,a5
   1381c:	00a66533          	or	a0,a2,a0
   13820:	00f5d5b3          	srl	a1,a1,a5
   13824:	fc5ff06f          	j	137e8 <__fixdfdi+0x68>
   13828:	40c78533          	sub	a0,a5,a2
   1382c:	00a5d533          	srl	a0,a1,a0
   13830:	00000593          	li	a1,0
   13834:	fb5ff06f          	j	137e8 <__fixdfdi+0x68>
   13838:	00000513          	li	a0,0
   1383c:	00000593          	li	a1,0
   13840:	00008067          	ret

00013844 <__floatdidf>:
   13844:	fe010113          	addi	sp,sp,-32
   13848:	00112e23          	sw	ra,28(sp)
   1384c:	00812c23          	sw	s0,24(sp)
   13850:	00912a23          	sw	s1,20(sp)
   13854:	01212823          	sw	s2,16(sp)
   13858:	01312623          	sw	s3,12(sp)
   1385c:	01412423          	sw	s4,8(sp)
   13860:	01512223          	sw	s5,4(sp)
   13864:	00b567b3          	or	a5,a0,a1
   13868:	1a078c63          	beqz	a5,13a20 <__floatdidf+0x1dc>
   1386c:	41f5d793          	srai	a5,a1,0x1f
   13870:	00a7c533          	xor	a0,a5,a0
   13874:	00b7c433          	xor	s0,a5,a1
   13878:	40f50ab3          	sub	s5,a0,a5
   1387c:	01553533          	sltu	a0,a0,s5
   13880:	40f40433          	sub	s0,s0,a5
   13884:	40a40433          	sub	s0,s0,a0
   13888:	01f5d493          	srli	s1,a1,0x1f
   1388c:	00040913          	mv	s2,s0
   13890:	0a040e63          	beqz	s0,1394c <__floatdidf+0x108>
   13894:	00040513          	mv	a0,s0
   13898:	668010ef          	jal	14f00 <__clzsi2>
   1389c:	43e00793          	li	a5,1086
   138a0:	40a789b3          	sub	s3,a5,a0
   138a4:	00a00793          	li	a5,10
   138a8:	00050a13          	mv	s4,a0
   138ac:	10a7cc63          	blt	a5,a0,139c4 <__floatdidf+0x180>
   138b0:	00700793          	li	a5,7
   138b4:	12a7ca63          	blt	a5,a0,139e8 <__floatdidf+0x1a4>
   138b8:	03850613          	addi	a2,a0,56
   138bc:	00040593          	mv	a1,s0
   138c0:	000a8513          	mv	a0,s5
   138c4:	600010ef          	jal	14ec4 <__ashldi3>
   138c8:	00800613          	li	a2,8
   138cc:	00b56933          	or	s2,a0,a1
   138d0:	41460633          	sub	a2,a2,s4
   138d4:	00040593          	mv	a1,s0
   138d8:	000a8513          	mv	a0,s5
   138dc:	5ac010ef          	jal	14e88 <__lshrdi3>
   138e0:	01203933          	snez	s2,s2
   138e4:	00a96533          	or	a0,s2,a0
   138e8:	00058413          	mv	s0,a1
   138ec:	ff8007b7          	lui	a5,0xff800
   138f0:	fff78793          	addi	a5,a5,-1 # ff7fffff <__BSS_END__+0xff7e3257>
   138f4:	00f477b3          	and	a5,s0,a5
   138f8:	00757713          	andi	a4,a0,7
   138fc:	02070e63          	beqz	a4,13938 <__floatdidf+0xf4>
   13900:	00f57713          	andi	a4,a0,15
   13904:	00400693          	li	a3,4
   13908:	02d70863          	beq	a4,a3,13938 <__floatdidf+0xf4>
   1390c:	00d50733          	add	a4,a0,a3
   13910:	00a736b3          	sltu	a3,a4,a0
   13914:	00d787b3          	add	a5,a5,a3
   13918:	00070513          	mv	a0,a4
   1391c:	00879713          	slli	a4,a5,0x8
   13920:	00075c63          	bgez	a4,13938 <__floatdidf+0xf4>
   13924:	ff800737          	lui	a4,0xff800
   13928:	fff70713          	addi	a4,a4,-1 # ff7fffff <__BSS_END__+0xff7e3257>
   1392c:	43f00993          	li	s3,1087
   13930:	00e7f7b3          	and	a5,a5,a4
   13934:	414989b3          	sub	s3,s3,s4
   13938:	00355513          	srli	a0,a0,0x3
   1393c:	01d79713          	slli	a4,a5,0x1d
   13940:	00a76733          	or	a4,a4,a0
   13944:	0037d413          	srli	s0,a5,0x3
   13948:	03c0006f          	j	13984 <__floatdidf+0x140>
   1394c:	000a8513          	mv	a0,s5
   13950:	5b0010ef          	jal	14f00 <__clzsi2>
   13954:	43e00793          	li	a5,1086
   13958:	02050a13          	addi	s4,a0,32
   1395c:	414789b3          	sub	s3,a5,s4
   13960:	02a00793          	li	a5,42
   13964:	0747ca63          	blt	a5,s4,139d8 <__floatdidf+0x194>
   13968:	02b00413          	li	s0,43
   1396c:	ff5a0713          	addi	a4,s4,-11
   13970:	41440433          	sub	s0,s0,s4
   13974:	00e917b3          	sll	a5,s2,a4
   13978:	008ad433          	srl	s0,s5,s0
   1397c:	00f46433          	or	s0,s0,a5
   13980:	00ea9733          	sll	a4,s5,a4
   13984:	00c41413          	slli	s0,s0,0xc
   13988:	01499793          	slli	a5,s3,0x14
   1398c:	00c45413          	srli	s0,s0,0xc
   13990:	01c12083          	lw	ra,28(sp)
   13994:	0087e7b3          	or	a5,a5,s0
   13998:	01812403          	lw	s0,24(sp)
   1399c:	01f49493          	slli	s1,s1,0x1f
   139a0:	01012903          	lw	s2,16(sp)
   139a4:	00c12983          	lw	s3,12(sp)
   139a8:	00812a03          	lw	s4,8(sp)
   139ac:	00412a83          	lw	s5,4(sp)
   139b0:	0097e5b3          	or	a1,a5,s1
   139b4:	00070513          	mv	a0,a4
   139b8:	01412483          	lw	s1,20(sp)
   139bc:	02010113          	addi	sp,sp,32
   139c0:	00008067          	ret
   139c4:	00b00793          	li	a5,11
   139c8:	000a8713          	mv	a4,s5
   139cc:	f8f51ee3          	bne	a0,a5,13968 <__floatdidf+0x124>
   139d0:	43300993          	li	s3,1075
   139d4:	fb1ff06f          	j	13984 <__floatdidf+0x140>
   139d8:	ff550413          	addi	s0,a0,-11
   139dc:	00000713          	li	a4,0
   139e0:	008a9433          	sll	s0,s5,s0
   139e4:	fa1ff06f          	j	13984 <__floatdidf+0x140>
   139e8:	00800793          	li	a5,8
   139ec:	000a8513          	mv	a0,s5
   139f0:	eefa0ee3          	beq	s4,a5,138ec <__floatdidf+0xa8>
   139f4:	02800793          	li	a5,40
   139f8:	ff8a0713          	addi	a4,s4,-8
   139fc:	414787b3          	sub	a5,a5,s4
   13a00:	00e41433          	sll	s0,s0,a4
   13a04:	00fad7b3          	srl	a5,s5,a5
   13a08:	00ea9533          	sll	a0,s5,a4
   13a0c:	ff800737          	lui	a4,0xff800
   13a10:	0087e7b3          	or	a5,a5,s0
   13a14:	fff70713          	addi	a4,a4,-1 # ff7fffff <__BSS_END__+0xff7e3257>
   13a18:	00e7f7b3          	and	a5,a5,a4
   13a1c:	eddff06f          	j	138f8 <__floatdidf+0xb4>
   13a20:	00000493          	li	s1,0
   13a24:	00000413          	li	s0,0
   13a28:	00000713          	li	a4,0
   13a2c:	00000993          	li	s3,0
   13a30:	f55ff06f          	j	13984 <__floatdidf+0x140>

00013a34 <__addsf3>:
   13a34:	ff010113          	addi	sp,sp,-16
   13a38:	00800737          	lui	a4,0x800
   13a3c:	fff70713          	addi	a4,a4,-1 # 7fffff <__BSS_END__+0x7e3257>
   13a40:	0175d613          	srli	a2,a1,0x17
   13a44:	00812423          	sw	s0,8(sp)
   13a48:	01755413          	srli	s0,a0,0x17
   13a4c:	00a777b3          	and	a5,a4,a0
   13a50:	00912223          	sw	s1,4(sp)
   13a54:	00b77733          	and	a4,a4,a1
   13a58:	0ff47413          	zext.b	s0,s0
   13a5c:	0ff67613          	zext.b	a2,a2
   13a60:	00112623          	sw	ra,12(sp)
   13a64:	01212023          	sw	s2,0(sp)
   13a68:	01f55493          	srli	s1,a0,0x1f
   13a6c:	01f5d593          	srli	a1,a1,0x1f
   13a70:	00379793          	slli	a5,a5,0x3
   13a74:	00371713          	slli	a4,a4,0x3
   13a78:	40c406b3          	sub	a3,s0,a2
   13a7c:	1cb49c63          	bne	s1,a1,13c54 <__addsf3+0x220>
   13a80:	08d05e63          	blez	a3,13b1c <__addsf3+0xe8>
   13a84:	0ff00593          	li	a1,255
   13a88:	02061663          	bnez	a2,13ab4 <__addsf3+0x80>
   13a8c:	00070e63          	beqz	a4,13aa8 <__addsf3+0x74>
   13a90:	fff68613          	addi	a2,a3,-1
   13a94:	00061863          	bnez	a2,13aa4 <__addsf3+0x70>
   13a98:	00e787b3          	add	a5,a5,a4
   13a9c:	00100413          	li	s0,1
   13aa0:	04c0006f          	j	13aec <__addsf3+0xb8>
   13aa4:	02b69063          	bne	a3,a1,13ac4 <__addsf3+0x90>
   13aa8:	00068413          	mv	s0,a3
   13aac:	00078713          	mv	a4,a5
   13ab0:	2c00006f          	j	13d70 <__addsf3+0x33c>
   13ab4:	feb40ce3          	beq	s0,a1,13aac <__addsf3+0x78>
   13ab8:	04000637          	lui	a2,0x4000
   13abc:	00c76733          	or	a4,a4,a2
   13ac0:	00068613          	mv	a2,a3
   13ac4:	01b00593          	li	a1,27
   13ac8:	00100693          	li	a3,1
   13acc:	00c5ce63          	blt	a1,a2,13ae8 <__addsf3+0xb4>
   13ad0:	02000693          	li	a3,32
   13ad4:	40c686b3          	sub	a3,a3,a2
   13ad8:	00c755b3          	srl	a1,a4,a2
   13adc:	00d71733          	sll	a4,a4,a3
   13ae0:	00e03733          	snez	a4,a4
   13ae4:	00e5e6b3          	or	a3,a1,a4
   13ae8:	00d787b3          	add	a5,a5,a3
   13aec:	00579713          	slli	a4,a5,0x5
   13af0:	12075263          	bgez	a4,13c14 <__addsf3+0x1e0>
   13af4:	00140413          	addi	s0,s0,1
   13af8:	0ff00713          	li	a4,255
   13afc:	34e40e63          	beq	s0,a4,13e58 <__addsf3+0x424>
   13b00:	7e0006b7          	lui	a3,0x7e000
   13b04:	0017d713          	srli	a4,a5,0x1
   13b08:	fff68693          	addi	a3,a3,-1 # 7dffffff <__BSS_END__+0x7dfe3257>
   13b0c:	00d77733          	and	a4,a4,a3
   13b10:	0017f793          	andi	a5,a5,1
   13b14:	00f767b3          	or	a5,a4,a5
   13b18:	0fc0006f          	j	13c14 <__addsf3+0x1e0>
   13b1c:	06068463          	beqz	a3,13b84 <__addsf3+0x150>
   13b20:	408606b3          	sub	a3,a2,s0
   13b24:	0ff00513          	li	a0,255
   13b28:	00041e63          	bnez	s0,13b44 <__addsf3+0x110>
   13b2c:	32078063          	beqz	a5,13e4c <__addsf3+0x418>
   13b30:	fff68593          	addi	a1,a3,-1
   13b34:	f60582e3          	beqz	a1,13a98 <__addsf3+0x64>
   13b38:	00a69e63          	bne	a3,a0,13b54 <__addsf3+0x120>
   13b3c:	0ff00413          	li	s0,255
   13b40:	2300006f          	j	13d70 <__addsf3+0x33c>
   13b44:	fea60ce3          	beq	a2,a0,13b3c <__addsf3+0x108>
   13b48:	040005b7          	lui	a1,0x4000
   13b4c:	00b7e7b3          	or	a5,a5,a1
   13b50:	00068593          	mv	a1,a3
   13b54:	01b00513          	li	a0,27
   13b58:	00100693          	li	a3,1
   13b5c:	00b54e63          	blt	a0,a1,13b78 <__addsf3+0x144>
   13b60:	02000693          	li	a3,32
   13b64:	40b686b3          	sub	a3,a3,a1
   13b68:	00b7d533          	srl	a0,a5,a1
   13b6c:	00d797b3          	sll	a5,a5,a3
   13b70:	00f037b3          	snez	a5,a5
   13b74:	00f566b3          	or	a3,a0,a5
   13b78:	00e687b3          	add	a5,a3,a4
   13b7c:	00060413          	mv	s0,a2
   13b80:	f6dff06f          	j	13aec <__addsf3+0xb8>
   13b84:	00140693          	addi	a3,s0,1
   13b88:	0fe6f613          	andi	a2,a3,254
   13b8c:	06061a63          	bnez	a2,13c00 <__addsf3+0x1cc>
   13b90:	06041063          	bnez	s0,13bf0 <__addsf3+0x1bc>
   13b94:	2a078663          	beqz	a5,13e40 <__addsf3+0x40c>
   13b98:	08070a63          	beqz	a4,13c2c <__addsf3+0x1f8>
   13b9c:	00f70733          	add	a4,a4,a5
   13ba0:	00571793          	slli	a5,a4,0x5
   13ba4:	1c07d663          	bgez	a5,13d70 <__addsf3+0x33c>
   13ba8:	1f8007b7          	lui	a5,0x1f800
   13bac:	00375713          	srli	a4,a4,0x3
   13bb0:	fff78793          	addi	a5,a5,-1 # 1f7fffff <__BSS_END__+0x1f7e3257>
   13bb4:	00f777b3          	and	a5,a4,a5
   13bb8:	00100413          	li	s0,1
   13bbc:	0ff47413          	zext.b	s0,s0
   13bc0:	00979793          	slli	a5,a5,0x9
   13bc4:	01741413          	slli	s0,s0,0x17
   13bc8:	0097d793          	srli	a5,a5,0x9
   13bcc:	00f46433          	or	s0,s0,a5
   13bd0:	01f49513          	slli	a0,s1,0x1f
   13bd4:	00c12083          	lw	ra,12(sp)
   13bd8:	00a46533          	or	a0,s0,a0
   13bdc:	00812403          	lw	s0,8(sp)
   13be0:	00412483          	lw	s1,4(sp)
   13be4:	00012903          	lw	s2,0(sp)
   13be8:	01010113          	addi	sp,sp,16
   13bec:	00008067          	ret
   13bf0:	f40786e3          	beqz	a5,13b3c <__addsf3+0x108>
   13bf4:	1c071863          	bnez	a4,13dc4 <__addsf3+0x390>
   13bf8:	00078713          	mv	a4,a5
   13bfc:	f41ff06f          	j	13b3c <__addsf3+0x108>
   13c00:	0ff00613          	li	a2,255
   13c04:	24c68863          	beq	a3,a2,13e54 <__addsf3+0x420>
   13c08:	00e78733          	add	a4,a5,a4
   13c0c:	00175793          	srli	a5,a4,0x1
   13c10:	00068413          	mv	s0,a3
   13c14:	0077f713          	andi	a4,a5,7
   13c18:	00070a63          	beqz	a4,13c2c <__addsf3+0x1f8>
   13c1c:	00f7f713          	andi	a4,a5,15
   13c20:	00400693          	li	a3,4
   13c24:	00d70463          	beq	a4,a3,13c2c <__addsf3+0x1f8>
   13c28:	00d787b3          	add	a5,a5,a3
   13c2c:	00579713          	slli	a4,a5,0x5
   13c30:	e6075ee3          	bgez	a4,13aac <__addsf3+0x78>
   13c34:	00140413          	addi	s0,s0,1
   13c38:	0ff00713          	li	a4,255
   13c3c:	20e40e63          	beq	s0,a4,13e58 <__addsf3+0x424>
   13c40:	1f800737          	lui	a4,0x1f800
   13c44:	0037d793          	srli	a5,a5,0x3
   13c48:	fff70713          	addi	a4,a4,-1 # 1f7fffff <__BSS_END__+0x1f7e3257>
   13c4c:	00e7f7b3          	and	a5,a5,a4
   13c50:	f6dff06f          	j	13bbc <__addsf3+0x188>
   13c54:	08d05063          	blez	a3,13cd4 <__addsf3+0x2a0>
   13c58:	06061263          	bnez	a2,13cbc <__addsf3+0x288>
   13c5c:	e40706e3          	beqz	a4,13aa8 <__addsf3+0x74>
   13c60:	fff68613          	addi	a2,a3,-1
   13c64:	00061863          	bnez	a2,13c74 <__addsf3+0x240>
   13c68:	40e787b3          	sub	a5,a5,a4
   13c6c:	00100413          	li	s0,1
   13c70:	0340006f          	j	13ca4 <__addsf3+0x270>
   13c74:	0ff00593          	li	a1,255
   13c78:	e2b688e3          	beq	a3,a1,13aa8 <__addsf3+0x74>
   13c7c:	01b00593          	li	a1,27
   13c80:	00100693          	li	a3,1
   13c84:	00c5ce63          	blt	a1,a2,13ca0 <__addsf3+0x26c>
   13c88:	02000693          	li	a3,32
   13c8c:	40c686b3          	sub	a3,a3,a2
   13c90:	00c755b3          	srl	a1,a4,a2
   13c94:	00d71733          	sll	a4,a4,a3
   13c98:	00e03733          	snez	a4,a4
   13c9c:	00e5e6b3          	or	a3,a1,a4
   13ca0:	40d787b3          	sub	a5,a5,a3
   13ca4:	00579713          	slli	a4,a5,0x5
   13ca8:	f60756e3          	bgez	a4,13c14 <__addsf3+0x1e0>
   13cac:	04000937          	lui	s2,0x4000
   13cb0:	fff90913          	addi	s2,s2,-1 # 3ffffff <__BSS_END__+0x3fe3257>
   13cb4:	0127f933          	and	s2,a5,s2
   13cb8:	1300006f          	j	13de8 <__addsf3+0x3b4>
   13cbc:	0ff00613          	li	a2,255
   13cc0:	dec406e3          	beq	s0,a2,13aac <__addsf3+0x78>
   13cc4:	04000637          	lui	a2,0x4000
   13cc8:	00c76733          	or	a4,a4,a2
   13ccc:	00068613          	mv	a2,a3
   13cd0:	fadff06f          	j	13c7c <__addsf3+0x248>
   13cd4:	06068e63          	beqz	a3,13d50 <__addsf3+0x31c>
   13cd8:	408606b3          	sub	a3,a2,s0
   13cdc:	02041663          	bnez	s0,13d08 <__addsf3+0x2d4>
   13ce0:	16078463          	beqz	a5,13e48 <__addsf3+0x414>
   13ce4:	fff68513          	addi	a0,a3,-1
   13ce8:	00051863          	bnez	a0,13cf8 <__addsf3+0x2c4>
   13cec:	40f707b3          	sub	a5,a4,a5
   13cf0:	00058493          	mv	s1,a1
   13cf4:	f79ff06f          	j	13c6c <__addsf3+0x238>
   13cf8:	0ff00813          	li	a6,255
   13cfc:	03069063          	bne	a3,a6,13d1c <__addsf3+0x2e8>
   13d00:	00058493          	mv	s1,a1
   13d04:	e39ff06f          	j	13b3c <__addsf3+0x108>
   13d08:	0ff00513          	li	a0,255
   13d0c:	fea60ae3          	beq	a2,a0,13d00 <__addsf3+0x2cc>
   13d10:	04000537          	lui	a0,0x4000
   13d14:	00a7e7b3          	or	a5,a5,a0
   13d18:	00068513          	mv	a0,a3
   13d1c:	01b00813          	li	a6,27
   13d20:	00100693          	li	a3,1
   13d24:	00a84e63          	blt	a6,a0,13d40 <__addsf3+0x30c>
   13d28:	02000693          	li	a3,32
   13d2c:	40a686b3          	sub	a3,a3,a0
   13d30:	00a7d833          	srl	a6,a5,a0
   13d34:	00d797b3          	sll	a5,a5,a3
   13d38:	00f037b3          	snez	a5,a5
   13d3c:	00f866b3          	or	a3,a6,a5
   13d40:	40d707b3          	sub	a5,a4,a3
   13d44:	00060413          	mv	s0,a2
   13d48:	00058493          	mv	s1,a1
   13d4c:	f59ff06f          	j	13ca4 <__addsf3+0x270>
   13d50:	00140693          	addi	a3,s0,1
   13d54:	0fe6f693          	andi	a3,a3,254
   13d58:	06069e63          	bnez	a3,13dd4 <__addsf3+0x3a0>
   13d5c:	06041263          	bnez	s0,13dc0 <__addsf3+0x38c>
   13d60:	02079463          	bnez	a5,13d88 <__addsf3+0x354>
   13d64:	00000493          	li	s1,0
   13d68:	e4070ae3          	beqz	a4,13bbc <__addsf3+0x188>
   13d6c:	00058493          	mv	s1,a1
   13d70:	00375793          	srli	a5,a4,0x3
   13d74:	0ff00713          	li	a4,255
   13d78:	e4e412e3          	bne	s0,a4,13bbc <__addsf3+0x188>
   13d7c:	e40780e3          	beqz	a5,13bbc <__addsf3+0x188>
   13d80:	004007b7          	lui	a5,0x400
   13d84:	0340006f          	j	13db8 <__addsf3+0x384>
   13d88:	ea0702e3          	beqz	a4,13c2c <__addsf3+0x1f8>
   13d8c:	40e786b3          	sub	a3,a5,a4
   13d90:	00569613          	slli	a2,a3,0x5
   13d94:	00065c63          	bgez	a2,13dac <__addsf3+0x378>
   13d98:	40f707b3          	sub	a5,a4,a5
   13d9c:	00058493          	mv	s1,a1
   13da0:	00000413          	li	s0,0
   13da4:	e0078ce3          	beqz	a5,13bbc <__addsf3+0x188>
   13da8:	e6dff06f          	j	13c14 <__addsf3+0x1e0>
   13dac:	00068713          	mv	a4,a3
   13db0:	fc0690e3          	bnez	a3,13d70 <__addsf3+0x33c>
   13db4:	00000793          	li	a5,0
   13db8:	00000493          	li	s1,0
   13dbc:	e01ff06f          	j	13bbc <__addsf3+0x188>
   13dc0:	e2079ae3          	bnez	a5,13bf4 <__addsf3+0x1c0>
   13dc4:	00000493          	li	s1,0
   13dc8:	0ff00413          	li	s0,255
   13dcc:	004007b7          	lui	a5,0x400
   13dd0:	dedff06f          	j	13bbc <__addsf3+0x188>
   13dd4:	40e78933          	sub	s2,a5,a4
   13dd8:	00591693          	slli	a3,s2,0x5
   13ddc:	0406d263          	bgez	a3,13e20 <__addsf3+0x3ec>
   13de0:	40f70933          	sub	s2,a4,a5
   13de4:	00058493          	mv	s1,a1
   13de8:	00090513          	mv	a0,s2
   13dec:	114010ef          	jal	14f00 <__clzsi2>
   13df0:	ffb50513          	addi	a0,a0,-5 # 3fffffb <__BSS_END__+0x3fe3253>
   13df4:	00a91933          	sll	s2,s2,a0
   13df8:	02854a63          	blt	a0,s0,13e2c <__addsf3+0x3f8>
   13dfc:	40850533          	sub	a0,a0,s0
   13e00:	00150513          	addi	a0,a0,1
   13e04:	02000713          	li	a4,32
   13e08:	40a70733          	sub	a4,a4,a0
   13e0c:	00a957b3          	srl	a5,s2,a0
   13e10:	00e91933          	sll	s2,s2,a4
   13e14:	01203933          	snez	s2,s2
   13e18:	0127e7b3          	or	a5,a5,s2
   13e1c:	f85ff06f          	j	13da0 <__addsf3+0x36c>
   13e20:	fc0914e3          	bnez	s2,13de8 <__addsf3+0x3b4>
   13e24:	00000413          	li	s0,0
   13e28:	f8dff06f          	j	13db4 <__addsf3+0x380>
   13e2c:	fc0007b7          	lui	a5,0xfc000
   13e30:	fff78793          	addi	a5,a5,-1 # fbffffff <__BSS_END__+0xfbfe3257>
   13e34:	40a40433          	sub	s0,s0,a0
   13e38:	00f977b3          	and	a5,s2,a5
   13e3c:	dd9ff06f          	j	13c14 <__addsf3+0x1e0>
   13e40:	00070793          	mv	a5,a4
   13e44:	f5dff06f          	j	13da0 <__addsf3+0x36c>
   13e48:	00058493          	mv	s1,a1
   13e4c:	00068413          	mv	s0,a3
   13e50:	f21ff06f          	j	13d70 <__addsf3+0x33c>
   13e54:	00068413          	mv	s0,a3
   13e58:	00000793          	li	a5,0
   13e5c:	d61ff06f          	j	13bbc <__addsf3+0x188>

00013e60 <__divsf3>:
   13e60:	fd010113          	addi	sp,sp,-48
   13e64:	02912223          	sw	s1,36(sp)
   13e68:	01755493          	srli	s1,a0,0x17
   13e6c:	01412c23          	sw	s4,24(sp)
   13e70:	01512a23          	sw	s5,20(sp)
   13e74:	01712623          	sw	s7,12(sp)
   13e78:	00951a13          	slli	s4,a0,0x9
   13e7c:	02112623          	sw	ra,44(sp)
   13e80:	02812423          	sw	s0,40(sp)
   13e84:	03212023          	sw	s2,32(sp)
   13e88:	01312e23          	sw	s3,28(sp)
   13e8c:	01612823          	sw	s6,16(sp)
   13e90:	01812423          	sw	s8,8(sp)
   13e94:	0ff4f493          	zext.b	s1,s1
   13e98:	00058b93          	mv	s7,a1
   13e9c:	009a5a13          	srli	s4,s4,0x9
   13ea0:	01f55a93          	srli	s5,a0,0x1f
   13ea4:	08048463          	beqz	s1,13f2c <__divsf3+0xcc>
   13ea8:	0ff00793          	li	a5,255
   13eac:	0af48063          	beq	s1,a5,13f4c <__divsf3+0xec>
   13eb0:	003a1a13          	slli	s4,s4,0x3
   13eb4:	040007b7          	lui	a5,0x4000
   13eb8:	00fa6a33          	or	s4,s4,a5
   13ebc:	f8148493          	addi	s1,s1,-127 # 7fff81 <__BSS_END__+0x7e31d9>
   13ec0:	00000b13          	li	s6,0
   13ec4:	017bd793          	srli	a5,s7,0x17
   13ec8:	009b9413          	slli	s0,s7,0x9
   13ecc:	0ff7f793          	zext.b	a5,a5
   13ed0:	00945413          	srli	s0,s0,0x9
   13ed4:	01fbdb93          	srli	s7,s7,0x1f
   13ed8:	08078863          	beqz	a5,13f68 <__divsf3+0x108>
   13edc:	0ff00713          	li	a4,255
   13ee0:	0ae78463          	beq	a5,a4,13f88 <__divsf3+0x128>
   13ee4:	00341413          	slli	s0,s0,0x3
   13ee8:	04000737          	lui	a4,0x4000
   13eec:	00e46433          	or	s0,s0,a4
   13ef0:	f8178793          	addi	a5,a5,-127 # 3ffff81 <__BSS_END__+0x3fe31d9>
   13ef4:	00000713          	li	a4,0
   13ef8:	40f489b3          	sub	s3,s1,a5
   13efc:	002b1793          	slli	a5,s6,0x2
   13f00:	00e7e7b3          	or	a5,a5,a4
   13f04:	fff78793          	addi	a5,a5,-1
   13f08:	00e00693          	li	a3,14
   13f0c:	017ac933          	xor	s2,s5,s7
   13f10:	08f6ea63          	bltu	a3,a5,13fa4 <__divsf3+0x144>
   13f14:	0001b6b7          	lui	a3,0x1b
   13f18:	00279793          	slli	a5,a5,0x2
   13f1c:	ab068693          	addi	a3,a3,-1360 # 1aab0 <_exit+0x27c>
   13f20:	00d787b3          	add	a5,a5,a3
   13f24:	0007a783          	lw	a5,0(a5)
   13f28:	00078067          	jr	a5
   13f2c:	020a0863          	beqz	s4,13f5c <__divsf3+0xfc>
   13f30:	000a0513          	mv	a0,s4
   13f34:	7cd000ef          	jal	14f00 <__clzsi2>
   13f38:	ffb50793          	addi	a5,a0,-5
   13f3c:	f8a00493          	li	s1,-118
   13f40:	00fa1a33          	sll	s4,s4,a5
   13f44:	40a484b3          	sub	s1,s1,a0
   13f48:	f79ff06f          	j	13ec0 <__divsf3+0x60>
   13f4c:	00200b13          	li	s6,2
   13f50:	f60a0ae3          	beqz	s4,13ec4 <__divsf3+0x64>
   13f54:	00300b13          	li	s6,3
   13f58:	f6dff06f          	j	13ec4 <__divsf3+0x64>
   13f5c:	00000493          	li	s1,0
   13f60:	00100b13          	li	s6,1
   13f64:	f61ff06f          	j	13ec4 <__divsf3+0x64>
   13f68:	02040863          	beqz	s0,13f98 <__divsf3+0x138>
   13f6c:	00040513          	mv	a0,s0
   13f70:	791000ef          	jal	14f00 <__clzsi2>
   13f74:	ffb50793          	addi	a5,a0,-5
   13f78:	00f41433          	sll	s0,s0,a5
   13f7c:	f8a00793          	li	a5,-118
   13f80:	40a787b3          	sub	a5,a5,a0
   13f84:	f71ff06f          	j	13ef4 <__divsf3+0x94>
   13f88:	00200713          	li	a4,2
   13f8c:	f60406e3          	beqz	s0,13ef8 <__divsf3+0x98>
   13f90:	00300713          	li	a4,3
   13f94:	f65ff06f          	j	13ef8 <__divsf3+0x98>
   13f98:	00000793          	li	a5,0
   13f9c:	00100713          	li	a4,1
   13fa0:	f59ff06f          	j	13ef8 <__divsf3+0x98>
   13fa4:	00541b13          	slli	s6,s0,0x5
   13fa8:	148a7a63          	bgeu	s4,s0,140fc <__divsf3+0x29c>
   13fac:	fff98993          	addi	s3,s3,-1
   13fb0:	00000413          	li	s0,0
   13fb4:	010b5a93          	srli	s5,s6,0x10
   13fb8:	000a8593          	mv	a1,s5
   13fbc:	010b1c13          	slli	s8,s6,0x10
   13fc0:	000a0513          	mv	a0,s4
   13fc4:	619000ef          	jal	14ddc <__hidden___udivsi3>
   13fc8:	010c5c13          	srli	s8,s8,0x10
   13fcc:	00050593          	mv	a1,a0
   13fd0:	00050493          	mv	s1,a0
   13fd4:	000c0513          	mv	a0,s8
   13fd8:	54d000ef          	jal	14d24 <__mulsi3>
   13fdc:	00050b93          	mv	s7,a0
   13fe0:	000a8593          	mv	a1,s5
   13fe4:	000a0513          	mv	a0,s4
   13fe8:	63d000ef          	jal	14e24 <__umodsi3>
   13fec:	01051513          	slli	a0,a0,0x10
   13ff0:	01045793          	srli	a5,s0,0x10
   13ff4:	00a7e7b3          	or	a5,a5,a0
   13ff8:	0177fa63          	bgeu	a5,s7,1400c <__divsf3+0x1ac>
   13ffc:	00fb07b3          	add	a5,s6,a5
   14000:	0177f463          	bgeu	a5,s7,14008 <__divsf3+0x1a8>
   14004:	1167f263          	bgeu	a5,s6,14108 <__divsf3+0x2a8>
   14008:	fff48493          	addi	s1,s1,-1
   1400c:	41778433          	sub	s0,a5,s7
   14010:	000a8593          	mv	a1,s5
   14014:	00040513          	mv	a0,s0
   14018:	5c5000ef          	jal	14ddc <__hidden___udivsi3>
   1401c:	00050593          	mv	a1,a0
   14020:	00050a13          	mv	s4,a0
   14024:	000c0513          	mv	a0,s8
   14028:	4fd000ef          	jal	14d24 <__mulsi3>
   1402c:	00050b93          	mv	s7,a0
   14030:	000a8593          	mv	a1,s5
   14034:	00040513          	mv	a0,s0
   14038:	5ed000ef          	jal	14e24 <__umodsi3>
   1403c:	01051793          	slli	a5,a0,0x10
   14040:	0177fe63          	bgeu	a5,s7,1405c <__divsf3+0x1fc>
   14044:	01678733          	add	a4,a5,s6
   14048:	00f736b3          	sltu	a3,a4,a5
   1404c:	00070793          	mv	a5,a4
   14050:	01777463          	bgeu	a4,s7,14058 <__divsf3+0x1f8>
   14054:	0c068063          	beqz	a3,14114 <__divsf3+0x2b4>
   14058:	fffa0a13          	addi	s4,s4,-1
   1405c:	01049413          	slli	s0,s1,0x10
   14060:	417787b3          	sub	a5,a5,s7
   14064:	01446433          	or	s0,s0,s4
   14068:	00f037b3          	snez	a5,a5
   1406c:	00f46433          	or	s0,s0,a5
   14070:	07f98713          	addi	a4,s3,127
   14074:	0ee05263          	blez	a4,14158 <__divsf3+0x2f8>
   14078:	00747793          	andi	a5,s0,7
   1407c:	00078a63          	beqz	a5,14090 <__divsf3+0x230>
   14080:	00f47793          	andi	a5,s0,15
   14084:	00400693          	li	a3,4
   14088:	00d78463          	beq	a5,a3,14090 <__divsf3+0x230>
   1408c:	00d40433          	add	s0,s0,a3
   14090:	00441793          	slli	a5,s0,0x4
   14094:	0007da63          	bgez	a5,140a8 <__divsf3+0x248>
   14098:	f80007b7          	lui	a5,0xf8000
   1409c:	fff78793          	addi	a5,a5,-1 # f7ffffff <__BSS_END__+0xf7fe3257>
   140a0:	00f47433          	and	s0,s0,a5
   140a4:	08098713          	addi	a4,s3,128
   140a8:	0fe00793          	li	a5,254
   140ac:	10e7ce63          	blt	a5,a4,141c8 <__divsf3+0x368>
   140b0:	00345793          	srli	a5,s0,0x3
   140b4:	02c12083          	lw	ra,44(sp)
   140b8:	02812403          	lw	s0,40(sp)
   140bc:	00979793          	slli	a5,a5,0x9
   140c0:	01771713          	slli	a4,a4,0x17
   140c4:	0097d793          	srli	a5,a5,0x9
   140c8:	01f91513          	slli	a0,s2,0x1f
   140cc:	00f76733          	or	a4,a4,a5
   140d0:	02412483          	lw	s1,36(sp)
   140d4:	02012903          	lw	s2,32(sp)
   140d8:	01c12983          	lw	s3,28(sp)
   140dc:	01812a03          	lw	s4,24(sp)
   140e0:	01412a83          	lw	s5,20(sp)
   140e4:	01012b03          	lw	s6,16(sp)
   140e8:	00c12b83          	lw	s7,12(sp)
   140ec:	00812c03          	lw	s8,8(sp)
   140f0:	00a76533          	or	a0,a4,a0
   140f4:	03010113          	addi	sp,sp,48
   140f8:	00008067          	ret
   140fc:	01fa1413          	slli	s0,s4,0x1f
   14100:	001a5a13          	srli	s4,s4,0x1
   14104:	eb1ff06f          	j	13fb4 <__divsf3+0x154>
   14108:	ffe48493          	addi	s1,s1,-2
   1410c:	016787b3          	add	a5,a5,s6
   14110:	efdff06f          	j	1400c <__divsf3+0x1ac>
   14114:	ffea0a13          	addi	s4,s4,-2
   14118:	016707b3          	add	a5,a4,s6
   1411c:	f41ff06f          	j	1405c <__divsf3+0x1fc>
   14120:	000b8913          	mv	s2,s7
   14124:	00200793          	li	a5,2
   14128:	0af70063          	beq	a4,a5,141c8 <__divsf3+0x368>
   1412c:	00300793          	li	a5,3
   14130:	08f70463          	beq	a4,a5,141b8 <__divsf3+0x358>
   14134:	00100793          	li	a5,1
   14138:	f2f71ce3          	bne	a4,a5,14070 <__divsf3+0x210>
   1413c:	00000793          	li	a5,0
   14140:	00000713          	li	a4,0
   14144:	f71ff06f          	j	140b4 <__divsf3+0x254>
   14148:	000a8913          	mv	s2,s5
   1414c:	000a0413          	mv	s0,s4
   14150:	000b0713          	mv	a4,s6
   14154:	fd1ff06f          	j	14124 <__divsf3+0x2c4>
   14158:	04070c63          	beqz	a4,141b0 <__divsf3+0x350>
   1415c:	fe600793          	li	a5,-26
   14160:	fcf74ee3          	blt	a4,a5,1413c <__divsf3+0x2dc>
   14164:	00100793          	li	a5,1
   14168:	40e787b3          	sub	a5,a5,a4
   1416c:	09e98493          	addi	s1,s3,158
   14170:	00f457b3          	srl	a5,s0,a5
   14174:	00941433          	sll	s0,s0,s1
   14178:	00803433          	snez	s0,s0
   1417c:	0087e7b3          	or	a5,a5,s0
   14180:	0077f713          	andi	a4,a5,7
   14184:	00070a63          	beqz	a4,14198 <__divsf3+0x338>
   14188:	00f7f713          	andi	a4,a5,15
   1418c:	00400693          	li	a3,4
   14190:	00d70463          	beq	a4,a3,14198 <__divsf3+0x338>
   14194:	00d787b3          	add	a5,a5,a3
   14198:	00579713          	slli	a4,a5,0x5
   1419c:	0037d793          	srli	a5,a5,0x3
   141a0:	fa0750e3          	bgez	a4,14140 <__divsf3+0x2e0>
   141a4:	00000793          	li	a5,0
   141a8:	00100713          	li	a4,1
   141ac:	f09ff06f          	j	140b4 <__divsf3+0x254>
   141b0:	00100793          	li	a5,1
   141b4:	fb9ff06f          	j	1416c <__divsf3+0x30c>
   141b8:	004007b7          	lui	a5,0x400
   141bc:	0ff00713          	li	a4,255
   141c0:	00000913          	li	s2,0
   141c4:	ef1ff06f          	j	140b4 <__divsf3+0x254>
   141c8:	00000793          	li	a5,0
   141cc:	0ff00713          	li	a4,255
   141d0:	ee5ff06f          	j	140b4 <__divsf3+0x254>

000141d4 <__eqsf2>:
   141d4:	00800737          	lui	a4,0x800
   141d8:	fff70713          	addi	a4,a4,-1 # 7fffff <__BSS_END__+0x7e3257>
   141dc:	00a77633          	and	a2,a4,a0
   141e0:	01755793          	srli	a5,a0,0x17
   141e4:	0ff7f793          	zext.b	a5,a5
   141e8:	01f55693          	srli	a3,a0,0x1f
   141ec:	00b77733          	and	a4,a4,a1
   141f0:	01f5d893          	srli	a7,a1,0x1f
   141f4:	00060863          	beqz	a2,14204 <__eqsf2+0x30>
   141f8:	f0178813          	addi	a6,a5,-255 # 3fff01 <__BSS_END__+0x3e3159>
   141fc:	00100513          	li	a0,1
   14200:	02080e63          	beqz	a6,1423c <__eqsf2+0x68>
   14204:	0175d593          	srli	a1,a1,0x17
   14208:	0ff5f593          	zext.b	a1,a1
   1420c:	00070863          	beqz	a4,1421c <__eqsf2+0x48>
   14210:	f0158813          	addi	a6,a1,-255 # 3ffff01 <__BSS_END__+0x3fe3159>
   14214:	00100513          	li	a0,1
   14218:	02080263          	beqz	a6,1423c <__eqsf2+0x68>
   1421c:	00e61e63          	bne	a2,a4,14238 <__eqsf2+0x64>
   14220:	00b79c63          	bne	a5,a1,14238 <__eqsf2+0x64>
   14224:	00000513          	li	a0,0
   14228:	01168a63          	beq	a3,a7,1423c <__eqsf2+0x68>
   1422c:	00c7e7b3          	or	a5,a5,a2
   14230:	00f03533          	snez	a0,a5
   14234:	00008067          	ret
   14238:	00100513          	li	a0,1
   1423c:	00008067          	ret

00014240 <__gesf2>:
   14240:	00800737          	lui	a4,0x800
   14244:	fff70713          	addi	a4,a4,-1 # 7fffff <__BSS_END__+0x7e3257>
   14248:	00a77633          	and	a2,a4,a0
   1424c:	01755693          	srli	a3,a0,0x17
   14250:	0ff6f693          	zext.b	a3,a3
   14254:	01f55793          	srli	a5,a0,0x1f
   14258:	00b77733          	and	a4,a4,a1
   1425c:	01f5d893          	srli	a7,a1,0x1f
   14260:	00060863          	beqz	a2,14270 <__gesf2+0x30>
   14264:	f0168813          	addi	a6,a3,-255
   14268:	ffe00513          	li	a0,-2
   1426c:	06080463          	beqz	a6,142d4 <__gesf2+0x94>
   14270:	0175d593          	srli	a1,a1,0x17
   14274:	0ff5f593          	zext.b	a1,a1
   14278:	00070863          	beqz	a4,14288 <__gesf2+0x48>
   1427c:	f0158813          	addi	a6,a1,-255
   14280:	ffe00513          	li	a0,-2
   14284:	04080863          	beqz	a6,142d4 <__gesf2+0x94>
   14288:	00c6e533          	or	a0,a3,a2
   1428c:	00e5e833          	or	a6,a1,a4
   14290:	00051a63          	bnez	a0,142a4 <__gesf2+0x64>
   14294:	04080063          	beqz	a6,142d4 <__gesf2+0x94>
   14298:	00189513          	slli	a0,a7,0x1
   1429c:	fff50513          	addi	a0,a0,-1
   142a0:	00008067          	ret
   142a4:	00081863          	bnez	a6,142b4 <__gesf2+0x74>
   142a8:	40f007b3          	neg	a5,a5
   142ac:	0017e513          	ori	a0,a5,1
   142b0:	00008067          	ret
   142b4:	ff179ae3          	bne	a5,a7,142a8 <__gesf2+0x68>
   142b8:	fed5c8e3          	blt	a1,a3,142a8 <__gesf2+0x68>
   142bc:	00b6d663          	bge	a3,a1,142c8 <__gesf2+0x88>
   142c0:	00179513          	slli	a0,a5,0x1
   142c4:	fd9ff06f          	j	1429c <__gesf2+0x5c>
   142c8:	fec760e3          	bltu	a4,a2,142a8 <__gesf2+0x68>
   142cc:	00000513          	li	a0,0
   142d0:	fee668e3          	bltu	a2,a4,142c0 <__gesf2+0x80>
   142d4:	00008067          	ret

000142d8 <__lesf2>:
   142d8:	00800737          	lui	a4,0x800
   142dc:	fff70713          	addi	a4,a4,-1 # 7fffff <__BSS_END__+0x7e3257>
   142e0:	00a77633          	and	a2,a4,a0
   142e4:	01755693          	srli	a3,a0,0x17
   142e8:	0ff6f693          	zext.b	a3,a3
   142ec:	01f55793          	srli	a5,a0,0x1f
   142f0:	00b77733          	and	a4,a4,a1
   142f4:	01f5d893          	srli	a7,a1,0x1f
   142f8:	00060863          	beqz	a2,14308 <__lesf2+0x30>
   142fc:	f0168813          	addi	a6,a3,-255
   14300:	00200513          	li	a0,2
   14304:	06080463          	beqz	a6,1436c <__lesf2+0x94>
   14308:	0175d593          	srli	a1,a1,0x17
   1430c:	0ff5f593          	zext.b	a1,a1
   14310:	00070863          	beqz	a4,14320 <__lesf2+0x48>
   14314:	f0158813          	addi	a6,a1,-255
   14318:	00200513          	li	a0,2
   1431c:	04080863          	beqz	a6,1436c <__lesf2+0x94>
   14320:	00c6e533          	or	a0,a3,a2
   14324:	00e5e833          	or	a6,a1,a4
   14328:	00051a63          	bnez	a0,1433c <__lesf2+0x64>
   1432c:	04080063          	beqz	a6,1436c <__lesf2+0x94>
   14330:	00189513          	slli	a0,a7,0x1
   14334:	fff50513          	addi	a0,a0,-1
   14338:	00008067          	ret
   1433c:	00081863          	bnez	a6,1434c <__lesf2+0x74>
   14340:	40f007b3          	neg	a5,a5
   14344:	0017e513          	ori	a0,a5,1
   14348:	00008067          	ret
   1434c:	ff179ae3          	bne	a5,a7,14340 <__lesf2+0x68>
   14350:	fed5c8e3          	blt	a1,a3,14340 <__lesf2+0x68>
   14354:	00b6d663          	bge	a3,a1,14360 <__lesf2+0x88>
   14358:	00179513          	slli	a0,a5,0x1
   1435c:	fd9ff06f          	j	14334 <__lesf2+0x5c>
   14360:	fec760e3          	bltu	a4,a2,14340 <__lesf2+0x68>
   14364:	00000513          	li	a0,0
   14368:	fee668e3          	bltu	a2,a4,14358 <__lesf2+0x80>
   1436c:	00008067          	ret

00014370 <__mulsf3>:
   14370:	fe010113          	addi	sp,sp,-32
   14374:	01212823          	sw	s2,16(sp)
   14378:	01755913          	srli	s2,a0,0x17
   1437c:	00912a23          	sw	s1,20(sp)
   14380:	01312623          	sw	s3,12(sp)
   14384:	01512223          	sw	s5,4(sp)
   14388:	00951493          	slli	s1,a0,0x9
   1438c:	00112e23          	sw	ra,28(sp)
   14390:	00812c23          	sw	s0,24(sp)
   14394:	01412423          	sw	s4,8(sp)
   14398:	0ff97913          	zext.b	s2,s2
   1439c:	00058a93          	mv	s5,a1
   143a0:	0094d493          	srli	s1,s1,0x9
   143a4:	01f55993          	srli	s3,a0,0x1f
   143a8:	1a090a63          	beqz	s2,1455c <__mulsf3+0x1ec>
   143ac:	0ff00793          	li	a5,255
   143b0:	1cf90663          	beq	s2,a5,1457c <__mulsf3+0x20c>
   143b4:	00349493          	slli	s1,s1,0x3
   143b8:	040007b7          	lui	a5,0x4000
   143bc:	00f4e4b3          	or	s1,s1,a5
   143c0:	f8190913          	addi	s2,s2,-127
   143c4:	00000a13          	li	s4,0
   143c8:	017ad793          	srli	a5,s5,0x17
   143cc:	009a9413          	slli	s0,s5,0x9
   143d0:	0ff7f793          	zext.b	a5,a5
   143d4:	00945413          	srli	s0,s0,0x9
   143d8:	01fada93          	srli	s5,s5,0x1f
   143dc:	1a078e63          	beqz	a5,14598 <__mulsf3+0x228>
   143e0:	0ff00713          	li	a4,255
   143e4:	1ce78a63          	beq	a5,a4,145b8 <__mulsf3+0x248>
   143e8:	00341413          	slli	s0,s0,0x3
   143ec:	04000737          	lui	a4,0x4000
   143f0:	00e46433          	or	s0,s0,a4
   143f4:	f8178793          	addi	a5,a5,-127 # 3ffff81 <__BSS_END__+0x3fe31d9>
   143f8:	00000713          	li	a4,0
   143fc:	00f90933          	add	s2,s2,a5
   14400:	002a1793          	slli	a5,s4,0x2
   14404:	00e7e7b3          	or	a5,a5,a4
   14408:	00a00693          	li	a3,10
   1440c:	00190813          	addi	a6,s2,1
   14410:	20f6c463          	blt	a3,a5,14618 <__mulsf3+0x2a8>
   14414:	00200613          	li	a2,2
   14418:	0159c9b3          	xor	s3,s3,s5
   1441c:	00100693          	li	a3,1
   14420:	1af64a63          	blt	a2,a5,145d4 <__mulsf3+0x264>
   14424:	fff78793          	addi	a5,a5,-1
   14428:	1cf6f663          	bgeu	a3,a5,145f4 <__mulsf3+0x284>
   1442c:	01045793          	srli	a5,s0,0x10
   14430:	01041413          	slli	s0,s0,0x10
   14434:	01049513          	slli	a0,s1,0x10
   14438:	01045413          	srli	s0,s0,0x10
   1443c:	0104de13          	srli	t3,s1,0x10
   14440:	01055513          	srli	a0,a0,0x10
   14444:	00040593          	mv	a1,s0
   14448:	0dd000ef          	jal	14d24 <__mulsi3>
   1444c:	00050893          	mv	a7,a0
   14450:	01049513          	slli	a0,s1,0x10
   14454:	01055513          	srli	a0,a0,0x10
   14458:	00078593          	mv	a1,a5
   1445c:	0c9000ef          	jal	14d24 <__mulsi3>
   14460:	00050713          	mv	a4,a0
   14464:	00040593          	mv	a1,s0
   14468:	000e0513          	mv	a0,t3
   1446c:	0b9000ef          	jal	14d24 <__mulsi3>
   14470:	00050313          	mv	t1,a0
   14474:	00078593          	mv	a1,a5
   14478:	000e0513          	mv	a0,t3
   1447c:	0a9000ef          	jal	14d24 <__mulsi3>
   14480:	0108d793          	srli	a5,a7,0x10
   14484:	00670733          	add	a4,a4,t1
   14488:	00e787b3          	add	a5,a5,a4
   1448c:	0067f663          	bgeu	a5,t1,14498 <__mulsf3+0x128>
   14490:	00010737          	lui	a4,0x10
   14494:	00e50533          	add	a0,a0,a4
   14498:	01089893          	slli	a7,a7,0x10
   1449c:	01079713          	slli	a4,a5,0x10
   144a0:	0108d893          	srli	a7,a7,0x10
   144a4:	01170733          	add	a4,a4,a7
   144a8:	0107d793          	srli	a5,a5,0x10
   144ac:	00671413          	slli	s0,a4,0x6
   144b0:	00a787b3          	add	a5,a5,a0
   144b4:	01a75713          	srli	a4,a4,0x1a
   144b8:	00679793          	slli	a5,a5,0x6
   144bc:	00803433          	snez	s0,s0
   144c0:	00e46433          	or	s0,s0,a4
   144c4:	00479713          	slli	a4,a5,0x4
   144c8:	0087e433          	or	s0,a5,s0
   144cc:	16075463          	bgez	a4,14634 <__mulsf3+0x2c4>
   144d0:	00145793          	srli	a5,s0,0x1
   144d4:	00147413          	andi	s0,s0,1
   144d8:	0087e433          	or	s0,a5,s0
   144dc:	07f80513          	addi	a0,a6,127
   144e0:	14a05e63          	blez	a0,1463c <__mulsf3+0x2cc>
   144e4:	00747793          	andi	a5,s0,7
   144e8:	00078a63          	beqz	a5,144fc <__mulsf3+0x18c>
   144ec:	00f47793          	andi	a5,s0,15
   144f0:	00400713          	li	a4,4
   144f4:	00e78463          	beq	a5,a4,144fc <__mulsf3+0x18c>
   144f8:	00e40433          	add	s0,s0,a4
   144fc:	00441793          	slli	a5,s0,0x4
   14500:	0007da63          	bgez	a5,14514 <__mulsf3+0x1a4>
   14504:	f80007b7          	lui	a5,0xf8000
   14508:	fff78793          	addi	a5,a5,-1 # f7ffffff <__BSS_END__+0xf7fe3257>
   1450c:	00f47433          	and	s0,s0,a5
   14510:	08080513          	addi	a0,a6,128
   14514:	0fe00793          	li	a5,254
   14518:	18a7ca63          	blt	a5,a0,146ac <__mulsf3+0x33c>
   1451c:	00345793          	srli	a5,s0,0x3
   14520:	01c12083          	lw	ra,28(sp)
   14524:	01812403          	lw	s0,24(sp)
   14528:	00979793          	slli	a5,a5,0x9
   1452c:	01751513          	slli	a0,a0,0x17
   14530:	0097d793          	srli	a5,a5,0x9
   14534:	01f99993          	slli	s3,s3,0x1f
   14538:	00f56533          	or	a0,a0,a5
   1453c:	01412483          	lw	s1,20(sp)
   14540:	01012903          	lw	s2,16(sp)
   14544:	00812a03          	lw	s4,8(sp)
   14548:	00412a83          	lw	s5,4(sp)
   1454c:	01356533          	or	a0,a0,s3
   14550:	00c12983          	lw	s3,12(sp)
   14554:	02010113          	addi	sp,sp,32
   14558:	00008067          	ret
   1455c:	02048863          	beqz	s1,1458c <__mulsf3+0x21c>
   14560:	00048513          	mv	a0,s1
   14564:	19d000ef          	jal	14f00 <__clzsi2>
   14568:	ffb50793          	addi	a5,a0,-5
   1456c:	f8a00913          	li	s2,-118
   14570:	00f494b3          	sll	s1,s1,a5
   14574:	40a90933          	sub	s2,s2,a0
   14578:	e4dff06f          	j	143c4 <__mulsf3+0x54>
   1457c:	00200a13          	li	s4,2
   14580:	e40484e3          	beqz	s1,143c8 <__mulsf3+0x58>
   14584:	00300a13          	li	s4,3
   14588:	e41ff06f          	j	143c8 <__mulsf3+0x58>
   1458c:	00000913          	li	s2,0
   14590:	00100a13          	li	s4,1
   14594:	e35ff06f          	j	143c8 <__mulsf3+0x58>
   14598:	02040863          	beqz	s0,145c8 <__mulsf3+0x258>
   1459c:	00040513          	mv	a0,s0
   145a0:	161000ef          	jal	14f00 <__clzsi2>
   145a4:	ffb50793          	addi	a5,a0,-5
   145a8:	00f41433          	sll	s0,s0,a5
   145ac:	f8a00793          	li	a5,-118
   145b0:	40a787b3          	sub	a5,a5,a0
   145b4:	e45ff06f          	j	143f8 <__mulsf3+0x88>
   145b8:	00200713          	li	a4,2
   145bc:	e40400e3          	beqz	s0,143fc <__mulsf3+0x8c>
   145c0:	00300713          	li	a4,3
   145c4:	e39ff06f          	j	143fc <__mulsf3+0x8c>
   145c8:	00000793          	li	a5,0
   145cc:	00100713          	li	a4,1
   145d0:	e2dff06f          	j	143fc <__mulsf3+0x8c>
   145d4:	00f697b3          	sll	a5,a3,a5
   145d8:	5307f693          	andi	a3,a5,1328
   145dc:	04069663          	bnez	a3,14628 <__mulsf3+0x2b8>
   145e0:	2407f693          	andi	a3,a5,576
   145e4:	0a069c63          	bnez	a3,1469c <__mulsf3+0x32c>
   145e8:	0887f793          	andi	a5,a5,136
   145ec:	e40780e3          	beqz	a5,1442c <__mulsf3+0xbc>
   145f0:	000a8993          	mv	s3,s5
   145f4:	00200793          	li	a5,2
   145f8:	0af70a63          	beq	a4,a5,146ac <__mulsf3+0x33c>
   145fc:	00300793          	li	a5,3
   14600:	08f70e63          	beq	a4,a5,1469c <__mulsf3+0x32c>
   14604:	00100793          	li	a5,1
   14608:	ecf71ae3          	bne	a4,a5,144dc <__mulsf3+0x16c>
   1460c:	00000793          	li	a5,0
   14610:	00000513          	li	a0,0
   14614:	f0dff06f          	j	14520 <__mulsf3+0x1b0>
   14618:	00f00693          	li	a3,15
   1461c:	08d78063          	beq	a5,a3,1469c <__mulsf3+0x32c>
   14620:	00b00693          	li	a3,11
   14624:	fcd786e3          	beq	a5,a3,145f0 <__mulsf3+0x280>
   14628:	00048413          	mv	s0,s1
   1462c:	000a0713          	mv	a4,s4
   14630:	fc5ff06f          	j	145f4 <__mulsf3+0x284>
   14634:	00090813          	mv	a6,s2
   14638:	ea5ff06f          	j	144dc <__mulsf3+0x16c>
   1463c:	04050c63          	beqz	a0,14694 <__mulsf3+0x324>
   14640:	fe600793          	li	a5,-26
   14644:	fcf544e3          	blt	a0,a5,1460c <__mulsf3+0x29c>
   14648:	00100793          	li	a5,1
   1464c:	40a787b3          	sub	a5,a5,a0
   14650:	09e80813          	addi	a6,a6,158
   14654:	00f457b3          	srl	a5,s0,a5
   14658:	01041433          	sll	s0,s0,a6
   1465c:	00803433          	snez	s0,s0
   14660:	0087e7b3          	or	a5,a5,s0
   14664:	0077f713          	andi	a4,a5,7
   14668:	00070a63          	beqz	a4,1467c <__mulsf3+0x30c>
   1466c:	00f7f713          	andi	a4,a5,15
   14670:	00400693          	li	a3,4
   14674:	00d70463          	beq	a4,a3,1467c <__mulsf3+0x30c>
   14678:	00d787b3          	add	a5,a5,a3
   1467c:	00579713          	slli	a4,a5,0x5
   14680:	0037d793          	srli	a5,a5,0x3
   14684:	f80756e3          	bgez	a4,14610 <__mulsf3+0x2a0>
   14688:	00000793          	li	a5,0
   1468c:	00100513          	li	a0,1
   14690:	e91ff06f          	j	14520 <__mulsf3+0x1b0>
   14694:	00100793          	li	a5,1
   14698:	fb9ff06f          	j	14650 <__mulsf3+0x2e0>
   1469c:	004007b7          	lui	a5,0x400
   146a0:	0ff00513          	li	a0,255
   146a4:	00000993          	li	s3,0
   146a8:	e79ff06f          	j	14520 <__mulsf3+0x1b0>
   146ac:	00000793          	li	a5,0
   146b0:	0ff00513          	li	a0,255
   146b4:	e6dff06f          	j	14520 <__mulsf3+0x1b0>

000146b8 <__subsf3>:
   146b8:	00800737          	lui	a4,0x800
   146bc:	fff70713          	addi	a4,a4,-1 # 7fffff <__BSS_END__+0x7e3257>
   146c0:	0175d693          	srli	a3,a1,0x17
   146c4:	00a777b3          	and	a5,a4,a0
   146c8:	0ff6f693          	zext.b	a3,a3
   146cc:	00b77733          	and	a4,a4,a1
   146d0:	ff010113          	addi	sp,sp,-16
   146d4:	00371713          	slli	a4,a4,0x3
   146d8:	f0168613          	addi	a2,a3,-255
   146dc:	00812423          	sw	s0,8(sp)
   146e0:	00912223          	sw	s1,4(sp)
   146e4:	01755413          	srli	s0,a0,0x17
   146e8:	01f55493          	srli	s1,a0,0x1f
   146ec:	00c03633          	snez	a2,a2
   146f0:	00173513          	seqz	a0,a4
   146f4:	00a66633          	or	a2,a2,a0
   146f8:	01f5d593          	srli	a1,a1,0x1f
   146fc:	0ff47413          	zext.b	s0,s0
   14700:	00c5c5b3          	xor	a1,a1,a2
   14704:	00112623          	sw	ra,12(sp)
   14708:	01212023          	sw	s2,0(sp)
   1470c:	00379793          	slli	a5,a5,0x3
   14710:	40d40633          	sub	a2,s0,a3
   14714:	1c959c63          	bne	a1,s1,148ec <__subsf3+0x234>
   14718:	08c05e63          	blez	a2,147b4 <__subsf3+0xfc>
   1471c:	0ff00513          	li	a0,255
   14720:	02069663          	bnez	a3,1474c <__subsf3+0x94>
   14724:	00070e63          	beqz	a4,14740 <__subsf3+0x88>
   14728:	fff60593          	addi	a1,a2,-1 # 3ffffff <__BSS_END__+0x3fe3257>
   1472c:	00059863          	bnez	a1,1473c <__subsf3+0x84>
   14730:	00e787b3          	add	a5,a5,a4
   14734:	00100413          	li	s0,1
   14738:	04c0006f          	j	14784 <__subsf3+0xcc>
   1473c:	02a61063          	bne	a2,a0,1475c <__subsf3+0xa4>
   14740:	00060413          	mv	s0,a2
   14744:	00078713          	mv	a4,a5
   14748:	3880006f          	j	14ad0 <__subsf3+0x418>
   1474c:	fea40ce3          	beq	s0,a0,14744 <__subsf3+0x8c>
   14750:	040006b7          	lui	a3,0x4000
   14754:	00d76733          	or	a4,a4,a3
   14758:	00060593          	mv	a1,a2
   1475c:	01b00613          	li	a2,27
   14760:	00100693          	li	a3,1
   14764:	00b64e63          	blt	a2,a1,14780 <__subsf3+0xc8>
   14768:	02000693          	li	a3,32
   1476c:	40b686b3          	sub	a3,a3,a1
   14770:	00b75633          	srl	a2,a4,a1
   14774:	00d71733          	sll	a4,a4,a3
   14778:	00e03733          	snez	a4,a4
   1477c:	00e666b3          	or	a3,a2,a4
   14780:	00d787b3          	add	a5,a5,a3
   14784:	00579713          	slli	a4,a5,0x5
   14788:	12075263          	bgez	a4,148ac <__subsf3+0x1f4>
   1478c:	00140413          	addi	s0,s0,1
   14790:	0ff00713          	li	a4,255
   14794:	36e40063          	beq	s0,a4,14af4 <__subsf3+0x43c>
   14798:	7e0006b7          	lui	a3,0x7e000
   1479c:	0017d713          	srli	a4,a5,0x1
   147a0:	fff68693          	addi	a3,a3,-1 # 7dffffff <__BSS_END__+0x7dfe3257>
   147a4:	00d77733          	and	a4,a4,a3
   147a8:	0017f793          	andi	a5,a5,1
   147ac:	00f767b3          	or	a5,a4,a5
   147b0:	0fc0006f          	j	148ac <__subsf3+0x1f4>
   147b4:	06060463          	beqz	a2,1481c <__subsf3+0x164>
   147b8:	40868633          	sub	a2,a3,s0
   147bc:	0ff00513          	li	a0,255
   147c0:	00041e63          	bnez	s0,147dc <__subsf3+0x124>
   147c4:	30078463          	beqz	a5,14acc <__subsf3+0x414>
   147c8:	fff60593          	addi	a1,a2,-1
   147cc:	f60582e3          	beqz	a1,14730 <__subsf3+0x78>
   147d0:	00a61e63          	bne	a2,a0,147ec <__subsf3+0x134>
   147d4:	0ff00413          	li	s0,255
   147d8:	2f80006f          	j	14ad0 <__subsf3+0x418>
   147dc:	fea68ce3          	beq	a3,a0,147d4 <__subsf3+0x11c>
   147e0:	040005b7          	lui	a1,0x4000
   147e4:	00b7e7b3          	or	a5,a5,a1
   147e8:	00060593          	mv	a1,a2
   147ec:	01b00513          	li	a0,27
   147f0:	00100613          	li	a2,1
   147f4:	00b54e63          	blt	a0,a1,14810 <__subsf3+0x158>
   147f8:	02000613          	li	a2,32
   147fc:	40b60633          	sub	a2,a2,a1
   14800:	00b7d533          	srl	a0,a5,a1
   14804:	00c797b3          	sll	a5,a5,a2
   14808:	00f037b3          	snez	a5,a5
   1480c:	00f56633          	or	a2,a0,a5
   14810:	00e607b3          	add	a5,a2,a4
   14814:	00068413          	mv	s0,a3
   14818:	f6dff06f          	j	14784 <__subsf3+0xcc>
   1481c:	00140693          	addi	a3,s0,1
   14820:	0fe6f613          	andi	a2,a3,254
   14824:	06061a63          	bnez	a2,14898 <__subsf3+0x1e0>
   14828:	06041063          	bnez	s0,14888 <__subsf3+0x1d0>
   1482c:	28078c63          	beqz	a5,14ac4 <__subsf3+0x40c>
   14830:	08070a63          	beqz	a4,148c4 <__subsf3+0x20c>
   14834:	00f70733          	add	a4,a4,a5
   14838:	00571793          	slli	a5,a4,0x5
   1483c:	2807da63          	bgez	a5,14ad0 <__subsf3+0x418>
   14840:	1f8007b7          	lui	a5,0x1f800
   14844:	00375713          	srli	a4,a4,0x3
   14848:	fff78793          	addi	a5,a5,-1 # 1f7fffff <__BSS_END__+0x1f7e3257>
   1484c:	00f777b3          	and	a5,a4,a5
   14850:	00100413          	li	s0,1
   14854:	0ff47413          	zext.b	s0,s0
   14858:	00979793          	slli	a5,a5,0x9
   1485c:	01741413          	slli	s0,s0,0x17
   14860:	0097d793          	srli	a5,a5,0x9
   14864:	00f46433          	or	s0,s0,a5
   14868:	01f49513          	slli	a0,s1,0x1f
   1486c:	00c12083          	lw	ra,12(sp)
   14870:	00a46533          	or	a0,s0,a0
   14874:	00812403          	lw	s0,8(sp)
   14878:	00412483          	lw	s1,4(sp)
   1487c:	00012903          	lw	s2,0(sp)
   14880:	01010113          	addi	sp,sp,16
   14884:	00008067          	ret
   14888:	f40786e3          	beqz	a5,147d4 <__subsf3+0x11c>
   1488c:	1a071e63          	bnez	a4,14a48 <__subsf3+0x390>
   14890:	00078713          	mv	a4,a5
   14894:	f41ff06f          	j	147d4 <__subsf3+0x11c>
   14898:	0ff00613          	li	a2,255
   1489c:	24c68a63          	beq	a3,a2,14af0 <__subsf3+0x438>
   148a0:	00e78733          	add	a4,a5,a4
   148a4:	00175793          	srli	a5,a4,0x1
   148a8:	00068413          	mv	s0,a3
   148ac:	0077f713          	andi	a4,a5,7
   148b0:	00070a63          	beqz	a4,148c4 <__subsf3+0x20c>
   148b4:	00f7f713          	andi	a4,a5,15
   148b8:	00400693          	li	a3,4
   148bc:	00d70463          	beq	a4,a3,148c4 <__subsf3+0x20c>
   148c0:	00d787b3          	add	a5,a5,a3
   148c4:	00579713          	slli	a4,a5,0x5
   148c8:	e6075ee3          	bgez	a4,14744 <__subsf3+0x8c>
   148cc:	00140413          	addi	s0,s0,1
   148d0:	0ff00713          	li	a4,255
   148d4:	22e40063          	beq	s0,a4,14af4 <__subsf3+0x43c>
   148d8:	1f800737          	lui	a4,0x1f800
   148dc:	0037d793          	srli	a5,a5,0x3
   148e0:	fff70713          	addi	a4,a4,-1 # 1f7fffff <__BSS_END__+0x1f7e3257>
   148e4:	00e7f7b3          	and	a5,a5,a4
   148e8:	f6dff06f          	j	14854 <__subsf3+0x19c>
   148ec:	08c05063          	blez	a2,1496c <__subsf3+0x2b4>
   148f0:	06069263          	bnez	a3,14954 <__subsf3+0x29c>
   148f4:	e40706e3          	beqz	a4,14740 <__subsf3+0x88>
   148f8:	fff60593          	addi	a1,a2,-1
   148fc:	00059863          	bnez	a1,1490c <__subsf3+0x254>
   14900:	40e787b3          	sub	a5,a5,a4
   14904:	00100413          	li	s0,1
   14908:	0340006f          	j	1493c <__subsf3+0x284>
   1490c:	0ff00693          	li	a3,255
   14910:	e2d608e3          	beq	a2,a3,14740 <__subsf3+0x88>
   14914:	01b00613          	li	a2,27
   14918:	00100693          	li	a3,1
   1491c:	00b64e63          	blt	a2,a1,14938 <__subsf3+0x280>
   14920:	02000693          	li	a3,32
   14924:	40b686b3          	sub	a3,a3,a1
   14928:	00b75633          	srl	a2,a4,a1
   1492c:	00d71733          	sll	a4,a4,a3
   14930:	00e03733          	snez	a4,a4
   14934:	00e666b3          	or	a3,a2,a4
   14938:	40d787b3          	sub	a5,a5,a3
   1493c:	00579713          	slli	a4,a5,0x5
   14940:	f60756e3          	bgez	a4,148ac <__subsf3+0x1f4>
   14944:	04000937          	lui	s2,0x4000
   14948:	fff90913          	addi	s2,s2,-1 # 3ffffff <__BSS_END__+0x3fe3257>
   1494c:	0127f933          	and	s2,a5,s2
   14950:	11c0006f          	j	14a6c <__subsf3+0x3b4>
   14954:	0ff00693          	li	a3,255
   14958:	ded406e3          	beq	s0,a3,14744 <__subsf3+0x8c>
   1495c:	040006b7          	lui	a3,0x4000
   14960:	00d76733          	or	a4,a4,a3
   14964:	00060593          	mv	a1,a2
   14968:	fadff06f          	j	14914 <__subsf3+0x25c>
   1496c:	06060e63          	beqz	a2,149e8 <__subsf3+0x330>
   14970:	40868633          	sub	a2,a3,s0
   14974:	02041663          	bnez	s0,149a0 <__subsf3+0x2e8>
   14978:	02078063          	beqz	a5,14998 <__subsf3+0x2e0>
   1497c:	fff60513          	addi	a0,a2,-1
   14980:	00051863          	bnez	a0,14990 <__subsf3+0x2d8>
   14984:	40f707b3          	sub	a5,a4,a5
   14988:	00058493          	mv	s1,a1
   1498c:	f79ff06f          	j	14904 <__subsf3+0x24c>
   14990:	0ff00813          	li	a6,255
   14994:	03061063          	bne	a2,a6,149b4 <__subsf3+0x2fc>
   14998:	00060413          	mv	s0,a2
   1499c:	0680006f          	j	14a04 <__subsf3+0x34c>
   149a0:	0ff00513          	li	a0,255
   149a4:	14a68263          	beq	a3,a0,14ae8 <__subsf3+0x430>
   149a8:	04000537          	lui	a0,0x4000
   149ac:	00a7e7b3          	or	a5,a5,a0
   149b0:	00060513          	mv	a0,a2
   149b4:	01b00813          	li	a6,27
   149b8:	00100613          	li	a2,1
   149bc:	00a84e63          	blt	a6,a0,149d8 <__subsf3+0x320>
   149c0:	02000613          	li	a2,32
   149c4:	40a60633          	sub	a2,a2,a0
   149c8:	00a7d833          	srl	a6,a5,a0
   149cc:	00c797b3          	sll	a5,a5,a2
   149d0:	00f037b3          	snez	a5,a5
   149d4:	00f86633          	or	a2,a6,a5
   149d8:	40c707b3          	sub	a5,a4,a2
   149dc:	00068413          	mv	s0,a3
   149e0:	00058493          	mv	s1,a1
   149e4:	f59ff06f          	j	1493c <__subsf3+0x284>
   149e8:	00140693          	addi	a3,s0,1
   149ec:	0fe6f693          	andi	a3,a3,254
   149f0:	06069463          	bnez	a3,14a58 <__subsf3+0x3a0>
   149f4:	04041863          	bnez	s0,14a44 <__subsf3+0x38c>
   149f8:	00079a63          	bnez	a5,14a0c <__subsf3+0x354>
   149fc:	00000493          	li	s1,0
   14a00:	e4070ae3          	beqz	a4,14854 <__subsf3+0x19c>
   14a04:	00058493          	mv	s1,a1
   14a08:	0c80006f          	j	14ad0 <__subsf3+0x418>
   14a0c:	ea070ce3          	beqz	a4,148c4 <__subsf3+0x20c>
   14a10:	40e786b3          	sub	a3,a5,a4
   14a14:	00569613          	slli	a2,a3,0x5
   14a18:	00065c63          	bgez	a2,14a30 <__subsf3+0x378>
   14a1c:	40f707b3          	sub	a5,a4,a5
   14a20:	00058493          	mv	s1,a1
   14a24:	00000413          	li	s0,0
   14a28:	e20786e3          	beqz	a5,14854 <__subsf3+0x19c>
   14a2c:	e81ff06f          	j	148ac <__subsf3+0x1f4>
   14a30:	00068713          	mv	a4,a3
   14a34:	08069e63          	bnez	a3,14ad0 <__subsf3+0x418>
   14a38:	00000793          	li	a5,0
   14a3c:	00000493          	li	s1,0
   14a40:	e15ff06f          	j	14854 <__subsf3+0x19c>
   14a44:	e40794e3          	bnez	a5,1488c <__subsf3+0x1d4>
   14a48:	00000493          	li	s1,0
   14a4c:	0ff00413          	li	s0,255
   14a50:	004007b7          	lui	a5,0x400
   14a54:	e01ff06f          	j	14854 <__subsf3+0x19c>
   14a58:	40e78933          	sub	s2,a5,a4
   14a5c:	00591693          	slli	a3,s2,0x5
   14a60:	0406d263          	bgez	a3,14aa4 <__subsf3+0x3ec>
   14a64:	40f70933          	sub	s2,a4,a5
   14a68:	00058493          	mv	s1,a1
   14a6c:	00090513          	mv	a0,s2
   14a70:	490000ef          	jal	14f00 <__clzsi2>
   14a74:	ffb50513          	addi	a0,a0,-5 # 3fffffb <__BSS_END__+0x3fe3253>
   14a78:	00a91933          	sll	s2,s2,a0
   14a7c:	02854a63          	blt	a0,s0,14ab0 <__subsf3+0x3f8>
   14a80:	40850533          	sub	a0,a0,s0
   14a84:	00150513          	addi	a0,a0,1
   14a88:	02000713          	li	a4,32
   14a8c:	40a70733          	sub	a4,a4,a0
   14a90:	00a957b3          	srl	a5,s2,a0
   14a94:	00e91933          	sll	s2,s2,a4
   14a98:	01203933          	snez	s2,s2
   14a9c:	0127e7b3          	or	a5,a5,s2
   14aa0:	f85ff06f          	j	14a24 <__subsf3+0x36c>
   14aa4:	fc0914e3          	bnez	s2,14a6c <__subsf3+0x3b4>
   14aa8:	00000413          	li	s0,0
   14aac:	f8dff06f          	j	14a38 <__subsf3+0x380>
   14ab0:	fc0007b7          	lui	a5,0xfc000
   14ab4:	fff78793          	addi	a5,a5,-1 # fbffffff <__BSS_END__+0xfbfe3257>
   14ab8:	40a40433          	sub	s0,s0,a0
   14abc:	00f977b3          	and	a5,s2,a5
   14ac0:	dedff06f          	j	148ac <__subsf3+0x1f4>
   14ac4:	00070793          	mv	a5,a4
   14ac8:	f5dff06f          	j	14a24 <__subsf3+0x36c>
   14acc:	00060413          	mv	s0,a2
   14ad0:	00375793          	srli	a5,a4,0x3
   14ad4:	0ff00713          	li	a4,255
   14ad8:	d6e41ee3          	bne	s0,a4,14854 <__subsf3+0x19c>
   14adc:	d6078ce3          	beqz	a5,14854 <__subsf3+0x19c>
   14ae0:	004007b7          	lui	a5,0x400
   14ae4:	f59ff06f          	j	14a3c <__subsf3+0x384>
   14ae8:	00068413          	mv	s0,a3
   14aec:	f19ff06f          	j	14a04 <__subsf3+0x34c>
   14af0:	00068413          	mv	s0,a3
   14af4:	00000793          	li	a5,0
   14af8:	d5dff06f          	j	14854 <__subsf3+0x19c>

00014afc <__unordsf2>:
   14afc:	008007b7          	lui	a5,0x800
   14b00:	fff78793          	addi	a5,a5,-1 # 7fffff <__BSS_END__+0x7e3257>
   14b04:	00a7f733          	and	a4,a5,a0
   14b08:	01755513          	srli	a0,a0,0x17
   14b0c:	0ff57513          	zext.b	a0,a0
   14b10:	f0150513          	addi	a0,a0,-255
   14b14:	00b7f7b3          	and	a5,a5,a1
   14b18:	00051663          	bnez	a0,14b24 <__unordsf2+0x28>
   14b1c:	00100513          	li	a0,1
   14b20:	00071e63          	bnez	a4,14b3c <__unordsf2+0x40>
   14b24:	0175d593          	srli	a1,a1,0x17
   14b28:	0ff5f593          	zext.b	a1,a1
   14b2c:	f0158593          	addi	a1,a1,-255 # 3ffff01 <__BSS_END__+0x3fe3159>
   14b30:	00f037b3          	snez	a5,a5
   14b34:	0015b593          	seqz	a1,a1
   14b38:	00b7f533          	and	a0,a5,a1
   14b3c:	00008067          	ret

00014b40 <__fixsfsi>:
   14b40:	00800637          	lui	a2,0x800
   14b44:	01755713          	srli	a4,a0,0x17
   14b48:	fff60793          	addi	a5,a2,-1 # 7fffff <__BSS_END__+0x7e3257>
   14b4c:	0ff77713          	zext.b	a4,a4
   14b50:	07e00593          	li	a1,126
   14b54:	00a7f7b3          	and	a5,a5,a0
   14b58:	01f55693          	srli	a3,a0,0x1f
   14b5c:	04e5d663          	bge	a1,a4,14ba8 <__fixsfsi+0x68>
   14b60:	09d00593          	li	a1,157
   14b64:	00e5da63          	bge	a1,a4,14b78 <__fixsfsi+0x38>
   14b68:	80000537          	lui	a0,0x80000
   14b6c:	fff50513          	addi	a0,a0,-1 # 7fffffff <__BSS_END__+0x7ffe3257>
   14b70:	00a68533          	add	a0,a3,a0
   14b74:	00008067          	ret
   14b78:	00c7e533          	or	a0,a5,a2
   14b7c:	09500793          	li	a5,149
   14b80:	00e7dc63          	bge	a5,a4,14b98 <__fixsfsi+0x58>
   14b84:	f6a70713          	addi	a4,a4,-150
   14b88:	00e51533          	sll	a0,a0,a4
   14b8c:	02068063          	beqz	a3,14bac <__fixsfsi+0x6c>
   14b90:	40a00533          	neg	a0,a0
   14b94:	00008067          	ret
   14b98:	09600793          	li	a5,150
   14b9c:	40e787b3          	sub	a5,a5,a4
   14ba0:	00f55533          	srl	a0,a0,a5
   14ba4:	fe9ff06f          	j	14b8c <__fixsfsi+0x4c>
   14ba8:	00000513          	li	a0,0
   14bac:	00008067          	ret

00014bb0 <__fixunssfsi>:
   14bb0:	008005b7          	lui	a1,0x800
   14bb4:	01755793          	srli	a5,a0,0x17
   14bb8:	fff58693          	addi	a3,a1,-1 # 7fffff <__BSS_END__+0x7e3257>
   14bbc:	0ff7f793          	zext.b	a5,a5
   14bc0:	07e00613          	li	a2,126
   14bc4:	00a6f6b3          	and	a3,a3,a0
   14bc8:	01f55713          	srli	a4,a0,0x1f
   14bcc:	04f65263          	bge	a2,a5,14c10 <__fixunssfsi+0x60>
   14bd0:	09f00613          	li	a2,159
   14bd4:	40e60633          	sub	a2,a2,a4
   14bd8:	fff70513          	addi	a0,a4,-1
   14bdc:	02c7dc63          	bge	a5,a2,14c14 <__fixunssfsi+0x64>
   14be0:	00000513          	li	a0,0
   14be4:	02071863          	bnez	a4,14c14 <__fixunssfsi+0x64>
   14be8:	09500713          	li	a4,149
   14bec:	00b6e533          	or	a0,a3,a1
   14bf0:	00f75863          	bge	a4,a5,14c00 <__fixunssfsi+0x50>
   14bf4:	f6a78793          	addi	a5,a5,-150
   14bf8:	00f51533          	sll	a0,a0,a5
   14bfc:	00008067          	ret
   14c00:	09600713          	li	a4,150
   14c04:	40f707b3          	sub	a5,a4,a5
   14c08:	00f55533          	srl	a0,a0,a5
   14c0c:	00008067          	ret
   14c10:	00000513          	li	a0,0
   14c14:	00008067          	ret

00014c18 <__floatsisf>:
   14c18:	ff010113          	addi	sp,sp,-16
   14c1c:	00112623          	sw	ra,12(sp)
   14c20:	00812423          	sw	s0,8(sp)
   14c24:	00912223          	sw	s1,4(sp)
   14c28:	0e050463          	beqz	a0,14d10 <__floatsisf+0xf8>
   14c2c:	41f55793          	srai	a5,a0,0x1f
   14c30:	00a7c433          	xor	s0,a5,a0
   14c34:	40f40433          	sub	s0,s0,a5
   14c38:	01f55493          	srli	s1,a0,0x1f
   14c3c:	00040513          	mv	a0,s0
   14c40:	2c0000ef          	jal	14f00 <__clzsi2>
   14c44:	09e00793          	li	a5,158
   14c48:	00050693          	mv	a3,a0
   14c4c:	40a78533          	sub	a0,a5,a0
   14c50:	00700793          	li	a5,7
   14c54:	04d7d063          	bge	a5,a3,14c94 <__floatsisf+0x7c>
   14c58:	00800793          	li	a5,8
   14c5c:	0cf68063          	beq	a3,a5,14d1c <__floatsisf+0x104>
   14c60:	ff868693          	addi	a3,a3,-8 # 3fffff8 <__BSS_END__+0x3fe3250>
   14c64:	00d41433          	sll	s0,s0,a3
   14c68:	00941413          	slli	s0,s0,0x9
   14c6c:	00945413          	srli	s0,s0,0x9
   14c70:	01751513          	slli	a0,a0,0x17
   14c74:	00c12083          	lw	ra,12(sp)
   14c78:	00856533          	or	a0,a0,s0
   14c7c:	00812403          	lw	s0,8(sp)
   14c80:	01f49493          	slli	s1,s1,0x1f
   14c84:	00956533          	or	a0,a0,s1
   14c88:	00412483          	lw	s1,4(sp)
   14c8c:	01010113          	addi	sp,sp,16
   14c90:	00008067          	ret
   14c94:	00400793          	li	a5,4
   14c98:	00500713          	li	a4,5
   14c9c:	06d7c263          	blt	a5,a3,14d00 <__floatsisf+0xe8>
   14ca0:	01b68793          	addi	a5,a3,27
   14ca4:	00f417b3          	sll	a5,s0,a5
   14ca8:	40d70733          	sub	a4,a4,a3
   14cac:	00f037b3          	snez	a5,a5
   14cb0:	00e45433          	srl	s0,s0,a4
   14cb4:	0087e433          	or	s0,a5,s0
   14cb8:	fc000737          	lui	a4,0xfc000
   14cbc:	fff70713          	addi	a4,a4,-1 # fbffffff <__BSS_END__+0xfbfe3257>
   14cc0:	00747793          	andi	a5,s0,7
   14cc4:	00e47733          	and	a4,s0,a4
   14cc8:	02078863          	beqz	a5,14cf8 <__floatsisf+0xe0>
   14ccc:	00f47413          	andi	s0,s0,15
   14cd0:	00400793          	li	a5,4
   14cd4:	02f40263          	beq	s0,a5,14cf8 <__floatsisf+0xe0>
   14cd8:	00f70733          	add	a4,a4,a5
   14cdc:	00571793          	slli	a5,a4,0x5
   14ce0:	0007dc63          	bgez	a5,14cf8 <__floatsisf+0xe0>
   14ce4:	fc0007b7          	lui	a5,0xfc000
   14ce8:	fff78793          	addi	a5,a5,-1 # fbffffff <__BSS_END__+0xfbfe3257>
   14cec:	00f77733          	and	a4,a4,a5
   14cf0:	09f00793          	li	a5,159
   14cf4:	40d78533          	sub	a0,a5,a3
   14cf8:	00375413          	srli	s0,a4,0x3
   14cfc:	f6dff06f          	j	14c68 <__floatsisf+0x50>
   14d00:	fae68ce3          	beq	a3,a4,14cb8 <__floatsisf+0xa0>
   14d04:	ffb68793          	addi	a5,a3,-5
   14d08:	00f41433          	sll	s0,s0,a5
   14d0c:	fadff06f          	j	14cb8 <__floatsisf+0xa0>
   14d10:	00000493          	li	s1,0
   14d14:	00000413          	li	s0,0
   14d18:	f51ff06f          	j	14c68 <__floatsisf+0x50>
   14d1c:	09600513          	li	a0,150
   14d20:	f49ff06f          	j	14c68 <__floatsisf+0x50>

00014d24 <__mulsi3>:
   14d24:	00050613          	mv	a2,a0
   14d28:	00000513          	li	a0,0
   14d2c:	0015f693          	andi	a3,a1,1
   14d30:	00068463          	beqz	a3,14d38 <__mulsi3+0x14>
   14d34:	00c50533          	add	a0,a0,a2
   14d38:	0015d593          	srli	a1,a1,0x1
   14d3c:	00161613          	slli	a2,a2,0x1
   14d40:	fe0596e3          	bnez	a1,14d2c <__mulsi3+0x8>
   14d44:	00008067          	ret

00014d48 <__muldi3>:
   14d48:	ff010113          	addi	sp,sp,-16
   14d4c:	00068313          	mv	t1,a3
   14d50:	00112623          	sw	ra,12(sp)
   14d54:	00050e13          	mv	t3,a0
   14d58:	00050693          	mv	a3,a0
   14d5c:	00060893          	mv	a7,a2
   14d60:	00000713          	li	a4,0
   14d64:	00000793          	li	a5,0
   14d68:	00000813          	li	a6,0
   14d6c:	0018fe93          	andi	t4,a7,1
   14d70:	00171513          	slli	a0,a4,0x1
   14d74:	000e8a63          	beqz	t4,14d88 <__muldi3+0x40>
   14d78:	01068833          	add	a6,a3,a6
   14d7c:	00e787b3          	add	a5,a5,a4
   14d80:	00d83733          	sltu	a4,a6,a3
   14d84:	00f707b3          	add	a5,a4,a5
   14d88:	01f6d713          	srli	a4,a3,0x1f
   14d8c:	0018d893          	srli	a7,a7,0x1
   14d90:	00e56733          	or	a4,a0,a4
   14d94:	00169693          	slli	a3,a3,0x1
   14d98:	fc089ae3          	bnez	a7,14d6c <__muldi3+0x24>
   14d9c:	00058863          	beqz	a1,14dac <__muldi3+0x64>
   14da0:	00060513          	mv	a0,a2
   14da4:	f81ff0ef          	jal	14d24 <__mulsi3>
   14da8:	00a787b3          	add	a5,a5,a0
   14dac:	00030a63          	beqz	t1,14dc0 <__muldi3+0x78>
   14db0:	000e0513          	mv	a0,t3
   14db4:	00030593          	mv	a1,t1
   14db8:	f6dff0ef          	jal	14d24 <__mulsi3>
   14dbc:	00f507b3          	add	a5,a0,a5
   14dc0:	00c12083          	lw	ra,12(sp)
   14dc4:	00080513          	mv	a0,a6
   14dc8:	00078593          	mv	a1,a5
   14dcc:	01010113          	addi	sp,sp,16
   14dd0:	00008067          	ret

00014dd4 <__divsi3>:
   14dd4:	06054063          	bltz	a0,14e34 <__umodsi3+0x10>
   14dd8:	0605c663          	bltz	a1,14e44 <__umodsi3+0x20>

00014ddc <__hidden___udivsi3>:
   14ddc:	00058613          	mv	a2,a1
   14de0:	00050593          	mv	a1,a0
   14de4:	fff00513          	li	a0,-1
   14de8:	02060c63          	beqz	a2,14e20 <__hidden___udivsi3+0x44>
   14dec:	00100693          	li	a3,1
   14df0:	00b67a63          	bgeu	a2,a1,14e04 <__hidden___udivsi3+0x28>
   14df4:	00c05863          	blez	a2,14e04 <__hidden___udivsi3+0x28>
   14df8:	00161613          	slli	a2,a2,0x1
   14dfc:	00169693          	slli	a3,a3,0x1
   14e00:	feb66ae3          	bltu	a2,a1,14df4 <__hidden___udivsi3+0x18>
   14e04:	00000513          	li	a0,0
   14e08:	00c5e663          	bltu	a1,a2,14e14 <__hidden___udivsi3+0x38>
   14e0c:	40c585b3          	sub	a1,a1,a2
   14e10:	00d56533          	or	a0,a0,a3
   14e14:	0016d693          	srli	a3,a3,0x1
   14e18:	00165613          	srli	a2,a2,0x1
   14e1c:	fe0696e3          	bnez	a3,14e08 <__hidden___udivsi3+0x2c>
   14e20:	00008067          	ret

00014e24 <__umodsi3>:
   14e24:	00008293          	mv	t0,ra
   14e28:	fb5ff0ef          	jal	14ddc <__hidden___udivsi3>
   14e2c:	00058513          	mv	a0,a1
   14e30:	00028067          	jr	t0
   14e34:	40a00533          	neg	a0,a0
   14e38:	00b04863          	bgtz	a1,14e48 <__umodsi3+0x24>
   14e3c:	40b005b3          	neg	a1,a1
   14e40:	f9dff06f          	j	14ddc <__hidden___udivsi3>
   14e44:	40b005b3          	neg	a1,a1
   14e48:	00008293          	mv	t0,ra
   14e4c:	f91ff0ef          	jal	14ddc <__hidden___udivsi3>
   14e50:	40a00533          	neg	a0,a0
   14e54:	00028067          	jr	t0

00014e58 <__modsi3>:
   14e58:	00008293          	mv	t0,ra
   14e5c:	0005ca63          	bltz	a1,14e70 <__modsi3+0x18>
   14e60:	00054c63          	bltz	a0,14e78 <__modsi3+0x20>
   14e64:	f79ff0ef          	jal	14ddc <__hidden___udivsi3>
   14e68:	00058513          	mv	a0,a1
   14e6c:	00028067          	jr	t0
   14e70:	40b005b3          	neg	a1,a1
   14e74:	fe0558e3          	bgez	a0,14e64 <__modsi3+0xc>
   14e78:	40a00533          	neg	a0,a0
   14e7c:	f61ff0ef          	jal	14ddc <__hidden___udivsi3>
   14e80:	40b00533          	neg	a0,a1
   14e84:	00028067          	jr	t0

00014e88 <__lshrdi3>:
   14e88:	00060e63          	beqz	a2,14ea4 <__lshrdi3+0x1c>
   14e8c:	01f00793          	li	a5,31
   14e90:	00c7dc63          	bge	a5,a2,14ea8 <__lshrdi3+0x20>
   14e94:	fe060613          	addi	a2,a2,-32
   14e98:	00c5d533          	srl	a0,a1,a2
   14e9c:	00000713          	li	a4,0
   14ea0:	00070593          	mv	a1,a4
   14ea4:	00008067          	ret
   14ea8:	02000793          	li	a5,32
   14eac:	40c787b3          	sub	a5,a5,a2
   14eb0:	00c5d733          	srl	a4,a1,a2
   14eb4:	00c55533          	srl	a0,a0,a2
   14eb8:	00f595b3          	sll	a1,a1,a5
   14ebc:	00a5e533          	or	a0,a1,a0
   14ec0:	fe1ff06f          	j	14ea0 <__lshrdi3+0x18>

00014ec4 <__ashldi3>:
   14ec4:	00060e63          	beqz	a2,14ee0 <__ashldi3+0x1c>
   14ec8:	01f00793          	li	a5,31
   14ecc:	00c7dc63          	bge	a5,a2,14ee4 <__ashldi3+0x20>
   14ed0:	fe060613          	addi	a2,a2,-32
   14ed4:	00c515b3          	sll	a1,a0,a2
   14ed8:	00000713          	li	a4,0
   14edc:	00070513          	mv	a0,a4
   14ee0:	00008067          	ret
   14ee4:	02000793          	li	a5,32
   14ee8:	40c787b3          	sub	a5,a5,a2
   14eec:	00c51733          	sll	a4,a0,a2
   14ef0:	00c595b3          	sll	a1,a1,a2
   14ef4:	00f55533          	srl	a0,a0,a5
   14ef8:	00b565b3          	or	a1,a0,a1
   14efc:	fe1ff06f          	j	14edc <__ashldi3+0x18>

00014f00 <__clzsi2>:
   14f00:	000107b7          	lui	a5,0x10
   14f04:	02f57a63          	bgeu	a0,a5,14f38 <__clzsi2+0x38>
   14f08:	10053793          	sltiu	a5,a0,256
   14f0c:	0017b793          	seqz	a5,a5
   14f10:	00379793          	slli	a5,a5,0x3
   14f14:	0001b737          	lui	a4,0x1b
   14f18:	00f55533          	srl	a0,a0,a5
   14f1c:	aec70713          	addi	a4,a4,-1300 # 1aaec <__clz_tab>
   14f20:	00a70733          	add	a4,a4,a0
   14f24:	00074503          	lbu	a0,0(a4)
   14f28:	02000693          	li	a3,32
   14f2c:	40f686b3          	sub	a3,a3,a5
   14f30:	40a68533          	sub	a0,a3,a0
   14f34:	00008067          	ret
   14f38:	01000737          	lui	a4,0x1000
   14f3c:	01800793          	li	a5,24
   14f40:	fce57ae3          	bgeu	a0,a4,14f14 <__clzsi2+0x14>
   14f44:	01000793          	li	a5,16
   14f48:	fcdff06f          	j	14f14 <__clzsi2+0x14>

00014f4c <abort>:
   14f4c:	ff010113          	addi	sp,sp,-16
   14f50:	00600513          	li	a0,6
   14f54:	00112623          	sw	ra,12(sp)
   14f58:	700020ef          	jal	17658 <raise>
   14f5c:	00100513          	li	a0,1
   14f60:	0d5050ef          	jal	1a834 <_exit>

00014f64 <__assert_func>:
   14f64:	f5c1a783          	lw	a5,-164(gp) # 1ca4c <_impure_ptr>
   14f68:	ff010113          	addi	sp,sp,-16
   14f6c:	00060813          	mv	a6,a2
   14f70:	00112623          	sw	ra,12(sp)
   14f74:	00050313          	mv	t1,a0
   14f78:	00058713          	mv	a4,a1
   14f7c:	00c7a503          	lw	a0,12(a5) # 1000c <exit-0xa8>
   14f80:	00068613          	mv	a2,a3
   14f84:	02080063          	beqz	a6,14fa4 <__assert_func+0x40>
   14f88:	0001b7b7          	lui	a5,0x1b
   14f8c:	9f478793          	addi	a5,a5,-1548 # 1a9f4 <_exit+0x1c0>
   14f90:	0001b5b7          	lui	a1,0x1b
   14f94:	00030693          	mv	a3,t1
   14f98:	a0458593          	addi	a1,a1,-1532 # 1aa04 <_exit+0x1d0>
   14f9c:	064000ef          	jal	15000 <fiprintf>
   14fa0:	fadff0ef          	jal	14f4c <abort>
   14fa4:	0001b7b7          	lui	a5,0x1b
   14fa8:	a0078793          	addi	a5,a5,-1536 # 1aa00 <_exit+0x1cc>
   14fac:	00078813          	mv	a6,a5
   14fb0:	fe1ff06f          	j	14f90 <__assert_func+0x2c>

00014fb4 <__assert>:
   14fb4:	ff010113          	addi	sp,sp,-16
   14fb8:	00060693          	mv	a3,a2
   14fbc:	00000613          	li	a2,0
   14fc0:	00112623          	sw	ra,12(sp)
   14fc4:	fa1ff0ef          	jal	14f64 <__assert_func>

00014fc8 <_fiprintf_r>:
   14fc8:	fc010113          	addi	sp,sp,-64
   14fcc:	02c10313          	addi	t1,sp,44
   14fd0:	02d12623          	sw	a3,44(sp)
   14fd4:	00030693          	mv	a3,t1
   14fd8:	00112e23          	sw	ra,28(sp)
   14fdc:	02e12823          	sw	a4,48(sp)
   14fe0:	02f12a23          	sw	a5,52(sp)
   14fe4:	03012c23          	sw	a6,56(sp)
   14fe8:	03112e23          	sw	a7,60(sp)
   14fec:	00612623          	sw	t1,12(sp)
   14ff0:	060000ef          	jal	15050 <_vfiprintf_r>
   14ff4:	01c12083          	lw	ra,28(sp)
   14ff8:	04010113          	addi	sp,sp,64
   14ffc:	00008067          	ret

00015000 <fiprintf>:
   15000:	fc010113          	addi	sp,sp,-64
   15004:	00050e93          	mv	t4,a0
   15008:	f5c1a503          	lw	a0,-164(gp) # 1ca4c <_impure_ptr>
   1500c:	00058e13          	mv	t3,a1
   15010:	02810313          	addi	t1,sp,40
   15014:	02c12423          	sw	a2,40(sp)
   15018:	02d12623          	sw	a3,44(sp)
   1501c:	000e8593          	mv	a1,t4
   15020:	000e0613          	mv	a2,t3
   15024:	00030693          	mv	a3,t1
   15028:	00112e23          	sw	ra,28(sp)
   1502c:	02e12823          	sw	a4,48(sp)
   15030:	02f12a23          	sw	a5,52(sp)
   15034:	03012c23          	sw	a6,56(sp)
   15038:	03112e23          	sw	a7,60(sp)
   1503c:	00612623          	sw	t1,12(sp)
   15040:	010000ef          	jal	15050 <_vfiprintf_r>
   15044:	01c12083          	lw	ra,28(sp)
   15048:	04010113          	addi	sp,sp,64
   1504c:	00008067          	ret

00015050 <_vfiprintf_r>:
   15050:	ed010113          	addi	sp,sp,-304
   15054:	11312e23          	sw	s3,284(sp)
   15058:	11a12023          	sw	s10,256(sp)
   1505c:	12112623          	sw	ra,300(sp)
   15060:	00a12223          	sw	a0,4(sp)
   15064:	00d12623          	sw	a3,12(sp)
   15068:	00060d13          	mv	s10,a2
   1506c:	00058993          	mv	s3,a1
   15070:	00050863          	beqz	a0,15080 <_vfiprintf_r+0x30>
   15074:	03452783          	lw	a5,52(a0)
   15078:	00079463          	bnez	a5,15080 <_vfiprintf_r+0x30>
   1507c:	7ed0006f          	j	16068 <_vfiprintf_r+0x1018>
   15080:	00c99703          	lh	a4,12(s3)
   15084:	0649a783          	lw	a5,100(s3)
   15088:	00002637          	lui	a2,0x2
   1508c:	01271693          	slli	a3,a4,0x12
   15090:	0006ce63          	bltz	a3,150ac <_vfiprintf_r+0x5c>
   15094:	ffffe6b7          	lui	a3,0xffffe
   15098:	fff68693          	addi	a3,a3,-1 # ffffdfff <__BSS_END__+0xfffe1257>
   1509c:	00c76733          	or	a4,a4,a2
   150a0:	00d7f7b3          	and	a5,a5,a3
   150a4:	00e99623          	sh	a4,12(s3)
   150a8:	06f9a223          	sw	a5,100(s3)
   150ac:	01279713          	slli	a4,a5,0x12
   150b0:	00075463          	bgez	a4,150b8 <_vfiprintf_r+0x68>
   150b4:	1880106f          	j	1623c <_vfiprintf_r+0x11ec>
   150b8:	00c99783          	lh	a5,12(s3)
   150bc:	0087f713          	andi	a4,a5,8
   150c0:	28070463          	beqz	a4,15348 <_vfiprintf_r+0x2f8>
   150c4:	0109a703          	lw	a4,16(s3)
   150c8:	28070063          	beqz	a4,15348 <_vfiprintf_r+0x2f8>
   150cc:	01a7f793          	andi	a5,a5,26
   150d0:	00a00713          	li	a4,10
   150d4:	28e78a63          	beq	a5,a4,15368 <_vfiprintf_r+0x318>
   150d8:	0001b737          	lui	a4,0x1b
   150dc:	11612823          	sw	s6,272(sp)
   150e0:	11712623          	sw	s7,268(sp)
   150e4:	04c10b13          	addi	s6,sp,76
   150e8:	0001bbb7          	lui	s7,0x1b
   150ec:	bec70713          	addi	a4,a4,-1044 # 1abec <__clz_tab+0x100>
   150f0:	12912223          	sw	s1,292(sp)
   150f4:	12812423          	sw	s0,296(sp)
   150f8:	13212023          	sw	s2,288(sp)
   150fc:	11412c23          	sw	s4,280(sp)
   15100:	11512a23          	sw	s5,276(sp)
   15104:	11812423          	sw	s8,264(sp)
   15108:	11912223          	sw	s9,260(sp)
   1510c:	0fb12e23          	sw	s11,252(sp)
   15110:	04012423          	sw	zero,72(sp)
   15114:	04012223          	sw	zero,68(sp)
   15118:	05612023          	sw	s6,64(sp)
   1511c:	000b0793          	mv	a5,s6
   15120:	00e12a23          	sw	a4,20(sp)
   15124:	d58b8b93          	addi	s7,s7,-680 # 1ad58 <zeroes.0>
   15128:	00012e23          	sw	zero,28(sp)
   1512c:	02012223          	sw	zero,36(sp)
   15130:	02012023          	sw	zero,32(sp)
   15134:	00012423          	sw	zero,8(sp)
   15138:	01000493          	li	s1,16
   1513c:	000d4703          	lbu	a4,0(s10)
   15140:	000d0413          	mv	s0,s10
   15144:	fdb70693          	addi	a3,a4,-37
   15148:	06068263          	beqz	a3,151ac <_vfiprintf_r+0x15c>
   1514c:	06070063          	beqz	a4,151ac <_vfiprintf_r+0x15c>
   15150:	00040913          	mv	s2,s0
   15154:	00144703          	lbu	a4,1(s0)
   15158:	00140413          	addi	s0,s0,1
   1515c:	00070663          	beqz	a4,15168 <_vfiprintf_r+0x118>
   15160:	fdb70693          	addi	a3,a4,-37
   15164:	fe0696e3          	bnez	a3,15150 <_vfiprintf_r+0x100>
   15168:	41a40a33          	sub	s4,s0,s10
   1516c:	05a40063          	beq	s0,s10,151ac <_vfiprintf_r+0x15c>
   15170:	04812683          	lw	a3,72(sp)
   15174:	04412703          	lw	a4,68(sp)
   15178:	01a7a023          	sw	s10,0(a5)
   1517c:	014686b3          	add	a3,a3,s4
   15180:	00170713          	addi	a4,a4,1
   15184:	0147a223          	sw	s4,4(a5)
   15188:	04d12423          	sw	a3,72(sp)
   1518c:	04e12223          	sw	a4,68(sp)
   15190:	00700693          	li	a3,7
   15194:	00878793          	addi	a5,a5,8
   15198:	1ee6ce63          	blt	a3,a4,15394 <_vfiprintf_r+0x344>
   1519c:	00812703          	lw	a4,8(sp)
   151a0:	01470733          	add	a4,a4,s4
   151a4:	00e12423          	sw	a4,8(sp)
   151a8:	00194703          	lbu	a4,1(s2)
   151ac:	20070263          	beqz	a4,153b0 <_vfiprintf_r+0x360>
   151b0:	00144683          	lbu	a3,1(s0)
   151b4:	00140d13          	addi	s10,s0,1
   151b8:	02010da3          	sb	zero,59(sp)
   151bc:	fff00a93          	li	s5,-1
   151c0:	00000913          	li	s2,0
   151c4:	00000413          	li	s0,0
   151c8:	05a00a13          	li	s4,90
   151cc:	001d0d13          	addi	s10,s10,1
   151d0:	fe068713          	addi	a4,a3,-32
   151d4:	04ea6663          	bltu	s4,a4,15220 <_vfiprintf_r+0x1d0>
   151d8:	01412603          	lw	a2,20(sp)
   151dc:	00271713          	slli	a4,a4,0x2
   151e0:	00c70733          	add	a4,a4,a2
   151e4:	00072703          	lw	a4,0(a4)
   151e8:	00070067          	jr	a4
   151ec:	fd068613          	addi	a2,a3,-48
   151f0:	00000913          	li	s2,0
   151f4:	00900593          	li	a1,9
   151f8:	00291713          	slli	a4,s2,0x2
   151fc:	000d4683          	lbu	a3,0(s10)
   15200:	01270733          	add	a4,a4,s2
   15204:	00171713          	slli	a4,a4,0x1
   15208:	00e60933          	add	s2,a2,a4
   1520c:	fd068613          	addi	a2,a3,-48
   15210:	001d0d13          	addi	s10,s10,1
   15214:	fec5f2e3          	bgeu	a1,a2,151f8 <_vfiprintf_r+0x1a8>
   15218:	fe068713          	addi	a4,a3,-32
   1521c:	faea7ee3          	bgeu	s4,a4,151d8 <_vfiprintf_r+0x188>
   15220:	18068863          	beqz	a3,153b0 <_vfiprintf_r+0x360>
   15224:	00100c13          	li	s8,1
   15228:	08d10623          	sb	a3,140(sp)
   1522c:	02010da3          	sb	zero,59(sp)
   15230:	000c0a13          	mv	s4,s8
   15234:	00000a93          	li	s5,0
   15238:	08c10c93          	addi	s9,sp,140
   1523c:	04812583          	lw	a1,72(sp)
   15240:	04412603          	lw	a2,68(sp)
   15244:	08447e13          	andi	t3,s0,132
   15248:	00058693          	mv	a3,a1
   1524c:	00060713          	mv	a4,a2
   15250:	060e1e63          	bnez	t3,152cc <_vfiprintf_r+0x27c>
   15254:	41490db3          	sub	s11,s2,s4
   15258:	23b04ee3          	bgtz	s11,15c94 <_vfiprintf_r+0xc44>
   1525c:	03b14603          	lbu	a2,59(sp)
   15260:	06060a63          	beqz	a2,152d4 <_vfiprintf_r+0x284>
   15264:	00000e13          	li	t3,0
   15268:	00012c23          	sw	zero,24(sp)
   1526c:	03b10613          	addi	a2,sp,59
   15270:	00c7a023          	sw	a2,0(a5)
   15274:	00168693          	addi	a3,a3,1
   15278:	00100613          	li	a2,1
   1527c:	00170713          	addi	a4,a4,1
   15280:	00c7a223          	sw	a2,4(a5)
   15284:	04d12423          	sw	a3,72(sp)
   15288:	04e12223          	sw	a4,68(sp)
   1528c:	00700613          	li	a2,7
   15290:	00878793          	addi	a5,a5,8
   15294:	16e64ee3          	blt	a2,a4,15c10 <_vfiprintf_r+0xbc0>
   15298:	01812603          	lw	a2,24(sp)
   1529c:	02060863          	beqz	a2,152cc <_vfiprintf_r+0x27c>
   152a0:	03c10613          	addi	a2,sp,60
   152a4:	00c7a023          	sw	a2,0(a5)
   152a8:	00268693          	addi	a3,a3,2
   152ac:	00200613          	li	a2,2
   152b0:	00170713          	addi	a4,a4,1
   152b4:	00c7a223          	sw	a2,4(a5)
   152b8:	04d12423          	sw	a3,72(sp)
   152bc:	04e12223          	sw	a4,68(sp)
   152c0:	00700613          	li	a2,7
   152c4:	00878793          	addi	a5,a5,8
   152c8:	10e64ee3          	blt	a2,a4,15be4 <_vfiprintf_r+0xb94>
   152cc:	08000613          	li	a2,128
   152d0:	76ce0063          	beq	t3,a2,15a30 <_vfiprintf_r+0x9e0>
   152d4:	418a8ab3          	sub	s5,s5,s8
   152d8:	035044e3          	bgtz	s5,15b00 <_vfiprintf_r+0xab0>
   152dc:	00dc06b3          	add	a3,s8,a3
   152e0:	00170713          	addi	a4,a4,1
   152e4:	0197a023          	sw	s9,0(a5)
   152e8:	0187a223          	sw	s8,4(a5)
   152ec:	04d12423          	sw	a3,72(sp)
   152f0:	04e12223          	sw	a4,68(sp)
   152f4:	00700613          	li	a2,7
   152f8:	00878793          	addi	a5,a5,8
   152fc:	0ae648e3          	blt	a2,a4,15bac <_vfiprintf_r+0xb5c>
   15300:	00447413          	andi	s0,s0,4
   15304:	00040663          	beqz	s0,15310 <_vfiprintf_r+0x2c0>
   15308:	41490433          	sub	s0,s2,s4
   1530c:	0e804c63          	bgtz	s0,15404 <_vfiprintf_r+0x3b4>
   15310:	01495463          	bge	s2,s4,15318 <_vfiprintf_r+0x2c8>
   15314:	000a0913          	mv	s2,s4
   15318:	00812783          	lw	a5,8(sp)
   1531c:	012787b3          	add	a5,a5,s2
   15320:	00f12423          	sw	a5,8(sp)
   15324:	0a0694e3          	bnez	a3,15bcc <_vfiprintf_r+0xb7c>
   15328:	04012223          	sw	zero,68(sp)
   1532c:	000b0793          	mv	a5,s6
   15330:	e0dff06f          	j	1513c <_vfiprintf_r+0xec>
   15334:	000d4683          	lbu	a3,0(s10)
   15338:	e95ff06f          	j	151cc <_vfiprintf_r+0x17c>
   1533c:	000d4683          	lbu	a3,0(s10)
   15340:	02046413          	ori	s0,s0,32
   15344:	e89ff06f          	j	151cc <_vfiprintf_r+0x17c>
   15348:	00412503          	lw	a0,4(sp)
   1534c:	00098593          	mv	a1,s3
   15350:	5f1010ef          	jal	17140 <__swsetup_r>
   15354:	6e0514e3          	bnez	a0,1623c <_vfiprintf_r+0x11ec>
   15358:	00c99783          	lh	a5,12(s3)
   1535c:	00a00713          	li	a4,10
   15360:	01a7f793          	andi	a5,a5,26
   15364:	d6e79ae3          	bne	a5,a4,150d8 <_vfiprintf_r+0x88>
   15368:	00e99783          	lh	a5,14(s3)
   1536c:	d607c6e3          	bltz	a5,150d8 <_vfiprintf_r+0x88>
   15370:	00c12683          	lw	a3,12(sp)
   15374:	00412503          	lw	a0,4(sp)
   15378:	12c12083          	lw	ra,300(sp)
   1537c:	000d0613          	mv	a2,s10
   15380:	00098593          	mv	a1,s3
   15384:	10012d03          	lw	s10,256(sp)
   15388:	11c12983          	lw	s3,284(sp)
   1538c:	13010113          	addi	sp,sp,304
   15390:	7290006f          	j	162b8 <__sbprintf>
   15394:	00412503          	lw	a0,4(sp)
   15398:	04010613          	addi	a2,sp,64
   1539c:	00098593          	mv	a1,s3
   153a0:	7d9000ef          	jal	16378 <__sprint_r>
   153a4:	00051a63          	bnez	a0,153b8 <_vfiprintf_r+0x368>
   153a8:	000b0793          	mv	a5,s6
   153ac:	df1ff06f          	j	1519c <_vfiprintf_r+0x14c>
   153b0:	04812783          	lw	a5,72(sp)
   153b4:	5c079ae3          	bnez	a5,16188 <_vfiprintf_r+0x1138>
   153b8:	00c9d783          	lhu	a5,12(s3)
   153bc:	12812403          	lw	s0,296(sp)
   153c0:	12412483          	lw	s1,292(sp)
   153c4:	0407f793          	andi	a5,a5,64
   153c8:	12012903          	lw	s2,288(sp)
   153cc:	11812a03          	lw	s4,280(sp)
   153d0:	11412a83          	lw	s5,276(sp)
   153d4:	11012b03          	lw	s6,272(sp)
   153d8:	10c12b83          	lw	s7,268(sp)
   153dc:	10812c03          	lw	s8,264(sp)
   153e0:	10412c83          	lw	s9,260(sp)
   153e4:	0fc12d83          	lw	s11,252(sp)
   153e8:	64079ae3          	bnez	a5,1623c <_vfiprintf_r+0x11ec>
   153ec:	12c12083          	lw	ra,300(sp)
   153f0:	00812503          	lw	a0,8(sp)
   153f4:	11c12983          	lw	s3,284(sp)
   153f8:	10012d03          	lw	s10,256(sp)
   153fc:	13010113          	addi	sp,sp,304
   15400:	00008067          	ret
   15404:	0001be37          	lui	t3,0x1b
   15408:	01000c13          	li	s8,16
   1540c:	04412703          	lw	a4,68(sp)
   15410:	d68e0e13          	addi	t3,t3,-664 # 1ad68 <blanks.1>
   15414:	00700d93          	li	s11,7
   15418:	008c4863          	blt	s8,s0,15428 <_vfiprintf_r+0x3d8>
   1541c:	05c0006f          	j	15478 <_vfiprintf_r+0x428>
   15420:	ff040413          	addi	s0,s0,-16
   15424:	048c5a63          	bge	s8,s0,15478 <_vfiprintf_r+0x428>
   15428:	01068693          	addi	a3,a3,16
   1542c:	00170713          	addi	a4,a4,1
   15430:	01c7a023          	sw	t3,0(a5)
   15434:	0187a223          	sw	s8,4(a5)
   15438:	04d12423          	sw	a3,72(sp)
   1543c:	04e12223          	sw	a4,68(sp)
   15440:	00878793          	addi	a5,a5,8
   15444:	fceddee3          	bge	s11,a4,15420 <_vfiprintf_r+0x3d0>
   15448:	00412503          	lw	a0,4(sp)
   1544c:	04010613          	addi	a2,sp,64
   15450:	00098593          	mv	a1,s3
   15454:	01c12823          	sw	t3,16(sp)
   15458:	721000ef          	jal	16378 <__sprint_r>
   1545c:	f4051ee3          	bnez	a0,153b8 <_vfiprintf_r+0x368>
   15460:	ff040413          	addi	s0,s0,-16
   15464:	04812683          	lw	a3,72(sp)
   15468:	04412703          	lw	a4,68(sp)
   1546c:	01012e03          	lw	t3,16(sp)
   15470:	000b0793          	mv	a5,s6
   15474:	fa8c4ae3          	blt	s8,s0,15428 <_vfiprintf_r+0x3d8>
   15478:	008686b3          	add	a3,a3,s0
   1547c:	00170713          	addi	a4,a4,1
   15480:	01c7a023          	sw	t3,0(a5)
   15484:	0087a223          	sw	s0,4(a5)
   15488:	04d12423          	sw	a3,72(sp)
   1548c:	04e12223          	sw	a4,68(sp)
   15490:	00700793          	li	a5,7
   15494:	e6e7dee3          	bge	a5,a4,15310 <_vfiprintf_r+0x2c0>
   15498:	00412503          	lw	a0,4(sp)
   1549c:	04010613          	addi	a2,sp,64
   154a0:	00098593          	mv	a1,s3
   154a4:	6d5000ef          	jal	16378 <__sprint_r>
   154a8:	f00518e3          	bnez	a0,153b8 <_vfiprintf_r+0x368>
   154ac:	04812683          	lw	a3,72(sp)
   154b0:	e61ff06f          	j	15310 <_vfiprintf_r+0x2c0>
   154b4:	02047713          	andi	a4,s0,32
   154b8:	10071e63          	bnez	a4,155d4 <_vfiprintf_r+0x584>
   154bc:	00c12683          	lw	a3,12(sp)
   154c0:	01047713          	andi	a4,s0,16
   154c4:	0006ae03          	lw	t3,0(a3)
   154c8:	00468693          	addi	a3,a3,4
   154cc:	160718e3          	bnez	a4,15e3c <_vfiprintf_r+0xdec>
   154d0:	04047713          	andi	a4,s0,64
   154d4:	3e070ce3          	beqz	a4,160cc <_vfiprintf_r+0x107c>
   154d8:	010e1e13          	slli	t3,t3,0x10
   154dc:	410e5e13          	srai	t3,t3,0x10
   154e0:	41fe5d93          	srai	s11,t3,0x1f
   154e4:	00d12623          	sw	a3,12(sp)
   154e8:	000d8693          	mv	a3,s11
   154ec:	1006c663          	bltz	a3,155f8 <_vfiprintf_r+0x5a8>
   154f0:	120ac463          	bltz	s5,15618 <_vfiprintf_r+0x5c8>
   154f4:	f7f47413          	andi	s0,s0,-129
   154f8:	120a9063          	bnez	s5,15618 <_vfiprintf_r+0x5c8>
   154fc:	01be66b3          	or	a3,t3,s11
   15500:	10069c63          	bnez	a3,15618 <_vfiprintf_r+0x5c8>
   15504:	03b14703          	lbu	a4,59(sp)
   15508:	00000c13          	li	s8,0
   1550c:	00000a93          	li	s5,0
   15510:	0f010c93          	addi	s9,sp,240
   15514:	1a070263          	beqz	a4,156b8 <_vfiprintf_r+0x668>
   15518:	00100a13          	li	s4,1
   1551c:	04812683          	lw	a3,72(sp)
   15520:	04412703          	lw	a4,68(sp)
   15524:	08447e13          	andi	t3,s0,132
   15528:	00068593          	mv	a1,a3
   1552c:	00070613          	mv	a2,a4
   15530:	d20e02e3          	beqz	t3,15254 <_vfiprintf_r+0x204>
   15534:	00012c23          	sw	zero,24(sp)
   15538:	d35ff06f          	j	1526c <_vfiprintf_r+0x21c>
   1553c:	00c12703          	lw	a4,12(sp)
   15540:	02010da3          	sb	zero,59(sp)
   15544:	00072c83          	lw	s9,0(a4)
   15548:	00470d93          	addi	s11,a4,4
   1554c:	340c8ee3          	beqz	s9,160a8 <_vfiprintf_r+0x1058>
   15550:	00f12623          	sw	a5,12(sp)
   15554:	240ac6e3          	bltz	s5,15fa0 <_vfiprintf_r+0xf50>
   15558:	000a8613          	mv	a2,s5
   1555c:	00000593          	li	a1,0
   15560:	000c8513          	mv	a0,s9
   15564:	541010ef          	jal	172a4 <memchr>
   15568:	03b14703          	lbu	a4,59(sp)
   1556c:	00c12783          	lw	a5,12(sp)
   15570:	4a050ae3          	beqz	a0,16224 <_vfiprintf_r+0x11d4>
   15574:	41950c33          	sub	s8,a0,s9
   15578:	fffc4a13          	not	s4,s8
   1557c:	41fa5a13          	srai	s4,s4,0x1f
   15580:	014c7a33          	and	s4,s8,s4
   15584:	240700e3          	beqz	a4,15fc4 <_vfiprintf_r+0xf74>
   15588:	001a0a13          	addi	s4,s4,1
   1558c:	01b12623          	sw	s11,12(sp)
   15590:	00000a93          	li	s5,0
   15594:	f89ff06f          	j	1551c <_vfiprintf_r+0x4cc>
   15598:	00c12703          	lw	a4,12(sp)
   1559c:	00100c13          	li	s8,1
   155a0:	02010da3          	sb	zero,59(sp)
   155a4:	00072703          	lw	a4,0(a4)
   155a8:	000c0a13          	mv	s4,s8
   155ac:	00000a93          	li	s5,0
   155b0:	08e10623          	sb	a4,140(sp)
   155b4:	00c12703          	lw	a4,12(sp)
   155b8:	08c10c93          	addi	s9,sp,140
   155bc:	00470713          	addi	a4,a4,4
   155c0:	00e12623          	sw	a4,12(sp)
   155c4:	c79ff06f          	j	1523c <_vfiprintf_r+0x1ec>
   155c8:	02047713          	andi	a4,s0,32
   155cc:	01046413          	ori	s0,s0,16
   155d0:	060702e3          	beqz	a4,15e34 <_vfiprintf_r+0xde4>
   155d4:	00c12703          	lw	a4,12(sp)
   155d8:	00770713          	addi	a4,a4,7
   155dc:	ff877713          	andi	a4,a4,-8
   155e0:	00472683          	lw	a3,4(a4)
   155e4:	00870613          	addi	a2,a4,8
   155e8:	00c12623          	sw	a2,12(sp)
   155ec:	00072e03          	lw	t3,0(a4)
   155f0:	00068d93          	mv	s11,a3
   155f4:	ee06dee3          	bgez	a3,154f0 <_vfiprintf_r+0x4a0>
   155f8:	01c036b3          	snez	a3,t3
   155fc:	41b00733          	neg	a4,s11
   15600:	40d70db3          	sub	s11,a4,a3
   15604:	02d00693          	li	a3,45
   15608:	02d10da3          	sb	a3,59(sp)
   1560c:	41c00e33          	neg	t3,t3
   15610:	000ac463          	bltz	s5,15618 <_vfiprintf_r+0x5c8>
   15614:	f7f47413          	andi	s0,s0,-129
   15618:	0c0d9c63          	bnez	s11,156f0 <_vfiprintf_r+0x6a0>
   1561c:	00900693          	li	a3,9
   15620:	0dc6e863          	bltu	a3,t3,156f0 <_vfiprintf_r+0x6a0>
   15624:	030e0e13          	addi	t3,t3,48
   15628:	0fc107a3          	sb	t3,239(sp)
   1562c:	000a8a13          	mv	s4,s5
   15630:	01504463          	bgtz	s5,15638 <_vfiprintf_r+0x5e8>
   15634:	00100a13          	li	s4,1
   15638:	03b14703          	lbu	a4,59(sp)
   1563c:	72071463          	bnez	a4,15d64 <_vfiprintf_r+0xd14>
   15640:	00100c13          	li	s8,1
   15644:	0ef10c93          	addi	s9,sp,239
   15648:	bf5ff06f          	j	1523c <_vfiprintf_r+0x1ec>
   1564c:	00c12703          	lw	a4,12(sp)
   15650:	00072903          	lw	s2,0(a4)
   15654:	70095063          	bgez	s2,15d54 <_vfiprintf_r+0xd04>
   15658:	00c12703          	lw	a4,12(sp)
   1565c:	41200933          	neg	s2,s2
   15660:	00470713          	addi	a4,a4,4
   15664:	00e12623          	sw	a4,12(sp)
   15668:	000d4683          	lbu	a3,0(s10)
   1566c:	00446413          	ori	s0,s0,4
   15670:	b5dff06f          	j	151cc <_vfiprintf_r+0x17c>
   15674:	02047713          	andi	a4,s0,32
   15678:	01046413          	ori	s0,s0,16
   1567c:	04071663          	bnez	a4,156c8 <_vfiprintf_r+0x678>
   15680:	00c12703          	lw	a4,12(sp)
   15684:	00470693          	addi	a3,a4,4
   15688:	00c12703          	lw	a4,12(sp)
   1568c:	02010da3          	sb	zero,59(sp)
   15690:	00d12623          	sw	a3,12(sp)
   15694:	00072e03          	lw	t3,0(a4)
   15698:	00000d93          	li	s11,0
   1569c:	f80ac0e3          	bltz	s5,1561c <_vfiprintf_r+0x5cc>
   156a0:	f7f47413          	andi	s0,s0,-129
   156a4:	f60a9ae3          	bnez	s5,15618 <_vfiprintf_r+0x5c8>
   156a8:	01be66b3          	or	a3,t3,s11
   156ac:	f60696e3          	bnez	a3,15618 <_vfiprintf_r+0x5c8>
   156b0:	00000c13          	li	s8,0
   156b4:	0f010c93          	addi	s9,sp,240
   156b8:	00000a13          	li	s4,0
   156bc:	b81ff06f          	j	1523c <_vfiprintf_r+0x1ec>
   156c0:	02047713          	andi	a4,s0,32
   156c4:	6e070063          	beqz	a4,15da4 <_vfiprintf_r+0xd54>
   156c8:	00c12703          	lw	a4,12(sp)
   156cc:	02010da3          	sb	zero,59(sp)
   156d0:	00770713          	addi	a4,a4,7
   156d4:	ff877713          	andi	a4,a4,-8
   156d8:	00870693          	addi	a3,a4,8
   156dc:	00d12623          	sw	a3,12(sp)
   156e0:	00072e03          	lw	t3,0(a4)
   156e4:	00472d83          	lw	s11,4(a4)
   156e8:	fa0adce3          	bgez	s5,156a0 <_vfiprintf_r+0x650>
   156ec:	f20d88e3          	beqz	s11,1561c <_vfiprintf_r+0x5cc>
   156f0:	40047713          	andi	a4,s0,1024
   156f4:	02e12423          	sw	a4,40(sp)
   156f8:	00000c13          	li	s8,0
   156fc:	0f010a13          	addi	s4,sp,240
   15700:	03c0006f          	j	1573c <_vfiprintf_r+0x6ec>
   15704:	000e0513          	mv	a0,t3
   15708:	000d8593          	mv	a1,s11
   1570c:	00a00613          	li	a2,10
   15710:	00000693          	li	a3,0
   15714:	03c12623          	sw	t3,44(sp)
   15718:	01b12c23          	sw	s11,24(sp)
   1571c:	00f12823          	sw	a5,16(sp)
   15720:	50c040ef          	jal	19c2c <__udivdi3>
   15724:	01812703          	lw	a4,24(sp)
   15728:	01012783          	lw	a5,16(sp)
   1572c:	000c8a13          	mv	s4,s9
   15730:	00050e13          	mv	t3,a0
   15734:	00058d93          	mv	s11,a1
   15738:	2c070ee3          	beqz	a4,16214 <_vfiprintf_r+0x11c4>
   1573c:	000e0513          	mv	a0,t3
   15740:	00a00613          	li	a2,10
   15744:	00000693          	li	a3,0
   15748:	000d8593          	mv	a1,s11
   1574c:	00f12c23          	sw	a5,24(sp)
   15750:	01c12823          	sw	t3,16(sp)
   15754:	28d040ef          	jal	1a1e0 <__umoddi3>
   15758:	02812703          	lw	a4,40(sp)
   1575c:	03050513          	addi	a0,a0,48
   15760:	feaa0fa3          	sb	a0,-1(s4)
   15764:	01012e03          	lw	t3,16(sp)
   15768:	01812783          	lw	a5,24(sp)
   1576c:	fffa0c93          	addi	s9,s4,-1
   15770:	001c0c13          	addi	s8,s8,1
   15774:	f80708e3          	beqz	a4,15704 <_vfiprintf_r+0x6b4>
   15778:	01c12703          	lw	a4,28(sp)
   1577c:	00074683          	lbu	a3,0(a4)
   15780:	f98692e3          	bne	a3,s8,15704 <_vfiprintf_r+0x6b4>
   15784:	f0168693          	addi	a3,a3,-255
   15788:	f6068ee3          	beqz	a3,15704 <_vfiprintf_r+0x6b4>
   1578c:	200d98e3          	bnez	s11,1619c <_vfiprintf_r+0x114c>
   15790:	00900693          	li	a3,9
   15794:	21c6e4e3          	bltu	a3,t3,1619c <_vfiprintf_r+0x114c>
   15798:	0f010713          	addi	a4,sp,240
   1579c:	41970c33          	sub	s8,a4,s9
   157a0:	000a8a13          	mv	s4,s5
   157a4:	03b14703          	lbu	a4,59(sp)
   157a8:	018ad463          	bge	s5,s8,157b0 <_vfiprintf_r+0x760>
   157ac:	000c0a13          	mv	s4,s8
   157b0:	00e03733          	snez	a4,a4
   157b4:	00ea0a33          	add	s4,s4,a4
   157b8:	77c0006f          	j	15f34 <_vfiprintf_r+0xee4>
   157bc:	000d4683          	lbu	a3,0(s10)
   157c0:	06800713          	li	a4,104
   157c4:	0ae686e3          	beq	a3,a4,16070 <_vfiprintf_r+0x1020>
   157c8:	04046413          	ori	s0,s0,64
   157cc:	a01ff06f          	j	151cc <_vfiprintf_r+0x17c>
   157d0:	02047713          	andi	a4,s0,32
   157d4:	01046a13          	ori	s4,s0,16
   157d8:	64070063          	beqz	a4,15e18 <_vfiprintf_r+0xdc8>
   157dc:	00c12703          	lw	a4,12(sp)
   157e0:	00770693          	addi	a3,a4,7
   157e4:	ff86f693          	andi	a3,a3,-8
   157e8:	00868713          	addi	a4,a3,8
   157ec:	00e12623          	sw	a4,12(sp)
   157f0:	0046a603          	lw	a2,4(a3)
   157f4:	0006a703          	lw	a4,0(a3)
   157f8:	02010da3          	sb	zero,59(sp)
   157fc:	bffa7413          	andi	s0,s4,-1025
   15800:	420ace63          	bltz	s5,15c3c <_vfiprintf_r+0xbec>
   15804:	b7fa7413          	andi	s0,s4,-1153
   15808:	420a9a63          	bnez	s5,15c3c <_vfiprintf_r+0xbec>
   1580c:	00c766b3          	or	a3,a4,a2
   15810:	42069663          	bnez	a3,15c3c <_vfiprintf_r+0xbec>
   15814:	001a7a13          	andi	s4,s4,1
   15818:	6a0a0263          	beqz	s4,15ebc <_vfiprintf_r+0xe6c>
   1581c:	03000713          	li	a4,48
   15820:	0ee107a3          	sb	a4,239(sp)
   15824:	000a0c13          	mv	s8,s4
   15828:	0ef10c93          	addi	s9,sp,239
   1582c:	a11ff06f          	j	1523c <_vfiprintf_r+0x1ec>
   15830:	02b00713          	li	a4,43
   15834:	000d4683          	lbu	a3,0(s10)
   15838:	02e10da3          	sb	a4,59(sp)
   1583c:	991ff06f          	j	151cc <_vfiprintf_r+0x17c>
   15840:	00412c03          	lw	s8,4(sp)
   15844:	00f12823          	sw	a5,16(sp)
   15848:	000c0513          	mv	a0,s8
   1584c:	094020ef          	jal	178e0 <_localeconv_r>
   15850:	00452783          	lw	a5,4(a0)
   15854:	00078513          	mv	a0,a5
   15858:	02f12023          	sw	a5,32(sp)
   1585c:	660020ef          	jal	17ebc <strlen>
   15860:	00050713          	mv	a4,a0
   15864:	000c0513          	mv	a0,s8
   15868:	02e12223          	sw	a4,36(sp)
   1586c:	00070c13          	mv	s8,a4
   15870:	070020ef          	jal	178e0 <_localeconv_r>
   15874:	00852783          	lw	a5,8(a0)
   15878:	000d4683          	lbu	a3,0(s10)
   1587c:	00f12e23          	sw	a5,28(sp)
   15880:	01012783          	lw	a5,16(sp)
   15884:	940c04e3          	beqz	s8,151cc <_vfiprintf_r+0x17c>
   15888:	01c12703          	lw	a4,28(sp)
   1588c:	940700e3          	beqz	a4,151cc <_vfiprintf_r+0x17c>
   15890:	00074703          	lbu	a4,0(a4)
   15894:	92070ce3          	beqz	a4,151cc <_vfiprintf_r+0x17c>
   15898:	40046413          	ori	s0,s0,1024
   1589c:	931ff06f          	j	151cc <_vfiprintf_r+0x17c>
   158a0:	000d4683          	lbu	a3,0(s10)
   158a4:	08046413          	ori	s0,s0,128
   158a8:	925ff06f          	j	151cc <_vfiprintf_r+0x17c>
   158ac:	000d4683          	lbu	a3,0(s10)
   158b0:	02a00713          	li	a4,42
   158b4:	001d0593          	addi	a1,s10,1
   158b8:	1ae684e3          	beq	a3,a4,16260 <_vfiprintf_r+0x1210>
   158bc:	fd068613          	addi	a2,a3,-48
   158c0:	00900513          	li	a0,9
   158c4:	00000813          	li	a6,0
   158c8:	00058d13          	mv	s10,a1
   158cc:	00000a93          	li	s5,0
   158d0:	90c560e3          	bltu	a0,a2,151d0 <_vfiprintf_r+0x180>
   158d4:	00281713          	slli	a4,a6,0x2
   158d8:	0005c683          	lbu	a3,0(a1)
   158dc:	01070733          	add	a4,a4,a6
   158e0:	00171713          	slli	a4,a4,0x1
   158e4:	00c70833          	add	a6,a4,a2
   158e8:	fd068613          	addi	a2,a3,-48
   158ec:	00158593          	addi	a1,a1,1
   158f0:	fec572e3          	bgeu	a0,a2,158d4 <_vfiprintf_r+0x884>
   158f4:	00080a93          	mv	s5,a6
   158f8:	5c084a63          	bltz	a6,15ecc <_vfiprintf_r+0xe7c>
   158fc:	00058d13          	mv	s10,a1
   15900:	8d1ff06f          	j	151d0 <_vfiprintf_r+0x180>
   15904:	000d4683          	lbu	a3,0(s10)
   15908:	00146413          	ori	s0,s0,1
   1590c:	8c1ff06f          	j	151cc <_vfiprintf_r+0x17c>
   15910:	03b14703          	lbu	a4,59(sp)
   15914:	000d4683          	lbu	a3,0(s10)
   15918:	8a071ae3          	bnez	a4,151cc <_vfiprintf_r+0x17c>
   1591c:	02000713          	li	a4,32
   15920:	02e10da3          	sb	a4,59(sp)
   15924:	8a9ff06f          	j	151cc <_vfiprintf_r+0x17c>
   15928:	00008737          	lui	a4,0x8
   1592c:	83070713          	addi	a4,a4,-2000 # 7830 <exit-0x8884>
   15930:	02e11e23          	sh	a4,60(sp)
   15934:	00c12703          	lw	a4,12(sp)
   15938:	02010da3          	sb	zero,59(sp)
   1593c:	00000613          	li	a2,0
   15940:	00470693          	addi	a3,a4,4
   15944:	00072703          	lw	a4,0(a4)
   15948:	500aca63          	bltz	s5,15e5c <_vfiprintf_r+0xe0c>
   1594c:	f7f47413          	andi	s0,s0,-129
   15950:	00246413          	ori	s0,s0,2
   15954:	120718e3          	bnez	a4,16284 <_vfiprintf_r+0x1234>
   15958:	120a96e3          	bnez	s5,16284 <_vfiprintf_r+0x1234>
   1595c:	00d12623          	sw	a3,12(sp)
   15960:	00000c13          	li	s8,0
   15964:	00000a13          	li	s4,0
   15968:	0f010c93          	addi	s9,sp,240
   1596c:	04812583          	lw	a1,72(sp)
   15970:	04412603          	lw	a2,68(sp)
   15974:	08447e13          	andi	t3,s0,132
   15978:	002a0a13          	addi	s4,s4,2
   1597c:	00058693          	mv	a3,a1
   15980:	00060713          	mv	a4,a2
   15984:	900e1ee3          	bnez	t3,152a0 <_vfiprintf_r+0x250>
   15988:	41490db3          	sub	s11,s2,s4
   1598c:	91b05ae3          	blez	s11,152a0 <_vfiprintf_r+0x250>
   15990:	00200713          	li	a4,2
   15994:	00e12c23          	sw	a4,24(sp)
   15998:	3000006f          	j	15c98 <_vfiprintf_r+0xc48>
   1599c:	02047713          	andi	a4,s0,32
   159a0:	4a071a63          	bnez	a4,15e54 <_vfiprintf_r+0xe04>
   159a4:	00c12703          	lw	a4,12(sp)
   159a8:	00c12683          	lw	a3,12(sp)
   159ac:	01047613          	andi	a2,s0,16
   159b0:	00072703          	lw	a4,0(a4)
   159b4:	00468693          	addi	a3,a3,4
   159b8:	0e0610e3          	bnez	a2,16298 <_vfiprintf_r+0x1248>
   159bc:	04047613          	andi	a2,s0,64
   159c0:	72060663          	beqz	a2,160ec <_vfiprintf_r+0x109c>
   159c4:	01071713          	slli	a4,a4,0x10
   159c8:	01075713          	srli	a4,a4,0x10
   159cc:	00d12623          	sw	a3,12(sp)
   159d0:	00040a13          	mv	s4,s0
   159d4:	00000613          	li	a2,0
   159d8:	e21ff06f          	j	157f8 <_vfiprintf_r+0x7a8>
   159dc:	00c12683          	lw	a3,12(sp)
   159e0:	02047713          	andi	a4,s0,32
   159e4:	00468693          	addi	a3,a3,4
   159e8:	40071663          	bnez	a4,15df4 <_vfiprintf_r+0xda4>
   159ec:	01047713          	andi	a4,s0,16
   159f0:	6a071063          	bnez	a4,16090 <_vfiprintf_r+0x1040>
   159f4:	04047713          	andi	a4,s0,64
   159f8:	74071063          	bnez	a4,16138 <_vfiprintf_r+0x10e8>
   159fc:	20047413          	andi	s0,s0,512
   15a00:	68040863          	beqz	s0,16090 <_vfiprintf_r+0x1040>
   15a04:	00c12703          	lw	a4,12(sp)
   15a08:	00812603          	lw	a2,8(sp)
   15a0c:	00d12623          	sw	a3,12(sp)
   15a10:	00072703          	lw	a4,0(a4)
   15a14:	00c70023          	sb	a2,0(a4)
   15a18:	f24ff06f          	j	1513c <_vfiprintf_r+0xec>
   15a1c:	000d4683          	lbu	a3,0(s10)
   15a20:	06c00713          	li	a4,108
   15a24:	64e68e63          	beq	a3,a4,16080 <_vfiprintf_r+0x1030>
   15a28:	01046413          	ori	s0,s0,16
   15a2c:	fa0ff06f          	j	151cc <_vfiprintf_r+0x17c>
   15a30:	41490db3          	sub	s11,s2,s4
   15a34:	8bb050e3          	blez	s11,152d4 <_vfiprintf_r+0x284>
   15a38:	0001b637          	lui	a2,0x1b
   15a3c:	d5860613          	addi	a2,a2,-680 # 1ad58 <zeroes.0>
   15a40:	01000e93          	li	t4,16
   15a44:	00c12823          	sw	a2,16(sp)
   15a48:	00700f13          	li	t5,7
   15a4c:	01bec863          	blt	t4,s11,15a5c <_vfiprintf_r+0xa0c>
   15a50:	0600006f          	j	15ab0 <_vfiprintf_r+0xa60>
   15a54:	ff0d8d93          	addi	s11,s11,-16
   15a58:	05bedc63          	bge	t4,s11,15ab0 <_vfiprintf_r+0xa60>
   15a5c:	01012603          	lw	a2,16(sp)
   15a60:	01068693          	addi	a3,a3,16
   15a64:	00170713          	addi	a4,a4,1
   15a68:	00c7a023          	sw	a2,0(a5)
   15a6c:	01d7a223          	sw	t4,4(a5)
   15a70:	04d12423          	sw	a3,72(sp)
   15a74:	04e12223          	sw	a4,68(sp)
   15a78:	00878793          	addi	a5,a5,8
   15a7c:	fcef5ce3          	bge	t5,a4,15a54 <_vfiprintf_r+0xa04>
   15a80:	00412503          	lw	a0,4(sp)
   15a84:	04010613          	addi	a2,sp,64
   15a88:	00098593          	mv	a1,s3
   15a8c:	0ed000ef          	jal	16378 <__sprint_r>
   15a90:	920514e3          	bnez	a0,153b8 <_vfiprintf_r+0x368>
   15a94:	01000e93          	li	t4,16
   15a98:	ff0d8d93          	addi	s11,s11,-16
   15a9c:	04812683          	lw	a3,72(sp)
   15aa0:	04412703          	lw	a4,68(sp)
   15aa4:	000b0793          	mv	a5,s6
   15aa8:	00700f13          	li	t5,7
   15aac:	fbbec8e3          	blt	t4,s11,15a5c <_vfiprintf_r+0xa0c>
   15ab0:	01012603          	lw	a2,16(sp)
   15ab4:	01b686b3          	add	a3,a3,s11
   15ab8:	00170713          	addi	a4,a4,1
   15abc:	00c7a023          	sw	a2,0(a5)
   15ac0:	01b7a223          	sw	s11,4(a5)
   15ac4:	04d12423          	sw	a3,72(sp)
   15ac8:	04e12223          	sw	a4,68(sp)
   15acc:	00700613          	li	a2,7
   15ad0:	00878793          	addi	a5,a5,8
   15ad4:	80e650e3          	bge	a2,a4,152d4 <_vfiprintf_r+0x284>
   15ad8:	00412503          	lw	a0,4(sp)
   15adc:	04010613          	addi	a2,sp,64
   15ae0:	00098593          	mv	a1,s3
   15ae4:	095000ef          	jal	16378 <__sprint_r>
   15ae8:	8c0518e3          	bnez	a0,153b8 <_vfiprintf_r+0x368>
   15aec:	04812683          	lw	a3,72(sp)
   15af0:	04412703          	lw	a4,68(sp)
   15af4:	418a8ab3          	sub	s5,s5,s8
   15af8:	000b0793          	mv	a5,s6
   15afc:	ff505063          	blez	s5,152dc <_vfiprintf_r+0x28c>
   15b00:	6354d063          	bge	s1,s5,16120 <_vfiprintf_r+0x10d0>
   15b04:	01712823          	sw	s7,16(sp)
   15b08:	00700d93          	li	s11,7
   15b0c:	00c0006f          	j	15b18 <_vfiprintf_r+0xac8>
   15b10:	ff0a8a93          	addi	s5,s5,-16
   15b14:	0554d663          	bge	s1,s5,15b60 <_vfiprintf_r+0xb10>
   15b18:	01068693          	addi	a3,a3,16
   15b1c:	00170713          	addi	a4,a4,1
   15b20:	0177a023          	sw	s7,0(a5)
   15b24:	0097a223          	sw	s1,4(a5)
   15b28:	04d12423          	sw	a3,72(sp)
   15b2c:	04e12223          	sw	a4,68(sp)
   15b30:	00878793          	addi	a5,a5,8
   15b34:	fceddee3          	bge	s11,a4,15b10 <_vfiprintf_r+0xac0>
   15b38:	00412503          	lw	a0,4(sp)
   15b3c:	04010613          	addi	a2,sp,64
   15b40:	00098593          	mv	a1,s3
   15b44:	035000ef          	jal	16378 <__sprint_r>
   15b48:	860518e3          	bnez	a0,153b8 <_vfiprintf_r+0x368>
   15b4c:	ff0a8a93          	addi	s5,s5,-16
   15b50:	04812683          	lw	a3,72(sp)
   15b54:	04412703          	lw	a4,68(sp)
   15b58:	000b0793          	mv	a5,s6
   15b5c:	fb54cee3          	blt	s1,s5,15b18 <_vfiprintf_r+0xac8>
   15b60:	01012603          	lw	a2,16(sp)
   15b64:	015686b3          	add	a3,a3,s5
   15b68:	00170713          	addi	a4,a4,1
   15b6c:	00c7a023          	sw	a2,0(a5)
   15b70:	0157a223          	sw	s5,4(a5)
   15b74:	04d12423          	sw	a3,72(sp)
   15b78:	04e12223          	sw	a4,68(sp)
   15b7c:	00700613          	li	a2,7
   15b80:	00878793          	addi	a5,a5,8
   15b84:	f4e65c63          	bge	a2,a4,152dc <_vfiprintf_r+0x28c>
   15b88:	00412503          	lw	a0,4(sp)
   15b8c:	04010613          	addi	a2,sp,64
   15b90:	00098593          	mv	a1,s3
   15b94:	7e4000ef          	jal	16378 <__sprint_r>
   15b98:	820510e3          	bnez	a0,153b8 <_vfiprintf_r+0x368>
   15b9c:	04812683          	lw	a3,72(sp)
   15ba0:	04412703          	lw	a4,68(sp)
   15ba4:	000b0793          	mv	a5,s6
   15ba8:	f34ff06f          	j	152dc <_vfiprintf_r+0x28c>
   15bac:	00412503          	lw	a0,4(sp)
   15bb0:	04010613          	addi	a2,sp,64
   15bb4:	00098593          	mv	a1,s3
   15bb8:	7c0000ef          	jal	16378 <__sprint_r>
   15bbc:	fe051e63          	bnez	a0,153b8 <_vfiprintf_r+0x368>
   15bc0:	04812683          	lw	a3,72(sp)
   15bc4:	000b0793          	mv	a5,s6
   15bc8:	f38ff06f          	j	15300 <_vfiprintf_r+0x2b0>
   15bcc:	00412503          	lw	a0,4(sp)
   15bd0:	04010613          	addi	a2,sp,64
   15bd4:	00098593          	mv	a1,s3
   15bd8:	7a0000ef          	jal	16378 <__sprint_r>
   15bdc:	f4050663          	beqz	a0,15328 <_vfiprintf_r+0x2d8>
   15be0:	fd8ff06f          	j	153b8 <_vfiprintf_r+0x368>
   15be4:	00412503          	lw	a0,4(sp)
   15be8:	04010613          	addi	a2,sp,64
   15bec:	00098593          	mv	a1,s3
   15bf0:	01c12823          	sw	t3,16(sp)
   15bf4:	784000ef          	jal	16378 <__sprint_r>
   15bf8:	fc051063          	bnez	a0,153b8 <_vfiprintf_r+0x368>
   15bfc:	04812683          	lw	a3,72(sp)
   15c00:	04412703          	lw	a4,68(sp)
   15c04:	01012e03          	lw	t3,16(sp)
   15c08:	000b0793          	mv	a5,s6
   15c0c:	ec0ff06f          	j	152cc <_vfiprintf_r+0x27c>
   15c10:	00412503          	lw	a0,4(sp)
   15c14:	04010613          	addi	a2,sp,64
   15c18:	00098593          	mv	a1,s3
   15c1c:	01c12823          	sw	t3,16(sp)
   15c20:	758000ef          	jal	16378 <__sprint_r>
   15c24:	f8051a63          	bnez	a0,153b8 <_vfiprintf_r+0x368>
   15c28:	04812683          	lw	a3,72(sp)
   15c2c:	04412703          	lw	a4,68(sp)
   15c30:	01012e03          	lw	t3,16(sp)
   15c34:	000b0793          	mv	a5,s6
   15c38:	e60ff06f          	j	15298 <_vfiprintf_r+0x248>
   15c3c:	0f010c93          	addi	s9,sp,240
   15c40:	01d61593          	slli	a1,a2,0x1d
   15c44:	00777693          	andi	a3,a4,7
   15c48:	00375713          	srli	a4,a4,0x3
   15c4c:	000c8513          	mv	a0,s9
   15c50:	00e58733          	add	a4,a1,a4
   15c54:	03068693          	addi	a3,a3,48
   15c58:	00365613          	srli	a2,a2,0x3
   15c5c:	00c765b3          	or	a1,a4,a2
   15c60:	fedc8fa3          	sb	a3,-1(s9)
   15c64:	fffc8c93          	addi	s9,s9,-1
   15c68:	fc059ce3          	bnez	a1,15c40 <_vfiprintf_r+0xbf0>
   15c6c:	fd068693          	addi	a3,a3,-48
   15c70:	00068663          	beqz	a3,15c7c <_vfiprintf_r+0xc2c>
   15c74:	00147713          	andi	a4,s0,1
   15c78:	10071263          	bnez	a4,15d7c <_vfiprintf_r+0xd2c>
   15c7c:	0f010713          	addi	a4,sp,240
   15c80:	41970c33          	sub	s8,a4,s9
   15c84:	000a8a13          	mv	s4,s5
   15c88:	db8ada63          	bge	s5,s8,1523c <_vfiprintf_r+0x1ec>
   15c8c:	000c0a13          	mv	s4,s8
   15c90:	dacff06f          	j	1523c <_vfiprintf_r+0x1ec>
   15c94:	00012c23          	sw	zero,24(sp)
   15c98:	0001be37          	lui	t3,0x1b
   15c9c:	01000f93          	li	t6,16
   15ca0:	00058693          	mv	a3,a1
   15ca4:	00060713          	mv	a4,a2
   15ca8:	d68e0e13          	addi	t3,t3,-664 # 1ad68 <blanks.1>
   15cac:	00700f13          	li	t5,7
   15cb0:	01bfc863          	blt	t6,s11,15cc0 <_vfiprintf_r+0xc70>
   15cb4:	0640006f          	j	15d18 <_vfiprintf_r+0xcc8>
   15cb8:	ff0d8d93          	addi	s11,s11,-16
   15cbc:	05bfde63          	bge	t6,s11,15d18 <_vfiprintf_r+0xcc8>
   15cc0:	01068693          	addi	a3,a3,16
   15cc4:	00170713          	addi	a4,a4,1
   15cc8:	01c7a023          	sw	t3,0(a5)
   15ccc:	01f7a223          	sw	t6,4(a5)
   15cd0:	04d12423          	sw	a3,72(sp)
   15cd4:	04e12223          	sw	a4,68(sp)
   15cd8:	00878793          	addi	a5,a5,8
   15cdc:	fcef5ee3          	bge	t5,a4,15cb8 <_vfiprintf_r+0xc68>
   15ce0:	00412503          	lw	a0,4(sp)
   15ce4:	04010613          	addi	a2,sp,64
   15ce8:	00098593          	mv	a1,s3
   15cec:	01c12823          	sw	t3,16(sp)
   15cf0:	688000ef          	jal	16378 <__sprint_r>
   15cf4:	ec051263          	bnez	a0,153b8 <_vfiprintf_r+0x368>
   15cf8:	01000f93          	li	t6,16
   15cfc:	ff0d8d93          	addi	s11,s11,-16
   15d00:	04812683          	lw	a3,72(sp)
   15d04:	04412703          	lw	a4,68(sp)
   15d08:	01012e03          	lw	t3,16(sp)
   15d0c:	000b0793          	mv	a5,s6
   15d10:	00700f13          	li	t5,7
   15d14:	fbbfc6e3          	blt	t6,s11,15cc0 <_vfiprintf_r+0xc70>
   15d18:	00dd86b3          	add	a3,s11,a3
   15d1c:	00170713          	addi	a4,a4,1
   15d20:	04d12423          	sw	a3,72(sp)
   15d24:	04e12223          	sw	a4,68(sp)
   15d28:	01c7a023          	sw	t3,0(a5)
   15d2c:	01b7a223          	sw	s11,4(a5)
   15d30:	00700613          	li	a2,7
   15d34:	2ce64c63          	blt	a2,a4,1600c <_vfiprintf_r+0xfbc>
   15d38:	03b14603          	lbu	a2,59(sp)
   15d3c:	00878793          	addi	a5,a5,8
   15d40:	02061a63          	bnez	a2,15d74 <_vfiprintf_r+0xd24>
   15d44:	01812603          	lw	a2,24(sp)
   15d48:	d8060663          	beqz	a2,152d4 <_vfiprintf_r+0x284>
   15d4c:	00000e13          	li	t3,0
   15d50:	d50ff06f          	j	152a0 <_vfiprintf_r+0x250>
   15d54:	00470713          	addi	a4,a4,4
   15d58:	000d4683          	lbu	a3,0(s10)
   15d5c:	00e12623          	sw	a4,12(sp)
   15d60:	c6cff06f          	j	151cc <_vfiprintf_r+0x17c>
   15d64:	001a0a13          	addi	s4,s4,1
   15d68:	00100c13          	li	s8,1
   15d6c:	0ef10c93          	addi	s9,sp,239
   15d70:	facff06f          	j	1551c <_vfiprintf_r+0x4cc>
   15d74:	00000e13          	li	t3,0
   15d78:	cf4ff06f          	j	1526c <_vfiprintf_r+0x21c>
   15d7c:	ffe50513          	addi	a0,a0,-2
   15d80:	03000713          	li	a4,48
   15d84:	0f010693          	addi	a3,sp,240
   15d88:	40a68c33          	sub	s8,a3,a0
   15d8c:	feec8fa3          	sb	a4,-1(s9)
   15d90:	000a8a13          	mv	s4,s5
   15d94:	018ad463          	bge	s5,s8,15d9c <_vfiprintf_r+0xd4c>
   15d98:	000c0a13          	mv	s4,s8
   15d9c:	00050c93          	mv	s9,a0
   15da0:	c9cff06f          	j	1523c <_vfiprintf_r+0x1ec>
   15da4:	00c12703          	lw	a4,12(sp)
   15da8:	01047a13          	andi	s4,s0,16
   15dac:	00072e03          	lw	t3,0(a4)
   15db0:	00470693          	addi	a3,a4,4
   15db4:	8c0a1ae3          	bnez	s4,15688 <_vfiprintf_r+0x638>
   15db8:	04047713          	andi	a4,s0,64
   15dbc:	20070a63          	beqz	a4,15fd0 <_vfiprintf_r+0xf80>
   15dc0:	010e1e13          	slli	t3,t3,0x10
   15dc4:	02010da3          	sb	zero,59(sp)
   15dc8:	010e5e13          	srli	t3,t3,0x10
   15dcc:	00000d93          	li	s11,0
   15dd0:	200acc63          	bltz	s5,15fe8 <_vfiprintf_r+0xf98>
   15dd4:	f7f47413          	andi	s0,s0,-129
   15dd8:	200a9863          	bnez	s5,15fe8 <_vfiprintf_r+0xf98>
   15ddc:	01be6633          	or	a2,t3,s11
   15de0:	20061463          	bnez	a2,15fe8 <_vfiprintf_r+0xf98>
   15de4:	00d12623          	sw	a3,12(sp)
   15de8:	00000c13          	li	s8,0
   15dec:	0f010c93          	addi	s9,sp,240
   15df0:	c4cff06f          	j	1523c <_vfiprintf_r+0x1ec>
   15df4:	00c12703          	lw	a4,12(sp)
   15df8:	00812603          	lw	a2,8(sp)
   15dfc:	00812583          	lw	a1,8(sp)
   15e00:	00072703          	lw	a4,0(a4)
   15e04:	41f65613          	srai	a2,a2,0x1f
   15e08:	00d12623          	sw	a3,12(sp)
   15e0c:	00b72023          	sw	a1,0(a4)
   15e10:	00c72223          	sw	a2,4(a4)
   15e14:	b28ff06f          	j	1513c <_vfiprintf_r+0xec>
   15e18:	00c12703          	lw	a4,12(sp)
   15e1c:	00470693          	addi	a3,a4,4
   15e20:	00c12703          	lw	a4,12(sp)
   15e24:	00000613          	li	a2,0
   15e28:	00d12623          	sw	a3,12(sp)
   15e2c:	00072703          	lw	a4,0(a4)
   15e30:	9c9ff06f          	j	157f8 <_vfiprintf_r+0x7a8>
   15e34:	00c12703          	lw	a4,12(sp)
   15e38:	00470693          	addi	a3,a4,4
   15e3c:	00c12703          	lw	a4,12(sp)
   15e40:	00d12623          	sw	a3,12(sp)
   15e44:	00072e03          	lw	t3,0(a4)
   15e48:	41fe5d93          	srai	s11,t3,0x1f
   15e4c:	000d8693          	mv	a3,s11
   15e50:	e9cff06f          	j	154ec <_vfiprintf_r+0x49c>
   15e54:	00040a13          	mv	s4,s0
   15e58:	985ff06f          	j	157dc <_vfiprintf_r+0x78c>
   15e5c:	0001b537          	lui	a0,0x1b
   15e60:	00246413          	ori	s0,s0,2
   15e64:	00d12623          	sw	a3,12(sp)
   15e68:	a4850513          	addi	a0,a0,-1464 # 1aa48 <_exit+0x214>
   15e6c:	00200e13          	li	t3,2
   15e70:	0f010c93          	addi	s9,sp,240
   15e74:	00f77693          	andi	a3,a4,15
   15e78:	00d506b3          	add	a3,a0,a3
   15e7c:	0006c683          	lbu	a3,0(a3)
   15e80:	01c61593          	slli	a1,a2,0x1c
   15e84:	00475713          	srli	a4,a4,0x4
   15e88:	00e58733          	add	a4,a1,a4
   15e8c:	00465613          	srli	a2,a2,0x4
   15e90:	fedc8fa3          	sb	a3,-1(s9)
   15e94:	00c766b3          	or	a3,a4,a2
   15e98:	fffc8c93          	addi	s9,s9,-1
   15e9c:	fc069ce3          	bnez	a3,15e74 <_vfiprintf_r+0xe24>
   15ea0:	0f010713          	addi	a4,sp,240
   15ea4:	41970c33          	sub	s8,a4,s9
   15ea8:	000a8a13          	mv	s4,s5
   15eac:	018ad463          	bge	s5,s8,15eb4 <_vfiprintf_r+0xe64>
   15eb0:	000c0a13          	mv	s4,s8
   15eb4:	aa0e1ce3          	bnez	t3,1596c <_vfiprintf_r+0x91c>
   15eb8:	07c0006f          	j	15f34 <_vfiprintf_r+0xee4>
   15ebc:	00000c13          	li	s8,0
   15ec0:	00000a93          	li	s5,0
   15ec4:	0f010c93          	addi	s9,sp,240
   15ec8:	b74ff06f          	j	1523c <_vfiprintf_r+0x1ec>
   15ecc:	fff00a93          	li	s5,-1
   15ed0:	00058d13          	mv	s10,a1
   15ed4:	afcff06f          	j	151d0 <_vfiprintf_r+0x180>
   15ed8:	0001b537          	lui	a0,0x1b
   15edc:	02047713          	andi	a4,s0,32
   15ee0:	a3450513          	addi	a0,a0,-1484 # 1aa34 <_exit+0x200>
   15ee4:	08070463          	beqz	a4,15f6c <_vfiprintf_r+0xf1c>
   15ee8:	00c12703          	lw	a4,12(sp)
   15eec:	00770613          	addi	a2,a4,7
   15ef0:	ff867613          	andi	a2,a2,-8
   15ef4:	00860713          	addi	a4,a2,8
   15ef8:	00e12623          	sw	a4,12(sp)
   15efc:	00062703          	lw	a4,0(a2)
   15f00:	00462603          	lw	a2,4(a2)
   15f04:	00147593          	andi	a1,s0,1
   15f08:	00c76333          	or	t1,a4,a2
   15f0c:	00058463          	beqz	a1,15f14 <_vfiprintf_r+0xec4>
   15f10:	12031a63          	bnez	t1,16044 <_vfiprintf_r+0xff4>
   15f14:	02010da3          	sb	zero,59(sp)
   15f18:	0e0ac463          	bltz	s5,16000 <_vfiprintf_r+0xfb0>
   15f1c:	b7f47413          	andi	s0,s0,-1153
   15f20:	320a9c63          	bnez	s5,16258 <_vfiprintf_r+0x1208>
   15f24:	32031a63          	bnez	t1,16258 <_vfiprintf_r+0x1208>
   15f28:	00000c13          	li	s8,0
   15f2c:	0f010c93          	addi	s9,sp,240
   15f30:	00000a13          	li	s4,0
   15f34:	04812683          	lw	a3,72(sp)
   15f38:	04412703          	lw	a4,68(sp)
   15f3c:	08447e13          	andi	t3,s0,132
   15f40:	00068593          	mv	a1,a3
   15f44:	00070613          	mv	a2,a4
   15f48:	b00e0663          	beqz	t3,15254 <_vfiprintf_r+0x204>
   15f4c:	03b14603          	lbu	a2,59(sp)
   15f50:	00012c23          	sw	zero,24(sp)
   15f54:	b0061c63          	bnez	a2,1526c <_vfiprintf_r+0x21c>
   15f58:	b74ff06f          	j	152cc <_vfiprintf_r+0x27c>
   15f5c:	0001b537          	lui	a0,0x1b
   15f60:	02047713          	andi	a4,s0,32
   15f64:	a4850513          	addi	a0,a0,-1464 # 1aa48 <_exit+0x214>
   15f68:	f80710e3          	bnez	a4,15ee8 <_vfiprintf_r+0xe98>
   15f6c:	00c12583          	lw	a1,12(sp)
   15f70:	00c12703          	lw	a4,12(sp)
   15f74:	01047613          	andi	a2,s0,16
   15f78:	00458593          	addi	a1,a1,4
   15f7c:	00b12623          	sw	a1,12(sp)
   15f80:	00072703          	lw	a4,0(a4)
   15f84:	06061a63          	bnez	a2,15ff8 <_vfiprintf_r+0xfa8>
   15f88:	04047613          	andi	a2,s0,64
   15f8c:	06060263          	beqz	a2,15ff0 <_vfiprintf_r+0xfa0>
   15f90:	01071713          	slli	a4,a4,0x10
   15f94:	01075713          	srli	a4,a4,0x10
   15f98:	00000613          	li	a2,0
   15f9c:	f69ff06f          	j	15f04 <_vfiprintf_r+0xeb4>
   15fa0:	000c8513          	mv	a0,s9
   15fa4:	719010ef          	jal	17ebc <strlen>
   15fa8:	03b14703          	lbu	a4,59(sp)
   15fac:	fff54a13          	not	s4,a0
   15fb0:	41fa5a13          	srai	s4,s4,0x1f
   15fb4:	00c12783          	lw	a5,12(sp)
   15fb8:	00050c13          	mv	s8,a0
   15fbc:	01457a33          	and	s4,a0,s4
   15fc0:	dc071463          	bnez	a4,15588 <_vfiprintf_r+0x538>
   15fc4:	01b12623          	sw	s11,12(sp)
   15fc8:	00000a93          	li	s5,0
   15fcc:	a70ff06f          	j	1523c <_vfiprintf_r+0x1ec>
   15fd0:	20047713          	andi	a4,s0,512
   15fd4:	02010da3          	sb	zero,59(sp)
   15fd8:	18070863          	beqz	a4,16168 <_vfiprintf_r+0x1118>
   15fdc:	0ffe7e13          	zext.b	t3,t3
   15fe0:	00000d93          	li	s11,0
   15fe4:	de0ad8e3          	bgez	s5,15dd4 <_vfiprintf_r+0xd84>
   15fe8:	00d12623          	sw	a3,12(sp)
   15fec:	e2cff06f          	j	15618 <_vfiprintf_r+0x5c8>
   15ff0:	20047613          	andi	a2,s0,512
   15ff4:	14061e63          	bnez	a2,16150 <_vfiprintf_r+0x1100>
   15ff8:	00000613          	li	a2,0
   15ffc:	f09ff06f          	j	15f04 <_vfiprintf_r+0xeb4>
   16000:	bff47413          	andi	s0,s0,-1025
   16004:	00000e13          	li	t3,0
   16008:	e69ff06f          	j	15e70 <_vfiprintf_r+0xe20>
   1600c:	00412503          	lw	a0,4(sp)
   16010:	04010613          	addi	a2,sp,64
   16014:	00098593          	mv	a1,s3
   16018:	360000ef          	jal	16378 <__sprint_r>
   1601c:	00050e13          	mv	t3,a0
   16020:	b8051c63          	bnez	a0,153b8 <_vfiprintf_r+0x368>
   16024:	03b14783          	lbu	a5,59(sp)
   16028:	04812683          	lw	a3,72(sp)
   1602c:	04412703          	lw	a4,68(sp)
   16030:	0c079c63          	bnez	a5,16108 <_vfiprintf_r+0x10b8>
   16034:	01812783          	lw	a5,24(sp)
   16038:	aa078ee3          	beqz	a5,15af4 <_vfiprintf_r+0xaa4>
   1603c:	000b0793          	mv	a5,s6
   16040:	a60ff06f          	j	152a0 <_vfiprintf_r+0x250>
   16044:	02d10ea3          	sb	a3,61(sp)
   16048:	03000693          	li	a3,48
   1604c:	02010da3          	sb	zero,59(sp)
   16050:	02d10e23          	sb	a3,60(sp)
   16054:	0a0ace63          	bltz	s5,16110 <_vfiprintf_r+0x10c0>
   16058:	b7f47413          	andi	s0,s0,-1153
   1605c:	00246413          	ori	s0,s0,2
   16060:	00200e13          	li	t3,2
   16064:	e0dff06f          	j	15e70 <_vfiprintf_r+0xe20>
   16068:	1ad000ef          	jal	16a14 <__sinit>
   1606c:	814ff06f          	j	15080 <_vfiprintf_r+0x30>
   16070:	001d4683          	lbu	a3,1(s10)
   16074:	20046413          	ori	s0,s0,512
   16078:	001d0d13          	addi	s10,s10,1
   1607c:	950ff06f          	j	151cc <_vfiprintf_r+0x17c>
   16080:	001d4683          	lbu	a3,1(s10)
   16084:	02046413          	ori	s0,s0,32
   16088:	001d0d13          	addi	s10,s10,1
   1608c:	940ff06f          	j	151cc <_vfiprintf_r+0x17c>
   16090:	00c12703          	lw	a4,12(sp)
   16094:	00812603          	lw	a2,8(sp)
   16098:	00072703          	lw	a4,0(a4)
   1609c:	00c72023          	sw	a2,0(a4)
   160a0:	00d12623          	sw	a3,12(sp)
   160a4:	898ff06f          	j	1513c <_vfiprintf_r+0xec>
   160a8:	00600713          	li	a4,6
   160ac:	000a8a13          	mv	s4,s5
   160b0:	09576063          	bltu	a4,s5,16130 <_vfiprintf_r+0x10e0>
   160b4:	0001b337          	lui	t1,0x1b
   160b8:	01b12623          	sw	s11,12(sp)
   160bc:	a5c30c93          	addi	s9,t1,-1444 # 1aa5c <_exit+0x228>
   160c0:	000a0c13          	mv	s8,s4
   160c4:	00000a93          	li	s5,0
   160c8:	974ff06f          	j	1523c <_vfiprintf_r+0x1ec>
   160cc:	20047713          	andi	a4,s0,512
   160d0:	0a070463          	beqz	a4,16178 <_vfiprintf_r+0x1128>
   160d4:	018e1e13          	slli	t3,t3,0x18
   160d8:	418e5e13          	srai	t3,t3,0x18
   160dc:	41fe5d93          	srai	s11,t3,0x1f
   160e0:	00d12623          	sw	a3,12(sp)
   160e4:	000d8693          	mv	a3,s11
   160e8:	c04ff06f          	j	154ec <_vfiprintf_r+0x49c>
   160ec:	20047613          	andi	a2,s0,512
   160f0:	06060663          	beqz	a2,1615c <_vfiprintf_r+0x110c>
   160f4:	0ff77713          	zext.b	a4,a4
   160f8:	00d12623          	sw	a3,12(sp)
   160fc:	00040a13          	mv	s4,s0
   16100:	00000613          	li	a2,0
   16104:	ef4ff06f          	j	157f8 <_vfiprintf_r+0x7a8>
   16108:	000b0793          	mv	a5,s6
   1610c:	960ff06f          	j	1526c <_vfiprintf_r+0x21c>
   16110:	bff47413          	andi	s0,s0,-1025
   16114:	00246413          	ori	s0,s0,2
   16118:	00200e13          	li	t3,2
   1611c:	d55ff06f          	j	15e70 <_vfiprintf_r+0xe20>
   16120:	0001bdb7          	lui	s11,0x1b
   16124:	d58d8613          	addi	a2,s11,-680 # 1ad58 <zeroes.0>
   16128:	00c12823          	sw	a2,16(sp)
   1612c:	a35ff06f          	j	15b60 <_vfiprintf_r+0xb10>
   16130:	00070a13          	mv	s4,a4
   16134:	f81ff06f          	j	160b4 <_vfiprintf_r+0x1064>
   16138:	00c12703          	lw	a4,12(sp)
   1613c:	00812603          	lw	a2,8(sp)
   16140:	00d12623          	sw	a3,12(sp)
   16144:	00072703          	lw	a4,0(a4)
   16148:	00c71023          	sh	a2,0(a4)
   1614c:	ff1fe06f          	j	1513c <_vfiprintf_r+0xec>
   16150:	0ff77713          	zext.b	a4,a4
   16154:	00000613          	li	a2,0
   16158:	dadff06f          	j	15f04 <_vfiprintf_r+0xeb4>
   1615c:	00d12623          	sw	a3,12(sp)
   16160:	00040a13          	mv	s4,s0
   16164:	e94ff06f          	j	157f8 <_vfiprintf_r+0x7a8>
   16168:	00000d93          	li	s11,0
   1616c:	c60ad4e3          	bgez	s5,15dd4 <_vfiprintf_r+0xd84>
   16170:	00d12623          	sw	a3,12(sp)
   16174:	ca8ff06f          	j	1561c <_vfiprintf_r+0x5cc>
   16178:	41fe5d93          	srai	s11,t3,0x1f
   1617c:	00d12623          	sw	a3,12(sp)
   16180:	000d8693          	mv	a3,s11
   16184:	b68ff06f          	j	154ec <_vfiprintf_r+0x49c>
   16188:	00412503          	lw	a0,4(sp)
   1618c:	04010613          	addi	a2,sp,64
   16190:	00098593          	mv	a1,s3
   16194:	1e4000ef          	jal	16378 <__sprint_r>
   16198:	a20ff06f          	j	153b8 <_vfiprintf_r+0x368>
   1619c:	00f12c23          	sw	a5,24(sp)
   161a0:	02412783          	lw	a5,36(sp)
   161a4:	02012583          	lw	a1,32(sp)
   161a8:	01c12823          	sw	t3,16(sp)
   161ac:	40fc8a33          	sub	s4,s9,a5
   161b0:	00078613          	mv	a2,a5
   161b4:	000a0513          	mv	a0,s4
   161b8:	190010ef          	jal	17348 <strncpy>
   161bc:	01c12783          	lw	a5,28(sp)
   161c0:	01012503          	lw	a0,16(sp)
   161c4:	000d8593          	mv	a1,s11
   161c8:	0017c683          	lbu	a3,1(a5)
   161cc:	00a00613          	li	a2,10
   161d0:	fffa0c93          	addi	s9,s4,-1
   161d4:	00d03733          	snez	a4,a3
   161d8:	00e787b3          	add	a5,a5,a4
   161dc:	00000693          	li	a3,0
   161e0:	00f12e23          	sw	a5,28(sp)
   161e4:	249030ef          	jal	19c2c <__udivdi3>
   161e8:	00000693          	li	a3,0
   161ec:	00a00613          	li	a2,10
   161f0:	00a12823          	sw	a0,16(sp)
   161f4:	00058d93          	mv	s11,a1
   161f8:	7e9030ef          	jal	1a1e0 <__umoddi3>
   161fc:	03050693          	addi	a3,a0,48
   16200:	01012e03          	lw	t3,16(sp)
   16204:	01812783          	lw	a5,24(sp)
   16208:	feda0fa3          	sb	a3,-1(s4)
   1620c:	00100c13          	li	s8,1
   16210:	d68ff06f          	j	15778 <_vfiprintf_r+0x728>
   16214:	02c12703          	lw	a4,44(sp)
   16218:	00900693          	li	a3,9
   1621c:	d2e6e063          	bltu	a3,a4,1573c <_vfiprintf_r+0x6ec>
   16220:	d78ff06f          	j	15798 <_vfiprintf_r+0x748>
   16224:	01b12623          	sw	s11,12(sp)
   16228:	02070063          	beqz	a4,16248 <_vfiprintf_r+0x11f8>
   1622c:	001a8a13          	addi	s4,s5,1
   16230:	000a8c13          	mv	s8,s5
   16234:	00000a93          	li	s5,0
   16238:	ae4ff06f          	j	1551c <_vfiprintf_r+0x4cc>
   1623c:	fff00793          	li	a5,-1
   16240:	00f12423          	sw	a5,8(sp)
   16244:	9a8ff06f          	j	153ec <_vfiprintf_r+0x39c>
   16248:	000a8c13          	mv	s8,s5
   1624c:	000a8a13          	mv	s4,s5
   16250:	00000a93          	li	s5,0
   16254:	fe9fe06f          	j	1523c <_vfiprintf_r+0x1ec>
   16258:	00000e13          	li	t3,0
   1625c:	c15ff06f          	j	15e70 <_vfiprintf_r+0xe20>
   16260:	00c12703          	lw	a4,12(sp)
   16264:	00072a83          	lw	s5,0(a4)
   16268:	00470c93          	addi	s9,a4,4
   1626c:	000ad463          	bgez	s5,16274 <_vfiprintf_r+0x1224>
   16270:	fff00a93          	li	s5,-1
   16274:	001d4683          	lbu	a3,1(s10)
   16278:	01912623          	sw	s9,12(sp)
   1627c:	00058d13          	mv	s10,a1
   16280:	f4dfe06f          	j	151cc <_vfiprintf_r+0x17c>
   16284:	0001b537          	lui	a0,0x1b
   16288:	00d12623          	sw	a3,12(sp)
   1628c:	a4850513          	addi	a0,a0,-1464 # 1aa48 <_exit+0x214>
   16290:	00200e13          	li	t3,2
   16294:	bddff06f          	j	15e70 <_vfiprintf_r+0xe20>
   16298:	00040a13          	mv	s4,s0
   1629c:	b85ff06f          	j	15e20 <_vfiprintf_r+0xdd0>

000162a0 <vfiprintf>:
   162a0:	00050713          	mv	a4,a0
   162a4:	f5c1a503          	lw	a0,-164(gp) # 1ca4c <_impure_ptr>
   162a8:	00060693          	mv	a3,a2
   162ac:	00058613          	mv	a2,a1
   162b0:	00070593          	mv	a1,a4
   162b4:	d9dfe06f          	j	15050 <_vfiprintf_r>

000162b8 <__sbprintf>:
   162b8:	00c5d783          	lhu	a5,12(a1)
   162bc:	0645ae83          	lw	t4,100(a1)
   162c0:	00e5de03          	lhu	t3,14(a1)
   162c4:	01c5a303          	lw	t1,28(a1)
   162c8:	0245a883          	lw	a7,36(a1)
   162cc:	b7010113          	addi	sp,sp,-1168
   162d0:	ffd7f793          	andi	a5,a5,-3
   162d4:	08010813          	addi	a6,sp,128
   162d8:	40000713          	li	a4,1024
   162dc:	48812423          	sw	s0,1160(sp)
   162e0:	00058413          	mv	s0,a1
   162e4:	01810593          	addi	a1,sp,24
   162e8:	48912223          	sw	s1,1156(sp)
   162ec:	02f11223          	sh	a5,36(sp)
   162f0:	48112623          	sw	ra,1164(sp)
   162f4:	02012823          	sw	zero,48(sp)
   162f8:	07d12e23          	sw	t4,124(sp)
   162fc:	03c11323          	sh	t3,38(sp)
   16300:	02612a23          	sw	t1,52(sp)
   16304:	03112e23          	sw	a7,60(sp)
   16308:	01012c23          	sw	a6,24(sp)
   1630c:	03012423          	sw	a6,40(sp)
   16310:	02e12023          	sw	a4,32(sp)
   16314:	02e12623          	sw	a4,44(sp)
   16318:	00050493          	mv	s1,a0
   1631c:	d35fe0ef          	jal	15050 <_vfiprintf_r>
   16320:	00050793          	mv	a5,a0
   16324:	02055a63          	bgez	a0,16358 <__sbprintf+0xa0>
   16328:	02415703          	lhu	a4,36(sp)
   1632c:	04077713          	andi	a4,a4,64
   16330:	00070863          	beqz	a4,16340 <__sbprintf+0x88>
   16334:	00c45703          	lhu	a4,12(s0)
   16338:	04076713          	ori	a4,a4,64
   1633c:	00e41623          	sh	a4,12(s0)
   16340:	48c12083          	lw	ra,1164(sp)
   16344:	48812403          	lw	s0,1160(sp)
   16348:	48412483          	lw	s1,1156(sp)
   1634c:	00078513          	mv	a0,a5
   16350:	49010113          	addi	sp,sp,1168
   16354:	00008067          	ret
   16358:	00a12623          	sw	a0,12(sp)
   1635c:	01810593          	addi	a1,sp,24
   16360:	00048513          	mv	a0,s1
   16364:	2ac000ef          	jal	16610 <_fflush_r>
   16368:	00c12783          	lw	a5,12(sp)
   1636c:	fa050ee3          	beqz	a0,16328 <__sbprintf+0x70>
   16370:	fff00793          	li	a5,-1
   16374:	fb5ff06f          	j	16328 <__sbprintf+0x70>

00016378 <__sprint_r>:
   16378:	00862703          	lw	a4,8(a2)
   1637c:	00071863          	bnez	a4,1638c <__sprint_r+0x14>
   16380:	00000513          	li	a0,0
   16384:	00062223          	sw	zero,4(a2)
   16388:	00008067          	ret
   1638c:	fe010113          	addi	sp,sp,-32
   16390:	00112e23          	sw	ra,28(sp)
   16394:	00c12623          	sw	a2,12(sp)
   16398:	6d8000ef          	jal	16a70 <__sfvwrite_r>
   1639c:	00c12783          	lw	a5,12(sp)
   163a0:	01c12083          	lw	ra,28(sp)
   163a4:	0007a423          	sw	zero,8(a5)
   163a8:	0007a223          	sw	zero,4(a5)
   163ac:	02010113          	addi	sp,sp,32
   163b0:	00008067          	ret

000163b4 <__sflush_r>:
   163b4:	00c59703          	lh	a4,12(a1)
   163b8:	fe010113          	addi	sp,sp,-32
   163bc:	00812c23          	sw	s0,24(sp)
   163c0:	01312623          	sw	s3,12(sp)
   163c4:	00112e23          	sw	ra,28(sp)
   163c8:	00877793          	andi	a5,a4,8
   163cc:	00058413          	mv	s0,a1
   163d0:	00050993          	mv	s3,a0
   163d4:	12079263          	bnez	a5,164f8 <__sflush_r+0x144>
   163d8:	000017b7          	lui	a5,0x1
   163dc:	80078793          	addi	a5,a5,-2048 # 800 <exit-0xf8b4>
   163e0:	0045a683          	lw	a3,4(a1)
   163e4:	00f767b3          	or	a5,a4,a5
   163e8:	00f59623          	sh	a5,12(a1)
   163ec:	18d05c63          	blez	a3,16584 <__sflush_r+0x1d0>
   163f0:	02842803          	lw	a6,40(s0)
   163f4:	0e080663          	beqz	a6,164e0 <__sflush_r+0x12c>
   163f8:	00912a23          	sw	s1,20(sp)
   163fc:	01371693          	slli	a3,a4,0x13
   16400:	0009a483          	lw	s1,0(s3)
   16404:	0009a023          	sw	zero,0(s3)
   16408:	1806ca63          	bltz	a3,1659c <__sflush_r+0x1e8>
   1640c:	01c42583          	lw	a1,28(s0)
   16410:	00000613          	li	a2,0
   16414:	00100693          	li	a3,1
   16418:	00098513          	mv	a0,s3
   1641c:	000800e7          	jalr	a6
   16420:	fff00793          	li	a5,-1
   16424:	00050613          	mv	a2,a0
   16428:	1af50c63          	beq	a0,a5,165e0 <__sflush_r+0x22c>
   1642c:	00c41783          	lh	a5,12(s0)
   16430:	02842803          	lw	a6,40(s0)
   16434:	0047f793          	andi	a5,a5,4
   16438:	00078e63          	beqz	a5,16454 <__sflush_r+0xa0>
   1643c:	00442703          	lw	a4,4(s0)
   16440:	03042783          	lw	a5,48(s0)
   16444:	40e60633          	sub	a2,a2,a4
   16448:	00078663          	beqz	a5,16454 <__sflush_r+0xa0>
   1644c:	03c42783          	lw	a5,60(s0)
   16450:	40f60633          	sub	a2,a2,a5
   16454:	01c42583          	lw	a1,28(s0)
   16458:	00000693          	li	a3,0
   1645c:	00098513          	mv	a0,s3
   16460:	000800e7          	jalr	a6
   16464:	fff00713          	li	a4,-1
   16468:	00c41783          	lh	a5,12(s0)
   1646c:	12e51c63          	bne	a0,a4,165a4 <__sflush_r+0x1f0>
   16470:	0009a683          	lw	a3,0(s3)
   16474:	01d00713          	li	a4,29
   16478:	18d76263          	bltu	a4,a3,165fc <__sflush_r+0x248>
   1647c:	20400737          	lui	a4,0x20400
   16480:	00170713          	addi	a4,a4,1 # 20400001 <__BSS_END__+0x203e3259>
   16484:	00d75733          	srl	a4,a4,a3
   16488:	00177713          	andi	a4,a4,1
   1648c:	16070863          	beqz	a4,165fc <__sflush_r+0x248>
   16490:	01042683          	lw	a3,16(s0)
   16494:	fffff737          	lui	a4,0xfffff
   16498:	7ff70713          	addi	a4,a4,2047 # fffff7ff <__BSS_END__+0xfffe2a57>
   1649c:	00e7f733          	and	a4,a5,a4
   164a0:	00e41623          	sh	a4,12(s0)
   164a4:	00042223          	sw	zero,4(s0)
   164a8:	00d42023          	sw	a3,0(s0)
   164ac:	01379713          	slli	a4,a5,0x13
   164b0:	00075663          	bgez	a4,164bc <__sflush_r+0x108>
   164b4:	0009a783          	lw	a5,0(s3)
   164b8:	10078863          	beqz	a5,165c8 <__sflush_r+0x214>
   164bc:	03042583          	lw	a1,48(s0)
   164c0:	0099a023          	sw	s1,0(s3)
   164c4:	10058a63          	beqz	a1,165d8 <__sflush_r+0x224>
   164c8:	04040793          	addi	a5,s0,64
   164cc:	00f58663          	beq	a1,a5,164d8 <__sflush_r+0x124>
   164d0:	00098513          	mv	a0,s3
   164d4:	4fd010ef          	jal	181d0 <_free_r>
   164d8:	01412483          	lw	s1,20(sp)
   164dc:	02042823          	sw	zero,48(s0)
   164e0:	01c12083          	lw	ra,28(sp)
   164e4:	01812403          	lw	s0,24(sp)
   164e8:	00c12983          	lw	s3,12(sp)
   164ec:	00000513          	li	a0,0
   164f0:	02010113          	addi	sp,sp,32
   164f4:	00008067          	ret
   164f8:	01212823          	sw	s2,16(sp)
   164fc:	0105a903          	lw	s2,16(a1)
   16500:	08090a63          	beqz	s2,16594 <__sflush_r+0x1e0>
   16504:	00912a23          	sw	s1,20(sp)
   16508:	0005a483          	lw	s1,0(a1)
   1650c:	00377713          	andi	a4,a4,3
   16510:	0125a023          	sw	s2,0(a1)
   16514:	412484b3          	sub	s1,s1,s2
   16518:	00000793          	li	a5,0
   1651c:	00071463          	bnez	a4,16524 <__sflush_r+0x170>
   16520:	0145a783          	lw	a5,20(a1)
   16524:	00f42423          	sw	a5,8(s0)
   16528:	00904863          	bgtz	s1,16538 <__sflush_r+0x184>
   1652c:	0640006f          	j	16590 <__sflush_r+0x1dc>
   16530:	00a90933          	add	s2,s2,a0
   16534:	04905e63          	blez	s1,16590 <__sflush_r+0x1dc>
   16538:	02442783          	lw	a5,36(s0)
   1653c:	01c42583          	lw	a1,28(s0)
   16540:	00048693          	mv	a3,s1
   16544:	00090613          	mv	a2,s2
   16548:	00098513          	mv	a0,s3
   1654c:	000780e7          	jalr	a5
   16550:	40a484b3          	sub	s1,s1,a0
   16554:	fca04ee3          	bgtz	a0,16530 <__sflush_r+0x17c>
   16558:	00c45783          	lhu	a5,12(s0)
   1655c:	01012903          	lw	s2,16(sp)
   16560:	0407e793          	ori	a5,a5,64
   16564:	01c12083          	lw	ra,28(sp)
   16568:	00f41623          	sh	a5,12(s0)
   1656c:	01812403          	lw	s0,24(sp)
   16570:	01412483          	lw	s1,20(sp)
   16574:	00c12983          	lw	s3,12(sp)
   16578:	fff00513          	li	a0,-1
   1657c:	02010113          	addi	sp,sp,32
   16580:	00008067          	ret
   16584:	03c5a683          	lw	a3,60(a1)
   16588:	e6d044e3          	bgtz	a3,163f0 <__sflush_r+0x3c>
   1658c:	f55ff06f          	j	164e0 <__sflush_r+0x12c>
   16590:	01412483          	lw	s1,20(sp)
   16594:	01012903          	lw	s2,16(sp)
   16598:	f49ff06f          	j	164e0 <__sflush_r+0x12c>
   1659c:	05042603          	lw	a2,80(s0)
   165a0:	e95ff06f          	j	16434 <__sflush_r+0x80>
   165a4:	01042683          	lw	a3,16(s0)
   165a8:	fffff737          	lui	a4,0xfffff
   165ac:	7ff70713          	addi	a4,a4,2047 # fffff7ff <__BSS_END__+0xfffe2a57>
   165b0:	00e7f733          	and	a4,a5,a4
   165b4:	00e41623          	sh	a4,12(s0)
   165b8:	00042223          	sw	zero,4(s0)
   165bc:	00d42023          	sw	a3,0(s0)
   165c0:	01379713          	slli	a4,a5,0x13
   165c4:	ee075ce3          	bgez	a4,164bc <__sflush_r+0x108>
   165c8:	03042583          	lw	a1,48(s0)
   165cc:	04a42823          	sw	a0,80(s0)
   165d0:	0099a023          	sw	s1,0(s3)
   165d4:	ee059ae3          	bnez	a1,164c8 <__sflush_r+0x114>
   165d8:	01412483          	lw	s1,20(sp)
   165dc:	f05ff06f          	j	164e0 <__sflush_r+0x12c>
   165e0:	0009a783          	lw	a5,0(s3)
   165e4:	e40784e3          	beqz	a5,1642c <__sflush_r+0x78>
   165e8:	fe378713          	addi	a4,a5,-29
   165ec:	00070c63          	beqz	a4,16604 <__sflush_r+0x250>
   165f0:	fea78793          	addi	a5,a5,-22
   165f4:	00078863          	beqz	a5,16604 <__sflush_r+0x250>
   165f8:	00c45783          	lhu	a5,12(s0)
   165fc:	0407e793          	ori	a5,a5,64
   16600:	f65ff06f          	j	16564 <__sflush_r+0x1b0>
   16604:	0099a023          	sw	s1,0(s3)
   16608:	01412483          	lw	s1,20(sp)
   1660c:	ed5ff06f          	j	164e0 <__sflush_r+0x12c>

00016610 <_fflush_r>:
   16610:	00050793          	mv	a5,a0
   16614:	00050663          	beqz	a0,16620 <_fflush_r+0x10>
   16618:	03452703          	lw	a4,52(a0)
   1661c:	00070e63          	beqz	a4,16638 <_fflush_r+0x28>
   16620:	00c59703          	lh	a4,12(a1)
   16624:	00071663          	bnez	a4,16630 <_fflush_r+0x20>
   16628:	00000513          	li	a0,0
   1662c:	00008067          	ret
   16630:	00078513          	mv	a0,a5
   16634:	d81ff06f          	j	163b4 <__sflush_r>
   16638:	fe010113          	addi	sp,sp,-32
   1663c:	00b12623          	sw	a1,12(sp)
   16640:	00112e23          	sw	ra,28(sp)
   16644:	00a12423          	sw	a0,8(sp)
   16648:	3cc000ef          	jal	16a14 <__sinit>
   1664c:	00c12583          	lw	a1,12(sp)
   16650:	00812783          	lw	a5,8(sp)
   16654:	00c59703          	lh	a4,12(a1)
   16658:	00070a63          	beqz	a4,1666c <_fflush_r+0x5c>
   1665c:	01c12083          	lw	ra,28(sp)
   16660:	00078513          	mv	a0,a5
   16664:	02010113          	addi	sp,sp,32
   16668:	d4dff06f          	j	163b4 <__sflush_r>
   1666c:	01c12083          	lw	ra,28(sp)
   16670:	00000513          	li	a0,0
   16674:	02010113          	addi	sp,sp,32
   16678:	00008067          	ret

0001667c <fflush>:
   1667c:	06050063          	beqz	a0,166dc <fflush+0x60>
   16680:	00050593          	mv	a1,a0
   16684:	f5c1a503          	lw	a0,-164(gp) # 1ca4c <_impure_ptr>
   16688:	00050663          	beqz	a0,16694 <fflush+0x18>
   1668c:	03452783          	lw	a5,52(a0)
   16690:	00078c63          	beqz	a5,166a8 <fflush+0x2c>
   16694:	00c59783          	lh	a5,12(a1)
   16698:	00079663          	bnez	a5,166a4 <fflush+0x28>
   1669c:	00000513          	li	a0,0
   166a0:	00008067          	ret
   166a4:	d11ff06f          	j	163b4 <__sflush_r>
   166a8:	fe010113          	addi	sp,sp,-32
   166ac:	00b12623          	sw	a1,12(sp)
   166b0:	00a12423          	sw	a0,8(sp)
   166b4:	00112e23          	sw	ra,28(sp)
   166b8:	35c000ef          	jal	16a14 <__sinit>
   166bc:	00c12583          	lw	a1,12(sp)
   166c0:	00812503          	lw	a0,8(sp)
   166c4:	00c59783          	lh	a5,12(a1)
   166c8:	02079863          	bnez	a5,166f8 <fflush+0x7c>
   166cc:	01c12083          	lw	ra,28(sp)
   166d0:	00000513          	li	a0,0
   166d4:	02010113          	addi	sp,sp,32
   166d8:	00008067          	ret
   166dc:	0001c637          	lui	a2,0x1c
   166e0:	000165b7          	lui	a1,0x16
   166e4:	0001c537          	lui	a0,0x1c
   166e8:	2f060613          	addi	a2,a2,752 # 1c2f0 <__sglue>
   166ec:	61058593          	addi	a1,a1,1552 # 16610 <_fflush_r>
   166f0:	30050513          	addi	a0,a0,768 # 1c300 <_impure_data>
   166f4:	0410006f          	j	16f34 <_fwalk_sglue>
   166f8:	01c12083          	lw	ra,28(sp)
   166fc:	02010113          	addi	sp,sp,32
   16700:	cb5ff06f          	j	163b4 <__sflush_r>

00016704 <__fp_lock>:
   16704:	00000513          	li	a0,0
   16708:	00008067          	ret

0001670c <stdio_exit_handler>:
   1670c:	0001c637          	lui	a2,0x1c
   16710:	000195b7          	lui	a1,0x19
   16714:	0001c537          	lui	a0,0x1c
   16718:	2f060613          	addi	a2,a2,752 # 1c2f0 <__sglue>
   1671c:	36c58593          	addi	a1,a1,876 # 1936c <_fclose_r>
   16720:	30050513          	addi	a0,a0,768 # 1c300 <_impure_data>
   16724:	0110006f          	j	16f34 <_fwalk_sglue>

00016728 <cleanup_stdio>:
   16728:	00452583          	lw	a1,4(a0)
   1672c:	ff010113          	addi	sp,sp,-16
   16730:	00812423          	sw	s0,8(sp)
   16734:	00112623          	sw	ra,12(sp)
   16738:	fc818793          	addi	a5,gp,-56 # 1cab8 <__sf>
   1673c:	00050413          	mv	s0,a0
   16740:	00f58463          	beq	a1,a5,16748 <cleanup_stdio+0x20>
   16744:	429020ef          	jal	1936c <_fclose_r>
   16748:	00842583          	lw	a1,8(s0)
   1674c:	03018793          	addi	a5,gp,48 # 1cb20 <__global_pointer$+0x30>
   16750:	00f58663          	beq	a1,a5,1675c <cleanup_stdio+0x34>
   16754:	00040513          	mv	a0,s0
   16758:	415020ef          	jal	1936c <_fclose_r>
   1675c:	00c42583          	lw	a1,12(s0)
   16760:	09818793          	addi	a5,gp,152 # 1cb88 <__global_pointer$+0x98>
   16764:	00f58c63          	beq	a1,a5,1677c <cleanup_stdio+0x54>
   16768:	00040513          	mv	a0,s0
   1676c:	00812403          	lw	s0,8(sp)
   16770:	00c12083          	lw	ra,12(sp)
   16774:	01010113          	addi	sp,sp,16
   16778:	3f50206f          	j	1936c <_fclose_r>
   1677c:	00c12083          	lw	ra,12(sp)
   16780:	00812403          	lw	s0,8(sp)
   16784:	01010113          	addi	sp,sp,16
   16788:	00008067          	ret

0001678c <__fp_unlock>:
   1678c:	00000513          	li	a0,0
   16790:	00008067          	ret

00016794 <global_stdio_init.part.0>:
   16794:	fe010113          	addi	sp,sp,-32
   16798:	000167b7          	lui	a5,0x16
   1679c:	00812c23          	sw	s0,24(sp)
   167a0:	70c78793          	addi	a5,a5,1804 # 1670c <stdio_exit_handler>
   167a4:	fc818413          	addi	s0,gp,-56 # 1cab8 <__sf>
   167a8:	00112e23          	sw	ra,28(sp)
   167ac:	00912a23          	sw	s1,20(sp)
   167b0:	01212823          	sw	s2,16(sp)
   167b4:	01312623          	sw	s3,12(sp)
   167b8:	01412423          	sw	s4,8(sp)
   167bc:	f6f1a423          	sw	a5,-152(gp) # 1ca58 <__stdio_exit_handler>
   167c0:	00800613          	li	a2,8
   167c4:	00400793          	li	a5,4
   167c8:	00000593          	li	a1,0
   167cc:	02418513          	addi	a0,gp,36 # 1cb14 <__global_pointer$+0x24>
   167d0:	00f42623          	sw	a5,12(s0)
   167d4:	00042023          	sw	zero,0(s0)
   167d8:	00042223          	sw	zero,4(s0)
   167dc:	00042423          	sw	zero,8(s0)
   167e0:	06042223          	sw	zero,100(s0)
   167e4:	00042823          	sw	zero,16(s0)
   167e8:	00042a23          	sw	zero,20(s0)
   167ec:	00042c23          	sw	zero,24(s0)
   167f0:	ae1f90ef          	jal	102d0 <memset>
   167f4:	00017a37          	lui	s4,0x17
   167f8:	000179b7          	lui	s3,0x17
   167fc:	00017937          	lui	s2,0x17
   16800:	000174b7          	lui	s1,0x17
   16804:	000107b7          	lui	a5,0x10
   16808:	fe8a0a13          	addi	s4,s4,-24 # 16fe8 <__sread>
   1680c:	04c98993          	addi	s3,s3,76 # 1704c <__swrite>
   16810:	0d490913          	addi	s2,s2,212 # 170d4 <__sseek>
   16814:	13848493          	addi	s1,s1,312 # 17138 <__sclose>
   16818:	00978793          	addi	a5,a5,9 # 10009 <exit-0xab>
   1681c:	00800613          	li	a2,8
   16820:	00000593          	li	a1,0
   16824:	08c18513          	addi	a0,gp,140 # 1cb7c <__global_pointer$+0x8c>
   16828:	06f42a23          	sw	a5,116(s0)
   1682c:	03442023          	sw	s4,32(s0)
   16830:	03342223          	sw	s3,36(s0)
   16834:	03242423          	sw	s2,40(s0)
   16838:	02942623          	sw	s1,44(s0)
   1683c:	00842e23          	sw	s0,28(s0)
   16840:	06042423          	sw	zero,104(s0)
   16844:	06042623          	sw	zero,108(s0)
   16848:	06042823          	sw	zero,112(s0)
   1684c:	0c042623          	sw	zero,204(s0)
   16850:	06042c23          	sw	zero,120(s0)
   16854:	06042e23          	sw	zero,124(s0)
   16858:	08042023          	sw	zero,128(s0)
   1685c:	a75f90ef          	jal	102d0 <memset>
   16860:	000207b7          	lui	a5,0x20
   16864:	01278793          	addi	a5,a5,18 # 20012 <__BSS_END__+0x326a>
   16868:	03018713          	addi	a4,gp,48 # 1cb20 <__global_pointer$+0x30>
   1686c:	0f418513          	addi	a0,gp,244 # 1cbe4 <__global_pointer$+0xf4>
   16870:	00800613          	li	a2,8
   16874:	00000593          	li	a1,0
   16878:	09442423          	sw	s4,136(s0)
   1687c:	09342623          	sw	s3,140(s0)
   16880:	09242823          	sw	s2,144(s0)
   16884:	08942a23          	sw	s1,148(s0)
   16888:	0cf42e23          	sw	a5,220(s0)
   1688c:	0c042823          	sw	zero,208(s0)
   16890:	0c042a23          	sw	zero,212(s0)
   16894:	0c042c23          	sw	zero,216(s0)
   16898:	12042a23          	sw	zero,308(s0)
   1689c:	0e042023          	sw	zero,224(s0)
   168a0:	0e042223          	sw	zero,228(s0)
   168a4:	0e042423          	sw	zero,232(s0)
   168a8:	08e42223          	sw	a4,132(s0)
   168ac:	a25f90ef          	jal	102d0 <memset>
   168b0:	09818793          	addi	a5,gp,152 # 1cb88 <__global_pointer$+0x98>
   168b4:	0f442823          	sw	s4,240(s0)
   168b8:	0f342a23          	sw	s3,244(s0)
   168bc:	0f242c23          	sw	s2,248(s0)
   168c0:	0e942e23          	sw	s1,252(s0)
   168c4:	01c12083          	lw	ra,28(sp)
   168c8:	0ef42623          	sw	a5,236(s0)
   168cc:	01812403          	lw	s0,24(sp)
   168d0:	01412483          	lw	s1,20(sp)
   168d4:	01012903          	lw	s2,16(sp)
   168d8:	00c12983          	lw	s3,12(sp)
   168dc:	00812a03          	lw	s4,8(sp)
   168e0:	02010113          	addi	sp,sp,32
   168e4:	00008067          	ret

000168e8 <__sfp>:
   168e8:	f681a783          	lw	a5,-152(gp) # 1ca58 <__stdio_exit_handler>
   168ec:	fe010113          	addi	sp,sp,-32
   168f0:	00912a23          	sw	s1,20(sp)
   168f4:	00112e23          	sw	ra,28(sp)
   168f8:	00812c23          	sw	s0,24(sp)
   168fc:	00050493          	mv	s1,a0
   16900:	0e078e63          	beqz	a5,169fc <__sfp+0x114>
   16904:	0001c837          	lui	a6,0x1c
   16908:	2f080813          	addi	a6,a6,752 # 1c2f0 <__sglue>
   1690c:	fff00693          	li	a3,-1
   16910:	00482783          	lw	a5,4(a6)
   16914:	fff78793          	addi	a5,a5,-1
   16918:	0807c063          	bltz	a5,16998 <__sfp+0xb0>
   1691c:	00882403          	lw	s0,8(a6)
   16920:	00c0006f          	j	1692c <__sfp+0x44>
   16924:	06840413          	addi	s0,s0,104
   16928:	06d78863          	beq	a5,a3,16998 <__sfp+0xb0>
   1692c:	00c41703          	lh	a4,12(s0)
   16930:	fff78793          	addi	a5,a5,-1
   16934:	fe0718e3          	bnez	a4,16924 <__sfp+0x3c>
   16938:	ffff07b7          	lui	a5,0xffff0
   1693c:	00178793          	addi	a5,a5,1 # ffff0001 <__BSS_END__+0xfffd3259>
   16940:	00f42623          	sw	a5,12(s0)
   16944:	06042223          	sw	zero,100(s0)
   16948:	00042023          	sw	zero,0(s0)
   1694c:	00042423          	sw	zero,8(s0)
   16950:	00042223          	sw	zero,4(s0)
   16954:	00042823          	sw	zero,16(s0)
   16958:	00042a23          	sw	zero,20(s0)
   1695c:	00042c23          	sw	zero,24(s0)
   16960:	00800613          	li	a2,8
   16964:	00000593          	li	a1,0
   16968:	05c40513          	addi	a0,s0,92
   1696c:	965f90ef          	jal	102d0 <memset>
   16970:	02042823          	sw	zero,48(s0)
   16974:	02042a23          	sw	zero,52(s0)
   16978:	04042223          	sw	zero,68(s0)
   1697c:	04042423          	sw	zero,72(s0)
   16980:	01c12083          	lw	ra,28(sp)
   16984:	00040513          	mv	a0,s0
   16988:	01812403          	lw	s0,24(sp)
   1698c:	01412483          	lw	s1,20(sp)
   16990:	02010113          	addi	sp,sp,32
   16994:	00008067          	ret
   16998:	00082403          	lw	s0,0(a6)
   1699c:	00040663          	beqz	s0,169a8 <__sfp+0xc0>
   169a0:	00040813          	mv	a6,s0
   169a4:	f6dff06f          	j	16910 <__sfp+0x28>
   169a8:	1ac00593          	li	a1,428
   169ac:	00048513          	mv	a0,s1
   169b0:	01012623          	sw	a6,12(sp)
   169b4:	305010ef          	jal	184b8 <_malloc_r>
   169b8:	00c12803          	lw	a6,12(sp)
   169bc:	00050413          	mv	s0,a0
   169c0:	04050263          	beqz	a0,16a04 <__sfp+0x11c>
   169c4:	00400793          	li	a5,4
   169c8:	00f52223          	sw	a5,4(a0)
   169cc:	00c50513          	addi	a0,a0,12
   169d0:	00042023          	sw	zero,0(s0)
   169d4:	00a42423          	sw	a0,8(s0)
   169d8:	1a000613          	li	a2,416
   169dc:	00000593          	li	a1,0
   169e0:	01012623          	sw	a6,12(sp)
   169e4:	8edf90ef          	jal	102d0 <memset>
   169e8:	00c12803          	lw	a6,12(sp)
   169ec:	fff00693          	li	a3,-1
   169f0:	00882023          	sw	s0,0(a6)
   169f4:	00040813          	mv	a6,s0
   169f8:	f19ff06f          	j	16910 <__sfp+0x28>
   169fc:	d99ff0ef          	jal	16794 <global_stdio_init.part.0>
   16a00:	f05ff06f          	j	16904 <__sfp+0x1c>
   16a04:	00082023          	sw	zero,0(a6)
   16a08:	00c00793          	li	a5,12
   16a0c:	00f4a023          	sw	a5,0(s1)
   16a10:	f71ff06f          	j	16980 <__sfp+0x98>

00016a14 <__sinit>:
   16a14:	03452783          	lw	a5,52(a0)
   16a18:	00078463          	beqz	a5,16a20 <__sinit+0xc>
   16a1c:	00008067          	ret
   16a20:	000167b7          	lui	a5,0x16
   16a24:	f681a703          	lw	a4,-152(gp) # 1ca58 <__stdio_exit_handler>
   16a28:	72878793          	addi	a5,a5,1832 # 16728 <cleanup_stdio>
   16a2c:	02f52a23          	sw	a5,52(a0)
   16a30:	fe0716e3          	bnez	a4,16a1c <__sinit+0x8>
   16a34:	d61ff06f          	j	16794 <global_stdio_init.part.0>

00016a38 <__sfp_lock_acquire>:
   16a38:	00008067          	ret

00016a3c <__sfp_lock_release>:
   16a3c:	00008067          	ret

00016a40 <__fp_lock_all>:
   16a40:	0001c637          	lui	a2,0x1c
   16a44:	000165b7          	lui	a1,0x16
   16a48:	2f060613          	addi	a2,a2,752 # 1c2f0 <__sglue>
   16a4c:	70458593          	addi	a1,a1,1796 # 16704 <__fp_lock>
   16a50:	00000513          	li	a0,0
   16a54:	4e00006f          	j	16f34 <_fwalk_sglue>

00016a58 <__fp_unlock_all>:
   16a58:	0001c637          	lui	a2,0x1c
   16a5c:	000165b7          	lui	a1,0x16
   16a60:	2f060613          	addi	a2,a2,752 # 1c2f0 <__sglue>
   16a64:	78c58593          	addi	a1,a1,1932 # 1678c <__fp_unlock>
   16a68:	00000513          	li	a0,0
   16a6c:	4c80006f          	j	16f34 <_fwalk_sglue>

00016a70 <__sfvwrite_r>:
   16a70:	00862783          	lw	a5,8(a2)
   16a74:	22078c63          	beqz	a5,16cac <__sfvwrite_r+0x23c>
   16a78:	00c59683          	lh	a3,12(a1)
   16a7c:	fc010113          	addi	sp,sp,-64
   16a80:	02812c23          	sw	s0,56(sp)
   16a84:	03412423          	sw	s4,40(sp)
   16a88:	03512223          	sw	s5,36(sp)
   16a8c:	02112e23          	sw	ra,60(sp)
   16a90:	0086f793          	andi	a5,a3,8
   16a94:	00058413          	mv	s0,a1
   16a98:	00050a93          	mv	s5,a0
   16a9c:	00060a13          	mv	s4,a2
   16aa0:	0a078463          	beqz	a5,16b48 <__sfvwrite_r+0xd8>
   16aa4:	0105a783          	lw	a5,16(a1)
   16aa8:	0a078063          	beqz	a5,16b48 <__sfvwrite_r+0xd8>
   16aac:	02912a23          	sw	s1,52(sp)
   16ab0:	03212823          	sw	s2,48(sp)
   16ab4:	03312623          	sw	s3,44(sp)
   16ab8:	03612023          	sw	s6,32(sp)
   16abc:	0026f793          	andi	a5,a3,2
   16ac0:	000a2483          	lw	s1,0(s4)
   16ac4:	0a078a63          	beqz	a5,16b78 <__sfvwrite_r+0x108>
   16ac8:	80000b37          	lui	s6,0x80000
   16acc:	c00b0b13          	addi	s6,s6,-1024 # 7ffffc00 <__BSS_END__+0x7ffe2e58>
   16ad0:	00000993          	li	s3,0
   16ad4:	00000913          	li	s2,0
   16ad8:	00098613          	mv	a2,s3
   16adc:	000a8513          	mv	a0,s5
   16ae0:	1a090e63          	beqz	s2,16c9c <__sfvwrite_r+0x22c>
   16ae4:	00090693          	mv	a3,s2
   16ae8:	012b7663          	bgeu	s6,s2,16af4 <__sfvwrite_r+0x84>
   16aec:	800006b7          	lui	a3,0x80000
   16af0:	c0068693          	addi	a3,a3,-1024 # 7ffffc00 <__BSS_END__+0x7ffe2e58>
   16af4:	02442783          	lw	a5,36(s0)
   16af8:	01c42583          	lw	a1,28(s0)
   16afc:	000780e7          	jalr	a5
   16b00:	40a05a63          	blez	a0,16f14 <__sfvwrite_r+0x4a4>
   16b04:	008a2783          	lw	a5,8(s4)
   16b08:	00a989b3          	add	s3,s3,a0
   16b0c:	40a90933          	sub	s2,s2,a0
   16b10:	40a787b3          	sub	a5,a5,a0
   16b14:	00fa2423          	sw	a5,8(s4)
   16b18:	fc0790e3          	bnez	a5,16ad8 <__sfvwrite_r+0x68>
   16b1c:	03412483          	lw	s1,52(sp)
   16b20:	03012903          	lw	s2,48(sp)
   16b24:	02c12983          	lw	s3,44(sp)
   16b28:	02012b03          	lw	s6,32(sp)
   16b2c:	00000513          	li	a0,0
   16b30:	03c12083          	lw	ra,60(sp)
   16b34:	03812403          	lw	s0,56(sp)
   16b38:	02812a03          	lw	s4,40(sp)
   16b3c:	02412a83          	lw	s5,36(sp)
   16b40:	04010113          	addi	sp,sp,64
   16b44:	00008067          	ret
   16b48:	00040593          	mv	a1,s0
   16b4c:	000a8513          	mv	a0,s5
   16b50:	5f0000ef          	jal	17140 <__swsetup_r>
   16b54:	26051663          	bnez	a0,16dc0 <__sfvwrite_r+0x350>
   16b58:	00c41683          	lh	a3,12(s0)
   16b5c:	02912a23          	sw	s1,52(sp)
   16b60:	03212823          	sw	s2,48(sp)
   16b64:	03312623          	sw	s3,44(sp)
   16b68:	03612023          	sw	s6,32(sp)
   16b6c:	0026f793          	andi	a5,a3,2
   16b70:	000a2483          	lw	s1,0(s4)
   16b74:	f4079ae3          	bnez	a5,16ac8 <__sfvwrite_r+0x58>
   16b78:	01712e23          	sw	s7,28(sp)
   16b7c:	01812c23          	sw	s8,24(sp)
   16b80:	0016f793          	andi	a5,a3,1
   16b84:	12079863          	bnez	a5,16cb4 <__sfvwrite_r+0x244>
   16b88:	00042783          	lw	a5,0(s0)
   16b8c:	80000737          	lui	a4,0x80000
   16b90:	fff70c13          	addi	s8,a4,-1 # 7fffffff <__BSS_END__+0x7ffe3257>
   16b94:	00000b13          	li	s6,0
   16b98:	00000993          	li	s3,0
   16b9c:	0e098863          	beqz	s3,16c8c <__sfvwrite_r+0x21c>
   16ba0:	2006f713          	andi	a4,a3,512
   16ba4:	00842903          	lw	s2,8(s0)
   16ba8:	00078513          	mv	a0,a5
   16bac:	20070e63          	beqz	a4,16dc8 <__sfvwrite_r+0x358>
   16bb0:	00090b93          	mv	s7,s2
   16bb4:	2d29e263          	bltu	s3,s2,16e78 <__sfvwrite_r+0x408>
   16bb8:	4806f713          	andi	a4,a3,1152
   16bbc:	08070c63          	beqz	a4,16c54 <__sfvwrite_r+0x1e4>
   16bc0:	01442603          	lw	a2,20(s0)
   16bc4:	01042583          	lw	a1,16(s0)
   16bc8:	00161713          	slli	a4,a2,0x1
   16bcc:	00c70733          	add	a4,a4,a2
   16bd0:	01f75913          	srli	s2,a4,0x1f
   16bd4:	40b78bb3          	sub	s7,a5,a1
   16bd8:	00e90933          	add	s2,s2,a4
   16bdc:	001b8793          	addi	a5,s7,1
   16be0:	40195913          	srai	s2,s2,0x1
   16be4:	013787b3          	add	a5,a5,s3
   16be8:	00090613          	mv	a2,s2
   16bec:	00f97663          	bgeu	s2,a5,16bf8 <__sfvwrite_r+0x188>
   16bf0:	00078913          	mv	s2,a5
   16bf4:	00078613          	mv	a2,a5
   16bf8:	4006f693          	andi	a3,a3,1024
   16bfc:	2c068463          	beqz	a3,16ec4 <__sfvwrite_r+0x454>
   16c00:	00060593          	mv	a1,a2
   16c04:	000a8513          	mv	a0,s5
   16c08:	0b1010ef          	jal	184b8 <_malloc_r>
   16c0c:	30050863          	beqz	a0,16f1c <__sfvwrite_r+0x4ac>
   16c10:	01042583          	lw	a1,16(s0)
   16c14:	000b8613          	mv	a2,s7
   16c18:	00a12623          	sw	a0,12(sp)
   16c1c:	178010ef          	jal	17d94 <memcpy>
   16c20:	00c45783          	lhu	a5,12(s0)
   16c24:	00c12703          	lw	a4,12(sp)
   16c28:	b7f7f793          	andi	a5,a5,-1153
   16c2c:	0807e793          	ori	a5,a5,128
   16c30:	00f41623          	sh	a5,12(s0)
   16c34:	417907b3          	sub	a5,s2,s7
   16c38:	01770533          	add	a0,a4,s7
   16c3c:	01242a23          	sw	s2,20(s0)
   16c40:	00e42823          	sw	a4,16(s0)
   16c44:	00a42023          	sw	a0,0(s0)
   16c48:	00f42423          	sw	a5,8(s0)
   16c4c:	00098913          	mv	s2,s3
   16c50:	00098b93          	mv	s7,s3
   16c54:	000b0593          	mv	a1,s6
   16c58:	000b8613          	mv	a2,s7
   16c5c:	010010ef          	jal	17c6c <memmove>
   16c60:	00842703          	lw	a4,8(s0)
   16c64:	00042783          	lw	a5,0(s0)
   16c68:	41270733          	sub	a4,a4,s2
   16c6c:	00e42423          	sw	a4,8(s0)
   16c70:	008a2703          	lw	a4,8(s4)
   16c74:	017787b3          	add	a5,a5,s7
   16c78:	00f42023          	sw	a5,0(s0)
   16c7c:	41370733          	sub	a4,a4,s3
   16c80:	00ea2423          	sw	a4,8(s4)
   16c84:	28070263          	beqz	a4,16f08 <__sfvwrite_r+0x498>
   16c88:	00c41683          	lh	a3,12(s0)
   16c8c:	0004ab03          	lw	s6,0(s1)
   16c90:	0044a983          	lw	s3,4(s1)
   16c94:	00848493          	addi	s1,s1,8
   16c98:	f05ff06f          	j	16b9c <__sfvwrite_r+0x12c>
   16c9c:	0004a983          	lw	s3,0(s1)
   16ca0:	0044a903          	lw	s2,4(s1)
   16ca4:	00848493          	addi	s1,s1,8
   16ca8:	e31ff06f          	j	16ad8 <__sfvwrite_r+0x68>
   16cac:	00000513          	li	a0,0
   16cb0:	00008067          	ret
   16cb4:	00000b13          	li	s6,0
   16cb8:	00000b93          	li	s7,0
   16cbc:	00000513          	li	a0,0
   16cc0:	00000c13          	li	s8,0
   16cc4:	060b0e63          	beqz	s6,16d40 <__sfvwrite_r+0x2d0>
   16cc8:	08050663          	beqz	a0,16d54 <__sfvwrite_r+0x2e4>
   16ccc:	000b8793          	mv	a5,s7
   16cd0:	000b0993          	mv	s3,s6
   16cd4:	0167f463          	bgeu	a5,s6,16cdc <__sfvwrite_r+0x26c>
   16cd8:	00078993          	mv	s3,a5
   16cdc:	01442683          	lw	a3,20(s0)
   16ce0:	00842903          	lw	s2,8(s0)
   16ce4:	00042503          	lw	a0,0(s0)
   16ce8:	01042783          	lw	a5,16(s0)
   16cec:	01268933          	add	s2,a3,s2
   16cf0:	00a7f463          	bgeu	a5,a0,16cf8 <__sfvwrite_r+0x288>
   16cf4:	09394063          	blt	s2,s3,16d74 <__sfvwrite_r+0x304>
   16cf8:	1ad9c063          	blt	s3,a3,16e98 <__sfvwrite_r+0x428>
   16cfc:	02442783          	lw	a5,36(s0)
   16d00:	01c42583          	lw	a1,28(s0)
   16d04:	000c0613          	mv	a2,s8
   16d08:	000a8513          	mv	a0,s5
   16d0c:	000780e7          	jalr	a5
   16d10:	00050913          	mv	s2,a0
   16d14:	08a05463          	blez	a0,16d9c <__sfvwrite_r+0x32c>
   16d18:	412b8bb3          	sub	s7,s7,s2
   16d1c:	00100513          	li	a0,1
   16d20:	160b8263          	beqz	s7,16e84 <__sfvwrite_r+0x414>
   16d24:	008a2783          	lw	a5,8(s4)
   16d28:	412787b3          	sub	a5,a5,s2
   16d2c:	00fa2423          	sw	a5,8(s4)
   16d30:	1c078c63          	beqz	a5,16f08 <__sfvwrite_r+0x498>
   16d34:	412b0b33          	sub	s6,s6,s2
   16d38:	012c0c33          	add	s8,s8,s2
   16d3c:	f80b16e3          	bnez	s6,16cc8 <__sfvwrite_r+0x258>
   16d40:	0044ab03          	lw	s6,4(s1)
   16d44:	00048793          	mv	a5,s1
   16d48:	00848493          	addi	s1,s1,8
   16d4c:	fe0b0ae3          	beqz	s6,16d40 <__sfvwrite_r+0x2d0>
   16d50:	0007ac03          	lw	s8,0(a5)
   16d54:	000b0613          	mv	a2,s6
   16d58:	00a00593          	li	a1,10
   16d5c:	000c0513          	mv	a0,s8
   16d60:	544000ef          	jal	172a4 <memchr>
   16d64:	18050c63          	beqz	a0,16efc <__sfvwrite_r+0x48c>
   16d68:	00150513          	addi	a0,a0,1
   16d6c:	41850bb3          	sub	s7,a0,s8
   16d70:	f5dff06f          	j	16ccc <__sfvwrite_r+0x25c>
   16d74:	000c0593          	mv	a1,s8
   16d78:	00090613          	mv	a2,s2
   16d7c:	6f1000ef          	jal	17c6c <memmove>
   16d80:	00042783          	lw	a5,0(s0)
   16d84:	00040593          	mv	a1,s0
   16d88:	000a8513          	mv	a0,s5
   16d8c:	012787b3          	add	a5,a5,s2
   16d90:	00f42023          	sw	a5,0(s0)
   16d94:	87dff0ef          	jal	16610 <_fflush_r>
   16d98:	f80500e3          	beqz	a0,16d18 <__sfvwrite_r+0x2a8>
   16d9c:	00c41783          	lh	a5,12(s0)
   16da0:	01c12b83          	lw	s7,28(sp)
   16da4:	01812c03          	lw	s8,24(sp)
   16da8:	03412483          	lw	s1,52(sp)
   16dac:	03012903          	lw	s2,48(sp)
   16db0:	02c12983          	lw	s3,44(sp)
   16db4:	02012b03          	lw	s6,32(sp)
   16db8:	0407e793          	ori	a5,a5,64
   16dbc:	00f41623          	sh	a5,12(s0)
   16dc0:	fff00513          	li	a0,-1
   16dc4:	d6dff06f          	j	16b30 <__sfvwrite_r+0xc0>
   16dc8:	01042703          	lw	a4,16(s0)
   16dcc:	06f76263          	bltu	a4,a5,16e30 <__sfvwrite_r+0x3c0>
   16dd0:	01442583          	lw	a1,20(s0)
   16dd4:	04b9ee63          	bltu	s3,a1,16e30 <__sfvwrite_r+0x3c0>
   16dd8:	00098913          	mv	s2,s3
   16ddc:	013c7463          	bgeu	s8,s3,16de4 <__sfvwrite_r+0x374>
   16de0:	000c0913          	mv	s2,s8
   16de4:	00090513          	mv	a0,s2
   16de8:	870fe0ef          	jal	14e58 <__modsi3>
   16dec:	02442783          	lw	a5,36(s0)
   16df0:	01c42583          	lw	a1,28(s0)
   16df4:	40a906b3          	sub	a3,s2,a0
   16df8:	000b0613          	mv	a2,s6
   16dfc:	000a8513          	mv	a0,s5
   16e00:	000780e7          	jalr	a5
   16e04:	f8a05ce3          	blez	a0,16d9c <__sfvwrite_r+0x32c>
   16e08:	00050913          	mv	s2,a0
   16e0c:	008a2783          	lw	a5,8(s4)
   16e10:	412989b3          	sub	s3,s3,s2
   16e14:	412787b3          	sub	a5,a5,s2
   16e18:	00fa2423          	sw	a5,8(s4)
   16e1c:	0e078663          	beqz	a5,16f08 <__sfvwrite_r+0x498>
   16e20:	00c41683          	lh	a3,12(s0)
   16e24:	00042783          	lw	a5,0(s0)
   16e28:	012b0b33          	add	s6,s6,s2
   16e2c:	d71ff06f          	j	16b9c <__sfvwrite_r+0x12c>
   16e30:	0129f463          	bgeu	s3,s2,16e38 <__sfvwrite_r+0x3c8>
   16e34:	00098913          	mv	s2,s3
   16e38:	00078513          	mv	a0,a5
   16e3c:	00090613          	mv	a2,s2
   16e40:	000b0593          	mv	a1,s6
   16e44:	629000ef          	jal	17c6c <memmove>
   16e48:	00042783          	lw	a5,0(s0)
   16e4c:	00842703          	lw	a4,8(s0)
   16e50:	012787b3          	add	a5,a5,s2
   16e54:	41270733          	sub	a4,a4,s2
   16e58:	00f42023          	sw	a5,0(s0)
   16e5c:	00e42423          	sw	a4,8(s0)
   16e60:	fa0716e3          	bnez	a4,16e0c <__sfvwrite_r+0x39c>
   16e64:	00040593          	mv	a1,s0
   16e68:	000a8513          	mv	a0,s5
   16e6c:	fa4ff0ef          	jal	16610 <_fflush_r>
   16e70:	f8050ee3          	beqz	a0,16e0c <__sfvwrite_r+0x39c>
   16e74:	f29ff06f          	j	16d9c <__sfvwrite_r+0x32c>
   16e78:	00098913          	mv	s2,s3
   16e7c:	00098b93          	mv	s7,s3
   16e80:	dd5ff06f          	j	16c54 <__sfvwrite_r+0x1e4>
   16e84:	00040593          	mv	a1,s0
   16e88:	000a8513          	mv	a0,s5
   16e8c:	f84ff0ef          	jal	16610 <_fflush_r>
   16e90:	e8050ae3          	beqz	a0,16d24 <__sfvwrite_r+0x2b4>
   16e94:	f09ff06f          	j	16d9c <__sfvwrite_r+0x32c>
   16e98:	00098613          	mv	a2,s3
   16e9c:	000c0593          	mv	a1,s8
   16ea0:	5cd000ef          	jal	17c6c <memmove>
   16ea4:	00842703          	lw	a4,8(s0)
   16ea8:	00042783          	lw	a5,0(s0)
   16eac:	00098913          	mv	s2,s3
   16eb0:	41370733          	sub	a4,a4,s3
   16eb4:	013787b3          	add	a5,a5,s3
   16eb8:	00e42423          	sw	a4,8(s0)
   16ebc:	00f42023          	sw	a5,0(s0)
   16ec0:	e59ff06f          	j	16d18 <__sfvwrite_r+0x2a8>
   16ec4:	000a8513          	mv	a0,s5
   16ec8:	675010ef          	jal	18d3c <_realloc_r>
   16ecc:	00050713          	mv	a4,a0
   16ed0:	d60512e3          	bnez	a0,16c34 <__sfvwrite_r+0x1c4>
   16ed4:	01042583          	lw	a1,16(s0)
   16ed8:	000a8513          	mv	a0,s5
   16edc:	2f4010ef          	jal	181d0 <_free_r>
   16ee0:	00c45783          	lhu	a5,12(s0)
   16ee4:	00c00713          	li	a4,12
   16ee8:	01c12b83          	lw	s7,28(sp)
   16eec:	01812c03          	lw	s8,24(sp)
   16ef0:	00eaa023          	sw	a4,0(s5)
   16ef4:	f7f7f793          	andi	a5,a5,-129
   16ef8:	eb1ff06f          	j	16da8 <__sfvwrite_r+0x338>
   16efc:	001b0793          	addi	a5,s6,1
   16f00:	00078b93          	mv	s7,a5
   16f04:	dcdff06f          	j	16cd0 <__sfvwrite_r+0x260>
   16f08:	01c12b83          	lw	s7,28(sp)
   16f0c:	01812c03          	lw	s8,24(sp)
   16f10:	c0dff06f          	j	16b1c <__sfvwrite_r+0xac>
   16f14:	00c41783          	lh	a5,12(s0)
   16f18:	e91ff06f          	j	16da8 <__sfvwrite_r+0x338>
   16f1c:	00c00793          	li	a5,12
   16f20:	00faa023          	sw	a5,0(s5)
   16f24:	01c12b83          	lw	s7,28(sp)
   16f28:	00c41783          	lh	a5,12(s0)
   16f2c:	01812c03          	lw	s8,24(sp)
   16f30:	e79ff06f          	j	16da8 <__sfvwrite_r+0x338>

00016f34 <_fwalk_sglue>:
   16f34:	fd010113          	addi	sp,sp,-48
   16f38:	03212023          	sw	s2,32(sp)
   16f3c:	01312e23          	sw	s3,28(sp)
   16f40:	01412c23          	sw	s4,24(sp)
   16f44:	01512a23          	sw	s5,20(sp)
   16f48:	01612823          	sw	s6,16(sp)
   16f4c:	01712623          	sw	s7,12(sp)
   16f50:	02112623          	sw	ra,44(sp)
   16f54:	02812423          	sw	s0,40(sp)
   16f58:	02912223          	sw	s1,36(sp)
   16f5c:	00060a93          	mv	s5,a2
   16f60:	00050b13          	mv	s6,a0
   16f64:	00058b93          	mv	s7,a1
   16f68:	00000a13          	li	s4,0
   16f6c:	00100993          	li	s3,1
   16f70:	fff00913          	li	s2,-1
   16f74:	004aa483          	lw	s1,4(s5)
   16f78:	fff48493          	addi	s1,s1,-1
   16f7c:	0204ca63          	bltz	s1,16fb0 <_fwalk_sglue+0x7c>
   16f80:	008aa403          	lw	s0,8(s5)
   16f84:	00c45783          	lhu	a5,12(s0)
   16f88:	00f9fe63          	bgeu	s3,a5,16fa4 <_fwalk_sglue+0x70>
   16f8c:	00e41783          	lh	a5,14(s0)
   16f90:	00040593          	mv	a1,s0
   16f94:	000b0513          	mv	a0,s6
   16f98:	01278663          	beq	a5,s2,16fa4 <_fwalk_sglue+0x70>
   16f9c:	000b80e7          	jalr	s7
   16fa0:	00aa6a33          	or	s4,s4,a0
   16fa4:	fff48493          	addi	s1,s1,-1
   16fa8:	06840413          	addi	s0,s0,104
   16fac:	fd249ce3          	bne	s1,s2,16f84 <_fwalk_sglue+0x50>
   16fb0:	000aaa83          	lw	s5,0(s5)
   16fb4:	fc0a90e3          	bnez	s5,16f74 <_fwalk_sglue+0x40>
   16fb8:	02c12083          	lw	ra,44(sp)
   16fbc:	02812403          	lw	s0,40(sp)
   16fc0:	02412483          	lw	s1,36(sp)
   16fc4:	02012903          	lw	s2,32(sp)
   16fc8:	01c12983          	lw	s3,28(sp)
   16fcc:	01412a83          	lw	s5,20(sp)
   16fd0:	01012b03          	lw	s6,16(sp)
   16fd4:	00c12b83          	lw	s7,12(sp)
   16fd8:	000a0513          	mv	a0,s4
   16fdc:	01812a03          	lw	s4,24(sp)
   16fe0:	03010113          	addi	sp,sp,48
   16fe4:	00008067          	ret

00016fe8 <__sread>:
   16fe8:	ff010113          	addi	sp,sp,-16
   16fec:	00812423          	sw	s0,8(sp)
   16ff0:	00058413          	mv	s0,a1
   16ff4:	00e59583          	lh	a1,14(a1)
   16ff8:	00112623          	sw	ra,12(sp)
   16ffc:	29d000ef          	jal	17a98 <_read_r>
   17000:	02054063          	bltz	a0,17020 <__sread+0x38>
   17004:	05042783          	lw	a5,80(s0)
   17008:	00c12083          	lw	ra,12(sp)
   1700c:	00a787b3          	add	a5,a5,a0
   17010:	04f42823          	sw	a5,80(s0)
   17014:	00812403          	lw	s0,8(sp)
   17018:	01010113          	addi	sp,sp,16
   1701c:	00008067          	ret
   17020:	00c45783          	lhu	a5,12(s0)
   17024:	fffff737          	lui	a4,0xfffff
   17028:	fff70713          	addi	a4,a4,-1 # ffffefff <__BSS_END__+0xfffe2257>
   1702c:	00e7f7b3          	and	a5,a5,a4
   17030:	00c12083          	lw	ra,12(sp)
   17034:	00f41623          	sh	a5,12(s0)
   17038:	00812403          	lw	s0,8(sp)
   1703c:	01010113          	addi	sp,sp,16
   17040:	00008067          	ret

00017044 <__seofread>:
   17044:	00000513          	li	a0,0
   17048:	00008067          	ret

0001704c <__swrite>:
   1704c:	00c59783          	lh	a5,12(a1)
   17050:	fe010113          	addi	sp,sp,-32
   17054:	00068313          	mv	t1,a3
   17058:	00112e23          	sw	ra,28(sp)
   1705c:	1007f693          	andi	a3,a5,256
   17060:	00058713          	mv	a4,a1
   17064:	00060893          	mv	a7,a2
   17068:	00050813          	mv	a6,a0
   1706c:	02069863          	bnez	a3,1709c <__swrite+0x50>
   17070:	fffff6b7          	lui	a3,0xfffff
   17074:	fff68693          	addi	a3,a3,-1 # ffffefff <__BSS_END__+0xfffe2257>
   17078:	01c12083          	lw	ra,28(sp)
   1707c:	00d7f7b3          	and	a5,a5,a3
   17080:	00e71583          	lh	a1,14(a4)
   17084:	00f71623          	sh	a5,12(a4)
   17088:	00030693          	mv	a3,t1
   1708c:	00088613          	mv	a2,a7
   17090:	00080513          	mv	a0,a6
   17094:	02010113          	addi	sp,sp,32
   17098:	2d10006f          	j	17b68 <_write_r>
   1709c:	00e59583          	lh	a1,14(a1)
   170a0:	00c12423          	sw	a2,8(sp)
   170a4:	00200693          	li	a3,2
   170a8:	00000613          	li	a2,0
   170ac:	00612623          	sw	t1,12(sp)
   170b0:	00e12023          	sw	a4,0(sp)
   170b4:	00a12223          	sw	a0,4(sp)
   170b8:	179000ef          	jal	17a30 <_lseek_r>
   170bc:	00012703          	lw	a4,0(sp)
   170c0:	00c12303          	lw	t1,12(sp)
   170c4:	00812883          	lw	a7,8(sp)
   170c8:	00c71783          	lh	a5,12(a4)
   170cc:	00412803          	lw	a6,4(sp)
   170d0:	fa1ff06f          	j	17070 <__swrite+0x24>

000170d4 <__sseek>:
   170d4:	ff010113          	addi	sp,sp,-16
   170d8:	00812423          	sw	s0,8(sp)
   170dc:	00058413          	mv	s0,a1
   170e0:	00e59583          	lh	a1,14(a1)
   170e4:	00112623          	sw	ra,12(sp)
   170e8:	149000ef          	jal	17a30 <_lseek_r>
   170ec:	fff00713          	li	a4,-1
   170f0:	00c41783          	lh	a5,12(s0)
   170f4:	02e50263          	beq	a0,a4,17118 <__sseek+0x44>
   170f8:	00001737          	lui	a4,0x1
   170fc:	00e7e7b3          	or	a5,a5,a4
   17100:	00c12083          	lw	ra,12(sp)
   17104:	04a42823          	sw	a0,80(s0)
   17108:	00f41623          	sh	a5,12(s0)
   1710c:	00812403          	lw	s0,8(sp)
   17110:	01010113          	addi	sp,sp,16
   17114:	00008067          	ret
   17118:	80050713          	addi	a4,a0,-2048
   1711c:	80070713          	addi	a4,a4,-2048 # 800 <exit-0xf8b4>
   17120:	00e7f7b3          	and	a5,a5,a4
   17124:	00c12083          	lw	ra,12(sp)
   17128:	00f41623          	sh	a5,12(s0)
   1712c:	00812403          	lw	s0,8(sp)
   17130:	01010113          	addi	sp,sp,16
   17134:	00008067          	ret

00017138 <__sclose>:
   17138:	00e59583          	lh	a1,14(a1)
   1713c:	7b40006f          	j	178f0 <_close_r>

00017140 <__swsetup_r>:
   17140:	f5c1a703          	lw	a4,-164(gp) # 1ca4c <_impure_ptr>
   17144:	fe010113          	addi	sp,sp,-32
   17148:	00112e23          	sw	ra,28(sp)
   1714c:	00050613          	mv	a2,a0
   17150:	00058793          	mv	a5,a1
   17154:	00070663          	beqz	a4,17160 <__swsetup_r+0x20>
   17158:	03472683          	lw	a3,52(a4)
   1715c:	10068a63          	beqz	a3,17270 <__swsetup_r+0x130>
   17160:	00c79703          	lh	a4,12(a5)
   17164:	00877693          	andi	a3,a4,8
   17168:	02068e63          	beqz	a3,171a4 <__swsetup_r+0x64>
   1716c:	0107a683          	lw	a3,16(a5)
   17170:	04068a63          	beqz	a3,171c4 <__swsetup_r+0x84>
   17174:	00c79703          	lh	a4,12(a5)
   17178:	00177613          	andi	a2,a4,1
   1717c:	06060e63          	beqz	a2,171f8 <__swsetup_r+0xb8>
   17180:	0147a603          	lw	a2,20(a5)
   17184:	0007a423          	sw	zero,8(a5)
   17188:	00000513          	li	a0,0
   1718c:	40c00633          	neg	a2,a2
   17190:	00c7ac23          	sw	a2,24(a5)
   17194:	08068063          	beqz	a3,17214 <__swsetup_r+0xd4>
   17198:	01c12083          	lw	ra,28(sp)
   1719c:	02010113          	addi	sp,sp,32
   171a0:	00008067          	ret
   171a4:	01077693          	andi	a3,a4,16
   171a8:	0e068263          	beqz	a3,1728c <__swsetup_r+0x14c>
   171ac:	00477693          	andi	a3,a4,4
   171b0:	06069e63          	bnez	a3,1722c <__swsetup_r+0xec>
   171b4:	0107a683          	lw	a3,16(a5)
   171b8:	00876713          	ori	a4,a4,8
   171bc:	00e79623          	sh	a4,12(a5)
   171c0:	fa069ae3          	bnez	a3,17174 <__swsetup_r+0x34>
   171c4:	00c7a703          	lw	a4,12(a5)
   171c8:	20000593          	li	a1,512
   171cc:	28077713          	andi	a4,a4,640
   171d0:	fab702e3          	beq	a4,a1,17174 <__swsetup_r+0x34>
   171d4:	00060513          	mv	a0,a2
   171d8:	00078593          	mv	a1,a5
   171dc:	00f12423          	sw	a5,8(sp)
   171e0:	2a0020ef          	jal	19480 <__smakebuf_r>
   171e4:	00812783          	lw	a5,8(sp)
   171e8:	00c79703          	lh	a4,12(a5)
   171ec:	0107a683          	lw	a3,16(a5)
   171f0:	00177613          	andi	a2,a4,1
   171f4:	f80616e3          	bnez	a2,17180 <__swsetup_r+0x40>
   171f8:	00277613          	andi	a2,a4,2
   171fc:	00000593          	li	a1,0
   17200:	00061463          	bnez	a2,17208 <__swsetup_r+0xc8>
   17204:	0147a583          	lw	a1,20(a5)
   17208:	00b7a423          	sw	a1,8(a5)
   1720c:	00000513          	li	a0,0
   17210:	f80694e3          	bnez	a3,17198 <__swsetup_r+0x58>
   17214:	08077693          	andi	a3,a4,128
   17218:	f80680e3          	beqz	a3,17198 <__swsetup_r+0x58>
   1721c:	04076713          	ori	a4,a4,64
   17220:	00e79623          	sh	a4,12(a5)
   17224:	fff00513          	li	a0,-1
   17228:	f71ff06f          	j	17198 <__swsetup_r+0x58>
   1722c:	0307a583          	lw	a1,48(a5)
   17230:	02058663          	beqz	a1,1725c <__swsetup_r+0x11c>
   17234:	04078693          	addi	a3,a5,64
   17238:	02d58063          	beq	a1,a3,17258 <__swsetup_r+0x118>
   1723c:	00060513          	mv	a0,a2
   17240:	00f12623          	sw	a5,12(sp)
   17244:	00c12423          	sw	a2,8(sp)
   17248:	789000ef          	jal	181d0 <_free_r>
   1724c:	00c12783          	lw	a5,12(sp)
   17250:	00812603          	lw	a2,8(sp)
   17254:	00c79703          	lh	a4,12(a5)
   17258:	0207a823          	sw	zero,48(a5)
   1725c:	0107a683          	lw	a3,16(a5)
   17260:	fdb77713          	andi	a4,a4,-37
   17264:	0007a223          	sw	zero,4(a5)
   17268:	00d7a023          	sw	a3,0(a5)
   1726c:	f4dff06f          	j	171b8 <__swsetup_r+0x78>
   17270:	00a12423          	sw	a0,8(sp)
   17274:	00070513          	mv	a0,a4
   17278:	00b12623          	sw	a1,12(sp)
   1727c:	f98ff0ef          	jal	16a14 <__sinit>
   17280:	00c12783          	lw	a5,12(sp)
   17284:	00812603          	lw	a2,8(sp)
   17288:	ed9ff06f          	j	17160 <__swsetup_r+0x20>
   1728c:	00900693          	li	a3,9
   17290:	04076713          	ori	a4,a4,64
   17294:	00d62023          	sw	a3,0(a2)
   17298:	00e79623          	sh	a4,12(a5)
   1729c:	fff00513          	li	a0,-1
   172a0:	ef9ff06f          	j	17198 <__swsetup_r+0x58>

000172a4 <memchr>:
   172a4:	00357793          	andi	a5,a0,3
   172a8:	0ff5f713          	zext.b	a4,a1
   172ac:	02078063          	beqz	a5,172cc <memchr+0x28>
   172b0:	08060863          	beqz	a2,17340 <memchr+0x9c>
   172b4:	00054783          	lbu	a5,0(a0)
   172b8:	fff60613          	addi	a2,a2,-1
   172bc:	08e78063          	beq	a5,a4,1733c <memchr+0x98>
   172c0:	00150513          	addi	a0,a0,1
   172c4:	00357793          	andi	a5,a0,3
   172c8:	fe0794e3          	bnez	a5,172b0 <memchr+0xc>
   172cc:	00300813          	li	a6,3
   172d0:	04c87863          	bgeu	a6,a2,17320 <memchr+0x7c>
   172d4:	0ff5f593          	zext.b	a1,a1
   172d8:	00859793          	slli	a5,a1,0x8
   172dc:	00b785b3          	add	a1,a5,a1
   172e0:	01059793          	slli	a5,a1,0x10
   172e4:	feff0337          	lui	t1,0xfeff0
   172e8:	808088b7          	lui	a7,0x80808
   172ec:	00f585b3          	add	a1,a1,a5
   172f0:	eff30313          	addi	t1,t1,-257 # fefefeff <__BSS_END__+0xfefd3157>
   172f4:	08088893          	addi	a7,a7,128 # 80808080 <__BSS_END__+0x807eb2d8>
   172f8:	00052783          	lw	a5,0(a0)
   172fc:	00f5c7b3          	xor	a5,a1,a5
   17300:	006786b3          	add	a3,a5,t1
   17304:	fff7c793          	not	a5,a5
   17308:	00f6f7b3          	and	a5,a3,a5
   1730c:	0117f7b3          	and	a5,a5,a7
   17310:	00079a63          	bnez	a5,17324 <memchr+0x80>
   17314:	ffc60613          	addi	a2,a2,-4
   17318:	00450513          	addi	a0,a0,4
   1731c:	fcc86ee3          	bltu	a6,a2,172f8 <memchr+0x54>
   17320:	02060063          	beqz	a2,17340 <memchr+0x9c>
   17324:	00c50633          	add	a2,a0,a2
   17328:	00c0006f          	j	17334 <memchr+0x90>
   1732c:	00150513          	addi	a0,a0,1
   17330:	00c50863          	beq	a0,a2,17340 <memchr+0x9c>
   17334:	00054783          	lbu	a5,0(a0)
   17338:	fee79ae3          	bne	a5,a4,1732c <memchr+0x88>
   1733c:	00008067          	ret
   17340:	00000513          	li	a0,0
   17344:	00008067          	ret

00017348 <strncpy>:
   17348:	00a5e7b3          	or	a5,a1,a0
   1734c:	0037f793          	andi	a5,a5,3
   17350:	00079663          	bnez	a5,1735c <strncpy+0x14>
   17354:	00463793          	sltiu	a5,a2,4
   17358:	04078663          	beqz	a5,173a4 <strncpy+0x5c>
   1735c:	00050713          	mv	a4,a0
   17360:	01c0006f          	j	1737c <strncpy+0x34>
   17364:	fff5c683          	lbu	a3,-1(a1)
   17368:	fff60813          	addi	a6,a2,-1
   1736c:	fed78fa3          	sb	a3,-1(a5)
   17370:	00068e63          	beqz	a3,1738c <strncpy+0x44>
   17374:	00078713          	mv	a4,a5
   17378:	00080613          	mv	a2,a6
   1737c:	00158593          	addi	a1,a1,1
   17380:	00170793          	addi	a5,a4,1
   17384:	fe0610e3          	bnez	a2,17364 <strncpy+0x1c>
   17388:	00008067          	ret
   1738c:	00c70733          	add	a4,a4,a2
   17390:	04080e63          	beqz	a6,173ec <strncpy+0xa4>
   17394:	00178793          	addi	a5,a5,1
   17398:	fe078fa3          	sb	zero,-1(a5)
   1739c:	fee79ce3          	bne	a5,a4,17394 <strncpy+0x4c>
   173a0:	00008067          	ret
   173a4:	feff0337          	lui	t1,0xfeff0
   173a8:	808088b7          	lui	a7,0x80808
   173ac:	eff30313          	addi	t1,t1,-257 # fefefeff <__BSS_END__+0xfefd3157>
   173b0:	08088893          	addi	a7,a7,128 # 80808080 <__BSS_END__+0x807eb2d8>
   173b4:	00050713          	mv	a4,a0
   173b8:	00300e13          	li	t3,3
   173bc:	0005a683          	lw	a3,0(a1)
   173c0:	006687b3          	add	a5,a3,t1
   173c4:	fff6c813          	not	a6,a3
   173c8:	0107f7b3          	and	a5,a5,a6
   173cc:	0117f7b3          	and	a5,a5,a7
   173d0:	fa0796e3          	bnez	a5,1737c <strncpy+0x34>
   173d4:	ffc60613          	addi	a2,a2,-4
   173d8:	00d72023          	sw	a3,0(a4)
   173dc:	00470713          	addi	a4,a4,4
   173e0:	00458593          	addi	a1,a1,4
   173e4:	fcce6ce3          	bltu	t3,a2,173bc <strncpy+0x74>
   173e8:	f95ff06f          	j	1737c <strncpy+0x34>
   173ec:	00008067          	ret

000173f0 <_init_signal_r>:
   173f0:	13852703          	lw	a4,312(a0)
   173f4:	00070663          	beqz	a4,17400 <_init_signal_r+0x10>
   173f8:	00000513          	li	a0,0
   173fc:	00008067          	ret
   17400:	fe010113          	addi	sp,sp,-32
   17404:	08000593          	li	a1,128
   17408:	00112e23          	sw	ra,28(sp)
   1740c:	00a12623          	sw	a0,12(sp)
   17410:	0a8010ef          	jal	184b8 <_malloc_r>
   17414:	00c12783          	lw	a5,12(sp)
   17418:	12a7ac23          	sw	a0,312(a5)
   1741c:	02050263          	beqz	a0,17440 <_init_signal_r+0x50>
   17420:	08050793          	addi	a5,a0,128
   17424:	00052023          	sw	zero,0(a0)
   17428:	00450513          	addi	a0,a0,4
   1742c:	fef51ce3          	bne	a0,a5,17424 <_init_signal_r+0x34>
   17430:	00000513          	li	a0,0
   17434:	01c12083          	lw	ra,28(sp)
   17438:	02010113          	addi	sp,sp,32
   1743c:	00008067          	ret
   17440:	fff00513          	li	a0,-1
   17444:	ff1ff06f          	j	17434 <_init_signal_r+0x44>

00017448 <_signal_r>:
   17448:	01f00713          	li	a4,31
   1744c:	02b76063          	bltu	a4,a1,1746c <_signal_r+0x24>
   17450:	13852703          	lw	a4,312(a0)
   17454:	02070463          	beqz	a4,1747c <_signal_r+0x34>
   17458:	00259593          	slli	a1,a1,0x2
   1745c:	00b70733          	add	a4,a4,a1
   17460:	00072503          	lw	a0,0(a4)
   17464:	00c72023          	sw	a2,0(a4)
   17468:	00008067          	ret
   1746c:	01600713          	li	a4,22
   17470:	00e52023          	sw	a4,0(a0)
   17474:	fff00513          	li	a0,-1
   17478:	00008067          	ret
   1747c:	fe010113          	addi	sp,sp,-32
   17480:	00b12223          	sw	a1,4(sp)
   17484:	08000593          	li	a1,128
   17488:	00c12423          	sw	a2,8(sp)
   1748c:	00112e23          	sw	ra,28(sp)
   17490:	00a12623          	sw	a0,12(sp)
   17494:	024010ef          	jal	184b8 <_malloc_r>
   17498:	00c12683          	lw	a3,12(sp)
   1749c:	00050713          	mv	a4,a0
   174a0:	08050593          	addi	a1,a0,128
   174a4:	12a6ac23          	sw	a0,312(a3)
   174a8:	00412783          	lw	a5,4(sp)
   174ac:	00050693          	mv	a3,a0
   174b0:	00812603          	lw	a2,8(sp)
   174b4:	fff00513          	li	a0,-1
   174b8:	02070063          	beqz	a4,174d8 <_signal_r+0x90>
   174bc:	0006a023          	sw	zero,0(a3)
   174c0:	00468693          	addi	a3,a3,4
   174c4:	feb69ce3          	bne	a3,a1,174bc <_signal_r+0x74>
   174c8:	00279593          	slli	a1,a5,0x2
   174cc:	00b70733          	add	a4,a4,a1
   174d0:	00072503          	lw	a0,0(a4)
   174d4:	00c72023          	sw	a2,0(a4)
   174d8:	01c12083          	lw	ra,28(sp)
   174dc:	02010113          	addi	sp,sp,32
   174e0:	00008067          	ret

000174e4 <_raise_r>:
   174e4:	01f00793          	li	a5,31
   174e8:	08b7ea63          	bltu	a5,a1,1757c <_raise_r+0x98>
   174ec:	13852783          	lw	a5,312(a0)
   174f0:	fe010113          	addi	sp,sp,-32
   174f4:	00112e23          	sw	ra,28(sp)
   174f8:	00050713          	mv	a4,a0
   174fc:	00058613          	mv	a2,a1
   17500:	04078063          	beqz	a5,17540 <_raise_r+0x5c>
   17504:	00259693          	slli	a3,a1,0x2
   17508:	00d787b3          	add	a5,a5,a3
   1750c:	0007a683          	lw	a3,0(a5)
   17510:	02068863          	beqz	a3,17540 <_raise_r+0x5c>
   17514:	00100513          	li	a0,1
   17518:	00a68c63          	beq	a3,a0,17530 <_raise_r+0x4c>
   1751c:	fff00593          	li	a1,-1
   17520:	04b68463          	beq	a3,a1,17568 <_raise_r+0x84>
   17524:	0007a023          	sw	zero,0(a5)
   17528:	00060513          	mv	a0,a2
   1752c:	000680e7          	jalr	a3
   17530:	01c12083          	lw	ra,28(sp)
   17534:	00000513          	li	a0,0
   17538:	02010113          	addi	sp,sp,32
   1753c:	00008067          	ret
   17540:	00070513          	mv	a0,a4
   17544:	00c12623          	sw	a2,12(sp)
   17548:	00e12423          	sw	a4,8(sp)
   1754c:	618000ef          	jal	17b64 <_getpid_r>
   17550:	00c12603          	lw	a2,12(sp)
   17554:	01c12083          	lw	ra,28(sp)
   17558:	00050593          	mv	a1,a0
   1755c:	00812503          	lw	a0,8(sp)
   17560:	02010113          	addi	sp,sp,32
   17564:	59c0006f          	j	17b00 <_kill_r>
   17568:	01c12083          	lw	ra,28(sp)
   1756c:	01600793          	li	a5,22
   17570:	00f72023          	sw	a5,0(a4)
   17574:	02010113          	addi	sp,sp,32
   17578:	00008067          	ret
   1757c:	01600793          	li	a5,22
   17580:	00f52023          	sw	a5,0(a0)
   17584:	fff00513          	li	a0,-1
   17588:	00008067          	ret

0001758c <__sigtramp_r>:
   1758c:	01f00793          	li	a5,31
   17590:	0cb7e063          	bltu	a5,a1,17650 <__sigtramp_r+0xc4>
   17594:	13852783          	lw	a5,312(a0)
   17598:	fe010113          	addi	sp,sp,-32
   1759c:	00112e23          	sw	ra,28(sp)
   175a0:	00058713          	mv	a4,a1
   175a4:	06078463          	beqz	a5,1760c <__sigtramp_r+0x80>
   175a8:	00271693          	slli	a3,a4,0x2
   175ac:	00d787b3          	add	a5,a5,a3
   175b0:	0007a683          	lw	a3,0(a5)
   175b4:	02068863          	beqz	a3,175e4 <__sigtramp_r+0x58>
   175b8:	fff00613          	li	a2,-1
   175bc:	04c68463          	beq	a3,a2,17604 <__sigtramp_r+0x78>
   175c0:	00100613          	li	a2,1
   175c4:	02c68863          	beq	a3,a2,175f4 <__sigtramp_r+0x68>
   175c8:	00070513          	mv	a0,a4
   175cc:	0007a023          	sw	zero,0(a5)
   175d0:	000680e7          	jalr	a3
   175d4:	00000513          	li	a0,0
   175d8:	01c12083          	lw	ra,28(sp)
   175dc:	02010113          	addi	sp,sp,32
   175e0:	00008067          	ret
   175e4:	01c12083          	lw	ra,28(sp)
   175e8:	00100513          	li	a0,1
   175ec:	02010113          	addi	sp,sp,32
   175f0:	00008067          	ret
   175f4:	01c12083          	lw	ra,28(sp)
   175f8:	00300513          	li	a0,3
   175fc:	02010113          	addi	sp,sp,32
   17600:	00008067          	ret
   17604:	00200513          	li	a0,2
   17608:	fd1ff06f          	j	175d8 <__sigtramp_r+0x4c>
   1760c:	00b12623          	sw	a1,12(sp)
   17610:	08000593          	li	a1,128
   17614:	00a12423          	sw	a0,8(sp)
   17618:	6a1000ef          	jal	184b8 <_malloc_r>
   1761c:	00812683          	lw	a3,8(sp)
   17620:	00050793          	mv	a5,a0
   17624:	12a6ac23          	sw	a0,312(a3)
   17628:	02050063          	beqz	a0,17648 <__sigtramp_r+0xbc>
   1762c:	00c12703          	lw	a4,12(sp)
   17630:	00050693          	mv	a3,a0
   17634:	08050613          	addi	a2,a0,128
   17638:	0006a023          	sw	zero,0(a3)
   1763c:	00468693          	addi	a3,a3,4
   17640:	fec69ce3          	bne	a3,a2,17638 <__sigtramp_r+0xac>
   17644:	f65ff06f          	j	175a8 <__sigtramp_r+0x1c>
   17648:	fff00513          	li	a0,-1
   1764c:	f8dff06f          	j	175d8 <__sigtramp_r+0x4c>
   17650:	fff00513          	li	a0,-1
   17654:	00008067          	ret

00017658 <raise>:
   17658:	01f00793          	li	a5,31
   1765c:	f5c1a803          	lw	a6,-164(gp) # 1ca4c <_impure_ptr>
   17660:	08a7e863          	bltu	a5,a0,176f0 <raise+0x98>
   17664:	13882783          	lw	a5,312(a6)
   17668:	fe010113          	addi	sp,sp,-32
   1766c:	00112e23          	sw	ra,28(sp)
   17670:	00050613          	mv	a2,a0
   17674:	02078e63          	beqz	a5,176b0 <raise+0x58>
   17678:	00251713          	slli	a4,a0,0x2
   1767c:	00e787b3          	add	a5,a5,a4
   17680:	0007a703          	lw	a4,0(a5)
   17684:	02070663          	beqz	a4,176b0 <raise+0x58>
   17688:	00100693          	li	a3,1
   1768c:	00d70a63          	beq	a4,a3,176a0 <raise+0x48>
   17690:	fff00613          	li	a2,-1
   17694:	04c70263          	beq	a4,a2,176d8 <raise+0x80>
   17698:	0007a023          	sw	zero,0(a5)
   1769c:	000700e7          	jalr	a4
   176a0:	01c12083          	lw	ra,28(sp)
   176a4:	00000513          	li	a0,0
   176a8:	02010113          	addi	sp,sp,32
   176ac:	00008067          	ret
   176b0:	00080513          	mv	a0,a6
   176b4:	00c12623          	sw	a2,12(sp)
   176b8:	01012423          	sw	a6,8(sp)
   176bc:	4a8000ef          	jal	17b64 <_getpid_r>
   176c0:	00c12603          	lw	a2,12(sp)
   176c4:	01c12083          	lw	ra,28(sp)
   176c8:	00050593          	mv	a1,a0
   176cc:	00812503          	lw	a0,8(sp)
   176d0:	02010113          	addi	sp,sp,32
   176d4:	42c0006f          	j	17b00 <_kill_r>
   176d8:	01c12083          	lw	ra,28(sp)
   176dc:	01600793          	li	a5,22
   176e0:	00f82023          	sw	a5,0(a6)
   176e4:	00068513          	mv	a0,a3
   176e8:	02010113          	addi	sp,sp,32
   176ec:	00008067          	ret
   176f0:	01600793          	li	a5,22
   176f4:	00f82023          	sw	a5,0(a6)
   176f8:	fff00513          	li	a0,-1
   176fc:	00008067          	ret

00017700 <signal>:
   17700:	01f00793          	li	a5,31
   17704:	f5c1a603          	lw	a2,-164(gp) # 1ca4c <_impure_ptr>
   17708:	02a7e063          	bltu	a5,a0,17728 <signal+0x28>
   1770c:	13862703          	lw	a4,312(a2)
   17710:	02070463          	beqz	a4,17738 <signal+0x38>
   17714:	00251513          	slli	a0,a0,0x2
   17718:	00a70733          	add	a4,a4,a0
   1771c:	00072503          	lw	a0,0(a4)
   17720:	00b72023          	sw	a1,0(a4)
   17724:	00008067          	ret
   17728:	01600793          	li	a5,22
   1772c:	00f62023          	sw	a5,0(a2)
   17730:	fff00513          	li	a0,-1
   17734:	00008067          	ret
   17738:	fe010113          	addi	sp,sp,-32
   1773c:	00b12623          	sw	a1,12(sp)
   17740:	00a12423          	sw	a0,8(sp)
   17744:	08000593          	li	a1,128
   17748:	00060513          	mv	a0,a2
   1774c:	00c12223          	sw	a2,4(sp)
   17750:	00112e23          	sw	ra,28(sp)
   17754:	565000ef          	jal	184b8 <_malloc_r>
   17758:	00412603          	lw	a2,4(sp)
   1775c:	00050713          	mv	a4,a0
   17760:	08050593          	addi	a1,a0,128
   17764:	12a62c23          	sw	a0,312(a2)
   17768:	00812783          	lw	a5,8(sp)
   1776c:	00050613          	mv	a2,a0
   17770:	00c12683          	lw	a3,12(sp)
   17774:	fff00513          	li	a0,-1
   17778:	02070063          	beqz	a4,17798 <signal+0x98>
   1777c:	00062023          	sw	zero,0(a2)
   17780:	00460613          	addi	a2,a2,4
   17784:	fec59ce3          	bne	a1,a2,1777c <signal+0x7c>
   17788:	00279513          	slli	a0,a5,0x2
   1778c:	00a70733          	add	a4,a4,a0
   17790:	00072503          	lw	a0,0(a4)
   17794:	00d72023          	sw	a3,0(a4)
   17798:	01c12083          	lw	ra,28(sp)
   1779c:	02010113          	addi	sp,sp,32
   177a0:	00008067          	ret

000177a4 <_init_signal>:
   177a4:	f5c1a783          	lw	a5,-164(gp) # 1ca4c <_impure_ptr>
   177a8:	1387a703          	lw	a4,312(a5)
   177ac:	00070663          	beqz	a4,177b8 <_init_signal+0x14>
   177b0:	00000513          	li	a0,0
   177b4:	00008067          	ret
   177b8:	fe010113          	addi	sp,sp,-32
   177bc:	00078513          	mv	a0,a5
   177c0:	08000593          	li	a1,128
   177c4:	00f12623          	sw	a5,12(sp)
   177c8:	00112e23          	sw	ra,28(sp)
   177cc:	4ed000ef          	jal	184b8 <_malloc_r>
   177d0:	00c12783          	lw	a5,12(sp)
   177d4:	12a7ac23          	sw	a0,312(a5)
   177d8:	02050263          	beqz	a0,177fc <_init_signal+0x58>
   177dc:	08050793          	addi	a5,a0,128
   177e0:	00052023          	sw	zero,0(a0)
   177e4:	00450513          	addi	a0,a0,4
   177e8:	fef51ce3          	bne	a0,a5,177e0 <_init_signal+0x3c>
   177ec:	00000513          	li	a0,0
   177f0:	01c12083          	lw	ra,28(sp)
   177f4:	02010113          	addi	sp,sp,32
   177f8:	00008067          	ret
   177fc:	fff00513          	li	a0,-1
   17800:	ff1ff06f          	j	177f0 <_init_signal+0x4c>

00017804 <__sigtramp>:
   17804:	01f00793          	li	a5,31
   17808:	0ca7e463          	bltu	a5,a0,178d0 <__sigtramp+0xcc>
   1780c:	f5c1a683          	lw	a3,-164(gp) # 1ca4c <_impure_ptr>
   17810:	fe010113          	addi	sp,sp,-32
   17814:	00112e23          	sw	ra,28(sp)
   17818:	1386a783          	lw	a5,312(a3)
   1781c:	00050713          	mv	a4,a0
   17820:	06078463          	beqz	a5,17888 <__sigtramp+0x84>
   17824:	00271693          	slli	a3,a4,0x2
   17828:	00d787b3          	add	a5,a5,a3
   1782c:	0007a683          	lw	a3,0(a5)
   17830:	02068863          	beqz	a3,17860 <__sigtramp+0x5c>
   17834:	fff00613          	li	a2,-1
   17838:	04c68463          	beq	a3,a2,17880 <__sigtramp+0x7c>
   1783c:	00100613          	li	a2,1
   17840:	02c68863          	beq	a3,a2,17870 <__sigtramp+0x6c>
   17844:	00070513          	mv	a0,a4
   17848:	0007a023          	sw	zero,0(a5)
   1784c:	000680e7          	jalr	a3
   17850:	00000513          	li	a0,0
   17854:	01c12083          	lw	ra,28(sp)
   17858:	02010113          	addi	sp,sp,32
   1785c:	00008067          	ret
   17860:	01c12083          	lw	ra,28(sp)
   17864:	00100513          	li	a0,1
   17868:	02010113          	addi	sp,sp,32
   1786c:	00008067          	ret
   17870:	01c12083          	lw	ra,28(sp)
   17874:	00300513          	li	a0,3
   17878:	02010113          	addi	sp,sp,32
   1787c:	00008067          	ret
   17880:	00200513          	li	a0,2
   17884:	fd1ff06f          	j	17854 <__sigtramp+0x50>
   17888:	00a12623          	sw	a0,12(sp)
   1788c:	08000593          	li	a1,128
   17890:	00068513          	mv	a0,a3
   17894:	00d12423          	sw	a3,8(sp)
   17898:	421000ef          	jal	184b8 <_malloc_r>
   1789c:	00812683          	lw	a3,8(sp)
   178a0:	00050793          	mv	a5,a0
   178a4:	12a6ac23          	sw	a0,312(a3)
   178a8:	02050063          	beqz	a0,178c8 <__sigtramp+0xc4>
   178ac:	00c12703          	lw	a4,12(sp)
   178b0:	00050693          	mv	a3,a0
   178b4:	08050613          	addi	a2,a0,128
   178b8:	0006a023          	sw	zero,0(a3)
   178bc:	00468693          	addi	a3,a3,4
   178c0:	fed61ce3          	bne	a2,a3,178b8 <__sigtramp+0xb4>
   178c4:	f61ff06f          	j	17824 <__sigtramp+0x20>
   178c8:	fff00513          	li	a0,-1
   178cc:	f89ff06f          	j	17854 <__sigtramp+0x50>
   178d0:	fff00513          	li	a0,-1
   178d4:	00008067          	ret

000178d8 <__localeconv_l>:
   178d8:	0f050513          	addi	a0,a0,240
   178dc:	00008067          	ret

000178e0 <_localeconv_r>:
   178e0:	e4818513          	addi	a0,gp,-440 # 1c938 <__global_locale+0xf0>
   178e4:	00008067          	ret

000178e8 <localeconv>:
   178e8:	e4818513          	addi	a0,gp,-440 # 1c938 <__global_locale+0xf0>
   178ec:	00008067          	ret

000178f0 <_close_r>:
   178f0:	ff010113          	addi	sp,sp,-16
   178f4:	00812423          	sw	s0,8(sp)
   178f8:	00912223          	sw	s1,4(sp)
   178fc:	00050493          	mv	s1,a0
   17900:	00058513          	mv	a0,a1
   17904:	00112623          	sw	ra,12(sp)
   17908:	f601a623          	sw	zero,-148(gp) # 1ca5c <errno>
   1790c:	679020ef          	jal	1a784 <_close>
   17910:	fff00793          	li	a5,-1
   17914:	00f50c63          	beq	a0,a5,1792c <_close_r+0x3c>
   17918:	00c12083          	lw	ra,12(sp)
   1791c:	00812403          	lw	s0,8(sp)
   17920:	00412483          	lw	s1,4(sp)
   17924:	01010113          	addi	sp,sp,16
   17928:	00008067          	ret
   1792c:	f6c1a783          	lw	a5,-148(gp) # 1ca5c <errno>
   17930:	fe0784e3          	beqz	a5,17918 <_close_r+0x28>
   17934:	00c12083          	lw	ra,12(sp)
   17938:	00812403          	lw	s0,8(sp)
   1793c:	00f4a023          	sw	a5,0(s1)
   17940:	00412483          	lw	s1,4(sp)
   17944:	01010113          	addi	sp,sp,16
   17948:	00008067          	ret

0001794c <_reclaim_reent>:
   1794c:	f5c1a783          	lw	a5,-164(gp) # 1ca4c <_impure_ptr>
   17950:	0ca78e63          	beq	a5,a0,17a2c <_reclaim_reent+0xe0>
   17954:	04452583          	lw	a1,68(a0)
   17958:	fe010113          	addi	sp,sp,-32
   1795c:	00912a23          	sw	s1,20(sp)
   17960:	00112e23          	sw	ra,28(sp)
   17964:	00812c23          	sw	s0,24(sp)
   17968:	00050493          	mv	s1,a0
   1796c:	04058863          	beqz	a1,179bc <_reclaim_reent+0x70>
   17970:	01212823          	sw	s2,16(sp)
   17974:	01312623          	sw	s3,12(sp)
   17978:	00000913          	li	s2,0
   1797c:	08000993          	li	s3,128
   17980:	012587b3          	add	a5,a1,s2
   17984:	0007a403          	lw	s0,0(a5)
   17988:	00040e63          	beqz	s0,179a4 <_reclaim_reent+0x58>
   1798c:	00040593          	mv	a1,s0
   17990:	00042403          	lw	s0,0(s0)
   17994:	00048513          	mv	a0,s1
   17998:	039000ef          	jal	181d0 <_free_r>
   1799c:	fe0418e3          	bnez	s0,1798c <_reclaim_reent+0x40>
   179a0:	0444a583          	lw	a1,68(s1)
   179a4:	00490913          	addi	s2,s2,4
   179a8:	fd391ce3          	bne	s2,s3,17980 <_reclaim_reent+0x34>
   179ac:	00048513          	mv	a0,s1
   179b0:	021000ef          	jal	181d0 <_free_r>
   179b4:	01012903          	lw	s2,16(sp)
   179b8:	00c12983          	lw	s3,12(sp)
   179bc:	0384a583          	lw	a1,56(s1)
   179c0:	00058663          	beqz	a1,179cc <_reclaim_reent+0x80>
   179c4:	00048513          	mv	a0,s1
   179c8:	009000ef          	jal	181d0 <_free_r>
   179cc:	0404a403          	lw	s0,64(s1)
   179d0:	00040c63          	beqz	s0,179e8 <_reclaim_reent+0x9c>
   179d4:	00040593          	mv	a1,s0
   179d8:	00042403          	lw	s0,0(s0)
   179dc:	00048513          	mv	a0,s1
   179e0:	7f0000ef          	jal	181d0 <_free_r>
   179e4:	fe0418e3          	bnez	s0,179d4 <_reclaim_reent+0x88>
   179e8:	04c4a583          	lw	a1,76(s1)
   179ec:	00058663          	beqz	a1,179f8 <_reclaim_reent+0xac>
   179f0:	00048513          	mv	a0,s1
   179f4:	7dc000ef          	jal	181d0 <_free_r>
   179f8:	0344a783          	lw	a5,52(s1)
   179fc:	00078e63          	beqz	a5,17a18 <_reclaim_reent+0xcc>
   17a00:	01812403          	lw	s0,24(sp)
   17a04:	01c12083          	lw	ra,28(sp)
   17a08:	00048513          	mv	a0,s1
   17a0c:	01412483          	lw	s1,20(sp)
   17a10:	02010113          	addi	sp,sp,32
   17a14:	00078067          	jr	a5
   17a18:	01c12083          	lw	ra,28(sp)
   17a1c:	01812403          	lw	s0,24(sp)
   17a20:	01412483          	lw	s1,20(sp)
   17a24:	02010113          	addi	sp,sp,32
   17a28:	00008067          	ret
   17a2c:	00008067          	ret

00017a30 <_lseek_r>:
   17a30:	ff010113          	addi	sp,sp,-16
   17a34:	00058793          	mv	a5,a1
   17a38:	00812423          	sw	s0,8(sp)
   17a3c:	00912223          	sw	s1,4(sp)
   17a40:	00060593          	mv	a1,a2
   17a44:	00050493          	mv	s1,a0
   17a48:	00068613          	mv	a2,a3
   17a4c:	00078513          	mv	a0,a5
   17a50:	00112623          	sw	ra,12(sp)
   17a54:	f601a623          	sw	zero,-148(gp) # 1ca5c <errno>
   17a58:	57d020ef          	jal	1a7d4 <_lseek>
   17a5c:	fff00793          	li	a5,-1
   17a60:	00f50c63          	beq	a0,a5,17a78 <_lseek_r+0x48>
   17a64:	00c12083          	lw	ra,12(sp)
   17a68:	00812403          	lw	s0,8(sp)
   17a6c:	00412483          	lw	s1,4(sp)
   17a70:	01010113          	addi	sp,sp,16
   17a74:	00008067          	ret
   17a78:	f6c1a783          	lw	a5,-148(gp) # 1ca5c <errno>
   17a7c:	fe0784e3          	beqz	a5,17a64 <_lseek_r+0x34>
   17a80:	00c12083          	lw	ra,12(sp)
   17a84:	00812403          	lw	s0,8(sp)
   17a88:	00f4a023          	sw	a5,0(s1)
   17a8c:	00412483          	lw	s1,4(sp)
   17a90:	01010113          	addi	sp,sp,16
   17a94:	00008067          	ret

00017a98 <_read_r>:
   17a98:	ff010113          	addi	sp,sp,-16
   17a9c:	00058793          	mv	a5,a1
   17aa0:	00812423          	sw	s0,8(sp)
   17aa4:	00912223          	sw	s1,4(sp)
   17aa8:	00060593          	mv	a1,a2
   17aac:	00050493          	mv	s1,a0
   17ab0:	00068613          	mv	a2,a3
   17ab4:	00078513          	mv	a0,a5
   17ab8:	00112623          	sw	ra,12(sp)
   17abc:	f601a623          	sw	zero,-148(gp) # 1ca5c <errno>
   17ac0:	525020ef          	jal	1a7e4 <_read>
   17ac4:	fff00793          	li	a5,-1
   17ac8:	00f50c63          	beq	a0,a5,17ae0 <_read_r+0x48>
   17acc:	00c12083          	lw	ra,12(sp)
   17ad0:	00812403          	lw	s0,8(sp)
   17ad4:	00412483          	lw	s1,4(sp)
   17ad8:	01010113          	addi	sp,sp,16
   17adc:	00008067          	ret
   17ae0:	f6c1a783          	lw	a5,-148(gp) # 1ca5c <errno>
   17ae4:	fe0784e3          	beqz	a5,17acc <_read_r+0x34>
   17ae8:	00c12083          	lw	ra,12(sp)
   17aec:	00812403          	lw	s0,8(sp)
   17af0:	00f4a023          	sw	a5,0(s1)
   17af4:	00412483          	lw	s1,4(sp)
   17af8:	01010113          	addi	sp,sp,16
   17afc:	00008067          	ret

00017b00 <_kill_r>:
   17b00:	ff010113          	addi	sp,sp,-16
   17b04:	00058793          	mv	a5,a1
   17b08:	00812423          	sw	s0,8(sp)
   17b0c:	00912223          	sw	s1,4(sp)
   17b10:	00060593          	mv	a1,a2
   17b14:	00050493          	mv	s1,a0
   17b18:	00078513          	mv	a0,a5
   17b1c:	00112623          	sw	ra,12(sp)
   17b20:	f601a623          	sw	zero,-148(gp) # 1ca5c <errno>
   17b24:	4a1020ef          	jal	1a7c4 <_kill>
   17b28:	fff00793          	li	a5,-1
   17b2c:	00f50c63          	beq	a0,a5,17b44 <_kill_r+0x44>
   17b30:	00c12083          	lw	ra,12(sp)
   17b34:	00812403          	lw	s0,8(sp)
   17b38:	00412483          	lw	s1,4(sp)
   17b3c:	01010113          	addi	sp,sp,16
   17b40:	00008067          	ret
   17b44:	f6c1a783          	lw	a5,-148(gp) # 1ca5c <errno>
   17b48:	fe0784e3          	beqz	a5,17b30 <_kill_r+0x30>
   17b4c:	00c12083          	lw	ra,12(sp)
   17b50:	00812403          	lw	s0,8(sp)
   17b54:	00f4a023          	sw	a5,0(s1)
   17b58:	00412483          	lw	s1,4(sp)
   17b5c:	01010113          	addi	sp,sp,16
   17b60:	00008067          	ret

00017b64 <_getpid_r>:
   17b64:	4410206f          	j	1a7a4 <_getpid>

00017b68 <_write_r>:
   17b68:	ff010113          	addi	sp,sp,-16
   17b6c:	00058793          	mv	a5,a1
   17b70:	00812423          	sw	s0,8(sp)
   17b74:	00912223          	sw	s1,4(sp)
   17b78:	00060593          	mv	a1,a2
   17b7c:	00050493          	mv	s1,a0
   17b80:	00068613          	mv	a2,a3
   17b84:	00078513          	mv	a0,a5
   17b88:	00112623          	sw	ra,12(sp)
   17b8c:	f601a623          	sw	zero,-148(gp) # 1ca5c <errno>
   17b90:	495020ef          	jal	1a824 <_write>
   17b94:	fff00793          	li	a5,-1
   17b98:	00f50c63          	beq	a0,a5,17bb0 <_write_r+0x48>
   17b9c:	00c12083          	lw	ra,12(sp)
   17ba0:	00812403          	lw	s0,8(sp)
   17ba4:	00412483          	lw	s1,4(sp)
   17ba8:	01010113          	addi	sp,sp,16
   17bac:	00008067          	ret
   17bb0:	f6c1a783          	lw	a5,-148(gp) # 1ca5c <errno>
   17bb4:	fe0784e3          	beqz	a5,17b9c <_write_r+0x34>
   17bb8:	00c12083          	lw	ra,12(sp)
   17bbc:	00812403          	lw	s0,8(sp)
   17bc0:	00f4a023          	sw	a5,0(s1)
   17bc4:	00412483          	lw	s1,4(sp)
   17bc8:	01010113          	addi	sp,sp,16
   17bcc:	00008067          	ret

00017bd0 <__errno>:
   17bd0:	f5c1a503          	lw	a0,-164(gp) # 1ca4c <_impure_ptr>
   17bd4:	00008067          	ret

00017bd8 <__libc_init_array>:
   17bd8:	ff010113          	addi	sp,sp,-16
   17bdc:	00812423          	sw	s0,8(sp)
   17be0:	01212023          	sw	s2,0(sp)
   17be4:	0001c437          	lui	s0,0x1c
   17be8:	0001c937          	lui	s2,0x1c
   17bec:	00112623          	sw	ra,12(sp)
   17bf0:	00912223          	sw	s1,4(sp)
   17bf4:	2e090913          	addi	s2,s2,736 # 1c2e0 <__init_array_start>
   17bf8:	2e040413          	addi	s0,s0,736 # 1c2e0 <__init_array_start>
   17bfc:	02890263          	beq	s2,s0,17c20 <__libc_init_array+0x48>
   17c00:	40890933          	sub	s2,s2,s0
   17c04:	40295913          	srai	s2,s2,0x2
   17c08:	00000493          	li	s1,0
   17c0c:	00042783          	lw	a5,0(s0)
   17c10:	00148493          	addi	s1,s1,1
   17c14:	00440413          	addi	s0,s0,4
   17c18:	000780e7          	jalr	a5
   17c1c:	ff24e8e3          	bltu	s1,s2,17c0c <__libc_init_array+0x34>
   17c20:	0001c937          	lui	s2,0x1c
   17c24:	0001c437          	lui	s0,0x1c
   17c28:	2e890913          	addi	s2,s2,744 # 1c2e8 <__do_global_dtors_aux_fini_array_entry>
   17c2c:	2e040413          	addi	s0,s0,736 # 1c2e0 <__init_array_start>
   17c30:	02890263          	beq	s2,s0,17c54 <__libc_init_array+0x7c>
   17c34:	40890933          	sub	s2,s2,s0
   17c38:	40295913          	srai	s2,s2,0x2
   17c3c:	00000493          	li	s1,0
   17c40:	00042783          	lw	a5,0(s0)
   17c44:	00148493          	addi	s1,s1,1
   17c48:	00440413          	addi	s0,s0,4
   17c4c:	000780e7          	jalr	a5
   17c50:	ff24e8e3          	bltu	s1,s2,17c40 <__libc_init_array+0x68>
   17c54:	00c12083          	lw	ra,12(sp)
   17c58:	00812403          	lw	s0,8(sp)
   17c5c:	00412483          	lw	s1,4(sp)
   17c60:	00012903          	lw	s2,0(sp)
   17c64:	01010113          	addi	sp,sp,16
   17c68:	00008067          	ret

00017c6c <memmove>:
   17c6c:	02a5f663          	bgeu	a1,a0,17c98 <memmove+0x2c>
   17c70:	00c587b3          	add	a5,a1,a2
   17c74:	02f57263          	bgeu	a0,a5,17c98 <memmove+0x2c>
   17c78:	04060863          	beqz	a2,17cc8 <memmove+0x5c>
   17c7c:	00c50633          	add	a2,a0,a2
   17c80:	fff7c703          	lbu	a4,-1(a5)
   17c84:	fff60613          	addi	a2,a2,-1
   17c88:	fff78793          	addi	a5,a5,-1
   17c8c:	00e60023          	sb	a4,0(a2)
   17c90:	fec518e3          	bne	a0,a2,17c80 <memmove+0x14>
   17c94:	00008067          	ret
   17c98:	00f00793          	li	a5,15
   17c9c:	02c7e863          	bltu	a5,a2,17ccc <memmove+0x60>
   17ca0:	00050793          	mv	a5,a0
   17ca4:	fff60693          	addi	a3,a2,-1
   17ca8:	0e060063          	beqz	a2,17d88 <memmove+0x11c>
   17cac:	00168693          	addi	a3,a3,1
   17cb0:	00d786b3          	add	a3,a5,a3
   17cb4:	0005c703          	lbu	a4,0(a1)
   17cb8:	00178793          	addi	a5,a5,1
   17cbc:	00158593          	addi	a1,a1,1
   17cc0:	fee78fa3          	sb	a4,-1(a5)
   17cc4:	fed798e3          	bne	a5,a3,17cb4 <memmove+0x48>
   17cc8:	00008067          	ret
   17ccc:	00b567b3          	or	a5,a0,a1
   17cd0:	0037f793          	andi	a5,a5,3
   17cd4:	00058893          	mv	a7,a1
   17cd8:	0a079263          	bnez	a5,17d7c <memmove+0x110>
   17cdc:	00465793          	srli	a5,a2,0x4
   17ce0:	00479813          	slli	a6,a5,0x4
   17ce4:	01050833          	add	a6,a0,a6
   17ce8:	fff78793          	addi	a5,a5,-1
   17cec:	00050713          	mv	a4,a0
   17cf0:	0005a683          	lw	a3,0(a1)
   17cf4:	01058593          	addi	a1,a1,16
   17cf8:	01070713          	addi	a4,a4,16
   17cfc:	fed72823          	sw	a3,-16(a4)
   17d00:	ff45a683          	lw	a3,-12(a1)
   17d04:	fed72a23          	sw	a3,-12(a4)
   17d08:	ff85a683          	lw	a3,-8(a1)
   17d0c:	fed72c23          	sw	a3,-8(a4)
   17d10:	ffc5a683          	lw	a3,-4(a1)
   17d14:	fed72e23          	sw	a3,-4(a4)
   17d18:	fd071ce3          	bne	a4,a6,17cf0 <memmove+0x84>
   17d1c:	00479793          	slli	a5,a5,0x4
   17d20:	01178733          	add	a4,a5,a7
   17d24:	01070593          	addi	a1,a4,16
   17d28:	00f507b3          	add	a5,a0,a5
   17d2c:	00c67813          	andi	a6,a2,12
   17d30:	01078793          	addi	a5,a5,16
   17d34:	00058e13          	mv	t3,a1
   17d38:	00f67693          	andi	a3,a2,15
   17d3c:	04080863          	beqz	a6,17d8c <memmove+0x120>
   17d40:	ffc68693          	addi	a3,a3,-4
   17d44:	ffc6f693          	andi	a3,a3,-4
   17d48:	00d70733          	add	a4,a4,a3
   17d4c:	01470713          	addi	a4,a4,20
   17d50:	41150833          	sub	a6,a0,a7
   17d54:	0005a303          	lw	t1,0(a1)
   17d58:	010588b3          	add	a7,a1,a6
   17d5c:	00458593          	addi	a1,a1,4
   17d60:	0068a023          	sw	t1,0(a7)
   17d64:	fee598e3          	bne	a1,a4,17d54 <memmove+0xe8>
   17d68:	00468713          	addi	a4,a3,4
   17d6c:	01c705b3          	add	a1,a4,t3
   17d70:	00f707b3          	add	a5,a4,a5
   17d74:	00367613          	andi	a2,a2,3
   17d78:	f2dff06f          	j	17ca4 <memmove+0x38>
   17d7c:	fff60693          	addi	a3,a2,-1
   17d80:	00050793          	mv	a5,a0
   17d84:	f29ff06f          	j	17cac <memmove+0x40>
   17d88:	00008067          	ret
   17d8c:	00068613          	mv	a2,a3
   17d90:	f15ff06f          	j	17ca4 <memmove+0x38>

00017d94 <memcpy>:
   17d94:	00a5c7b3          	xor	a5,a1,a0
   17d98:	0037f793          	andi	a5,a5,3
   17d9c:	00c508b3          	add	a7,a0,a2
   17da0:	06079663          	bnez	a5,17e0c <memcpy+0x78>
   17da4:	00463613          	sltiu	a2,a2,4
   17da8:	06061263          	bnez	a2,17e0c <memcpy+0x78>
   17dac:	00357793          	andi	a5,a0,3
   17db0:	00050713          	mv	a4,a0
   17db4:	0c079a63          	bnez	a5,17e88 <memcpy+0xf4>
   17db8:	ffc8f613          	andi	a2,a7,-4
   17dbc:	40e606b3          	sub	a3,a2,a4
   17dc0:	02000793          	li	a5,32
   17dc4:	06d7c463          	blt	a5,a3,17e2c <memcpy+0x98>
   17dc8:	00058693          	mv	a3,a1
   17dcc:	00070793          	mv	a5,a4
   17dd0:	02c77a63          	bgeu	a4,a2,17e04 <memcpy+0x70>
   17dd4:	0006a803          	lw	a6,0(a3)
   17dd8:	00478793          	addi	a5,a5,4
   17ddc:	00468693          	addi	a3,a3,4
   17de0:	ff07ae23          	sw	a6,-4(a5)
   17de4:	fec7e8e3          	bltu	a5,a2,17dd4 <memcpy+0x40>
   17de8:	fff60613          	addi	a2,a2,-1
   17dec:	40e60633          	sub	a2,a2,a4
   17df0:	ffc67613          	andi	a2,a2,-4
   17df4:	00458593          	addi	a1,a1,4
   17df8:	00470713          	addi	a4,a4,4
   17dfc:	00c585b3          	add	a1,a1,a2
   17e00:	00c70733          	add	a4,a4,a2
   17e04:	01176863          	bltu	a4,a7,17e14 <memcpy+0x80>
   17e08:	00008067          	ret
   17e0c:	00050713          	mv	a4,a0
   17e10:	ff157ce3          	bgeu	a0,a7,17e08 <memcpy+0x74>
   17e14:	0005c783          	lbu	a5,0(a1)
   17e18:	00170713          	addi	a4,a4,1
   17e1c:	00158593          	addi	a1,a1,1
   17e20:	fef70fa3          	sb	a5,-1(a4)
   17e24:	fee898e3          	bne	a7,a4,17e14 <memcpy+0x80>
   17e28:	00008067          	ret
   17e2c:	0005a683          	lw	a3,0(a1)
   17e30:	0045a283          	lw	t0,4(a1)
   17e34:	0085af83          	lw	t6,8(a1)
   17e38:	00c5af03          	lw	t5,12(a1)
   17e3c:	0105ae83          	lw	t4,16(a1)
   17e40:	0145ae03          	lw	t3,20(a1)
   17e44:	0185a303          	lw	t1,24(a1)
   17e48:	01c5a803          	lw	a6,28(a1)
   17e4c:	00d72023          	sw	a3,0(a4)
   17e50:	0205a683          	lw	a3,32(a1)
   17e54:	02470713          	addi	a4,a4,36
   17e58:	fe572023          	sw	t0,-32(a4)
   17e5c:	fed72e23          	sw	a3,-4(a4)
   17e60:	fff72223          	sw	t6,-28(a4)
   17e64:	40e606b3          	sub	a3,a2,a4
   17e68:	ffe72423          	sw	t5,-24(a4)
   17e6c:	ffd72623          	sw	t4,-20(a4)
   17e70:	ffc72823          	sw	t3,-16(a4)
   17e74:	fe672a23          	sw	t1,-12(a4)
   17e78:	ff072c23          	sw	a6,-8(a4)
   17e7c:	02458593          	addi	a1,a1,36
   17e80:	fad7c6e3          	blt	a5,a3,17e2c <memcpy+0x98>
   17e84:	f45ff06f          	j	17dc8 <memcpy+0x34>
   17e88:	0005c683          	lbu	a3,0(a1)
   17e8c:	00170713          	addi	a4,a4,1
   17e90:	00377793          	andi	a5,a4,3
   17e94:	fed70fa3          	sb	a3,-1(a4)
   17e98:	00158593          	addi	a1,a1,1
   17e9c:	f0078ee3          	beqz	a5,17db8 <memcpy+0x24>
   17ea0:	0005c683          	lbu	a3,0(a1)
   17ea4:	00170713          	addi	a4,a4,1
   17ea8:	00377793          	andi	a5,a4,3
   17eac:	fed70fa3          	sb	a3,-1(a4)
   17eb0:	00158593          	addi	a1,a1,1
   17eb4:	fc079ae3          	bnez	a5,17e88 <memcpy+0xf4>
   17eb8:	f01ff06f          	j	17db8 <memcpy+0x24>

00017ebc <strlen>:
   17ebc:	00357793          	andi	a5,a0,3
   17ec0:	00050713          	mv	a4,a0
   17ec4:	04079c63          	bnez	a5,17f1c <strlen+0x60>
   17ec8:	7f7f86b7          	lui	a3,0x7f7f8
   17ecc:	f7f68693          	addi	a3,a3,-129 # 7f7f7f7f <__BSS_END__+0x7f7db1d7>
   17ed0:	fff00593          	li	a1,-1
   17ed4:	00072603          	lw	a2,0(a4)
   17ed8:	00470713          	addi	a4,a4,4
   17edc:	00d677b3          	and	a5,a2,a3
   17ee0:	00d787b3          	add	a5,a5,a3
   17ee4:	00c7e7b3          	or	a5,a5,a2
   17ee8:	00d7e7b3          	or	a5,a5,a3
   17eec:	feb784e3          	beq	a5,a1,17ed4 <strlen+0x18>
   17ef0:	ffc74683          	lbu	a3,-4(a4)
   17ef4:	40a707b3          	sub	a5,a4,a0
   17ef8:	04068463          	beqz	a3,17f40 <strlen+0x84>
   17efc:	ffd74683          	lbu	a3,-3(a4)
   17f00:	02068c63          	beqz	a3,17f38 <strlen+0x7c>
   17f04:	ffe74503          	lbu	a0,-2(a4)
   17f08:	00a03533          	snez	a0,a0
   17f0c:	00f50533          	add	a0,a0,a5
   17f10:	ffe50513          	addi	a0,a0,-2
   17f14:	00008067          	ret
   17f18:	fa0688e3          	beqz	a3,17ec8 <strlen+0xc>
   17f1c:	00074783          	lbu	a5,0(a4)
   17f20:	00170713          	addi	a4,a4,1
   17f24:	00377693          	andi	a3,a4,3
   17f28:	fe0798e3          	bnez	a5,17f18 <strlen+0x5c>
   17f2c:	40a70733          	sub	a4,a4,a0
   17f30:	fff70513          	addi	a0,a4,-1
   17f34:	00008067          	ret
   17f38:	ffd78513          	addi	a0,a5,-3
   17f3c:	00008067          	ret
   17f40:	ffc78513          	addi	a0,a5,-4
   17f44:	00008067          	ret

00017f48 <__call_exitprocs>:
   17f48:	fd010113          	addi	sp,sp,-48
   17f4c:	01412c23          	sw	s4,24(sp)
   17f50:	03212023          	sw	s2,32(sp)
   17f54:	f701a903          	lw	s2,-144(gp) # 1ca60 <__atexit>
   17f58:	02112623          	sw	ra,44(sp)
   17f5c:	0a090863          	beqz	s2,1800c <__call_exitprocs+0xc4>
   17f60:	01312e23          	sw	s3,28(sp)
   17f64:	01512a23          	sw	s5,20(sp)
   17f68:	01612823          	sw	s6,16(sp)
   17f6c:	01712623          	sw	s7,12(sp)
   17f70:	02812423          	sw	s0,40(sp)
   17f74:	02912223          	sw	s1,36(sp)
   17f78:	01812423          	sw	s8,8(sp)
   17f7c:	00050b13          	mv	s6,a0
   17f80:	00058b93          	mv	s7,a1
   17f84:	fff00993          	li	s3,-1
   17f88:	00100a93          	li	s5,1
   17f8c:	00492483          	lw	s1,4(s2)
   17f90:	fff48413          	addi	s0,s1,-1
   17f94:	04044e63          	bltz	s0,17ff0 <__call_exitprocs+0xa8>
   17f98:	00249493          	slli	s1,s1,0x2
   17f9c:	009904b3          	add	s1,s2,s1
   17fa0:	080b9063          	bnez	s7,18020 <__call_exitprocs+0xd8>
   17fa4:	00492783          	lw	a5,4(s2)
   17fa8:	0044a683          	lw	a3,4(s1)
   17fac:	fff78793          	addi	a5,a5,-1
   17fb0:	0c878463          	beq	a5,s0,18078 <__call_exitprocs+0x130>
   17fb4:	0004a223          	sw	zero,4(s1)
   17fb8:	02068663          	beqz	a3,17fe4 <__call_exitprocs+0x9c>
   17fbc:	18892783          	lw	a5,392(s2)
   17fc0:	008a9733          	sll	a4,s5,s0
   17fc4:	00492c03          	lw	s8,4(s2)
   17fc8:	00f777b3          	and	a5,a4,a5
   17fcc:	06079e63          	bnez	a5,18048 <__call_exitprocs+0x100>
   17fd0:	000680e7          	jalr	a3
   17fd4:	00492703          	lw	a4,4(s2)
   17fd8:	f701a783          	lw	a5,-144(gp) # 1ca60 <__atexit>
   17fdc:	09871863          	bne	a4,s8,1806c <__call_exitprocs+0x124>
   17fe0:	09279663          	bne	a5,s2,1806c <__call_exitprocs+0x124>
   17fe4:	fff40413          	addi	s0,s0,-1
   17fe8:	ffc48493          	addi	s1,s1,-4
   17fec:	fb341ae3          	bne	s0,s3,17fa0 <__call_exitprocs+0x58>
   17ff0:	02812403          	lw	s0,40(sp)
   17ff4:	02412483          	lw	s1,36(sp)
   17ff8:	01c12983          	lw	s3,28(sp)
   17ffc:	01412a83          	lw	s5,20(sp)
   18000:	01012b03          	lw	s6,16(sp)
   18004:	00c12b83          	lw	s7,12(sp)
   18008:	00812c03          	lw	s8,8(sp)
   1800c:	02c12083          	lw	ra,44(sp)
   18010:	02012903          	lw	s2,32(sp)
   18014:	01812a03          	lw	s4,24(sp)
   18018:	03010113          	addi	sp,sp,48
   1801c:	00008067          	ret
   18020:	1044a783          	lw	a5,260(s1)
   18024:	fff40713          	addi	a4,s0,-1
   18028:	f6fb8ee3          	beq	s7,a5,17fa4 <__call_exitprocs+0x5c>
   1802c:	ffe40413          	addi	s0,s0,-2
   18030:	fd3700e3          	beq	a4,s3,17ff0 <__call_exitprocs+0xa8>
   18034:	1004a783          	lw	a5,256(s1)
   18038:	05778463          	beq	a5,s7,18080 <__call_exitprocs+0x138>
   1803c:	ff848493          	addi	s1,s1,-8
   18040:	ff3410e3          	bne	s0,s3,18020 <__call_exitprocs+0xd8>
   18044:	fadff06f          	j	17ff0 <__call_exitprocs+0xa8>
   18048:	18c92783          	lw	a5,396(s2)
   1804c:	0844a583          	lw	a1,132(s1)
   18050:	00f77733          	and	a4,a4,a5
   18054:	02071c63          	bnez	a4,1808c <__call_exitprocs+0x144>
   18058:	000b0513          	mv	a0,s6
   1805c:	000680e7          	jalr	a3
   18060:	00492703          	lw	a4,4(s2)
   18064:	f701a783          	lw	a5,-144(gp) # 1ca60 <__atexit>
   18068:	f7870ce3          	beq	a4,s8,17fe0 <__call_exitprocs+0x98>
   1806c:	f80782e3          	beqz	a5,17ff0 <__call_exitprocs+0xa8>
   18070:	00078913          	mv	s2,a5
   18074:	f19ff06f          	j	17f8c <__call_exitprocs+0x44>
   18078:	00892223          	sw	s0,4(s2)
   1807c:	f3dff06f          	j	17fb8 <__call_exitprocs+0x70>
   18080:	00070413          	mv	s0,a4
   18084:	ffc48493          	addi	s1,s1,-4
   18088:	f1dff06f          	j	17fa4 <__call_exitprocs+0x5c>
   1808c:	00058513          	mv	a0,a1
   18090:	000680e7          	jalr	a3
   18094:	f41ff06f          	j	17fd4 <__call_exitprocs+0x8c>

00018098 <atexit>:
   18098:	00050593          	mv	a1,a0
   1809c:	00000693          	li	a3,0
   180a0:	00000613          	li	a2,0
   180a4:	00000513          	li	a0,0
   180a8:	2490106f          	j	19af0 <__register_exitproc>

000180ac <_malloc_trim_r>:
   180ac:	fe010113          	addi	sp,sp,-32
   180b0:	01212823          	sw	s2,16(sp)
   180b4:	0001c937          	lui	s2,0x1c
   180b8:	00812c23          	sw	s0,24(sp)
   180bc:	00912a23          	sw	s1,20(sp)
   180c0:	01312623          	sw	s3,12(sp)
   180c4:	00058413          	mv	s0,a1
   180c8:	00112e23          	sw	ra,28(sp)
   180cc:	00050993          	mv	s3,a0
   180d0:	44090913          	addi	s2,s2,1088 # 1c440 <__malloc_av_>
   180d4:	461000ef          	jal	18d34 <__malloc_lock>
   180d8:	00892783          	lw	a5,8(s2)
   180dc:	00001737          	lui	a4,0x1
   180e0:	0047a483          	lw	s1,4(a5)
   180e4:	ffc4f493          	andi	s1,s1,-4
   180e8:	7ff48793          	addi	a5,s1,2047
   180ec:	7f078793          	addi	a5,a5,2032
   180f0:	40878433          	sub	s0,a5,s0
   180f4:	00c45413          	srli	s0,s0,0xc
   180f8:	fff40413          	addi	s0,s0,-1
   180fc:	00c41413          	slli	s0,s0,0xc
   18100:	00e44e63          	blt	s0,a4,1811c <_malloc_trim_r+0x70>
   18104:	00000593          	li	a1,0
   18108:	00098513          	mv	a0,s3
   1810c:	7b0010ef          	jal	198bc <_sbrk_r>
   18110:	00892783          	lw	a5,8(s2)
   18114:	009787b3          	add	a5,a5,s1
   18118:	02f50663          	beq	a0,a5,18144 <_malloc_trim_r+0x98>
   1811c:	00098513          	mv	a0,s3
   18120:	419000ef          	jal	18d38 <__malloc_unlock>
   18124:	01c12083          	lw	ra,28(sp)
   18128:	01812403          	lw	s0,24(sp)
   1812c:	01412483          	lw	s1,20(sp)
   18130:	01012903          	lw	s2,16(sp)
   18134:	00c12983          	lw	s3,12(sp)
   18138:	00000513          	li	a0,0
   1813c:	02010113          	addi	sp,sp,32
   18140:	00008067          	ret
   18144:	408005b3          	neg	a1,s0
   18148:	00098513          	mv	a0,s3
   1814c:	770010ef          	jal	198bc <_sbrk_r>
   18150:	fff00793          	li	a5,-1
   18154:	04f50463          	beq	a0,a5,1819c <_malloc_trim_r+0xf0>
   18158:	00892683          	lw	a3,8(s2)
   1815c:	1001a783          	lw	a5,256(gp) # 1cbf0 <__malloc_current_mallinfo>
   18160:	408484b3          	sub	s1,s1,s0
   18164:	0014e493          	ori	s1,s1,1
   18168:	00098513          	mv	a0,s3
   1816c:	408787b3          	sub	a5,a5,s0
   18170:	0096a223          	sw	s1,4(a3)
   18174:	10f1a023          	sw	a5,256(gp) # 1cbf0 <__malloc_current_mallinfo>
   18178:	3c1000ef          	jal	18d38 <__malloc_unlock>
   1817c:	01c12083          	lw	ra,28(sp)
   18180:	01812403          	lw	s0,24(sp)
   18184:	01412483          	lw	s1,20(sp)
   18188:	01012903          	lw	s2,16(sp)
   1818c:	00c12983          	lw	s3,12(sp)
   18190:	00100513          	li	a0,1
   18194:	02010113          	addi	sp,sp,32
   18198:	00008067          	ret
   1819c:	00000593          	li	a1,0
   181a0:	00098513          	mv	a0,s3
   181a4:	718010ef          	jal	198bc <_sbrk_r>
   181a8:	00892703          	lw	a4,8(s2)
   181ac:	00f00693          	li	a3,15
   181b0:	40e507b3          	sub	a5,a0,a4
   181b4:	f6f6d4e3          	bge	a3,a5,1811c <_malloc_trim_r+0x70>
   181b8:	f601a603          	lw	a2,-160(gp) # 1ca50 <__malloc_sbrk_base>
   181bc:	0017e793          	ori	a5,a5,1
   181c0:	40c50533          	sub	a0,a0,a2
   181c4:	00f72223          	sw	a5,4(a4) # 1004 <exit-0xf0b0>
   181c8:	10a1a023          	sw	a0,256(gp) # 1cbf0 <__malloc_current_mallinfo>
   181cc:	f51ff06f          	j	1811c <_malloc_trim_r+0x70>

000181d0 <_free_r>:
   181d0:	12058463          	beqz	a1,182f8 <_free_r+0x128>
   181d4:	fe010113          	addi	sp,sp,-32
   181d8:	00812c23          	sw	s0,24(sp)
   181dc:	00b12623          	sw	a1,12(sp)
   181e0:	00050413          	mv	s0,a0
   181e4:	00112e23          	sw	ra,28(sp)
   181e8:	34d000ef          	jal	18d34 <__malloc_lock>
   181ec:	00c12583          	lw	a1,12(sp)
   181f0:	0001c837          	lui	a6,0x1c
   181f4:	44080813          	addi	a6,a6,1088 # 1c440 <__malloc_av_>
   181f8:	ffc5a503          	lw	a0,-4(a1)
   181fc:	ff858713          	addi	a4,a1,-8
   18200:	00882883          	lw	a7,8(a6)
   18204:	ffe57793          	andi	a5,a0,-2
   18208:	00f70633          	add	a2,a4,a5
   1820c:	00462683          	lw	a3,4(a2)
   18210:	00157313          	andi	t1,a0,1
   18214:	ffc6f693          	andi	a3,a3,-4
   18218:	18c88863          	beq	a7,a2,183a8 <_free_r+0x1d8>
   1821c:	00d62223          	sw	a3,4(a2)
   18220:	00d608b3          	add	a7,a2,a3
   18224:	0048a883          	lw	a7,4(a7)
   18228:	0018f893          	andi	a7,a7,1
   1822c:	08031a63          	bnez	t1,182c0 <_free_r+0xf0>
   18230:	ff85a303          	lw	t1,-8(a1)
   18234:	0001c5b7          	lui	a1,0x1c
   18238:	44858593          	addi	a1,a1,1096 # 1c448 <__malloc_av_+0x8>
   1823c:	40670733          	sub	a4,a4,t1
   18240:	00872503          	lw	a0,8(a4)
   18244:	006787b3          	add	a5,a5,t1
   18248:	12b50a63          	beq	a0,a1,1837c <_free_r+0x1ac>
   1824c:	00c72303          	lw	t1,12(a4)
   18250:	00652623          	sw	t1,12(a0)
   18254:	00a32423          	sw	a0,8(t1)
   18258:	18088c63          	beqz	a7,183f0 <_free_r+0x220>
   1825c:	0017e693          	ori	a3,a5,1
   18260:	00d72223          	sw	a3,4(a4)
   18264:	00f62023          	sw	a5,0(a2)
   18268:	1ff00693          	li	a3,511
   1826c:	0af6e263          	bltu	a3,a5,18310 <_free_r+0x140>
   18270:	ff87f693          	andi	a3,a5,-8
   18274:	00868693          	addi	a3,a3,8
   18278:	00482583          	lw	a1,4(a6)
   1827c:	00d806b3          	add	a3,a6,a3
   18280:	0006a603          	lw	a2,0(a3)
   18284:	0057d513          	srli	a0,a5,0x5
   18288:	00100793          	li	a5,1
   1828c:	00a797b3          	sll	a5,a5,a0
   18290:	00b7e7b3          	or	a5,a5,a1
   18294:	ff868593          	addi	a1,a3,-8
   18298:	00c72423          	sw	a2,8(a4)
   1829c:	00b72623          	sw	a1,12(a4)
   182a0:	00f82223          	sw	a5,4(a6)
   182a4:	00e6a023          	sw	a4,0(a3)
   182a8:	00e62623          	sw	a4,12(a2)
   182ac:	00040513          	mv	a0,s0
   182b0:	01812403          	lw	s0,24(sp)
   182b4:	01c12083          	lw	ra,28(sp)
   182b8:	02010113          	addi	sp,sp,32
   182bc:	27d0006f          	j	18d38 <__malloc_unlock>
   182c0:	02089e63          	bnez	a7,182fc <_free_r+0x12c>
   182c4:	0001c5b7          	lui	a1,0x1c
   182c8:	00d787b3          	add	a5,a5,a3
   182cc:	44858593          	addi	a1,a1,1096 # 1c448 <__malloc_av_+0x8>
   182d0:	00862683          	lw	a3,8(a2)
   182d4:	0017e893          	ori	a7,a5,1
   182d8:	00f70533          	add	a0,a4,a5
   182dc:	16b68063          	beq	a3,a1,1843c <_free_r+0x26c>
   182e0:	00c62603          	lw	a2,12(a2)
   182e4:	00c6a623          	sw	a2,12(a3)
   182e8:	00d62423          	sw	a3,8(a2)
   182ec:	01172223          	sw	a7,4(a4)
   182f0:	00f52023          	sw	a5,0(a0)
   182f4:	f75ff06f          	j	18268 <_free_r+0x98>
   182f8:	00008067          	ret
   182fc:	00156513          	ori	a0,a0,1
   18300:	fea5ae23          	sw	a0,-4(a1)
   18304:	00f62023          	sw	a5,0(a2)
   18308:	1ff00693          	li	a3,511
   1830c:	f6f6f2e3          	bgeu	a3,a5,18270 <_free_r+0xa0>
   18310:	0097d693          	srli	a3,a5,0x9
   18314:	00400613          	li	a2,4
   18318:	0ed66063          	bltu	a2,a3,183f8 <_free_r+0x228>
   1831c:	0067d693          	srli	a3,a5,0x6
   18320:	03968593          	addi	a1,a3,57
   18324:	00359593          	slli	a1,a1,0x3
   18328:	03868613          	addi	a2,a3,56
   1832c:	00b805b3          	add	a1,a6,a1
   18330:	0005a683          	lw	a3,0(a1)
   18334:	ff858593          	addi	a1,a1,-8
   18338:	00d59863          	bne	a1,a3,18348 <_free_r+0x178>
   1833c:	11c0006f          	j	18458 <_free_r+0x288>
   18340:	0086a683          	lw	a3,8(a3)
   18344:	00d58863          	beq	a1,a3,18354 <_free_r+0x184>
   18348:	0046a603          	lw	a2,4(a3)
   1834c:	ffc67613          	andi	a2,a2,-4
   18350:	fec7e8e3          	bltu	a5,a2,18340 <_free_r+0x170>
   18354:	00c6a583          	lw	a1,12(a3)
   18358:	00b72623          	sw	a1,12(a4)
   1835c:	00d72423          	sw	a3,8(a4)
   18360:	00040513          	mv	a0,s0
   18364:	01812403          	lw	s0,24(sp)
   18368:	01c12083          	lw	ra,28(sp)
   1836c:	00e5a423          	sw	a4,8(a1)
   18370:	00e6a623          	sw	a4,12(a3)
   18374:	02010113          	addi	sp,sp,32
   18378:	1c10006f          	j	18d38 <__malloc_unlock>
   1837c:	0a089063          	bnez	a7,1841c <_free_r+0x24c>
   18380:	00c62583          	lw	a1,12(a2)
   18384:	00862603          	lw	a2,8(a2)
   18388:	00f686b3          	add	a3,a3,a5
   1838c:	0016e793          	ori	a5,a3,1
   18390:	00b62623          	sw	a1,12(a2)
   18394:	00c5a423          	sw	a2,8(a1)
   18398:	00f72223          	sw	a5,4(a4)
   1839c:	00d70733          	add	a4,a4,a3
   183a0:	00d72023          	sw	a3,0(a4)
   183a4:	f09ff06f          	j	182ac <_free_r+0xdc>
   183a8:	00d786b3          	add	a3,a5,a3
   183ac:	02031063          	bnez	t1,183cc <_free_r+0x1fc>
   183b0:	ff85a783          	lw	a5,-8(a1)
   183b4:	40f70733          	sub	a4,a4,a5
   183b8:	00872603          	lw	a2,8(a4)
   183bc:	00f686b3          	add	a3,a3,a5
   183c0:	00c72783          	lw	a5,12(a4)
   183c4:	00f62623          	sw	a5,12(a2)
   183c8:	00c7a423          	sw	a2,8(a5)
   183cc:	0016e613          	ori	a2,a3,1
   183d0:	f641a783          	lw	a5,-156(gp) # 1ca54 <__malloc_trim_threshold>
   183d4:	00c72223          	sw	a2,4(a4)
   183d8:	00e82423          	sw	a4,8(a6)
   183dc:	ecf6e8e3          	bltu	a3,a5,182ac <_free_r+0xdc>
   183e0:	f7c1a583          	lw	a1,-132(gp) # 1ca6c <__malloc_top_pad>
   183e4:	00040513          	mv	a0,s0
   183e8:	cc5ff0ef          	jal	180ac <_malloc_trim_r>
   183ec:	ec1ff06f          	j	182ac <_free_r+0xdc>
   183f0:	00d787b3          	add	a5,a5,a3
   183f4:	eddff06f          	j	182d0 <_free_r+0x100>
   183f8:	01400613          	li	a2,20
   183fc:	02d67863          	bgeu	a2,a3,1842c <_free_r+0x25c>
   18400:	05400613          	li	a2,84
   18404:	06d66863          	bltu	a2,a3,18474 <_free_r+0x2a4>
   18408:	00c7d693          	srli	a3,a5,0xc
   1840c:	06f68593          	addi	a1,a3,111
   18410:	00359593          	slli	a1,a1,0x3
   18414:	06e68613          	addi	a2,a3,110
   18418:	f15ff06f          	j	1832c <_free_r+0x15c>
   1841c:	0017e693          	ori	a3,a5,1
   18420:	00d72223          	sw	a3,4(a4)
   18424:	00f62023          	sw	a5,0(a2)
   18428:	e85ff06f          	j	182ac <_free_r+0xdc>
   1842c:	05c68593          	addi	a1,a3,92
   18430:	00359593          	slli	a1,a1,0x3
   18434:	05b68613          	addi	a2,a3,91
   18438:	ef5ff06f          	j	1832c <_free_r+0x15c>
   1843c:	00e82a23          	sw	a4,20(a6)
   18440:	00e82823          	sw	a4,16(a6)
   18444:	00b72623          	sw	a1,12(a4)
   18448:	00b72423          	sw	a1,8(a4)
   1844c:	01172223          	sw	a7,4(a4)
   18450:	00f52023          	sw	a5,0(a0)
   18454:	e59ff06f          	j	182ac <_free_r+0xdc>
   18458:	00482503          	lw	a0,4(a6)
   1845c:	40265613          	srai	a2,a2,0x2
   18460:	00100793          	li	a5,1
   18464:	00c797b3          	sll	a5,a5,a2
   18468:	00a7e7b3          	or	a5,a5,a0
   1846c:	00f82223          	sw	a5,4(a6)
   18470:	ee9ff06f          	j	18358 <_free_r+0x188>
   18474:	15400613          	li	a2,340
   18478:	00d66c63          	bltu	a2,a3,18490 <_free_r+0x2c0>
   1847c:	00f7d693          	srli	a3,a5,0xf
   18480:	07868593          	addi	a1,a3,120
   18484:	00359593          	slli	a1,a1,0x3
   18488:	07768613          	addi	a2,a3,119
   1848c:	ea1ff06f          	j	1832c <_free_r+0x15c>
   18490:	55400613          	li	a2,1364
   18494:	00d66c63          	bltu	a2,a3,184ac <_free_r+0x2dc>
   18498:	0127d693          	srli	a3,a5,0x12
   1849c:	07d68593          	addi	a1,a3,125
   184a0:	00359593          	slli	a1,a1,0x3
   184a4:	07c68613          	addi	a2,a3,124
   184a8:	e85ff06f          	j	1832c <_free_r+0x15c>
   184ac:	3f800593          	li	a1,1016
   184b0:	07e00613          	li	a2,126
   184b4:	e79ff06f          	j	1832c <_free_r+0x15c>

000184b8 <_malloc_r>:
   184b8:	fc010113          	addi	sp,sp,-64
   184bc:	02812c23          	sw	s0,56(sp)
   184c0:	02112e23          	sw	ra,60(sp)
   184c4:	00b58793          	addi	a5,a1,11
   184c8:	01600713          	li	a4,22
   184cc:	00050413          	mv	s0,a0
   184d0:	08f76e63          	bltu	a4,a5,1856c <_malloc_r+0xb4>
   184d4:	01000693          	li	a3,16
   184d8:	06b6ec63          	bltu	a3,a1,18550 <_malloc_r+0x98>
   184dc:	059000ef          	jal	18d34 <__malloc_lock>
   184e0:	01000693          	li	a3,16
   184e4:	01800713          	li	a4,24
   184e8:	00200893          	li	a7,2
   184ec:	0001c837          	lui	a6,0x1c
   184f0:	44080813          	addi	a6,a6,1088 # 1c440 <__malloc_av_>
   184f4:	00e80733          	add	a4,a6,a4
   184f8:	00472783          	lw	a5,4(a4)
   184fc:	ff870613          	addi	a2,a4,-8
   18500:	44c78c63          	beq	a5,a2,18958 <_malloc_r+0x4a0>
   18504:	0047a703          	lw	a4,4(a5)
   18508:	00c7a603          	lw	a2,12(a5)
   1850c:	0087a583          	lw	a1,8(a5)
   18510:	ffc77713          	andi	a4,a4,-4
   18514:	00e78733          	add	a4,a5,a4
   18518:	00472683          	lw	a3,4(a4)
   1851c:	00c5a623          	sw	a2,12(a1)
   18520:	00f12623          	sw	a5,12(sp)
   18524:	00b62423          	sw	a1,8(a2)
   18528:	0016e693          	ori	a3,a3,1
   1852c:	00040513          	mv	a0,s0
   18530:	00d72223          	sw	a3,4(a4)
   18534:	005000ef          	jal	18d38 <__malloc_unlock>
   18538:	00c12783          	lw	a5,12(sp)
   1853c:	03c12083          	lw	ra,60(sp)
   18540:	03812403          	lw	s0,56(sp)
   18544:	00878513          	addi	a0,a5,8
   18548:	04010113          	addi	sp,sp,64
   1854c:	00008067          	ret
   18550:	00c00793          	li	a5,12
   18554:	00f42023          	sw	a5,0(s0)
   18558:	00000513          	li	a0,0
   1855c:	03c12083          	lw	ra,60(sp)
   18560:	03812403          	lw	s0,56(sp)
   18564:	04010113          	addi	sp,sp,64
   18568:	00008067          	ret
   1856c:	ff87f693          	andi	a3,a5,-8
   18570:	fe07c0e3          	bltz	a5,18550 <_malloc_r+0x98>
   18574:	fcb6eee3          	bltu	a3,a1,18550 <_malloc_r+0x98>
   18578:	00d12623          	sw	a3,12(sp)
   1857c:	7b8000ef          	jal	18d34 <__malloc_lock>
   18580:	00c12683          	lw	a3,12(sp)
   18584:	1f700793          	li	a5,503
   18588:	4cd7f663          	bgeu	a5,a3,18a54 <_malloc_r+0x59c>
   1858c:	0096d793          	srli	a5,a3,0x9
   18590:	16078e63          	beqz	a5,1870c <_malloc_r+0x254>
   18594:	00400713          	li	a4,4
   18598:	42f76863          	bltu	a4,a5,189c8 <_malloc_r+0x510>
   1859c:	0066d793          	srli	a5,a3,0x6
   185a0:	03978893          	addi	a7,a5,57
   185a4:	03878e13          	addi	t3,a5,56
   185a8:	00389513          	slli	a0,a7,0x3
   185ac:	0001c837          	lui	a6,0x1c
   185b0:	44080813          	addi	a6,a6,1088 # 1c440 <__malloc_av_>
   185b4:	00a80533          	add	a0,a6,a0
   185b8:	00452783          	lw	a5,4(a0)
   185bc:	ff850513          	addi	a0,a0,-8
   185c0:	02f50863          	beq	a0,a5,185f0 <_malloc_r+0x138>
   185c4:	00f00313          	li	t1,15
   185c8:	0140006f          	j	185dc <_malloc_r+0x124>
   185cc:	00c7a583          	lw	a1,12(a5)
   185d0:	34065463          	bgez	a2,18918 <_malloc_r+0x460>
   185d4:	00b50e63          	beq	a0,a1,185f0 <_malloc_r+0x138>
   185d8:	00058793          	mv	a5,a1
   185dc:	0047a703          	lw	a4,4(a5)
   185e0:	ffc77713          	andi	a4,a4,-4
   185e4:	40d70633          	sub	a2,a4,a3
   185e8:	fec352e3          	bge	t1,a2,185cc <_malloc_r+0x114>
   185ec:	000e0893          	mv	a7,t3
   185f0:	01082783          	lw	a5,16(a6)
   185f4:	0001ce37          	lui	t3,0x1c
   185f8:	448e0e13          	addi	t3,t3,1096 # 1c448 <__malloc_av_+0x8>
   185fc:	2dc78c63          	beq	a5,t3,188d4 <_malloc_r+0x41c>
   18600:	0047a703          	lw	a4,4(a5)
   18604:	00f00593          	li	a1,15
   18608:	ffc77713          	andi	a4,a4,-4
   1860c:	40d70633          	sub	a2,a4,a3
   18610:	46c5cc63          	blt	a1,a2,18a88 <_malloc_r+0x5d0>
   18614:	01c82a23          	sw	t3,20(a6)
   18618:	01c82823          	sw	t3,16(a6)
   1861c:	44065263          	bgez	a2,18a60 <_malloc_r+0x5a8>
   18620:	1ff00613          	li	a2,511
   18624:	00482303          	lw	t1,4(a6)
   18628:	34e66063          	bltu	a2,a4,18968 <_malloc_r+0x4b0>
   1862c:	ff877613          	andi	a2,a4,-8
   18630:	00860613          	addi	a2,a2,8
   18634:	00c80633          	add	a2,a6,a2
   18638:	00062583          	lw	a1,0(a2)
   1863c:	00575513          	srli	a0,a4,0x5
   18640:	00100713          	li	a4,1
   18644:	00a71733          	sll	a4,a4,a0
   18648:	00e36333          	or	t1,t1,a4
   1864c:	ff860713          	addi	a4,a2,-8
   18650:	00b7a423          	sw	a1,8(a5)
   18654:	00e7a623          	sw	a4,12(a5)
   18658:	00682223          	sw	t1,4(a6)
   1865c:	00f62023          	sw	a5,0(a2)
   18660:	00f5a623          	sw	a5,12(a1)
   18664:	4028d793          	srai	a5,a7,0x2
   18668:	00100513          	li	a0,1
   1866c:	00f51533          	sll	a0,a0,a5
   18670:	0aa36663          	bltu	t1,a0,1871c <_malloc_r+0x264>
   18674:	006577b3          	and	a5,a0,t1
   18678:	02079463          	bnez	a5,186a0 <_malloc_r+0x1e8>
   1867c:	00151513          	slli	a0,a0,0x1
   18680:	ffc8f893          	andi	a7,a7,-4
   18684:	006577b3          	and	a5,a0,t1
   18688:	00488893          	addi	a7,a7,4
   1868c:	00079a63          	bnez	a5,186a0 <_malloc_r+0x1e8>
   18690:	00151513          	slli	a0,a0,0x1
   18694:	006577b3          	and	a5,a0,t1
   18698:	00488893          	addi	a7,a7,4
   1869c:	fe078ae3          	beqz	a5,18690 <_malloc_r+0x1d8>
   186a0:	00f00e93          	li	t4,15
   186a4:	00389f13          	slli	t5,a7,0x3
   186a8:	01e80f33          	add	t5,a6,t5
   186ac:	000f0313          	mv	t1,t5
   186b0:	00c32703          	lw	a4,12(t1)
   186b4:	00088f93          	mv	t6,a7
   186b8:	32e30a63          	beq	t1,a4,189ec <_malloc_r+0x534>
   186bc:	00472603          	lw	a2,4(a4)
   186c0:	00070793          	mv	a5,a4
   186c4:	00c72703          	lw	a4,12(a4)
   186c8:	ffc67613          	andi	a2,a2,-4
   186cc:	40d605b3          	sub	a1,a2,a3
   186d0:	32beca63          	blt	t4,a1,18a04 <_malloc_r+0x54c>
   186d4:	fe05c2e3          	bltz	a1,186b8 <_malloc_r+0x200>
   186d8:	00c78633          	add	a2,a5,a2
   186dc:	00462683          	lw	a3,4(a2)
   186e0:	0087a583          	lw	a1,8(a5)
   186e4:	00040513          	mv	a0,s0
   186e8:	0016e693          	ori	a3,a3,1
   186ec:	00d62223          	sw	a3,4(a2)
   186f0:	00e5a623          	sw	a4,12(a1)
   186f4:	00b72423          	sw	a1,8(a4)
   186f8:	00f12623          	sw	a5,12(sp)
   186fc:	63c000ef          	jal	18d38 <__malloc_unlock>
   18700:	00c12783          	lw	a5,12(sp)
   18704:	00878513          	addi	a0,a5,8
   18708:	e55ff06f          	j	1855c <_malloc_r+0xa4>
   1870c:	20000513          	li	a0,512
   18710:	04000893          	li	a7,64
   18714:	03f00e13          	li	t3,63
   18718:	e95ff06f          	j	185ac <_malloc_r+0xf4>
   1871c:	00882783          	lw	a5,8(a6)
   18720:	0047a703          	lw	a4,4(a5)
   18724:	ffc77313          	andi	t1,a4,-4
   18728:	40d30633          	sub	a2,t1,a3
   1872c:	00d36663          	bltu	t1,a3,18738 <_malloc_r+0x280>
   18730:	01062713          	slti	a4,a2,16
   18734:	1a070463          	beqz	a4,188dc <_malloc_r+0x424>
   18738:	f7c1a583          	lw	a1,-132(gp) # 1ca6c <__malloc_top_pad>
   1873c:	f601a603          	lw	a2,-160(gp) # 1ca50 <__malloc_sbrk_base>
   18740:	fff00713          	li	a4,-1
   18744:	00b685b3          	add	a1,a3,a1
   18748:	42e60463          	beq	a2,a4,18b70 <_malloc_r+0x6b8>
   1874c:	00001737          	lui	a4,0x1
   18750:	00f70713          	addi	a4,a4,15 # 100f <exit-0xf0a5>
   18754:	00e585b3          	add	a1,a1,a4
   18758:	fffff737          	lui	a4,0xfffff
   1875c:	00e5f5b3          	and	a1,a1,a4
   18760:	00040513          	mv	a0,s0
   18764:	01012e23          	sw	a6,28(sp)
   18768:	00f12c23          	sw	a5,24(sp)
   1876c:	00d12a23          	sw	a3,20(sp)
   18770:	00612823          	sw	t1,16(sp)
   18774:	00b12623          	sw	a1,12(sp)
   18778:	144010ef          	jal	198bc <_sbrk_r>
   1877c:	fff00713          	li	a4,-1
   18780:	00c12583          	lw	a1,12(sp)
   18784:	01012303          	lw	t1,16(sp)
   18788:	01412683          	lw	a3,20(sp)
   1878c:	01812783          	lw	a5,24(sp)
   18790:	01c12803          	lw	a6,28(sp)
   18794:	00050e13          	mv	t3,a0
   18798:	34e50663          	beq	a0,a4,18ae4 <_malloc_r+0x62c>
   1879c:	00678733          	add	a4,a5,t1
   187a0:	34e56063          	bltu	a0,a4,18ae0 <_malloc_r+0x628>
   187a4:	10018e93          	addi	t4,gp,256 # 1cbf0 <__malloc_current_mallinfo>
   187a8:	000ea603          	lw	a2,0(t4) # 200000 <__BSS_END__+0x1e3258>
   187ac:	00c58633          	add	a2,a1,a2
   187b0:	00cea023          	sw	a2,0(t4)
   187b4:	48a70a63          	beq	a4,a0,18c48 <_malloc_r+0x790>
   187b8:	f601af03          	lw	t5,-160(gp) # 1ca50 <__malloc_sbrk_base>
   187bc:	fff00513          	li	a0,-1
   187c0:	4aaf0263          	beq	t5,a0,18c64 <_malloc_r+0x7ac>
   187c4:	40ee0733          	sub	a4,t3,a4
   187c8:	00c70733          	add	a4,a4,a2
   187cc:	00eea023          	sw	a4,0(t4)
   187d0:	007e7f13          	andi	t5,t3,7
   187d4:	3a0f0e63          	beqz	t5,18b90 <_malloc_r+0x6d8>
   187d8:	ff8e7e13          	andi	t3,t3,-8
   187dc:	000018b7          	lui	a7,0x1
   187e0:	008e0e13          	addi	t3,t3,8
   187e4:	00888893          	addi	a7,a7,8 # 1008 <exit-0xf0ac>
   187e8:	00be0633          	add	a2,t3,a1
   187ec:	41e885b3          	sub	a1,a7,t5
   187f0:	40c585b3          	sub	a1,a1,a2
   187f4:	01459593          	slli	a1,a1,0x14
   187f8:	0145d593          	srli	a1,a1,0x14
   187fc:	00040513          	mv	a0,s0
   18800:	03012623          	sw	a6,44(sp)
   18804:	03d12423          	sw	t4,40(sp)
   18808:	02f12223          	sw	a5,36(sp)
   1880c:	02d12023          	sw	a3,32(sp)
   18810:	00612e23          	sw	t1,28(sp)
   18814:	01c12c23          	sw	t3,24(sp)
   18818:	01e12a23          	sw	t5,20(sp)
   1881c:	00c12823          	sw	a2,16(sp)
   18820:	00b12623          	sw	a1,12(sp)
   18824:	098010ef          	jal	198bc <_sbrk_r>
   18828:	00050713          	mv	a4,a0
   1882c:	fff00513          	li	a0,-1
   18830:	00c12583          	lw	a1,12(sp)
   18834:	01012603          	lw	a2,16(sp)
   18838:	01412f03          	lw	t5,20(sp)
   1883c:	01812e03          	lw	t3,24(sp)
   18840:	01c12303          	lw	t1,28(sp)
   18844:	02012683          	lw	a3,32(sp)
   18848:	02412783          	lw	a5,36(sp)
   1884c:	02812e83          	lw	t4,40(sp)
   18850:	02c12803          	lw	a6,44(sp)
   18854:	44a70e63          	beq	a4,a0,18cb0 <_malloc_r+0x7f8>
   18858:	000ea603          	lw	a2,0(t4)
   1885c:	41c70733          	sub	a4,a4,t3
   18860:	00b70733          	add	a4,a4,a1
   18864:	00176713          	ori	a4,a4,1
   18868:	01c82423          	sw	t3,8(a6)
   1886c:	00c58633          	add	a2,a1,a2
   18870:	00ee2223          	sw	a4,4(t3)
   18874:	00cea023          	sw	a2,0(t4)
   18878:	03078e63          	beq	a5,a6,188b4 <_malloc_r+0x3fc>
   1887c:	00f00513          	li	a0,15
   18880:	3e657663          	bgeu	a0,t1,18c6c <_malloc_r+0x7b4>
   18884:	0047a583          	lw	a1,4(a5)
   18888:	ff430713          	addi	a4,t1,-12
   1888c:	ff877713          	andi	a4,a4,-8
   18890:	0015f593          	andi	a1,a1,1
   18894:	00e5e5b3          	or	a1,a1,a4
   18898:	00b7a223          	sw	a1,4(a5)
   1889c:	00500893          	li	a7,5
   188a0:	00e785b3          	add	a1,a5,a4
   188a4:	0115a223          	sw	a7,4(a1)
   188a8:	0115a423          	sw	a7,8(a1)
   188ac:	40e56a63          	bltu	a0,a4,18cc0 <_malloc_r+0x808>
   188b0:	004e2703          	lw	a4,4(t3)
   188b4:	f781a583          	lw	a1,-136(gp) # 1ca68 <__malloc_max_sbrked_mem>
   188b8:	00c5f463          	bgeu	a1,a2,188c0 <_malloc_r+0x408>
   188bc:	f6c1ac23          	sw	a2,-136(gp) # 1ca68 <__malloc_max_sbrked_mem>
   188c0:	f741a583          	lw	a1,-140(gp) # 1ca64 <__malloc_max_total_mem>
   188c4:	00c5f463          	bgeu	a1,a2,188cc <_malloc_r+0x414>
   188c8:	f6c1aa23          	sw	a2,-140(gp) # 1ca64 <__malloc_max_total_mem>
   188cc:	000e0793          	mv	a5,t3
   188d0:	21c0006f          	j	18aec <_malloc_r+0x634>
   188d4:	00482303          	lw	t1,4(a6)
   188d8:	d8dff06f          	j	18664 <_malloc_r+0x1ac>
   188dc:	0016e713          	ori	a4,a3,1
   188e0:	00e7a223          	sw	a4,4(a5)
   188e4:	00d786b3          	add	a3,a5,a3
   188e8:	00166613          	ori	a2,a2,1
   188ec:	00d82423          	sw	a3,8(a6)
   188f0:	00040513          	mv	a0,s0
   188f4:	00c6a223          	sw	a2,4(a3)
   188f8:	00f12623          	sw	a5,12(sp)
   188fc:	43c000ef          	jal	18d38 <__malloc_unlock>
   18900:	00c12783          	lw	a5,12(sp)
   18904:	03c12083          	lw	ra,60(sp)
   18908:	03812403          	lw	s0,56(sp)
   1890c:	00878513          	addi	a0,a5,8
   18910:	04010113          	addi	sp,sp,64
   18914:	00008067          	ret
   18918:	0087a603          	lw	a2,8(a5)
   1891c:	00e78733          	add	a4,a5,a4
   18920:	00472683          	lw	a3,4(a4) # fffff004 <__BSS_END__+0xfffe225c>
   18924:	00b62623          	sw	a1,12(a2)
   18928:	00f12623          	sw	a5,12(sp)
   1892c:	0016e693          	ori	a3,a3,1
   18930:	00c5a423          	sw	a2,8(a1)
   18934:	00040513          	mv	a0,s0
   18938:	00d72223          	sw	a3,4(a4)
   1893c:	3fc000ef          	jal	18d38 <__malloc_unlock>
   18940:	00c12783          	lw	a5,12(sp)
   18944:	03c12083          	lw	ra,60(sp)
   18948:	03812403          	lw	s0,56(sp)
   1894c:	00878513          	addi	a0,a5,8
   18950:	04010113          	addi	sp,sp,64
   18954:	00008067          	ret
   18958:	00c72783          	lw	a5,12(a4)
   1895c:	00288893          	addi	a7,a7,2
   18960:	c8f708e3          	beq	a4,a5,185f0 <_malloc_r+0x138>
   18964:	ba1ff06f          	j	18504 <_malloc_r+0x4c>
   18968:	00975613          	srli	a2,a4,0x9
   1896c:	00400593          	li	a1,4
   18970:	14c5fe63          	bgeu	a1,a2,18acc <_malloc_r+0x614>
   18974:	01400593          	li	a1,20
   18978:	28c5e263          	bltu	a1,a2,18bfc <_malloc_r+0x744>
   1897c:	05c60513          	addi	a0,a2,92
   18980:	00351513          	slli	a0,a0,0x3
   18984:	05b60593          	addi	a1,a2,91
   18988:	00a80533          	add	a0,a6,a0
   1898c:	00052603          	lw	a2,0(a0)
   18990:	ff850513          	addi	a0,a0,-8
   18994:	00c51863          	bne	a0,a2,189a4 <_malloc_r+0x4ec>
   18998:	1e00006f          	j	18b78 <_malloc_r+0x6c0>
   1899c:	00862603          	lw	a2,8(a2)
   189a0:	00c50863          	beq	a0,a2,189b0 <_malloc_r+0x4f8>
   189a4:	00462583          	lw	a1,4(a2)
   189a8:	ffc5f593          	andi	a1,a1,-4
   189ac:	feb768e3          	bltu	a4,a1,1899c <_malloc_r+0x4e4>
   189b0:	00c62503          	lw	a0,12(a2)
   189b4:	00a7a623          	sw	a0,12(a5)
   189b8:	00c7a423          	sw	a2,8(a5)
   189bc:	00f52423          	sw	a5,8(a0)
   189c0:	00f62623          	sw	a5,12(a2)
   189c4:	ca1ff06f          	j	18664 <_malloc_r+0x1ac>
   189c8:	01400713          	li	a4,20
   189cc:	14f77063          	bgeu	a4,a5,18b0c <_malloc_r+0x654>
   189d0:	05400713          	li	a4,84
   189d4:	24f76263          	bltu	a4,a5,18c18 <_malloc_r+0x760>
   189d8:	00c6d793          	srli	a5,a3,0xc
   189dc:	06f78893          	addi	a7,a5,111
   189e0:	06e78e13          	addi	t3,a5,110
   189e4:	00389513          	slli	a0,a7,0x3
   189e8:	bc5ff06f          	j	185ac <_malloc_r+0xf4>
   189ec:	001f8f93          	addi	t6,t6,1 # 100001 <__BSS_END__+0xe3259>
   189f0:	003ff793          	andi	a5,t6,3
   189f4:	00830313          	addi	t1,t1,8
   189f8:	12078863          	beqz	a5,18b28 <_malloc_r+0x670>
   189fc:	00c32703          	lw	a4,12(t1)
   18a00:	cb9ff06f          	j	186b8 <_malloc_r+0x200>
   18a04:	0087a503          	lw	a0,8(a5)
   18a08:	0016e893          	ori	a7,a3,1
   18a0c:	0117a223          	sw	a7,4(a5)
   18a10:	00e52623          	sw	a4,12(a0)
   18a14:	00a72423          	sw	a0,8(a4)
   18a18:	00d786b3          	add	a3,a5,a3
   18a1c:	00d82a23          	sw	a3,20(a6)
   18a20:	00d82823          	sw	a3,16(a6)
   18a24:	0015e713          	ori	a4,a1,1
   18a28:	00c78633          	add	a2,a5,a2
   18a2c:	01c6a623          	sw	t3,12(a3)
   18a30:	01c6a423          	sw	t3,8(a3)
   18a34:	00e6a223          	sw	a4,4(a3)
   18a38:	00040513          	mv	a0,s0
   18a3c:	00b62023          	sw	a1,0(a2)
   18a40:	00f12623          	sw	a5,12(sp)
   18a44:	2f4000ef          	jal	18d38 <__malloc_unlock>
   18a48:	00c12783          	lw	a5,12(sp)
   18a4c:	00878513          	addi	a0,a5,8
   18a50:	b0dff06f          	j	1855c <_malloc_r+0xa4>
   18a54:	0036d893          	srli	a7,a3,0x3
   18a58:	00868713          	addi	a4,a3,8
   18a5c:	a91ff06f          	j	184ec <_malloc_r+0x34>
   18a60:	00e78733          	add	a4,a5,a4
   18a64:	00472683          	lw	a3,4(a4)
   18a68:	00f12623          	sw	a5,12(sp)
   18a6c:	00040513          	mv	a0,s0
   18a70:	0016e693          	ori	a3,a3,1
   18a74:	00d72223          	sw	a3,4(a4)
   18a78:	2c0000ef          	jal	18d38 <__malloc_unlock>
   18a7c:	00c12783          	lw	a5,12(sp)
   18a80:	00878513          	addi	a0,a5,8
   18a84:	ad9ff06f          	j	1855c <_malloc_r+0xa4>
   18a88:	0016e593          	ori	a1,a3,1
   18a8c:	00b7a223          	sw	a1,4(a5)
   18a90:	00d786b3          	add	a3,a5,a3
   18a94:	00d82a23          	sw	a3,20(a6)
   18a98:	00d82823          	sw	a3,16(a6)
   18a9c:	00166593          	ori	a1,a2,1
   18aa0:	00e78733          	add	a4,a5,a4
   18aa4:	01c6a623          	sw	t3,12(a3)
   18aa8:	01c6a423          	sw	t3,8(a3)
   18aac:	00b6a223          	sw	a1,4(a3)
   18ab0:	00040513          	mv	a0,s0
   18ab4:	00c72023          	sw	a2,0(a4)
   18ab8:	00f12623          	sw	a5,12(sp)
   18abc:	27c000ef          	jal	18d38 <__malloc_unlock>
   18ac0:	00c12783          	lw	a5,12(sp)
   18ac4:	00878513          	addi	a0,a5,8
   18ac8:	a95ff06f          	j	1855c <_malloc_r+0xa4>
   18acc:	00675613          	srli	a2,a4,0x6
   18ad0:	03960513          	addi	a0,a2,57
   18ad4:	00351513          	slli	a0,a0,0x3
   18ad8:	03860593          	addi	a1,a2,56
   18adc:	eadff06f          	j	18988 <_malloc_r+0x4d0>
   18ae0:	15078a63          	beq	a5,a6,18c34 <_malloc_r+0x77c>
   18ae4:	00882783          	lw	a5,8(a6)
   18ae8:	0047a703          	lw	a4,4(a5)
   18aec:	ffc77713          	andi	a4,a4,-4
   18af0:	40d70633          	sub	a2,a4,a3
   18af4:	00d76663          	bltu	a4,a3,18b00 <_malloc_r+0x648>
   18af8:	01062713          	slti	a4,a2,16
   18afc:	de0700e3          	beqz	a4,188dc <_malloc_r+0x424>
   18b00:	00040513          	mv	a0,s0
   18b04:	234000ef          	jal	18d38 <__malloc_unlock>
   18b08:	a51ff06f          	j	18558 <_malloc_r+0xa0>
   18b0c:	05c78893          	addi	a7,a5,92
   18b10:	05b78e13          	addi	t3,a5,91
   18b14:	00389513          	slli	a0,a7,0x3
   18b18:	a95ff06f          	j	185ac <_malloc_r+0xf4>
   18b1c:	008f2783          	lw	a5,8(t5)
   18b20:	fff88893          	addi	a7,a7,-1
   18b24:	21e79463          	bne	a5,t5,18d2c <_malloc_r+0x874>
   18b28:	0038f793          	andi	a5,a7,3
   18b2c:	ff8f0f13          	addi	t5,t5,-8
   18b30:	fe0796e3          	bnez	a5,18b1c <_malloc_r+0x664>
   18b34:	00482703          	lw	a4,4(a6)
   18b38:	fff54793          	not	a5,a0
   18b3c:	00e7f7b3          	and	a5,a5,a4
   18b40:	00f82223          	sw	a5,4(a6)
   18b44:	00151513          	slli	a0,a0,0x1
   18b48:	fff50713          	addi	a4,a0,-1
   18b4c:	bcf778e3          	bgeu	a4,a5,1871c <_malloc_r+0x264>
   18b50:	00f57733          	and	a4,a0,a5
   18b54:	00071a63          	bnez	a4,18b68 <_malloc_r+0x6b0>
   18b58:	00151513          	slli	a0,a0,0x1
   18b5c:	00f57733          	and	a4,a0,a5
   18b60:	004f8f93          	addi	t6,t6,4
   18b64:	fe070ae3          	beqz	a4,18b58 <_malloc_r+0x6a0>
   18b68:	000f8893          	mv	a7,t6
   18b6c:	b39ff06f          	j	186a4 <_malloc_r+0x1ec>
   18b70:	01058593          	addi	a1,a1,16
   18b74:	bedff06f          	j	18760 <_malloc_r+0x2a8>
   18b78:	4025d593          	srai	a1,a1,0x2
   18b7c:	00100713          	li	a4,1
   18b80:	00b71733          	sll	a4,a4,a1
   18b84:	00e36333          	or	t1,t1,a4
   18b88:	00682223          	sw	t1,4(a6)
   18b8c:	e29ff06f          	j	189b4 <_malloc_r+0x4fc>
   18b90:	00be0633          	add	a2,t3,a1
   18b94:	40c005b3          	neg	a1,a2
   18b98:	01459593          	slli	a1,a1,0x14
   18b9c:	0145d593          	srli	a1,a1,0x14
   18ba0:	00040513          	mv	a0,s0
   18ba4:	03012423          	sw	a6,40(sp)
   18ba8:	03d12223          	sw	t4,36(sp)
   18bac:	02f12023          	sw	a5,32(sp)
   18bb0:	00d12e23          	sw	a3,28(sp)
   18bb4:	00612c23          	sw	t1,24(sp)
   18bb8:	01c12a23          	sw	t3,20(sp)
   18bbc:	00b12623          	sw	a1,12(sp)
   18bc0:	00c12823          	sw	a2,16(sp)
   18bc4:	4f9000ef          	jal	198bc <_sbrk_r>
   18bc8:	00050713          	mv	a4,a0
   18bcc:	fff00513          	li	a0,-1
   18bd0:	00c12583          	lw	a1,12(sp)
   18bd4:	01412e03          	lw	t3,20(sp)
   18bd8:	01812303          	lw	t1,24(sp)
   18bdc:	01c12683          	lw	a3,28(sp)
   18be0:	02012783          	lw	a5,32(sp)
   18be4:	02412e83          	lw	t4,36(sp)
   18be8:	02812803          	lw	a6,40(sp)
   18bec:	c6a716e3          	bne	a4,a0,18858 <_malloc_r+0x3a0>
   18bf0:	01012703          	lw	a4,16(sp)
   18bf4:	00000593          	li	a1,0
   18bf8:	c61ff06f          	j	18858 <_malloc_r+0x3a0>
   18bfc:	05400593          	li	a1,84
   18c00:	06c5ec63          	bltu	a1,a2,18c78 <_malloc_r+0x7c0>
   18c04:	00c75613          	srli	a2,a4,0xc
   18c08:	06f60513          	addi	a0,a2,111
   18c0c:	00351513          	slli	a0,a0,0x3
   18c10:	06e60593          	addi	a1,a2,110
   18c14:	d75ff06f          	j	18988 <_malloc_r+0x4d0>
   18c18:	15400713          	li	a4,340
   18c1c:	06f76c63          	bltu	a4,a5,18c94 <_malloc_r+0x7dc>
   18c20:	00f6d793          	srli	a5,a3,0xf
   18c24:	07878893          	addi	a7,a5,120
   18c28:	07778e13          	addi	t3,a5,119
   18c2c:	00389513          	slli	a0,a7,0x3
   18c30:	97dff06f          	j	185ac <_malloc_r+0xf4>
   18c34:	10018e93          	addi	t4,gp,256 # 1cbf0 <__malloc_current_mallinfo>
   18c38:	000ea603          	lw	a2,0(t4)
   18c3c:	00c58633          	add	a2,a1,a2
   18c40:	00cea023          	sw	a2,0(t4)
   18c44:	b75ff06f          	j	187b8 <_malloc_r+0x300>
   18c48:	01451513          	slli	a0,a0,0x14
   18c4c:	b60516e3          	bnez	a0,187b8 <_malloc_r+0x300>
   18c50:	00882e03          	lw	t3,8(a6)
   18c54:	00b305b3          	add	a1,t1,a1
   18c58:	0015e713          	ori	a4,a1,1
   18c5c:	00ee2223          	sw	a4,4(t3)
   18c60:	c55ff06f          	j	188b4 <_malloc_r+0x3fc>
   18c64:	f7c1a023          	sw	t3,-160(gp) # 1ca50 <__malloc_sbrk_base>
   18c68:	b69ff06f          	j	187d0 <_malloc_r+0x318>
   18c6c:	00100793          	li	a5,1
   18c70:	00fe2223          	sw	a5,4(t3)
   18c74:	e8dff06f          	j	18b00 <_malloc_r+0x648>
   18c78:	15400593          	li	a1,340
   18c7c:	06c5ec63          	bltu	a1,a2,18cf4 <_malloc_r+0x83c>
   18c80:	00f75613          	srli	a2,a4,0xf
   18c84:	07860513          	addi	a0,a2,120
   18c88:	00351513          	slli	a0,a0,0x3
   18c8c:	07760593          	addi	a1,a2,119
   18c90:	cf9ff06f          	j	18988 <_malloc_r+0x4d0>
   18c94:	55400713          	li	a4,1364
   18c98:	06f76c63          	bltu	a4,a5,18d10 <_malloc_r+0x858>
   18c9c:	0126d793          	srli	a5,a3,0x12
   18ca0:	07d78893          	addi	a7,a5,125
   18ca4:	07c78e13          	addi	t3,a5,124
   18ca8:	00389513          	slli	a0,a7,0x3
   18cac:	901ff06f          	j	185ac <_malloc_r+0xf4>
   18cb0:	ff8f0f13          	addi	t5,t5,-8
   18cb4:	01e60733          	add	a4,a2,t5
   18cb8:	00000593          	li	a1,0
   18cbc:	b9dff06f          	j	18858 <_malloc_r+0x3a0>
   18cc0:	00878593          	addi	a1,a5,8
   18cc4:	00040513          	mv	a0,s0
   18cc8:	01012a23          	sw	a6,20(sp)
   18ccc:	01d12823          	sw	t4,16(sp)
   18cd0:	00d12623          	sw	a3,12(sp)
   18cd4:	cfcff0ef          	jal	181d0 <_free_r>
   18cd8:	01412803          	lw	a6,20(sp)
   18cdc:	01012e83          	lw	t4,16(sp)
   18ce0:	00c12683          	lw	a3,12(sp)
   18ce4:	00882e03          	lw	t3,8(a6)
   18ce8:	000ea603          	lw	a2,0(t4)
   18cec:	004e2703          	lw	a4,4(t3)
   18cf0:	bc5ff06f          	j	188b4 <_malloc_r+0x3fc>
   18cf4:	55400593          	li	a1,1364
   18cf8:	02c5e463          	bltu	a1,a2,18d20 <_malloc_r+0x868>
   18cfc:	01275613          	srli	a2,a4,0x12
   18d00:	07d60513          	addi	a0,a2,125
   18d04:	00351513          	slli	a0,a0,0x3
   18d08:	07c60593          	addi	a1,a2,124
   18d0c:	c7dff06f          	j	18988 <_malloc_r+0x4d0>
   18d10:	3f800513          	li	a0,1016
   18d14:	07f00893          	li	a7,127
   18d18:	07e00e13          	li	t3,126
   18d1c:	891ff06f          	j	185ac <_malloc_r+0xf4>
   18d20:	3f800513          	li	a0,1016
   18d24:	07e00593          	li	a1,126
   18d28:	c61ff06f          	j	18988 <_malloc_r+0x4d0>
   18d2c:	00482783          	lw	a5,4(a6)
   18d30:	e15ff06f          	j	18b44 <_malloc_r+0x68c>

00018d34 <__malloc_lock>:
   18d34:	00008067          	ret

00018d38 <__malloc_unlock>:
   18d38:	00008067          	ret

00018d3c <_realloc_r>:
   18d3c:	1e058863          	beqz	a1,18f2c <_realloc_r+0x1f0>
   18d40:	fe010113          	addi	sp,sp,-32
   18d44:	00812c23          	sw	s0,24(sp)
   18d48:	00912a23          	sw	s1,20(sp)
   18d4c:	00058413          	mv	s0,a1
   18d50:	00112e23          	sw	ra,28(sp)
   18d54:	00050493          	mv	s1,a0
   18d58:	00c12023          	sw	a2,0(sp)
   18d5c:	fd9ff0ef          	jal	18d34 <__malloc_lock>
   18d60:	00012583          	lw	a1,0(sp)
   18d64:	01600713          	li	a4,22
   18d68:	00b58793          	addi	a5,a1,11
   18d6c:	12f77863          	bgeu	a4,a5,18e9c <_realloc_r+0x160>
   18d70:	ff87f793          	andi	a5,a5,-8
   18d74:	00078693          	mv	a3,a5
   18d78:	01f7d713          	srli	a4,a5,0x1f
   18d7c:	1eb7e463          	bltu	a5,a1,18f64 <_realloc_r+0x228>
   18d80:	1e071263          	bnez	a4,18f64 <_realloc_r+0x228>
   18d84:	ffc42603          	lw	a2,-4(s0)
   18d88:	ff840813          	addi	a6,s0,-8
   18d8c:	ffc67713          	andi	a4,a2,-4
   18d90:	12d75863          	bge	a4,a3,18ec0 <_realloc_r+0x184>
   18d94:	0001ce37          	lui	t3,0x1c
   18d98:	440e0e13          	addi	t3,t3,1088 # 1c440 <__malloc_av_>
   18d9c:	008e2883          	lw	a7,8(t3)
   18da0:	00e80333          	add	t1,a6,a4
   18da4:	00432503          	lw	a0,4(t1)
   18da8:	1e688063          	beq	a7,t1,18f88 <_realloc_r+0x24c>
   18dac:	ffe57893          	andi	a7,a0,-2
   18db0:	011308b3          	add	a7,t1,a7
   18db4:	0048a883          	lw	a7,4(a7)
   18db8:	0018f893          	andi	a7,a7,1
   18dbc:	14089a63          	bnez	a7,18f10 <_realloc_r+0x1d4>
   18dc0:	ffc57513          	andi	a0,a0,-4
   18dc4:	00a708b3          	add	a7,a4,a0
   18dc8:	0ed8d263          	bge	a7,a3,18eac <_realloc_r+0x170>
   18dcc:	00167613          	andi	a2,a2,1
   18dd0:	02061463          	bnez	a2,18df8 <_realloc_r+0xbc>
   18dd4:	ff842e83          	lw	t4,-8(s0)
   18dd8:	41d80eb3          	sub	t4,a6,t4
   18ddc:	004ea603          	lw	a2,4(t4)
   18de0:	ffc67613          	andi	a2,a2,-4
   18de4:	00c50533          	add	a0,a0,a2
   18de8:	00e508b3          	add	a7,a0,a4
   18dec:	32d8d463          	bge	a7,a3,19114 <_realloc_r+0x3d8>
   18df0:	00c708b3          	add	a7,a4,a2
   18df4:	28d8dc63          	bge	a7,a3,1908c <_realloc_r+0x350>
   18df8:	00048513          	mv	a0,s1
   18dfc:	00e12423          	sw	a4,8(sp)
   18e00:	01012223          	sw	a6,4(sp)
   18e04:	00f12023          	sw	a5,0(sp)
   18e08:	eb0ff0ef          	jal	184b8 <_malloc_r>
   18e0c:	00012783          	lw	a5,0(sp)
   18e10:	00412803          	lw	a6,4(sp)
   18e14:	00812703          	lw	a4,8(sp)
   18e18:	00050693          	mv	a3,a0
   18e1c:	44050863          	beqz	a0,1926c <_realloc_r+0x530>
   18e20:	ffc42603          	lw	a2,-4(s0)
   18e24:	ff850593          	addi	a1,a0,-8
   18e28:	ffe67613          	andi	a2,a2,-2
   18e2c:	00c80633          	add	a2,a6,a2
   18e30:	22b60463          	beq	a2,a1,19058 <_realloc_r+0x31c>
   18e34:	ffc70613          	addi	a2,a4,-4
   18e38:	02400793          	li	a5,36
   18e3c:	2cc7e263          	bltu	a5,a2,19100 <_realloc_r+0x3c4>
   18e40:	01300713          	li	a4,19
   18e44:	22c76263          	bltu	a4,a2,19068 <_realloc_r+0x32c>
   18e48:	00050793          	mv	a5,a0
   18e4c:	00040713          	mv	a4,s0
   18e50:	00072603          	lw	a2,0(a4)
   18e54:	00c7a023          	sw	a2,0(a5)
   18e58:	00472603          	lw	a2,4(a4)
   18e5c:	00c7a223          	sw	a2,4(a5)
   18e60:	00872703          	lw	a4,8(a4)
   18e64:	00e7a423          	sw	a4,8(a5)
   18e68:	00040593          	mv	a1,s0
   18e6c:	00048513          	mv	a0,s1
   18e70:	00d12023          	sw	a3,0(sp)
   18e74:	b5cff0ef          	jal	181d0 <_free_r>
   18e78:	00048513          	mv	a0,s1
   18e7c:	ebdff0ef          	jal	18d38 <__malloc_unlock>
   18e80:	00012683          	lw	a3,0(sp)
   18e84:	01c12083          	lw	ra,28(sp)
   18e88:	01812403          	lw	s0,24(sp)
   18e8c:	01412483          	lw	s1,20(sp)
   18e90:	00068513          	mv	a0,a3
   18e94:	02010113          	addi	sp,sp,32
   18e98:	00008067          	ret
   18e9c:	01000693          	li	a3,16
   18ea0:	00068793          	mv	a5,a3
   18ea4:	00000713          	li	a4,0
   18ea8:	ed5ff06f          	j	18d7c <_realloc_r+0x40>
   18eac:	00c32683          	lw	a3,12(t1)
   18eb0:	00832603          	lw	a2,8(t1)
   18eb4:	00088713          	mv	a4,a7
   18eb8:	00d62623          	sw	a3,12(a2)
   18ebc:	00c6a423          	sw	a2,8(a3)
   18ec0:	00482683          	lw	a3,4(a6)
   18ec4:	40f70533          	sub	a0,a4,a5
   18ec8:	00f00593          	li	a1,15
   18ecc:	0016f693          	andi	a3,a3,1
   18ed0:	00e80633          	add	a2,a6,a4
   18ed4:	06a5e063          	bltu	a1,a0,18f34 <_realloc_r+0x1f8>
   18ed8:	00d766b3          	or	a3,a4,a3
   18edc:	00d82223          	sw	a3,4(a6)
   18ee0:	00462783          	lw	a5,4(a2)
   18ee4:	0017e793          	ori	a5,a5,1
   18ee8:	00f62223          	sw	a5,4(a2)
   18eec:	00048513          	mv	a0,s1
   18ef0:	e49ff0ef          	jal	18d38 <__malloc_unlock>
   18ef4:	00040693          	mv	a3,s0
   18ef8:	01c12083          	lw	ra,28(sp)
   18efc:	01812403          	lw	s0,24(sp)
   18f00:	01412483          	lw	s1,20(sp)
   18f04:	00068513          	mv	a0,a3
   18f08:	02010113          	addi	sp,sp,32
   18f0c:	00008067          	ret
   18f10:	00167613          	andi	a2,a2,1
   18f14:	ee0612e3          	bnez	a2,18df8 <_realloc_r+0xbc>
   18f18:	ff842e83          	lw	t4,-8(s0)
   18f1c:	41d80eb3          	sub	t4,a6,t4
   18f20:	004ea603          	lw	a2,4(t4)
   18f24:	ffc67613          	andi	a2,a2,-4
   18f28:	ec9ff06f          	j	18df0 <_realloc_r+0xb4>
   18f2c:	00060593          	mv	a1,a2
   18f30:	d88ff06f          	j	184b8 <_malloc_r>
   18f34:	00d7e6b3          	or	a3,a5,a3
   18f38:	00d82223          	sw	a3,4(a6)
   18f3c:	00f805b3          	add	a1,a6,a5
   18f40:	00156513          	ori	a0,a0,1
   18f44:	00a5a223          	sw	a0,4(a1)
   18f48:	00462783          	lw	a5,4(a2)
   18f4c:	00858593          	addi	a1,a1,8
   18f50:	00048513          	mv	a0,s1
   18f54:	0017e793          	ori	a5,a5,1
   18f58:	00f62223          	sw	a5,4(a2)
   18f5c:	a74ff0ef          	jal	181d0 <_free_r>
   18f60:	f8dff06f          	j	18eec <_realloc_r+0x1b0>
   18f64:	00c00793          	li	a5,12
   18f68:	00f4a023          	sw	a5,0(s1)
   18f6c:	00000693          	li	a3,0
   18f70:	01c12083          	lw	ra,28(sp)
   18f74:	01812403          	lw	s0,24(sp)
   18f78:	01412483          	lw	s1,20(sp)
   18f7c:	00068513          	mv	a0,a3
   18f80:	02010113          	addi	sp,sp,32
   18f84:	00008067          	ret
   18f88:	ffc57513          	andi	a0,a0,-4
   18f8c:	00e508b3          	add	a7,a0,a4
   18f90:	01078313          	addi	t1,a5,16
   18f94:	2468da63          	bge	a7,t1,191e8 <_realloc_r+0x4ac>
   18f98:	00167613          	andi	a2,a2,1
   18f9c:	e4061ee3          	bnez	a2,18df8 <_realloc_r+0xbc>
   18fa0:	ff842e83          	lw	t4,-8(s0)
   18fa4:	41d80eb3          	sub	t4,a6,t4
   18fa8:	004ea603          	lw	a2,4(t4)
   18fac:	ffc67613          	andi	a2,a2,-4
   18fb0:	00c50533          	add	a0,a0,a2
   18fb4:	00e508b3          	add	a7,a0,a4
   18fb8:	e268cce3          	blt	a7,t1,18df0 <_realloc_r+0xb4>
   18fbc:	00cea683          	lw	a3,12(t4)
   18fc0:	008ea583          	lw	a1,8(t4)
   18fc4:	ffc70613          	addi	a2,a4,-4
   18fc8:	02400713          	li	a4,36
   18fcc:	00d5a623          	sw	a3,12(a1)
   18fd0:	00b6a423          	sw	a1,8(a3)
   18fd4:	008e8693          	addi	a3,t4,8
   18fd8:	2ec76263          	bltu	a4,a2,192bc <_realloc_r+0x580>
   18fdc:	01300593          	li	a1,19
   18fe0:	00068713          	mv	a4,a3
   18fe4:	02c5f263          	bgeu	a1,a2,19008 <_realloc_r+0x2cc>
   18fe8:	00042583          	lw	a1,0(s0)
   18fec:	01b00713          	li	a4,27
   18ff0:	00bea423          	sw	a1,8(t4)
   18ff4:	00442583          	lw	a1,4(s0)
   18ff8:	00bea623          	sw	a1,12(t4)
   18ffc:	30c76a63          	bltu	a4,a2,19310 <_realloc_r+0x5d4>
   19000:	00840413          	addi	s0,s0,8
   19004:	010e8713          	addi	a4,t4,16
   19008:	00042603          	lw	a2,0(s0)
   1900c:	00c72023          	sw	a2,0(a4)
   19010:	00442603          	lw	a2,4(s0)
   19014:	00c72223          	sw	a2,4(a4)
   19018:	00842603          	lw	a2,8(s0)
   1901c:	00c72423          	sw	a2,8(a4)
   19020:	00fe8633          	add	a2,t4,a5
   19024:	40f88733          	sub	a4,a7,a5
   19028:	00ce2423          	sw	a2,8(t3)
   1902c:	00176713          	ori	a4,a4,1
   19030:	00e62223          	sw	a4,4(a2)
   19034:	004ea703          	lw	a4,4(t4)
   19038:	00048513          	mv	a0,s1
   1903c:	00d12023          	sw	a3,0(sp)
   19040:	00177713          	andi	a4,a4,1
   19044:	00f767b3          	or	a5,a4,a5
   19048:	00fea223          	sw	a5,4(t4)
   1904c:	cedff0ef          	jal	18d38 <__malloc_unlock>
   19050:	00012683          	lw	a3,0(sp)
   19054:	ea5ff06f          	j	18ef8 <_realloc_r+0x1bc>
   19058:	ffc52683          	lw	a3,-4(a0)
   1905c:	ffc6f693          	andi	a3,a3,-4
   19060:	00d70733          	add	a4,a4,a3
   19064:	e5dff06f          	j	18ec0 <_realloc_r+0x184>
   19068:	00042583          	lw	a1,0(s0)
   1906c:	01b00713          	li	a4,27
   19070:	00b52023          	sw	a1,0(a0)
   19074:	00442583          	lw	a1,4(s0)
   19078:	00b52223          	sw	a1,4(a0)
   1907c:	10c76e63          	bltu	a4,a2,19198 <_realloc_r+0x45c>
   19080:	00840713          	addi	a4,s0,8
   19084:	00850793          	addi	a5,a0,8
   19088:	dc9ff06f          	j	18e50 <_realloc_r+0x114>
   1908c:	00cea683          	lw	a3,12(t4)
   19090:	008ea583          	lw	a1,8(t4)
   19094:	ffc70613          	addi	a2,a4,-4
   19098:	02400513          	li	a0,36
   1909c:	00d5a623          	sw	a3,12(a1)
   190a0:	00b6a423          	sw	a1,8(a3)
   190a4:	008e8693          	addi	a3,t4,8
   190a8:	10c56863          	bltu	a0,a2,191b8 <_realloc_r+0x47c>
   190ac:	01300593          	li	a1,19
   190b0:	00068713          	mv	a4,a3
   190b4:	02c5f263          	bgeu	a1,a2,190d8 <_realloc_r+0x39c>
   190b8:	00042583          	lw	a1,0(s0)
   190bc:	01b00713          	li	a4,27
   190c0:	00bea423          	sw	a1,8(t4)
   190c4:	00442583          	lw	a1,4(s0)
   190c8:	00bea623          	sw	a1,12(t4)
   190cc:	18c76063          	bltu	a4,a2,1924c <_realloc_r+0x510>
   190d0:	00840413          	addi	s0,s0,8
   190d4:	010e8713          	addi	a4,t4,16
   190d8:	00042603          	lw	a2,0(s0)
   190dc:	00c72023          	sw	a2,0(a4)
   190e0:	00442603          	lw	a2,4(s0)
   190e4:	00c72223          	sw	a2,4(a4)
   190e8:	00842603          	lw	a2,8(s0)
   190ec:	00c72423          	sw	a2,8(a4)
   190f0:	00068413          	mv	s0,a3
   190f4:	00088713          	mv	a4,a7
   190f8:	000e8813          	mv	a6,t4
   190fc:	dc5ff06f          	j	18ec0 <_realloc_r+0x184>
   19100:	00040593          	mv	a1,s0
   19104:	00a12023          	sw	a0,0(sp)
   19108:	b65fe0ef          	jal	17c6c <memmove>
   1910c:	00012683          	lw	a3,0(sp)
   19110:	d59ff06f          	j	18e68 <_realloc_r+0x12c>
   19114:	00c32683          	lw	a3,12(t1)
   19118:	00832583          	lw	a1,8(t1)
   1911c:	ffc70613          	addi	a2,a4,-4
   19120:	02400513          	li	a0,36
   19124:	00d5a623          	sw	a3,12(a1)
   19128:	00b6a423          	sw	a1,8(a3)
   1912c:	00cea703          	lw	a4,12(t4)
   19130:	008ea683          	lw	a3,8(t4)
   19134:	008e8813          	addi	a6,t4,8
   19138:	00e6a623          	sw	a4,12(a3)
   1913c:	00d72423          	sw	a3,8(a4)
   19140:	0cc56e63          	bltu	a0,a2,1921c <_realloc_r+0x4e0>
   19144:	01300693          	li	a3,19
   19148:	00080713          	mv	a4,a6
   1914c:	02c6f263          	bgeu	a3,a2,19170 <_realloc_r+0x434>
   19150:	00042683          	lw	a3,0(s0)
   19154:	01b00713          	li	a4,27
   19158:	00dea423          	sw	a3,8(t4)
   1915c:	00442683          	lw	a3,4(s0)
   19160:	00dea623          	sw	a3,12(t4)
   19164:	12c76a63          	bltu	a4,a2,19298 <_realloc_r+0x55c>
   19168:	00840413          	addi	s0,s0,8
   1916c:	010e8713          	addi	a4,t4,16
   19170:	00042683          	lw	a3,0(s0)
   19174:	00d72023          	sw	a3,0(a4)
   19178:	00442683          	lw	a3,4(s0)
   1917c:	00d72223          	sw	a3,4(a4)
   19180:	00842683          	lw	a3,8(s0)
   19184:	00d72423          	sw	a3,8(a4)
   19188:	00080413          	mv	s0,a6
   1918c:	00088713          	mv	a4,a7
   19190:	000e8813          	mv	a6,t4
   19194:	d2dff06f          	j	18ec0 <_realloc_r+0x184>
   19198:	00842703          	lw	a4,8(s0)
   1919c:	00e52423          	sw	a4,8(a0)
   191a0:	00c42703          	lw	a4,12(s0)
   191a4:	00e52623          	sw	a4,12(a0)
   191a8:	0cf60a63          	beq	a2,a5,1927c <_realloc_r+0x540>
   191ac:	01040713          	addi	a4,s0,16
   191b0:	01050793          	addi	a5,a0,16
   191b4:	c9dff06f          	j	18e50 <_realloc_r+0x114>
   191b8:	00068513          	mv	a0,a3
   191bc:	00040593          	mv	a1,s0
   191c0:	01d12623          	sw	t4,12(sp)
   191c4:	00f12423          	sw	a5,8(sp)
   191c8:	01112223          	sw	a7,4(sp)
   191cc:	00d12023          	sw	a3,0(sp)
   191d0:	a9dfe0ef          	jal	17c6c <memmove>
   191d4:	00c12e83          	lw	t4,12(sp)
   191d8:	00812783          	lw	a5,8(sp)
   191dc:	00412883          	lw	a7,4(sp)
   191e0:	00012683          	lw	a3,0(sp)
   191e4:	f0dff06f          	j	190f0 <_realloc_r+0x3b4>
   191e8:	00f80833          	add	a6,a6,a5
   191ec:	40f88733          	sub	a4,a7,a5
   191f0:	010e2423          	sw	a6,8(t3)
   191f4:	00176713          	ori	a4,a4,1
   191f8:	00e82223          	sw	a4,4(a6)
   191fc:	ffc42703          	lw	a4,-4(s0)
   19200:	00048513          	mv	a0,s1
   19204:	00177713          	andi	a4,a4,1
   19208:	00f767b3          	or	a5,a4,a5
   1920c:	fef42e23          	sw	a5,-4(s0)
   19210:	b29ff0ef          	jal	18d38 <__malloc_unlock>
   19214:	00040693          	mv	a3,s0
   19218:	ce1ff06f          	j	18ef8 <_realloc_r+0x1bc>
   1921c:	00080513          	mv	a0,a6
   19220:	00040593          	mv	a1,s0
   19224:	01d12623          	sw	t4,12(sp)
   19228:	00f12423          	sw	a5,8(sp)
   1922c:	01112223          	sw	a7,4(sp)
   19230:	01012023          	sw	a6,0(sp)
   19234:	a39fe0ef          	jal	17c6c <memmove>
   19238:	00012803          	lw	a6,0(sp)
   1923c:	00412883          	lw	a7,4(sp)
   19240:	00812783          	lw	a5,8(sp)
   19244:	00c12e83          	lw	t4,12(sp)
   19248:	f41ff06f          	j	19188 <_realloc_r+0x44c>
   1924c:	00842703          	lw	a4,8(s0)
   19250:	00eea823          	sw	a4,16(t4)
   19254:	00c42703          	lw	a4,12(s0)
   19258:	00eeaa23          	sw	a4,20(t4)
   1925c:	08a60c63          	beq	a2,a0,192f4 <_realloc_r+0x5b8>
   19260:	01040413          	addi	s0,s0,16
   19264:	018e8713          	addi	a4,t4,24
   19268:	e71ff06f          	j	190d8 <_realloc_r+0x39c>
   1926c:	00048513          	mv	a0,s1
   19270:	ac9ff0ef          	jal	18d38 <__malloc_unlock>
   19274:	00000693          	li	a3,0
   19278:	cf9ff06f          	j	18f70 <_realloc_r+0x234>
   1927c:	01042603          	lw	a2,16(s0)
   19280:	01840713          	addi	a4,s0,24
   19284:	01850793          	addi	a5,a0,24
   19288:	00c52823          	sw	a2,16(a0)
   1928c:	01442603          	lw	a2,20(s0)
   19290:	00c52a23          	sw	a2,20(a0)
   19294:	bbdff06f          	j	18e50 <_realloc_r+0x114>
   19298:	00842683          	lw	a3,8(s0)
   1929c:	02400713          	li	a4,36
   192a0:	00dea823          	sw	a3,16(t4)
   192a4:	00c42683          	lw	a3,12(s0)
   192a8:	00deaa23          	sw	a3,20(t4)
   192ac:	08e60463          	beq	a2,a4,19334 <_realloc_r+0x5f8>
   192b0:	01040413          	addi	s0,s0,16
   192b4:	018e8713          	addi	a4,t4,24
   192b8:	eb9ff06f          	j	19170 <_realloc_r+0x434>
   192bc:	00068513          	mv	a0,a3
   192c0:	00040593          	mv	a1,s0
   192c4:	01d12623          	sw	t4,12(sp)
   192c8:	00f12423          	sw	a5,8(sp)
   192cc:	01112223          	sw	a7,4(sp)
   192d0:	00d12023          	sw	a3,0(sp)
   192d4:	999fe0ef          	jal	17c6c <memmove>
   192d8:	0001c7b7          	lui	a5,0x1c
   192dc:	44078e13          	addi	t3,a5,1088 # 1c440 <__malloc_av_>
   192e0:	00c12e83          	lw	t4,12(sp)
   192e4:	00812783          	lw	a5,8(sp)
   192e8:	00412883          	lw	a7,4(sp)
   192ec:	00012683          	lw	a3,0(sp)
   192f0:	d31ff06f          	j	19020 <_realloc_r+0x2e4>
   192f4:	01042603          	lw	a2,16(s0)
   192f8:	020e8713          	addi	a4,t4,32
   192fc:	01840413          	addi	s0,s0,24
   19300:	00ceac23          	sw	a2,24(t4)
   19304:	ffc42603          	lw	a2,-4(s0)
   19308:	00ceae23          	sw	a2,28(t4)
   1930c:	dcdff06f          	j	190d8 <_realloc_r+0x39c>
   19310:	00842583          	lw	a1,8(s0)
   19314:	02400713          	li	a4,36
   19318:	00bea823          	sw	a1,16(t4)
   1931c:	00c42583          	lw	a1,12(s0)
   19320:	00beaa23          	sw	a1,20(t4)
   19324:	02e60663          	beq	a2,a4,19350 <_realloc_r+0x614>
   19328:	01040413          	addi	s0,s0,16
   1932c:	018e8713          	addi	a4,t4,24
   19330:	cd9ff06f          	j	19008 <_realloc_r+0x2cc>
   19334:	01042683          	lw	a3,16(s0)
   19338:	020e8713          	addi	a4,t4,32
   1933c:	01840413          	addi	s0,s0,24
   19340:	00deac23          	sw	a3,24(t4)
   19344:	ffc42683          	lw	a3,-4(s0)
   19348:	00deae23          	sw	a3,28(t4)
   1934c:	e25ff06f          	j	19170 <_realloc_r+0x434>
   19350:	01042603          	lw	a2,16(s0)
   19354:	020e8713          	addi	a4,t4,32
   19358:	01840413          	addi	s0,s0,24
   1935c:	00ceac23          	sw	a2,24(t4)
   19360:	ffc42603          	lw	a2,-4(s0)
   19364:	00ceae23          	sw	a2,28(t4)
   19368:	ca1ff06f          	j	19008 <_realloc_r+0x2cc>

0001936c <_fclose_r>:
   1936c:	ff010113          	addi	sp,sp,-16
   19370:	00112623          	sw	ra,12(sp)
   19374:	01212023          	sw	s2,0(sp)
   19378:	02058863          	beqz	a1,193a8 <_fclose_r+0x3c>
   1937c:	00812423          	sw	s0,8(sp)
   19380:	00912223          	sw	s1,4(sp)
   19384:	00058413          	mv	s0,a1
   19388:	00050493          	mv	s1,a0
   1938c:	00050663          	beqz	a0,19398 <_fclose_r+0x2c>
   19390:	03452783          	lw	a5,52(a0)
   19394:	0c078c63          	beqz	a5,1946c <_fclose_r+0x100>
   19398:	00c41783          	lh	a5,12(s0)
   1939c:	02079263          	bnez	a5,193c0 <_fclose_r+0x54>
   193a0:	00812403          	lw	s0,8(sp)
   193a4:	00412483          	lw	s1,4(sp)
   193a8:	00c12083          	lw	ra,12(sp)
   193ac:	00000913          	li	s2,0
   193b0:	00090513          	mv	a0,s2
   193b4:	00012903          	lw	s2,0(sp)
   193b8:	01010113          	addi	sp,sp,16
   193bc:	00008067          	ret
   193c0:	00040593          	mv	a1,s0
   193c4:	00048513          	mv	a0,s1
   193c8:	fedfc0ef          	jal	163b4 <__sflush_r>
   193cc:	02c42783          	lw	a5,44(s0)
   193d0:	00050913          	mv	s2,a0
   193d4:	00078a63          	beqz	a5,193e8 <_fclose_r+0x7c>
   193d8:	01c42583          	lw	a1,28(s0)
   193dc:	00048513          	mv	a0,s1
   193e0:	000780e7          	jalr	a5
   193e4:	06054463          	bltz	a0,1944c <_fclose_r+0xe0>
   193e8:	00c45783          	lhu	a5,12(s0)
   193ec:	0807f793          	andi	a5,a5,128
   193f0:	06079663          	bnez	a5,1945c <_fclose_r+0xf0>
   193f4:	03042583          	lw	a1,48(s0)
   193f8:	00058c63          	beqz	a1,19410 <_fclose_r+0xa4>
   193fc:	04040793          	addi	a5,s0,64
   19400:	00f58663          	beq	a1,a5,1940c <_fclose_r+0xa0>
   19404:	00048513          	mv	a0,s1
   19408:	dc9fe0ef          	jal	181d0 <_free_r>
   1940c:	02042823          	sw	zero,48(s0)
   19410:	04442583          	lw	a1,68(s0)
   19414:	00058863          	beqz	a1,19424 <_fclose_r+0xb8>
   19418:	00048513          	mv	a0,s1
   1941c:	db5fe0ef          	jal	181d0 <_free_r>
   19420:	04042223          	sw	zero,68(s0)
   19424:	e14fd0ef          	jal	16a38 <__sfp_lock_acquire>
   19428:	00041623          	sh	zero,12(s0)
   1942c:	e10fd0ef          	jal	16a3c <__sfp_lock_release>
   19430:	00c12083          	lw	ra,12(sp)
   19434:	00812403          	lw	s0,8(sp)
   19438:	00412483          	lw	s1,4(sp)
   1943c:	00090513          	mv	a0,s2
   19440:	00012903          	lw	s2,0(sp)
   19444:	01010113          	addi	sp,sp,16
   19448:	00008067          	ret
   1944c:	00c45783          	lhu	a5,12(s0)
   19450:	fff00913          	li	s2,-1
   19454:	0807f793          	andi	a5,a5,128
   19458:	f8078ee3          	beqz	a5,193f4 <_fclose_r+0x88>
   1945c:	01042583          	lw	a1,16(s0)
   19460:	00048513          	mv	a0,s1
   19464:	d6dfe0ef          	jal	181d0 <_free_r>
   19468:	f8dff06f          	j	193f4 <_fclose_r+0x88>
   1946c:	da8fd0ef          	jal	16a14 <__sinit>
   19470:	f29ff06f          	j	19398 <_fclose_r+0x2c>

00019474 <fclose>:
   19474:	00050593          	mv	a1,a0
   19478:	f5c1a503          	lw	a0,-164(gp) # 1ca4c <_impure_ptr>
   1947c:	ef1ff06f          	j	1936c <_fclose_r>

00019480 <__smakebuf_r>:
   19480:	00c59783          	lh	a5,12(a1)
   19484:	0027f713          	andi	a4,a5,2
   19488:	00070e63          	beqz	a4,194a4 <__smakebuf_r+0x24>
   1948c:	04358793          	addi	a5,a1,67
   19490:	00100713          	li	a4,1
   19494:	00f5a023          	sw	a5,0(a1)
   19498:	00f5a823          	sw	a5,16(a1)
   1949c:	00e5aa23          	sw	a4,20(a1)
   194a0:	00008067          	ret
   194a4:	00058713          	mv	a4,a1
   194a8:	00e59583          	lh	a1,14(a1)
   194ac:	f8010113          	addi	sp,sp,-128
   194b0:	06812c23          	sw	s0,120(sp)
   194b4:	06112e23          	sw	ra,124(sp)
   194b8:	00050413          	mv	s0,a0
   194bc:	0805ce63          	bltz	a1,19558 <__smakebuf_r+0xd8>
   194c0:	01810613          	addi	a2,sp,24
   194c4:	00e12423          	sw	a4,8(sp)
   194c8:	334000ef          	jal	197fc <_fstat_r>
   194cc:	00812703          	lw	a4,8(sp)
   194d0:	08054263          	bltz	a0,19554 <__smakebuf_r+0xd4>
   194d4:	40000593          	li	a1,1024
   194d8:	00040513          	mv	a0,s0
   194dc:	06912a23          	sw	s1,116(sp)
   194e0:	00e12423          	sw	a4,8(sp)
   194e4:	01c12483          	lw	s1,28(sp)
   194e8:	fd1fe0ef          	jal	184b8 <_malloc_r>
   194ec:	00812703          	lw	a4,8(sp)
   194f0:	00c71783          	lh	a5,12(a4)
   194f4:	0c050263          	beqz	a0,195b8 <__smakebuf_r+0x138>
   194f8:	40000693          	li	a3,1024
   194fc:	0807e793          	ori	a5,a5,128
   19500:	00d72a23          	sw	a3,20(a4)
   19504:	40c4d693          	srai	a3,s1,0xc
   19508:	00f71623          	sh	a5,12(a4)
   1950c:	00a72023          	sw	a0,0(a4)
   19510:	00a72823          	sw	a0,16(a4)
   19514:	00f6f693          	andi	a3,a3,15
   19518:	00200613          	li	a2,2
   1951c:	0cc69663          	bne	a3,a2,195e8 <__smakebuf_r+0x168>
   19520:	00e71583          	lh	a1,14(a4)
   19524:	00040513          	mv	a0,s0
   19528:	00e12423          	sw	a4,8(sp)
   1952c:	334000ef          	jal	19860 <_isatty_r>
   19530:	00812703          	lw	a4,8(sp)
   19534:	00c71783          	lh	a5,12(a4)
   19538:	0a050863          	beqz	a0,195e8 <__smakebuf_r+0x168>
   1953c:	ffc7f793          	andi	a5,a5,-4
   19540:	000016b7          	lui	a3,0x1
   19544:	07412483          	lw	s1,116(sp)
   19548:	0017e793          	ori	a5,a5,1
   1954c:	80068693          	addi	a3,a3,-2048 # 800 <exit-0xf8b4>
   19550:	0500006f          	j	195a0 <__smakebuf_r+0x120>
   19554:	00c71783          	lh	a5,12(a4)
   19558:	0807f793          	andi	a5,a5,128
   1955c:	0017b793          	seqz	a5,a5
   19560:	40f007b3          	neg	a5,a5
   19564:	3c07f593          	andi	a1,a5,960
   19568:	04058593          	addi	a1,a1,64
   1956c:	00040513          	mv	a0,s0
   19570:	00e12623          	sw	a4,12(sp)
   19574:	00b12423          	sw	a1,8(sp)
   19578:	f41fe0ef          	jal	184b8 <_malloc_r>
   1957c:	00c12703          	lw	a4,12(sp)
   19580:	00812583          	lw	a1,8(sp)
   19584:	00c71783          	lh	a5,12(a4)
   19588:	02050a63          	beqz	a0,195bc <__smakebuf_r+0x13c>
   1958c:	0807e793          	ori	a5,a5,128
   19590:	00a72023          	sw	a0,0(a4)
   19594:	00a72823          	sw	a0,16(a4)
   19598:	00b72a23          	sw	a1,20(a4)
   1959c:	00000693          	li	a3,0
   195a0:	00d7e7b3          	or	a5,a5,a3
   195a4:	00f71623          	sh	a5,12(a4)
   195a8:	07c12083          	lw	ra,124(sp)
   195ac:	07812403          	lw	s0,120(sp)
   195b0:	08010113          	addi	sp,sp,128
   195b4:	00008067          	ret
   195b8:	07412483          	lw	s1,116(sp)
   195bc:	2007f693          	andi	a3,a5,512
   195c0:	fe0694e3          	bnez	a3,195a8 <__smakebuf_r+0x128>
   195c4:	ffc7f793          	andi	a5,a5,-4
   195c8:	04370693          	addi	a3,a4,67
   195cc:	0027e793          	ori	a5,a5,2
   195d0:	00100613          	li	a2,1
   195d4:	00f71623          	sh	a5,12(a4)
   195d8:	00d72023          	sw	a3,0(a4)
   195dc:	00d72823          	sw	a3,16(a4)
   195e0:	00c72a23          	sw	a2,20(a4)
   195e4:	fc5ff06f          	j	195a8 <__smakebuf_r+0x128>
   195e8:	000016b7          	lui	a3,0x1
   195ec:	07412483          	lw	s1,116(sp)
   195f0:	80068693          	addi	a3,a3,-2048 # 800 <exit-0xf8b4>
   195f4:	fadff06f          	j	195a0 <__smakebuf_r+0x120>

000195f8 <__swhatbuf_r>:
   195f8:	00058793          	mv	a5,a1
   195fc:	00e59583          	lh	a1,14(a1)
   19600:	00060713          	mv	a4,a2
   19604:	0805ca63          	bltz	a1,19698 <__swhatbuf_r+0xa0>
   19608:	f8010113          	addi	sp,sp,-128
   1960c:	00c12423          	sw	a2,8(sp)
   19610:	01810613          	addi	a2,sp,24
   19614:	00d12623          	sw	a3,12(sp)
   19618:	00f12223          	sw	a5,4(sp)
   1961c:	06112e23          	sw	ra,124(sp)
   19620:	1dc000ef          	jal	197fc <_fstat_r>
   19624:	00412783          	lw	a5,4(sp)
   19628:	00812703          	lw	a4,8(sp)
   1962c:	00c12683          	lw	a3,12(sp)
   19630:	02054e63          	bltz	a0,1966c <__swhatbuf_r+0x74>
   19634:	01c12783          	lw	a5,28(sp)
   19638:	0000f5b7          	lui	a1,0xf
   1963c:	ffffe637          	lui	a2,0xffffe
   19640:	00b7f7b3          	and	a5,a5,a1
   19644:	00c787b3          	add	a5,a5,a2
   19648:	07c12083          	lw	ra,124(sp)
   1964c:	0017b793          	seqz	a5,a5
   19650:	00f6a023          	sw	a5,0(a3)
   19654:	40000613          	li	a2,1024
   19658:	00001537          	lui	a0,0x1
   1965c:	00c72023          	sw	a2,0(a4)
   19660:	80050513          	addi	a0,a0,-2048 # 800 <exit-0xf8b4>
   19664:	08010113          	addi	sp,sp,128
   19668:	00008067          	ret
   1966c:	00c7d783          	lhu	a5,12(a5)
   19670:	0807f793          	andi	a5,a5,128
   19674:	04078263          	beqz	a5,196b8 <__swhatbuf_r+0xc0>
   19678:	07c12083          	lw	ra,124(sp)
   1967c:	00000793          	li	a5,0
   19680:	00f6a023          	sw	a5,0(a3)
   19684:	04000613          	li	a2,64
   19688:	00c72023          	sw	a2,0(a4)
   1968c:	00000513          	li	a0,0
   19690:	08010113          	addi	sp,sp,128
   19694:	00008067          	ret
   19698:	00c7d783          	lhu	a5,12(a5)
   1969c:	0807f793          	andi	a5,a5,128
   196a0:	02079a63          	bnez	a5,196d4 <__swhatbuf_r+0xdc>
   196a4:	40000613          	li	a2,1024
   196a8:	00f6a023          	sw	a5,0(a3)
   196ac:	00000513          	li	a0,0
   196b0:	00c72023          	sw	a2,0(a4)
   196b4:	00008067          	ret
   196b8:	07c12083          	lw	ra,124(sp)
   196bc:	00f6a023          	sw	a5,0(a3)
   196c0:	40000613          	li	a2,1024
   196c4:	00c72023          	sw	a2,0(a4)
   196c8:	00000513          	li	a0,0
   196cc:	08010113          	addi	sp,sp,128
   196d0:	00008067          	ret
   196d4:	00000793          	li	a5,0
   196d8:	04000613          	li	a2,64
   196dc:	00f6a023          	sw	a5,0(a3)
   196e0:	00000513          	li	a0,0
   196e4:	00c72023          	sw	a2,0(a4)
   196e8:	00008067          	ret

000196ec <_setlocale_r>:
   196ec:	04060063          	beqz	a2,1972c <_setlocale_r+0x40>
   196f0:	0001b5b7          	lui	a1,0x1b
   196f4:	fe010113          	addi	sp,sp,-32
   196f8:	a6858593          	addi	a1,a1,-1432 # 1aa68 <_exit+0x234>
   196fc:	00060513          	mv	a0,a2
   19700:	00812c23          	sw	s0,24(sp)
   19704:	00112e23          	sw	ra,28(sp)
   19708:	00060413          	mv	s0,a2
   1970c:	268000ef          	jal	19974 <strcmp>
   19710:	0001b7b7          	lui	a5,0x1b
   19714:	02051263          	bnez	a0,19738 <_setlocale_r+0x4c>
   19718:	a6478513          	addi	a0,a5,-1436 # 1aa64 <_exit+0x230>
   1971c:	01c12083          	lw	ra,28(sp)
   19720:	01812403          	lw	s0,24(sp)
   19724:	02010113          	addi	sp,sp,32
   19728:	00008067          	ret
   1972c:	0001b7b7          	lui	a5,0x1b
   19730:	a6478513          	addi	a0,a5,-1436 # 1aa64 <_exit+0x230>
   19734:	00008067          	ret
   19738:	a6478593          	addi	a1,a5,-1436
   1973c:	00040513          	mv	a0,s0
   19740:	00f12623          	sw	a5,12(sp)
   19744:	230000ef          	jal	19974 <strcmp>
   19748:	00c12783          	lw	a5,12(sp)
   1974c:	fc0506e3          	beqz	a0,19718 <_setlocale_r+0x2c>
   19750:	0001b5b7          	lui	a1,0x1b
   19754:	00040513          	mv	a0,s0
   19758:	a0058593          	addi	a1,a1,-1536 # 1aa00 <_exit+0x1cc>
   1975c:	218000ef          	jal	19974 <strcmp>
   19760:	00c12783          	lw	a5,12(sp)
   19764:	fa050ae3          	beqz	a0,19718 <_setlocale_r+0x2c>
   19768:	00000513          	li	a0,0
   1976c:	fb1ff06f          	j	1971c <_setlocale_r+0x30>

00019770 <__locale_mb_cur_max>:
   19770:	e801c503          	lbu	a0,-384(gp) # 1c970 <__global_locale+0x128>
   19774:	00008067          	ret

00019778 <setlocale>:
   19778:	04058063          	beqz	a1,197b8 <setlocale+0x40>
   1977c:	fe010113          	addi	sp,sp,-32
   19780:	00812c23          	sw	s0,24(sp)
   19784:	00058513          	mv	a0,a1
   19788:	00058413          	mv	s0,a1
   1978c:	0001b5b7          	lui	a1,0x1b
   19790:	a6858593          	addi	a1,a1,-1432 # 1aa68 <_exit+0x234>
   19794:	00112e23          	sw	ra,28(sp)
   19798:	1dc000ef          	jal	19974 <strcmp>
   1979c:	0001b7b7          	lui	a5,0x1b
   197a0:	02051263          	bnez	a0,197c4 <setlocale+0x4c>
   197a4:	a6478513          	addi	a0,a5,-1436 # 1aa64 <_exit+0x230>
   197a8:	01c12083          	lw	ra,28(sp)
   197ac:	01812403          	lw	s0,24(sp)
   197b0:	02010113          	addi	sp,sp,32
   197b4:	00008067          	ret
   197b8:	0001b7b7          	lui	a5,0x1b
   197bc:	a6478513          	addi	a0,a5,-1436 # 1aa64 <_exit+0x230>
   197c0:	00008067          	ret
   197c4:	a6478593          	addi	a1,a5,-1436
   197c8:	00040513          	mv	a0,s0
   197cc:	00f12623          	sw	a5,12(sp)
   197d0:	1a4000ef          	jal	19974 <strcmp>
   197d4:	00c12783          	lw	a5,12(sp)
   197d8:	fc0506e3          	beqz	a0,197a4 <setlocale+0x2c>
   197dc:	0001b5b7          	lui	a1,0x1b
   197e0:	00040513          	mv	a0,s0
   197e4:	a0058593          	addi	a1,a1,-1536 # 1aa00 <_exit+0x1cc>
   197e8:	18c000ef          	jal	19974 <strcmp>
   197ec:	00c12783          	lw	a5,12(sp)
   197f0:	fa050ae3          	beqz	a0,197a4 <setlocale+0x2c>
   197f4:	00000513          	li	a0,0
   197f8:	fb1ff06f          	j	197a8 <setlocale+0x30>

000197fc <_fstat_r>:
   197fc:	ff010113          	addi	sp,sp,-16
   19800:	00058793          	mv	a5,a1
   19804:	00812423          	sw	s0,8(sp)
   19808:	00912223          	sw	s1,4(sp)
   1980c:	00060593          	mv	a1,a2
   19810:	00050493          	mv	s1,a0
   19814:	00078513          	mv	a0,a5
   19818:	00112623          	sw	ra,12(sp)
   1981c:	f601a623          	sw	zero,-148(gp) # 1ca5c <errno>
   19820:	775000ef          	jal	1a794 <_fstat>
   19824:	fff00793          	li	a5,-1
   19828:	00f50c63          	beq	a0,a5,19840 <_fstat_r+0x44>
   1982c:	00c12083          	lw	ra,12(sp)
   19830:	00812403          	lw	s0,8(sp)
   19834:	00412483          	lw	s1,4(sp)
   19838:	01010113          	addi	sp,sp,16
   1983c:	00008067          	ret
   19840:	f6c1a783          	lw	a5,-148(gp) # 1ca5c <errno>
   19844:	fe0784e3          	beqz	a5,1982c <_fstat_r+0x30>
   19848:	00c12083          	lw	ra,12(sp)
   1984c:	00812403          	lw	s0,8(sp)
   19850:	00f4a023          	sw	a5,0(s1)
   19854:	00412483          	lw	s1,4(sp)
   19858:	01010113          	addi	sp,sp,16
   1985c:	00008067          	ret

00019860 <_isatty_r>:
   19860:	ff010113          	addi	sp,sp,-16
   19864:	00812423          	sw	s0,8(sp)
   19868:	00912223          	sw	s1,4(sp)
   1986c:	00050493          	mv	s1,a0
   19870:	00058513          	mv	a0,a1
   19874:	00112623          	sw	ra,12(sp)
   19878:	f601a623          	sw	zero,-148(gp) # 1ca5c <errno>
   1987c:	739000ef          	jal	1a7b4 <_isatty>
   19880:	fff00793          	li	a5,-1
   19884:	00f50c63          	beq	a0,a5,1989c <_isatty_r+0x3c>
   19888:	00c12083          	lw	ra,12(sp)
   1988c:	00812403          	lw	s0,8(sp)
   19890:	00412483          	lw	s1,4(sp)
   19894:	01010113          	addi	sp,sp,16
   19898:	00008067          	ret
   1989c:	f6c1a783          	lw	a5,-148(gp) # 1ca5c <errno>
   198a0:	fe0784e3          	beqz	a5,19888 <_isatty_r+0x28>
   198a4:	00c12083          	lw	ra,12(sp)
   198a8:	00812403          	lw	s0,8(sp)
   198ac:	00f4a023          	sw	a5,0(s1)
   198b0:	00412483          	lw	s1,4(sp)
   198b4:	01010113          	addi	sp,sp,16
   198b8:	00008067          	ret

000198bc <_sbrk_r>:
   198bc:	ff010113          	addi	sp,sp,-16
   198c0:	00812423          	sw	s0,8(sp)
   198c4:	00912223          	sw	s1,4(sp)
   198c8:	00050493          	mv	s1,a0
   198cc:	00058513          	mv	a0,a1
   198d0:	00112623          	sw	ra,12(sp)
   198d4:	f601a623          	sw	zero,-148(gp) # 1ca5c <errno>
   198d8:	71d000ef          	jal	1a7f4 <_sbrk>
   198dc:	fff00793          	li	a5,-1
   198e0:	00f50c63          	beq	a0,a5,198f8 <_sbrk_r+0x3c>
   198e4:	00c12083          	lw	ra,12(sp)
   198e8:	00812403          	lw	s0,8(sp)
   198ec:	00412483          	lw	s1,4(sp)
   198f0:	01010113          	addi	sp,sp,16
   198f4:	00008067          	ret
   198f8:	f6c1a783          	lw	a5,-148(gp) # 1ca5c <errno>
   198fc:	fe0784e3          	beqz	a5,198e4 <_sbrk_r+0x28>
   19900:	00c12083          	lw	ra,12(sp)
   19904:	00812403          	lw	s0,8(sp)
   19908:	00f4a023          	sw	a5,0(s1)
   1990c:	00412483          	lw	s1,4(sp)
   19910:	01010113          	addi	sp,sp,16
   19914:	00008067          	ret

00019918 <__libc_fini_array>:
   19918:	ff010113          	addi	sp,sp,-16
   1991c:	00812423          	sw	s0,8(sp)
   19920:	0001c7b7          	lui	a5,0x1c
   19924:	0001c437          	lui	s0,0x1c
   19928:	2ec78793          	addi	a5,a5,748 # 1c2ec <__fini_array_end>
   1992c:	2e840413          	addi	s0,s0,744 # 1c2e8 <__do_global_dtors_aux_fini_array_entry>
   19930:	408787b3          	sub	a5,a5,s0
   19934:	00912223          	sw	s1,4(sp)
   19938:	00112623          	sw	ra,12(sp)
   1993c:	4027d493          	srai	s1,a5,0x2
   19940:	02048063          	beqz	s1,19960 <__libc_fini_array+0x48>
   19944:	ffc40413          	addi	s0,s0,-4
   19948:	00f40433          	add	s0,s0,a5
   1994c:	00042783          	lw	a5,0(s0)
   19950:	fff48493          	addi	s1,s1,-1
   19954:	ffc40413          	addi	s0,s0,-4
   19958:	000780e7          	jalr	a5
   1995c:	fe0498e3          	bnez	s1,1994c <__libc_fini_array+0x34>
   19960:	00c12083          	lw	ra,12(sp)
   19964:	00812403          	lw	s0,8(sp)
   19968:	00412483          	lw	s1,4(sp)
   1996c:	01010113          	addi	sp,sp,16
   19970:	00008067          	ret

00019974 <strcmp>:
   19974:	00b56733          	or	a4,a0,a1
   19978:	fff00393          	li	t2,-1
   1997c:	00377713          	andi	a4,a4,3
   19980:	10071063          	bnez	a4,19a80 <strcmp+0x10c>
   19984:	7f7f87b7          	lui	a5,0x7f7f8
   19988:	f7f78793          	addi	a5,a5,-129 # 7f7f7f7f <__BSS_END__+0x7f7db1d7>
   1998c:	00052603          	lw	a2,0(a0)
   19990:	0005a683          	lw	a3,0(a1)
   19994:	00f672b3          	and	t0,a2,a5
   19998:	00f66333          	or	t1,a2,a5
   1999c:	00f282b3          	add	t0,t0,a5
   199a0:	0062e2b3          	or	t0,t0,t1
   199a4:	10729263          	bne	t0,t2,19aa8 <strcmp+0x134>
   199a8:	08d61663          	bne	a2,a3,19a34 <strcmp+0xc0>
   199ac:	00452603          	lw	a2,4(a0)
   199b0:	0045a683          	lw	a3,4(a1)
   199b4:	00f672b3          	and	t0,a2,a5
   199b8:	00f66333          	or	t1,a2,a5
   199bc:	00f282b3          	add	t0,t0,a5
   199c0:	0062e2b3          	or	t0,t0,t1
   199c4:	0c729e63          	bne	t0,t2,19aa0 <strcmp+0x12c>
   199c8:	06d61663          	bne	a2,a3,19a34 <strcmp+0xc0>
   199cc:	00852603          	lw	a2,8(a0)
   199d0:	0085a683          	lw	a3,8(a1)
   199d4:	00f672b3          	and	t0,a2,a5
   199d8:	00f66333          	or	t1,a2,a5
   199dc:	00f282b3          	add	t0,t0,a5
   199e0:	0062e2b3          	or	t0,t0,t1
   199e4:	0c729863          	bne	t0,t2,19ab4 <strcmp+0x140>
   199e8:	04d61663          	bne	a2,a3,19a34 <strcmp+0xc0>
   199ec:	00c52603          	lw	a2,12(a0)
   199f0:	00c5a683          	lw	a3,12(a1)
   199f4:	00f672b3          	and	t0,a2,a5
   199f8:	00f66333          	or	t1,a2,a5
   199fc:	00f282b3          	add	t0,t0,a5
   19a00:	0062e2b3          	or	t0,t0,t1
   19a04:	0c729263          	bne	t0,t2,19ac8 <strcmp+0x154>
   19a08:	02d61663          	bne	a2,a3,19a34 <strcmp+0xc0>
   19a0c:	01052603          	lw	a2,16(a0)
   19a10:	0105a683          	lw	a3,16(a1)
   19a14:	00f672b3          	and	t0,a2,a5
   19a18:	00f66333          	or	t1,a2,a5
   19a1c:	00f282b3          	add	t0,t0,a5
   19a20:	0062e2b3          	or	t0,t0,t1
   19a24:	0a729c63          	bne	t0,t2,19adc <strcmp+0x168>
   19a28:	01450513          	addi	a0,a0,20
   19a2c:	01458593          	addi	a1,a1,20
   19a30:	f4d60ee3          	beq	a2,a3,1998c <strcmp+0x18>
   19a34:	01061713          	slli	a4,a2,0x10
   19a38:	01069793          	slli	a5,a3,0x10
   19a3c:	00f71e63          	bne	a4,a5,19a58 <strcmp+0xe4>
   19a40:	01065713          	srli	a4,a2,0x10
   19a44:	0106d793          	srli	a5,a3,0x10
   19a48:	40f70533          	sub	a0,a4,a5
   19a4c:	0ff57593          	zext.b	a1,a0
   19a50:	02059063          	bnez	a1,19a70 <strcmp+0xfc>
   19a54:	00008067          	ret
   19a58:	01075713          	srli	a4,a4,0x10
   19a5c:	0107d793          	srli	a5,a5,0x10
   19a60:	40f70533          	sub	a0,a4,a5
   19a64:	0ff57593          	zext.b	a1,a0
   19a68:	00059463          	bnez	a1,19a70 <strcmp+0xfc>
   19a6c:	00008067          	ret
   19a70:	0ff77713          	zext.b	a4,a4
   19a74:	0ff7f793          	zext.b	a5,a5
   19a78:	40f70533          	sub	a0,a4,a5
   19a7c:	00008067          	ret
   19a80:	00054603          	lbu	a2,0(a0)
   19a84:	0005c683          	lbu	a3,0(a1)
   19a88:	00150513          	addi	a0,a0,1
   19a8c:	00158593          	addi	a1,a1,1
   19a90:	00d61463          	bne	a2,a3,19a98 <strcmp+0x124>
   19a94:	fe0616e3          	bnez	a2,19a80 <strcmp+0x10c>
   19a98:	40d60533          	sub	a0,a2,a3
   19a9c:	00008067          	ret
   19aa0:	00450513          	addi	a0,a0,4
   19aa4:	00458593          	addi	a1,a1,4
   19aa8:	fcd61ce3          	bne	a2,a3,19a80 <strcmp+0x10c>
   19aac:	00000513          	li	a0,0
   19ab0:	00008067          	ret
   19ab4:	00850513          	addi	a0,a0,8
   19ab8:	00858593          	addi	a1,a1,8
   19abc:	fcd612e3          	bne	a2,a3,19a80 <strcmp+0x10c>
   19ac0:	00000513          	li	a0,0
   19ac4:	00008067          	ret
   19ac8:	00c50513          	addi	a0,a0,12
   19acc:	00c58593          	addi	a1,a1,12
   19ad0:	fad618e3          	bne	a2,a3,19a80 <strcmp+0x10c>
   19ad4:	00000513          	li	a0,0
   19ad8:	00008067          	ret
   19adc:	01050513          	addi	a0,a0,16
   19ae0:	01058593          	addi	a1,a1,16
   19ae4:	f8d61ee3          	bne	a2,a3,19a80 <strcmp+0x10c>
   19ae8:	00000513          	li	a0,0
   19aec:	00008067          	ret

00019af0 <__register_exitproc>:
   19af0:	f701a783          	lw	a5,-144(gp) # 1ca60 <__atexit>
   19af4:	04078c63          	beqz	a5,19b4c <__register_exitproc+0x5c>
   19af8:	0047a703          	lw	a4,4(a5)
   19afc:	01f00813          	li	a6,31
   19b00:	06e84e63          	blt	a6,a4,19b7c <__register_exitproc+0x8c>
   19b04:	00271813          	slli	a6,a4,0x2
   19b08:	02050663          	beqz	a0,19b34 <__register_exitproc+0x44>
   19b0c:	01078333          	add	t1,a5,a6
   19b10:	08c32423          	sw	a2,136(t1)
   19b14:	1887a883          	lw	a7,392(a5)
   19b18:	00100613          	li	a2,1
   19b1c:	00e61633          	sll	a2,a2,a4
   19b20:	00c8e8b3          	or	a7,a7,a2
   19b24:	1917a423          	sw	a7,392(a5)
   19b28:	10d32423          	sw	a3,264(t1)
   19b2c:	00200693          	li	a3,2
   19b30:	02d50463          	beq	a0,a3,19b58 <__register_exitproc+0x68>
   19b34:	00170713          	addi	a4,a4,1
   19b38:	00e7a223          	sw	a4,4(a5)
   19b3c:	010787b3          	add	a5,a5,a6
   19b40:	00b7a423          	sw	a1,8(a5)
   19b44:	00000513          	li	a0,0
   19b48:	00008067          	ret
   19b4c:	12818793          	addi	a5,gp,296 # 1cc18 <__atexit0>
   19b50:	f6f1a823          	sw	a5,-144(gp) # 1ca60 <__atexit>
   19b54:	fa5ff06f          	j	19af8 <__register_exitproc+0x8>
   19b58:	18c7a683          	lw	a3,396(a5)
   19b5c:	00170713          	addi	a4,a4,1
   19b60:	00e7a223          	sw	a4,4(a5)
   19b64:	00c6e6b3          	or	a3,a3,a2
   19b68:	18d7a623          	sw	a3,396(a5)
   19b6c:	010787b3          	add	a5,a5,a6
   19b70:	00b7a423          	sw	a1,8(a5)
   19b74:	00000513          	li	a0,0
   19b78:	00008067          	ret
   19b7c:	fff00513          	li	a0,-1
   19b80:	00008067          	ret

00019b84 <_mbtowc_r>:
   19b84:	e3c1a783          	lw	a5,-452(gp) # 1c92c <__global_locale+0xe4>
   19b88:	00078067          	jr	a5

00019b8c <__ascii_mbtowc>:
   19b8c:	02058063          	beqz	a1,19bac <__ascii_mbtowc+0x20>
   19b90:	04060263          	beqz	a2,19bd4 <__ascii_mbtowc+0x48>
   19b94:	04068863          	beqz	a3,19be4 <__ascii_mbtowc+0x58>
   19b98:	00064783          	lbu	a5,0(a2) # ffffe000 <__BSS_END__+0xfffe1258>
   19b9c:	00f5a023          	sw	a5,0(a1)
   19ba0:	00064503          	lbu	a0,0(a2)
   19ba4:	00a03533          	snez	a0,a0
   19ba8:	00008067          	ret
   19bac:	ff010113          	addi	sp,sp,-16
   19bb0:	00c10593          	addi	a1,sp,12
   19bb4:	02060463          	beqz	a2,19bdc <__ascii_mbtowc+0x50>
   19bb8:	02068a63          	beqz	a3,19bec <__ascii_mbtowc+0x60>
   19bbc:	00064783          	lbu	a5,0(a2)
   19bc0:	00f5a023          	sw	a5,0(a1)
   19bc4:	00064503          	lbu	a0,0(a2)
   19bc8:	00a03533          	snez	a0,a0
   19bcc:	01010113          	addi	sp,sp,16
   19bd0:	00008067          	ret
   19bd4:	00000513          	li	a0,0
   19bd8:	00008067          	ret
   19bdc:	00000513          	li	a0,0
   19be0:	fedff06f          	j	19bcc <__ascii_mbtowc+0x40>
   19be4:	ffe00513          	li	a0,-2
   19be8:	00008067          	ret
   19bec:	ffe00513          	li	a0,-2
   19bf0:	fddff06f          	j	19bcc <__ascii_mbtowc+0x40>

00019bf4 <_wctomb_r>:
   19bf4:	e381a783          	lw	a5,-456(gp) # 1c928 <__global_locale+0xe0>
   19bf8:	00078067          	jr	a5

00019bfc <__ascii_wctomb>:
   19bfc:	02058463          	beqz	a1,19c24 <__ascii_wctomb+0x28>
   19c00:	0ff00793          	li	a5,255
   19c04:	00c7e863          	bltu	a5,a2,19c14 <__ascii_wctomb+0x18>
   19c08:	00c58023          	sb	a2,0(a1)
   19c0c:	00100513          	li	a0,1
   19c10:	00008067          	ret
   19c14:	08a00793          	li	a5,138
   19c18:	00f52023          	sw	a5,0(a0)
   19c1c:	fff00513          	li	a0,-1
   19c20:	00008067          	ret
   19c24:	00000513          	li	a0,0
   19c28:	00008067          	ret

00019c2c <__udivdi3>:
   19c2c:	fd010113          	addi	sp,sp,-48
   19c30:	01512a23          	sw	s5,20(sp)
   19c34:	02112623          	sw	ra,44(sp)
   19c38:	02812423          	sw	s0,40(sp)
   19c3c:	02912223          	sw	s1,36(sp)
   19c40:	03212023          	sw	s2,32(sp)
   19c44:	01312e23          	sw	s3,28(sp)
   19c48:	01412c23          	sw	s4,24(sp)
   19c4c:	01612823          	sw	s6,16(sp)
   19c50:	01712623          	sw	s7,12(sp)
   19c54:	01812423          	sw	s8,8(sp)
   19c58:	01912223          	sw	s9,4(sp)
   19c5c:	00050a93          	mv	s5,a0
   19c60:	38069463          	bnez	a3,19fe8 <__udivdi3+0x3bc>
   19c64:	0001b7b7          	lui	a5,0x1b
   19c68:	00060993          	mv	s3,a2
   19c6c:	00050493          	mv	s1,a0
   19c70:	aec78793          	addi	a5,a5,-1300 # 1aaec <__clz_tab>
   19c74:	16c5f463          	bgeu	a1,a2,19ddc <__udivdi3+0x1b0>
   19c78:	00010737          	lui	a4,0x10
   19c7c:	00068a13          	mv	s4,a3
   19c80:	00058c13          	mv	s8,a1
   19c84:	12e67863          	bgeu	a2,a4,19db4 <__udivdi3+0x188>
   19c88:	10063713          	sltiu	a4,a2,256
   19c8c:	00173713          	seqz	a4,a4
   19c90:	00371713          	slli	a4,a4,0x3
   19c94:	00e656b3          	srl	a3,a2,a4
   19c98:	00d787b3          	add	a5,a5,a3
   19c9c:	0007c783          	lbu	a5,0(a5)
   19ca0:	00e787b3          	add	a5,a5,a4
   19ca4:	02000713          	li	a4,32
   19ca8:	00e78e63          	beq	a5,a4,19cc4 <__udivdi3+0x98>
   19cac:	40f70733          	sub	a4,a4,a5
   19cb0:	00e59c33          	sll	s8,a1,a4
   19cb4:	00fad7b3          	srl	a5,s5,a5
   19cb8:	00e619b3          	sll	s3,a2,a4
   19cbc:	0187ec33          	or	s8,a5,s8
   19cc0:	00ea94b3          	sll	s1,s5,a4
   19cc4:	0109db13          	srli	s6,s3,0x10
   19cc8:	000b0593          	mv	a1,s6
   19ccc:	01099b93          	slli	s7,s3,0x10
   19cd0:	000c0513          	mv	a0,s8
   19cd4:	908fb0ef          	jal	14ddc <__hidden___udivsi3>
   19cd8:	010bdb93          	srli	s7,s7,0x10
   19cdc:	00050593          	mv	a1,a0
   19ce0:	00050913          	mv	s2,a0
   19ce4:	000b8513          	mv	a0,s7
   19ce8:	83cfb0ef          	jal	14d24 <__mulsi3>
   19cec:	00050413          	mv	s0,a0
   19cf0:	000b0593          	mv	a1,s6
   19cf4:	000c0513          	mv	a0,s8
   19cf8:	92cfb0ef          	jal	14e24 <__umodsi3>
   19cfc:	01051513          	slli	a0,a0,0x10
   19d00:	0104d693          	srli	a3,s1,0x10
   19d04:	00a6e6b3          	or	a3,a3,a0
   19d08:	0086fa63          	bgeu	a3,s0,19d1c <__udivdi3+0xf0>
   19d0c:	00d986b3          	add	a3,s3,a3
   19d10:	0086f463          	bgeu	a3,s0,19d18 <__udivdi3+0xec>
   19d14:	0b36fa63          	bgeu	a3,s3,19dc8 <__udivdi3+0x19c>
   19d18:	fff90913          	addi	s2,s2,-1
   19d1c:	40868433          	sub	s0,a3,s0
   19d20:	000b0593          	mv	a1,s6
   19d24:	00040513          	mv	a0,s0
   19d28:	8b4fb0ef          	jal	14ddc <__hidden___udivsi3>
   19d2c:	00050593          	mv	a1,a0
   19d30:	00050a93          	mv	s5,a0
   19d34:	000b8513          	mv	a0,s7
   19d38:	fedfa0ef          	jal	14d24 <__mulsi3>
   19d3c:	00050b93          	mv	s7,a0
   19d40:	000b0593          	mv	a1,s6
   19d44:	00040513          	mv	a0,s0
   19d48:	8dcfb0ef          	jal	14e24 <__umodsi3>
   19d4c:	01049493          	slli	s1,s1,0x10
   19d50:	01051513          	slli	a0,a0,0x10
   19d54:	0104d493          	srli	s1,s1,0x10
   19d58:	00a4e4b3          	or	s1,s1,a0
   19d5c:	0174fa63          	bgeu	s1,s7,19d70 <__udivdi3+0x144>
   19d60:	009984b3          	add	s1,s3,s1
   19d64:	0174f463          	bgeu	s1,s7,19d6c <__udivdi3+0x140>
   19d68:	0734f663          	bgeu	s1,s3,19dd4 <__udivdi3+0x1a8>
   19d6c:	fffa8a93          	addi	s5,s5,-1
   19d70:	01091793          	slli	a5,s2,0x10
   19d74:	0157e7b3          	or	a5,a5,s5
   19d78:	02c12083          	lw	ra,44(sp)
   19d7c:	02812403          	lw	s0,40(sp)
   19d80:	02412483          	lw	s1,36(sp)
   19d84:	02012903          	lw	s2,32(sp)
   19d88:	01c12983          	lw	s3,28(sp)
   19d8c:	01412a83          	lw	s5,20(sp)
   19d90:	01012b03          	lw	s6,16(sp)
   19d94:	00c12b83          	lw	s7,12(sp)
   19d98:	00812c03          	lw	s8,8(sp)
   19d9c:	00412c83          	lw	s9,4(sp)
   19da0:	000a0593          	mv	a1,s4
   19da4:	00078513          	mv	a0,a5
   19da8:	01812a03          	lw	s4,24(sp)
   19dac:	03010113          	addi	sp,sp,48
   19db0:	00008067          	ret
   19db4:	010006b7          	lui	a3,0x1000
   19db8:	01800713          	li	a4,24
   19dbc:	ecd67ce3          	bgeu	a2,a3,19c94 <__udivdi3+0x68>
   19dc0:	01000713          	li	a4,16
   19dc4:	ed1ff06f          	j	19c94 <__udivdi3+0x68>
   19dc8:	ffe90913          	addi	s2,s2,-2
   19dcc:	013686b3          	add	a3,a3,s3
   19dd0:	f4dff06f          	j	19d1c <__udivdi3+0xf0>
   19dd4:	ffea8a93          	addi	s5,s5,-2
   19dd8:	f99ff06f          	j	19d70 <__udivdi3+0x144>
   19ddc:	00000713          	li	a4,0
   19de0:	00060c63          	beqz	a2,19df8 <__udivdi3+0x1cc>
   19de4:	00010737          	lui	a4,0x10
   19de8:	0ee67463          	bgeu	a2,a4,19ed0 <__udivdi3+0x2a4>
   19dec:	10063713          	sltiu	a4,a2,256
   19df0:	00173713          	seqz	a4,a4
   19df4:	00371713          	slli	a4,a4,0x3
   19df8:	00e656b3          	srl	a3,a2,a4
   19dfc:	00d787b3          	add	a5,a5,a3
   19e00:	0007c783          	lbu	a5,0(a5)
   19e04:	00e787b3          	add	a5,a5,a4
   19e08:	02000713          	li	a4,32
   19e0c:	0ce79c63          	bne	a5,a4,19ee4 <__udivdi3+0x2b8>
   19e10:	40c58433          	sub	s0,a1,a2
   19e14:	00100a13          	li	s4,1
   19e18:	0109da93          	srli	s5,s3,0x10
   19e1c:	000a8593          	mv	a1,s5
   19e20:	01099b13          	slli	s6,s3,0x10
   19e24:	00040513          	mv	a0,s0
   19e28:	fb5fa0ef          	jal	14ddc <__hidden___udivsi3>
   19e2c:	010b5b13          	srli	s6,s6,0x10
   19e30:	00050593          	mv	a1,a0
   19e34:	00050913          	mv	s2,a0
   19e38:	000b0513          	mv	a0,s6
   19e3c:	ee9fa0ef          	jal	14d24 <__mulsi3>
   19e40:	00050b93          	mv	s7,a0
   19e44:	000a8593          	mv	a1,s5
   19e48:	00040513          	mv	a0,s0
   19e4c:	fd9fa0ef          	jal	14e24 <__umodsi3>
   19e50:	01051513          	slli	a0,a0,0x10
   19e54:	0104d693          	srli	a3,s1,0x10
   19e58:	00a6e6b3          	or	a3,a3,a0
   19e5c:	0176fa63          	bgeu	a3,s7,19e70 <__udivdi3+0x244>
   19e60:	00d986b3          	add	a3,s3,a3
   19e64:	0176f463          	bgeu	a3,s7,19e6c <__udivdi3+0x240>
   19e68:	1736f663          	bgeu	a3,s3,19fd4 <__udivdi3+0x3a8>
   19e6c:	fff90913          	addi	s2,s2,-1
   19e70:	41768433          	sub	s0,a3,s7
   19e74:	000a8593          	mv	a1,s5
   19e78:	00040513          	mv	a0,s0
   19e7c:	f61fa0ef          	jal	14ddc <__hidden___udivsi3>
   19e80:	00050593          	mv	a1,a0
   19e84:	00050b93          	mv	s7,a0
   19e88:	000b0513          	mv	a0,s6
   19e8c:	e99fa0ef          	jal	14d24 <__mulsi3>
   19e90:	00050b13          	mv	s6,a0
   19e94:	000a8593          	mv	a1,s5
   19e98:	00040513          	mv	a0,s0
   19e9c:	f89fa0ef          	jal	14e24 <__umodsi3>
   19ea0:	01049493          	slli	s1,s1,0x10
   19ea4:	01051513          	slli	a0,a0,0x10
   19ea8:	0104d493          	srli	s1,s1,0x10
   19eac:	00a4e4b3          	or	s1,s1,a0
   19eb0:	0164fa63          	bgeu	s1,s6,19ec4 <__udivdi3+0x298>
   19eb4:	009984b3          	add	s1,s3,s1
   19eb8:	0164f463          	bgeu	s1,s6,19ec0 <__udivdi3+0x294>
   19ebc:	1334f263          	bgeu	s1,s3,19fe0 <__udivdi3+0x3b4>
   19ec0:	fffb8b93          	addi	s7,s7,-1
   19ec4:	01091793          	slli	a5,s2,0x10
   19ec8:	0177e7b3          	or	a5,a5,s7
   19ecc:	eadff06f          	j	19d78 <__udivdi3+0x14c>
   19ed0:	010006b7          	lui	a3,0x1000
   19ed4:	01800713          	li	a4,24
   19ed8:	f2d670e3          	bgeu	a2,a3,19df8 <__udivdi3+0x1cc>
   19edc:	01000713          	li	a4,16
   19ee0:	f19ff06f          	j	19df8 <__udivdi3+0x1cc>
   19ee4:	40f70733          	sub	a4,a4,a5
   19ee8:	00e619b3          	sll	s3,a2,a4
   19eec:	00f5d433          	srl	s0,a1,a5
   19ef0:	0109db13          	srli	s6,s3,0x10
   19ef4:	00e595b3          	sll	a1,a1,a4
   19ef8:	00fad7b3          	srl	a5,s5,a5
   19efc:	00b7ea33          	or	s4,a5,a1
   19f00:	01099b93          	slli	s7,s3,0x10
   19f04:	000b0593          	mv	a1,s6
   19f08:	00040513          	mv	a0,s0
   19f0c:	00ea94b3          	sll	s1,s5,a4
   19f10:	010bdb93          	srli	s7,s7,0x10
   19f14:	ec9fa0ef          	jal	14ddc <__hidden___udivsi3>
   19f18:	00050593          	mv	a1,a0
   19f1c:	00050913          	mv	s2,a0
   19f20:	000b8513          	mv	a0,s7
   19f24:	e01fa0ef          	jal	14d24 <__mulsi3>
   19f28:	00050a93          	mv	s5,a0
   19f2c:	000b0593          	mv	a1,s6
   19f30:	00040513          	mv	a0,s0
   19f34:	ef1fa0ef          	jal	14e24 <__umodsi3>
   19f38:	01051513          	slli	a0,a0,0x10
   19f3c:	010a5693          	srli	a3,s4,0x10
   19f40:	00a6e6b3          	or	a3,a3,a0
   19f44:	0156fa63          	bgeu	a3,s5,19f58 <__udivdi3+0x32c>
   19f48:	00d986b3          	add	a3,s3,a3
   19f4c:	0156f463          	bgeu	a3,s5,19f54 <__udivdi3+0x328>
   19f50:	0736f663          	bgeu	a3,s3,19fbc <__udivdi3+0x390>
   19f54:	fff90913          	addi	s2,s2,-1
   19f58:	41568433          	sub	s0,a3,s5
   19f5c:	000b0593          	mv	a1,s6
   19f60:	00040513          	mv	a0,s0
   19f64:	e79fa0ef          	jal	14ddc <__hidden___udivsi3>
   19f68:	00050593          	mv	a1,a0
   19f6c:	00050a93          	mv	s5,a0
   19f70:	000b8513          	mv	a0,s7
   19f74:	db1fa0ef          	jal	14d24 <__mulsi3>
   19f78:	00050b93          	mv	s7,a0
   19f7c:	000b0593          	mv	a1,s6
   19f80:	00040513          	mv	a0,s0
   19f84:	ea1fa0ef          	jal	14e24 <__umodsi3>
   19f88:	010a1793          	slli	a5,s4,0x10
   19f8c:	01051513          	slli	a0,a0,0x10
   19f90:	0107d793          	srli	a5,a5,0x10
   19f94:	00a7e7b3          	or	a5,a5,a0
   19f98:	0177fa63          	bgeu	a5,s7,19fac <__udivdi3+0x380>
   19f9c:	00f987b3          	add	a5,s3,a5
   19fa0:	0177f463          	bgeu	a5,s7,19fa8 <__udivdi3+0x37c>
   19fa4:	0337f263          	bgeu	a5,s3,19fc8 <__udivdi3+0x39c>
   19fa8:	fffa8a93          	addi	s5,s5,-1
   19fac:	01091913          	slli	s2,s2,0x10
   19fb0:	41778433          	sub	s0,a5,s7
   19fb4:	01596a33          	or	s4,s2,s5
   19fb8:	e61ff06f          	j	19e18 <__udivdi3+0x1ec>
   19fbc:	ffe90913          	addi	s2,s2,-2
   19fc0:	013686b3          	add	a3,a3,s3
   19fc4:	f95ff06f          	j	19f58 <__udivdi3+0x32c>
   19fc8:	ffea8a93          	addi	s5,s5,-2
   19fcc:	013787b3          	add	a5,a5,s3
   19fd0:	fddff06f          	j	19fac <__udivdi3+0x380>
   19fd4:	ffe90913          	addi	s2,s2,-2
   19fd8:	013686b3          	add	a3,a3,s3
   19fdc:	e95ff06f          	j	19e70 <__udivdi3+0x244>
   19fe0:	ffeb8b93          	addi	s7,s7,-2
   19fe4:	ee1ff06f          	j	19ec4 <__udivdi3+0x298>
   19fe8:	1ed5e663          	bltu	a1,a3,1a1d4 <__udivdi3+0x5a8>
   19fec:	000107b7          	lui	a5,0x10
   19ff0:	04f6f463          	bgeu	a3,a5,1a038 <__udivdi3+0x40c>
   19ff4:	1006b713          	sltiu	a4,a3,256
   19ff8:	00173713          	seqz	a4,a4
   19ffc:	00371713          	slli	a4,a4,0x3
   1a000:	0001b7b7          	lui	a5,0x1b
   1a004:	00e6d533          	srl	a0,a3,a4
   1a008:	aec78793          	addi	a5,a5,-1300 # 1aaec <__clz_tab>
   1a00c:	00a787b3          	add	a5,a5,a0
   1a010:	0007c783          	lbu	a5,0(a5)
   1a014:	02000b13          	li	s6,32
   1a018:	00e787b3          	add	a5,a5,a4
   1a01c:	03679863          	bne	a5,s6,1a04c <__udivdi3+0x420>
   1a020:	00cab7b3          	sltu	a5,s5,a2
   1a024:	0017b793          	seqz	a5,a5
   1a028:	00b6b6b3          	sltu	a3,a3,a1
   1a02c:	00d7e7b3          	or	a5,a5,a3
   1a030:	00000a13          	li	s4,0
   1a034:	d45ff06f          	j	19d78 <__udivdi3+0x14c>
   1a038:	010007b7          	lui	a5,0x1000
   1a03c:	01800713          	li	a4,24
   1a040:	fcf6f0e3          	bgeu	a3,a5,1a000 <__udivdi3+0x3d4>
   1a044:	01000713          	li	a4,16
   1a048:	fb9ff06f          	j	1a000 <__udivdi3+0x3d4>
   1a04c:	40fb0b33          	sub	s6,s6,a5
   1a050:	00f65bb3          	srl	s7,a2,a5
   1a054:	016696b3          	sll	a3,a3,s6
   1a058:	00dbebb3          	or	s7,s7,a3
   1a05c:	00f5d4b3          	srl	s1,a1,a5
   1a060:	010bdc93          	srli	s9,s7,0x10
   1a064:	00fad7b3          	srl	a5,s5,a5
   1a068:	016595b3          	sll	a1,a1,s6
   1a06c:	00b7ea33          	or	s4,a5,a1
   1a070:	010b9c13          	slli	s8,s7,0x10
   1a074:	000c8593          	mv	a1,s9
   1a078:	00048513          	mv	a0,s1
   1a07c:	016619b3          	sll	s3,a2,s6
   1a080:	010c5c13          	srli	s8,s8,0x10
   1a084:	d59fa0ef          	jal	14ddc <__hidden___udivsi3>
   1a088:	00050593          	mv	a1,a0
   1a08c:	00050413          	mv	s0,a0
   1a090:	000c0513          	mv	a0,s8
   1a094:	c91fa0ef          	jal	14d24 <__mulsi3>
   1a098:	00050913          	mv	s2,a0
   1a09c:	000c8593          	mv	a1,s9
   1a0a0:	00048513          	mv	a0,s1
   1a0a4:	d81fa0ef          	jal	14e24 <__umodsi3>
   1a0a8:	01051513          	slli	a0,a0,0x10
   1a0ac:	010a5713          	srli	a4,s4,0x10
   1a0b0:	00a76733          	or	a4,a4,a0
   1a0b4:	01277a63          	bgeu	a4,s2,1a0c8 <__udivdi3+0x49c>
   1a0b8:	00eb8733          	add	a4,s7,a4
   1a0bc:	01277463          	bgeu	a4,s2,1a0c4 <__udivdi3+0x498>
   1a0c0:	0f777e63          	bgeu	a4,s7,1a1bc <__udivdi3+0x590>
   1a0c4:	fff40413          	addi	s0,s0,-1
   1a0c8:	412704b3          	sub	s1,a4,s2
   1a0cc:	000c8593          	mv	a1,s9
   1a0d0:	00048513          	mv	a0,s1
   1a0d4:	d09fa0ef          	jal	14ddc <__hidden___udivsi3>
   1a0d8:	00050593          	mv	a1,a0
   1a0dc:	00050913          	mv	s2,a0
   1a0e0:	000c0513          	mv	a0,s8
   1a0e4:	c41fa0ef          	jal	14d24 <__mulsi3>
   1a0e8:	00050c13          	mv	s8,a0
   1a0ec:	000c8593          	mv	a1,s9
   1a0f0:	00048513          	mv	a0,s1
   1a0f4:	d31fa0ef          	jal	14e24 <__umodsi3>
   1a0f8:	010a1793          	slli	a5,s4,0x10
   1a0fc:	01051513          	slli	a0,a0,0x10
   1a100:	0107d793          	srli	a5,a5,0x10
   1a104:	00a7e7b3          	or	a5,a5,a0
   1a108:	0187fa63          	bgeu	a5,s8,1a11c <__udivdi3+0x4f0>
   1a10c:	00fb87b3          	add	a5,s7,a5
   1a110:	0187f463          	bgeu	a5,s8,1a118 <__udivdi3+0x4ec>
   1a114:	0b77fa63          	bgeu	a5,s7,1a1c8 <__udivdi3+0x59c>
   1a118:	fff90913          	addi	s2,s2,-1
   1a11c:	01099313          	slli	t1,s3,0x10
   1a120:	01041413          	slli	s0,s0,0x10
   1a124:	01035313          	srli	t1,t1,0x10
   1a128:	01091513          	slli	a0,s2,0x10
   1a12c:	418788b3          	sub	a7,a5,s8
   1a130:	01055513          	srli	a0,a0,0x10
   1a134:	012467b3          	or	a5,s0,s2
   1a138:	00030593          	mv	a1,t1
   1a13c:	be9fa0ef          	jal	14d24 <__mulsi3>
   1a140:	00050813          	mv	a6,a0
   1a144:	01091513          	slli	a0,s2,0x10
   1a148:	01055513          	srli	a0,a0,0x10
   1a14c:	0109d593          	srli	a1,s3,0x10
   1a150:	bd5fa0ef          	jal	14d24 <__mulsi3>
   1a154:	00050713          	mv	a4,a0
   1a158:	00030593          	mv	a1,t1
   1a15c:	0107d513          	srli	a0,a5,0x10
   1a160:	bc5fa0ef          	jal	14d24 <__mulsi3>
   1a164:	00050313          	mv	t1,a0
   1a168:	0109d593          	srli	a1,s3,0x10
   1a16c:	0107d513          	srli	a0,a5,0x10
   1a170:	bb5fa0ef          	jal	14d24 <__mulsi3>
   1a174:	01085693          	srli	a3,a6,0x10
   1a178:	00670733          	add	a4,a4,t1
   1a17c:	00e686b3          	add	a3,a3,a4
   1a180:	0066f663          	bgeu	a3,t1,1a18c <__udivdi3+0x560>
   1a184:	00010737          	lui	a4,0x10
   1a188:	00e50533          	add	a0,a0,a4
   1a18c:	0106d613          	srli	a2,a3,0x10
   1a190:	00a60633          	add	a2,a2,a0
   1a194:	02c8e063          	bltu	a7,a2,1a1b4 <__udivdi3+0x588>
   1a198:	01081813          	slli	a6,a6,0x10
   1a19c:	01069693          	slli	a3,a3,0x10
   1a1a0:	01085813          	srli	a6,a6,0x10
   1a1a4:	016a9733          	sll	a4,s5,s6
   1a1a8:	010686b3          	add	a3,a3,a6
   1a1ac:	e8d772e3          	bgeu	a4,a3,1a030 <__udivdi3+0x404>
   1a1b0:	e8c890e3          	bne	a7,a2,1a030 <__udivdi3+0x404>
   1a1b4:	fff78793          	addi	a5,a5,-1 # ffffff <__BSS_END__+0xfe3257>
   1a1b8:	e79ff06f          	j	1a030 <__udivdi3+0x404>
   1a1bc:	ffe40413          	addi	s0,s0,-2
   1a1c0:	01770733          	add	a4,a4,s7
   1a1c4:	f05ff06f          	j	1a0c8 <__udivdi3+0x49c>
   1a1c8:	ffe90913          	addi	s2,s2,-2
   1a1cc:	017787b3          	add	a5,a5,s7
   1a1d0:	f4dff06f          	j	1a11c <__udivdi3+0x4f0>
   1a1d4:	00000a13          	li	s4,0
   1a1d8:	00000793          	li	a5,0
   1a1dc:	b9dff06f          	j	19d78 <__udivdi3+0x14c>

0001a1e0 <__umoddi3>:
   1a1e0:	fc010113          	addi	sp,sp,-64
   1a1e4:	02812c23          	sw	s0,56(sp)
   1a1e8:	02912a23          	sw	s1,52(sp)
   1a1ec:	02112e23          	sw	ra,60(sp)
   1a1f0:	03212823          	sw	s2,48(sp)
   1a1f4:	03312623          	sw	s3,44(sp)
   1a1f8:	03412423          	sw	s4,40(sp)
   1a1fc:	03512223          	sw	s5,36(sp)
   1a200:	03612023          	sw	s6,32(sp)
   1a204:	01712e23          	sw	s7,28(sp)
   1a208:	01812c23          	sw	s8,24(sp)
   1a20c:	01912a23          	sw	s9,20(sp)
   1a210:	01a12823          	sw	s10,16(sp)
   1a214:	01b12623          	sw	s11,12(sp)
   1a218:	00050413          	mv	s0,a0
   1a21c:	00058493          	mv	s1,a1
   1a220:	32069a63          	bnez	a3,1a554 <__umoddi3+0x374>
   1a224:	0001b7b7          	lui	a5,0x1b
   1a228:	00060993          	mv	s3,a2
   1a22c:	aec78793          	addi	a5,a5,-1300 # 1aaec <__clz_tab>
   1a230:	16c5f063          	bgeu	a1,a2,1a390 <__umoddi3+0x1b0>
   1a234:	00010737          	lui	a4,0x10
   1a238:	14e67263          	bgeu	a2,a4,1a37c <__umoddi3+0x19c>
   1a23c:	10063713          	sltiu	a4,a2,256
   1a240:	00173713          	seqz	a4,a4
   1a244:	00371713          	slli	a4,a4,0x3
   1a248:	00e656b3          	srl	a3,a2,a4
   1a24c:	00d787b3          	add	a5,a5,a3
   1a250:	0007c783          	lbu	a5,0(a5)
   1a254:	00e787b3          	add	a5,a5,a4
   1a258:	02000713          	li	a4,32
   1a25c:	40f70933          	sub	s2,a4,a5
   1a260:	00e78c63          	beq	a5,a4,1a278 <__umoddi3+0x98>
   1a264:	012595b3          	sll	a1,a1,s2
   1a268:	00f557b3          	srl	a5,a0,a5
   1a26c:	012619b3          	sll	s3,a2,s2
   1a270:	00b7e4b3          	or	s1,a5,a1
   1a274:	01251433          	sll	s0,a0,s2
   1a278:	0109da13          	srli	s4,s3,0x10
   1a27c:	000a0593          	mv	a1,s4
   1a280:	01099a93          	slli	s5,s3,0x10
   1a284:	00048513          	mv	a0,s1
   1a288:	b55fa0ef          	jal	14ddc <__hidden___udivsi3>
   1a28c:	010ada93          	srli	s5,s5,0x10
   1a290:	000a8593          	mv	a1,s5
   1a294:	a91fa0ef          	jal	14d24 <__mulsi3>
   1a298:	00050b13          	mv	s6,a0
   1a29c:	000a0593          	mv	a1,s4
   1a2a0:	00048513          	mv	a0,s1
   1a2a4:	b81fa0ef          	jal	14e24 <__umodsi3>
   1a2a8:	01051513          	slli	a0,a0,0x10
   1a2ac:	01045793          	srli	a5,s0,0x10
   1a2b0:	00a7e7b3          	or	a5,a5,a0
   1a2b4:	0367f263          	bgeu	a5,s6,1a2d8 <__umoddi3+0xf8>
   1a2b8:	00f987b3          	add	a5,s3,a5
   1a2bc:	0137b6b3          	sltu	a3,a5,s3
   1a2c0:	0167b733          	sltu	a4,a5,s6
   1a2c4:	0016b693          	seqz	a3,a3
   1a2c8:	00d77733          	and	a4,a4,a3
   1a2cc:	40e00733          	neg	a4,a4
   1a2d0:	01377733          	and	a4,a4,s3
   1a2d4:	00f707b3          	add	a5,a4,a5
   1a2d8:	41678b33          	sub	s6,a5,s6
   1a2dc:	000a0593          	mv	a1,s4
   1a2e0:	000b0513          	mv	a0,s6
   1a2e4:	af9fa0ef          	jal	14ddc <__hidden___udivsi3>
   1a2e8:	000a8593          	mv	a1,s5
   1a2ec:	a39fa0ef          	jal	14d24 <__mulsi3>
   1a2f0:	00050a93          	mv	s5,a0
   1a2f4:	000a0593          	mv	a1,s4
   1a2f8:	000b0513          	mv	a0,s6
   1a2fc:	b29fa0ef          	jal	14e24 <__umodsi3>
   1a300:	01051793          	slli	a5,a0,0x10
   1a304:	01041513          	slli	a0,s0,0x10
   1a308:	01055513          	srli	a0,a0,0x10
   1a30c:	00f56533          	or	a0,a0,a5
   1a310:	03557263          	bgeu	a0,s5,1a334 <__umoddi3+0x154>
   1a314:	00a98533          	add	a0,s3,a0
   1a318:	01353733          	sltu	a4,a0,s3
   1a31c:	015537b3          	sltu	a5,a0,s5
   1a320:	00173713          	seqz	a4,a4
   1a324:	00e7f7b3          	and	a5,a5,a4
   1a328:	40f007b3          	neg	a5,a5
   1a32c:	0137f7b3          	and	a5,a5,s3
   1a330:	00a78533          	add	a0,a5,a0
   1a334:	41550533          	sub	a0,a0,s5
   1a338:	01255533          	srl	a0,a0,s2
   1a33c:	00000593          	li	a1,0
   1a340:	03c12083          	lw	ra,60(sp)
   1a344:	03812403          	lw	s0,56(sp)
   1a348:	03412483          	lw	s1,52(sp)
   1a34c:	03012903          	lw	s2,48(sp)
   1a350:	02c12983          	lw	s3,44(sp)
   1a354:	02812a03          	lw	s4,40(sp)
   1a358:	02412a83          	lw	s5,36(sp)
   1a35c:	02012b03          	lw	s6,32(sp)
   1a360:	01c12b83          	lw	s7,28(sp)
   1a364:	01812c03          	lw	s8,24(sp)
   1a368:	01412c83          	lw	s9,20(sp)
   1a36c:	01012d03          	lw	s10,16(sp)
   1a370:	00c12d83          	lw	s11,12(sp)
   1a374:	04010113          	addi	sp,sp,64
   1a378:	00008067          	ret
   1a37c:	010006b7          	lui	a3,0x1000
   1a380:	01800713          	li	a4,24
   1a384:	ecd672e3          	bgeu	a2,a3,1a248 <__umoddi3+0x68>
   1a388:	01000713          	li	a4,16
   1a38c:	ebdff06f          	j	1a248 <__umoddi3+0x68>
   1a390:	00000713          	li	a4,0
   1a394:	00060c63          	beqz	a2,1a3ac <__umoddi3+0x1cc>
   1a398:	00010737          	lui	a4,0x10
   1a39c:	1ae67263          	bgeu	a2,a4,1a540 <__umoddi3+0x360>
   1a3a0:	10063713          	sltiu	a4,a2,256
   1a3a4:	00173713          	seqz	a4,a4
   1a3a8:	00371713          	slli	a4,a4,0x3
   1a3ac:	00e656b3          	srl	a3,a2,a4
   1a3b0:	00d787b3          	add	a5,a5,a3
   1a3b4:	0007c683          	lbu	a3,0(a5)
   1a3b8:	02000793          	li	a5,32
   1a3bc:	40c584b3          	sub	s1,a1,a2
   1a3c0:	00e68733          	add	a4,a3,a4
   1a3c4:	40e78933          	sub	s2,a5,a4
   1a3c8:	0cf70e63          	beq	a4,a5,1a4a4 <__umoddi3+0x2c4>
   1a3cc:	012619b3          	sll	s3,a2,s2
   1a3d0:	00e5dbb3          	srl	s7,a1,a4
   1a3d4:	00e557b3          	srl	a5,a0,a4
   1a3d8:	012595b3          	sll	a1,a1,s2
   1a3dc:	0109da93          	srli	s5,s3,0x10
   1a3e0:	00b7ea33          	or	s4,a5,a1
   1a3e4:	01251433          	sll	s0,a0,s2
   1a3e8:	000a8593          	mv	a1,s5
   1a3ec:	01099b13          	slli	s6,s3,0x10
   1a3f0:	000b8513          	mv	a0,s7
   1a3f4:	9e9fa0ef          	jal	14ddc <__hidden___udivsi3>
   1a3f8:	010b5b13          	srli	s6,s6,0x10
   1a3fc:	000b0593          	mv	a1,s6
   1a400:	925fa0ef          	jal	14d24 <__mulsi3>
   1a404:	00050493          	mv	s1,a0
   1a408:	000a8593          	mv	a1,s5
   1a40c:	000b8513          	mv	a0,s7
   1a410:	a15fa0ef          	jal	14e24 <__umodsi3>
   1a414:	01051513          	slli	a0,a0,0x10
   1a418:	010a5713          	srli	a4,s4,0x10
   1a41c:	00a76733          	or	a4,a4,a0
   1a420:	02977263          	bgeu	a4,s1,1a444 <__umoddi3+0x264>
   1a424:	00e98733          	add	a4,s3,a4
   1a428:	013736b3          	sltu	a3,a4,s3
   1a42c:	009737b3          	sltu	a5,a4,s1
   1a430:	0016b693          	seqz	a3,a3
   1a434:	00d7f7b3          	and	a5,a5,a3
   1a438:	40f007b3          	neg	a5,a5
   1a43c:	0137f7b3          	and	a5,a5,s3
   1a440:	00e78733          	add	a4,a5,a4
   1a444:	409704b3          	sub	s1,a4,s1
   1a448:	000a8593          	mv	a1,s5
   1a44c:	00048513          	mv	a0,s1
   1a450:	98dfa0ef          	jal	14ddc <__hidden___udivsi3>
   1a454:	000b0593          	mv	a1,s6
   1a458:	8cdfa0ef          	jal	14d24 <__mulsi3>
   1a45c:	00050b13          	mv	s6,a0
   1a460:	000a8593          	mv	a1,s5
   1a464:	00048513          	mv	a0,s1
   1a468:	9bdfa0ef          	jal	14e24 <__umodsi3>
   1a46c:	010a1793          	slli	a5,s4,0x10
   1a470:	01051513          	slli	a0,a0,0x10
   1a474:	0107d793          	srli	a5,a5,0x10
   1a478:	00a7e7b3          	or	a5,a5,a0
   1a47c:	0367f263          	bgeu	a5,s6,1a4a0 <__umoddi3+0x2c0>
   1a480:	00f987b3          	add	a5,s3,a5
   1a484:	0137b6b3          	sltu	a3,a5,s3
   1a488:	0167b733          	sltu	a4,a5,s6
   1a48c:	0016b693          	seqz	a3,a3
   1a490:	00d77733          	and	a4,a4,a3
   1a494:	40e00733          	neg	a4,a4
   1a498:	01377733          	and	a4,a4,s3
   1a49c:	00f707b3          	add	a5,a4,a5
   1a4a0:	416784b3          	sub	s1,a5,s6
   1a4a4:	0109da13          	srli	s4,s3,0x10
   1a4a8:	000a0593          	mv	a1,s4
   1a4ac:	01099a93          	slli	s5,s3,0x10
   1a4b0:	00048513          	mv	a0,s1
   1a4b4:	929fa0ef          	jal	14ddc <__hidden___udivsi3>
   1a4b8:	010ada93          	srli	s5,s5,0x10
   1a4bc:	000a8593          	mv	a1,s5
   1a4c0:	865fa0ef          	jal	14d24 <__mulsi3>
   1a4c4:	00050b13          	mv	s6,a0
   1a4c8:	000a0593          	mv	a1,s4
   1a4cc:	00048513          	mv	a0,s1
   1a4d0:	955fa0ef          	jal	14e24 <__umodsi3>
   1a4d4:	01051513          	slli	a0,a0,0x10
   1a4d8:	01045793          	srli	a5,s0,0x10
   1a4dc:	00a7e7b3          	or	a5,a5,a0
   1a4e0:	0367f263          	bgeu	a5,s6,1a504 <__umoddi3+0x324>
   1a4e4:	00f987b3          	add	a5,s3,a5
   1a4e8:	0137b6b3          	sltu	a3,a5,s3
   1a4ec:	0167b733          	sltu	a4,a5,s6
   1a4f0:	0016b693          	seqz	a3,a3
   1a4f4:	00d77733          	and	a4,a4,a3
   1a4f8:	40e00733          	neg	a4,a4
   1a4fc:	01377733          	and	a4,a4,s3
   1a500:	00f707b3          	add	a5,a4,a5
   1a504:	41678b33          	sub	s6,a5,s6
   1a508:	000a0593          	mv	a1,s4
   1a50c:	000b0513          	mv	a0,s6
   1a510:	8cdfa0ef          	jal	14ddc <__hidden___udivsi3>
   1a514:	000a8593          	mv	a1,s5
   1a518:	80dfa0ef          	jal	14d24 <__mulsi3>
   1a51c:	00050a93          	mv	s5,a0
   1a520:	000a0593          	mv	a1,s4
   1a524:	000b0513          	mv	a0,s6
   1a528:	8fdfa0ef          	jal	14e24 <__umodsi3>
   1a52c:	01041413          	slli	s0,s0,0x10
   1a530:	01051513          	slli	a0,a0,0x10
   1a534:	01045413          	srli	s0,s0,0x10
   1a538:	00a46533          	or	a0,s0,a0
   1a53c:	dd5ff06f          	j	1a310 <__umoddi3+0x130>
   1a540:	010006b7          	lui	a3,0x1000
   1a544:	01800713          	li	a4,24
   1a548:	e6d672e3          	bgeu	a2,a3,1a3ac <__umoddi3+0x1cc>
   1a54c:	01000713          	li	a4,16
   1a550:	e5dff06f          	j	1a3ac <__umoddi3+0x1cc>
   1a554:	ded5e6e3          	bltu	a1,a3,1a340 <__umoddi3+0x160>
   1a558:	000107b7          	lui	a5,0x10
   1a55c:	04f6fc63          	bgeu	a3,a5,1a5b4 <__umoddi3+0x3d4>
   1a560:	1006b713          	sltiu	a4,a3,256
   1a564:	00173713          	seqz	a4,a4
   1a568:	00371713          	slli	a4,a4,0x3
   1a56c:	0001b7b7          	lui	a5,0x1b
   1a570:	00e6d833          	srl	a6,a3,a4
   1a574:	aec78793          	addi	a5,a5,-1300 # 1aaec <__clz_tab>
   1a578:	010787b3          	add	a5,a5,a6
   1a57c:	0007ca03          	lbu	s4,0(a5)
   1a580:	02000a93          	li	s5,32
   1a584:	00ea0a33          	add	s4,s4,a4
   1a588:	055a1063          	bne	s4,s5,1a5c8 <__umoddi3+0x3e8>
   1a58c:	00c57463          	bgeu	a0,a2,1a594 <__umoddi3+0x3b4>
   1a590:	00b6fc63          	bgeu	a3,a1,1a5a8 <__umoddi3+0x3c8>
   1a594:	40c504b3          	sub	s1,a0,a2
   1a598:	00048413          	mv	s0,s1
   1a59c:	40d586b3          	sub	a3,a1,a3
   1a5a0:	009534b3          	sltu	s1,a0,s1
   1a5a4:	409684b3          	sub	s1,a3,s1
   1a5a8:	00040513          	mv	a0,s0
   1a5ac:	00048593          	mv	a1,s1
   1a5b0:	d91ff06f          	j	1a340 <__umoddi3+0x160>
   1a5b4:	010007b7          	lui	a5,0x1000
   1a5b8:	01800713          	li	a4,24
   1a5bc:	faf6f8e3          	bgeu	a3,a5,1a56c <__umoddi3+0x38c>
   1a5c0:	01000713          	li	a4,16
   1a5c4:	fa9ff06f          	j	1a56c <__umoddi3+0x38c>
   1a5c8:	414a8ab3          	sub	s5,s5,s4
   1a5cc:	015696b3          	sll	a3,a3,s5
   1a5d0:	01465bb3          	srl	s7,a2,s4
   1a5d4:	00dbebb3          	or	s7,s7,a3
   1a5d8:	0145db33          	srl	s6,a1,s4
   1a5dc:	010bdc93          	srli	s9,s7,0x10
   1a5e0:	015597b3          	sll	a5,a1,s5
   1a5e4:	01455933          	srl	s2,a0,s4
   1a5e8:	000c8593          	mv	a1,s9
   1a5ec:	015514b3          	sll	s1,a0,s5
   1a5f0:	010b9d13          	slli	s10,s7,0x10
   1a5f4:	000b0513          	mv	a0,s6
   1a5f8:	00f96933          	or	s2,s2,a5
   1a5fc:	015619b3          	sll	s3,a2,s5
   1a600:	010d5d13          	srli	s10,s10,0x10
   1a604:	fd8fa0ef          	jal	14ddc <__hidden___udivsi3>
   1a608:	00050593          	mv	a1,a0
   1a60c:	00050413          	mv	s0,a0
   1a610:	000d0513          	mv	a0,s10
   1a614:	f10fa0ef          	jal	14d24 <__mulsi3>
   1a618:	00050c13          	mv	s8,a0
   1a61c:	000c8593          	mv	a1,s9
   1a620:	000b0513          	mv	a0,s6
   1a624:	801fa0ef          	jal	14e24 <__umodsi3>
   1a628:	01051513          	slli	a0,a0,0x10
   1a62c:	01095793          	srli	a5,s2,0x10
   1a630:	00a7e7b3          	or	a5,a5,a0
   1a634:	0187fa63          	bgeu	a5,s8,1a648 <__umoddi3+0x468>
   1a638:	00fb87b3          	add	a5,s7,a5
   1a63c:	0187f463          	bgeu	a5,s8,1a644 <__umoddi3+0x464>
   1a640:	1377f663          	bgeu	a5,s7,1a76c <__umoddi3+0x58c>
   1a644:	fff40413          	addi	s0,s0,-1
   1a648:	41878db3          	sub	s11,a5,s8
   1a64c:	000c8593          	mv	a1,s9
   1a650:	000d8513          	mv	a0,s11
   1a654:	f88fa0ef          	jal	14ddc <__hidden___udivsi3>
   1a658:	00050593          	mv	a1,a0
   1a65c:	00050b13          	mv	s6,a0
   1a660:	000d0513          	mv	a0,s10
   1a664:	ec0fa0ef          	jal	14d24 <__mulsi3>
   1a668:	000c8593          	mv	a1,s9
   1a66c:	00050c13          	mv	s8,a0
   1a670:	000d8513          	mv	a0,s11
   1a674:	fb0fa0ef          	jal	14e24 <__umodsi3>
   1a678:	01091593          	slli	a1,s2,0x10
   1a67c:	01051513          	slli	a0,a0,0x10
   1a680:	0105d593          	srli	a1,a1,0x10
   1a684:	00a5e5b3          	or	a1,a1,a0
   1a688:	0185fa63          	bgeu	a1,s8,1a69c <__umoddi3+0x4bc>
   1a68c:	00bb85b3          	add	a1,s7,a1
   1a690:	0185f463          	bgeu	a1,s8,1a698 <__umoddi3+0x4b8>
   1a694:	0f75f263          	bgeu	a1,s7,1a778 <__umoddi3+0x598>
   1a698:	fffb0b13          	addi	s6,s6,-1
   1a69c:	01041413          	slli	s0,s0,0x10
   1a6a0:	41858733          	sub	a4,a1,s8
   1a6a4:	01646433          	or	s0,s0,s6
   1a6a8:	010b1513          	slli	a0,s6,0x10
   1a6ac:	01099593          	slli	a1,s3,0x10
   1a6b0:	01045413          	srli	s0,s0,0x10
   1a6b4:	01055513          	srli	a0,a0,0x10
   1a6b8:	0105d593          	srli	a1,a1,0x10
   1a6bc:	e68fa0ef          	jal	14d24 <__mulsi3>
   1a6c0:	00050813          	mv	a6,a0
   1a6c4:	010b1513          	slli	a0,s6,0x10
   1a6c8:	01055513          	srli	a0,a0,0x10
   1a6cc:	0109d593          	srli	a1,s3,0x10
   1a6d0:	e54fa0ef          	jal	14d24 <__mulsi3>
   1a6d4:	01099593          	slli	a1,s3,0x10
   1a6d8:	00050793          	mv	a5,a0
   1a6dc:	0105d593          	srli	a1,a1,0x10
   1a6e0:	00040513          	mv	a0,s0
   1a6e4:	e40fa0ef          	jal	14d24 <__mulsi3>
   1a6e8:	00050313          	mv	t1,a0
   1a6ec:	0109d593          	srli	a1,s3,0x10
   1a6f0:	00040513          	mv	a0,s0
   1a6f4:	e30fa0ef          	jal	14d24 <__mulsi3>
   1a6f8:	006787b3          	add	a5,a5,t1
   1a6fc:	01085693          	srli	a3,a6,0x10
   1a700:	00d787b3          	add	a5,a5,a3
   1a704:	0067f663          	bgeu	a5,t1,1a710 <__umoddi3+0x530>
   1a708:	000106b7          	lui	a3,0x10
   1a70c:	00d50533          	add	a0,a0,a3
   1a710:	0107d693          	srli	a3,a5,0x10
   1a714:	01081813          	slli	a6,a6,0x10
   1a718:	01079793          	slli	a5,a5,0x10
   1a71c:	01085813          	srli	a6,a6,0x10
   1a720:	00a68533          	add	a0,a3,a0
   1a724:	010787b3          	add	a5,a5,a6
   1a728:	00a76663          	bltu	a4,a0,1a734 <__umoddi3+0x554>
   1a72c:	00f4fe63          	bgeu	s1,a5,1a748 <__umoddi3+0x568>
   1a730:	00a71c63          	bne	a4,a0,1a748 <__umoddi3+0x568>
   1a734:	413789b3          	sub	s3,a5,s3
   1a738:	0137b6b3          	sltu	a3,a5,s3
   1a73c:	017686b3          	add	a3,a3,s7
   1a740:	00098793          	mv	a5,s3
   1a744:	40d50533          	sub	a0,a0,a3
   1a748:	40f487b3          	sub	a5,s1,a5
   1a74c:	40a705b3          	sub	a1,a4,a0
   1a750:	00f4b4b3          	sltu	s1,s1,a5
   1a754:	409585b3          	sub	a1,a1,s1
   1a758:	01459a33          	sll	s4,a1,s4
   1a75c:	0157d7b3          	srl	a5,a5,s5
   1a760:	00fa6533          	or	a0,s4,a5
   1a764:	0155d5b3          	srl	a1,a1,s5
   1a768:	bd9ff06f          	j	1a340 <__umoddi3+0x160>
   1a76c:	ffe40413          	addi	s0,s0,-2
   1a770:	017787b3          	add	a5,a5,s7
   1a774:	ed5ff06f          	j	1a648 <__umoddi3+0x468>
   1a778:	ffeb0b13          	addi	s6,s6,-2
   1a77c:	017585b3          	add	a1,a1,s7
   1a780:	f1dff06f          	j	1a69c <__umoddi3+0x4bc>

0001a784 <_close>:
   1a784:	05800713          	li	a4,88
   1a788:	f6e1a623          	sw	a4,-148(gp) # 1ca5c <errno>
   1a78c:	fff00513          	li	a0,-1
   1a790:	00008067          	ret

0001a794 <_fstat>:
   1a794:	05800713          	li	a4,88
   1a798:	f6e1a623          	sw	a4,-148(gp) # 1ca5c <errno>
   1a79c:	fff00513          	li	a0,-1
   1a7a0:	00008067          	ret

0001a7a4 <_getpid>:
   1a7a4:	05800713          	li	a4,88
   1a7a8:	f6e1a623          	sw	a4,-148(gp) # 1ca5c <errno>
   1a7ac:	fff00513          	li	a0,-1
   1a7b0:	00008067          	ret

0001a7b4 <_isatty>:
   1a7b4:	05800713          	li	a4,88
   1a7b8:	f6e1a623          	sw	a4,-148(gp) # 1ca5c <errno>
   1a7bc:	00000513          	li	a0,0
   1a7c0:	00008067          	ret

0001a7c4 <_kill>:
   1a7c4:	05800713          	li	a4,88
   1a7c8:	f6e1a623          	sw	a4,-148(gp) # 1ca5c <errno>
   1a7cc:	fff00513          	li	a0,-1
   1a7d0:	00008067          	ret

0001a7d4 <_lseek>:
   1a7d4:	05800713          	li	a4,88
   1a7d8:	f6e1a623          	sw	a4,-148(gp) # 1ca5c <errno>
   1a7dc:	fff00513          	li	a0,-1
   1a7e0:	00008067          	ret

0001a7e4 <_read>:
   1a7e4:	05800713          	li	a4,88
   1a7e8:	f6e1a623          	sw	a4,-148(gp) # 1ca5c <errno>
   1a7ec:	fff00513          	li	a0,-1
   1a7f0:	00008067          	ret

0001a7f4 <_sbrk>:
   1a7f4:	f841a783          	lw	a5,-124(gp) # 1ca74 <heap_end.0>
   1a7f8:	00078a63          	beqz	a5,1a80c <_sbrk+0x18>
   1a7fc:	00a78533          	add	a0,a5,a0
   1a800:	f8a1a223          	sw	a0,-124(gp) # 1ca74 <heap_end.0>
   1a804:	00078513          	mv	a0,a5
   1a808:	00008067          	ret
   1a80c:	0001d7b7          	lui	a5,0x1d
   1a810:	da878793          	addi	a5,a5,-600 # 1cda8 <__BSS_END__>
   1a814:	00a78533          	add	a0,a5,a0
   1a818:	f8a1a223          	sw	a0,-124(gp) # 1ca74 <heap_end.0>
   1a81c:	00078513          	mv	a0,a5
   1a820:	00008067          	ret

0001a824 <_write>:
   1a824:	05800713          	li	a4,88
   1a828:	f6e1a623          	sw	a4,-148(gp) # 1ca5c <errno>
   1a82c:	fff00513          	li	a0,-1
   1a830:	00008067          	ret

0001a834 <_exit>:
   1a834:	0000006f          	j	1a834 <_exit>
