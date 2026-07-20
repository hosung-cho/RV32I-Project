
/home/hosung/Ho/SoCLab workspace/RV32I-Project/FPGA/BNN/260719_FINN_LFC_RV32I/build/finn_lfc.elf:     file format elf32-littleriscv


Disassembly of section .text:

00000000 <_start>:
   0:	200c0117          	auipc	sp,0x200c0
   4:	00010113          	mv	sp,sp
   8:	2005c297          	auipc	t0,0x2005c
   c:	ee828293          	addi	t0,t0,-280 # 2005bef0 <__bss_end>
  10:	2005c317          	auipc	t1,0x2005c
  14:	ee030313          	addi	t1,t1,-288 # 2005bef0 <__bss_end>
  18:	00628863          	beq	t0,t1,28 <bss_clear_done>

0000001c <bss_clear_loop>:
  1c:	0002a023          	sw	zero,0(t0)
  20:	00428293          	addi	t0,t0,4
  24:	fe62ece3          	bltu	t0,t1,1c <bss_clear_loop>

00000028 <bss_clear_done>:
  28:	2ec000ef          	jal	314 <main>

0000002c <halt_loop>:
  2c:	0000006f          	j	2c <halt_loop>

00000030 <xnor_match32>:
  30:	08060e63          	beqz	a2,cc <xnor_match32+0x9c>
  34:	55555eb7          	lui	t4,0x55555
  38:	33333337          	lui	t1,0x33333
  3c:	0f0f1e37          	lui	t3,0xf0f1
  40:	00050893          	mv	a7,a0
  44:	555e8e93          	addi	t4,t4,1365 # 55555555 <_stack_top+0x35495555>
  48:	33330313          	addi	t1,t1,819 # 33333333 <_stack_top+0x13273333>
  4c:	f0fe0e13          	addi	t3,t3,-241 # f0f0f0f <main+0xf0f0bfb>
  50:	00000813          	li	a6,0
  54:	00000513          	li	a0,0
  58:	04c0006f          	j	a4 <xnor_match32+0x74>
  5c:	0017d713          	srli	a4,a5,0x1
  60:	01d77733          	and	a4,a4,t4
  64:	40e787b3          	sub	a5,a5,a4
  68:	0027d713          	srli	a4,a5,0x2
  6c:	00677733          	and	a4,a4,t1
  70:	0067f7b3          	and	a5,a5,t1
  74:	00f70733          	add	a4,a4,a5
  78:	00475793          	srli	a5,a4,0x4
  7c:	00e787b3          	add	a5,a5,a4
  80:	01c7f7b3          	and	a5,a5,t3
  84:	0087d713          	srli	a4,a5,0x8
  88:	00f70733          	add	a4,a4,a5
  8c:	01075793          	srli	a5,a4,0x10
  90:	00e787b3          	add	a5,a5,a4
  94:	03f7f793          	andi	a5,a5,63
  98:	00458593          	addi	a1,a1,4
  9c:	00f50533          	add	a0,a0,a5
  a0:	03060463          	beq	a2,a6,c8 <xnor_match32+0x98>
  a4:	0008a703          	lw	a4,0(a7)
  a8:	0005a783          	lw	a5,0(a1)
  ac:	00180813          	addi	a6,a6,1
  b0:	00488893          	addi	a7,a7,4
  b4:	00e7c7b3          	xor	a5,a5,a4
  b8:	fff7c793          	not	a5,a5
  bc:	fb0610e3          	bne	a2,a6,5c <xnor_match32+0x2c>
  c0:	00d7f7b3          	and	a5,a5,a3
  c4:	f99ff06f          	j	5c <xnor_match32+0x2c>
  c8:	00008067          	ret
  cc:	00000513          	li	a0,0
  d0:	00008067          	ret

000000d4 <binary_threshold_layer.constprop.0>:
  d4:	fd010113          	addi	sp,sp,-48 # 200bffd0 <__bss_end+0x640e0>
  d8:	02812423          	sw	s0,40(sp)
  dc:	02912223          	sw	s1,36(sp)
  e0:	01412c23          	sw	s4,24(sp)
  e4:	01512a23          	sw	s5,20(sp)
  e8:	01612823          	sw	s6,16(sp)
  ec:	01f70413          	addi	s0,a4,31
  f0:	02112623          	sw	ra,44(sp)
  f4:	03212023          	sw	s2,32(sp)
  f8:	01312e23          	sw	s3,28(sp)
  fc:	01712623          	sw	s7,12(sp)
 100:	01812423          	sw	s8,8(sp)
 104:	01912223          	sw	s9,4(sp)
 108:	01a12023          	sw	s10,0(sp)
 10c:	31000813          	li	a6,784
 110:	00050a13          	mv	s4,a0
 114:	00068a93          	mv	s5,a3
 118:	00078b13          	mv	s6,a5
 11c:	00545413          	srli	s0,s0,0x5
 120:	fff00493          	li	s1,-1
 124:	01071663          	bne	a4,a6,130 <binary_threshold_layer.constprop.0+0x5c>
 128:	000104b7          	lui	s1,0x10
 12c:	fff48493          	addi	s1,s1,-1 # ffff <main+0xfceb>
 130:	000b0793          	mv	a5,s6
 134:	080b0713          	addi	a4,s6,128
 138:	0007a023          	sw	zero,0(a5)
 13c:	00478793          	addi	a5,a5,4
 140:	fef71ce3          	bne	a4,a5,138 <binary_threshold_layer.constprop.0+0x64>
 144:	00058d13          	mv	s10,a1
 148:	00060c93          	mv	s9,a2
 14c:	00241993          	slli	s3,s0,0x2
 150:	00000c13          	li	s8,0
 154:	00100b93          	li	s7,1
 158:	40000913          	li	s2,1024
 15c:	00048693          	mv	a3,s1
 160:	00040613          	mv	a2,s0
 164:	000d0593          	mv	a1,s10
 168:	000a0513          	mv	a0,s4
 16c:	ec5ff0ef          	jal	30 <xnor_match32>
 170:	005c5713          	srli	a4,s8,0x5
 174:	00271713          	slli	a4,a4,0x2
 178:	00ea87b3          	add	a5,s5,a4
 17c:	000cd603          	lhu	a2,0(s9)
 180:	0007a783          	lw	a5,0(a5)
 184:	01fc7693          	andi	a3,s8,31
 188:	00c53533          	sltu	a0,a0,a2
 18c:	00d7d7b3          	srl	a5,a5,a3
 190:	00153513          	seqz	a0,a0
 194:	0017f793          	andi	a5,a5,1
 198:	001c0c13          	addi	s8,s8,1
 19c:	00f51c63          	bne	a0,a5,1b4 <binary_threshold_layer.constprop.0+0xe0>
 1a0:	00eb0733          	add	a4,s6,a4
 1a4:	00072783          	lw	a5,0(a4)
 1a8:	00db96b3          	sll	a3,s7,a3
 1ac:	00d7e7b3          	or	a5,a5,a3
 1b0:	00f72023          	sw	a5,0(a4)
 1b4:	013d0d33          	add	s10,s10,s3
 1b8:	002c8c93          	addi	s9,s9,2
 1bc:	fb2c10e3          	bne	s8,s2,15c <binary_threshold_layer.constprop.0+0x88>
 1c0:	02c12083          	lw	ra,44(sp)
 1c4:	02812403          	lw	s0,40(sp)
 1c8:	02412483          	lw	s1,36(sp)
 1cc:	02012903          	lw	s2,32(sp)
 1d0:	01c12983          	lw	s3,28(sp)
 1d4:	01812a03          	lw	s4,24(sp)
 1d8:	01412a83          	lw	s5,20(sp)
 1dc:	01012b03          	lw	s6,16(sp)
 1e0:	00c12b83          	lw	s7,12(sp)
 1e4:	00812c03          	lw	s8,8(sp)
 1e8:	00412c83          	lw	s9,4(sp)
 1ec:	00012d03          	lw	s10,0(sp)
 1f0:	03010113          	addi	sp,sp,48
 1f4:	00008067          	ret

000001f8 <finn_lfc_inference>:
 1f8:	ee010113          	addi	sp,sp,-288
 1fc:	2005c737          	lui	a4,0x2005c
 200:	200026b7          	lui	a3,0x20002
 204:	20002637          	lui	a2,0x20002
 208:	200435b7          	lui	a1,0x20043
 20c:	11212823          	sw	s2,272(sp)
 210:	00010793          	mv	a5,sp
 214:	10068693          	addi	a3,a3,256 # 20002100 <lfc_polarity0>
 218:	18060613          	addi	a2,a2,384 # 20002180 <lfc_threshold0>
 21c:	e8058593          	addi	a1,a1,-384 # 20042e80 <lfc_w0>
 220:	00050913          	mv	s2,a0
 224:	e8070513          	addi	a0,a4,-384 # 2005be80 <lfc_input>
 228:	31000713          	li	a4,784
 22c:	10112e23          	sw	ra,284(sp)
 230:	10812c23          	sw	s0,280(sp)
 234:	10912a23          	sw	s1,276(sp)
 238:	11312623          	sw	s3,268(sp)
 23c:	11412423          	sw	s4,264(sp)
 240:	11512223          	sw	s5,260(sp)
 244:	e91ff0ef          	jal	d4 <binary_threshold_layer.constprop.0>
 248:	200026b7          	lui	a3,0x20002
 24c:	20002637          	lui	a2,0x20002
 250:	200235b7          	lui	a1,0x20023
 254:	08010793          	addi	a5,sp,128
 258:	00010513          	mv	a0,sp
 25c:	88068693          	addi	a3,a3,-1920 # 20001880 <lfc_polarity1>
 260:	90060613          	addi	a2,a2,-1792 # 20001900 <lfc_threshold1>
 264:	e8058593          	addi	a1,a1,-384 # 20022e80 <lfc_w1>
 268:	40000713          	li	a4,1024
 26c:	e69ff0ef          	jal	d4 <binary_threshold_layer.constprop.0>
 270:	200016b7          	lui	a3,0x20001
 274:	20001637          	lui	a2,0x20001
 278:	200035b7          	lui	a1,0x20003
 27c:	00010793          	mv	a5,sp
 280:	08010513          	addi	a0,sp,128
 284:	00068693          	mv	a3,a3
 288:	08060613          	addi	a2,a2,128 # 20001080 <lfc_threshold2>
 28c:	e8058593          	addi	a1,a1,-384 # 20002e80 <lfc_w2>
 290:	40000713          	li	a4,1024
 294:	200034b7          	lui	s1,0x20003
 298:	e3dff0ef          	jal	d4 <binary_threshold_layer.constprop.0>
 29c:	98048493          	addi	s1,s1,-1664 # 20002980 <lfc_w3>
 2a0:	00000413          	li	s0,0
 2a4:	800009b7          	lui	s3,0x80000
 2a8:	00000a93          	li	s5,0
 2ac:	00a00a13          	li	s4,10
 2b0:	fff00693          	li	a3,-1
 2b4:	02000613          	li	a2,32
 2b8:	00048593          	mv	a1,s1
 2bc:	00010513          	mv	a0,sp
 2c0:	d71ff0ef          	jal	30 <xnor_match32>
 2c4:	00151793          	slli	a5,a0,0x1
 2c8:	c0078793          	addi	a5,a5,-1024
 2cc:	00f92023          	sw	a5,0(s2)
 2d0:	00f9d663          	bge	s3,a5,2dc <finn_lfc_inference+0xe4>
 2d4:	00078993          	mv	s3,a5
 2d8:	00040a93          	mv	s5,s0
 2dc:	00140413          	addi	s0,s0,1
 2e0:	08048493          	addi	s1,s1,128
 2e4:	00490913          	addi	s2,s2,4
 2e8:	fd4414e3          	bne	s0,s4,2b0 <finn_lfc_inference+0xb8>
 2ec:	11c12083          	lw	ra,284(sp)
 2f0:	11812403          	lw	s0,280(sp)
 2f4:	11412483          	lw	s1,276(sp)
 2f8:	11012903          	lw	s2,272(sp)
 2fc:	10c12983          	lw	s3,268(sp)
 300:	10812a03          	lw	s4,264(sp)
 304:	000a8513          	mv	a0,s5
 308:	10412a83          	lw	s5,260(sp)
 30c:	12010113          	addi	sp,sp,288
 310:	00008067          	ret

00000314 <main>:
 314:	fc010113          	addi	sp,sp,-64
 318:	02812c23          	sw	s0,56(sp)
 31c:	10000793          	li	a5,256
 320:	20000437          	lui	s0,0x20000
 324:	02112e23          	sw	ra,60(sp)
 328:	00f42023          	sw	a5,0(s0) # 20000000 <main+0x1ffffcec>
 32c:	00810513          	addi	a0,sp,8
 330:	ec9ff0ef          	jal	1f8 <finn_lfc_inference>
 334:	00a42223          	sw	a0,4(s0)
 338:	00500593          	li	a1,5
 33c:	ffb50513          	addi	a0,a0,-5
 340:	00810793          	addi	a5,sp,8
 344:	00153513          	seqz	a0,a0
 348:	00b42423          	sw	a1,8(s0)
 34c:	04040613          	addi	a2,s0,64
 350:	00a42623          	sw	a0,12(s0)
 354:	40f60633          	sub	a2,a2,a5
 358:	0007a683          	lw	a3,0(a5)
 35c:	00f60733          	add	a4,a2,a5
 360:	00478793          	addi	a5,a5,4
 364:	00d72023          	sw	a3,0(a4)
 368:	03010713          	addi	a4,sp,48
 36c:	fee796e3          	bne	a5,a4,358 <main+0x44>
 370:	00100513          	li	a0,1
 374:	03c12083          	lw	ra,60(sp)
 378:	00a42023          	sw	a0,0(s0)
 37c:	03812403          	lw	s0,56(sp)
 380:	04010113          	addi	sp,sp,64
 384:	00008067          	ret
