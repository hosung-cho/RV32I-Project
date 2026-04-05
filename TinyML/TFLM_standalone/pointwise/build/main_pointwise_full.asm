
/home/hosung/Ho/SoCLab workspace/RV32I-Project/TinyML/TFLM_standalone/pointwise/build/main_pointwise.elf:     file format elf32-littleriscv


Disassembly of section .text:

00000000 <main>:
   0:	20003537          	lui	a0,0x20003
   4:	00002637          	lui	a2,0x2
   8:	f8010113          	addi	sp,sp,-128
   c:	f4060613          	addi	a2,a2,-192 # 1f40 <_ZN6tflite29MultiplyByQuantizedMultiplierElli+0x1a88>
  10:	00100593          	li	a1,1
  14:	24050513          	addi	a0,a0,576 # 20003240 <input_data>
  18:	06112e23          	sw	ra,124(sp)
  1c:	05712e23          	sw	s7,92(sp)
  20:	05a12823          	sw	s10,80(sp)
  24:	06812c23          	sw	s0,120(sp)
  28:	06912a23          	sw	s1,116(sp)
  2c:	07212823          	sw	s2,112(sp)
  30:	07312623          	sw	s3,108(sp)
  34:	07412423          	sw	s4,104(sp)
  38:	07512223          	sw	s5,100(sp)
  3c:	07612023          	sw	s6,96(sp)
  40:	05812c23          	sw	s8,88(sp)
  44:	05912a23          	sw	s9,84(sp)
  48:	05b12623          	sw	s11,76(sp)
  4c:	43c000ef          	jal	488 <memset>
  50:	20002537          	lui	a0,0x20002
  54:	00001637          	lui	a2,0x1
  58:	00200593          	li	a1,2
  5c:	24050513          	addi	a0,a0,576 # 20002240 <filter_data>
  60:	428000ef          	jal	488 <memset>
  64:	20000d37          	lui	s10,0x20000
  68:	200d0793          	addi	a5,s10,512 # 20000200 <bias_data>
  6c:	00078513          	mv	a0,a5
  70:	10000613          	li	a2,256
  74:	00000593          	li	a1,0
  78:	02f12423          	sw	a5,40(sp)
  7c:	20000bb7          	lui	s7,0x20000
  80:	408000ef          	jal	488 <memset>
  84:	100b8793          	addi	a5,s7,256 # 20000100 <output_multiplier>
  88:	02f12223          	sw	a5,36(sp)
  8c:	10078693          	addi	a3,a5,256
  90:	40000737          	lui	a4,0x40000
  94:	00e7a023          	sw	a4,0(a5)
  98:	00478793          	addi	a5,a5,4
  9c:	fed79ce3          	bne	a5,a3,94 <main+0x94>
  a0:	20000cb7          	lui	s9,0x20000
  a4:	000c8513          	mv	a0,s9
  a8:	10000613          	li	a2,256
  ac:	0ff00593          	li	a1,255
  b0:	3d8000ef          	jal	488 <memset>
  b4:	200037b7          	lui	a5,0x20003
  b8:	24078793          	addi	a5,a5,576 # 20003240 <input_data>
  bc:	20000c37          	lui	s8,0x20000
  c0:	20002ab7          	lui	s5,0x20002
  c4:	02f12c23          	sw	a5,56(sp)
  c8:	300c0793          	addi	a5,s8,768 # 20000300 <output_data>
  cc:	000c8713          	mv	a4,s9
  d0:	02f12623          	sw	a5,44(sp)
  d4:	240a8793          	addi	a5,s5,576 # 20002240 <filter_data>
  d8:	02e12a23          	sw	a4,52(sp)
  dc:	02f12023          	sw	a5,32(sp)
  e0:	00000a13          	li	s4,0
  e4:	00000493          	li	s1,0
  e8:	00000913          	li	s2,0
  ec:	01900413          	li	s0,25
  f0:	000a0693          	mv	a3,s4
  f4:	00100c13          	li	s8,1
  f8:	00048b93          	mv	s7,s1
  fc:	000a0b13          	mv	s6,s4
 100:	fffc0c93          	addi	s9,s8,-1
 104:	01812e23          	sw	s8,28(sp)
 108:	00000993          	li	s3,0
 10c:	00000a93          	li	s5,0
 110:	03712823          	sw	s7,48(sp)
 114:	00068c13          	mv	s8,a3
 118:	02912e23          	sw	s1,60(sp)
 11c:	000b0a13          	mv	s4,s6
 120:	03812783          	lw	a5,56(sp)
 124:	00090713          	mv	a4,s2
 128:	00098d93          	mv	s11,s3
 12c:	01878d33          	add	s10,a5,s8
 130:	00090b13          	mv	s6,s2
 134:	000c8493          	mv	s1,s9
 138:	00098913          	mv	s2,s3
 13c:	000d0c93          	mv	s9,s10
 140:	00000993          	li	s3,0
 144:	000a0613          	mv	a2,s4
 148:	00048d13          	mv	s10,s1
 14c:	00098a13          	mv	s4,s3
 150:	000c8793          	mv	a5,s9
 154:	00070993          	mv	s3,a4
 158:	00048713          	mv	a4,s1
 15c:	000d8493          	mv	s1,s11
 160:	01800693          	li	a3,24
 164:	0da6c463          	blt	a3,s10,22c <main+0x22c>
 168:	00400693          	li	a3,4
 16c:	0d36c863          	blt	a3,s3,23c <main+0x23c>
 170:	000b0693          	mv	a3,s6
 174:	000c0593          	mv	a1,s8
 178:	00090b13          	mv	s6,s2
 17c:	000a8c13          	mv	s8,s5
 180:	000d0913          	mv	s2,s10
 184:	00098a93          	mv	s5,s3
 188:	00048993          	mv	s3,s1
 18c:	00078b93          	mv	s7,a5
 190:	02012783          	lw	a5,32(sp)
 194:	01312623          	sw	s3,12(sp)
 198:	01212823          	sw	s2,16(sp)
 19c:	013784b3          	add	s1,a5,s3
 1a0:	000b8913          	mv	s2,s7
 1a4:	000a0993          	mv	s3,s4
 1a8:	00e12a23          	sw	a4,20(sp)
 1ac:	040b8a13          	addi	s4,s7,64
 1b0:	00c12c23          	sw	a2,24(sp)
 1b4:	00068b93          	mv	s7,a3
 1b8:	00058d13          	mv	s10,a1
 1bc:	00048583          	lb	a1,0(s1)
 1c0:	00090503          	lb	a0,0(s2)
 1c4:	00190913          	addi	s2,s2,1
 1c8:	00148493          	addi	s1,s1,1
 1cc:	20c000ef          	jal	3d8 <__mulsi3>
 1d0:	00a989b3          	add	s3,s3,a0
 1d4:	ff2a14e3          	bne	s4,s2,1bc <main+0x1bc>
 1d8:	01012903          	lw	s2,16(sp)
 1dc:	01c12783          	lw	a5,28(sp)
 1e0:	000a0493          	mv	s1,s4
 1e4:	00190913          	addi	s2,s2,1
 1e8:	00098a13          	mv	s4,s3
 1ec:	01412703          	lw	a4,20(sp)
 1f0:	01812603          	lw	a2,24(sp)
 1f4:	00c12983          	lw	s3,12(sp)
 1f8:	000b8693          	mv	a3,s7
 1fc:	000d0593          	mv	a1,s10
 200:	19278463          	beq	a5,s2,388 <main+0x388>
 204:	00048793          	mv	a5,s1
 208:	04098993          	addi	s3,s3,64
 20c:	f88910e3          	bne	s2,s0,18c <main+0x18c>
 210:	00098493          	mv	s1,s3
 214:	00090d13          	mv	s10,s2
 218:	000a8993          	mv	s3,s5
 21c:	000b0913          	mv	s2,s6
 220:	000c0a93          	mv	s5,s8
 224:	000b8b13          	mv	s6,s7
 228:	00058c13          	mv	s8,a1
 22c:	001d0d13          	addi	s10,s10,1
 230:	04078793          	addi	a5,a5,64
 234:	04048493          	addi	s1,s1,64
 238:	f29ff06f          	j	160 <main+0x160>
 23c:	01c12583          	lw	a1,28(sp)
 240:	001d0693          	addi	a3,s10,1
 244:	002d0d13          	addi	s10,s10,2
 248:	02d58663          	beq	a1,a3,274 <main+0x274>
 24c:	16868863          	beq	a3,s0,3bc <main+0x3bc>
 250:	01c12683          	lw	a3,28(sp)
 254:	03a68063          	beq	a3,s10,274 <main+0x274>
 258:	08078793          	addi	a5,a5,128
 25c:	08048493          	addi	s1,s1,128
 260:	fc8d06e3          	beq	s10,s0,22c <main+0x22c>
 264:	01c12583          	lw	a1,28(sp)
 268:	001d0693          	addi	a3,s10,1
 26c:	002d0d13          	addi	s10,s10,2
 270:	fcd59ee3          	bne	a1,a3,24c <main+0x24c>
 274:	00070493          	mv	s1,a4
 278:	00098713          	mv	a4,s3
 27c:	640c8c93          	addi	s9,s9,1600 # 20000640 <output_data+0x340>
 280:	000a0993          	mv	s3,s4
 284:	040d8d93          	addi	s11,s11,64
 288:	00060a13          	mv	s4,a2
 28c:	13671463          	bne	a4,s6,3b4 <main+0x3b4>
 290:	02812703          	lw	a4,40(sp)
 294:	002a9793          	slli	a5,s5,0x2
 298:	00098d93          	mv	s11,s3
 29c:	00f706b3          	add	a3,a4,a5
 2a0:	03412703          	lw	a4,52(sp)
 2a4:	0006a503          	lw	a0,0(a3)
 2a8:	00090993          	mv	s3,s2
 2ac:	00f706b3          	add	a3,a4,a5
 2b0:	02412703          	lw	a4,36(sp)
 2b4:	0006a603          	lw	a2,0(a3)
 2b8:	00ad8533          	add	a0,s11,a0
 2bc:	00f707b3          	add	a5,a4,a5
 2c0:	0007a583          	lw	a1,0(a5)
 2c4:	000b0913          	mv	s2,s6
 2c8:	00048c93          	mv	s9,s1
 2cc:	1ec000ef          	jal	4b8 <_ZN6tflite29MultiplyByQuantizedMultiplierElli>
 2d0:	03012703          	lw	a4,48(sp)
 2d4:	02c12783          	lw	a5,44(sp)
 2d8:	00e787b3          	add	a5,a5,a4
 2dc:	f8000713          	li	a4,-128
 2e0:	015787b3          	add	a5,a5,s5
 2e4:	00e55463          	bge	a0,a4,2ec <main+0x2ec>
 2e8:	00070513          	mv	a0,a4
 2ec:	07f00713          	li	a4,127
 2f0:	00a75463          	bge	a4,a0,2f8 <main+0x2f8>
 2f4:	00070513          	mv	a0,a4
 2f8:	00a78023          	sb	a0,0(a5)
 2fc:	001a8a93          	addi	s5,s5,1
 300:	04000793          	li	a5,64
 304:	00f989b3          	add	s3,s3,a5
 308:	e0fa9ce3          	bne	s5,a5,120 <main+0x120>
 30c:	015c06b3          	add	a3,s8,s5
 310:	01c12c03          	lw	s8,28(sp)
 314:	03012b83          	lw	s7,48(sp)
 318:	01a00793          	li	a5,26
 31c:	001c0c13          	addi	s8,s8,1
 320:	03c12483          	lw	s1,60(sp)
 324:	000a0b13          	mv	s6,s4
 328:	015b8bb3          	add	s7,s7,s5
 32c:	dcfc1ae3          	bne	s8,a5,100 <main+0x100>
 330:	00190913          	addi	s2,s2,1
 334:	00500793          	li	a5,5
 338:	64048493          	addi	s1,s1,1600
 33c:	640a0a13          	addi	s4,s4,1600
 340:	daf918e3          	bne	s2,a5,f0 <main+0xf0>
 344:	02c12783          	lw	a5,44(sp)
 348:	07c12083          	lw	ra,124(sp)
 34c:	07812403          	lw	s0,120(sp)
 350:	00078503          	lb	a0,0(a5)
 354:	07412483          	lw	s1,116(sp)
 358:	07012903          	lw	s2,112(sp)
 35c:	06c12983          	lw	s3,108(sp)
 360:	06812a03          	lw	s4,104(sp)
 364:	06412a83          	lw	s5,100(sp)
 368:	06012b03          	lw	s6,96(sp)
 36c:	05c12b83          	lw	s7,92(sp)
 370:	05812c03          	lw	s8,88(sp)
 374:	05412c83          	lw	s9,84(sp)
 378:	05012d03          	lw	s10,80(sp)
 37c:	04c12d83          	lw	s11,76(sp)
 380:	08010113          	addi	sp,sp,128
 384:	00008067          	ret
 388:	000b0913          	mv	s2,s6
 38c:	00070493          	mv	s1,a4
 390:	000b8b13          	mv	s6,s7
 394:	000a8713          	mv	a4,s5
 398:	000a0993          	mv	s3,s4
 39c:	000c0a93          	mv	s5,s8
 3a0:	00060a13          	mv	s4,a2
 3a4:	000d0c13          	mv	s8,s10
 3a8:	640c8c93          	addi	s9,s9,1600
 3ac:	040d8d93          	addi	s11,s11,64
 3b0:	ef6700e3          	beq	a4,s6,290 <main+0x290>
 3b4:	00170713          	addi	a4,a4,1 # 40000001 <__bss_end+0x1fffae81>
 3b8:	d8dff06f          	j	144 <main+0x144>
 3bc:	08078793          	addi	a5,a5,128
 3c0:	08048493          	addi	s1,s1,128
 3c4:	01a00d13          	li	s10,26
 3c8:	001d0d13          	addi	s10,s10,1
 3cc:	04078793          	addi	a5,a5,64
 3d0:	04048493          	addi	s1,s1,64
 3d4:	d8dff06f          	j	160 <main+0x160>

000003d8 <__mulsi3>:
 3d8:	00050613          	mv	a2,a0
 3dc:	00000513          	li	a0,0
 3e0:	0015f693          	andi	a3,a1,1
 3e4:	00068463          	beqz	a3,3ec <__mulsi3+0x14>
 3e8:	00c50533          	add	a0,a0,a2
 3ec:	0015d593          	srli	a1,a1,0x1
 3f0:	00161613          	slli	a2,a2,0x1
 3f4:	fe0596e3          	bnez	a1,3e0 <__mulsi3+0x8>
 3f8:	00008067          	ret

000003fc <__muldi3>:
 3fc:	ff010113          	addi	sp,sp,-16
 400:	00068313          	mv	t1,a3
 404:	00112623          	sw	ra,12(sp)
 408:	00050e13          	mv	t3,a0
 40c:	00050693          	mv	a3,a0
 410:	00060893          	mv	a7,a2
 414:	00000713          	li	a4,0
 418:	00000793          	li	a5,0
 41c:	00000813          	li	a6,0
 420:	0018fe93          	andi	t4,a7,1
 424:	00171513          	slli	a0,a4,0x1
 428:	000e8a63          	beqz	t4,43c <__muldi3+0x40>
 42c:	01068833          	add	a6,a3,a6
 430:	00e787b3          	add	a5,a5,a4
 434:	00d83733          	sltu	a4,a6,a3
 438:	00f707b3          	add	a5,a4,a5
 43c:	01f6d713          	srli	a4,a3,0x1f
 440:	0018d893          	srli	a7,a7,0x1
 444:	00e56733          	or	a4,a0,a4
 448:	00169693          	slli	a3,a3,0x1
 44c:	fc089ae3          	bnez	a7,420 <__muldi3+0x24>
 450:	00058863          	beqz	a1,460 <__muldi3+0x64>
 454:	00060513          	mv	a0,a2
 458:	f81ff0ef          	jal	3d8 <__mulsi3>
 45c:	00a787b3          	add	a5,a5,a0
 460:	00030a63          	beqz	t1,474 <__muldi3+0x78>
 464:	000e0513          	mv	a0,t3
 468:	00030593          	mv	a1,t1
 46c:	f6dff0ef          	jal	3d8 <__mulsi3>
 470:	00f507b3          	add	a5,a0,a5
 474:	00c12083          	lw	ra,12(sp)
 478:	00080513          	mv	a0,a6
 47c:	00078593          	mv	a1,a5
 480:	01010113          	addi	sp,sp,16
 484:	00008067          	ret

00000488 <memset>:
 488:	ff010113          	addi	sp,sp,-16
 48c:	00812423          	sw	s0,8(sp)
 490:	00112623          	sw	ra,12(sp)
 494:	00050413          	mv	s0,a0
 498:	00060663          	beqz	a2,4a4 <memset+0x1c>
 49c:	0ff5f593          	zext.b	a1,a1
 4a0:	fe9ff0ef          	jal	488 <memset>
 4a4:	00c12083          	lw	ra,12(sp)
 4a8:	00040513          	mv	a0,s0
 4ac:	00812403          	lw	s0,8(sp)
 4b0:	01010113          	addi	sp,sp,16
 4b4:	00008067          	ret

000004b8 <_ZN6tflite29MultiplyByQuantizedMultiplierElli>:
 4b8:	fff64793          	not	a5,a2
 4bc:	41f7d793          	srai	a5,a5,0x1f
 4c0:	ff010113          	addi	sp,sp,-16
 4c4:	00f677b3          	and	a5,a2,a5
 4c8:	00f51533          	sll	a0,a0,a5
 4cc:	00812423          	sw	s0,8(sp)
 4d0:	800007b7          	lui	a5,0x80000
 4d4:	00060413          	mv	s0,a2
 4d8:	40b50833          	sub	a6,a0,a1
 4dc:	00058613          	mv	a2,a1
 4e0:	fff40713          	addi	a4,s0,-1
 4e4:	00f507b3          	add	a5,a0,a5
 4e8:	0017b793          	seqz	a5,a5
 4ec:	00183813          	seqz	a6,a6
 4f0:	41f75713          	srai	a4,a4,0x1f
 4f4:	40800433          	neg	s0,s0
 4f8:	41f55593          	srai	a1,a0,0x1f
 4fc:	41f65693          	srai	a3,a2,0x1f
 500:	00912223          	sw	s1,4(sp)
 504:	00112623          	sw	ra,12(sp)
 508:	0107f4b3          	and	s1,a5,a6
 50c:	00e47433          	and	s0,s0,a4
 510:	eedff0ef          	jal	3fc <__muldi3>
 514:	0805c263          	bltz	a1,598 <_ZN6tflite29MultiplyByQuantizedMultiplierElli+0xe0>
 518:	fe040713          	addi	a4,s0,-32
 51c:	400006b7          	lui	a3,0x40000
 520:	00000793          	li	a5,0
 524:	08074463          	bltz	a4,5ac <_ZN6tflite29MultiplyByQuantizedMultiplierElli+0xf4>
 528:	00000713          	li	a4,0
 52c:	fff70713          	addi	a4,a4,-1
 530:	40175613          	srai	a2,a4,0x1
 534:	08049663          	bnez	s1,5c0 <_ZN6tflite29MultiplyByQuantizedMultiplierElli+0x108>
 538:	00a686b3          	add	a3,a3,a0
 53c:	00a6b533          	sltu	a0,a3,a0
 540:	00b787b3          	add	a5,a5,a1
 544:	00f50533          	add	a0,a0,a5
 548:	41f55793          	srai	a5,a0,0x1f
 54c:	00179793          	slli	a5,a5,0x1
 550:	0017d793          	srli	a5,a5,0x1
 554:	00d786b3          	add	a3,a5,a3
 558:	00f6b7b3          	sltu	a5,a3,a5
 55c:	00a787b3          	add	a5,a5,a0
 560:	01f6d693          	srli	a3,a3,0x1f
 564:	00179793          	slli	a5,a5,0x1
 568:	00d787b3          	add	a5,a5,a3
 56c:	00c12083          	lw	ra,12(sp)
 570:	01f7d693          	srli	a3,a5,0x1f
 574:	00e7f533          	and	a0,a5,a4
 578:	4087d7b3          	sra	a5,a5,s0
 57c:	00812403          	lw	s0,8(sp)
 580:	00d60633          	add	a2,a2,a3
 584:	00a62533          	slt	a0,a2,a0
 588:	00412483          	lw	s1,4(sp)
 58c:	00a78533          	add	a0,a5,a0
 590:	01010113          	addi	sp,sp,16
 594:	00008067          	ret
 598:	c00006b7          	lui	a3,0xc0000
 59c:	fe040713          	addi	a4,s0,-32
 5a0:	00168693          	addi	a3,a3,1 # c0000001 <__bss_end+0x9fffae81>
 5a4:	fff00793          	li	a5,-1
 5a8:	f80750e3          	bgez	a4,528 <_ZN6tflite29MultiplyByQuantizedMultiplierElli+0x70>
 5ac:	00100713          	li	a4,1
 5b0:	00871733          	sll	a4,a4,s0
 5b4:	fff70713          	addi	a4,a4,-1
 5b8:	40175613          	srai	a2,a4,0x1
 5bc:	f6048ee3          	beqz	s1,538 <_ZN6tflite29MultiplyByQuantizedMultiplierElli+0x80>
 5c0:	800007b7          	lui	a5,0x80000
 5c4:	fff78793          	addi	a5,a5,-1 # 7fffffff <__bss_end+0x5fffae7f>
 5c8:	00c12083          	lw	ra,12(sp)
 5cc:	00f77533          	and	a0,a4,a5
 5d0:	4087d7b3          	sra	a5,a5,s0
 5d4:	00812403          	lw	s0,8(sp)
 5d8:	00a62533          	slt	a0,a2,a0
 5dc:	00412483          	lw	s1,4(sp)
 5e0:	00a78533          	add	a0,a5,a0
 5e4:	01010113          	addi	sp,sp,16
 5e8:	00008067          	ret
