
main_pointwise.elf:     file format elf32-littleriscv


Disassembly of section .text:

00000000 <_start>:
   0:	20010117          	auipc	sp,0x20010
   4:	00010113          	mv	sp,sp
   8:	20000297          	auipc	t0,0x20000
   c:	ff828293          	addi	t0,t0,-8 # 20000000 <output_shift>
  10:	20005317          	auipc	t1,0x20005
  14:	17030313          	addi	t1,t1,368 # 20005180 <__bss_end>
  18:	00628863          	beq	t0,t1,28 <bss_clear_done>

0000001c <bss_clear_loop>:
  1c:	0002a023          	sw	zero,0(t0)
  20:	00428293          	addi	t0,t0,4
  24:	fe62ece3          	bltu	t0,t1,1c <bss_clear_loop>

00000028 <bss_clear_done>:
  28:	16c000ef          	jal	194 <main>

0000002c <end_loop>:
  2c:	0000006f          	j	2c <end_loop>

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

00000054 <__muldi3>:
  54:	ff010113          	addi	sp,sp,-16 # 2000fff0 <__bss_end+0xae70>
  58:	00068313          	mv	t1,a3
  5c:	00112623          	sw	ra,12(sp)
  60:	00050e13          	mv	t3,a0
  64:	00050693          	mv	a3,a0
  68:	00060893          	mv	a7,a2
  6c:	00000713          	li	a4,0
  70:	00000793          	li	a5,0
  74:	00000813          	li	a6,0
  78:	0018fe93          	andi	t4,a7,1
  7c:	00171513          	slli	a0,a4,0x1
  80:	000e8a63          	beqz	t4,94 <__muldi3+0x40>
  84:	01068833          	add	a6,a3,a6
  88:	00e787b3          	add	a5,a5,a4
  8c:	00d83733          	sltu	a4,a6,a3
  90:	00f707b3          	add	a5,a4,a5
  94:	01f6d713          	srli	a4,a3,0x1f
  98:	0018d893          	srli	a7,a7,0x1
  9c:	00e56733          	or	a4,a0,a4
  a0:	00169693          	slli	a3,a3,0x1
  a4:	fc089ae3          	bnez	a7,78 <__muldi3+0x24>
  a8:	00058863          	beqz	a1,b8 <__muldi3+0x64>
  ac:	00060513          	mv	a0,a2
  b0:	f81ff0ef          	jal	30 <__mulsi3>
  b4:	00a787b3          	add	a5,a5,a0
  b8:	00030a63          	beqz	t1,cc <__muldi3+0x78>
  bc:	000e0513          	mv	a0,t3
  c0:	00030593          	mv	a1,t1
  c4:	f6dff0ef          	jal	30 <__mulsi3>
  c8:	00f507b3          	add	a5,a0,a5
  cc:	00c12083          	lw	ra,12(sp)
  d0:	00080513          	mv	a0,a6
  d4:	00078593          	mv	a1,a5
  d8:	01010113          	addi	sp,sp,16
  dc:	00008067          	ret

000000e0 <__divsi3>:
  e0:	06054063          	bltz	a0,140 <__umodsi3+0x10>
  e4:	0605c663          	bltz	a1,150 <__umodsi3+0x20>

000000e8 <__hidden___udivsi3>:
  e8:	00058613          	mv	a2,a1
  ec:	00050593          	mv	a1,a0
  f0:	fff00513          	li	a0,-1
  f4:	02060c63          	beqz	a2,12c <__hidden___udivsi3+0x44>
  f8:	00100693          	li	a3,1
  fc:	00b67a63          	bgeu	a2,a1,110 <__hidden___udivsi3+0x28>
 100:	00c05863          	blez	a2,110 <__hidden___udivsi3+0x28>
 104:	00161613          	slli	a2,a2,0x1
 108:	00169693          	slli	a3,a3,0x1
 10c:	feb66ae3          	bltu	a2,a1,100 <__hidden___udivsi3+0x18>
 110:	00000513          	li	a0,0
 114:	00c5e663          	bltu	a1,a2,120 <__hidden___udivsi3+0x38>
 118:	40c585b3          	sub	a1,a1,a2
 11c:	00d56533          	or	a0,a0,a3
 120:	0016d693          	srli	a3,a3,0x1
 124:	00165613          	srli	a2,a2,0x1
 128:	fe0696e3          	bnez	a3,114 <__hidden___udivsi3+0x2c>
 12c:	00008067          	ret

00000130 <__umodsi3>:
 130:	00008293          	mv	t0,ra
 134:	fb5ff0ef          	jal	e8 <__hidden___udivsi3>
 138:	00058513          	mv	a0,a1
 13c:	00028067          	jr	t0
 140:	40a00533          	neg	a0,a0
 144:	00b04863          	bgtz	a1,154 <__umodsi3+0x24>
 148:	40b005b3          	neg	a1,a1
 14c:	f9dff06f          	j	e8 <__hidden___udivsi3>
 150:	40b005b3          	neg	a1,a1
 154:	00008293          	mv	t0,ra
 158:	f91ff0ef          	jal	e8 <__hidden___udivsi3>
 15c:	40a00533          	neg	a0,a0
 160:	00028067          	jr	t0

00000164 <__modsi3>:
 164:	00008293          	mv	t0,ra
 168:	0005ca63          	bltz	a1,17c <__modsi3+0x18>
 16c:	00054c63          	bltz	a0,184 <__modsi3+0x20>
 170:	f79ff0ef          	jal	e8 <__hidden___udivsi3>
 174:	00058513          	mv	a0,a1
 178:	00028067          	jr	t0
 17c:	40b005b3          	neg	a1,a1
 180:	fe0558e3          	bgez	a0,170 <__modsi3+0xc>
 184:	40a00533          	neg	a0,a0
 188:	f61ff0ef          	jal	e8 <__hidden___udivsi3>
 18c:	40b00533          	neg	a0,a1
 190:	00028067          	jr	t0

00000194 <main>:
 194:	e9010113          	addi	sp,sp,-368
 198:	00100793          	li	a5,1
 19c:	0af12623          	sw	a5,172(sp)
 1a0:	00500793          	li	a5,5
 1a4:	0af12823          	sw	a5,176(sp)
 1a8:	01900793          	li	a5,25
 1ac:	0af12a23          	sw	a5,180(sp)
 1b0:	04000793          	li	a5,64
 1b4:	0af12c23          	sw	a5,184(sp)
 1b8:	16112623          	sw	ra,364(sp)
 1bc:	17212023          	sw	s2,352(sp)
 1c0:	0ac10793          	addi	a5,sp,172
 1c4:	0e010713          	addi	a4,sp,224
 1c8:	0bc10693          	addi	a3,sp,188
 1cc:	0007a603          	lw	a2,0(a5)
 1d0:	00478793          	addi	a5,a5,4
 1d4:	00470713          	addi	a4,a4,4
 1d8:	fec72e23          	sw	a2,-4(a4)
 1dc:	fed798e3          	bne	a5,a3,1cc <main+0x38>
 1e0:	04000693          	li	a3,64
 1e4:	00100713          	li	a4,1
 1e8:	0ad12e23          	sw	a3,188(sp)
 1ec:	0cd12423          	sw	a3,200(sp)
 1f0:	0ce12023          	sw	a4,192(sp)
 1f4:	0ce12223          	sw	a4,196(sp)
 1f8:	0cc10693          	addi	a3,sp,204
 1fc:	0fc10713          	addi	a4,sp,252
 200:	0007a603          	lw	a2,0(a5)
 204:	00478793          	addi	a5,a5,4
 208:	00470713          	addi	a4,a4,4
 20c:	fec72e23          	sw	a2,-4(a4)
 210:	fed798e3          	bne	a5,a3,200 <main+0x6c>
 214:	00100713          	li	a4,1
 218:	0ce12623          	sw	a4,204(sp)
 21c:	00500713          	li	a4,5
 220:	0ce12823          	sw	a4,208(sp)
 224:	01900713          	li	a4,25
 228:	0ce12a23          	sw	a4,212(sp)
 22c:	04000713          	li	a4,64
 230:	0ce12c23          	sw	a4,216(sp)
 234:	0dc10693          	addi	a3,sp,220
 238:	11810713          	addi	a4,sp,280
 23c:	0007a603          	lw	a2,0(a5)
 240:	00478793          	addi	a5,a5,4
 244:	00470713          	addi	a4,a4,4
 248:	fec72e23          	sw	a2,-4(a4)
 24c:	fed798e3          	bne	a5,a3,23c <main+0xa8>
 250:	20003737          	lui	a4,0x20003
 254:	000027b7          	lui	a5,0x2
 258:	24070713          	addi	a4,a4,576 # 20003240 <input_data>
 25c:	f4078793          	addi	a5,a5,-192 # 1f40 <_ZN6tflite29MultiplyByQuantizedMultiplierElli+0x1778>
 260:	010106b7          	lui	a3,0x1010
 264:	04e12e23          	sw	a4,92(sp)
 268:	00f707b3          	add	a5,a4,a5
 26c:	10168693          	addi	a3,a3,257 # 1010101 <_ZN6tflite29MultiplyByQuantizedMultiplierElli+0x100f939>
 270:	00d72023          	sw	a3,0(a4)
 274:	00470713          	addi	a4,a4,4
 278:	fef71ce3          	bne	a4,a5,270 <main+0xdc>
 27c:	200027b7          	lui	a5,0x20002
 280:	24078793          	addi	a5,a5,576 # 20002240 <filter_data>
 284:	000016b7          	lui	a3,0x1
 288:	02020737          	lui	a4,0x2020
 28c:	00f12e23          	sw	a5,28(sp)
 290:	00d786b3          	add	a3,a5,a3
 294:	20270713          	addi	a4,a4,514 # 2020202 <_ZN6tflite29MultiplyByQuantizedMultiplierElli+0x201fa3a>
 298:	00e7a023          	sw	a4,0(a5)
 29c:	00478793          	addi	a5,a5,4
 2a0:	fed79ce3          	bne	a5,a3,298 <main+0x104>
 2a4:	20000737          	lui	a4,0x20000
 2a8:	200007b7          	lui	a5,0x20000
 2ac:	10070713          	addi	a4,a4,256 # 20000100 <output_multiplier>
 2b0:	00078793          	mv	a5,a5
 2b4:	200006b7          	lui	a3,0x20000
 2b8:	20068693          	addi	a3,a3,512 # 20000200 <bias_data>
 2bc:	02e12e23          	sw	a4,60(sp)
 2c0:	04f12023          	sw	a5,64(sp)
 2c4:	04d12223          	sw	a3,68(sp)
 2c8:	00068793          	mv	a5,a3
 2cc:	10068513          	addi	a0,a3,256
 2d0:	04012703          	lw	a4,64(sp)
 2d4:	03c12683          	lw	a3,60(sp)
 2d8:	400005b7          	lui	a1,0x40000
 2dc:	fff00613          	li	a2,-1
 2e0:	0007a023          	sw	zero,0(a5) # 20000000 <output_shift>
 2e4:	00b6a023          	sw	a1,0(a3)
 2e8:	00c72023          	sw	a2,0(a4)
 2ec:	00478793          	addi	a5,a5,4
 2f0:	00468693          	addi	a3,a3,4
 2f4:	00470713          	addi	a4,a4,4
 2f8:	fea794e3          	bne	a5,a0,2e0 <main+0x14c>
 2fc:	11812783          	lw	a5,280(sp)
 300:	0e012903          	lw	s2,224(sp)
 304:	0127d463          	bge	a5,s2,30c <main+0x178>
 308:	00078913          	mv	s2,a5
 30c:	200007b7          	lui	a5,0x20000
 310:	30078593          	addi	a1,a5,768 # 20000300 <output_data>
 314:	41205463          	blez	s2,71c <main+0x588>
 318:	0fc12783          	lw	a5,252(sp)
 31c:	13b12e23          	sw	s11,316(sp)
 320:	12412d83          	lw	s11,292(sp)
 324:	15612823          	sw	s6,336(sp)
 328:	16812423          	sw	s0,360(sp)
 32c:	16912223          	sw	s1,356(sp)
 330:	15312e23          	sw	s3,348(sp)
 334:	15412c23          	sw	s4,344(sp)
 338:	15512a23          	sw	s5,340(sp)
 33c:	15712623          	sw	s7,332(sp)
 340:	15812423          	sw	s8,328(sp)
 344:	15912223          	sw	s9,324(sp)
 348:	15a12023          	sw	s10,320(sp)
 34c:	02f12423          	sw	a5,40(sp)
 350:	0ec12b03          	lw	s6,236(sp)
 354:	46fdc663          	blt	s11,a5,7c0 <main+0x62c>
 358:	0e412783          	lw	a5,228(sp)
 35c:	10812a03          	lw	s4,264(sp)
 360:	000b0513          	mv	a0,s6
 364:	00f12a23          	sw	a5,20(sp)
 368:	10012783          	lw	a5,256(sp)
 36c:	000a0593          	mv	a1,s4
 370:	0e812b83          	lw	s7,232(sp)
 374:	02f12a23          	sw	a5,52(sp)
 378:	d69ff0ef          	jal	e0 <__divsi3>
 37c:	00050593          	mv	a1,a0
 380:	02812503          	lw	a0,40(sp)
 384:	10412403          	lw	s0,260(sp)
 388:	000b0c13          	mv	s8,s6
 38c:	d55ff0ef          	jal	e0 <__divsi3>
 390:	12012c83          	lw	s9,288(sp)
 394:	11c12a83          	lw	s5,284(sp)
 398:	04a12c23          	sw	a0,88(sp)
 39c:	000c8593          	mv	a1,s9
 3a0:	000a8513          	mv	a0,s5
 3a4:	c8dff0ef          	jal	30 <__mulsi3>
 3a8:	000d8593          	mv	a1,s11
 3ac:	c85ff0ef          	jal	30 <__mulsi3>
 3b0:	06a12223          	sw	a0,100(sp)
 3b4:	01412503          	lw	a0,20(sp)
 3b8:	000b8593          	mv	a1,s7
 3bc:	00090993          	mv	s3,s2
 3c0:	c71ff0ef          	jal	30 <__mulsi3>
 3c4:	000b0593          	mv	a1,s6
 3c8:	c69ff0ef          	jal	30 <__mulsi3>
 3cc:	000d8593          	mv	a1,s11
 3d0:	06a12423          	sw	a0,104(sp)
 3d4:	000c8513          	mv	a0,s9
 3d8:	c59ff0ef          	jal	30 <__mulsi3>
 3dc:	000b0593          	mv	a1,s6
 3e0:	06a12023          	sw	a0,96(sp)
 3e4:	000b8513          	mv	a0,s7
 3e8:	c49ff0ef          	jal	30 <__mulsi3>
 3ec:	00a12623          	sw	a0,12(sp)
 3f0:	03412503          	lw	a0,52(sp)
 3f4:	00040593          	mv	a1,s0
 3f8:	000d8b13          	mv	s6,s11
 3fc:	c35ff0ef          	jal	30 <__mulsi3>
 400:	000a0593          	mv	a1,s4
 404:	c2dff0ef          	jal	30 <__mulsi3>
 408:	04a12423          	sw	a0,72(sp)
 40c:	000a0593          	mv	a1,s4
 410:	00040513          	mv	a0,s0
 414:	c1dff0ef          	jal	30 <__mulsi3>
 418:	200007b7          	lui	a5,0x20000
 41c:	02a12223          	sw	a0,36(sp)
 420:	000c8d93          	mv	s11,s9
 424:	00000d13          	li	s10,0
 428:	000b8c93          	mv	s9,s7
 42c:	30078513          	addi	a0,a5,768 # 20000300 <output_data>
 430:	00040693          	mv	a3,s0
 434:	000a8b93          	mv	s7,s5
 438:	00000493          	li	s1,0
 43c:	00000913          	li	s2,0
 440:	29705a63          	blez	s7,6d4 <main+0x540>
 444:	29b05863          	blez	s11,6d4 <main+0x540>
 448:	000d0413          	mv	s0,s10
 44c:	00090a93          	mv	s5,s2
 450:	00048e93          	mv	t4,s1
 454:	00050793          	mv	a5,a0
 458:	000d0493          	mv	s1,s10
 45c:	000d8513          	mv	a0,s11
 460:	000c8d13          	mv	s10,s9
 464:	00000813          	li	a6,0
 468:	00090c93          	mv	s9,s2
 46c:	01b68933          	add	s2,a3,s11
 470:	000c0d93          	mv	s11,s8
 474:	000b0c13          	mv	s8,s6
 478:	02812703          	lw	a4,40(sp)
 47c:	20e05e63          	blez	a4,698 <main+0x504>
 480:	03412703          	lw	a4,52(sp)
 484:	07712c23          	sw	s7,120(sp)
 488:	05012623          	sw	a6,76(sp)
 48c:	01070733          	add	a4,a4,a6
 490:	02e12023          	sw	a4,32(sp)
 494:	000d8b93          	mv	s7,s11
 498:	000c0713          	mv	a4,s8
 49c:	09912223          	sw	s9,132(sp)
 4a0:	08912423          	sw	s1,136(sp)
 4a4:	00000893          	li	a7,0
 4a8:	07512623          	sw	s5,108(sp)
 4ac:	06812823          	sw	s0,112(sp)
 4b0:	07312a23          	sw	s3,116(sp)
 4b4:	000d0c13          	mv	s8,s10
 4b8:	06a12e23          	sw	a0,124(sp)
 4bc:	09d12023          	sw	t4,128(sp)
 4c0:	00068c93          	mv	s9,a3
 4c4:	00040b13          	mv	s6,s0
 4c8:	000a8493          	mv	s1,s5
 4cc:	00090d93          	mv	s11,s2
 4d0:	00078813          	mv	a6,a5
 4d4:	05c12783          	lw	a5,92(sp)
 4d8:	00980933          	add	s2,a6,s1
 4dc:	08912823          	sw	s1,144(sp)
 4e0:	00fb07b3          	add	a5,s6,a5
 4e4:	00000413          	li	s0,0
 4e8:	04f12a23          	sw	a5,84(sp)
 4ec:	01712423          	sw	s7,8(sp)
 4f0:	08e12623          	sw	a4,140(sp)
 4f4:	00d12c23          	sw	a3,24(sp)
 4f8:	00000493          	li	s1,0
 4fc:	09612a23          	sw	s6,148(sp)
 500:	03112c23          	sw	a7,56(sp)
 504:	09b12c23          	sw	s11,152(sp)
 508:	09012e23          	sw	a6,156(sp)
 50c:	05212823          	sw	s2,80(sp)
 510:	03412783          	lw	a5,52(sp)
 514:	24f05863          	blez	a5,764 <main+0x5d0>
 518:	05812583          	lw	a1,88(sp)
 51c:	00048513          	mv	a0,s1
 520:	bc1ff0ef          	jal	e0 <__divsi3>
 524:	000a0593          	mv	a1,s4
 528:	b09ff0ef          	jal	30 <__mulsi3>
 52c:	05412783          	lw	a5,84(sp)
 530:	04c12d03          	lw	s10,76(sp)
 534:	02912623          	sw	s1,44(sp)
 538:	00f50db3          	add	s11,a0,a5
 53c:	00040793          	mv	a5,s0
 540:	02812823          	sw	s0,48(sp)
 544:	000c8493          	mv	s1,s9
 548:	000a0413          	mv	s0,s4
 54c:	00000c93          	li	s9,0
 550:	00078a13          	mv	s4,a5
 554:	000d8793          	mv	a5,s11
 558:	000c0d93          	mv	s11,s8
 55c:	000d0c13          	mv	s8,s10
 560:	01812703          	lw	a4,24(sp)
 564:	06e05263          	blez	a4,5c8 <main+0x434>
 568:	03812b83          	lw	s7,56(sp)
 56c:	000a0b13          	mv	s6,s4
 570:	01412823          	sw	s4,16(sp)
 574:	000c0993          	mv	s3,s8
 578:	000d8a13          	mv	s4,s11
 57c:	00078c13          	mv	s8,a5
 580:	00040d93          	mv	s11,s0
 584:	00048a93          	mv	s5,s1
 588:	000b0413          	mv	s0,s6
 58c:	00078b13          	mv	s6,a5
 590:	014bd663          	bge	s7,s4,59c <main+0x408>
 594:	01412783          	lw	a5,20(sp)
 598:	18f9cc63          	blt	s3,a5,730 <main+0x59c>
 59c:	00812783          	lw	a5,8(sp)
 5a0:	001b8b93          	addi	s7,s7,1
 5a4:	01b40433          	add	s0,s0,s11
 5a8:	00fb0b33          	add	s6,s6,a5
 5ac:	ff5b92e3          	bne	s7,s5,590 <main+0x3fc>
 5b0:	000d8413          	mv	s0,s11
 5b4:	000a0d93          	mv	s11,s4
 5b8:	01012a03          	lw	s4,16(sp)
 5bc:	000c0793          	mv	a5,s8
 5c0:	000a8493          	mv	s1,s5
 5c4:	00098c13          	mv	s8,s3
 5c8:	00c12703          	lw	a4,12(sp)
 5cc:	001c0c13          	addi	s8,s8,1
 5d0:	00e787b3          	add	a5,a5,a4
 5d4:	02412703          	lw	a4,36(sp)
 5d8:	00ea0a33          	add	s4,s4,a4
 5dc:	02012703          	lw	a4,32(sp)
 5e0:	f8ec10e3          	bne	s8,a4,560 <main+0x3cc>
 5e4:	00040a13          	mv	s4,s0
 5e8:	000c8b13          	mv	s6,s9
 5ec:	03012403          	lw	s0,48(sp)
 5f0:	00048c93          	mv	s9,s1
 5f4:	02c12483          	lw	s1,44(sp)
 5f8:	000d8c13          	mv	s8,s11
 5fc:	04412703          	lw	a4,68(sp)
 600:	00249793          	slli	a5,s1,0x2
 604:	03c12683          	lw	a3,60(sp)
 608:	00f70733          	add	a4,a4,a5
 60c:	00072503          	lw	a0,0(a4)
 610:	04012703          	lw	a4,64(sp)
 614:	00ab0533          	add	a0,s6,a0
 618:	00f70733          	add	a4,a4,a5
 61c:	00f687b3          	add	a5,a3,a5
 620:	00072603          	lw	a2,0(a4)
 624:	0007a583          	lw	a1,0(a5)
 628:	1a0000ef          	jal	7c8 <_ZN6tflite29MultiplyByQuantizedMultiplierElli>
 62c:	05012783          	lw	a5,80(sp)
 630:	f8000713          	li	a4,-128
 634:	009787b3          	add	a5,a5,s1
 638:	00e55463          	bge	a0,a4,640 <main+0x4ac>
 63c:	00070513          	mv	a0,a4
 640:	07f00713          	li	a4,127
 644:	00a75463          	bge	a4,a0,64c <main+0x4b8>
 648:	00070513          	mv	a0,a4
 64c:	00a78023          	sb	a0,0(a5)
 650:	04812783          	lw	a5,72(sp)
 654:	00148493          	addi	s1,s1,1
 658:	00f40433          	add	s0,s0,a5
 65c:	02812783          	lw	a5,40(sp)
 660:	ea9798e3          	bne	a5,s1,510 <main+0x37c>
 664:	09812d83          	lw	s11,152(sp)
 668:	001c8c93          	addi	s9,s9,1
 66c:	00812b83          	lw	s7,8(sp)
 670:	08c12703          	lw	a4,140(sp)
 674:	01812683          	lw	a3,24(sp)
 678:	09012483          	lw	s1,144(sp)
 67c:	09412b03          	lw	s6,148(sp)
 680:	09c12803          	lw	a6,156(sp)
 684:	0f9d8463          	beq	s11,s9,76c <main+0x5d8>
 688:	00e484b3          	add	s1,s1,a4
 68c:	017b0b33          	add	s6,s6,s7
 690:	40dc88b3          	sub	a7,s9,a3
 694:	e41ff06f          	j	4d4 <main+0x340>
 698:	00068713          	mv	a4,a3
 69c:	00170613          	addi	a2,a4,1
 6a0:	00270713          	addi	a4,a4,2
 6a4:	01260463          	beq	a2,s2,6ac <main+0x518>
 6a8:	ff271ae3          	bne	a4,s2,69c <main+0x508>
 6ac:	00180813          	addi	a6,a6,1
 6b0:	0f0b9e63          	bne	s7,a6,7ac <main+0x618>
 6b4:	000c0b13          	mv	s6,s8
 6b8:	000c8913          	mv	s2,s9
 6bc:	000d8c13          	mv	s8,s11
 6c0:	000d0c93          	mv	s9,s10
 6c4:	00050d93          	mv	s11,a0
 6c8:	00048d13          	mv	s10,s1
 6cc:	00078513          	mv	a0,a5
 6d0:	000e8493          	mv	s1,t4
 6d4:	06412783          	lw	a5,100(sp)
 6d8:	00148493          	addi	s1,s1,1
 6dc:	00f90933          	add	s2,s2,a5
 6e0:	06812783          	lw	a5,104(sp)
 6e4:	00fd0d33          	add	s10,s10,a5
 6e8:	d4999ce3          	bne	s3,s1,440 <main+0x2ac>
 6ec:	16812403          	lw	s0,360(sp)
 6f0:	16412483          	lw	s1,356(sp)
 6f4:	15c12983          	lw	s3,348(sp)
 6f8:	15812a03          	lw	s4,344(sp)
 6fc:	15412a83          	lw	s5,340(sp)
 700:	15012b03          	lw	s6,336(sp)
 704:	14c12b83          	lw	s7,332(sp)
 708:	14812c03          	lw	s8,328(sp)
 70c:	14412c83          	lw	s9,324(sp)
 710:	14012d03          	lw	s10,320(sp)
 714:	13c12d83          	lw	s11,316(sp)
 718:	00050593          	mv	a1,a0
 71c:	16c12083          	lw	ra,364(sp)
 720:	00058503          	lb	a0,0(a1) # 40000000 <_stack_top+0x1fff0000>
 724:	16012903          	lw	s2,352(sp)
 728:	17010113          	addi	sp,sp,368
 72c:	00008067          	ret
 730:	e7b056e3          	blez	s11,59c <main+0x408>
 734:	01c12783          	lw	a5,28(sp)
 738:	000b0d13          	mv	s10,s6
 73c:	01bb04b3          	add	s1,s6,s11
 740:	00f40933          	add	s2,s0,a5
 744:	00090583          	lb	a1,0(s2)
 748:	000d0503          	lb	a0,0(s10)
 74c:	001d0d13          	addi	s10,s10,1
 750:	00190913          	addi	s2,s2,1
 754:	8ddff0ef          	jal	30 <__mulsi3>
 758:	00ac8cb3          	add	s9,s9,a0
 75c:	fe9d14e3          	bne	s10,s1,744 <main+0x5b0>
 760:	e3dff06f          	j	59c <main+0x408>
 764:	00000b13          	li	s6,0
 768:	e95ff06f          	j	5fc <main+0x468>
 76c:	00080793          	mv	a5,a6
 770:	04c12803          	lw	a6,76(sp)
 774:	000d8913          	mv	s2,s11
 778:	000b8d93          	mv	s11,s7
 77c:	07812b83          	lw	s7,120(sp)
 780:	00180813          	addi	a6,a6,1
 784:	000c0d13          	mv	s10,s8
 788:	06c12a83          	lw	s5,108(sp)
 78c:	07012403          	lw	s0,112(sp)
 790:	07412983          	lw	s3,116(sp)
 794:	07c12503          	lw	a0,124(sp)
 798:	08012e83          	lw	t4,128(sp)
 79c:	08412c83          	lw	s9,132(sp)
 7a0:	08812483          	lw	s1,136(sp)
 7a4:	00070c13          	mv	s8,a4
 7a8:	f10b86e3          	beq	s7,a6,6b4 <main+0x520>
 7ac:	06012703          	lw	a4,96(sp)
 7b0:	00ea8ab3          	add	s5,s5,a4
 7b4:	00c12703          	lw	a4,12(sp)
 7b8:	00e40433          	add	s0,s0,a4
 7bc:	cbdff06f          	j	478 <main+0x2e4>
 7c0:	03b12423          	sw	s11,40(sp)
 7c4:	b95ff06f          	j	358 <main+0x1c4>

000007c8 <_ZN6tflite29MultiplyByQuantizedMultiplierElli>:
 7c8:	01e00793          	li	a5,30
 7cc:	ff010113          	addi	sp,sp,-16
 7d0:	40c787b3          	sub	a5,a5,a2
 7d4:	00912223          	sw	s1,4(sp)
 7d8:	00112623          	sw	ra,12(sp)
 7dc:	00812423          	sw	s0,8(sp)
 7e0:	01212023          	sw	s2,0(sp)
 7e4:	fe078713          	addi	a4,a5,-32
 7e8:	00060493          	mv	s1,a2
 7ec:	00058613          	mv	a2,a1
 7f0:	04074c63          	bltz	a4,848 <_ZN6tflite29MultiplyByQuantizedMultiplierElli+0x80>
 7f4:	00100913          	li	s2,1
 7f8:	00e91933          	sll	s2,s2,a4
 7fc:	00000413          	li	s0,0
 800:	41f65693          	srai	a3,a2,0x1f
 804:	41f55593          	srai	a1,a0,0x1f
 808:	84dff0ef          	jal	54 <__muldi3>
 80c:	01f00793          	li	a5,31
 810:	00a40533          	add	a0,s0,a0
 814:	409784b3          	sub	s1,a5,s1
 818:	00853433          	sltu	s0,a0,s0
 81c:	00b90933          	add	s2,s2,a1
 820:	fe048713          	addi	a4,s1,-32
 824:	01240433          	add	s0,s0,s2
 828:	02074863          	bltz	a4,858 <_ZN6tflite29MultiplyByQuantizedMultiplierElli+0x90>
 82c:	00c12083          	lw	ra,12(sp)
 830:	40e45533          	sra	a0,s0,a4
 834:	00812403          	lw	s0,8(sp)
 838:	00412483          	lw	s1,4(sp)
 83c:	00012903          	lw	s2,0(sp)
 840:	01010113          	addi	sp,sp,16
 844:	00008067          	ret
 848:	00100413          	li	s0,1
 84c:	00f41433          	sll	s0,s0,a5
 850:	00000913          	li	s2,0
 854:	fadff06f          	j	800 <_ZN6tflite29MultiplyByQuantizedMultiplierElli+0x38>
 858:	00141413          	slli	s0,s0,0x1
 85c:	409787b3          	sub	a5,a5,s1
 860:	00c12083          	lw	ra,12(sp)
 864:	00f417b3          	sll	a5,s0,a5
 868:	00812403          	lw	s0,8(sp)
 86c:	00955533          	srl	a0,a0,s1
 870:	00012903          	lw	s2,0(sp)
 874:	00412483          	lw	s1,4(sp)
 878:	00a78533          	add	a0,a5,a0
 87c:	01010113          	addi	sp,sp,16
 880:	00008067          	ret
