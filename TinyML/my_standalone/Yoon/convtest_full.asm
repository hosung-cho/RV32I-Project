
convtest.elf:     file format elf32-littleriscv


Disassembly of section .text:

000100b4 <main>:
   100b4:	fa010113          	addi	sp,sp,-96
   100b8:	04912a23          	sw	s1,84(sp)
   100bc:	000114b7          	lui	s1,0x11
   100c0:	04112e23          	sw	ra,92(sp)
   100c4:	04812c23          	sw	s0,88(sp)
   100c8:	05212823          	sw	s2,80(sp)
   100cc:	05312623          	sw	s3,76(sp)
   100d0:	05412423          	sw	s4,72(sp)
   100d4:	05512223          	sw	s5,68(sp)
   100d8:	05612023          	sw	s6,64(sp)
   100dc:	03712e23          	sw	s7,60(sp)
   100e0:	03812c23          	sw	s8,56(sp)
   100e4:	43c48493          	addi	s1,s1,1084 # 1143c <_ZZ4mainE10input_data>
   100e8:	00000793          	li	a5,0
   100ec:	00a00693          	li	a3,10
   100f0:	02400713          	li	a4,36
   100f4:	00f48633          	add	a2,s1,a5
   100f8:	00d60023          	sb	a3,0(a2)
   100fc:	00178793          	addi	a5,a5,1
   10100:	fee79ae3          	bne	a5,a4,100f4 <main+0x40>
   10104:	00012623          	sw	zero,12(sp)
   10108:	00012823          	sw	zero,16(sp)
   1010c:	00012a23          	sw	zero,20(sp)
   10110:	00012c23          	sw	zero,24(sp)
   10114:	00012e23          	sw	zero,28(sp)
   10118:	02012023          	sw	zero,32(sp)
   1011c:	02012223          	sw	zero,36(sp)
   10120:	02012423          	sw	zero,40(sp)
   10124:	02012623          	sw	zero,44(sp)
   10128:	00c10913          	addi	s2,sp,12
   1012c:	00000b93          	li	s7,0
   10130:	00011b37          	lui	s6,0x11
   10134:	f8000a93          	li	s5,-128
   10138:	07f00a13          	li	s4,127
   1013c:	00600993          	li	s3,6
   10140:	02400c13          	li	s8,36
   10144:	00000413          	li	s0,0
   10148:	008487b3          	add	a5,s1,s0
   1014c:	00078503          	lb	a0,0(a5)
   10150:	438b0583          	lb	a1,1080(s6) # 11438 <_ZZ4mainE11filter_data>
   10154:	1a8000ef          	jal	102fc <__mulsi3>
   10158:	00000613          	li	a2,0
   1015c:	400005b7          	lui	a1,0x40000
   10160:	068000ef          	jal	101c8 <_ZN6tflite29MultiplyByQuantizedMultiplierElli>
   10164:	008907b3          	add	a5,s2,s0
   10168:	00140413          	addi	s0,s0,1
   1016c:	01555463          	bge	a0,s5,10174 <main+0xc0>
   10170:	f8000513          	li	a0,-128
   10174:	00aa5463          	bge	s4,a0,1017c <main+0xc8>
   10178:	07f00513          	li	a0,127
   1017c:	00a78023          	sb	a0,0(a5)
   10180:	fd3414e3          	bne	s0,s3,10148 <main+0x94>
   10184:	006b8b93          	addi	s7,s7,6
   10188:	00648493          	addi	s1,s1,6
   1018c:	00690913          	addi	s2,s2,6
   10190:	fb8b9ae3          	bne	s7,s8,10144 <main+0x90>
   10194:	05c12083          	lw	ra,92(sp)
   10198:	05812403          	lw	s0,88(sp)
   1019c:	00c10503          	lb	a0,12(sp)
   101a0:	05412483          	lw	s1,84(sp)
   101a4:	05012903          	lw	s2,80(sp)
   101a8:	04c12983          	lw	s3,76(sp)
   101ac:	04812a03          	lw	s4,72(sp)
   101b0:	04412a83          	lw	s5,68(sp)
   101b4:	04012b03          	lw	s6,64(sp)
   101b8:	03c12b83          	lw	s7,60(sp)
   101bc:	03812c03          	lw	s8,56(sp)
   101c0:	06010113          	addi	sp,sp,96
   101c4:	00008067          	ret

000101c8 <_ZN6tflite29MultiplyByQuantizedMultiplierElli>:
   101c8:	fff64793          	not	a5,a2
   101cc:	41f7d793          	srai	a5,a5,0x1f
   101d0:	ff010113          	addi	sp,sp,-16
   101d4:	00f677b3          	and	a5,a2,a5
   101d8:	00f51533          	sll	a0,a0,a5
   101dc:	00812423          	sw	s0,8(sp)
   101e0:	800007b7          	lui	a5,0x80000
   101e4:	00060413          	mv	s0,a2
   101e8:	40b50833          	sub	a6,a0,a1
   101ec:	00058613          	mv	a2,a1
   101f0:	fff40713          	addi	a4,s0,-1
   101f4:	00f507b3          	add	a5,a0,a5
   101f8:	0017b793          	seqz	a5,a5
   101fc:	00183813          	seqz	a6,a6
   10200:	41f75713          	srai	a4,a4,0x1f
   10204:	40800433          	neg	s0,s0
   10208:	41f55593          	srai	a1,a0,0x1f
   1020c:	41f65693          	srai	a3,a2,0x1f
   10210:	00912223          	sw	s1,4(sp)
   10214:	00112623          	sw	ra,12(sp)
   10218:	0107f4b3          	and	s1,a5,a6
   1021c:	00e47433          	and	s0,s0,a4
   10220:	100000ef          	jal	10320 <__muldi3>
   10224:	0805c263          	bltz	a1,102a8 <_ZN6tflite29MultiplyByQuantizedMultiplierElli+0xe0>
   10228:	fe040713          	addi	a4,s0,-32
   1022c:	400006b7          	lui	a3,0x40000
   10230:	00000793          	li	a5,0
   10234:	08074463          	bltz	a4,102bc <_ZN6tflite29MultiplyByQuantizedMultiplierElli+0xf4>
   10238:	00000713          	li	a4,0
   1023c:	fff70713          	addi	a4,a4,-1
   10240:	40175613          	srai	a2,a4,0x1
   10244:	08049663          	bnez	s1,102d0 <_ZN6tflite29MultiplyByQuantizedMultiplierElli+0x108>
   10248:	00a686b3          	add	a3,a3,a0
   1024c:	00a6b533          	sltu	a0,a3,a0
   10250:	00b787b3          	add	a5,a5,a1
   10254:	00f50533          	add	a0,a0,a5
   10258:	41f55793          	srai	a5,a0,0x1f
   1025c:	00179793          	slli	a5,a5,0x1
   10260:	0017d793          	srli	a5,a5,0x1
   10264:	00d786b3          	add	a3,a5,a3
   10268:	00f6b7b3          	sltu	a5,a3,a5
   1026c:	00a787b3          	add	a5,a5,a0
   10270:	01f6d693          	srli	a3,a3,0x1f
   10274:	00179793          	slli	a5,a5,0x1
   10278:	00d787b3          	add	a5,a5,a3
   1027c:	00c12083          	lw	ra,12(sp)
   10280:	01f7d693          	srli	a3,a5,0x1f
   10284:	00e7f533          	and	a0,a5,a4
   10288:	4087d7b3          	sra	a5,a5,s0
   1028c:	00812403          	lw	s0,8(sp)
   10290:	00d60633          	add	a2,a2,a3
   10294:	00a62533          	slt	a0,a2,a0
   10298:	00412483          	lw	s1,4(sp)
   1029c:	00a78533          	add	a0,a5,a0
   102a0:	01010113          	addi	sp,sp,16
   102a4:	00008067          	ret
   102a8:	c00006b7          	lui	a3,0xc0000
   102ac:	fe040713          	addi	a4,s0,-32
   102b0:	00168693          	addi	a3,a3,1 # c0000001 <__global_pointer$+0xbffee3c9>
   102b4:	fff00793          	li	a5,-1
   102b8:	f80750e3          	bgez	a4,10238 <_ZN6tflite29MultiplyByQuantizedMultiplierElli+0x70>
   102bc:	00100713          	li	a4,1
   102c0:	00871733          	sll	a4,a4,s0
   102c4:	fff70713          	addi	a4,a4,-1
   102c8:	40175613          	srai	a2,a4,0x1
   102cc:	f6048ee3          	beqz	s1,10248 <_ZN6tflite29MultiplyByQuantizedMultiplierElli+0x80>
   102d0:	800007b7          	lui	a5,0x80000
   102d4:	fff78793          	addi	a5,a5,-1 # 7fffffff <__global_pointer$+0x7ffee3c7>
   102d8:	00c12083          	lw	ra,12(sp)
   102dc:	00f77533          	and	a0,a4,a5
   102e0:	4087d7b3          	sra	a5,a5,s0
   102e4:	00812403          	lw	s0,8(sp)
   102e8:	00a62533          	slt	a0,a2,a0
   102ec:	00412483          	lw	s1,4(sp)
   102f0:	00a78533          	add	a0,a5,a0
   102f4:	01010113          	addi	sp,sp,16
   102f8:	00008067          	ret

000102fc <__mulsi3>:
   102fc:	00050613          	mv	a2,a0
   10300:	00000513          	li	a0,0
   10304:	0015f693          	andi	a3,a1,1
   10308:	00068463          	beqz	a3,10310 <__mulsi3+0x14>
   1030c:	00c50533          	add	a0,a0,a2
   10310:	0015d593          	srli	a1,a1,0x1
   10314:	00161613          	slli	a2,a2,0x1
   10318:	fe0596e3          	bnez	a1,10304 <__mulsi3+0x8>
   1031c:	00008067          	ret

00010320 <__muldi3>:
   10320:	ff010113          	addi	sp,sp,-16
   10324:	00068313          	mv	t1,a3
   10328:	00112623          	sw	ra,12(sp)
   1032c:	00050e13          	mv	t3,a0
   10330:	00050693          	mv	a3,a0
   10334:	00060893          	mv	a7,a2
   10338:	00000713          	li	a4,0
   1033c:	00000793          	li	a5,0
   10340:	00000813          	li	a6,0
   10344:	0018fe93          	andi	t4,a7,1
   10348:	00171513          	slli	a0,a4,0x1
   1034c:	000e8a63          	beqz	t4,10360 <__muldi3+0x40>
   10350:	01068833          	add	a6,a3,a6
   10354:	00e787b3          	add	a5,a5,a4
   10358:	00d83733          	sltu	a4,a6,a3
   1035c:	00f707b3          	add	a5,a4,a5
   10360:	01f6d713          	srli	a4,a3,0x1f
   10364:	0018d893          	srli	a7,a7,0x1
   10368:	00e56733          	or	a4,a0,a4
   1036c:	00169693          	slli	a3,a3,0x1
   10370:	fc089ae3          	bnez	a7,10344 <__muldi3+0x24>
   10374:	00058863          	beqz	a1,10384 <__muldi3+0x64>
   10378:	00060513          	mv	a0,a2
   1037c:	f81ff0ef          	jal	102fc <__mulsi3>
   10380:	00a787b3          	add	a5,a5,a0
   10384:	00030a63          	beqz	t1,10398 <__muldi3+0x78>
   10388:	000e0513          	mv	a0,t3
   1038c:	00030593          	mv	a1,t1
   10390:	f6dff0ef          	jal	102fc <__mulsi3>
   10394:	00f507b3          	add	a5,a0,a5
   10398:	00c12083          	lw	ra,12(sp)
   1039c:	00080513          	mv	a0,a6
   103a0:	00078593          	mv	a1,a5
   103a4:	01010113          	addi	sp,sp,16
   103a8:	00008067          	ret
