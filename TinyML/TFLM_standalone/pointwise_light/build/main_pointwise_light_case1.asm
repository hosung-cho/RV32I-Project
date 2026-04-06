
/home/hosung/Ho/SoCLab workspace/RV32I-Project/TinyML/TFLM_standalone/pointwise_light/build/main_pointwise_light_case1.elf:     file format elf32-littleriscv


Disassembly of section .text:

00000000 <main>:
   0:	e9010113          	addi	sp,sp,-368
   4:	00100793          	li	a5,1
   8:	0af12623          	sw	a5,172(sp)
   c:	00200793          	li	a5,2
  10:	0af12823          	sw	a5,176(sp)
  14:	00400793          	li	a5,4
  18:	0af12a23          	sw	a5,180(sp)
  1c:	01000793          	li	a5,16
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
  78:	01000693          	li	a3,16
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
  b4:	00200713          	li	a4,2
  b8:	0ce12823          	sw	a4,208(sp)
  bc:	00400713          	li	a4,4
  c0:	0ce12a23          	sw	a4,212(sp)
  c4:	01000713          	li	a4,16
  c8:	0ce12c23          	sw	a4,216(sp)
  cc:	0dc10693          	addi	a3,sp,220
  d0:	11810713          	addi	a4,sp,280
  d4:	0007a603          	lw	a2,0(a5)
  d8:	00478793          	addi	a5,a5,4
  dc:	00470713          	addi	a4,a4,4
  e0:	fec72e23          	sw	a2,-4(a4)
  e4:	fed798e3          	bne	a5,a3,d4 <main+0xd4>
  e8:	200007b7          	lui	a5,0x20000
  ec:	24078793          	addi	a5,a5,576 # 20000240 <_ZL10input_data>
  f0:	04f12e23          	sw	a5,92(sp)
  f4:	08078913          	addi	s2,a5,128
  f8:	00078413          	mv	s0,a5
  fc:	00500493          	li	s1,5
 100:	00048513          	mv	a0,s1
 104:	01500593          	li	a1,21
 108:	698000ef          	jal	7a0 <__modsi3>
 10c:	ff650793          	addi	a5,a0,-10
 110:	00f40023          	sb	a5,0(s0)
 114:	00140413          	addi	s0,s0,1
 118:	00348493          	addi	s1,s1,3
 11c:	ff2412e3          	bne	s0,s2,100 <main+0x100>
 120:	200007b7          	lui	a5,0x20000
 124:	14078793          	addi	a5,a5,320 # 20000140 <_ZL11filter_data>
 128:	00f12e23          	sw	a5,28(sp)
 12c:	10078913          	addi	s2,a5,256
 130:	00078413          	mv	s0,a5
 134:	00100493          	li	s1,1
 138:	00048513          	mv	a0,s1
 13c:	01100593          	li	a1,17
 140:	660000ef          	jal	7a0 <__modsi3>
 144:	ff850793          	addi	a5,a0,-8
 148:	00f40023          	sb	a5,0(s0)
 14c:	00140413          	addi	s0,s0,1
 150:	00548493          	addi	s1,s1,5
 154:	ff2412e3          	bne	s0,s2,138 <main+0x138>
 158:	200006b7          	lui	a3,0x20000
 15c:	20000737          	lui	a4,0x20000
 160:	200007b7          	lui	a5,0x20000
 164:	08068693          	addi	a3,a3,128 # 20000080 <_ZL9bias_data>
 168:	04070713          	addi	a4,a4,64 # 20000040 <_ZL17output_multiplier>
 16c:	00078793          	mv	a5,a5
 170:	02d12e23          	sw	a3,60(sp)
 174:	04e12223          	sw	a4,68(sp)
 178:	04f12023          	sw	a5,64(sp)
 17c:	00068993          	mv	s3,a3
 180:	00070913          	mv	s2,a4
 184:	00078493          	mv	s1,a5
 188:	00000413          	li	s0,0
 18c:	30000b37          	lui	s6,0x30000
 190:	ffe00a93          	li	s5,-2
 194:	01000a13          	li	s4,16
 198:	00040513          	mv	a0,s0
 19c:	00700593          	li	a1,7
 1a0:	600000ef          	jal	7a0 <__modsi3>
 1a4:	ffd50793          	addi	a5,a0,-3
 1a8:	01692023          	sw	s6,0(s2)
 1ac:	0154a023          	sw	s5,0(s1)
 1b0:	00f9a023          	sw	a5,0(s3)
 1b4:	00140413          	addi	s0,s0,1
 1b8:	00498993          	addi	s3,s3,4
 1bc:	00490913          	addi	s2,s2,4
 1c0:	00448493          	addi	s1,s1,4
 1c4:	fd441ae3          	bne	s0,s4,198 <main+0x198>
 1c8:	11812783          	lw	a5,280(sp)
 1cc:	0e012903          	lw	s2,224(sp)
 1d0:	0127d463          	bge	a5,s2,1d8 <main+0x1d8>
 1d4:	00078913          	mv	s2,a5
 1d8:	200007b7          	lui	a5,0x20000
 1dc:	0c078593          	addi	a1,a5,192 # 200000c0 <_ZL11output_data>
 1e0:	3b205063          	blez	s2,580 <main+0x580>
 1e4:	0fc12783          	lw	a5,252(sp)
 1e8:	12412d83          	lw	s11,292(sp)
 1ec:	0ec12b03          	lw	s6,236(sp)
 1f0:	02f12423          	sw	a5,40(sp)
 1f4:	46fdc863          	blt	s11,a5,664 <main+0x664>
 1f8:	0e412783          	lw	a5,228(sp)
 1fc:	10812a03          	lw	s4,264(sp)
 200:	000b0513          	mv	a0,s6
 204:	00f12a23          	sw	a5,20(sp)
 208:	10012783          	lw	a5,256(sp)
 20c:	000a0593          	mv	a1,s4
 210:	0e812b83          	lw	s7,232(sp)
 214:	02f12a23          	sw	a5,52(sp)
 218:	504000ef          	jal	71c <__divsi3>
 21c:	00050593          	mv	a1,a0
 220:	02812503          	lw	a0,40(sp)
 224:	10412403          	lw	s0,260(sp)
 228:	000b0c13          	mv	s8,s6
 22c:	4f0000ef          	jal	71c <__divsi3>
 230:	12012c83          	lw	s9,288(sp)
 234:	11c12a83          	lw	s5,284(sp)
 238:	04a12c23          	sw	a0,88(sp)
 23c:	000c8593          	mv	a1,s9
 240:	000a8513          	mv	a0,s5
 244:	428000ef          	jal	66c <__mulsi3>
 248:	000d8593          	mv	a1,s11
 24c:	420000ef          	jal	66c <__mulsi3>
 250:	06a12223          	sw	a0,100(sp)
 254:	01412503          	lw	a0,20(sp)
 258:	000b8593          	mv	a1,s7
 25c:	00090993          	mv	s3,s2
 260:	40c000ef          	jal	66c <__mulsi3>
 264:	000b0593          	mv	a1,s6
 268:	404000ef          	jal	66c <__mulsi3>
 26c:	000d8593          	mv	a1,s11
 270:	06a12423          	sw	a0,104(sp)
 274:	000c8513          	mv	a0,s9
 278:	3f4000ef          	jal	66c <__mulsi3>
 27c:	000b0593          	mv	a1,s6
 280:	06a12023          	sw	a0,96(sp)
 284:	000b8513          	mv	a0,s7
 288:	3e4000ef          	jal	66c <__mulsi3>
 28c:	00a12623          	sw	a0,12(sp)
 290:	03412503          	lw	a0,52(sp)
 294:	00040593          	mv	a1,s0
 298:	000d8b13          	mv	s6,s11
 29c:	3d0000ef          	jal	66c <__mulsi3>
 2a0:	000a0593          	mv	a1,s4
 2a4:	3c8000ef          	jal	66c <__mulsi3>
 2a8:	04a12423          	sw	a0,72(sp)
 2ac:	000a0593          	mv	a1,s4
 2b0:	00040513          	mv	a0,s0
 2b4:	3b8000ef          	jal	66c <__mulsi3>
 2b8:	200007b7          	lui	a5,0x20000
 2bc:	02a12223          	sw	a0,36(sp)
 2c0:	000c8d93          	mv	s11,s9
 2c4:	00000d13          	li	s10,0
 2c8:	000b8c93          	mv	s9,s7
 2cc:	0c078513          	addi	a0,a5,192 # 200000c0 <_ZL11output_data>
 2d0:	00040693          	mv	a3,s0
 2d4:	000a8b93          	mv	s7,s5
 2d8:	00000493          	li	s1,0
 2dc:	00000913          	li	s2,0
 2e0:	29705263          	blez	s7,564 <main+0x564>
 2e4:	29b05063          	blez	s11,564 <main+0x564>
 2e8:	000d0413          	mv	s0,s10
 2ec:	00090a93          	mv	s5,s2
 2f0:	00048e93          	mv	t4,s1
 2f4:	00050793          	mv	a5,a0
 2f8:	000d0493          	mv	s1,s10
 2fc:	000d8513          	mv	a0,s11
 300:	000c8d13          	mv	s10,s9
 304:	00000813          	li	a6,0
 308:	00090c93          	mv	s9,s2
 30c:	01b68933          	add	s2,a3,s11
 310:	000c0d93          	mv	s11,s8
 314:	000b0c13          	mv	s8,s6
 318:	02812703          	lw	a4,40(sp)
 31c:	20e05663          	blez	a4,528 <main+0x528>
 320:	03412703          	lw	a4,52(sp)
 324:	07712823          	sw	s7,112(sp)
 328:	05012623          	sw	a6,76(sp)
 32c:	01070733          	add	a4,a4,a6
 330:	02e12023          	sw	a4,32(sp)
 334:	000d8b93          	mv	s7,s11
 338:	000c0713          	mv	a4,s8
 33c:	09912223          	sw	s9,132(sp)
 340:	08912423          	sw	s1,136(sp)
 344:	00000893          	li	a7,0
 348:	07312623          	sw	s3,108(sp)
 34c:	000d0c13          	mv	s8,s10
 350:	06a12a23          	sw	a0,116(sp)
 354:	07d12c23          	sw	t4,120(sp)
 358:	07512e23          	sw	s5,124(sp)
 35c:	08812023          	sw	s0,128(sp)
 360:	00068c93          	mv	s9,a3
 364:	000a8b13          	mv	s6,s5
 368:	00040493          	mv	s1,s0
 36c:	00078813          	mv	a6,a5
 370:	00090d93          	mv	s11,s2
 374:	05c12783          	lw	a5,92(sp)
 378:	01680933          	add	s2,a6,s6
 37c:	08912823          	sw	s1,144(sp)
 380:	00f487b3          	add	a5,s1,a5
 384:	00000413          	li	s0,0
 388:	04f12a23          	sw	a5,84(sp)
 38c:	03112c23          	sw	a7,56(sp)
 390:	01712423          	sw	s7,8(sp)
 394:	08e12623          	sw	a4,140(sp)
 398:	00d12c23          	sw	a3,24(sp)
 39c:	00000493          	li	s1,0
 3a0:	09612a23          	sw	s6,148(sp)
 3a4:	09012c23          	sw	a6,152(sp)
 3a8:	09b12e23          	sw	s11,156(sp)
 3ac:	05212823          	sw	s2,80(sp)
 3b0:	03412783          	lw	a5,52(sp)
 3b4:	24f05a63          	blez	a5,608 <main+0x608>
 3b8:	05812583          	lw	a1,88(sp)
 3bc:	00048513          	mv	a0,s1
 3c0:	000c8a93          	mv	s5,s9
 3c4:	358000ef          	jal	71c <__divsi3>
 3c8:	000a0593          	mv	a1,s4
 3cc:	2a0000ef          	jal	66c <__mulsi3>
 3d0:	05412783          	lw	a5,84(sp)
 3d4:	04c12d03          	lw	s10,76(sp)
 3d8:	02812823          	sw	s0,48(sp)
 3dc:	00f50db3          	add	s11,a0,a5
 3e0:	02912623          	sw	s1,44(sp)
 3e4:	00040793          	mv	a5,s0
 3e8:	00000c93          	li	s9,0
 3ec:	000a0413          	mv	s0,s4
 3f0:	000d8a13          	mv	s4,s11
 3f4:	000c0d93          	mv	s11,s8
 3f8:	000d0c13          	mv	s8,s10
 3fc:	01812703          	lw	a4,24(sp)
 400:	04e05c63          	blez	a4,458 <main+0x458>
 404:	03812b83          	lw	s7,56(sp)
 408:	01412823          	sw	s4,16(sp)
 40c:	000d8993          	mv	s3,s11
 410:	000a0b13          	mv	s6,s4
 414:	00040d93          	mv	s11,s0
 418:	000c0a13          	mv	s4,s8
 41c:	00078413          	mv	s0,a5
 420:	00078c13          	mv	s8,a5
 424:	013bd663          	bge	s7,s3,430 <main+0x430>
 428:	01412783          	lw	a5,20(sp)
 42c:	1afa4463          	blt	s4,a5,5d4 <main+0x5d4>
 430:	00812783          	lw	a5,8(sp)
 434:	001b8b93          	addi	s7,s7,1
 438:	01b40433          	add	s0,s0,s11
 43c:	00fb0b33          	add	s6,s6,a5
 440:	ff5b92e3          	bne	s7,s5,424 <main+0x424>
 444:	000c0793          	mv	a5,s8
 448:	000a0c13          	mv	s8,s4
 44c:	01012a03          	lw	s4,16(sp)
 450:	000d8413          	mv	s0,s11
 454:	00098d93          	mv	s11,s3
 458:	00c12703          	lw	a4,12(sp)
 45c:	001c0c13          	addi	s8,s8,1
 460:	00ea0a33          	add	s4,s4,a4
 464:	02412703          	lw	a4,36(sp)
 468:	00e787b3          	add	a5,a5,a4
 46c:	02012703          	lw	a4,32(sp)
 470:	f8ec16e3          	bne	s8,a4,3fc <main+0x3fc>
 474:	00040a13          	mv	s4,s0
 478:	02c12483          	lw	s1,44(sp)
 47c:	03012403          	lw	s0,48(sp)
 480:	000c8b13          	mv	s6,s9
 484:	000d8c13          	mv	s8,s11
 488:	000a8c93          	mv	s9,s5
 48c:	03c12703          	lw	a4,60(sp)
 490:	00249793          	slli	a5,s1,0x2
 494:	04412683          	lw	a3,68(sp)
 498:	00f70733          	add	a4,a4,a5
 49c:	00072503          	lw	a0,0(a4)
 4a0:	04012703          	lw	a4,64(sp)
 4a4:	00ab0533          	add	a0,s6,a0
 4a8:	00f70733          	add	a4,a4,a5
 4ac:	00f687b3          	add	a5,a3,a5
 4b0:	00072603          	lw	a2,0(a4)
 4b4:	0007a583          	lw	a1,0(a5)
 4b8:	318000ef          	jal	7d0 <_ZN6tflite29MultiplyByQuantizedMultiplierElli>
 4bc:	05012783          	lw	a5,80(sp)
 4c0:	f8000713          	li	a4,-128
 4c4:	009787b3          	add	a5,a5,s1
 4c8:	00e55463          	bge	a0,a4,4d0 <main+0x4d0>
 4cc:	00070513          	mv	a0,a4
 4d0:	07f00713          	li	a4,127
 4d4:	00a75463          	bge	a4,a0,4dc <main+0x4dc>
 4d8:	00070513          	mv	a0,a4
 4dc:	00a78023          	sb	a0,0(a5)
 4e0:	04812783          	lw	a5,72(sp)
 4e4:	00148493          	addi	s1,s1,1
 4e8:	00f40433          	add	s0,s0,a5
 4ec:	02812783          	lw	a5,40(sp)
 4f0:	ec9790e3          	bne	a5,s1,3b0 <main+0x3b0>
 4f4:	09c12d83          	lw	s11,156(sp)
 4f8:	001c8c93          	addi	s9,s9,1
 4fc:	00812b83          	lw	s7,8(sp)
 500:	08c12703          	lw	a4,140(sp)
 504:	01812683          	lw	a3,24(sp)
 508:	09012483          	lw	s1,144(sp)
 50c:	09412b03          	lw	s6,148(sp)
 510:	09812803          	lw	a6,152(sp)
 514:	0f9d8e63          	beq	s11,s9,610 <main+0x610>
 518:	00eb0b33          	add	s6,s6,a4
 51c:	017484b3          	add	s1,s1,s7
 520:	40dc88b3          	sub	a7,s9,a3
 524:	e51ff06f          	j	374 <main+0x374>
 528:	00068713          	mv	a4,a3
 52c:	00170613          	addi	a2,a4,1
 530:	01260663          	beq	a2,s2,53c <main+0x53c>
 534:	00270713          	addi	a4,a4,2
 538:	ff271ae3          	bne	a4,s2,52c <main+0x52c>
 53c:	00180813          	addi	a6,a6,1
 540:	110b9863          	bne	s7,a6,650 <main+0x650>
 544:	000c0b13          	mv	s6,s8
 548:	000c8913          	mv	s2,s9
 54c:	000d8c13          	mv	s8,s11
 550:	000d0c93          	mv	s9,s10
 554:	00050d93          	mv	s11,a0
 558:	00048d13          	mv	s10,s1
 55c:	00078513          	mv	a0,a5
 560:	000e8493          	mv	s1,t4
 564:	06412783          	lw	a5,100(sp)
 568:	00148493          	addi	s1,s1,1
 56c:	00f90933          	add	s2,s2,a5
 570:	06812783          	lw	a5,104(sp)
 574:	00fd0d33          	add	s10,s10,a5
 578:	d69994e3          	bne	s3,s1,2e0 <main+0x2e0>
 57c:	00050593          	mv	a1,a0
 580:	2000f737          	lui	a4,0x2000f
 584:	40b70733          	sub	a4,a4,a1
 588:	08058993          	addi	s3,a1,128
 58c:	00058793          	mv	a5,a1
 590:	00078603          	lb	a2,0(a5)
 594:	00f706b3          	add	a3,a4,a5
 598:	00178793          	addi	a5,a5,1
 59c:	00c68023          	sb	a2,0(a3)
 5a0:	ff3798e3          	bne	a5,s3,590 <main+0x590>
 5a4:	00100913          	li	s2,1
 5a8:	00058413          	mv	s0,a1
 5ac:	40b90933          	sub	s2,s2,a1
 5b0:	00000493          	li	s1,0
 5b4:	00040583          	lb	a1,0(s0)
 5b8:	00890533          	add	a0,s2,s0
 5bc:	00140413          	addi	s0,s0,1
 5c0:	0ac000ef          	jal	66c <__mulsi3>
 5c4:	00a484b3          	add	s1,s1,a0
 5c8:	ff3416e3          	bne	s0,s3,5b4 <main+0x5b4>
 5cc:	00048513          	mv	a0,s1
 5d0:	0000006f          	j	5d0 <main+0x5d0>
 5d4:	e5b05ee3          	blez	s11,430 <main+0x430>
 5d8:	01c12783          	lw	a5,28(sp)
 5dc:	000b0d13          	mv	s10,s6
 5e0:	01bb04b3          	add	s1,s6,s11
 5e4:	00f40933          	add	s2,s0,a5
 5e8:	00090583          	lb	a1,0(s2)
 5ec:	000d0503          	lb	a0,0(s10)
 5f0:	001d0d13          	addi	s10,s10,1
 5f4:	00190913          	addi	s2,s2,1
 5f8:	074000ef          	jal	66c <__mulsi3>
 5fc:	00ac8cb3          	add	s9,s9,a0
 600:	ffa494e3          	bne	s1,s10,5e8 <main+0x5e8>
 604:	e2dff06f          	j	430 <main+0x430>
 608:	00000b13          	li	s6,0
 60c:	e81ff06f          	j	48c <main+0x48c>
 610:	00080793          	mv	a5,a6
 614:	04c12803          	lw	a6,76(sp)
 618:	000d8913          	mv	s2,s11
 61c:	000b8d93          	mv	s11,s7
 620:	07012b83          	lw	s7,112(sp)
 624:	00180813          	addi	a6,a6,1
 628:	000c0d13          	mv	s10,s8
 62c:	06c12983          	lw	s3,108(sp)
 630:	07412503          	lw	a0,116(sp)
 634:	07812e83          	lw	t4,120(sp)
 638:	07c12a83          	lw	s5,124(sp)
 63c:	08012403          	lw	s0,128(sp)
 640:	08412c83          	lw	s9,132(sp)
 644:	08812483          	lw	s1,136(sp)
 648:	00070c13          	mv	s8,a4
 64c:	ef0b8ce3          	beq	s7,a6,544 <main+0x544>
 650:	06012703          	lw	a4,96(sp)
 654:	00ea8ab3          	add	s5,s5,a4
 658:	00c12703          	lw	a4,12(sp)
 65c:	00e40433          	add	s0,s0,a4
 660:	cb9ff06f          	j	318 <main+0x318>
 664:	03b12423          	sw	s11,40(sp)
 668:	b91ff06f          	j	1f8 <main+0x1f8>

0000066c <__mulsi3>:
 66c:	00050613          	mv	a2,a0
 670:	00000513          	li	a0,0
 674:	0015f693          	andi	a3,a1,1
 678:	00068463          	beqz	a3,680 <__mulsi3+0x14>
 67c:	00c50533          	add	a0,a0,a2
 680:	0015d593          	srli	a1,a1,0x1
 684:	00161613          	slli	a2,a2,0x1
 688:	fe0596e3          	bnez	a1,674 <__mulsi3+0x8>
 68c:	00008067          	ret

00000690 <__muldi3>:
 690:	ff010113          	addi	sp,sp,-16
 694:	00068313          	mv	t1,a3
 698:	00112623          	sw	ra,12(sp)
 69c:	00050e13          	mv	t3,a0
 6a0:	00050693          	mv	a3,a0
 6a4:	00060893          	mv	a7,a2
 6a8:	00000713          	li	a4,0
 6ac:	00000793          	li	a5,0
 6b0:	00000813          	li	a6,0
 6b4:	0018fe93          	andi	t4,a7,1
 6b8:	00171513          	slli	a0,a4,0x1
 6bc:	000e8a63          	beqz	t4,6d0 <__muldi3+0x40>
 6c0:	01068833          	add	a6,a3,a6
 6c4:	00e787b3          	add	a5,a5,a4
 6c8:	00d83733          	sltu	a4,a6,a3
 6cc:	00f707b3          	add	a5,a4,a5
 6d0:	01f6d713          	srli	a4,a3,0x1f
 6d4:	0018d893          	srli	a7,a7,0x1
 6d8:	00e56733          	or	a4,a0,a4
 6dc:	00169693          	slli	a3,a3,0x1
 6e0:	fc089ae3          	bnez	a7,6b4 <__muldi3+0x24>
 6e4:	00058863          	beqz	a1,6f4 <__muldi3+0x64>
 6e8:	00060513          	mv	a0,a2
 6ec:	f81ff0ef          	jal	66c <__mulsi3>
 6f0:	00a787b3          	add	a5,a5,a0
 6f4:	00030a63          	beqz	t1,708 <__muldi3+0x78>
 6f8:	000e0513          	mv	a0,t3
 6fc:	00030593          	mv	a1,t1
 700:	f6dff0ef          	jal	66c <__mulsi3>
 704:	00f507b3          	add	a5,a0,a5
 708:	00c12083          	lw	ra,12(sp)
 70c:	00080513          	mv	a0,a6
 710:	00078593          	mv	a1,a5
 714:	01010113          	addi	sp,sp,16
 718:	00008067          	ret

0000071c <__divsi3>:
 71c:	06054063          	bltz	a0,77c <__umodsi3+0x10>
 720:	0605c663          	bltz	a1,78c <__umodsi3+0x20>

00000724 <__hidden___udivsi3>:
 724:	00058613          	mv	a2,a1
 728:	00050593          	mv	a1,a0
 72c:	fff00513          	li	a0,-1
 730:	02060c63          	beqz	a2,768 <__hidden___udivsi3+0x44>
 734:	00100693          	li	a3,1
 738:	00b67a63          	bgeu	a2,a1,74c <__hidden___udivsi3+0x28>
 73c:	00c05863          	blez	a2,74c <__hidden___udivsi3+0x28>
 740:	00161613          	slli	a2,a2,0x1
 744:	00169693          	slli	a3,a3,0x1
 748:	feb66ae3          	bltu	a2,a1,73c <__hidden___udivsi3+0x18>
 74c:	00000513          	li	a0,0
 750:	00c5e663          	bltu	a1,a2,75c <__hidden___udivsi3+0x38>
 754:	40c585b3          	sub	a1,a1,a2
 758:	00d56533          	or	a0,a0,a3
 75c:	0016d693          	srli	a3,a3,0x1
 760:	00165613          	srli	a2,a2,0x1
 764:	fe0696e3          	bnez	a3,750 <__hidden___udivsi3+0x2c>
 768:	00008067          	ret

0000076c <__umodsi3>:
 76c:	00008293          	mv	t0,ra
 770:	fb5ff0ef          	jal	724 <__hidden___udivsi3>
 774:	00058513          	mv	a0,a1
 778:	00028067          	jr	t0
 77c:	40a00533          	neg	a0,a0
 780:	00b04863          	bgtz	a1,790 <__umodsi3+0x24>
 784:	40b005b3          	neg	a1,a1
 788:	f9dff06f          	j	724 <__hidden___udivsi3>
 78c:	40b005b3          	neg	a1,a1
 790:	00008293          	mv	t0,ra
 794:	f91ff0ef          	jal	724 <__hidden___udivsi3>
 798:	40a00533          	neg	a0,a0
 79c:	00028067          	jr	t0

000007a0 <__modsi3>:
 7a0:	00008293          	mv	t0,ra
 7a4:	0005ca63          	bltz	a1,7b8 <__modsi3+0x18>
 7a8:	00054c63          	bltz	a0,7c0 <__modsi3+0x20>
 7ac:	f79ff0ef          	jal	724 <__hidden___udivsi3>
 7b0:	00058513          	mv	a0,a1
 7b4:	00028067          	jr	t0
 7b8:	40b005b3          	neg	a1,a1
 7bc:	fe0558e3          	bgez	a0,7ac <__modsi3+0xc>
 7c0:	40a00533          	neg	a0,a0
 7c4:	f61ff0ef          	jal	724 <__hidden___udivsi3>
 7c8:	40b00533          	neg	a0,a1
 7cc:	00028067          	jr	t0

000007d0 <_ZN6tflite29MultiplyByQuantizedMultiplierElli>:
 7d0:	fff64793          	not	a5,a2
 7d4:	41f7d793          	srai	a5,a5,0x1f
 7d8:	ff010113          	addi	sp,sp,-16
 7dc:	00f677b3          	and	a5,a2,a5
 7e0:	00f51533          	sll	a0,a0,a5
 7e4:	00812423          	sw	s0,8(sp)
 7e8:	800007b7          	lui	a5,0x80000
 7ec:	00060413          	mv	s0,a2
 7f0:	40b50833          	sub	a6,a0,a1
 7f4:	00058613          	mv	a2,a1
 7f8:	fff40713          	addi	a4,s0,-1
 7fc:	00f507b3          	add	a5,a0,a5
 800:	0017b793          	seqz	a5,a5
 804:	00183813          	seqz	a6,a6
 808:	41f75713          	srai	a4,a4,0x1f
 80c:	40800433          	neg	s0,s0
 810:	41f55593          	srai	a1,a0,0x1f
 814:	41f65693          	srai	a3,a2,0x1f
 818:	00912223          	sw	s1,4(sp)
 81c:	00112623          	sw	ra,12(sp)
 820:	0107f4b3          	and	s1,a5,a6
 824:	00e47433          	and	s0,s0,a4
 828:	e69ff0ef          	jal	690 <__muldi3>
 82c:	0805c263          	bltz	a1,8b0 <_ZN6tflite29MultiplyByQuantizedMultiplierElli+0xe0>
 830:	fe040713          	addi	a4,s0,-32
 834:	400006b7          	lui	a3,0x40000
 838:	00000793          	li	a5,0
 83c:	08074463          	bltz	a4,8c4 <_ZN6tflite29MultiplyByQuantizedMultiplierElli+0xf4>
 840:	00000713          	li	a4,0
 844:	fff70713          	addi	a4,a4,-1 # 2000efff <__bss_end+0xed3f>
 848:	40175613          	srai	a2,a4,0x1
 84c:	08049663          	bnez	s1,8d8 <_ZN6tflite29MultiplyByQuantizedMultiplierElli+0x108>
 850:	00a686b3          	add	a3,a3,a0
 854:	00a6b533          	sltu	a0,a3,a0
 858:	00b787b3          	add	a5,a5,a1
 85c:	00f50533          	add	a0,a0,a5
 860:	41f55793          	srai	a5,a0,0x1f
 864:	00179793          	slli	a5,a5,0x1
 868:	0017d793          	srli	a5,a5,0x1
 86c:	00d786b3          	add	a3,a5,a3
 870:	00f6b7b3          	sltu	a5,a3,a5
 874:	00a787b3          	add	a5,a5,a0
 878:	01f6d693          	srli	a3,a3,0x1f
 87c:	00179793          	slli	a5,a5,0x1
 880:	00d787b3          	add	a5,a5,a3
 884:	00c12083          	lw	ra,12(sp)
 888:	01f7d693          	srli	a3,a5,0x1f
 88c:	00e7f533          	and	a0,a5,a4
 890:	4087d7b3          	sra	a5,a5,s0
 894:	00812403          	lw	s0,8(sp)
 898:	00d60633          	add	a2,a2,a3
 89c:	00a62533          	slt	a0,a2,a0
 8a0:	00412483          	lw	s1,4(sp)
 8a4:	00a78533          	add	a0,a5,a0
 8a8:	01010113          	addi	sp,sp,16
 8ac:	00008067          	ret
 8b0:	c00006b7          	lui	a3,0xc0000
 8b4:	fe040713          	addi	a4,s0,-32
 8b8:	00168693          	addi	a3,a3,1 # c0000001 <__bss_end+0x9ffffd41>
 8bc:	fff00793          	li	a5,-1
 8c0:	f80750e3          	bgez	a4,840 <_ZN6tflite29MultiplyByQuantizedMultiplierElli+0x70>
 8c4:	00100713          	li	a4,1
 8c8:	00871733          	sll	a4,a4,s0
 8cc:	fff70713          	addi	a4,a4,-1
 8d0:	40175613          	srai	a2,a4,0x1
 8d4:	f6048ee3          	beqz	s1,850 <_ZN6tflite29MultiplyByQuantizedMultiplierElli+0x80>
 8d8:	800007b7          	lui	a5,0x80000
 8dc:	fff78793          	addi	a5,a5,-1 # 7fffffff <__bss_end+0x5ffffd3f>
 8e0:	00c12083          	lw	ra,12(sp)
 8e4:	00f77533          	and	a0,a4,a5
 8e8:	4087d7b3          	sra	a5,a5,s0
 8ec:	00812403          	lw	s0,8(sp)
 8f0:	00a62533          	slt	a0,a2,a0
 8f4:	00412483          	lw	s1,4(sp)
 8f8:	00a78533          	add	a0,a5,a0
 8fc:	01010113          	addi	sp,sp,16
 900:	00008067          	ret
