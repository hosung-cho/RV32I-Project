
/home/hosung/Ho/SoCLab workspace/RV32I-Project/TinyML/TFLM_standalone/pointwise/build/main_pointwise.elf:     file format elf32-littleriscv


Disassembly of section .text:

00000000 <main>:
   0:	e9010113          	addi	sp,sp,-368
   4:	00100793          	li	a5,1
   8:	0af12623          	sw	a5,172(sp)
   c:	00500793          	li	a5,5
  10:	0af12823          	sw	a5,176(sp)
  14:	01900793          	li	a5,25
  18:	0af12a23          	sw	a5,180(sp)
  1c:	04000793          	li	a5,64
  20:	0af12c23          	sw	a5,184(sp)
  24:	16112623          	sw	ra,364(sp)
  28:	16812423          	sw	s0,360(sp)
  2c:	16912223          	sw	s1,356(sp)
  30:	17212023          	sw	s2,352(sp)
  34:	15312e23          	sw	s3,348(sp)
  38:	15412c23          	sw	s4,344(sp)
  3c:	15512a23          	sw	s5,340(sp)
  40:	15612823          	sw	s6,336(sp)
  44:	15712623          	sw	s7,332(sp)
  48:	15812423          	sw	s8,328(sp)
  4c:	15912223          	sw	s9,324(sp)
  50:	15a12023          	sw	s10,320(sp)
  54:	13b12e23          	sw	s11,316(sp)
  58:	0ac10793          	addi	a5,sp,172
  5c:	0e010713          	addi	a4,sp,224
  60:	0bc10693          	addi	a3,sp,188
  64:	0007a603          	lw	a2,0(a5)
  68:	00478793          	addi	a5,a5,4
  6c:	00470713          	addi	a4,a4,4
  70:	fec72e23          	sw	a2,-4(a4)
  74:	fed798e3          	bne	a5,a3,64 <main+0x64>
  78:	04000693          	li	a3,64
  7c:	00100713          	li	a4,1
  80:	0ad12e23          	sw	a3,188(sp)
  84:	0cd12423          	sw	a3,200(sp)
  88:	0ce12023          	sw	a4,192(sp)
  8c:	0ce12223          	sw	a4,196(sp)
  90:	0cc10693          	addi	a3,sp,204
  94:	0fc10713          	addi	a4,sp,252
  98:	0007a603          	lw	a2,0(a5)
  9c:	00478793          	addi	a5,a5,4
  a0:	00470713          	addi	a4,a4,4
  a4:	fec72e23          	sw	a2,-4(a4)
  a8:	fed798e3          	bne	a5,a3,98 <main+0x98>
  ac:	00100713          	li	a4,1
  b0:	0ce12623          	sw	a4,204(sp)
  b4:	00500713          	li	a4,5
  b8:	0ce12823          	sw	a4,208(sp)
  bc:	01900713          	li	a4,25
  c0:	0ce12a23          	sw	a4,212(sp)
  c4:	04000713          	li	a4,64
  c8:	0ce12c23          	sw	a4,216(sp)
  cc:	0dc10693          	addi	a3,sp,220
  d0:	11810713          	addi	a4,sp,280
  d4:	0007a603          	lw	a2,0(a5)
  d8:	00478793          	addi	a5,a5,4
  dc:	00470713          	addi	a4,a4,4
  e0:	fec72e23          	sw	a2,-4(a4)
  e4:	fed798e3          	bne	a5,a3,d4 <main+0xd4>
  e8:	20003737          	lui	a4,0x20003
  ec:	000027b7          	lui	a5,0x2
  f0:	24070713          	addi	a4,a4,576 # 20003240 <input_data>
  f4:	f4078793          	addi	a5,a5,-192 # 1f40 <_ZN6tflite29MultiplyByQuantizedMultiplierElli+0x17dc>
  f8:	010106b7          	lui	a3,0x1010
  fc:	04e12e23          	sw	a4,92(sp)
 100:	00f707b3          	add	a5,a4,a5
 104:	10168693          	addi	a3,a3,257 # 1010101 <_ZN6tflite29MultiplyByQuantizedMultiplierElli+0x100f99d>
 108:	00d72023          	sw	a3,0(a4)
 10c:	00470713          	addi	a4,a4,4
 110:	fef71ce3          	bne	a4,a5,108 <main+0x108>
 114:	200027b7          	lui	a5,0x20002
 118:	24078793          	addi	a5,a5,576 # 20002240 <filter_data>
 11c:	000016b7          	lui	a3,0x1
 120:	02020737          	lui	a4,0x2020
 124:	00f12e23          	sw	a5,28(sp)
 128:	00d786b3          	add	a3,a5,a3
 12c:	20270713          	addi	a4,a4,514 # 2020202 <_ZN6tflite29MultiplyByQuantizedMultiplierElli+0x201fa9e>
 130:	00e7a023          	sw	a4,0(a5)
 134:	00478793          	addi	a5,a5,4
 138:	fed79ce3          	bne	a5,a3,130 <main+0x130>
 13c:	20000737          	lui	a4,0x20000
 140:	200007b7          	lui	a5,0x20000
 144:	10070713          	addi	a4,a4,256 # 20000100 <output_multiplier>
 148:	00078793          	mv	a5,a5
 14c:	200006b7          	lui	a3,0x20000
 150:	20068693          	addi	a3,a3,512 # 20000200 <bias_data>
 154:	02e12e23          	sw	a4,60(sp)
 158:	04f12023          	sw	a5,64(sp)
 15c:	04d12223          	sw	a3,68(sp)
 160:	00068793          	mv	a5,a3
 164:	10068513          	addi	a0,a3,256
 168:	04012703          	lw	a4,64(sp)
 16c:	03c12683          	lw	a3,60(sp)
 170:	400005b7          	lui	a1,0x40000
 174:	fff00613          	li	a2,-1
 178:	0007a023          	sw	zero,0(a5) # 20000000 <output_shift>
 17c:	00b6a023          	sw	a1,0(a3)
 180:	00c72023          	sw	a2,0(a4)
 184:	00478793          	addi	a5,a5,4
 188:	00468693          	addi	a3,a3,4
 18c:	00470713          	addi	a4,a4,4
 190:	fea794e3          	bne	a5,a0,178 <main+0x178>
 194:	11812783          	lw	a5,280(sp)
 198:	0e012903          	lw	s2,224(sp)
 19c:	0127d463          	bge	a5,s2,1a4 <main+0x1a4>
 1a0:	00078913          	mv	s2,a5
 1a4:	200007b7          	lui	a5,0x20000
 1a8:	30078593          	addi	a1,a5,768 # 20000300 <output_data>
 1ac:	3b205863          	blez	s2,55c <main+0x55c>
 1b0:	0fc12783          	lw	a5,252(sp)
 1b4:	12412d83          	lw	s11,292(sp)
 1b8:	0ec12b03          	lw	s6,236(sp)
 1bc:	02f12423          	sw	a5,40(sp)
 1c0:	42fdcc63          	blt	s11,a5,5f8 <main+0x5f8>
 1c4:	0e412783          	lw	a5,228(sp)
 1c8:	10812a03          	lw	s4,264(sp)
 1cc:	000b0513          	mv	a0,s6
 1d0:	00f12a23          	sw	a5,20(sp)
 1d4:	10012783          	lw	a5,256(sp)
 1d8:	000a0593          	mv	a1,s4
 1dc:	0e812b83          	lw	s7,232(sp)
 1e0:	02f12a23          	sw	a5,52(sp)
 1e4:	4cc000ef          	jal	6b0 <__divsi3>
 1e8:	00050593          	mv	a1,a0
 1ec:	02812503          	lw	a0,40(sp)
 1f0:	10412403          	lw	s0,260(sp)
 1f4:	000b0c13          	mv	s8,s6
 1f8:	4b8000ef          	jal	6b0 <__divsi3>
 1fc:	12012c83          	lw	s9,288(sp)
 200:	11c12a83          	lw	s5,284(sp)
 204:	04a12c23          	sw	a0,88(sp)
 208:	000c8593          	mv	a1,s9
 20c:	000a8513          	mv	a0,s5
 210:	3f0000ef          	jal	600 <__mulsi3>
 214:	000d8593          	mv	a1,s11
 218:	3e8000ef          	jal	600 <__mulsi3>
 21c:	06a12223          	sw	a0,100(sp)
 220:	01412503          	lw	a0,20(sp)
 224:	000b8593          	mv	a1,s7
 228:	00090993          	mv	s3,s2
 22c:	3d4000ef          	jal	600 <__mulsi3>
 230:	000b0593          	mv	a1,s6
 234:	3cc000ef          	jal	600 <__mulsi3>
 238:	000d8593          	mv	a1,s11
 23c:	06a12423          	sw	a0,104(sp)
 240:	000c8513          	mv	a0,s9
 244:	3bc000ef          	jal	600 <__mulsi3>
 248:	000b0593          	mv	a1,s6
 24c:	06a12023          	sw	a0,96(sp)
 250:	000b8513          	mv	a0,s7
 254:	3ac000ef          	jal	600 <__mulsi3>
 258:	00a12623          	sw	a0,12(sp)
 25c:	03412503          	lw	a0,52(sp)
 260:	00040593          	mv	a1,s0
 264:	000d8b13          	mv	s6,s11
 268:	398000ef          	jal	600 <__mulsi3>
 26c:	000a0593          	mv	a1,s4
 270:	390000ef          	jal	600 <__mulsi3>
 274:	04a12423          	sw	a0,72(sp)
 278:	000a0593          	mv	a1,s4
 27c:	00040513          	mv	a0,s0
 280:	380000ef          	jal	600 <__mulsi3>
 284:	200007b7          	lui	a5,0x20000
 288:	02a12223          	sw	a0,36(sp)
 28c:	000c8d93          	mv	s11,s9
 290:	00000d13          	li	s10,0
 294:	000b8c93          	mv	s9,s7
 298:	30078513          	addi	a0,a5,768 # 20000300 <output_data>
 29c:	00040693          	mv	a3,s0
 2a0:	000a8b93          	mv	s7,s5
 2a4:	00000493          	li	s1,0
 2a8:	00000913          	li	s2,0
 2ac:	29705a63          	blez	s7,540 <main+0x540>
 2b0:	29b05863          	blez	s11,540 <main+0x540>
 2b4:	000d0413          	mv	s0,s10
 2b8:	00090a93          	mv	s5,s2
 2bc:	00048e93          	mv	t4,s1
 2c0:	00050793          	mv	a5,a0
 2c4:	000d0493          	mv	s1,s10
 2c8:	000d8513          	mv	a0,s11
 2cc:	000c8d13          	mv	s10,s9
 2d0:	00000813          	li	a6,0
 2d4:	00090c93          	mv	s9,s2
 2d8:	01b68933          	add	s2,a3,s11
 2dc:	000c0d93          	mv	s11,s8
 2e0:	000b0c13          	mv	s8,s6
 2e4:	02812703          	lw	a4,40(sp)
 2e8:	20e05e63          	blez	a4,504 <main+0x504>
 2ec:	03412703          	lw	a4,52(sp)
 2f0:	07712a23          	sw	s7,116(sp)
 2f4:	05012623          	sw	a6,76(sp)
 2f8:	01070733          	add	a4,a4,a6
 2fc:	02e12023          	sw	a4,32(sp)
 300:	000d8b93          	mv	s7,s11
 304:	000c0713          	mv	a4,s8
 308:	09912223          	sw	s9,132(sp)
 30c:	08912423          	sw	s1,136(sp)
 310:	00000893          	li	a7,0
 314:	06812623          	sw	s0,108(sp)
 318:	07312823          	sw	s3,112(sp)
 31c:	000d0c13          	mv	s8,s10
 320:	06a12c23          	sw	a0,120(sp)
 324:	07d12e23          	sw	t4,124(sp)
 328:	09512023          	sw	s5,128(sp)
 32c:	00068c93          	mv	s9,a3
 330:	00040b13          	mv	s6,s0
 334:	000a8493          	mv	s1,s5
 338:	00090d93          	mv	s11,s2
 33c:	00078813          	mv	a6,a5
 340:	05c12783          	lw	a5,92(sp)
 344:	00980933          	add	s2,a6,s1
 348:	08912823          	sw	s1,144(sp)
 34c:	00fb07b3          	add	a5,s6,a5
 350:	00000413          	li	s0,0
 354:	04f12a23          	sw	a5,84(sp)
 358:	01712423          	sw	s7,8(sp)
 35c:	08e12623          	sw	a4,140(sp)
 360:	00d12c23          	sw	a3,24(sp)
 364:	00000493          	li	s1,0
 368:	09612a23          	sw	s6,148(sp)
 36c:	03112c23          	sw	a7,56(sp)
 370:	09b12c23          	sw	s11,152(sp)
 374:	09012e23          	sw	a6,156(sp)
 378:	05212823          	sw	s2,80(sp)
 37c:	03412783          	lw	a5,52(sp)
 380:	20f05e63          	blez	a5,59c <main+0x59c>
 384:	05812583          	lw	a1,88(sp)
 388:	00048513          	mv	a0,s1
 38c:	324000ef          	jal	6b0 <__divsi3>
 390:	000a0593          	mv	a1,s4
 394:	26c000ef          	jal	600 <__mulsi3>
 398:	05412783          	lw	a5,84(sp)
 39c:	04c12d03          	lw	s10,76(sp)
 3a0:	02912623          	sw	s1,44(sp)
 3a4:	00f50db3          	add	s11,a0,a5
 3a8:	00040793          	mv	a5,s0
 3ac:	02812823          	sw	s0,48(sp)
 3b0:	000c8493          	mv	s1,s9
 3b4:	000a0413          	mv	s0,s4
 3b8:	00000c93          	li	s9,0
 3bc:	00078a13          	mv	s4,a5
 3c0:	000d8793          	mv	a5,s11
 3c4:	000c0d93          	mv	s11,s8
 3c8:	000d0c13          	mv	s8,s10
 3cc:	01812703          	lw	a4,24(sp)
 3d0:	06e05263          	blez	a4,434 <main+0x434>
 3d4:	03812b83          	lw	s7,56(sp)
 3d8:	000a0b13          	mv	s6,s4
 3dc:	01412823          	sw	s4,16(sp)
 3e0:	000c0993          	mv	s3,s8
 3e4:	000d8a13          	mv	s4,s11
 3e8:	00078c13          	mv	s8,a5
 3ec:	00040d93          	mv	s11,s0
 3f0:	00048a93          	mv	s5,s1
 3f4:	000b0413          	mv	s0,s6
 3f8:	00078b13          	mv	s6,a5
 3fc:	014bd663          	bge	s7,s4,408 <main+0x408>
 400:	01412783          	lw	a5,20(sp)
 404:	16f9c263          	blt	s3,a5,568 <main+0x568>
 408:	00812783          	lw	a5,8(sp)
 40c:	001b8b93          	addi	s7,s7,1
 410:	01b40433          	add	s0,s0,s11
 414:	00fb0b33          	add	s6,s6,a5
 418:	ff5b92e3          	bne	s7,s5,3fc <main+0x3fc>
 41c:	000d8413          	mv	s0,s11
 420:	000a0d93          	mv	s11,s4
 424:	01012a03          	lw	s4,16(sp)
 428:	000c0793          	mv	a5,s8
 42c:	000a8493          	mv	s1,s5
 430:	00098c13          	mv	s8,s3
 434:	00c12703          	lw	a4,12(sp)
 438:	001c0c13          	addi	s8,s8,1
 43c:	00e787b3          	add	a5,a5,a4
 440:	02412703          	lw	a4,36(sp)
 444:	00ea0a33          	add	s4,s4,a4
 448:	02012703          	lw	a4,32(sp)
 44c:	f8ec10e3          	bne	s8,a4,3cc <main+0x3cc>
 450:	00040a13          	mv	s4,s0
 454:	000c8b13          	mv	s6,s9
 458:	03012403          	lw	s0,48(sp)
 45c:	00048c93          	mv	s9,s1
 460:	02c12483          	lw	s1,44(sp)
 464:	000d8c13          	mv	s8,s11
 468:	04412703          	lw	a4,68(sp)
 46c:	00249793          	slli	a5,s1,0x2
 470:	03c12683          	lw	a3,60(sp)
 474:	00f70733          	add	a4,a4,a5
 478:	00072503          	lw	a0,0(a4)
 47c:	04012703          	lw	a4,64(sp)
 480:	00ab0533          	add	a0,s6,a0
 484:	00f70733          	add	a4,a4,a5
 488:	00f687b3          	add	a5,a3,a5
 48c:	00072603          	lw	a2,0(a4)
 490:	0007a583          	lw	a1,0(a5)
 494:	2d0000ef          	jal	764 <_ZN6tflite29MultiplyByQuantizedMultiplierElli>
 498:	05012783          	lw	a5,80(sp)
 49c:	f8000713          	li	a4,-128
 4a0:	009787b3          	add	a5,a5,s1
 4a4:	00e55463          	bge	a0,a4,4ac <main+0x4ac>
 4a8:	00070513          	mv	a0,a4
 4ac:	07f00713          	li	a4,127
 4b0:	00a75463          	bge	a4,a0,4b8 <main+0x4b8>
 4b4:	00070513          	mv	a0,a4
 4b8:	00a78023          	sb	a0,0(a5)
 4bc:	04812783          	lw	a5,72(sp)
 4c0:	00148493          	addi	s1,s1,1
 4c4:	00f40433          	add	s0,s0,a5
 4c8:	02812783          	lw	a5,40(sp)
 4cc:	ea9798e3          	bne	a5,s1,37c <main+0x37c>
 4d0:	09812d83          	lw	s11,152(sp)
 4d4:	001c8c93          	addi	s9,s9,1
 4d8:	00812b83          	lw	s7,8(sp)
 4dc:	08c12703          	lw	a4,140(sp)
 4e0:	01812683          	lw	a3,24(sp)
 4e4:	09012483          	lw	s1,144(sp)
 4e8:	09412b03          	lw	s6,148(sp)
 4ec:	09c12803          	lw	a6,156(sp)
 4f0:	0b9d8a63          	beq	s11,s9,5a4 <main+0x5a4>
 4f4:	00e484b3          	add	s1,s1,a4
 4f8:	017b0b33          	add	s6,s6,s7
 4fc:	40dc88b3          	sub	a7,s9,a3
 500:	e41ff06f          	j	340 <main+0x340>
 504:	00068713          	mv	a4,a3
 508:	00170613          	addi	a2,a4,1
 50c:	01260663          	beq	a2,s2,518 <main+0x518>
 510:	00270713          	addi	a4,a4,2
 514:	ff271ae3          	bne	a4,s2,508 <main+0x508>
 518:	00180813          	addi	a6,a6,1
 51c:	0d0b9463          	bne	s7,a6,5e4 <main+0x5e4>
 520:	000c0b13          	mv	s6,s8
 524:	000c8913          	mv	s2,s9
 528:	000d8c13          	mv	s8,s11
 52c:	000d0c93          	mv	s9,s10
 530:	00050d93          	mv	s11,a0
 534:	00048d13          	mv	s10,s1
 538:	00078513          	mv	a0,a5
 53c:	000e8493          	mv	s1,t4
 540:	06412783          	lw	a5,100(sp)
 544:	00148493          	addi	s1,s1,1
 548:	00f90933          	add	s2,s2,a5
 54c:	06812783          	lw	a5,104(sp)
 550:	00fd0d33          	add	s10,s10,a5
 554:	d4999ce3          	bne	s3,s1,2ac <main+0x2ac>
 558:	00050593          	mv	a1,a0
 55c:	00058783          	lb	a5,0(a1) # 40000000 <__bss_end+0x1fffae80>
 560:	00078513          	mv	a0,a5
 564:	0000006f          	j	564 <main+0x564>
 568:	ebb050e3          	blez	s11,408 <main+0x408>
 56c:	01c12783          	lw	a5,28(sp)
 570:	000b0d13          	mv	s10,s6
 574:	01bb04b3          	add	s1,s6,s11
 578:	00f40933          	add	s2,s0,a5
 57c:	00090583          	lb	a1,0(s2)
 580:	000d0503          	lb	a0,0(s10)
 584:	001d0d13          	addi	s10,s10,1
 588:	00190913          	addi	s2,s2,1
 58c:	074000ef          	jal	600 <__mulsi3>
 590:	00ac8cb3          	add	s9,s9,a0
 594:	fe9d14e3          	bne	s10,s1,57c <main+0x57c>
 598:	e71ff06f          	j	408 <main+0x408>
 59c:	00000b13          	li	s6,0
 5a0:	ec9ff06f          	j	468 <main+0x468>
 5a4:	00080793          	mv	a5,a6
 5a8:	04c12803          	lw	a6,76(sp)
 5ac:	000d8913          	mv	s2,s11
 5b0:	000b8d93          	mv	s11,s7
 5b4:	07412b83          	lw	s7,116(sp)
 5b8:	00180813          	addi	a6,a6,1
 5bc:	000c0d13          	mv	s10,s8
 5c0:	06c12403          	lw	s0,108(sp)
 5c4:	07012983          	lw	s3,112(sp)
 5c8:	07812503          	lw	a0,120(sp)
 5cc:	07c12e83          	lw	t4,124(sp)
 5d0:	08012a83          	lw	s5,128(sp)
 5d4:	08412c83          	lw	s9,132(sp)
 5d8:	08812483          	lw	s1,136(sp)
 5dc:	00070c13          	mv	s8,a4
 5e0:	f50b80e3          	beq	s7,a6,520 <main+0x520>
 5e4:	06012703          	lw	a4,96(sp)
 5e8:	00ea8ab3          	add	s5,s5,a4
 5ec:	00c12703          	lw	a4,12(sp)
 5f0:	00e40433          	add	s0,s0,a4
 5f4:	cf1ff06f          	j	2e4 <main+0x2e4>
 5f8:	03b12423          	sw	s11,40(sp)
 5fc:	bc9ff06f          	j	1c4 <main+0x1c4>

00000600 <__mulsi3>:
 600:	00050613          	mv	a2,a0
 604:	00000513          	li	a0,0
 608:	0015f693          	andi	a3,a1,1
 60c:	00068463          	beqz	a3,614 <__mulsi3+0x14>
 610:	00c50533          	add	a0,a0,a2
 614:	0015d593          	srli	a1,a1,0x1
 618:	00161613          	slli	a2,a2,0x1
 61c:	fe0596e3          	bnez	a1,608 <__mulsi3+0x8>
 620:	00008067          	ret

00000624 <__muldi3>:
 624:	ff010113          	addi	sp,sp,-16
 628:	00068313          	mv	t1,a3
 62c:	00112623          	sw	ra,12(sp)
 630:	00050e13          	mv	t3,a0
 634:	00050693          	mv	a3,a0
 638:	00060893          	mv	a7,a2
 63c:	00000713          	li	a4,0
 640:	00000793          	li	a5,0
 644:	00000813          	li	a6,0
 648:	0018fe93          	andi	t4,a7,1
 64c:	00171513          	slli	a0,a4,0x1
 650:	000e8a63          	beqz	t4,664 <__muldi3+0x40>
 654:	01068833          	add	a6,a3,a6
 658:	00e787b3          	add	a5,a5,a4
 65c:	00d83733          	sltu	a4,a6,a3
 660:	00f707b3          	add	a5,a4,a5
 664:	01f6d713          	srli	a4,a3,0x1f
 668:	0018d893          	srli	a7,a7,0x1
 66c:	00e56733          	or	a4,a0,a4
 670:	00169693          	slli	a3,a3,0x1
 674:	fc089ae3          	bnez	a7,648 <__muldi3+0x24>
 678:	00058863          	beqz	a1,688 <__muldi3+0x64>
 67c:	00060513          	mv	a0,a2
 680:	f81ff0ef          	jal	600 <__mulsi3>
 684:	00a787b3          	add	a5,a5,a0
 688:	00030a63          	beqz	t1,69c <__muldi3+0x78>
 68c:	000e0513          	mv	a0,t3
 690:	00030593          	mv	a1,t1
 694:	f6dff0ef          	jal	600 <__mulsi3>
 698:	00f507b3          	add	a5,a0,a5
 69c:	00c12083          	lw	ra,12(sp)
 6a0:	00080513          	mv	a0,a6
 6a4:	00078593          	mv	a1,a5
 6a8:	01010113          	addi	sp,sp,16
 6ac:	00008067          	ret

000006b0 <__divsi3>:
 6b0:	06054063          	bltz	a0,710 <__umodsi3+0x10>
 6b4:	0605c663          	bltz	a1,720 <__umodsi3+0x20>

000006b8 <__hidden___udivsi3>:
 6b8:	00058613          	mv	a2,a1
 6bc:	00050593          	mv	a1,a0
 6c0:	fff00513          	li	a0,-1
 6c4:	02060c63          	beqz	a2,6fc <__hidden___udivsi3+0x44>
 6c8:	00100693          	li	a3,1
 6cc:	00b67a63          	bgeu	a2,a1,6e0 <__hidden___udivsi3+0x28>
 6d0:	00c05863          	blez	a2,6e0 <__hidden___udivsi3+0x28>
 6d4:	00161613          	slli	a2,a2,0x1
 6d8:	00169693          	slli	a3,a3,0x1
 6dc:	feb66ae3          	bltu	a2,a1,6d0 <__hidden___udivsi3+0x18>
 6e0:	00000513          	li	a0,0
 6e4:	00c5e663          	bltu	a1,a2,6f0 <__hidden___udivsi3+0x38>
 6e8:	40c585b3          	sub	a1,a1,a2
 6ec:	00d56533          	or	a0,a0,a3
 6f0:	0016d693          	srli	a3,a3,0x1
 6f4:	00165613          	srli	a2,a2,0x1
 6f8:	fe0696e3          	bnez	a3,6e4 <__hidden___udivsi3+0x2c>
 6fc:	00008067          	ret

00000700 <__umodsi3>:
 700:	00008293          	mv	t0,ra
 704:	fb5ff0ef          	jal	6b8 <__hidden___udivsi3>
 708:	00058513          	mv	a0,a1
 70c:	00028067          	jr	t0
 710:	40a00533          	neg	a0,a0
 714:	00b04863          	bgtz	a1,724 <__umodsi3+0x24>
 718:	40b005b3          	neg	a1,a1
 71c:	f9dff06f          	j	6b8 <__hidden___udivsi3>
 720:	40b005b3          	neg	a1,a1
 724:	00008293          	mv	t0,ra
 728:	f91ff0ef          	jal	6b8 <__hidden___udivsi3>
 72c:	40a00533          	neg	a0,a0
 730:	00028067          	jr	t0

00000734 <__modsi3>:
 734:	00008293          	mv	t0,ra
 738:	0005ca63          	bltz	a1,74c <__modsi3+0x18>
 73c:	00054c63          	bltz	a0,754 <__modsi3+0x20>
 740:	f79ff0ef          	jal	6b8 <__hidden___udivsi3>
 744:	00058513          	mv	a0,a1
 748:	00028067          	jr	t0
 74c:	40b005b3          	neg	a1,a1
 750:	fe0558e3          	bgez	a0,740 <__modsi3+0xc>
 754:	40a00533          	neg	a0,a0
 758:	f61ff0ef          	jal	6b8 <__hidden___udivsi3>
 75c:	40b00533          	neg	a0,a1
 760:	00028067          	jr	t0

00000764 <_ZN6tflite29MultiplyByQuantizedMultiplierElli>:
 764:	fff64793          	not	a5,a2
 768:	41f7d793          	srai	a5,a5,0x1f
 76c:	ff010113          	addi	sp,sp,-16
 770:	00f677b3          	and	a5,a2,a5
 774:	00f51533          	sll	a0,a0,a5
 778:	00812423          	sw	s0,8(sp)
 77c:	800007b7          	lui	a5,0x80000
 780:	00060413          	mv	s0,a2
 784:	40b50833          	sub	a6,a0,a1
 788:	00058613          	mv	a2,a1
 78c:	fff40713          	addi	a4,s0,-1
 790:	00f507b3          	add	a5,a0,a5
 794:	0017b793          	seqz	a5,a5
 798:	00183813          	seqz	a6,a6
 79c:	41f75713          	srai	a4,a4,0x1f
 7a0:	40800433          	neg	s0,s0
 7a4:	41f55593          	srai	a1,a0,0x1f
 7a8:	41f65693          	srai	a3,a2,0x1f
 7ac:	00912223          	sw	s1,4(sp)
 7b0:	00112623          	sw	ra,12(sp)
 7b4:	0107f4b3          	and	s1,a5,a6
 7b8:	00e47433          	and	s0,s0,a4
 7bc:	e69ff0ef          	jal	624 <__muldi3>
 7c0:	0805c263          	bltz	a1,844 <_ZN6tflite29MultiplyByQuantizedMultiplierElli+0xe0>
 7c4:	fe040713          	addi	a4,s0,-32
 7c8:	400006b7          	lui	a3,0x40000
 7cc:	00000793          	li	a5,0
 7d0:	08074463          	bltz	a4,858 <_ZN6tflite29MultiplyByQuantizedMultiplierElli+0xf4>
 7d4:	00000713          	li	a4,0
 7d8:	fff70713          	addi	a4,a4,-1
 7dc:	40175613          	srai	a2,a4,0x1
 7e0:	08049663          	bnez	s1,86c <_ZN6tflite29MultiplyByQuantizedMultiplierElli+0x108>
 7e4:	00a686b3          	add	a3,a3,a0
 7e8:	00a6b533          	sltu	a0,a3,a0
 7ec:	00b787b3          	add	a5,a5,a1
 7f0:	00f50533          	add	a0,a0,a5
 7f4:	41f55793          	srai	a5,a0,0x1f
 7f8:	00179793          	slli	a5,a5,0x1
 7fc:	0017d793          	srli	a5,a5,0x1
 800:	00d786b3          	add	a3,a5,a3
 804:	00f6b7b3          	sltu	a5,a3,a5
 808:	00a787b3          	add	a5,a5,a0
 80c:	01f6d693          	srli	a3,a3,0x1f
 810:	00179793          	slli	a5,a5,0x1
 814:	00d787b3          	add	a5,a5,a3
 818:	00c12083          	lw	ra,12(sp)
 81c:	01f7d693          	srli	a3,a5,0x1f
 820:	00e7f533          	and	a0,a5,a4
 824:	4087d7b3          	sra	a5,a5,s0
 828:	00812403          	lw	s0,8(sp)
 82c:	00d60633          	add	a2,a2,a3
 830:	00a62533          	slt	a0,a2,a0
 834:	00412483          	lw	s1,4(sp)
 838:	00a78533          	add	a0,a5,a0
 83c:	01010113          	addi	sp,sp,16
 840:	00008067          	ret
 844:	c00006b7          	lui	a3,0xc0000
 848:	fe040713          	addi	a4,s0,-32
 84c:	00168693          	addi	a3,a3,1 # c0000001 <__bss_end+0x9fffae81>
 850:	fff00793          	li	a5,-1
 854:	f80750e3          	bgez	a4,7d4 <_ZN6tflite29MultiplyByQuantizedMultiplierElli+0x70>
 858:	00100713          	li	a4,1
 85c:	00871733          	sll	a4,a4,s0
 860:	fff70713          	addi	a4,a4,-1
 864:	40175613          	srai	a2,a4,0x1
 868:	f6048ee3          	beqz	s1,7e4 <_ZN6tflite29MultiplyByQuantizedMultiplierElli+0x80>
 86c:	800007b7          	lui	a5,0x80000
 870:	fff78793          	addi	a5,a5,-1 # 7fffffff <__bss_end+0x5fffae7f>
 874:	00c12083          	lw	ra,12(sp)
 878:	00f77533          	and	a0,a4,a5
 87c:	4087d7b3          	sra	a5,a5,s0
 880:	00812403          	lw	s0,8(sp)
 884:	00a62533          	slt	a0,a2,a0
 888:	00412483          	lw	s1,4(sp)
 88c:	00a78533          	add	a0,a5,a0
 890:	01010113          	addi	sp,sp,16
 894:	00008067          	ret
