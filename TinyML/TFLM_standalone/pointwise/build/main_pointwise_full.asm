
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
  24:	00400793          	li	a5,4
  28:	0cf12e23          	sw	a5,220(sp)
  2c:	16112623          	sw	ra,364(sp)
  30:	16812423          	sw	s0,360(sp)
  34:	16912223          	sw	s1,356(sp)
  38:	17212023          	sw	s2,352(sp)
  3c:	15312e23          	sw	s3,348(sp)
  40:	15412c23          	sw	s4,344(sp)
  44:	15512a23          	sw	s5,340(sp)
  48:	15612823          	sw	s6,336(sp)
  4c:	15712623          	sw	s7,332(sp)
  50:	15812423          	sw	s8,328(sp)
  54:	15912223          	sw	s9,324(sp)
  58:	15a12023          	sw	s10,320(sp)
  5c:	13b12e23          	sw	s11,316(sp)
  60:	0ac10793          	addi	a5,sp,172
  64:	0e010713          	addi	a4,sp,224
  68:	0bc10693          	addi	a3,sp,188
  6c:	0007a603          	lw	a2,0(a5)
  70:	00478793          	addi	a5,a5,4
  74:	00470713          	addi	a4,a4,4
  78:	fec72e23          	sw	a2,-4(a4)
  7c:	fed798e3          	bne	a5,a3,6c <main+0x6c>
  80:	04000693          	li	a3,64
  84:	00100713          	li	a4,1
  88:	00400613          	li	a2,4
  8c:	0ad12e23          	sw	a3,188(sp)
  90:	0cd12423          	sw	a3,200(sp)
  94:	0ce12023          	sw	a4,192(sp)
  98:	0ce12223          	sw	a4,196(sp)
  9c:	0ec12c23          	sw	a2,248(sp)
  a0:	0fc10713          	addi	a4,sp,252
  a4:	0cc10693          	addi	a3,sp,204
  a8:	0007a603          	lw	a2,0(a5)
  ac:	00478793          	addi	a5,a5,4
  b0:	00470713          	addi	a4,a4,4
  b4:	fec72e23          	sw	a2,-4(a4)
  b8:	fed798e3          	bne	a5,a3,a8 <main+0xa8>
  bc:	00100713          	li	a4,1
  c0:	0ce12623          	sw	a4,204(sp)
  c4:	00500713          	li	a4,5
  c8:	0ce12823          	sw	a4,208(sp)
  cc:	01900713          	li	a4,25
  d0:	0ce12a23          	sw	a4,212(sp)
  d4:	04000713          	li	a4,64
  d8:	0ce12c23          	sw	a4,216(sp)
  dc:	00400713          	li	a4,4
  e0:	10e12a23          	sw	a4,276(sp)
  e4:	0dc10693          	addi	a3,sp,220
  e8:	11810713          	addi	a4,sp,280
  ec:	0007a603          	lw	a2,0(a5)
  f0:	00478793          	addi	a5,a5,4
  f4:	00470713          	addi	a4,a4,4
  f8:	fec72e23          	sw	a2,-4(a4)
  fc:	fed798e3          	bne	a5,a3,ec <main+0xec>
 100:	20003737          	lui	a4,0x20003
 104:	000027b7          	lui	a5,0x2
 108:	24070713          	addi	a4,a4,576 # 20003240 <input_data>
 10c:	f4078793          	addi	a5,a5,-192 # 1f40 <_ZN6tflite29MultiplyByQuantizedMultiplierElli+0x17ec>
 110:	010106b7          	lui	a3,0x1010
 114:	06e12023          	sw	a4,96(sp)
 118:	00f707b3          	add	a5,a4,a5
 11c:	10168693          	addi	a3,a3,257 # 1010101 <_ZN6tflite29MultiplyByQuantizedMultiplierElli+0x100f9ad>
 120:	00d72023          	sw	a3,0(a4)
 124:	00470713          	addi	a4,a4,4
 128:	fef71ce3          	bne	a4,a5,120 <main+0x120>
 12c:	200027b7          	lui	a5,0x20002
 130:	24078793          	addi	a5,a5,576 # 20002240 <filter_data>
 134:	000016b7          	lui	a3,0x1
 138:	02020737          	lui	a4,0x2020
 13c:	00f12e23          	sw	a5,28(sp)
 140:	00d786b3          	add	a3,a5,a3
 144:	20270713          	addi	a4,a4,514 # 2020202 <_ZN6tflite29MultiplyByQuantizedMultiplierElli+0x201faae>
 148:	00e7a023          	sw	a4,0(a5)
 14c:	00478793          	addi	a5,a5,4
 150:	fed79ce3          	bne	a5,a3,148 <main+0x148>
 154:	20000737          	lui	a4,0x20000
 158:	200007b7          	lui	a5,0x20000
 15c:	10070713          	addi	a4,a4,256 # 20000100 <output_multiplier>
 160:	00078793          	mv	a5,a5
 164:	200006b7          	lui	a3,0x20000
 168:	20068693          	addi	a3,a3,512 # 20000200 <bias_data>
 16c:	02e12e23          	sw	a4,60(sp)
 170:	04f12023          	sw	a5,64(sp)
 174:	04d12223          	sw	a3,68(sp)
 178:	00068793          	mv	a5,a3
 17c:	10068513          	addi	a0,a3,256
 180:	04012703          	lw	a4,64(sp)
 184:	03c12683          	lw	a3,60(sp)
 188:	400005b7          	lui	a1,0x40000
 18c:	fff00613          	li	a2,-1
 190:	0007a023          	sw	zero,0(a5) # 20000000 <output_shift>
 194:	00b6a023          	sw	a1,0(a3)
 198:	00c72023          	sw	a2,0(a4)
 19c:	00478793          	addi	a5,a5,4
 1a0:	00468693          	addi	a3,a3,4
 1a4:	00470713          	addi	a4,a4,4
 1a8:	fea794e3          	bne	a5,a0,190 <main+0x190>
 1ac:	11812783          	lw	a5,280(sp)
 1b0:	0e012903          	lw	s2,224(sp)
 1b4:	0127d463          	bge	a5,s2,1bc <main+0x1bc>
 1b8:	00078913          	mv	s2,a5
 1bc:	3b205463          	blez	s2,564 <main+0x564>
 1c0:	0fc12783          	lw	a5,252(sp)
 1c4:	12412d83          	lw	s11,292(sp)
 1c8:	0ec12b83          	lw	s7,236(sp)
 1cc:	02f12423          	sw	a5,40(sp)
 1d0:	40fdcc63          	blt	s11,a5,5e8 <main+0x5e8>
 1d4:	0e412783          	lw	a5,228(sp)
 1d8:	10812a03          	lw	s4,264(sp)
 1dc:	000b8513          	mv	a0,s7
 1e0:	00f12a23          	sw	a5,20(sp)
 1e4:	10012783          	lw	a5,256(sp)
 1e8:	000a0593          	mv	a1,s4
 1ec:	0e812983          	lw	s3,232(sp)
 1f0:	02f12a23          	sw	a5,52(sp)
 1f4:	4ac000ef          	jal	6a0 <__divsi3>
 1f8:	00050593          	mv	a1,a0
 1fc:	02812503          	lw	a0,40(sp)
 200:	10412483          	lw	s1,260(sp)
 204:	00000b13          	li	s6,0
 208:	498000ef          	jal	6a0 <__divsi3>
 20c:	12012783          	lw	a5,288(sp)
 210:	11c12a83          	lw	s5,284(sp)
 214:	04a12c23          	sw	a0,88(sp)
 218:	00078593          	mv	a1,a5
 21c:	000a8513          	mv	a0,s5
 220:	00078413          	mv	s0,a5
 224:	04f12e23          	sw	a5,92(sp)
 228:	3c8000ef          	jal	5f0 <__mulsi3>
 22c:	000d8593          	mv	a1,s11
 230:	3c0000ef          	jal	5f0 <__mulsi3>
 234:	06a12223          	sw	a0,100(sp)
 238:	01412503          	lw	a0,20(sp)
 23c:	00098593          	mv	a1,s3
 240:	00090d13          	mv	s10,s2
 244:	3ac000ef          	jal	5f0 <__mulsi3>
 248:	000b8593          	mv	a1,s7
 24c:	3a4000ef          	jal	5f0 <__mulsi3>
 250:	06a12423          	sw	a0,104(sp)
 254:	000d8593          	mv	a1,s11
 258:	00040513          	mv	a0,s0
 25c:	394000ef          	jal	5f0 <__mulsi3>
 260:	000b8593          	mv	a1,s7
 264:	06a12623          	sw	a0,108(sp)
 268:	00098513          	mv	a0,s3
 26c:	384000ef          	jal	5f0 <__mulsi3>
 270:	00a12623          	sw	a0,12(sp)
 274:	03412503          	lw	a0,52(sp)
 278:	00048593          	mv	a1,s1
 27c:	000b8c93          	mv	s9,s7
 280:	370000ef          	jal	5f0 <__mulsi3>
 284:	000a0593          	mv	a1,s4
 288:	368000ef          	jal	5f0 <__mulsi3>
 28c:	04a12423          	sw	a0,72(sp)
 290:	000a0593          	mv	a1,s4
 294:	00048513          	mv	a0,s1
 298:	358000ef          	jal	5f0 <__mulsi3>
 29c:	00048613          	mv	a2,s1
 2a0:	000a8b93          	mv	s7,s5
 2a4:	02a12223          	sw	a0,36(sp)
 2a8:	000b0913          	mv	s2,s6
 2ac:	00000493          	li	s1,0
 2b0:	00098c13          	mv	s8,s3
 2b4:	000d8a93          	mv	s5,s11
 2b8:	29705a63          	blez	s7,54c <main+0x54c>
 2bc:	05c12783          	lw	a5,92(sp)
 2c0:	28f05663          	blez	a5,54c <main+0x54c>
 2c4:	00090e93          	mv	t4,s2
 2c8:	06c12903          	lw	s2,108(sp)
 2cc:	000b0413          	mv	s0,s6
 2d0:	000d0513          	mv	a0,s10
 2d4:	00000813          	li	a6,0
 2d8:	000c8d13          	mv	s10,s9
 2dc:	00048e13          	mv	t3,s1
 2e0:	000b0c93          	mv	s9,s6
 2e4:	00f60db3          	add	s11,a2,a5
 2e8:	000b8b13          	mv	s6,s7
 2ec:	000c0b93          	mv	s7,s8
 2f0:	000a8c13          	mv	s8,s5
 2f4:	02812783          	lw	a5,40(sp)
 2f8:	20f05c63          	blez	a5,510 <main+0x510>
 2fc:	03412703          	lw	a4,52(sp)
 300:	09912223          	sw	s9,132(sp)
 304:	000c0793          	mv	a5,s8
 308:	01070733          	add	a4,a4,a6
 30c:	02e12023          	sw	a4,32(sp)
 310:	000d8713          	mv	a4,s11
 314:	000d0c13          	mv	s8,s10
 318:	00000313          	li	t1,0
 31c:	06812823          	sw	s0,112(sp)
 320:	07612a23          	sw	s6,116(sp)
 324:	07d12c23          	sw	t4,120(sp)
 328:	06912e23          	sw	s1,124(sp)
 32c:	05012623          	sw	a6,76(sp)
 330:	09c12023          	sw	t3,128(sp)
 334:	000b8c93          	mv	s9,s7
 338:	00060d93          	mv	s11,a2
 33c:	00040a93          	mv	s5,s0
 340:	09212423          	sw	s2,136(sp)
 344:	00070d13          	mv	s10,a4
 348:	06012703          	lw	a4,96(sp)
 34c:	08912a23          	sw	s1,148(sp)
 350:	00000413          	li	s0,0
 354:	00ea8733          	add	a4,s5,a4
 358:	04e12a23          	sw	a4,84(sp)
 35c:	20000737          	lui	a4,0x20000
 360:	30070713          	addi	a4,a4,768 # 20000300 <output_data>
 364:	00970933          	add	s2,a4,s1
 368:	08a12623          	sw	a0,140(sp)
 36c:	01812423          	sw	s8,8(sp)
 370:	08f12823          	sw	a5,144(sp)
 374:	00c12c23          	sw	a2,24(sp)
 378:	00000493          	li	s1,0
 37c:	09512c23          	sw	s5,152(sp)
 380:	02612c23          	sw	t1,56(sp)
 384:	09a12e23          	sw	s10,156(sp)
 388:	05212823          	sw	s2,80(sp)
 38c:	03412783          	lw	a5,52(sp)
 390:	20f05663          	blez	a5,59c <main+0x59c>
 394:	05812583          	lw	a1,88(sp)
 398:	00048513          	mv	a0,s1
 39c:	304000ef          	jal	6a0 <__divsi3>
 3a0:	000a0593          	mv	a1,s4
 3a4:	24c000ef          	jal	5f0 <__mulsi3>
 3a8:	05412783          	lw	a5,84(sp)
 3ac:	04c12b83          	lw	s7,76(sp)
 3b0:	02912623          	sw	s1,44(sp)
 3b4:	00f50d33          	add	s10,a0,a5
 3b8:	00040793          	mv	a5,s0
 3bc:	02812823          	sw	s0,48(sp)
 3c0:	000d8493          	mv	s1,s11
 3c4:	000a0413          	mv	s0,s4
 3c8:	00000d93          	li	s11,0
 3cc:	00078a13          	mv	s4,a5
 3d0:	000d0793          	mv	a5,s10
 3d4:	000c8d13          	mv	s10,s9
 3d8:	000b8c93          	mv	s9,s7
 3dc:	01812703          	lw	a4,24(sp)
 3e0:	06e05063          	blez	a4,440 <main+0x440>
 3e4:	03812c03          	lw	s8,56(sp)
 3e8:	01412823          	sw	s4,16(sp)
 3ec:	000d0993          	mv	s3,s10
 3f0:	00078a93          	mv	s5,a5
 3f4:	00040d13          	mv	s10,s0
 3f8:	00048b13          	mv	s6,s1
 3fc:	000a0413          	mv	s0,s4
 400:	000c8a13          	mv	s4,s9
 404:	00078c93          	mv	s9,a5
 408:	013c5663          	bge	s8,s3,414 <main+0x414>
 40c:	01412783          	lw	a5,20(sp)
 410:	14fa4c63          	blt	s4,a5,568 <main+0x568>
 414:	00812783          	lw	a5,8(sp)
 418:	001c0c13          	addi	s8,s8,1
 41c:	01a40433          	add	s0,s0,s10
 420:	00fa8ab3          	add	s5,s5,a5
 424:	ff6c12e3          	bne	s8,s6,408 <main+0x408>
 428:	000c8793          	mv	a5,s9
 42c:	000a0c93          	mv	s9,s4
 430:	01012a03          	lw	s4,16(sp)
 434:	000d0413          	mv	s0,s10
 438:	000b0493          	mv	s1,s6
 43c:	00098d13          	mv	s10,s3
 440:	00c12703          	lw	a4,12(sp)
 444:	001c8c93          	addi	s9,s9,1
 448:	00e787b3          	add	a5,a5,a4
 44c:	02412703          	lw	a4,36(sp)
 450:	00ea0a33          	add	s4,s4,a4
 454:	02012703          	lw	a4,32(sp)
 458:	f8ec92e3          	bne	s9,a4,3dc <main+0x3dc>
 45c:	00040a13          	mv	s4,s0
 460:	000d8a93          	mv	s5,s11
 464:	03012403          	lw	s0,48(sp)
 468:	00048d93          	mv	s11,s1
 46c:	02c12483          	lw	s1,44(sp)
 470:	000d0c93          	mv	s9,s10
 474:	04412703          	lw	a4,68(sp)
 478:	00249793          	slli	a5,s1,0x2
 47c:	03c12683          	lw	a3,60(sp)
 480:	00f70733          	add	a4,a4,a5
 484:	00072503          	lw	a0,0(a4)
 488:	04012703          	lw	a4,64(sp)
 48c:	00aa8533          	add	a0,s5,a0
 490:	00f70733          	add	a4,a4,a5
 494:	00f687b3          	add	a5,a3,a5
 498:	00072603          	lw	a2,0(a4)
 49c:	0007a583          	lw	a1,0(a5)
 4a0:	2b4000ef          	jal	754 <_ZN6tflite29MultiplyByQuantizedMultiplierElli>
 4a4:	05012783          	lw	a5,80(sp)
 4a8:	f8000713          	li	a4,-128
 4ac:	009787b3          	add	a5,a5,s1
 4b0:	00e55463          	bge	a0,a4,4b8 <main+0x4b8>
 4b4:	00070513          	mv	a0,a4
 4b8:	07f00713          	li	a4,127
 4bc:	00a75463          	bge	a4,a0,4c4 <main+0x4c4>
 4c0:	00070513          	mv	a0,a4
 4c4:	00a78023          	sb	a0,0(a5)
 4c8:	04812783          	lw	a5,72(sp)
 4cc:	00148493          	addi	s1,s1,1
 4d0:	00f40433          	add	s0,s0,a5
 4d4:	02812783          	lw	a5,40(sp)
 4d8:	ea979ae3          	bne	a5,s1,38c <main+0x38c>
 4dc:	09c12d03          	lw	s10,156(sp)
 4e0:	001d8d93          	addi	s11,s11,1
 4e4:	08c12503          	lw	a0,140(sp)
 4e8:	00812c03          	lw	s8,8(sp)
 4ec:	09012783          	lw	a5,144(sp)
 4f0:	01812603          	lw	a2,24(sp)
 4f4:	09412483          	lw	s1,148(sp)
 4f8:	09812a83          	lw	s5,152(sp)
 4fc:	0bbd0463          	beq	s10,s11,5a4 <main+0x5a4>
 500:	00f484b3          	add	s1,s1,a5
 504:	018a8ab3          	add	s5,s5,s8
 508:	40cd8333          	sub	t1,s11,a2
 50c:	e3dff06f          	j	348 <main+0x348>
 510:	00060793          	mv	a5,a2
 514:	00178713          	addi	a4,a5,1
 518:	01b70663          	beq	a4,s11,524 <main+0x524>
 51c:	00278793          	addi	a5,a5,2
 520:	ffb79ae3          	bne	a5,s11,514 <main+0x514>
 524:	00180813          	addi	a6,a6,1
 528:	0b0b1863          	bne	s6,a6,5d8 <main+0x5d8>
 52c:	000c0a93          	mv	s5,s8
 530:	000e8913          	mv	s2,t4
 534:	000b8c13          	mv	s8,s7
 538:	000e0493          	mv	s1,t3
 53c:	000b0b93          	mv	s7,s6
 540:	000c8b13          	mv	s6,s9
 544:	000d0c93          	mv	s9,s10
 548:	00050d13          	mv	s10,a0
 54c:	06412783          	lw	a5,100(sp)
 550:	00190913          	addi	s2,s2,1
 554:	00f484b3          	add	s1,s1,a5
 558:	06812783          	lw	a5,104(sp)
 55c:	00fb0b33          	add	s6,s6,a5
 560:	d52d1ce3          	bne	s10,s2,2b8 <main+0x2b8>
 564:	0000006f          	j	564 <main+0x564>
 568:	eba056e3          	blez	s10,414 <main+0x414>
 56c:	01c12783          	lw	a5,28(sp)
 570:	000a8b93          	mv	s7,s5
 574:	01aa84b3          	add	s1,s5,s10
 578:	00f40933          	add	s2,s0,a5
 57c:	00090583          	lb	a1,0(s2)
 580:	000b8503          	lb	a0,0(s7)
 584:	001b8b93          	addi	s7,s7,1
 588:	00190913          	addi	s2,s2,1
 58c:	064000ef          	jal	5f0 <__mulsi3>
 590:	00ad8db3          	add	s11,s11,a0
 594:	ff7494e3          	bne	s1,s7,57c <main+0x57c>
 598:	e7dff06f          	j	414 <main+0x414>
 59c:	00000a93          	li	s5,0
 5a0:	ed5ff06f          	j	474 <main+0x474>
 5a4:	04c12803          	lw	a6,76(sp)
 5a8:	07412b03          	lw	s6,116(sp)
 5ac:	000c8b93          	mv	s7,s9
 5b0:	00180813          	addi	a6,a6,1
 5b4:	000c0d13          	mv	s10,s8
 5b8:	07012403          	lw	s0,112(sp)
 5bc:	07812e83          	lw	t4,120(sp)
 5c0:	07c12483          	lw	s1,124(sp)
 5c4:	08012e03          	lw	t3,128(sp)
 5c8:	08412c83          	lw	s9,132(sp)
 5cc:	08812903          	lw	s2,136(sp)
 5d0:	00078c13          	mv	s8,a5
 5d4:	f50b0ce3          	beq	s6,a6,52c <main+0x52c>
 5d8:	00c12783          	lw	a5,12(sp)
 5dc:	012484b3          	add	s1,s1,s2
 5e0:	00f40433          	add	s0,s0,a5
 5e4:	d11ff06f          	j	2f4 <main+0x2f4>
 5e8:	03b12423          	sw	s11,40(sp)
 5ec:	be9ff06f          	j	1d4 <main+0x1d4>

000005f0 <__mulsi3>:
 5f0:	00050613          	mv	a2,a0
 5f4:	00000513          	li	a0,0
 5f8:	0015f693          	andi	a3,a1,1
 5fc:	00068463          	beqz	a3,604 <__mulsi3+0x14>
 600:	00c50533          	add	a0,a0,a2
 604:	0015d593          	srli	a1,a1,0x1
 608:	00161613          	slli	a2,a2,0x1
 60c:	fe0596e3          	bnez	a1,5f8 <__mulsi3+0x8>
 610:	00008067          	ret

00000614 <__muldi3>:
 614:	ff010113          	addi	sp,sp,-16
 618:	00068313          	mv	t1,a3
 61c:	00112623          	sw	ra,12(sp)
 620:	00050e13          	mv	t3,a0
 624:	00050693          	mv	a3,a0
 628:	00060893          	mv	a7,a2
 62c:	00000713          	li	a4,0
 630:	00000793          	li	a5,0
 634:	00000813          	li	a6,0
 638:	0018fe93          	andi	t4,a7,1
 63c:	00171513          	slli	a0,a4,0x1
 640:	000e8a63          	beqz	t4,654 <__muldi3+0x40>
 644:	01068833          	add	a6,a3,a6
 648:	00e787b3          	add	a5,a5,a4
 64c:	00d83733          	sltu	a4,a6,a3
 650:	00f707b3          	add	a5,a4,a5
 654:	01f6d713          	srli	a4,a3,0x1f
 658:	0018d893          	srli	a7,a7,0x1
 65c:	00e56733          	or	a4,a0,a4
 660:	00169693          	slli	a3,a3,0x1
 664:	fc089ae3          	bnez	a7,638 <__muldi3+0x24>
 668:	00058863          	beqz	a1,678 <__muldi3+0x64>
 66c:	00060513          	mv	a0,a2
 670:	f81ff0ef          	jal	5f0 <__mulsi3>
 674:	00a787b3          	add	a5,a5,a0
 678:	00030a63          	beqz	t1,68c <__muldi3+0x78>
 67c:	000e0513          	mv	a0,t3
 680:	00030593          	mv	a1,t1
 684:	f6dff0ef          	jal	5f0 <__mulsi3>
 688:	00f507b3          	add	a5,a0,a5
 68c:	00c12083          	lw	ra,12(sp)
 690:	00080513          	mv	a0,a6
 694:	00078593          	mv	a1,a5
 698:	01010113          	addi	sp,sp,16
 69c:	00008067          	ret

000006a0 <__divsi3>:
 6a0:	06054063          	bltz	a0,700 <__umodsi3+0x10>
 6a4:	0605c663          	bltz	a1,710 <__umodsi3+0x20>

000006a8 <__hidden___udivsi3>:
 6a8:	00058613          	mv	a2,a1
 6ac:	00050593          	mv	a1,a0
 6b0:	fff00513          	li	a0,-1
 6b4:	02060c63          	beqz	a2,6ec <__hidden___udivsi3+0x44>
 6b8:	00100693          	li	a3,1
 6bc:	00b67a63          	bgeu	a2,a1,6d0 <__hidden___udivsi3+0x28>
 6c0:	00c05863          	blez	a2,6d0 <__hidden___udivsi3+0x28>
 6c4:	00161613          	slli	a2,a2,0x1
 6c8:	00169693          	slli	a3,a3,0x1
 6cc:	feb66ae3          	bltu	a2,a1,6c0 <__hidden___udivsi3+0x18>
 6d0:	00000513          	li	a0,0
 6d4:	00c5e663          	bltu	a1,a2,6e0 <__hidden___udivsi3+0x38>
 6d8:	40c585b3          	sub	a1,a1,a2
 6dc:	00d56533          	or	a0,a0,a3
 6e0:	0016d693          	srli	a3,a3,0x1
 6e4:	00165613          	srli	a2,a2,0x1
 6e8:	fe0696e3          	bnez	a3,6d4 <__hidden___udivsi3+0x2c>
 6ec:	00008067          	ret

000006f0 <__umodsi3>:
 6f0:	00008293          	mv	t0,ra
 6f4:	fb5ff0ef          	jal	6a8 <__hidden___udivsi3>
 6f8:	00058513          	mv	a0,a1
 6fc:	00028067          	jr	t0
 700:	40a00533          	neg	a0,a0
 704:	00b04863          	bgtz	a1,714 <__umodsi3+0x24>
 708:	40b005b3          	neg	a1,a1
 70c:	f9dff06f          	j	6a8 <__hidden___udivsi3>
 710:	40b005b3          	neg	a1,a1
 714:	00008293          	mv	t0,ra
 718:	f91ff0ef          	jal	6a8 <__hidden___udivsi3>
 71c:	40a00533          	neg	a0,a0
 720:	00028067          	jr	t0

00000724 <__modsi3>:
 724:	00008293          	mv	t0,ra
 728:	0005ca63          	bltz	a1,73c <__modsi3+0x18>
 72c:	00054c63          	bltz	a0,744 <__modsi3+0x20>
 730:	f79ff0ef          	jal	6a8 <__hidden___udivsi3>
 734:	00058513          	mv	a0,a1
 738:	00028067          	jr	t0
 73c:	40b005b3          	neg	a1,a1
 740:	fe0558e3          	bgez	a0,730 <__modsi3+0xc>
 744:	40a00533          	neg	a0,a0
 748:	f61ff0ef          	jal	6a8 <__hidden___udivsi3>
 74c:	40b00533          	neg	a0,a1
 750:	00028067          	jr	t0

00000754 <_ZN6tflite29MultiplyByQuantizedMultiplierElli>:
 754:	fff64793          	not	a5,a2
 758:	41f7d793          	srai	a5,a5,0x1f
 75c:	ff010113          	addi	sp,sp,-16
 760:	00f677b3          	and	a5,a2,a5
 764:	00f51533          	sll	a0,a0,a5
 768:	00812423          	sw	s0,8(sp)
 76c:	800007b7          	lui	a5,0x80000
 770:	00060413          	mv	s0,a2
 774:	40b50833          	sub	a6,a0,a1
 778:	00058613          	mv	a2,a1
 77c:	fff40713          	addi	a4,s0,-1
 780:	00f507b3          	add	a5,a0,a5
 784:	0017b793          	seqz	a5,a5
 788:	00183813          	seqz	a6,a6
 78c:	41f75713          	srai	a4,a4,0x1f
 790:	40800433          	neg	s0,s0
 794:	41f55593          	srai	a1,a0,0x1f
 798:	41f65693          	srai	a3,a2,0x1f
 79c:	00912223          	sw	s1,4(sp)
 7a0:	00112623          	sw	ra,12(sp)
 7a4:	0107f4b3          	and	s1,a5,a6
 7a8:	00e47433          	and	s0,s0,a4
 7ac:	e69ff0ef          	jal	614 <__muldi3>
 7b0:	0805c263          	bltz	a1,834 <_ZN6tflite29MultiplyByQuantizedMultiplierElli+0xe0>
 7b4:	fe040713          	addi	a4,s0,-32
 7b8:	400006b7          	lui	a3,0x40000
 7bc:	00000793          	li	a5,0
 7c0:	08074463          	bltz	a4,848 <_ZN6tflite29MultiplyByQuantizedMultiplierElli+0xf4>
 7c4:	00000713          	li	a4,0
 7c8:	fff70713          	addi	a4,a4,-1
 7cc:	40175613          	srai	a2,a4,0x1
 7d0:	08049663          	bnez	s1,85c <_ZN6tflite29MultiplyByQuantizedMultiplierElli+0x108>
 7d4:	00a686b3          	add	a3,a3,a0
 7d8:	00a6b533          	sltu	a0,a3,a0
 7dc:	00b787b3          	add	a5,a5,a1
 7e0:	00f50533          	add	a0,a0,a5
 7e4:	41f55793          	srai	a5,a0,0x1f
 7e8:	00179793          	slli	a5,a5,0x1
 7ec:	0017d793          	srli	a5,a5,0x1
 7f0:	00d786b3          	add	a3,a5,a3
 7f4:	00f6b7b3          	sltu	a5,a3,a5
 7f8:	00a787b3          	add	a5,a5,a0
 7fc:	01f6d693          	srli	a3,a3,0x1f
 800:	00179793          	slli	a5,a5,0x1
 804:	00d787b3          	add	a5,a5,a3
 808:	00c12083          	lw	ra,12(sp)
 80c:	01f7d693          	srli	a3,a5,0x1f
 810:	00e7f533          	and	a0,a5,a4
 814:	4087d7b3          	sra	a5,a5,s0
 818:	00812403          	lw	s0,8(sp)
 81c:	00d60633          	add	a2,a2,a3
 820:	00a62533          	slt	a0,a2,a0
 824:	00412483          	lw	s1,4(sp)
 828:	00a78533          	add	a0,a5,a0
 82c:	01010113          	addi	sp,sp,16
 830:	00008067          	ret
 834:	c00006b7          	lui	a3,0xc0000
 838:	fe040713          	addi	a4,s0,-32
 83c:	00168693          	addi	a3,a3,1 # c0000001 <__bss_end+0x9fffae81>
 840:	fff00793          	li	a5,-1
 844:	f80750e3          	bgez	a4,7c4 <_ZN6tflite29MultiplyByQuantizedMultiplierElli+0x70>
 848:	00100713          	li	a4,1
 84c:	00871733          	sll	a4,a4,s0
 850:	fff70713          	addi	a4,a4,-1
 854:	40175613          	srai	a2,a4,0x1
 858:	f6048ee3          	beqz	s1,7d4 <_ZN6tflite29MultiplyByQuantizedMultiplierElli+0x80>
 85c:	800007b7          	lui	a5,0x80000
 860:	fff78793          	addi	a5,a5,-1 # 7fffffff <__bss_end+0x5fffae7f>
 864:	00c12083          	lw	ra,12(sp)
 868:	00f77533          	and	a0,a4,a5
 86c:	4087d7b3          	sra	a5,a5,s0
 870:	00812403          	lw	s0,8(sp)
 874:	00a62533          	slt	a0,a2,a0
 878:	00412483          	lw	s1,4(sp)
 87c:	00a78533          	add	a0,a5,a0
 880:	01010113          	addi	sp,sp,16
 884:	00008067          	ret
