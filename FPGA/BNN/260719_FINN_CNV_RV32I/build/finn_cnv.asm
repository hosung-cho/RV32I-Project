
/home/hosung/Ho/SoCLab workspace/RV32I-Project/FPGA/BNN/260719_FINN_CNV_RV32I/build/finn_cnv.elf:     file format elf32-littleriscv


Disassembly of section .text:

00000000 <_start>:
   0:	20080117          	auipc	sp,0x20080
   4:	00010113          	mv	sp,sp
   8:	20032297          	auipc	t0,0x20032
   c:	35828293          	addi	t0,t0,856 # 20032360 <buffer_b>
  10:	20036317          	auipc	t1,0x20036
  14:	b9030313          	addi	t1,t1,-1136 # 20035ba0 <__bss_end>
  18:	00628863          	beq	t0,t1,28 <bss_clear_done>

0000001c <bss_clear_loop>:
  1c:	0002a023          	sw	zero,0(t0)
  20:	00428293          	addi	t0,t0,4
  24:	fe62ece3          	bltu	t0,t1,1c <bss_clear_loop>

00000028 <bss_clear_done>:
  28:	525000ef          	jal	d4c <main>

0000002c <halt_loop>:
  2c:	0000006f          	j	2c <halt_loop>

00000030 <__mulsi3>:
  30:	00050613          	mv	a2,a0
  34:	00000513          	li	a0,0
  38:	0015f693          	andi	a3,a1,1
  3c:	00068463          	beqz	a3,44 <__mulsi3+0x14>
  40:	00c50533          	add	a0,a0,a2
  44:	0015d593          	srli	a1,a1,0x1
  48:	00161613          	slli	a2,a2,0x1
  4c:	fe0596e3          	bnez	a1,38 <__mulsi3+0x8>
  50:	00008067          	ret

00000054 <xnor_word>:
  54:	00b547b3          	xor	a5,a0,a1
  58:	fff7c793          	not	a5,a5
  5c:	555556b7          	lui	a3,0x55555
  60:	0017d713          	srli	a4,a5,0x1
  64:	55568693          	addi	a3,a3,1365 # 55555555 <_stack_top+0x354d5555>
  68:	00d77733          	and	a4,a4,a3
  6c:	40e787b3          	sub	a5,a5,a4
  70:	33333737          	lui	a4,0x33333
  74:	33370713          	addi	a4,a4,819 # 33333333 <_stack_top+0x132b3333>
  78:	0027d693          	srli	a3,a5,0x2
  7c:	00e6f6b3          	and	a3,a3,a4
  80:	00e7f7b3          	and	a5,a5,a4
  84:	00d787b3          	add	a5,a5,a3
  88:	0047d513          	srli	a0,a5,0x4
  8c:	00f50533          	add	a0,a0,a5
  90:	0f0f17b7          	lui	a5,0xf0f1
  94:	f0f78793          	addi	a5,a5,-241 # f0f0f0f <main+0xf0f01c3>
  98:	00f57533          	and	a0,a0,a5
  9c:	00855793          	srli	a5,a0,0x8
  a0:	00f50533          	add	a0,a0,a5
  a4:	01055793          	srli	a5,a0,0x10
  a8:	00f50533          	add	a0,a0,a5
  ac:	03f57513          	andi	a0,a0,63
  b0:	00008067          	ret

000000b4 <binary_conv3x3>:
  b4:	f6010113          	addi	sp,sp,-160 # 2007ff60 <__bss_end+0x4a3c0>
  b8:	07712e23          	sw	s7,124(sp)
  bc:	00078b93          	mv	s7,a5
  c0:	ffe60793          	addi	a5,a2,-2
  c4:	02f12e23          	sw	a5,60(sp)
  c8:	005bd793          	srli	a5,s7,0x5
  cc:	09512223          	sw	s5,132(sp)
  d0:	04f12023          	sw	a5,64(sp)
  d4:	00050a93          	mv	s5,a0
  d8:	ffe58793          	addi	a5,a1,-2
  dc:	ffe60513          	addi	a0,a2,-2
  e0:	005bd593          	srli	a1,s7,0x5
  e4:	02f12c23          	sw	a5,56(sp)
  e8:	08112e23          	sw	ra,156(sp)
  ec:	08812c23          	sw	s0,152(sp)
  f0:	08912a23          	sw	s1,148(sp)
  f4:	09312623          	sw	s3,140(sp)
  f8:	07912a23          	sw	s9,116(sp)
  fc:	00060413          	mv	s0,a2
 100:	0056d993          	srli	s3,a3,0x5
 104:	04e12223          	sw	a4,68(sp)
 108:	05012423          	sw	a6,72(sp)
 10c:	03112823          	sw	a7,48(sp)
 110:	09212823          	sw	s2,144(sp)
 114:	09412423          	sw	s4,136(sp)
 118:	09612023          	sw	s6,128(sp)
 11c:	07812c23          	sw	s8,120(sp)
 120:	07a12823          	sw	s10,112(sp)
 124:	07b12623          	sw	s11,108(sp)
 128:	f09ff0ef          	jal	30 <__mulsi3>
 12c:	03812583          	lw	a1,56(sp)
 130:	0a012c83          	lw	s9,160(sp)
 134:	efdff0ef          	jal	30 <__mulsi3>
 138:	00251793          	slli	a5,a0,0x2
 13c:	000c8493          	mv	s1,s9
 140:	019787b3          	add	a5,a5,s9
 144:	0004a023          	sw	zero,0(s1)
 148:	00448493          	addi	s1,s1,4
 14c:	fef49ce3          	bne	s1,a5,144 <binary_conv3x3+0x90>
 150:	04012583          	lw	a1,64(sp)
 154:	03c12503          	lw	a0,60(sp)
 158:	00399b13          	slli	s6,s3,0x3
 15c:	00199913          	slli	s2,s3,0x1
 160:	ed1ff0ef          	jal	30 <__mulsi3>
 164:	04a12623          	sw	a0,76(sp)
 168:	00040593          	mv	a1,s0
 16c:	00098513          	mv	a0,s3
 170:	ec1ff0ef          	jal	30 <__mulsi3>
 174:	013b0b33          	add	s6,s6,s3
 178:	01390933          	add	s2,s2,s3
 17c:	002b1793          	slli	a5,s6,0x2
 180:	00291913          	slli	s2,s2,0x2
 184:	02f12623          	sw	a5,44(sp)
 188:	0b912023          	sw	s9,160(sp)
 18c:	000b8793          	mv	a5,s7
 190:	00299c93          	slli	s9,s3,0x2
 194:	00098b93          	mv	s7,s3
 198:	000a8d93          	mv	s11,s5
 19c:	00000413          	li	s0,0
 1a0:	01212c23          	sw	s2,24(sp)
 1a4:	00000993          	li	s3,0
 1a8:	00050a93          	mv	s5,a0
 1ac:	00000493          	li	s1,0
 1b0:	00048893          	mv	a7,s1
 1b4:	00000a13          	li	s4,0
 1b8:	00098693          	mv	a3,s3
 1bc:	04812823          	sw	s0,80(sp)
 1c0:	04912a23          	sw	s1,84(sp)
 1c4:	00078713          	mv	a4,a5
 1c8:	04812d03          	lw	s10,72(sp)
 1cc:	04412603          	lw	a2,68(sp)
 1d0:	02d12223          	sw	a3,36(sp)
 1d4:	03112a23          	sw	a7,52(sp)
 1d8:	05412c23          	sw	s4,88(sp)
 1dc:	00000593          	li	a1,0
 1e0:	05312e23          	sw	s3,92(sp)
 1e4:	00070c13          	mv	s8,a4
 1e8:	03512423          	sw	s5,40(sp)
 1ec:	02412a83          	lw	s5,36(sp)
 1f0:	02812903          	lw	s2,40(sp)
 1f4:	00300413          	li	s0,3
 1f8:	00040993          	mv	s3,s0
 1fc:	00c12e23          	sw	a2,28(sp)
 200:	000a8413          	mv	s0,s5
 204:	02b12023          	sw	a1,32(sp)
 208:	00060713          	mv	a4,a2
 20c:	00000a93          	li	s5,0
 210:	00812623          	sw	s0,12(sp)
 214:	00040493          	mv	s1,s0
 218:	00e12823          	sw	a4,16(sp)
 21c:	000a8413          	mv	s0,s5
 220:	01312a23          	sw	s3,20(sp)
 224:	00090a93          	mv	s5,s2
 228:	00070a13          	mv	s4,a4
 22c:	00300913          	li	s2,3
 230:	00249793          	slli	a5,s1,0x2
 234:	00fd89b3          	add	s3,s11,a5
 238:	019a0b33          	add	s6,s4,s9
 23c:	0009a503          	lw	a0,0(s3)
 240:	000a2583          	lw	a1,0(s4)
 244:	004a0a13          	addi	s4,s4,4
 248:	00498993          	addi	s3,s3,4
 24c:	e09ff0ef          	jal	54 <xnor_word>
 250:	00a40433          	add	s0,s0,a0
 254:	ff6a14e3          	bne	s4,s6,23c <binary_conv3x3+0x188>
 258:	fff90913          	addi	s2,s2,-1
 25c:	017484b3          	add	s1,s1,s7
 260:	fc0918e3          	bnez	s2,230 <binary_conv3x3+0x17c>
 264:	01412983          	lw	s3,20(sp)
 268:	000a8913          	mv	s2,s5
 26c:	01012703          	lw	a4,16(sp)
 270:	01812783          	lw	a5,24(sp)
 274:	00040a93          	mv	s5,s0
 278:	00c12403          	lw	s0,12(sp)
 27c:	fff98993          	addi	s3,s3,-1
 280:	00f70733          	add	a4,a4,a5
 284:	01240433          	add	s0,s0,s2
 288:	f80994e3          	bnez	s3,210 <binary_conv3x3+0x15c>
 28c:	02012583          	lw	a1,32(sp)
 290:	03012703          	lw	a4,48(sp)
 294:	000d5683          	lhu	a3,0(s10)
 298:	0055d813          	srli	a6,a1,0x5
 29c:	00281793          	slli	a5,a6,0x2
 2a0:	00f707b3          	add	a5,a4,a5
 2a4:	0007a783          	lw	a5,0(a5)
 2a8:	01f5f893          	andi	a7,a1,31
 2ac:	00dab733          	sltu	a4,s5,a3
 2b0:	0117d7b3          	srl	a5,a5,a7
 2b4:	0017f793          	andi	a5,a5,1
 2b8:	00173713          	seqz	a4,a4
 2bc:	01c12603          	lw	a2,28(sp)
 2c0:	02f71663          	bne	a4,a5,2ec <binary_conv3x3+0x238>
 2c4:	03412783          	lw	a5,52(sp)
 2c8:	0a012703          	lw	a4,160(sp)
 2cc:	00100693          	li	a3,1
 2d0:	010787b3          	add	a5,a5,a6
 2d4:	00279793          	slli	a5,a5,0x2
 2d8:	00f707b3          	add	a5,a4,a5
 2dc:	0007a703          	lw	a4,0(a5)
 2e0:	011698b3          	sll	a7,a3,a7
 2e4:	01176733          	or	a4,a4,a7
 2e8:	00e7a023          	sw	a4,0(a5)
 2ec:	02c12783          	lw	a5,44(sp)
 2f0:	00158593          	addi	a1,a1,1
 2f4:	002d0d13          	addi	s10,s10,2
 2f8:	00f60633          	add	a2,a2,a5
 2fc:	eebc18e3          	bne	s8,a1,1ec <binary_conv3x3+0x138>
 300:	04012783          	lw	a5,64(sp)
 304:	03412883          	lw	a7,52(sp)
 308:	05812a03          	lw	s4,88(sp)
 30c:	02412683          	lw	a3,36(sp)
 310:	00f888b3          	add	a7,a7,a5
 314:	03c12783          	lw	a5,60(sp)
 318:	001a0a13          	addi	s4,s4,1
 31c:	05c12983          	lw	s3,92(sp)
 320:	02812a83          	lw	s5,40(sp)
 324:	000c0713          	mv	a4,s8
 328:	017686b3          	add	a3,a3,s7
 32c:	e9479ee3          	bne	a5,s4,1c8 <binary_conv3x3+0x114>
 330:	04c12703          	lw	a4,76(sp)
 334:	05412483          	lw	s1,84(sp)
 338:	05012403          	lw	s0,80(sp)
 33c:	000c0793          	mv	a5,s8
 340:	00e484b3          	add	s1,s1,a4
 344:	03812703          	lw	a4,56(sp)
 348:	00140413          	addi	s0,s0,1
 34c:	015989b3          	add	s3,s3,s5
 350:	e68710e3          	bne	a4,s0,1b0 <binary_conv3x3+0xfc>
 354:	09c12083          	lw	ra,156(sp)
 358:	09812403          	lw	s0,152(sp)
 35c:	09412483          	lw	s1,148(sp)
 360:	09012903          	lw	s2,144(sp)
 364:	08c12983          	lw	s3,140(sp)
 368:	08812a03          	lw	s4,136(sp)
 36c:	08412a83          	lw	s5,132(sp)
 370:	08012b03          	lw	s6,128(sp)
 374:	07c12b83          	lw	s7,124(sp)
 378:	07812c03          	lw	s8,120(sp)
 37c:	07412c83          	lw	s9,116(sp)
 380:	07012d03          	lw	s10,112(sp)
 384:	06c12d83          	lw	s11,108(sp)
 388:	0a010113          	addi	sp,sp,160
 38c:	00008067          	ret

00000390 <maxpool2x2>:
 390:	fc010113          	addi	sp,sp,-64
 394:	ff658793          	addi	a5,a1,-10
 398:	02912a23          	sw	s1,52(sp)
 39c:	00f037b3          	snez	a5,a5
 3a0:	0056d493          	srli	s1,a3,0x5
 3a4:	40f007b3          	neg	a5,a5
 3a8:	00060593          	mv	a1,a2
 3ac:	03212823          	sw	s2,48(sp)
 3b0:	00050913          	mv	s2,a0
 3b4:	00048513          	mv	a0,s1
 3b8:	00e12623          	sw	a4,12(sp)
 3bc:	02112e23          	sw	ra,60(sp)
 3c0:	02812c23          	sw	s0,56(sp)
 3c4:	03312623          	sw	s3,44(sp)
 3c8:	00060413          	mv	s0,a2
 3cc:	00165993          	srli	s3,a2,0x1
 3d0:	03412423          	sw	s4,40(sp)
 3d4:	03512223          	sw	s5,36(sp)
 3d8:	03612023          	sw	s6,32(sp)
 3dc:	01712e23          	sw	s7,28(sp)
 3e0:	01812c23          	sw	s8,24(sp)
 3e4:	0097fb93          	andi	s7,a5,9
 3e8:	01912a23          	sw	s9,20(sp)
 3ec:	01a12823          	sw	s10,16(sp)
 3f0:	c41ff0ef          	jal	30 <__mulsi3>
 3f4:	00098593          	mv	a1,s3
 3f8:	00151d13          	slli	s10,a0,0x1
 3fc:	00351c13          	slli	s8,a0,0x3
 400:	00048513          	mv	a0,s1
 404:	c2dff0ef          	jal	30 <__mulsi3>
 408:	00040593          	mv	a1,s0
 40c:	00050c93          	mv	s9,a0
 410:	00048513          	mv	a0,s1
 414:	c1dff0ef          	jal	30 <__mulsi3>
 418:	00c12703          	lw	a4,12(sp)
 41c:	00249413          	slli	s0,s1,0x2
 420:	005b8b93          	addi	s7,s7,5
 424:	00890b33          	add	s6,s2,s0
 428:	00149a93          	slli	s5,s1,0x1
 42c:	00349a13          	slli	s4,s1,0x3
 430:	00251813          	slli	a6,a0,0x2
 434:	00000f93          	li	t6,0
 438:	00000f13          	li	t5,0
 43c:	00000e93          	li	t4,0
 440:	000b0513          	mv	a0,s6
 444:	000f8e13          	mv	t3,t6
 448:	000f0313          	mv	t1,t5
 44c:	00000893          	li	a7,0
 450:	00231693          	slli	a3,t1,0x2
 454:	002e1593          	slli	a1,t3,0x2
 458:	00d906b3          	add	a3,s2,a3
 45c:	00b705b3          	add	a1,a4,a1
 460:	01068633          	add	a2,a3,a6
 464:	008687b3          	add	a5,a3,s0
 468:	00062383          	lw	t2,0(a2)
 46c:	0007a783          	lw	a5,0(a5)
 470:	0006a283          	lw	t0,0(a3)
 474:	00860633          	add	a2,a2,s0
 478:	00062603          	lw	a2,0(a2)
 47c:	0077e7b3          	or	a5,a5,t2
 480:	0057e7b3          	or	a5,a5,t0
 484:	00c7e7b3          	or	a5,a5,a2
 488:	00f5a023          	sw	a5,0(a1)
 48c:	00468693          	addi	a3,a3,4
 490:	00458593          	addi	a1,a1,4
 494:	fcd516e3          	bne	a0,a3,460 <maxpool2x2+0xd0>
 498:	00188893          	addi	a7,a7,1
 49c:	01530333          	add	t1,t1,s5
 4a0:	009e0e33          	add	t3,t3,s1
 4a4:	01450533          	add	a0,a0,s4
 4a8:	fb1994e3          	bne	s3,a7,450 <maxpool2x2+0xc0>
 4ac:	001e8e93          	addi	t4,t4,1
 4b0:	01af0f33          	add	t5,t5,s10
 4b4:	019f8fb3          	add	t6,t6,s9
 4b8:	018b0b33          	add	s6,s6,s8
 4bc:	f9db92e3          	bne	s7,t4,440 <maxpool2x2+0xb0>
 4c0:	03c12083          	lw	ra,60(sp)
 4c4:	03812403          	lw	s0,56(sp)
 4c8:	03412483          	lw	s1,52(sp)
 4cc:	03012903          	lw	s2,48(sp)
 4d0:	02c12983          	lw	s3,44(sp)
 4d4:	02812a03          	lw	s4,40(sp)
 4d8:	02412a83          	lw	s5,36(sp)
 4dc:	02012b03          	lw	s6,32(sp)
 4e0:	01c12b83          	lw	s7,28(sp)
 4e4:	01812c03          	lw	s8,24(sp)
 4e8:	01412c83          	lw	s9,20(sp)
 4ec:	01012d03          	lw	s10,16(sp)
 4f0:	04010113          	addi	sp,sp,64
 4f4:	00008067          	ret

000004f8 <binary_fc.constprop.0>:
 4f8:	fb010113          	addi	sp,sp,-80
 4fc:	03512a23          	sw	s5,52(sp)
 500:	03612823          	sw	s6,48(sp)
 504:	03812423          	sw	s8,40(sp)
 508:	03912223          	sw	s9,36(sp)
 50c:	04112623          	sw	ra,76(sp)
 510:	00070c93          	mv	s9,a4
 514:	04812423          	sw	s0,72(sp)
 518:	04912223          	sw	s1,68(sp)
 51c:	05212023          	sw	s2,64(sp)
 520:	03312e23          	sw	s3,60(sp)
 524:	03412c23          	sw	s4,56(sp)
 528:	03712623          	sw	s7,44(sp)
 52c:	03a12023          	sw	s10,32(sp)
 530:	01b12e23          	sw	s11,28(sp)
 534:	00f12623          	sw	a5,12(sp)
 538:	0055da93          	srli	s5,a1,0x5
 53c:	00050b13          	mv	s6,a0
 540:	00060c13          	mv	s8,a2
 544:	04078713          	addi	a4,a5,64
 548:	0007a023          	sw	zero,0(a5)
 54c:	00478793          	addi	a5,a5,4
 550:	fee79ce3          	bne	a5,a4,548 <binary_fc.constprop.0+0x50>
 554:	002a9493          	slli	s1,s5,0x2
 558:	00068993          	mv	s3,a3
 55c:	009b04b3          	add	s1,s6,s1
 560:	00000a13          	li	s4,0
 564:	00000913          	li	s2,0
 568:	20000b93          	li	s7,512
 56c:	002a1793          	slli	a5,s4,0x2
 570:	00fc0d33          	add	s10,s8,a5
 574:	000b0413          	mv	s0,s6
 578:	00000d93          	li	s11,0
 57c:	000d2583          	lw	a1,0(s10)
 580:	00042503          	lw	a0,0(s0)
 584:	00440413          	addi	s0,s0,4
 588:	004d0d13          	addi	s10,s10,4
 58c:	ac9ff0ef          	jal	54 <xnor_word>
 590:	00ad8db3          	add	s11,s11,a0
 594:	fe8494e3          	bne	s1,s0,57c <binary_fc.constprop.0+0x84>
 598:	00595693          	srli	a3,s2,0x5
 59c:	00269693          	slli	a3,a3,0x2
 5a0:	00dc87b3          	add	a5,s9,a3
 5a4:	0007a783          	lw	a5,0(a5)
 5a8:	0009d583          	lhu	a1,0(s3)
 5ac:	01f97613          	andi	a2,s2,31
 5b0:	00c7d7b3          	srl	a5,a5,a2
 5b4:	00bdb733          	sltu	a4,s11,a1
 5b8:	0017f793          	andi	a5,a5,1
 5bc:	00173713          	seqz	a4,a4
 5c0:	02f71063          	bne	a4,a5,5e0 <binary_fc.constprop.0+0xe8>
 5c4:	00c12783          	lw	a5,12(sp)
 5c8:	00100713          	li	a4,1
 5cc:	00c71633          	sll	a2,a4,a2
 5d0:	00d786b3          	add	a3,a5,a3
 5d4:	0006a783          	lw	a5,0(a3)
 5d8:	00c7e7b3          	or	a5,a5,a2
 5dc:	00f6a023          	sw	a5,0(a3)
 5e0:	00190913          	addi	s2,s2,1
 5e4:	00298993          	addi	s3,s3,2
 5e8:	015a0a33          	add	s4,s4,s5
 5ec:	f97910e3          	bne	s2,s7,56c <binary_fc.constprop.0+0x74>
 5f0:	04c12083          	lw	ra,76(sp)
 5f4:	04812403          	lw	s0,72(sp)
 5f8:	04412483          	lw	s1,68(sp)
 5fc:	04012903          	lw	s2,64(sp)
 600:	03c12983          	lw	s3,60(sp)
 604:	03812a03          	lw	s4,56(sp)
 608:	03412a83          	lw	s5,52(sp)
 60c:	03012b03          	lw	s6,48(sp)
 610:	02c12b83          	lw	s7,44(sp)
 614:	02812c03          	lw	s8,40(sp)
 618:	02412c83          	lw	s9,36(sp)
 61c:	02012d03          	lw	s10,32(sp)
 620:	01c12d83          	lw	s11,28(sp)
 624:	05010113          	addi	sp,sp,80
 628:	00008067          	ret

0000062c <conv1_q7.constprop.0>:
 62c:	fd010113          	addi	sp,sp,-48
 630:	02912423          	sw	s1,40(sp)
 634:	000027b7          	lui	a5,0x2
 638:	200344b7          	lui	s1,0x20034
 63c:	f8048493          	addi	s1,s1,-128 # 20033f80 <buffer_a>
 640:	c2078793          	addi	a5,a5,-992 # 1c20 <main+0xed4>
 644:	02812623          	sw	s0,44(sp)
 648:	03212223          	sw	s2,36(sp)
 64c:	03312023          	sw	s3,32(sp)
 650:	01412e23          	sw	s4,28(sp)
 654:	01512c23          	sw	s5,24(sp)
 658:	01612a23          	sw	s6,20(sp)
 65c:	01712823          	sw	s7,16(sp)
 660:	01812623          	sw	s8,12(sp)
 664:	01912423          	sw	s9,8(sp)
 668:	01a12223          	sw	s10,4(sp)
 66c:	00048713          	mv	a4,s1
 670:	00f487b3          	add	a5,s1,a5
 674:	00072023          	sw	zero,0(a4)
 678:	00470713          	addi	a4,a4,4
 67c:	fee79ce3          	bne	a5,a4,674 <conv1_q7.constprop.0+0x48>
 680:	20031e37          	lui	t3,0x20031
 684:	200322b7          	lui	t0,0x20032
 688:	748e0e13          	addi	t3,t3,1864 # 20031748 <cnv_input_q7_hwc>
 68c:	35028293          	addi	t0,t0,848 # 20032350 <cnv_polarity0>
 690:	00000b13          	li	s6,0
 694:	00000a13          	li	s4,0
 698:	20031d37          	lui	s10,0x20031
 69c:	20031cb7          	lui	s9,0x20031
 6a0:	00100993          	li	s3,1
 6a4:	04000393          	li	t2,64
 6a8:	01e00c13          	li	s8,30
 6ac:	005a1b93          	slli	s7,s4,0x5
 6b0:	01eb8b93          	addi	s7,s7,30
 6b4:	001b1913          	slli	s2,s6,0x1
 6b8:	01e00a93          	li	s5,30
 6bc:	008d0f93          	addi	t6,s10,8 # 20031008 <cnv_threshold0>
 6c0:	0afc8e93          	addi	t4,s9,175 # 200310af <cnv_w0_i8+0x27>
 6c4:	415b8433          	sub	s0,s7,s5
 6c8:	00000f13          	li	t5,0
 6cc:	fe5e8893          	addi	a7,t4,-27
 6d0:	00040313          	mv	t1,s0
 6d4:	00000593          	li	a1,0
 6d8:	00131813          	slli	a6,t1,0x1
 6dc:	00680833          	add	a6,a6,t1
 6e0:	ff788613          	addi	a2,a7,-9
 6e4:	ffd60793          	addi	a5,a2,-3
 6e8:	010e0733          	add	a4,t3,a6
 6ec:	00078503          	lb	a0,0(a5)
 6f0:	00070683          	lb	a3,0(a4)
 6f4:	00178793          	addi	a5,a5,1
 6f8:	00170713          	addi	a4,a4,1
 6fc:	00a04463          	bgtz	a0,704 <conv1_q7.constprop.0+0xd8>
 700:	40d006b3          	neg	a3,a3
 704:	00d585b3          	add	a1,a1,a3
 708:	fec792e3          	bne	a5,a2,6ec <conv1_q7.constprop.0+0xc0>
 70c:	00378613          	addi	a2,a5,3
 710:	00380813          	addi	a6,a6,3
 714:	fcc898e3          	bne	a7,a2,6e4 <conv1_q7.constprop.0+0xb8>
 718:	00c78893          	addi	a7,a5,12
 71c:	02030313          	addi	t1,t1,32
 720:	fb1e9ce3          	bne	t4,a7,6d8 <conv1_q7.constprop.0+0xac>
 724:	005f5693          	srli	a3,t5,0x5
 728:	00269793          	slli	a5,a3,0x2
 72c:	00f287b3          	add	a5,t0,a5
 730:	0007a783          	lw	a5,0(a5)
 734:	000f9703          	lh	a4,0(t6)
 738:	01ff7613          	andi	a2,t5,31
 73c:	00c7d7b3          	srl	a5,a5,a2
 740:	00e5a733          	slt	a4,a1,a4
 744:	0017f793          	andi	a5,a5,1
 748:	00173713          	seqz	a4,a4
 74c:	02f71063          	bne	a4,a5,76c <conv1_q7.constprop.0+0x140>
 750:	00d907b3          	add	a5,s2,a3
 754:	00279793          	slli	a5,a5,0x2
 758:	00f487b3          	add	a5,s1,a5
 75c:	0007a703          	lw	a4,0(a5)
 760:	00c99633          	sll	a2,s3,a2
 764:	00c76733          	or	a4,a4,a2
 768:	00e7a023          	sw	a4,0(a5)
 76c:	001f0f13          	addi	t5,t5,1
 770:	002f8f93          	addi	t6,t6,2
 774:	01be8e93          	addi	t4,t4,27
 778:	f47f1ae3          	bne	t5,t2,6cc <conv1_q7.constprop.0+0xa0>
 77c:	fffa8a93          	addi	s5,s5,-1
 780:	00290913          	addi	s2,s2,2
 784:	f20a9ce3          	bnez	s5,6bc <conv1_q7.constprop.0+0x90>
 788:	001a0a13          	addi	s4,s4,1
 78c:	01eb0b13          	addi	s6,s6,30
 790:	f18a1ee3          	bne	s4,s8,6ac <conv1_q7.constprop.0+0x80>
 794:	02c12403          	lw	s0,44(sp)
 798:	02812483          	lw	s1,40(sp)
 79c:	02412903          	lw	s2,36(sp)
 7a0:	02012983          	lw	s3,32(sp)
 7a4:	01c12a03          	lw	s4,28(sp)
 7a8:	01812a83          	lw	s5,24(sp)
 7ac:	01412b03          	lw	s6,20(sp)
 7b0:	01012b83          	lw	s7,16(sp)
 7b4:	00c12c03          	lw	s8,12(sp)
 7b8:	00812c83          	lw	s9,8(sp)
 7bc:	00412d03          	lw	s10,4(sp)
 7c0:	03010113          	addi	sp,sp,48
 7c4:	00008067          	ret

000007c8 <finn_cnv_inference>:
 7c8:	fc010113          	addi	sp,sp,-64
 7cc:	02812c23          	sw	s0,56(sp)
 7d0:	02912a23          	sw	s1,52(sp)
 7d4:	03312623          	sw	s3,44(sp)
 7d8:	03412423          	sw	s4,40(sp)
 7dc:	03612023          	sw	s6,32(sp)
 7e0:	02112e23          	sw	ra,60(sp)
 7e4:	03212823          	sw	s2,48(sp)
 7e8:	03512223          	sw	s5,36(sp)
 7ec:	01712e23          	sw	s7,28(sp)
 7f0:	01812c23          	sw	s8,24(sp)
 7f4:	01912a23          	sw	s9,20(sp)
 7f8:	01a12823          	sw	s10,16(sp)
 7fc:	00050b13          	mv	s6,a0
 800:	00058413          	mv	s0,a1
 804:	e29ff0ef          	jal	62c <conv1_q7.constprop.0>
 808:	200344b7          	lui	s1,0x20034
 80c:	00002637          	lui	a2,0x2
 810:	f8048a13          	addi	s4,s1,-128 # 20033f80 <buffer_a>
 814:	c2060613          	addi	a2,a2,-992 # 1c20 <main+0xed4>
 818:	811ca737          	lui	a4,0x811ca
 81c:	000a0993          	mv	s3,s4
 820:	00ca0633          	add	a2,s4,a2
 824:	000a0693          	mv	a3,s4
 828:	dc570713          	addi	a4,a4,-571 # 811c9dc5 <_stack_top+0x61149dc5>
 82c:	0006a783          	lw	a5,0(a3)
 830:	00468693          	addi	a3,a3,4
 834:	00f74733          	xor	a4,a4,a5
 838:	00f71793          	slli	a5,a4,0xf
 83c:	00e787b3          	add	a5,a5,a4
 840:	00279793          	slli	a5,a5,0x2
 844:	40e787b3          	sub	a5,a5,a4
 848:	00379793          	slli	a5,a5,0x3
 84c:	00e787b3          	add	a5,a5,a4
 850:	00279793          	slli	a5,a5,0x2
 854:	00e787b3          	add	a5,a5,a4
 858:	00279793          	slli	a5,a5,0x2
 85c:	40e78733          	sub	a4,a5,a4
 860:	fcc696e3          	bne	a3,a2,82c <finn_cnv_inference+0x64>
 864:	20032937          	lui	s2,0x20032
 868:	00e42023          	sw	a4,0(s0)
 86c:	36090b93          	addi	s7,s2,864 # 20032360 <buffer_b>
 870:	01e00613          	li	a2,30
 874:	04000793          	li	a5,64
 878:	200328b7          	lui	a7,0x20032
 87c:	20030837          	lui	a6,0x20030
 880:	20030737          	lui	a4,0x20030
 884:	00078693          	mv	a3,a5
 888:	e0870713          	addi	a4,a4,-504 # 2002fe08 <cnv_w1>
 88c:	00060593          	mv	a1,a2
 890:	01712023          	sw	s7,0(sp)
 894:	34888893          	addi	a7,a7,840 # 20032348 <cnv_polarity1>
 898:	d8880813          	addi	a6,a6,-632 # 2002fd88 <cnv_threshold1>
 89c:	f8048513          	addi	a0,s1,-128
 8a0:	815ff0ef          	jal	b4 <binary_conv3x3>
 8a4:	00002637          	lui	a2,0x2
 8a8:	88060613          	addi	a2,a2,-1920 # 1880 <main+0xb34>
 8ac:	811ca737          	lui	a4,0x811ca
 8b0:	00cb8633          	add	a2,s7,a2
 8b4:	000b8693          	mv	a3,s7
 8b8:	dc570713          	addi	a4,a4,-571 # 811c9dc5 <_stack_top+0x61149dc5>
 8bc:	0006a783          	lw	a5,0(a3)
 8c0:	00468693          	addi	a3,a3,4
 8c4:	00f74733          	xor	a4,a4,a5
 8c8:	00f71793          	slli	a5,a4,0xf
 8cc:	00e787b3          	add	a5,a5,a4
 8d0:	00279793          	slli	a5,a5,0x2
 8d4:	40e787b3          	sub	a5,a5,a4
 8d8:	00379793          	slli	a5,a5,0x3
 8dc:	00e787b3          	add	a5,a5,a4
 8e0:	00279793          	slli	a5,a5,0x2
 8e4:	00e787b3          	add	a5,a5,a4
 8e8:	00279793          	slli	a5,a5,0x2
 8ec:	40e78733          	sub	a4,a5,a4
 8f0:	fcc696e3          	bne	a3,a2,8bc <finn_cnv_inference+0xf4>
 8f4:	01c00613          	li	a2,28
 8f8:	00e42223          	sw	a4,4(s0)
 8fc:	00060593          	mv	a1,a2
 900:	f8048713          	addi	a4,s1,-128
 904:	04000693          	li	a3,64
 908:	36090513          	addi	a0,s2,864
 90c:	a85ff0ef          	jal	390 <maxpool2x2>
 910:	811ca737          	lui	a4,0x811ca
 914:	620a0613          	addi	a2,s4,1568
 918:	000a0693          	mv	a3,s4
 91c:	dc570713          	addi	a4,a4,-571 # 811c9dc5 <_stack_top+0x61149dc5>
 920:	0006a783          	lw	a5,0(a3)
 924:	00468693          	addi	a3,a3,4
 928:	00f74733          	xor	a4,a4,a5
 92c:	00f71793          	slli	a5,a4,0xf
 930:	00e787b3          	add	a5,a5,a4
 934:	00279793          	slli	a5,a5,0x2
 938:	40e787b3          	sub	a5,a5,a4
 93c:	00379793          	slli	a5,a5,0x3
 940:	00e787b3          	add	a5,a5,a4
 944:	00279793          	slli	a5,a5,0x2
 948:	00e787b3          	add	a5,a5,a4
 94c:	00279793          	slli	a5,a5,0x2
 950:	40e78733          	sub	a4,a5,a4
 954:	fcc696e3          	bne	a3,a2,920 <finn_cnv_inference+0x158>
 958:	00e42423          	sw	a4,8(s0)
 95c:	00e00613          	li	a2,14
 960:	2002e8b7          	lui	a7,0x2002e
 964:	2002e837          	lui	a6,0x2002e
 968:	2002e737          	lui	a4,0x2002e
 96c:	98870713          	addi	a4,a4,-1656 # 2002d988 <cnv_w2>
 970:	00060593          	mv	a1,a2
 974:	04000693          	li	a3,64
 978:	01712023          	sw	s7,0(sp)
 97c:	87888893          	addi	a7,a7,-1928 # 2002d878 <cnv_polarity2>
 980:	88880813          	addi	a6,a6,-1912 # 2002d888 <cnv_threshold2>
 984:	08000793          	li	a5,128
 988:	f8048513          	addi	a0,s1,-128
 98c:	f28ff0ef          	jal	b4 <binary_conv3x3>
 990:	7ffb8613          	addi	a2,s7,2047
 994:	811ca737          	lui	a4,0x811ca
 998:	10160613          	addi	a2,a2,257
 99c:	000b8693          	mv	a3,s7
 9a0:	dc570713          	addi	a4,a4,-571 # 811c9dc5 <_stack_top+0x61149dc5>
 9a4:	0006a783          	lw	a5,0(a3)
 9a8:	00468693          	addi	a3,a3,4
 9ac:	00f74733          	xor	a4,a4,a5
 9b0:	00f71793          	slli	a5,a4,0xf
 9b4:	00e787b3          	add	a5,a5,a4
 9b8:	00279793          	slli	a5,a5,0x2
 9bc:	40e787b3          	sub	a5,a5,a4
 9c0:	00379793          	slli	a5,a5,0x3
 9c4:	00e787b3          	add	a5,a5,a4
 9c8:	00279793          	slli	a5,a5,0x2
 9cc:	00e787b3          	add	a5,a5,a4
 9d0:	00279793          	slli	a5,a5,0x2
 9d4:	40e78733          	sub	a4,a5,a4
 9d8:	fcc696e3          	bne	a3,a2,9a4 <finn_cnv_inference+0x1dc>
 9dc:	00e42623          	sw	a4,12(s0)
 9e0:	00c00613          	li	a2,12
 9e4:	08000793          	li	a5,128
 9e8:	200298b7          	lui	a7,0x20029
 9ec:	20029837          	lui	a6,0x20029
 9f0:	20029737          	lui	a4,0x20029
 9f4:	00078693          	mv	a3,a5
 9f8:	07870713          	addi	a4,a4,120 # 20029078 <cnv_w3>
 9fc:	00060593          	mv	a1,a2
 a00:	01412023          	sw	s4,0(sp)
 a04:	f6888893          	addi	a7,a7,-152 # 20028f68 <cnv_polarity3>
 a08:	f7880813          	addi	a6,a6,-136 # 20028f78 <cnv_threshold3>
 a0c:	36090513          	addi	a0,s2,864
 a10:	ea4ff0ef          	jal	b4 <binary_conv3x3>
 a14:	811ca737          	lui	a4,0x811ca
 a18:	640a0613          	addi	a2,s4,1600
 a1c:	000a0693          	mv	a3,s4
 a20:	dc570713          	addi	a4,a4,-571 # 811c9dc5 <_stack_top+0x61149dc5>
 a24:	0006a783          	lw	a5,0(a3)
 a28:	00468693          	addi	a3,a3,4
 a2c:	00f74733          	xor	a4,a4,a5
 a30:	00f71793          	slli	a5,a4,0xf
 a34:	00e787b3          	add	a5,a5,a4
 a38:	00279793          	slli	a5,a5,0x2
 a3c:	40e787b3          	sub	a5,a5,a4
 a40:	00379793          	slli	a5,a5,0x3
 a44:	00e787b3          	add	a5,a5,a4
 a48:	00279793          	slli	a5,a5,0x2
 a4c:	00e787b3          	add	a5,a5,a4
 a50:	00279793          	slli	a5,a5,0x2
 a54:	40e78733          	sub	a4,a5,a4
 a58:	fcd616e3          	bne	a2,a3,a24 <finn_cnv_inference+0x25c>
 a5c:	00a00613          	li	a2,10
 a60:	00e42823          	sw	a4,16(s0)
 a64:	00060593          	mv	a1,a2
 a68:	36090713          	addi	a4,s2,864
 a6c:	08000693          	li	a3,128
 a70:	f8048513          	addi	a0,s1,-128
 a74:	91dff0ef          	jal	390 <maxpool2x2>
 a78:	811ca737          	lui	a4,0x811ca
 a7c:	190b8613          	addi	a2,s7,400
 a80:	000b8693          	mv	a3,s7
 a84:	dc570713          	addi	a4,a4,-571 # 811c9dc5 <_stack_top+0x61149dc5>
 a88:	0006a783          	lw	a5,0(a3)
 a8c:	00468693          	addi	a3,a3,4
 a90:	00f74733          	xor	a4,a4,a5
 a94:	00f71793          	slli	a5,a4,0xf
 a98:	00e787b3          	add	a5,a5,a4
 a9c:	00279793          	slli	a5,a5,0x2
 aa0:	40e787b3          	sub	a5,a5,a4
 aa4:	00379793          	slli	a5,a5,0x3
 aa8:	00e787b3          	add	a5,a5,a4
 aac:	00279793          	slli	a5,a5,0x2
 ab0:	00e787b3          	add	a5,a5,a4
 ab4:	00279793          	slli	a5,a5,0x2
 ab8:	40e78733          	sub	a4,a5,a4
 abc:	fcd616e3          	bne	a2,a3,a88 <finn_cnv_inference+0x2c0>
 ac0:	00e42a23          	sw	a4,20(s0)
 ac4:	00500613          	li	a2,5
 ac8:	200208b7          	lui	a7,0x20020
 acc:	20020837          	lui	a6,0x20020
 ad0:	20020737          	lui	a4,0x20020
 ad4:	f6870713          	addi	a4,a4,-152 # 2001ff68 <cnv_w4>
 ad8:	00060593          	mv	a1,a2
 adc:	08000693          	li	a3,128
 ae0:	01412023          	sw	s4,0(sp)
 ae4:	d4888893          	addi	a7,a7,-696 # 2001fd48 <cnv_polarity4>
 ae8:	d6880813          	addi	a6,a6,-664 # 2001fd68 <cnv_threshold4>
 aec:	10000793          	li	a5,256
 af0:	36090513          	addi	a0,s2,864
 af4:	dc0ff0ef          	jal	b4 <binary_conv3x3>
 af8:	811ca737          	lui	a4,0x811ca
 afc:	120a0613          	addi	a2,s4,288
 b00:	000a0693          	mv	a3,s4
 b04:	dc570713          	addi	a4,a4,-571 # 811c9dc5 <_stack_top+0x61149dc5>
 b08:	0006a783          	lw	a5,0(a3)
 b0c:	00468693          	addi	a3,a3,4
 b10:	00f74733          	xor	a4,a4,a5
 b14:	00f71793          	slli	a5,a4,0xf
 b18:	00e787b3          	add	a5,a5,a4
 b1c:	00279793          	slli	a5,a5,0x2
 b20:	40e787b3          	sub	a5,a5,a4
 b24:	00379793          	slli	a5,a5,0x3
 b28:	00e787b3          	add	a5,a5,a4
 b2c:	00279793          	slli	a5,a5,0x2
 b30:	00e787b3          	add	a5,a5,a4
 b34:	00279793          	slli	a5,a5,0x2
 b38:	40e78733          	sub	a4,a5,a4
 b3c:	fcd616e3          	bne	a2,a3,b08 <finn_cnv_inference+0x340>
 b40:	00e42c23          	sw	a4,24(s0)
 b44:	00300613          	li	a2,3
 b48:	10000793          	li	a5,256
 b4c:	2000e8b7          	lui	a7,0x2000e
 b50:	2000e837          	lui	a6,0x2000e
 b54:	2000e737          	lui	a4,0x2000e
 b58:	00078693          	mv	a3,a5
 b5c:	d4870713          	addi	a4,a4,-696 # 2000dd48 <cnv_w5>
 b60:	00060593          	mv	a1,a2
 b64:	01712023          	sw	s7,0(sp)
 b68:	b2888893          	addi	a7,a7,-1240 # 2000db28 <cnv_polarity5>
 b6c:	b4880813          	addi	a6,a6,-1208 # 2000db48 <cnv_threshold5>
 b70:	f8048513          	addi	a0,s1,-128
 b74:	d40ff0ef          	jal	b4 <binary_conv3x3>
 b78:	811ca737          	lui	a4,0x811ca
 b7c:	020b8613          	addi	a2,s7,32
 b80:	000b8693          	mv	a3,s7
 b84:	dc570713          	addi	a4,a4,-571 # 811c9dc5 <_stack_top+0x61149dc5>
 b88:	0006a783          	lw	a5,0(a3)
 b8c:	00468693          	addi	a3,a3,4
 b90:	00f74733          	xor	a4,a4,a5
 b94:	00f71793          	slli	a5,a4,0xf
 b98:	00e787b3          	add	a5,a5,a4
 b9c:	00279793          	slli	a5,a5,0x2
 ba0:	40e787b3          	sub	a5,a5,a4
 ba4:	00379793          	slli	a5,a5,0x3
 ba8:	00e787b3          	add	a5,a5,a4
 bac:	00279793          	slli	a5,a5,0x2
 bb0:	00e787b3          	add	a5,a5,a4
 bb4:	00279793          	slli	a5,a5,0x2
 bb8:	40e78733          	sub	a4,a5,a4
 bbc:	fcd616e3          	bne	a2,a3,b88 <finn_cnv_inference+0x3c0>
 bc0:	00e42e23          	sw	a4,28(s0)
 bc4:	200096b7          	lui	a3,0x20009
 bc8:	20009737          	lui	a4,0x20009
 bcc:	2000a637          	lui	a2,0x2000a
 bd0:	6e870713          	addi	a4,a4,1768 # 200096e8 <cnv_fc_polarity0>
 bd4:	72868693          	addi	a3,a3,1832 # 20009728 <cnv_fc_threshold0>
 bd8:	b2860613          	addi	a2,a2,-1240 # 20009b28 <cnv_fc_w0>
 bdc:	f8048793          	addi	a5,s1,-128
 be0:	10000593          	li	a1,256
 be4:	36090513          	addi	a0,s2,864
 be8:	911ff0ef          	jal	4f8 <binary_fc.constprop.0>
 bec:	811ca737          	lui	a4,0x811ca
 bf0:	040a0a13          	addi	s4,s4,64
 bf4:	dc570713          	addi	a4,a4,-571 # 811c9dc5 <_stack_top+0x61149dc5>
 bf8:	0009a783          	lw	a5,0(s3)
 bfc:	00498993          	addi	s3,s3,4
 c00:	00f74733          	xor	a4,a4,a5
 c04:	00f71793          	slli	a5,a4,0xf
 c08:	00e787b3          	add	a5,a5,a4
 c0c:	00279793          	slli	a5,a5,0x2
 c10:	40e787b3          	sub	a5,a5,a4
 c14:	00379793          	slli	a5,a5,0x3
 c18:	00e787b3          	add	a5,a5,a4
 c1c:	00279793          	slli	a5,a5,0x2
 c20:	00e787b3          	add	a5,a5,a4
 c24:	00279793          	slli	a5,a5,0x2
 c28:	40e78733          	sub	a4,a5,a4
 c2c:	fd3a16e3          	bne	s4,s3,bf8 <finn_cnv_inference+0x430>
 c30:	02e42023          	sw	a4,32(s0)
 c34:	200016b7          	lui	a3,0x20001
 c38:	20001737          	lui	a4,0x20001
 c3c:	20001637          	lui	a2,0x20001
 c40:	2a870713          	addi	a4,a4,680 # 200012a8 <cnv_fc_polarity1>
 c44:	2e868693          	addi	a3,a3,744 # 200012e8 <cnv_fc_threshold1>
 c48:	36090793          	addi	a5,s2,864
 c4c:	f8048513          	addi	a0,s1,-128
 c50:	6e860613          	addi	a2,a2,1768 # 200016e8 <cnv_fc_w1>
 c54:	20000593          	li	a1,512
 c58:	8a1ff0ef          	jal	4f8 <binary_fc.constprop.0>
 c5c:	811ca737          	lui	a4,0x811ca
 c60:	040b8993          	addi	s3,s7,64
 c64:	000b8693          	mv	a3,s7
 c68:	dc570713          	addi	a4,a4,-571 # 811c9dc5 <_stack_top+0x61149dc5>
 c6c:	0006a783          	lw	a5,0(a3)
 c70:	00468693          	addi	a3,a3,4
 c74:	00f74733          	xor	a4,a4,a5
 c78:	00f71793          	slli	a5,a4,0xf
 c7c:	00e787b3          	add	a5,a5,a4
 c80:	00279793          	slli	a5,a5,0x2
 c84:	40e787b3          	sub	a5,a5,a4
 c88:	00379793          	slli	a5,a5,0x3
 c8c:	00e787b3          	add	a5,a5,a4
 c90:	00279793          	slli	a5,a5,0x2
 c94:	00e787b3          	add	a5,a5,a4
 c98:	00279793          	slli	a5,a5,0x2
 c9c:	40e78733          	sub	a4,a5,a4
 ca0:	fcd996e3          	bne	s3,a3,c6c <finn_cnv_inference+0x4a4>
 ca4:	20001ab7          	lui	s5,0x20001
 ca8:	02e42223          	sw	a4,36(s0)
 cac:	028a8a93          	addi	s5,s5,40 # 20001028 <cnv_fc_w2>
 cb0:	00000a13          	li	s4,0
 cb4:	80000c37          	lui	s8,0x80000
 cb8:	00000d13          	li	s10,0
 cbc:	00a00c93          	li	s9,10
 cc0:	000a8493          	mv	s1,s5
 cc4:	000b8413          	mv	s0,s7
 cc8:	00000913          	li	s2,0
 ccc:	0004a583          	lw	a1,0(s1)
 cd0:	00042503          	lw	a0,0(s0)
 cd4:	00440413          	addi	s0,s0,4
 cd8:	00448493          	addi	s1,s1,4
 cdc:	b78ff0ef          	jal	54 <xnor_word>
 ce0:	00a90933          	add	s2,s2,a0
 ce4:	fe8994e3          	bne	s3,s0,ccc <finn_cnv_inference+0x504>
 ce8:	00191913          	slli	s2,s2,0x1
 cec:	e0090913          	addi	s2,s2,-512
 cf0:	012b2023          	sw	s2,0(s6)
 cf4:	012c5663          	bge	s8,s2,d00 <finn_cnv_inference+0x538>
 cf8:	00090c13          	mv	s8,s2
 cfc:	000a0d13          	mv	s10,s4
 d00:	001a0a13          	addi	s4,s4,1
 d04:	004b0b13          	addi	s6,s6,4
 d08:	040a8a93          	addi	s5,s5,64
 d0c:	fb9a1ae3          	bne	s4,s9,cc0 <finn_cnv_inference+0x4f8>
 d10:	03c12083          	lw	ra,60(sp)
 d14:	03812403          	lw	s0,56(sp)
 d18:	03412483          	lw	s1,52(sp)
 d1c:	03012903          	lw	s2,48(sp)
 d20:	02c12983          	lw	s3,44(sp)
 d24:	02812a03          	lw	s4,40(sp)
 d28:	02412a83          	lw	s5,36(sp)
 d2c:	02012b03          	lw	s6,32(sp)
 d30:	01c12b83          	lw	s7,28(sp)
 d34:	01812c03          	lw	s8,24(sp)
 d38:	01412c83          	lw	s9,20(sp)
 d3c:	000d0513          	mv	a0,s10
 d40:	01012d03          	lw	s10,16(sp)
 d44:	04010113          	addi	sp,sp,64
 d48:	00008067          	ret

00000d4c <main>:
 d4c:	fa010113          	addi	sp,sp,-96
 d50:	10000713          	li	a4,256
 d54:	04112e23          	sw	ra,92(sp)
 d58:	200007b7          	lui	a5,0x20000
 d5c:	00e7a023          	sw	a4,0(a5) # 20000000 <main+0x1ffff2b4>
 d60:	02810593          	addi	a1,sp,40
 d64:	00010513          	mv	a0,sp
 d68:	a61ff0ef          	jal	7c8 <finn_cnv_inference>
 d6c:	200016b7          	lui	a3,0x20001
 d70:	02810593          	addi	a1,sp,40
 d74:	00058713          	mv	a4,a1
 d78:	00068693          	mv	a3,a3
 d7c:	00100613          	li	a2,1
 d80:	00072783          	lw	a5,0(a4)
 d84:	0006a803          	lw	a6,0(a3) # 20001000 <cnv_expected_layer_checksums>
 d88:	00470713          	addi	a4,a4,4
 d8c:	00468693          	addi	a3,a3,4
 d90:	410787b3          	sub	a5,a5,a6
 d94:	0017b793          	seqz	a5,a5
 d98:	00f67633          	and	a2,a2,a5
 d9c:	05010793          	addi	a5,sp,80
 da0:	fee790e3          	bne	a5,a4,d80 <main+0x34>
 da4:	200007b7          	lui	a5,0x20000
 da8:	00a7a223          	sw	a0,4(a5) # 20000004 <main+0x1ffff2b8>
 dac:	ffd50513          	addi	a0,a0,-3
 db0:	200007b7          	lui	a5,0x20000
 db4:	00153893          	seqz	a7,a0
 db8:	00300713          	li	a4,3
 dbc:	00078693          	mv	a3,a5
 dc0:	00e7a423          	sw	a4,8(a5) # 20000008 <main+0x1ffff2bc>
 dc4:	00c8f8b3          	and	a7,a7,a2
 dc8:	0116a623          	sw	a7,12(a3)
 dcc:	04068813          	addi	a6,a3,64
 dd0:	00010793          	mv	a5,sp
 dd4:	00c6a823          	sw	a2,16(a3)
 dd8:	40280833          	sub	a6,a6,sp
 ddc:	200008b7          	lui	a7,0x20000
 de0:	0007a683          	lw	a3,0(a5)
 de4:	00f80733          	add	a4,a6,a5
 de8:	00478793          	addi	a5,a5,4
 dec:	00d72023          	sw	a3,0(a4)
 df0:	fef598e3          	bne	a1,a5,de0 <main+0x94>
 df4:	05c12083          	lw	ra,92(sp)
 df8:	00100793          	li	a5,1
 dfc:	00a03533          	snez	a0,a0
 e00:	00164613          	xori	a2,a2,1
 e04:	00f8a023          	sw	a5,0(a7) # 20000000 <main+0x1ffff2b4>
 e08:	00a66533          	or	a0,a2,a0
 e0c:	06010113          	addi	sp,sp,96
 e10:	00008067          	ret
