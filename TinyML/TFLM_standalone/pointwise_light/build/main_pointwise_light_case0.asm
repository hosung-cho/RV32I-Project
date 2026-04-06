
/home/hosung/Ho/SoCLab workspace/RV32I-Project/TinyML/TFLM_standalone/pointwise_light/build/main_pointwise_light_case0.elf:     file format elf32-littleriscv


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
  f0:	01010737          	lui	a4,0x1010
  f4:	04f12e23          	sw	a5,92(sp)
  f8:	08078693          	addi	a3,a5,128
  fc:	10170713          	addi	a4,a4,257 # 1010101 <_ZN6tflite29MultiplyByQuantizedMultiplierElli+0x100f969>
 100:	00e7a023          	sw	a4,0(a5)
 104:	00478793          	addi	a5,a5,4
 108:	fed79ce3          	bne	a5,a3,100 <main+0x100>
 10c:	200007b7          	lui	a5,0x20000
 110:	14078793          	addi	a5,a5,320 # 20000140 <_ZL11filter_data>
 114:	02020737          	lui	a4,0x2020
 118:	00f12e23          	sw	a5,28(sp)
 11c:	10078693          	addi	a3,a5,256
 120:	20270713          	addi	a4,a4,514 # 2020202 <_ZN6tflite29MultiplyByQuantizedMultiplierElli+0x201fa6a>
 124:	00e7a023          	sw	a4,0(a5)
 128:	00478793          	addi	a5,a5,4
 12c:	fed79ce3          	bne	a5,a3,124 <main+0x124>
 130:	20000737          	lui	a4,0x20000
 134:	200007b7          	lui	a5,0x20000
 138:	04070713          	addi	a4,a4,64 # 20000040 <_ZL17output_multiplier>
 13c:	00078793          	mv	a5,a5
 140:	200006b7          	lui	a3,0x20000
 144:	08068693          	addi	a3,a3,128 # 20000080 <_ZL9bias_data>
 148:	04e12223          	sw	a4,68(sp)
 14c:	04f12023          	sw	a5,64(sp)
 150:	02d12e23          	sw	a3,60(sp)
 154:	00068793          	mv	a5,a3
 158:	04068513          	addi	a0,a3,64
 15c:	04012703          	lw	a4,64(sp)
 160:	04412683          	lw	a3,68(sp)
 164:	400005b7          	lui	a1,0x40000
 168:	fff00613          	li	a2,-1
 16c:	0007a023          	sw	zero,0(a5) # 20000000 <_ZL12output_shift>
 170:	00b6a023          	sw	a1,0(a3)
 174:	00c72023          	sw	a2,0(a4)
 178:	00478793          	addi	a5,a5,4
 17c:	00468693          	addi	a3,a3,4
 180:	00470713          	addi	a4,a4,4
 184:	fea794e3          	bne	a5,a0,16c <main+0x16c>
 188:	11812783          	lw	a5,280(sp)
 18c:	0e012903          	lw	s2,224(sp)
 190:	0127d463          	bge	a5,s2,198 <main+0x198>
 194:	00078913          	mv	s2,a5
 198:	200007b7          	lui	a5,0x20000
 19c:	0c078593          	addi	a1,a5,192 # 200000c0 <_ZL11output_data>
 1a0:	3b205463          	blez	s2,548 <main+0x548>
 1a4:	0fc12783          	lw	a5,252(sp)
 1a8:	12412d83          	lw	s11,292(sp)
 1ac:	0ec12b03          	lw	s6,236(sp)
 1b0:	02f12423          	sw	a5,40(sp)
 1b4:	46fdcc63          	blt	s11,a5,62c <main+0x62c>
 1b8:	0e412783          	lw	a5,228(sp)
 1bc:	10812a03          	lw	s4,264(sp)
 1c0:	000b0513          	mv	a0,s6
 1c4:	00f12a23          	sw	a5,20(sp)
 1c8:	10012783          	lw	a5,256(sp)
 1cc:	000a0593          	mv	a1,s4
 1d0:	0e812b83          	lw	s7,232(sp)
 1d4:	02f12a23          	sw	a5,52(sp)
 1d8:	50c000ef          	jal	6e4 <__divsi3>
 1dc:	00050593          	mv	a1,a0
 1e0:	02812503          	lw	a0,40(sp)
 1e4:	10412403          	lw	s0,260(sp)
 1e8:	000b0c13          	mv	s8,s6
 1ec:	4f8000ef          	jal	6e4 <__divsi3>
 1f0:	12012c83          	lw	s9,288(sp)
 1f4:	11c12a83          	lw	s5,284(sp)
 1f8:	04a12c23          	sw	a0,88(sp)
 1fc:	000c8593          	mv	a1,s9
 200:	000a8513          	mv	a0,s5
 204:	430000ef          	jal	634 <__mulsi3>
 208:	000d8593          	mv	a1,s11
 20c:	428000ef          	jal	634 <__mulsi3>
 210:	06a12223          	sw	a0,100(sp)
 214:	01412503          	lw	a0,20(sp)
 218:	000b8593          	mv	a1,s7
 21c:	00090993          	mv	s3,s2
 220:	414000ef          	jal	634 <__mulsi3>
 224:	000b0593          	mv	a1,s6
 228:	40c000ef          	jal	634 <__mulsi3>
 22c:	000d8593          	mv	a1,s11
 230:	06a12423          	sw	a0,104(sp)
 234:	000c8513          	mv	a0,s9
 238:	3fc000ef          	jal	634 <__mulsi3>
 23c:	000b0593          	mv	a1,s6
 240:	06a12023          	sw	a0,96(sp)
 244:	000b8513          	mv	a0,s7
 248:	3ec000ef          	jal	634 <__mulsi3>
 24c:	00a12623          	sw	a0,12(sp)
 250:	03412503          	lw	a0,52(sp)
 254:	00040593          	mv	a1,s0
 258:	000d8b13          	mv	s6,s11
 25c:	3d8000ef          	jal	634 <__mulsi3>
 260:	000a0593          	mv	a1,s4
 264:	3d0000ef          	jal	634 <__mulsi3>
 268:	04a12423          	sw	a0,72(sp)
 26c:	000a0593          	mv	a1,s4
 270:	00040513          	mv	a0,s0
 274:	3c0000ef          	jal	634 <__mulsi3>
 278:	200007b7          	lui	a5,0x20000
 27c:	02a12223          	sw	a0,36(sp)
 280:	000c8d93          	mv	s11,s9
 284:	00000d13          	li	s10,0
 288:	000b8c93          	mv	s9,s7
 28c:	0c078513          	addi	a0,a5,192 # 200000c0 <_ZL11output_data>
 290:	00040693          	mv	a3,s0
 294:	000a8b93          	mv	s7,s5
 298:	00000493          	li	s1,0
 29c:	00000913          	li	s2,0
 2a0:	29705663          	blez	s7,52c <main+0x52c>
 2a4:	29b05463          	blez	s11,52c <main+0x52c>
 2a8:	000d0413          	mv	s0,s10
 2ac:	00090a93          	mv	s5,s2
 2b0:	00048e93          	mv	t4,s1
 2b4:	00050793          	mv	a5,a0
 2b8:	000d0493          	mv	s1,s10
 2bc:	000d8513          	mv	a0,s11
 2c0:	000c8d13          	mv	s10,s9
 2c4:	00000813          	li	a6,0
 2c8:	00090c93          	mv	s9,s2
 2cc:	01b68933          	add	s2,a3,s11
 2d0:	000c0d93          	mv	s11,s8
 2d4:	000b0c13          	mv	s8,s6
 2d8:	02812703          	lw	a4,40(sp)
 2dc:	20e05a63          	blez	a4,4f0 <main+0x4f0>
 2e0:	03412703          	lw	a4,52(sp)
 2e4:	07712823          	sw	s7,112(sp)
 2e8:	05012623          	sw	a6,76(sp)
 2ec:	01070733          	add	a4,a4,a6
 2f0:	02e12023          	sw	a4,32(sp)
 2f4:	000d8b93          	mv	s7,s11
 2f8:	000c0713          	mv	a4,s8
 2fc:	09912223          	sw	s9,132(sp)
 300:	08912423          	sw	s1,136(sp)
 304:	00000893          	li	a7,0
 308:	07312623          	sw	s3,108(sp)
 30c:	000d0c13          	mv	s8,s10
 310:	06a12a23          	sw	a0,116(sp)
 314:	07d12c23          	sw	t4,120(sp)
 318:	06812e23          	sw	s0,124(sp)
 31c:	09512023          	sw	s5,128(sp)
 320:	00068c93          	mv	s9,a3
 324:	00040b13          	mv	s6,s0
 328:	000a8493          	mv	s1,s5
 32c:	00078813          	mv	a6,a5
 330:	00090d93          	mv	s11,s2
 334:	05c12783          	lw	a5,92(sp)
 338:	00980933          	add	s2,a6,s1
 33c:	08912823          	sw	s1,144(sp)
 340:	00fb07b3          	add	a5,s6,a5
 344:	00000413          	li	s0,0
 348:	04f12a23          	sw	a5,84(sp)
 34c:	01712423          	sw	s7,8(sp)
 350:	08e12623          	sw	a4,140(sp)
 354:	00d12c23          	sw	a3,24(sp)
 358:	00000493          	li	s1,0
 35c:	09612a23          	sw	s6,148(sp)
 360:	03112c23          	sw	a7,56(sp)
 364:	09012c23          	sw	a6,152(sp)
 368:	09b12e23          	sw	s11,156(sp)
 36c:	05212823          	sw	s2,80(sp)
 370:	03412783          	lw	a5,52(sp)
 374:	24f05e63          	blez	a5,5d0 <main+0x5d0>
 378:	05812583          	lw	a1,88(sp)
 37c:	00048513          	mv	a0,s1
 380:	364000ef          	jal	6e4 <__divsi3>
 384:	000a0593          	mv	a1,s4
 388:	2ac000ef          	jal	634 <__mulsi3>
 38c:	05412783          	lw	a5,84(sp)
 390:	04c12d03          	lw	s10,76(sp)
 394:	02912623          	sw	s1,44(sp)
 398:	00f50db3          	add	s11,a0,a5
 39c:	02812823          	sw	s0,48(sp)
 3a0:	00040793          	mv	a5,s0
 3a4:	000c8493          	mv	s1,s9
 3a8:	000a0413          	mv	s0,s4
 3ac:	00000c93          	li	s9,0
 3b0:	000d8a13          	mv	s4,s11
 3b4:	000c0d93          	mv	s11,s8
 3b8:	000d0c13          	mv	s8,s10
 3bc:	01812703          	lw	a4,24(sp)
 3c0:	06e05063          	blez	a4,420 <main+0x420>
 3c4:	03812b83          	lw	s7,56(sp)
 3c8:	01412823          	sw	s4,16(sp)
 3cc:	000d8993          	mv	s3,s11
 3d0:	000a0b13          	mv	s6,s4
 3d4:	00040d93          	mv	s11,s0
 3d8:	000c0a13          	mv	s4,s8
 3dc:	00078413          	mv	s0,a5
 3e0:	00078c13          	mv	s8,a5
 3e4:	00048a93          	mv	s5,s1
 3e8:	013bd663          	bge	s7,s3,3f4 <main+0x3f4>
 3ec:	01412783          	lw	a5,20(sp)
 3f0:	1afa4663          	blt	s4,a5,59c <main+0x59c>
 3f4:	00812783          	lw	a5,8(sp)
 3f8:	001b8b93          	addi	s7,s7,1
 3fc:	01b40433          	add	s0,s0,s11
 400:	00fb0b33          	add	s6,s6,a5
 404:	ff5b92e3          	bne	s7,s5,3e8 <main+0x3e8>
 408:	000c0793          	mv	a5,s8
 40c:	000a0c13          	mv	s8,s4
 410:	01012a03          	lw	s4,16(sp)
 414:	000d8413          	mv	s0,s11
 418:	000a8493          	mv	s1,s5
 41c:	00098d93          	mv	s11,s3
 420:	00c12703          	lw	a4,12(sp)
 424:	001c0c13          	addi	s8,s8,1
 428:	00ea0a33          	add	s4,s4,a4
 42c:	02412703          	lw	a4,36(sp)
 430:	00e787b3          	add	a5,a5,a4
 434:	02012703          	lw	a4,32(sp)
 438:	f8ec12e3          	bne	s8,a4,3bc <main+0x3bc>
 43c:	00040a13          	mv	s4,s0
 440:	000c8b13          	mv	s6,s9
 444:	03012403          	lw	s0,48(sp)
 448:	00048c93          	mv	s9,s1
 44c:	02c12483          	lw	s1,44(sp)
 450:	000d8c13          	mv	s8,s11
 454:	03c12703          	lw	a4,60(sp)
 458:	00249793          	slli	a5,s1,0x2
 45c:	04412683          	lw	a3,68(sp)
 460:	00f70733          	add	a4,a4,a5
 464:	00072503          	lw	a0,0(a4)
 468:	04012703          	lw	a4,64(sp)
 46c:	00ab0533          	add	a0,s6,a0
 470:	00f70733          	add	a4,a4,a5
 474:	00f687b3          	add	a5,a3,a5
 478:	00072603          	lw	a2,0(a4)
 47c:	0007a583          	lw	a1,0(a5)
 480:	318000ef          	jal	798 <_ZN6tflite29MultiplyByQuantizedMultiplierElli>
 484:	05012783          	lw	a5,80(sp)
 488:	f8000713          	li	a4,-128
 48c:	009787b3          	add	a5,a5,s1
 490:	00e55463          	bge	a0,a4,498 <main+0x498>
 494:	00070513          	mv	a0,a4
 498:	07f00713          	li	a4,127
 49c:	00a75463          	bge	a4,a0,4a4 <main+0x4a4>
 4a0:	00070513          	mv	a0,a4
 4a4:	00a78023          	sb	a0,0(a5)
 4a8:	04812783          	lw	a5,72(sp)
 4ac:	00148493          	addi	s1,s1,1
 4b0:	00f40433          	add	s0,s0,a5
 4b4:	02812783          	lw	a5,40(sp)
 4b8:	ea979ce3          	bne	a5,s1,370 <main+0x370>
 4bc:	09c12d83          	lw	s11,156(sp)
 4c0:	001c8c93          	addi	s9,s9,1
 4c4:	00812b83          	lw	s7,8(sp)
 4c8:	08c12703          	lw	a4,140(sp)
 4cc:	01812683          	lw	a3,24(sp)
 4d0:	09012483          	lw	s1,144(sp)
 4d4:	09412b03          	lw	s6,148(sp)
 4d8:	09812803          	lw	a6,152(sp)
 4dc:	0f9d8e63          	beq	s11,s9,5d8 <main+0x5d8>
 4e0:	00e484b3          	add	s1,s1,a4
 4e4:	017b0b33          	add	s6,s6,s7
 4e8:	40dc88b3          	sub	a7,s9,a3
 4ec:	e49ff06f          	j	334 <main+0x334>
 4f0:	00068713          	mv	a4,a3
 4f4:	00170613          	addi	a2,a4,1
 4f8:	01260663          	beq	a2,s2,504 <main+0x504>
 4fc:	00270713          	addi	a4,a4,2
 500:	ff271ae3          	bne	a4,s2,4f4 <main+0x4f4>
 504:	00180813          	addi	a6,a6,1
 508:	110b9863          	bne	s7,a6,618 <main+0x618>
 50c:	000c0b13          	mv	s6,s8
 510:	000c8913          	mv	s2,s9
 514:	000d8c13          	mv	s8,s11
 518:	000d0c93          	mv	s9,s10
 51c:	00050d93          	mv	s11,a0
 520:	00048d13          	mv	s10,s1
 524:	00078513          	mv	a0,a5
 528:	000e8493          	mv	s1,t4
 52c:	06412783          	lw	a5,100(sp)
 530:	00148493          	addi	s1,s1,1
 534:	00f90933          	add	s2,s2,a5
 538:	06812783          	lw	a5,104(sp)
 53c:	00fd0d33          	add	s10,s10,a5
 540:	d69990e3          	bne	s3,s1,2a0 <main+0x2a0>
 544:	00050593          	mv	a1,a0
 548:	2000f737          	lui	a4,0x2000f
 54c:	40b70733          	sub	a4,a4,a1
 550:	08058993          	addi	s3,a1,128 # 40000080 <__bss_end+0x1ffffdc0>
 554:	00058793          	mv	a5,a1
 558:	00078603          	lb	a2,0(a5)
 55c:	00f706b3          	add	a3,a4,a5
 560:	00178793          	addi	a5,a5,1
 564:	00c68023          	sb	a2,0(a3)
 568:	fef998e3          	bne	s3,a5,558 <main+0x558>
 56c:	00100913          	li	s2,1
 570:	00058413          	mv	s0,a1
 574:	40b90933          	sub	s2,s2,a1
 578:	00000493          	li	s1,0
 57c:	00040583          	lb	a1,0(s0)
 580:	00890533          	add	a0,s2,s0
 584:	00140413          	addi	s0,s0,1
 588:	0ac000ef          	jal	634 <__mulsi3>
 58c:	00a484b3          	add	s1,s1,a0
 590:	ff3416e3          	bne	s0,s3,57c <main+0x57c>
 594:	00048513          	mv	a0,s1
 598:	0000006f          	j	598 <main+0x598>
 59c:	e5b05ce3          	blez	s11,3f4 <main+0x3f4>
 5a0:	01c12783          	lw	a5,28(sp)
 5a4:	000b0d13          	mv	s10,s6
 5a8:	01bb04b3          	add	s1,s6,s11
 5ac:	00f40933          	add	s2,s0,a5
 5b0:	00090583          	lb	a1,0(s2)
 5b4:	000d0503          	lb	a0,0(s10)
 5b8:	001d0d13          	addi	s10,s10,1
 5bc:	00190913          	addi	s2,s2,1
 5c0:	074000ef          	jal	634 <__mulsi3>
 5c4:	00ac8cb3          	add	s9,s9,a0
 5c8:	ffa494e3          	bne	s1,s10,5b0 <main+0x5b0>
 5cc:	e29ff06f          	j	3f4 <main+0x3f4>
 5d0:	00000b13          	li	s6,0
 5d4:	e81ff06f          	j	454 <main+0x454>
 5d8:	00080793          	mv	a5,a6
 5dc:	04c12803          	lw	a6,76(sp)
 5e0:	000d8913          	mv	s2,s11
 5e4:	000b8d93          	mv	s11,s7
 5e8:	07012b83          	lw	s7,112(sp)
 5ec:	00180813          	addi	a6,a6,1
 5f0:	000c0d13          	mv	s10,s8
 5f4:	06c12983          	lw	s3,108(sp)
 5f8:	07412503          	lw	a0,116(sp)
 5fc:	07812e83          	lw	t4,120(sp)
 600:	07c12403          	lw	s0,124(sp)
 604:	08012a83          	lw	s5,128(sp)
 608:	08412c83          	lw	s9,132(sp)
 60c:	08812483          	lw	s1,136(sp)
 610:	00070c13          	mv	s8,a4
 614:	ef0b8ce3          	beq	s7,a6,50c <main+0x50c>
 618:	06012703          	lw	a4,96(sp)
 61c:	00ea8ab3          	add	s5,s5,a4
 620:	00c12703          	lw	a4,12(sp)
 624:	00e40433          	add	s0,s0,a4
 628:	cb1ff06f          	j	2d8 <main+0x2d8>
 62c:	03b12423          	sw	s11,40(sp)
 630:	b89ff06f          	j	1b8 <main+0x1b8>

00000634 <__mulsi3>:
 634:	00050613          	mv	a2,a0
 638:	00000513          	li	a0,0
 63c:	0015f693          	andi	a3,a1,1
 640:	00068463          	beqz	a3,648 <__mulsi3+0x14>
 644:	00c50533          	add	a0,a0,a2
 648:	0015d593          	srli	a1,a1,0x1
 64c:	00161613          	slli	a2,a2,0x1
 650:	fe0596e3          	bnez	a1,63c <__mulsi3+0x8>
 654:	00008067          	ret

00000658 <__muldi3>:
 658:	ff010113          	addi	sp,sp,-16
 65c:	00068313          	mv	t1,a3
 660:	00112623          	sw	ra,12(sp)
 664:	00050e13          	mv	t3,a0
 668:	00050693          	mv	a3,a0
 66c:	00060893          	mv	a7,a2
 670:	00000713          	li	a4,0
 674:	00000793          	li	a5,0
 678:	00000813          	li	a6,0
 67c:	0018fe93          	andi	t4,a7,1
 680:	00171513          	slli	a0,a4,0x1
 684:	000e8a63          	beqz	t4,698 <__muldi3+0x40>
 688:	01068833          	add	a6,a3,a6
 68c:	00e787b3          	add	a5,a5,a4
 690:	00d83733          	sltu	a4,a6,a3
 694:	00f707b3          	add	a5,a4,a5
 698:	01f6d713          	srli	a4,a3,0x1f
 69c:	0018d893          	srli	a7,a7,0x1
 6a0:	00e56733          	or	a4,a0,a4
 6a4:	00169693          	slli	a3,a3,0x1
 6a8:	fc089ae3          	bnez	a7,67c <__muldi3+0x24>
 6ac:	00058863          	beqz	a1,6bc <__muldi3+0x64>
 6b0:	00060513          	mv	a0,a2
 6b4:	f81ff0ef          	jal	634 <__mulsi3>
 6b8:	00a787b3          	add	a5,a5,a0
 6bc:	00030a63          	beqz	t1,6d0 <__muldi3+0x78>
 6c0:	000e0513          	mv	a0,t3
 6c4:	00030593          	mv	a1,t1
 6c8:	f6dff0ef          	jal	634 <__mulsi3>
 6cc:	00f507b3          	add	a5,a0,a5
 6d0:	00c12083          	lw	ra,12(sp)
 6d4:	00080513          	mv	a0,a6
 6d8:	00078593          	mv	a1,a5
 6dc:	01010113          	addi	sp,sp,16
 6e0:	00008067          	ret

000006e4 <__divsi3>:
 6e4:	06054063          	bltz	a0,744 <__umodsi3+0x10>
 6e8:	0605c663          	bltz	a1,754 <__umodsi3+0x20>

000006ec <__hidden___udivsi3>:
 6ec:	00058613          	mv	a2,a1
 6f0:	00050593          	mv	a1,a0
 6f4:	fff00513          	li	a0,-1
 6f8:	02060c63          	beqz	a2,730 <__hidden___udivsi3+0x44>
 6fc:	00100693          	li	a3,1
 700:	00b67a63          	bgeu	a2,a1,714 <__hidden___udivsi3+0x28>
 704:	00c05863          	blez	a2,714 <__hidden___udivsi3+0x28>
 708:	00161613          	slli	a2,a2,0x1
 70c:	00169693          	slli	a3,a3,0x1
 710:	feb66ae3          	bltu	a2,a1,704 <__hidden___udivsi3+0x18>
 714:	00000513          	li	a0,0
 718:	00c5e663          	bltu	a1,a2,724 <__hidden___udivsi3+0x38>
 71c:	40c585b3          	sub	a1,a1,a2
 720:	00d56533          	or	a0,a0,a3
 724:	0016d693          	srli	a3,a3,0x1
 728:	00165613          	srli	a2,a2,0x1
 72c:	fe0696e3          	bnez	a3,718 <__hidden___udivsi3+0x2c>
 730:	00008067          	ret

00000734 <__umodsi3>:
 734:	00008293          	mv	t0,ra
 738:	fb5ff0ef          	jal	6ec <__hidden___udivsi3>
 73c:	00058513          	mv	a0,a1
 740:	00028067          	jr	t0
 744:	40a00533          	neg	a0,a0
 748:	00b04863          	bgtz	a1,758 <__umodsi3+0x24>
 74c:	40b005b3          	neg	a1,a1
 750:	f9dff06f          	j	6ec <__hidden___udivsi3>
 754:	40b005b3          	neg	a1,a1
 758:	00008293          	mv	t0,ra
 75c:	f91ff0ef          	jal	6ec <__hidden___udivsi3>
 760:	40a00533          	neg	a0,a0
 764:	00028067          	jr	t0

00000768 <__modsi3>:
 768:	00008293          	mv	t0,ra
 76c:	0005ca63          	bltz	a1,780 <__modsi3+0x18>
 770:	00054c63          	bltz	a0,788 <__modsi3+0x20>
 774:	f79ff0ef          	jal	6ec <__hidden___udivsi3>
 778:	00058513          	mv	a0,a1
 77c:	00028067          	jr	t0
 780:	40b005b3          	neg	a1,a1
 784:	fe0558e3          	bgez	a0,774 <__modsi3+0xc>
 788:	40a00533          	neg	a0,a0
 78c:	f61ff0ef          	jal	6ec <__hidden___udivsi3>
 790:	40b00533          	neg	a0,a1
 794:	00028067          	jr	t0

00000798 <_ZN6tflite29MultiplyByQuantizedMultiplierElli>:
 798:	fff64793          	not	a5,a2
 79c:	41f7d793          	srai	a5,a5,0x1f
 7a0:	ff010113          	addi	sp,sp,-16
 7a4:	00f677b3          	and	a5,a2,a5
 7a8:	00f51533          	sll	a0,a0,a5
 7ac:	00812423          	sw	s0,8(sp)
 7b0:	800007b7          	lui	a5,0x80000
 7b4:	00060413          	mv	s0,a2
 7b8:	40b50833          	sub	a6,a0,a1
 7bc:	00058613          	mv	a2,a1
 7c0:	fff40713          	addi	a4,s0,-1
 7c4:	00f507b3          	add	a5,a0,a5
 7c8:	0017b793          	seqz	a5,a5
 7cc:	00183813          	seqz	a6,a6
 7d0:	41f75713          	srai	a4,a4,0x1f
 7d4:	40800433          	neg	s0,s0
 7d8:	41f55593          	srai	a1,a0,0x1f
 7dc:	41f65693          	srai	a3,a2,0x1f
 7e0:	00912223          	sw	s1,4(sp)
 7e4:	00112623          	sw	ra,12(sp)
 7e8:	0107f4b3          	and	s1,a5,a6
 7ec:	00e47433          	and	s0,s0,a4
 7f0:	e69ff0ef          	jal	658 <__muldi3>
 7f4:	0805c263          	bltz	a1,878 <_ZN6tflite29MultiplyByQuantizedMultiplierElli+0xe0>
 7f8:	fe040713          	addi	a4,s0,-32
 7fc:	400006b7          	lui	a3,0x40000
 800:	00000793          	li	a5,0
 804:	08074463          	bltz	a4,88c <_ZN6tflite29MultiplyByQuantizedMultiplierElli+0xf4>
 808:	00000713          	li	a4,0
 80c:	fff70713          	addi	a4,a4,-1 # 2000efff <__bss_end+0xed3f>
 810:	40175613          	srai	a2,a4,0x1
 814:	08049663          	bnez	s1,8a0 <_ZN6tflite29MultiplyByQuantizedMultiplierElli+0x108>
 818:	00a686b3          	add	a3,a3,a0
 81c:	00a6b533          	sltu	a0,a3,a0
 820:	00b787b3          	add	a5,a5,a1
 824:	00f50533          	add	a0,a0,a5
 828:	41f55793          	srai	a5,a0,0x1f
 82c:	00179793          	slli	a5,a5,0x1
 830:	0017d793          	srli	a5,a5,0x1
 834:	00d786b3          	add	a3,a5,a3
 838:	00f6b7b3          	sltu	a5,a3,a5
 83c:	00a787b3          	add	a5,a5,a0
 840:	01f6d693          	srli	a3,a3,0x1f
 844:	00179793          	slli	a5,a5,0x1
 848:	00d787b3          	add	a5,a5,a3
 84c:	00c12083          	lw	ra,12(sp)
 850:	01f7d693          	srli	a3,a5,0x1f
 854:	00e7f533          	and	a0,a5,a4
 858:	4087d7b3          	sra	a5,a5,s0
 85c:	00812403          	lw	s0,8(sp)
 860:	00d60633          	add	a2,a2,a3
 864:	00a62533          	slt	a0,a2,a0
 868:	00412483          	lw	s1,4(sp)
 86c:	00a78533          	add	a0,a5,a0
 870:	01010113          	addi	sp,sp,16
 874:	00008067          	ret
 878:	c00006b7          	lui	a3,0xc0000
 87c:	fe040713          	addi	a4,s0,-32
 880:	00168693          	addi	a3,a3,1 # c0000001 <__bss_end+0x9ffffd41>
 884:	fff00793          	li	a5,-1
 888:	f80750e3          	bgez	a4,808 <_ZN6tflite29MultiplyByQuantizedMultiplierElli+0x70>
 88c:	00100713          	li	a4,1
 890:	00871733          	sll	a4,a4,s0
 894:	fff70713          	addi	a4,a4,-1
 898:	40175613          	srai	a2,a4,0x1
 89c:	f6048ee3          	beqz	s1,818 <_ZN6tflite29MultiplyByQuantizedMultiplierElli+0x80>
 8a0:	800007b7          	lui	a5,0x80000
 8a4:	fff78793          	addi	a5,a5,-1 # 7fffffff <__bss_end+0x5ffffd3f>
 8a8:	00c12083          	lw	ra,12(sp)
 8ac:	00f77533          	and	a0,a4,a5
 8b0:	4087d7b3          	sra	a5,a5,s0
 8b4:	00812403          	lw	s0,8(sp)
 8b8:	00a62533          	slt	a0,a2,a0
 8bc:	00412483          	lw	s1,4(sp)
 8c0:	00a78533          	add	a0,a5,a0
 8c4:	01010113          	addi	sp,sp,16
 8c8:	00008067          	ret
