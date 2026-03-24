
/home/hosung/Ho/SoCLab workspace/RV32I-Project/TinyML/TFLM_standalone/pointwise/build/main_pointwise.elf:     file format elf32-littleriscv


Disassembly of section .text:

000100b4 <main>:
   100b4:	00015537          	lui	a0,0x15
   100b8:	00002637          	lui	a2,0x2
   100bc:	f8010113          	addi	sp,sp,-128
   100c0:	f4060613          	addi	a2,a2,-192 # 1f40 <main-0xe174>
   100c4:	00100593          	li	a1,1
   100c8:	99850513          	addi	a0,a0,-1640 # 14998 <input_data>
   100cc:	06112e23          	sw	ra,124(sp)
   100d0:	05712e23          	sw	s7,92(sp)
   100d4:	05a12823          	sw	s10,80(sp)
   100d8:	06812c23          	sw	s0,120(sp)
   100dc:	06912a23          	sw	s1,116(sp)
   100e0:	07212823          	sw	s2,112(sp)
   100e4:	07312623          	sw	s3,108(sp)
   100e8:	07412423          	sw	s4,104(sp)
   100ec:	07512223          	sw	s5,100(sp)
   100f0:	07612023          	sw	s6,96(sp)
   100f4:	05812c23          	sw	s8,88(sp)
   100f8:	05912a23          	sw	s9,84(sp)
   100fc:	05b12623          	sw	s11,76(sp)
   10100:	388000ef          	jal	10488 <memset>
   10104:	00014537          	lui	a0,0x14
   10108:	00001637          	lui	a2,0x1
   1010c:	00200593          	li	a1,2
   10110:	99850513          	addi	a0,a0,-1640 # 13998 <filter_data>
   10114:	374000ef          	jal	10488 <memset>
   10118:	a0018793          	addi	a5,gp,-1536 # 11958 <bias_data>
   1011c:	00078513          	mv	a0,a5
   10120:	10000613          	li	a2,256
   10124:	00000593          	li	a1,0
   10128:	02f12423          	sw	a5,40(sp)
   1012c:	00012bb7          	lui	s7,0x12
   10130:	358000ef          	jal	10488 <memset>
   10134:	858b8793          	addi	a5,s7,-1960 # 11858 <output_multiplier>
   10138:	02f12223          	sw	a5,36(sp)
   1013c:	10078693          	addi	a3,a5,256
   10140:	40000737          	lui	a4,0x40000
   10144:	00e7a023          	sw	a4,0(a5)
   10148:	00478793          	addi	a5,a5,4
   1014c:	fed79ce3          	bne	a5,a3,10144 <main+0x90>
   10150:	00011cb7          	lui	s9,0x11
   10154:	758c8513          	addi	a0,s9,1880 # 11758 <output_shift>
   10158:	10000613          	li	a2,256
   1015c:	0ff00593          	li	a1,255
   10160:	328000ef          	jal	10488 <memset>
   10164:	000157b7          	lui	a5,0x15
   10168:	99878793          	addi	a5,a5,-1640 # 14998 <input_data>
   1016c:	00012c37          	lui	s8,0x12
   10170:	00014ab7          	lui	s5,0x14
   10174:	02f12c23          	sw	a5,56(sp)
   10178:	a58c0793          	addi	a5,s8,-1448 # 11a58 <output_data>
   1017c:	758c8713          	addi	a4,s9,1880
   10180:	02f12623          	sw	a5,44(sp)
   10184:	998a8793          	addi	a5,s5,-1640 # 13998 <filter_data>
   10188:	02e12a23          	sw	a4,52(sp)
   1018c:	02f12023          	sw	a5,32(sp)
   10190:	00000a13          	li	s4,0
   10194:	00000493          	li	s1,0
   10198:	00000913          	li	s2,0
   1019c:	01900413          	li	s0,25
   101a0:	000a0693          	mv	a3,s4
   101a4:	00100c13          	li	s8,1
   101a8:	00048b93          	mv	s7,s1
   101ac:	000a0b13          	mv	s6,s4
   101b0:	fffc0c93          	addi	s9,s8,-1
   101b4:	01812e23          	sw	s8,28(sp)
   101b8:	00000993          	li	s3,0
   101bc:	00000a93          	li	s5,0
   101c0:	03712823          	sw	s7,48(sp)
   101c4:	00068c13          	mv	s8,a3
   101c8:	02912e23          	sw	s1,60(sp)
   101cc:	000b0a13          	mv	s4,s6
   101d0:	03812783          	lw	a5,56(sp)
   101d4:	00090713          	mv	a4,s2
   101d8:	00098d93          	mv	s11,s3
   101dc:	01878d33          	add	s10,a5,s8
   101e0:	00090b13          	mv	s6,s2
   101e4:	000c8493          	mv	s1,s9
   101e8:	00098913          	mv	s2,s3
   101ec:	000d0c93          	mv	s9,s10
   101f0:	00000993          	li	s3,0
   101f4:	000a0613          	mv	a2,s4
   101f8:	00048d13          	mv	s10,s1
   101fc:	00098a13          	mv	s4,s3
   10200:	000c8793          	mv	a5,s9
   10204:	00070993          	mv	s3,a4
   10208:	00048713          	mv	a4,s1
   1020c:	000d8493          	mv	s1,s11
   10210:	01800693          	li	a3,24
   10214:	0da6c463          	blt	a3,s10,102dc <main+0x228>
   10218:	00400693          	li	a3,4
   1021c:	0d36c863          	blt	a3,s3,102ec <main+0x238>
   10220:	000b0693          	mv	a3,s6
   10224:	000c0593          	mv	a1,s8
   10228:	00090b13          	mv	s6,s2
   1022c:	000a8c13          	mv	s8,s5
   10230:	000d0913          	mv	s2,s10
   10234:	00098a93          	mv	s5,s3
   10238:	00048993          	mv	s3,s1
   1023c:	00078b93          	mv	s7,a5
   10240:	02012783          	lw	a5,32(sp)
   10244:	01312623          	sw	s3,12(sp)
   10248:	01212823          	sw	s2,16(sp)
   1024c:	013784b3          	add	s1,a5,s3
   10250:	000b8913          	mv	s2,s7
   10254:	000a0993          	mv	s3,s4
   10258:	00e12a23          	sw	a4,20(sp)
   1025c:	040b8a13          	addi	s4,s7,64
   10260:	00c12c23          	sw	a2,24(sp)
   10264:	00068b93          	mv	s7,a3
   10268:	00058d13          	mv	s10,a1
   1026c:	00048583          	lb	a1,0(s1)
   10270:	00090503          	lb	a0,0(s2)
   10274:	00190913          	addi	s2,s2,1
   10278:	00148493          	addi	s1,s1,1
   1027c:	370000ef          	jal	105ec <__mulsi3>
   10280:	00a989b3          	add	s3,s3,a0
   10284:	ff2a14e3          	bne	s4,s2,1026c <main+0x1b8>
   10288:	01012903          	lw	s2,16(sp)
   1028c:	01c12783          	lw	a5,28(sp)
   10290:	000a0493          	mv	s1,s4
   10294:	00190913          	addi	s2,s2,1
   10298:	00098a13          	mv	s4,s3
   1029c:	01412703          	lw	a4,20(sp)
   102a0:	01812603          	lw	a2,24(sp)
   102a4:	00c12983          	lw	s3,12(sp)
   102a8:	000b8693          	mv	a3,s7
   102ac:	000d0593          	mv	a1,s10
   102b0:	19278463          	beq	a5,s2,10438 <main+0x384>
   102b4:	00048793          	mv	a5,s1
   102b8:	04098993          	addi	s3,s3,64
   102bc:	f88910e3          	bne	s2,s0,1023c <main+0x188>
   102c0:	00098493          	mv	s1,s3
   102c4:	00090d13          	mv	s10,s2
   102c8:	000a8993          	mv	s3,s5
   102cc:	000b0913          	mv	s2,s6
   102d0:	000c0a93          	mv	s5,s8
   102d4:	000b8b13          	mv	s6,s7
   102d8:	00058c13          	mv	s8,a1
   102dc:	001d0d13          	addi	s10,s10,1
   102e0:	04078793          	addi	a5,a5,64
   102e4:	04048493          	addi	s1,s1,64
   102e8:	f29ff06f          	j	10210 <main+0x15c>
   102ec:	01c12583          	lw	a1,28(sp)
   102f0:	001d0693          	addi	a3,s10,1
   102f4:	002d0d13          	addi	s10,s10,2
   102f8:	02d58663          	beq	a1,a3,10324 <main+0x270>
   102fc:	16868863          	beq	a3,s0,1046c <main+0x3b8>
   10300:	01c12683          	lw	a3,28(sp)
   10304:	03a68063          	beq	a3,s10,10324 <main+0x270>
   10308:	08078793          	addi	a5,a5,128
   1030c:	08048493          	addi	s1,s1,128
   10310:	fc8d06e3          	beq	s10,s0,102dc <main+0x228>
   10314:	01c12583          	lw	a1,28(sp)
   10318:	001d0693          	addi	a3,s10,1
   1031c:	002d0d13          	addi	s10,s10,2
   10320:	fcd59ee3          	bne	a1,a3,102fc <main+0x248>
   10324:	00070493          	mv	s1,a4
   10328:	00098713          	mv	a4,s3
   1032c:	640c8c93          	addi	s9,s9,1600
   10330:	000a0993          	mv	s3,s4
   10334:	040d8d93          	addi	s11,s11,64
   10338:	00060a13          	mv	s4,a2
   1033c:	13671463          	bne	a4,s6,10464 <main+0x3b0>
   10340:	02812703          	lw	a4,40(sp)
   10344:	002a9793          	slli	a5,s5,0x2
   10348:	00098d93          	mv	s11,s3
   1034c:	00f706b3          	add	a3,a4,a5
   10350:	03412703          	lw	a4,52(sp)
   10354:	0006a503          	lw	a0,0(a3)
   10358:	00090993          	mv	s3,s2
   1035c:	00f706b3          	add	a3,a4,a5
   10360:	02412703          	lw	a4,36(sp)
   10364:	0006a603          	lw	a2,0(a3)
   10368:	00ad8533          	add	a0,s11,a0
   1036c:	00f707b3          	add	a5,a4,a5
   10370:	0007a583          	lw	a1,0(a5)
   10374:	000b0913          	mv	s2,s6
   10378:	00048c93          	mv	s9,s1
   1037c:	13c000ef          	jal	104b8 <_ZN6tflite29MultiplyByQuantizedMultiplierElli>
   10380:	03012703          	lw	a4,48(sp)
   10384:	02c12783          	lw	a5,44(sp)
   10388:	00e787b3          	add	a5,a5,a4
   1038c:	f8000713          	li	a4,-128
   10390:	015787b3          	add	a5,a5,s5
   10394:	00e55463          	bge	a0,a4,1039c <main+0x2e8>
   10398:	00070513          	mv	a0,a4
   1039c:	07f00713          	li	a4,127
   103a0:	00a75463          	bge	a4,a0,103a8 <main+0x2f4>
   103a4:	00070513          	mv	a0,a4
   103a8:	00a78023          	sb	a0,0(a5)
   103ac:	001a8a93          	addi	s5,s5,1
   103b0:	04000793          	li	a5,64
   103b4:	00f989b3          	add	s3,s3,a5
   103b8:	e0fa9ce3          	bne	s5,a5,101d0 <main+0x11c>
   103bc:	015c06b3          	add	a3,s8,s5
   103c0:	01c12c03          	lw	s8,28(sp)
   103c4:	03012b83          	lw	s7,48(sp)
   103c8:	01a00793          	li	a5,26
   103cc:	001c0c13          	addi	s8,s8,1
   103d0:	03c12483          	lw	s1,60(sp)
   103d4:	000a0b13          	mv	s6,s4
   103d8:	015b8bb3          	add	s7,s7,s5
   103dc:	dcfc1ae3          	bne	s8,a5,101b0 <main+0xfc>
   103e0:	00190913          	addi	s2,s2,1
   103e4:	00500793          	li	a5,5
   103e8:	64048493          	addi	s1,s1,1600
   103ec:	640a0a13          	addi	s4,s4,1600
   103f0:	daf918e3          	bne	s2,a5,101a0 <main+0xec>
   103f4:	02c12783          	lw	a5,44(sp)
   103f8:	07c12083          	lw	ra,124(sp)
   103fc:	07812403          	lw	s0,120(sp)
   10400:	00078503          	lb	a0,0(a5)
   10404:	07412483          	lw	s1,116(sp)
   10408:	07012903          	lw	s2,112(sp)
   1040c:	06c12983          	lw	s3,108(sp)
   10410:	06812a03          	lw	s4,104(sp)
   10414:	06412a83          	lw	s5,100(sp)
   10418:	06012b03          	lw	s6,96(sp)
   1041c:	05c12b83          	lw	s7,92(sp)
   10420:	05812c03          	lw	s8,88(sp)
   10424:	05412c83          	lw	s9,84(sp)
   10428:	05012d03          	lw	s10,80(sp)
   1042c:	04c12d83          	lw	s11,76(sp)
   10430:	08010113          	addi	sp,sp,128
   10434:	00008067          	ret
   10438:	000b0913          	mv	s2,s6
   1043c:	00070493          	mv	s1,a4
   10440:	000b8b13          	mv	s6,s7
   10444:	000a8713          	mv	a4,s5
   10448:	000a0993          	mv	s3,s4
   1044c:	000c0a93          	mv	s5,s8
   10450:	00060a13          	mv	s4,a2
   10454:	000d0c13          	mv	s8,s10
   10458:	640c8c93          	addi	s9,s9,1600
   1045c:	040d8d93          	addi	s11,s11,64
   10460:	ef6700e3          	beq	a4,s6,10340 <main+0x28c>
   10464:	00170713          	addi	a4,a4,1 # 40000001 <__BSS_END__+0x3ffe9729>
   10468:	d8dff06f          	j	101f4 <main+0x140>
   1046c:	08078793          	addi	a5,a5,128
   10470:	08048493          	addi	s1,s1,128
   10474:	01a00d13          	li	s10,26
   10478:	001d0d13          	addi	s10,s10,1
   1047c:	04078793          	addi	a5,a5,64
   10480:	04048493          	addi	s1,s1,64
   10484:	d8dff06f          	j	10210 <main+0x15c>

00010488 <memset>:
   10488:	ff010113          	addi	sp,sp,-16
   1048c:	00812423          	sw	s0,8(sp)
   10490:	00112623          	sw	ra,12(sp)
   10494:	00050413          	mv	s0,a0
   10498:	00060663          	beqz	a2,104a4 <memset+0x1c>
   1049c:	0ff5f593          	zext.b	a1,a1
   104a0:	fe9ff0ef          	jal	10488 <memset>
   104a4:	00c12083          	lw	ra,12(sp)
   104a8:	00040513          	mv	a0,s0
   104ac:	00812403          	lw	s0,8(sp)
   104b0:	01010113          	addi	sp,sp,16
   104b4:	00008067          	ret

000104b8 <_ZN6tflite29MultiplyByQuantizedMultiplierElli>:
   104b8:	fff64793          	not	a5,a2
   104bc:	41f7d793          	srai	a5,a5,0x1f
   104c0:	ff010113          	addi	sp,sp,-16
   104c4:	00f677b3          	and	a5,a2,a5
   104c8:	00f51533          	sll	a0,a0,a5
   104cc:	00812423          	sw	s0,8(sp)
   104d0:	800007b7          	lui	a5,0x80000
   104d4:	00060413          	mv	s0,a2
   104d8:	40b50833          	sub	a6,a0,a1
   104dc:	00058613          	mv	a2,a1
   104e0:	fff40713          	addi	a4,s0,-1
   104e4:	00f507b3          	add	a5,a0,a5
   104e8:	0017b793          	seqz	a5,a5
   104ec:	00183813          	seqz	a6,a6
   104f0:	41f75713          	srai	a4,a4,0x1f
   104f4:	40800433          	neg	s0,s0
   104f8:	41f55593          	srai	a1,a0,0x1f
   104fc:	41f65693          	srai	a3,a2,0x1f
   10500:	00912223          	sw	s1,4(sp)
   10504:	00112623          	sw	ra,12(sp)
   10508:	0107f4b3          	and	s1,a5,a6
   1050c:	00e47433          	and	s0,s0,a4
   10510:	100000ef          	jal	10610 <__muldi3>
   10514:	0805c263          	bltz	a1,10598 <_ZN6tflite29MultiplyByQuantizedMultiplierElli+0xe0>
   10518:	fe040713          	addi	a4,s0,-32
   1051c:	400006b7          	lui	a3,0x40000
   10520:	00000793          	li	a5,0
   10524:	08074463          	bltz	a4,105ac <_ZN6tflite29MultiplyByQuantizedMultiplierElli+0xf4>
   10528:	00000713          	li	a4,0
   1052c:	fff70713          	addi	a4,a4,-1
   10530:	40175613          	srai	a2,a4,0x1
   10534:	08049663          	bnez	s1,105c0 <_ZN6tflite29MultiplyByQuantizedMultiplierElli+0x108>
   10538:	00a686b3          	add	a3,a3,a0
   1053c:	00a6b533          	sltu	a0,a3,a0
   10540:	00b787b3          	add	a5,a5,a1
   10544:	00f50533          	add	a0,a0,a5
   10548:	41f55793          	srai	a5,a0,0x1f
   1054c:	00179793          	slli	a5,a5,0x1
   10550:	0017d793          	srli	a5,a5,0x1
   10554:	00d786b3          	add	a3,a5,a3
   10558:	00f6b7b3          	sltu	a5,a3,a5
   1055c:	00a787b3          	add	a5,a5,a0
   10560:	01f6d693          	srli	a3,a3,0x1f
   10564:	00179793          	slli	a5,a5,0x1
   10568:	00d787b3          	add	a5,a5,a3
   1056c:	00c12083          	lw	ra,12(sp)
   10570:	01f7d693          	srli	a3,a5,0x1f
   10574:	00e7f533          	and	a0,a5,a4
   10578:	4087d7b3          	sra	a5,a5,s0
   1057c:	00812403          	lw	s0,8(sp)
   10580:	00d60633          	add	a2,a2,a3
   10584:	00a62533          	slt	a0,a2,a0
   10588:	00412483          	lw	s1,4(sp)
   1058c:	00a78533          	add	a0,a5,a0
   10590:	01010113          	addi	sp,sp,16
   10594:	00008067          	ret
   10598:	c00006b7          	lui	a3,0xc0000
   1059c:	fe040713          	addi	a4,s0,-32
   105a0:	00168693          	addi	a3,a3,1 # c0000001 <__BSS_END__+0xbffe9729>
   105a4:	fff00793          	li	a5,-1
   105a8:	f80750e3          	bgez	a4,10528 <_ZN6tflite29MultiplyByQuantizedMultiplierElli+0x70>
   105ac:	00100713          	li	a4,1
   105b0:	00871733          	sll	a4,a4,s0
   105b4:	fff70713          	addi	a4,a4,-1
   105b8:	40175613          	srai	a2,a4,0x1
   105bc:	f6048ee3          	beqz	s1,10538 <_ZN6tflite29MultiplyByQuantizedMultiplierElli+0x80>
   105c0:	800007b7          	lui	a5,0x80000
   105c4:	fff78793          	addi	a5,a5,-1 # 7fffffff <__BSS_END__+0x7ffe9727>
   105c8:	00c12083          	lw	ra,12(sp)
   105cc:	00f77533          	and	a0,a4,a5
   105d0:	4087d7b3          	sra	a5,a5,s0
   105d4:	00812403          	lw	s0,8(sp)
   105d8:	00a62533          	slt	a0,a2,a0
   105dc:	00412483          	lw	s1,4(sp)
   105e0:	00a78533          	add	a0,a5,a0
   105e4:	01010113          	addi	sp,sp,16
   105e8:	00008067          	ret

000105ec <__mulsi3>:
   105ec:	00050613          	mv	a2,a0
   105f0:	00000513          	li	a0,0
   105f4:	0015f693          	andi	a3,a1,1
   105f8:	00068463          	beqz	a3,10600 <__mulsi3+0x14>
   105fc:	00c50533          	add	a0,a0,a2
   10600:	0015d593          	srli	a1,a1,0x1
   10604:	00161613          	slli	a2,a2,0x1
   10608:	fe0596e3          	bnez	a1,105f4 <__mulsi3+0x8>
   1060c:	00008067          	ret

00010610 <__muldi3>:
   10610:	ff010113          	addi	sp,sp,-16
   10614:	00068313          	mv	t1,a3
   10618:	00112623          	sw	ra,12(sp)
   1061c:	00050e13          	mv	t3,a0
   10620:	00050693          	mv	a3,a0
   10624:	00060893          	mv	a7,a2
   10628:	00000713          	li	a4,0
   1062c:	00000793          	li	a5,0
   10630:	00000813          	li	a6,0
   10634:	0018fe93          	andi	t4,a7,1
   10638:	00171513          	slli	a0,a4,0x1
   1063c:	000e8a63          	beqz	t4,10650 <__muldi3+0x40>
   10640:	01068833          	add	a6,a3,a6
   10644:	00e787b3          	add	a5,a5,a4
   10648:	00d83733          	sltu	a4,a6,a3
   1064c:	00f707b3          	add	a5,a4,a5
   10650:	01f6d713          	srli	a4,a3,0x1f
   10654:	0018d893          	srli	a7,a7,0x1
   10658:	00e56733          	or	a4,a0,a4
   1065c:	00169693          	slli	a3,a3,0x1
   10660:	fc089ae3          	bnez	a7,10634 <__muldi3+0x24>
   10664:	00058863          	beqz	a1,10674 <__muldi3+0x64>
   10668:	00060513          	mv	a0,a2
   1066c:	f81ff0ef          	jal	105ec <__mulsi3>
   10670:	00a787b3          	add	a5,a5,a0
   10674:	00030a63          	beqz	t1,10688 <__muldi3+0x78>
   10678:	000e0513          	mv	a0,t3
   1067c:	00030593          	mv	a1,t1
   10680:	f6dff0ef          	jal	105ec <__mulsi3>
   10684:	00f507b3          	add	a5,a0,a5
   10688:	00c12083          	lw	ra,12(sp)
   1068c:	00080513          	mv	a0,a6
   10690:	00078593          	mv	a1,a5
   10694:	01010113          	addi	sp,sp,16
   10698:	00008067          	ret
