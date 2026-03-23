
main_pointwise.elf:     file format elf32-littleriscv


Disassembly of section .text:

000100b4 <main>:
   100b4:	f9010113          	addi	sp,sp,-112
   100b8:	000127b7          	lui	a5,0x12
   100bc:	8a078793          	addi	a5,a5,-1888 # 118a0 <output_data>
   100c0:	05612823          	sw	s6,80(sp)
   100c4:	05412c23          	sw	s4,88(sp)
   100c8:	05512a23          	sw	s5,84(sp)
   100cc:	00014737          	lui	a4,0x14
   100d0:	00f12c23          	sw	a5,24(sp)
   100d4:	00011a37          	lui	s4,0x11
   100d8:	00078a93          	mv	s5,a5
   100dc:	a0018793          	addi	a5,gp,-1536 # 117a0 <bias_data>
   100e0:	7e070613          	addi	a2,a4,2016 # 147e0 <input_data>
   100e4:	00f12e23          	sw	a5,28(sp)
   100e8:	6a0a0793          	addi	a5,s4,1696 # 116a0 <output_multiplier>
   100ec:	06812423          	sw	s0,104(sp)
   100f0:	07212023          	sw	s2,96(sp)
   100f4:	05312e23          	sw	s3,92(sp)
   100f8:	00f12823          	sw	a5,16(sp)
   100fc:	06112623          	sw	ra,108(sp)
   10100:	06912223          	sw	s1,100(sp)
   10104:	05712623          	sw	s7,76(sp)
   10108:	05812423          	sw	s8,72(sp)
   1010c:	05912223          	sw	s9,68(sp)
   10110:	05a12023          	sw	s10,64(sp)
   10114:	03b12e23          	sw	s11,60(sp)
   10118:	00000413          	li	s0,0
   1011c:	f8000993          	li	s3,-128
   10120:	07f00913          	li	s2,127
   10124:	04060793          	addi	a5,a2,64
   10128:	64078c93          	addi	s9,a5,1600
   1012c:	00078b93          	mv	s7,a5
   10130:	03512223          	sw	s5,36(sp)
   10134:	02812423          	sw	s0,40(sp)
   10138:	01512a23          	sw	s5,20(sp)
   1013c:	03912623          	sw	s9,44(sp)
   10140:	01012783          	lw	a5,16(sp)
   10144:	01c12d83          	lw	s11,28(sp)
   10148:	01412d03          	lw	s10,20(sp)
   1014c:	02f12023          	sw	a5,32(sp)
   10150:	000117b7          	lui	a5,0x11
   10154:	5a078a13          	addi	s4,a5,1440 # 115a0 <output_shift>
   10158:	01012403          	lw	s0,16(sp)
   1015c:	000137b7          	lui	a5,0x13
   10160:	7e078c13          	addi	s8,a5,2016 # 137e0 <filter_data>
   10164:	fc0b8793          	addi	a5,s7,-64
   10168:	00000a93          	li	s5,0
   1016c:	00f12623          	sw	a5,12(sp)
   10170:	000a0c93          	mv	s9,s4
   10174:	00c12b03          	lw	s6,12(sp)
   10178:	000c0a13          	mv	s4,s8
   1017c:	00000493          	li	s1,0
   10180:	000a0583          	lb	a1,0(s4)
   10184:	000b0503          	lb	a0,0(s6)
   10188:	001b0b13          	addi	s6,s6,1
   1018c:	001a0a13          	addi	s4,s4,1
   10190:	2a4000ef          	jal	10434 <__mulsi3>
   10194:	00a484b3          	add	s1,s1,a0
   10198:	ff6b94e3          	bne	s7,s6,10180 <main+0xcc>
   1019c:	000da503          	lw	a0,0(s11)
   101a0:	000ca603          	lw	a2,0(s9)
   101a4:	00042583          	lw	a1,0(s0)
   101a8:	00a48533          	add	a0,s1,a0
   101ac:	154000ef          	jal	10300 <_ZN6tflite29MultiplyByQuantizedMultiplierElli>
   101b0:	01355463          	bge	a0,s3,101b8 <main+0x104>
   101b4:	f8000513          	li	a0,-128
   101b8:	00a95463          	bge	s2,a0,101c0 <main+0x10c>
   101bc:	07f00513          	li	a0,127
   101c0:	00ad0023          	sb	a0,0(s10)
   101c4:	040a8a93          	addi	s5,s5,64
   101c8:	000017b7          	lui	a5,0x1
   101cc:	004d8d93          	addi	s11,s11,4
   101d0:	00440413          	addi	s0,s0,4
   101d4:	004c8c93          	addi	s9,s9,4
   101d8:	001d0d13          	addi	s10,s10,1
   101dc:	040c0c13          	addi	s8,s8,64
   101e0:	f8fa9ae3          	bne	s5,a5,10174 <main+0xc0>
   101e4:	01412783          	lw	a5,20(sp)
   101e8:	040b8b93          	addi	s7,s7,64
   101ec:	04078793          	addi	a5,a5,64 # 1040 <main-0xf074>
   101f0:	00f12a23          	sw	a5,20(sp)
   101f4:	02c12783          	lw	a5,44(sp)
   101f8:	f4fb94e3          	bne	s7,a5,10140 <main+0x8c>
   101fc:	02812403          	lw	s0,40(sp)
   10200:	000a8b13          	mv	s6,s5
   10204:	02412a83          	lw	s5,36(sp)
   10208:	01940413          	addi	s0,s0,25
   1020c:	07d00793          	li	a5,125
   10210:	640a8a93          	addi	s5,s5,1600
   10214:	00f40663          	beq	s0,a5,10220 <main+0x16c>
   10218:	000b8793          	mv	a5,s7
   1021c:	f0dff06f          	j	10128 <main+0x74>
   10220:	000147b7          	lui	a5,0x14
   10224:	00002637          	lui	a2,0x2
   10228:	7e078513          	addi	a0,a5,2016 # 147e0 <input_data>
   1022c:	f4060613          	addi	a2,a2,-192 # 1f40 <main-0xe174>
   10230:	00100593          	li	a1,1
   10234:	02012483          	lw	s1,32(sp)
   10238:	098000ef          	jal	102d0 <memset>
   1023c:	000137b7          	lui	a5,0x13
   10240:	7e078513          	addi	a0,a5,2016 # 137e0 <filter_data>
   10244:	000b0613          	mv	a2,s6
   10248:	00200593          	li	a1,2
   1024c:	084000ef          	jal	102d0 <memset>
   10250:	01c12503          	lw	a0,28(sp)
   10254:	10000613          	li	a2,256
   10258:	00000593          	li	a1,0
   1025c:	074000ef          	jal	102d0 <memset>
   10260:	01012783          	lw	a5,16(sp)
   10264:	40000737          	lui	a4,0x40000
   10268:	10078a13          	addi	s4,a5,256
   1026c:	00e4a023          	sw	a4,0(s1)
   10270:	00448493          	addi	s1,s1,4
   10274:	fe9a1ce3          	bne	s4,s1,1026c <main+0x1b8>
   10278:	000117b7          	lui	a5,0x11
   1027c:	5a078513          	addi	a0,a5,1440 # 115a0 <output_shift>
   10280:	10000613          	li	a2,256
   10284:	0ff00593          	li	a1,255
   10288:	048000ef          	jal	102d0 <memset>
   1028c:	01812783          	lw	a5,24(sp)
   10290:	06c12083          	lw	ra,108(sp)
   10294:	06812403          	lw	s0,104(sp)
   10298:	00078503          	lb	a0,0(a5)
   1029c:	06412483          	lw	s1,100(sp)
   102a0:	06012903          	lw	s2,96(sp)
   102a4:	05c12983          	lw	s3,92(sp)
   102a8:	05812a03          	lw	s4,88(sp)
   102ac:	05412a83          	lw	s5,84(sp)
   102b0:	05012b03          	lw	s6,80(sp)
   102b4:	04c12b83          	lw	s7,76(sp)
   102b8:	04812c03          	lw	s8,72(sp)
   102bc:	04412c83          	lw	s9,68(sp)
   102c0:	04012d03          	lw	s10,64(sp)
   102c4:	03c12d83          	lw	s11,60(sp)
   102c8:	07010113          	addi	sp,sp,112
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
   10308:	ff010113          	addi	sp,sp,-16
   1030c:	00f677b3          	and	a5,a2,a5
   10310:	00f51533          	sll	a0,a0,a5
   10314:	00812423          	sw	s0,8(sp)
   10318:	800007b7          	lui	a5,0x80000
   1031c:	00060413          	mv	s0,a2
   10320:	40b50833          	sub	a6,a0,a1
   10324:	00058613          	mv	a2,a1
   10328:	fff40713          	addi	a4,s0,-1
   1032c:	00f507b3          	add	a5,a0,a5
   10330:	0017b793          	seqz	a5,a5
   10334:	00183813          	seqz	a6,a6
   10338:	41f75713          	srai	a4,a4,0x1f
   1033c:	40800433          	neg	s0,s0
   10340:	41f55593          	srai	a1,a0,0x1f
   10344:	41f65693          	srai	a3,a2,0x1f
   10348:	00912223          	sw	s1,4(sp)
   1034c:	00112623          	sw	ra,12(sp)
   10350:	0107f4b3          	and	s1,a5,a6
   10354:	00e47433          	and	s0,s0,a4
   10358:	100000ef          	jal	10458 <__muldi3>
   1035c:	0805c263          	bltz	a1,103e0 <_ZN6tflite29MultiplyByQuantizedMultiplierElli+0xe0>
   10360:	fe040713          	addi	a4,s0,-32
   10364:	400006b7          	lui	a3,0x40000
   10368:	00000793          	li	a5,0
   1036c:	08074463          	bltz	a4,103f4 <_ZN6tflite29MultiplyByQuantizedMultiplierElli+0xf4>
   10370:	00000713          	li	a4,0
   10374:	fff70713          	addi	a4,a4,-1 # 3fffffff <__BSS_END__+0x3ffe98df>
   10378:	40175613          	srai	a2,a4,0x1
   1037c:	08049663          	bnez	s1,10408 <_ZN6tflite29MultiplyByQuantizedMultiplierElli+0x108>
   10380:	00a686b3          	add	a3,a3,a0
   10384:	00a6b533          	sltu	a0,a3,a0
   10388:	00b787b3          	add	a5,a5,a1
   1038c:	00f50533          	add	a0,a0,a5
   10390:	41f55793          	srai	a5,a0,0x1f
   10394:	00179793          	slli	a5,a5,0x1
   10398:	0017d793          	srli	a5,a5,0x1
   1039c:	00d786b3          	add	a3,a5,a3
   103a0:	00f6b7b3          	sltu	a5,a3,a5
   103a4:	00a787b3          	add	a5,a5,a0
   103a8:	01f6d693          	srli	a3,a3,0x1f
   103ac:	00179793          	slli	a5,a5,0x1
   103b0:	00d787b3          	add	a5,a5,a3
   103b4:	00c12083          	lw	ra,12(sp)
   103b8:	01f7d693          	srli	a3,a5,0x1f
   103bc:	00e7f533          	and	a0,a5,a4
   103c0:	4087d7b3          	sra	a5,a5,s0
   103c4:	00812403          	lw	s0,8(sp)
   103c8:	00d60633          	add	a2,a2,a3
   103cc:	00a62533          	slt	a0,a2,a0
   103d0:	00412483          	lw	s1,4(sp)
   103d4:	00a78533          	add	a0,a5,a0
   103d8:	01010113          	addi	sp,sp,16
   103dc:	00008067          	ret
   103e0:	c00006b7          	lui	a3,0xc0000
   103e4:	fe040713          	addi	a4,s0,-32
   103e8:	00168693          	addi	a3,a3,1 # c0000001 <__BSS_END__+0xbffe98e1>
   103ec:	fff00793          	li	a5,-1
   103f0:	f80750e3          	bgez	a4,10370 <_ZN6tflite29MultiplyByQuantizedMultiplierElli+0x70>
   103f4:	00100713          	li	a4,1
   103f8:	00871733          	sll	a4,a4,s0
   103fc:	fff70713          	addi	a4,a4,-1
   10400:	40175613          	srai	a2,a4,0x1
   10404:	f6048ee3          	beqz	s1,10380 <_ZN6tflite29MultiplyByQuantizedMultiplierElli+0x80>
   10408:	800007b7          	lui	a5,0x80000
   1040c:	fff78793          	addi	a5,a5,-1 # 7fffffff <__BSS_END__+0x7ffe98df>
   10410:	00c12083          	lw	ra,12(sp)
   10414:	00f77533          	and	a0,a4,a5
   10418:	4087d7b3          	sra	a5,a5,s0
   1041c:	00812403          	lw	s0,8(sp)
   10420:	00a62533          	slt	a0,a2,a0
   10424:	00412483          	lw	s1,4(sp)
   10428:	00a78533          	add	a0,a5,a0
   1042c:	01010113          	addi	sp,sp,16
   10430:	00008067          	ret

00010434 <__mulsi3>:
   10434:	00050613          	mv	a2,a0
   10438:	00000513          	li	a0,0
   1043c:	0015f693          	andi	a3,a1,1
   10440:	00068463          	beqz	a3,10448 <__mulsi3+0x14>
   10444:	00c50533          	add	a0,a0,a2
   10448:	0015d593          	srli	a1,a1,0x1
   1044c:	00161613          	slli	a2,a2,0x1
   10450:	fe0596e3          	bnez	a1,1043c <__mulsi3+0x8>
   10454:	00008067          	ret

00010458 <__muldi3>:
   10458:	ff010113          	addi	sp,sp,-16
   1045c:	00068313          	mv	t1,a3
   10460:	00112623          	sw	ra,12(sp)
   10464:	00050e13          	mv	t3,a0
   10468:	00050693          	mv	a3,a0
   1046c:	00060893          	mv	a7,a2
   10470:	00000713          	li	a4,0
   10474:	00000793          	li	a5,0
   10478:	00000813          	li	a6,0
   1047c:	0018fe93          	andi	t4,a7,1
   10480:	00171513          	slli	a0,a4,0x1
   10484:	000e8a63          	beqz	t4,10498 <__muldi3+0x40>
   10488:	01068833          	add	a6,a3,a6
   1048c:	00e787b3          	add	a5,a5,a4
   10490:	00d83733          	sltu	a4,a6,a3
   10494:	00f707b3          	add	a5,a4,a5
   10498:	01f6d713          	srli	a4,a3,0x1f
   1049c:	0018d893          	srli	a7,a7,0x1
   104a0:	00e56733          	or	a4,a0,a4
   104a4:	00169693          	slli	a3,a3,0x1
   104a8:	fc089ae3          	bnez	a7,1047c <__muldi3+0x24>
   104ac:	00058863          	beqz	a1,104bc <__muldi3+0x64>
   104b0:	00060513          	mv	a0,a2
   104b4:	f81ff0ef          	jal	10434 <__mulsi3>
   104b8:	00a787b3          	add	a5,a5,a0
   104bc:	00030a63          	beqz	t1,104d0 <__muldi3+0x78>
   104c0:	000e0513          	mv	a0,t3
   104c4:	00030593          	mv	a1,t1
   104c8:	f6dff0ef          	jal	10434 <__mulsi3>
   104cc:	00f507b3          	add	a5,a0,a5
   104d0:	00c12083          	lw	ra,12(sp)
   104d4:	00080513          	mv	a0,a6
   104d8:	00078593          	mv	a1,a5
   104dc:	01010113          	addi	sp,sp,16
   104e0:	00008067          	ret
