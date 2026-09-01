
/home/hosung/Ho/MSMLab_workspace/RV32I-Project/FPGA/BNN/260817_Wide_BDOT128/software/ebnn/build/bdot128/ebnn_bdot128.elf:     file format elf32-littleriscv


Disassembly of section .text:

00000000 <_start>:
       0:	20010117          	auipc	sp,0x20010
       4:	00010113          	mv	sp,sp
       8:	20002297          	auipc	t0,0x20002
       c:	ac828293          	addi	t0,t0,-1336 # 20001ad0 <bdot_count>
      10:	20002317          	auipc	t1,0x20002
      14:	b0030313          	addi	t1,t1,-1280 # 20001b10 <__bss_end>
      18:	00628863          	beq	t0,t1,28 <bss_clear_done>

0000001c <bss_clear_loop>:
      1c:	0002a023          	sw	zero,0(t0)
      20:	00428293          	addi	t0,t0,4
      24:	fe62ece3          	bltu	t0,t1,1c <bss_clear_loop>

00000028 <bss_clear_done>:
      28:	26c010ef          	jal	1294 <main>

0000002c <halt_loop>:
      2c:	0000006f          	j	2c <halt_loop>

00000030 <__addsf3>:
      30:	ff010113          	addi	sp,sp,-16 # 2000fff0 <__bss_end+0xe4e0>
      34:	00800737          	lui	a4,0x800
      38:	fff70713          	addi	a4,a4,-1 # 7fffff <main+0x7fed6b>
      3c:	0175d613          	srli	a2,a1,0x17
      40:	00812423          	sw	s0,8(sp)
      44:	01755413          	srli	s0,a0,0x17
      48:	00a777b3          	and	a5,a4,a0
      4c:	00912223          	sw	s1,4(sp)
      50:	00b77733          	and	a4,a4,a1
      54:	0ff47413          	zext.b	s0,s0
      58:	0ff67613          	zext.b	a2,a2
      5c:	00112623          	sw	ra,12(sp)
      60:	01212023          	sw	s2,0(sp)
      64:	01f55493          	srli	s1,a0,0x1f
      68:	01f5d593          	srli	a1,a1,0x1f
      6c:	00379793          	slli	a5,a5,0x3
      70:	00371713          	slli	a4,a4,0x3
      74:	40c406b3          	sub	a3,s0,a2
      78:	1cb49c63          	bne	s1,a1,250 <__addsf3+0x220>
      7c:	08d05e63          	blez	a3,118 <__addsf3+0xe8>
      80:	0ff00593          	li	a1,255
      84:	02061663          	bnez	a2,b0 <__addsf3+0x80>
      88:	00070e63          	beqz	a4,a4 <__addsf3+0x74>
      8c:	fff68613          	addi	a2,a3,-1
      90:	00061863          	bnez	a2,a0 <__addsf3+0x70>
      94:	00e787b3          	add	a5,a5,a4
      98:	00100413          	li	s0,1
      9c:	04c0006f          	j	e8 <__addsf3+0xb8>
      a0:	02b69063          	bne	a3,a1,c0 <__addsf3+0x90>
      a4:	00068413          	mv	s0,a3
      a8:	00078713          	mv	a4,a5
      ac:	2c00006f          	j	36c <__addsf3+0x33c>
      b0:	feb40ce3          	beq	s0,a1,a8 <__addsf3+0x78>
      b4:	04000637          	lui	a2,0x4000
      b8:	00c76733          	or	a4,a4,a2
      bc:	00068613          	mv	a2,a3
      c0:	01b00593          	li	a1,27
      c4:	00100693          	li	a3,1
      c8:	00c5ce63          	blt	a1,a2,e4 <__addsf3+0xb4>
      cc:	02000693          	li	a3,32
      d0:	40c686b3          	sub	a3,a3,a2
      d4:	00c755b3          	srl	a1,a4,a2
      d8:	00d71733          	sll	a4,a4,a3
      dc:	00e03733          	snez	a4,a4
      e0:	00e5e6b3          	or	a3,a1,a4
      e4:	00d787b3          	add	a5,a5,a3
      e8:	00579713          	slli	a4,a5,0x5
      ec:	12075263          	bgez	a4,210 <__addsf3+0x1e0>
      f0:	00140413          	addi	s0,s0,1
      f4:	0ff00713          	li	a4,255
      f8:	34e40e63          	beq	s0,a4,454 <__addsf3+0x424>
      fc:	7e0006b7          	lui	a3,0x7e000
     100:	0017d713          	srli	a4,a5,0x1
     104:	fff68693          	addi	a3,a3,-1 # 7dffffff <_stack_top+0x5dfeffff>
     108:	00d77733          	and	a4,a4,a3
     10c:	0017f793          	andi	a5,a5,1
     110:	00f767b3          	or	a5,a4,a5
     114:	0fc0006f          	j	210 <__addsf3+0x1e0>
     118:	06068463          	beqz	a3,180 <__addsf3+0x150>
     11c:	408606b3          	sub	a3,a2,s0
     120:	0ff00513          	li	a0,255
     124:	00041e63          	bnez	s0,140 <__addsf3+0x110>
     128:	32078063          	beqz	a5,448 <__addsf3+0x418>
     12c:	fff68593          	addi	a1,a3,-1
     130:	f60582e3          	beqz	a1,94 <__addsf3+0x64>
     134:	00a69e63          	bne	a3,a0,150 <__addsf3+0x120>
     138:	0ff00413          	li	s0,255
     13c:	2300006f          	j	36c <__addsf3+0x33c>
     140:	fea60ce3          	beq	a2,a0,138 <__addsf3+0x108>
     144:	040005b7          	lui	a1,0x4000
     148:	00b7e7b3          	or	a5,a5,a1
     14c:	00068593          	mv	a1,a3
     150:	01b00513          	li	a0,27
     154:	00100693          	li	a3,1
     158:	00b54e63          	blt	a0,a1,174 <__addsf3+0x144>
     15c:	02000693          	li	a3,32
     160:	40b686b3          	sub	a3,a3,a1
     164:	00b7d533          	srl	a0,a5,a1
     168:	00d797b3          	sll	a5,a5,a3
     16c:	00f037b3          	snez	a5,a5
     170:	00f566b3          	or	a3,a0,a5
     174:	00e687b3          	add	a5,a3,a4
     178:	00060413          	mv	s0,a2
     17c:	f6dff06f          	j	e8 <__addsf3+0xb8>
     180:	00140693          	addi	a3,s0,1
     184:	0fe6f613          	andi	a2,a3,254
     188:	06061a63          	bnez	a2,1fc <__addsf3+0x1cc>
     18c:	06041063          	bnez	s0,1ec <__addsf3+0x1bc>
     190:	2a078663          	beqz	a5,43c <__addsf3+0x40c>
     194:	08070a63          	beqz	a4,228 <__addsf3+0x1f8>
     198:	00f70733          	add	a4,a4,a5
     19c:	00571793          	slli	a5,a4,0x5
     1a0:	1c07d663          	bgez	a5,36c <__addsf3+0x33c>
     1a4:	1f8007b7          	lui	a5,0x1f800
     1a8:	00375713          	srli	a4,a4,0x3
     1ac:	fff78793          	addi	a5,a5,-1 # 1f7fffff <main+0x1f7fed6b>
     1b0:	00f777b3          	and	a5,a4,a5
     1b4:	00100413          	li	s0,1
     1b8:	0ff47413          	zext.b	s0,s0
     1bc:	00979793          	slli	a5,a5,0x9
     1c0:	01741413          	slli	s0,s0,0x17
     1c4:	0097d793          	srli	a5,a5,0x9
     1c8:	00f46433          	or	s0,s0,a5
     1cc:	01f49513          	slli	a0,s1,0x1f
     1d0:	00c12083          	lw	ra,12(sp)
     1d4:	00a46533          	or	a0,s0,a0
     1d8:	00812403          	lw	s0,8(sp)
     1dc:	00412483          	lw	s1,4(sp)
     1e0:	00012903          	lw	s2,0(sp)
     1e4:	01010113          	addi	sp,sp,16
     1e8:	00008067          	ret
     1ec:	f40786e3          	beqz	a5,138 <__addsf3+0x108>
     1f0:	1c071863          	bnez	a4,3c0 <__addsf3+0x390>
     1f4:	00078713          	mv	a4,a5
     1f8:	f41ff06f          	j	138 <__addsf3+0x108>
     1fc:	0ff00613          	li	a2,255
     200:	24c68863          	beq	a3,a2,450 <__addsf3+0x420>
     204:	00e78733          	add	a4,a5,a4
     208:	00175793          	srli	a5,a4,0x1
     20c:	00068413          	mv	s0,a3
     210:	0077f713          	andi	a4,a5,7
     214:	00070a63          	beqz	a4,228 <__addsf3+0x1f8>
     218:	00f7f713          	andi	a4,a5,15
     21c:	00400693          	li	a3,4
     220:	00d70463          	beq	a4,a3,228 <__addsf3+0x1f8>
     224:	00d787b3          	add	a5,a5,a3
     228:	00579713          	slli	a4,a5,0x5
     22c:	e6075ee3          	bgez	a4,a8 <__addsf3+0x78>
     230:	00140413          	addi	s0,s0,1
     234:	0ff00713          	li	a4,255
     238:	20e40e63          	beq	s0,a4,454 <__addsf3+0x424>
     23c:	1f800737          	lui	a4,0x1f800
     240:	0037d793          	srli	a5,a5,0x3
     244:	fff70713          	addi	a4,a4,-1 # 1f7fffff <main+0x1f7fed6b>
     248:	00e7f7b3          	and	a5,a5,a4
     24c:	f6dff06f          	j	1b8 <__addsf3+0x188>
     250:	08d05063          	blez	a3,2d0 <__addsf3+0x2a0>
     254:	06061263          	bnez	a2,2b8 <__addsf3+0x288>
     258:	e40706e3          	beqz	a4,a4 <__addsf3+0x74>
     25c:	fff68613          	addi	a2,a3,-1
     260:	00061863          	bnez	a2,270 <__addsf3+0x240>
     264:	40e787b3          	sub	a5,a5,a4
     268:	00100413          	li	s0,1
     26c:	0340006f          	j	2a0 <__addsf3+0x270>
     270:	0ff00593          	li	a1,255
     274:	e2b688e3          	beq	a3,a1,a4 <__addsf3+0x74>
     278:	01b00593          	li	a1,27
     27c:	00100693          	li	a3,1
     280:	00c5ce63          	blt	a1,a2,29c <__addsf3+0x26c>
     284:	02000693          	li	a3,32
     288:	40c686b3          	sub	a3,a3,a2
     28c:	00c755b3          	srl	a1,a4,a2
     290:	00d71733          	sll	a4,a4,a3
     294:	00e03733          	snez	a4,a4
     298:	00e5e6b3          	or	a3,a1,a4
     29c:	40d787b3          	sub	a5,a5,a3
     2a0:	00579713          	slli	a4,a5,0x5
     2a4:	f60756e3          	bgez	a4,210 <__addsf3+0x1e0>
     2a8:	04000937          	lui	s2,0x4000
     2ac:	fff90913          	addi	s2,s2,-1 # 3ffffff <main+0x3ffed6b>
     2b0:	0127f933          	and	s2,a5,s2
     2b4:	1300006f          	j	3e4 <__addsf3+0x3b4>
     2b8:	0ff00613          	li	a2,255
     2bc:	dec406e3          	beq	s0,a2,a8 <__addsf3+0x78>
     2c0:	04000637          	lui	a2,0x4000
     2c4:	00c76733          	or	a4,a4,a2
     2c8:	00068613          	mv	a2,a3
     2cc:	fadff06f          	j	278 <__addsf3+0x248>
     2d0:	06068e63          	beqz	a3,34c <__addsf3+0x31c>
     2d4:	408606b3          	sub	a3,a2,s0
     2d8:	02041663          	bnez	s0,304 <__addsf3+0x2d4>
     2dc:	16078463          	beqz	a5,444 <__addsf3+0x414>
     2e0:	fff68513          	addi	a0,a3,-1
     2e4:	00051863          	bnez	a0,2f4 <__addsf3+0x2c4>
     2e8:	40f707b3          	sub	a5,a4,a5
     2ec:	00058493          	mv	s1,a1
     2f0:	f79ff06f          	j	268 <__addsf3+0x238>
     2f4:	0ff00813          	li	a6,255
     2f8:	03069063          	bne	a3,a6,318 <__addsf3+0x2e8>
     2fc:	00058493          	mv	s1,a1
     300:	e39ff06f          	j	138 <__addsf3+0x108>
     304:	0ff00513          	li	a0,255
     308:	fea60ae3          	beq	a2,a0,2fc <__addsf3+0x2cc>
     30c:	04000537          	lui	a0,0x4000
     310:	00a7e7b3          	or	a5,a5,a0
     314:	00068513          	mv	a0,a3
     318:	01b00813          	li	a6,27
     31c:	00100693          	li	a3,1
     320:	00a84e63          	blt	a6,a0,33c <__addsf3+0x30c>
     324:	02000693          	li	a3,32
     328:	40a686b3          	sub	a3,a3,a0
     32c:	00a7d833          	srl	a6,a5,a0
     330:	00d797b3          	sll	a5,a5,a3
     334:	00f037b3          	snez	a5,a5
     338:	00f866b3          	or	a3,a6,a5
     33c:	40d707b3          	sub	a5,a4,a3
     340:	00060413          	mv	s0,a2
     344:	00058493          	mv	s1,a1
     348:	f59ff06f          	j	2a0 <__addsf3+0x270>
     34c:	00140693          	addi	a3,s0,1
     350:	0fe6f693          	andi	a3,a3,254
     354:	06069e63          	bnez	a3,3d0 <__addsf3+0x3a0>
     358:	06041263          	bnez	s0,3bc <__addsf3+0x38c>
     35c:	02079463          	bnez	a5,384 <__addsf3+0x354>
     360:	00000493          	li	s1,0
     364:	e4070ae3          	beqz	a4,1b8 <__addsf3+0x188>
     368:	00058493          	mv	s1,a1
     36c:	00375793          	srli	a5,a4,0x3
     370:	0ff00713          	li	a4,255
     374:	e4e412e3          	bne	s0,a4,1b8 <__addsf3+0x188>
     378:	e40780e3          	beqz	a5,1b8 <__addsf3+0x188>
     37c:	004007b7          	lui	a5,0x400
     380:	0340006f          	j	3b4 <__addsf3+0x384>
     384:	ea0702e3          	beqz	a4,228 <__addsf3+0x1f8>
     388:	40e786b3          	sub	a3,a5,a4
     38c:	00569613          	slli	a2,a3,0x5
     390:	00065c63          	bgez	a2,3a8 <__addsf3+0x378>
     394:	40f707b3          	sub	a5,a4,a5
     398:	00058493          	mv	s1,a1
     39c:	00000413          	li	s0,0
     3a0:	e0078ce3          	beqz	a5,1b8 <__addsf3+0x188>
     3a4:	e6dff06f          	j	210 <__addsf3+0x1e0>
     3a8:	00068713          	mv	a4,a3
     3ac:	fc0690e3          	bnez	a3,36c <__addsf3+0x33c>
     3b0:	00000793          	li	a5,0
     3b4:	00000493          	li	s1,0
     3b8:	e01ff06f          	j	1b8 <__addsf3+0x188>
     3bc:	e2079ae3          	bnez	a5,1f0 <__addsf3+0x1c0>
     3c0:	00000493          	li	s1,0
     3c4:	0ff00413          	li	s0,255
     3c8:	004007b7          	lui	a5,0x400
     3cc:	dedff06f          	j	1b8 <__addsf3+0x188>
     3d0:	40e78933          	sub	s2,a5,a4
     3d4:	00591693          	slli	a3,s2,0x5
     3d8:	0406d263          	bgez	a3,41c <__addsf3+0x3ec>
     3dc:	40f70933          	sub	s2,a4,a5
     3e0:	00058493          	mv	s1,a1
     3e4:	00090513          	mv	a0,s2
     3e8:	661000ef          	jal	1248 <__clzsi2>
     3ec:	ffb50513          	addi	a0,a0,-5 # 3fffffb <main+0x3ffed67>
     3f0:	00a91933          	sll	s2,s2,a0
     3f4:	02854a63          	blt	a0,s0,428 <__addsf3+0x3f8>
     3f8:	40850533          	sub	a0,a0,s0
     3fc:	00150513          	addi	a0,a0,1
     400:	02000713          	li	a4,32
     404:	40a70733          	sub	a4,a4,a0
     408:	00a957b3          	srl	a5,s2,a0
     40c:	00e91933          	sll	s2,s2,a4
     410:	01203933          	snez	s2,s2
     414:	0127e7b3          	or	a5,a5,s2
     418:	f85ff06f          	j	39c <__addsf3+0x36c>
     41c:	fc0914e3          	bnez	s2,3e4 <__addsf3+0x3b4>
     420:	00000413          	li	s0,0
     424:	f8dff06f          	j	3b0 <__addsf3+0x380>
     428:	fc0007b7          	lui	a5,0xfc000
     42c:	fff78793          	addi	a5,a5,-1 # fbffffff <_stack_top+0xdbfeffff>
     430:	40a40433          	sub	s0,s0,a0
     434:	00f977b3          	and	a5,s2,a5
     438:	dd9ff06f          	j	210 <__addsf3+0x1e0>
     43c:	00070793          	mv	a5,a4
     440:	f5dff06f          	j	39c <__addsf3+0x36c>
     444:	00058493          	mv	s1,a1
     448:	00068413          	mv	s0,a3
     44c:	f21ff06f          	j	36c <__addsf3+0x33c>
     450:	00068413          	mv	s0,a3
     454:	00000793          	li	a5,0
     458:	d61ff06f          	j	1b8 <__addsf3+0x188>

0000045c <__divsf3>:
     45c:	fd010113          	addi	sp,sp,-48
     460:	02912223          	sw	s1,36(sp)
     464:	01755493          	srli	s1,a0,0x17
     468:	01412c23          	sw	s4,24(sp)
     46c:	01512a23          	sw	s5,20(sp)
     470:	01712623          	sw	s7,12(sp)
     474:	00951a13          	slli	s4,a0,0x9
     478:	02112623          	sw	ra,44(sp)
     47c:	02812423          	sw	s0,40(sp)
     480:	03212023          	sw	s2,32(sp)
     484:	01312e23          	sw	s3,28(sp)
     488:	01612823          	sw	s6,16(sp)
     48c:	01812423          	sw	s8,8(sp)
     490:	0ff4f493          	zext.b	s1,s1
     494:	00058b93          	mv	s7,a1
     498:	009a5a13          	srli	s4,s4,0x9
     49c:	01f55a93          	srli	s5,a0,0x1f
     4a0:	08048463          	beqz	s1,528 <__divsf3+0xcc>
     4a4:	0ff00793          	li	a5,255
     4a8:	0af48063          	beq	s1,a5,548 <__divsf3+0xec>
     4ac:	003a1a13          	slli	s4,s4,0x3
     4b0:	040007b7          	lui	a5,0x4000
     4b4:	00fa6a33          	or	s4,s4,a5
     4b8:	f8148493          	addi	s1,s1,-127
     4bc:	00000b13          	li	s6,0
     4c0:	017bd793          	srli	a5,s7,0x17
     4c4:	009b9413          	slli	s0,s7,0x9
     4c8:	0ff7f793          	zext.b	a5,a5
     4cc:	00945413          	srli	s0,s0,0x9
     4d0:	01fbdb93          	srli	s7,s7,0x1f
     4d4:	08078863          	beqz	a5,564 <__divsf3+0x108>
     4d8:	0ff00713          	li	a4,255
     4dc:	0ae78463          	beq	a5,a4,584 <__divsf3+0x128>
     4e0:	00341413          	slli	s0,s0,0x3
     4e4:	04000737          	lui	a4,0x4000
     4e8:	00e46433          	or	s0,s0,a4
     4ec:	f8178793          	addi	a5,a5,-127 # 3ffff81 <main+0x3ffeced>
     4f0:	00000713          	li	a4,0
     4f4:	40f489b3          	sub	s3,s1,a5
     4f8:	002b1793          	slli	a5,s6,0x2
     4fc:	00e7e7b3          	or	a5,a5,a4
     500:	fff78793          	addi	a5,a5,-1
     504:	00e00693          	li	a3,14
     508:	017ac933          	xor	s2,s5,s7
     50c:	08f6ea63          	bltu	a3,a5,5a0 <__divsf3+0x144>
     510:	200016b7          	lui	a3,0x20001
     514:	00279793          	slli	a5,a5,0x2
     518:	00068693          	mv	a3,a3
     51c:	00d787b3          	add	a5,a5,a3
     520:	0007a783          	lw	a5,0(a5)
     524:	00078067          	jr	a5
     528:	020a0863          	beqz	s4,558 <__divsf3+0xfc>
     52c:	000a0513          	mv	a0,s4
     530:	519000ef          	jal	1248 <__clzsi2>
     534:	ffb50793          	addi	a5,a0,-5
     538:	f8a00493          	li	s1,-118
     53c:	00fa1a33          	sll	s4,s4,a5
     540:	40a484b3          	sub	s1,s1,a0
     544:	f79ff06f          	j	4bc <__divsf3+0x60>
     548:	00200b13          	li	s6,2
     54c:	f60a0ae3          	beqz	s4,4c0 <__divsf3+0x64>
     550:	00300b13          	li	s6,3
     554:	f6dff06f          	j	4c0 <__divsf3+0x64>
     558:	00000493          	li	s1,0
     55c:	00100b13          	li	s6,1
     560:	f61ff06f          	j	4c0 <__divsf3+0x64>
     564:	02040863          	beqz	s0,594 <__divsf3+0x138>
     568:	00040513          	mv	a0,s0
     56c:	4dd000ef          	jal	1248 <__clzsi2>
     570:	ffb50793          	addi	a5,a0,-5
     574:	00f41433          	sll	s0,s0,a5
     578:	f8a00793          	li	a5,-118
     57c:	40a787b3          	sub	a5,a5,a0
     580:	f71ff06f          	j	4f0 <__divsf3+0x94>
     584:	00200713          	li	a4,2
     588:	f60406e3          	beqz	s0,4f4 <__divsf3+0x98>
     58c:	00300713          	li	a4,3
     590:	f65ff06f          	j	4f4 <__divsf3+0x98>
     594:	00000793          	li	a5,0
     598:	00100713          	li	a4,1
     59c:	f59ff06f          	j	4f4 <__divsf3+0x98>
     5a0:	00541b13          	slli	s6,s0,0x5
     5a4:	148a7a63          	bgeu	s4,s0,6f8 <__divsf3+0x29c>
     5a8:	fff98993          	addi	s3,s3,-1
     5ac:	00000413          	li	s0,0
     5b0:	010b5a93          	srli	s5,s6,0x10
     5b4:	000a8593          	mv	a1,s5
     5b8:	010b1c13          	slli	s8,s6,0x10
     5bc:	000a0513          	mv	a0,s4
     5c0:	3dd000ef          	jal	119c <__hidden___udivsi3>
     5c4:	010c5c13          	srli	s8,s8,0x10
     5c8:	00050593          	mv	a1,a0
     5cc:	00050493          	mv	s1,a0
     5d0:	000c0513          	mv	a0,s8
     5d4:	39d000ef          	jal	1170 <__mulsi3>
     5d8:	00050b93          	mv	s7,a0
     5dc:	000a8593          	mv	a1,s5
     5e0:	000a0513          	mv	a0,s4
     5e4:	401000ef          	jal	11e4 <__umodsi3>
     5e8:	01051513          	slli	a0,a0,0x10
     5ec:	01045793          	srli	a5,s0,0x10
     5f0:	00a7e7b3          	or	a5,a5,a0
     5f4:	0177fa63          	bgeu	a5,s7,608 <__divsf3+0x1ac>
     5f8:	00fb07b3          	add	a5,s6,a5
     5fc:	0177f463          	bgeu	a5,s7,604 <__divsf3+0x1a8>
     600:	1167f263          	bgeu	a5,s6,704 <__divsf3+0x2a8>
     604:	fff48493          	addi	s1,s1,-1
     608:	41778433          	sub	s0,a5,s7
     60c:	000a8593          	mv	a1,s5
     610:	00040513          	mv	a0,s0
     614:	389000ef          	jal	119c <__hidden___udivsi3>
     618:	00050593          	mv	a1,a0
     61c:	00050a13          	mv	s4,a0
     620:	000c0513          	mv	a0,s8
     624:	34d000ef          	jal	1170 <__mulsi3>
     628:	00050b93          	mv	s7,a0
     62c:	000a8593          	mv	a1,s5
     630:	00040513          	mv	a0,s0
     634:	3b1000ef          	jal	11e4 <__umodsi3>
     638:	01051793          	slli	a5,a0,0x10
     63c:	0177fe63          	bgeu	a5,s7,658 <__divsf3+0x1fc>
     640:	01678733          	add	a4,a5,s6
     644:	00f736b3          	sltu	a3,a4,a5
     648:	00070793          	mv	a5,a4
     64c:	01777463          	bgeu	a4,s7,654 <__divsf3+0x1f8>
     650:	0c068063          	beqz	a3,710 <__divsf3+0x2b4>
     654:	fffa0a13          	addi	s4,s4,-1
     658:	01049413          	slli	s0,s1,0x10
     65c:	417787b3          	sub	a5,a5,s7
     660:	01446433          	or	s0,s0,s4
     664:	00f037b3          	snez	a5,a5
     668:	00f46433          	or	s0,s0,a5
     66c:	07f98713          	addi	a4,s3,127
     670:	0ee05263          	blez	a4,754 <__divsf3+0x2f8>
     674:	00747793          	andi	a5,s0,7
     678:	00078a63          	beqz	a5,68c <__divsf3+0x230>
     67c:	00f47793          	andi	a5,s0,15
     680:	00400693          	li	a3,4
     684:	00d78463          	beq	a5,a3,68c <__divsf3+0x230>
     688:	00d40433          	add	s0,s0,a3
     68c:	00441793          	slli	a5,s0,0x4
     690:	0007da63          	bgez	a5,6a4 <__divsf3+0x248>
     694:	f80007b7          	lui	a5,0xf8000
     698:	fff78793          	addi	a5,a5,-1 # f7ffffff <_stack_top+0xd7feffff>
     69c:	00f47433          	and	s0,s0,a5
     6a0:	08098713          	addi	a4,s3,128
     6a4:	0fe00793          	li	a5,254
     6a8:	10e7ce63          	blt	a5,a4,7c4 <__divsf3+0x368>
     6ac:	00345793          	srli	a5,s0,0x3
     6b0:	02c12083          	lw	ra,44(sp)
     6b4:	02812403          	lw	s0,40(sp)
     6b8:	00979793          	slli	a5,a5,0x9
     6bc:	01771713          	slli	a4,a4,0x17
     6c0:	0097d793          	srli	a5,a5,0x9
     6c4:	01f91513          	slli	a0,s2,0x1f
     6c8:	00f76733          	or	a4,a4,a5
     6cc:	02412483          	lw	s1,36(sp)
     6d0:	02012903          	lw	s2,32(sp)
     6d4:	01c12983          	lw	s3,28(sp)
     6d8:	01812a03          	lw	s4,24(sp)
     6dc:	01412a83          	lw	s5,20(sp)
     6e0:	01012b03          	lw	s6,16(sp)
     6e4:	00c12b83          	lw	s7,12(sp)
     6e8:	00812c03          	lw	s8,8(sp)
     6ec:	00a76533          	or	a0,a4,a0
     6f0:	03010113          	addi	sp,sp,48
     6f4:	00008067          	ret
     6f8:	01fa1413          	slli	s0,s4,0x1f
     6fc:	001a5a13          	srli	s4,s4,0x1
     700:	eb1ff06f          	j	5b0 <__divsf3+0x154>
     704:	ffe48493          	addi	s1,s1,-2
     708:	016787b3          	add	a5,a5,s6
     70c:	efdff06f          	j	608 <__divsf3+0x1ac>
     710:	ffea0a13          	addi	s4,s4,-2
     714:	016707b3          	add	a5,a4,s6
     718:	f41ff06f          	j	658 <__divsf3+0x1fc>
     71c:	000b8913          	mv	s2,s7
     720:	00200793          	li	a5,2
     724:	0af70063          	beq	a4,a5,7c4 <__divsf3+0x368>
     728:	00300793          	li	a5,3
     72c:	08f70463          	beq	a4,a5,7b4 <__divsf3+0x358>
     730:	00100793          	li	a5,1
     734:	f2f71ce3          	bne	a4,a5,66c <__divsf3+0x210>
     738:	00000793          	li	a5,0
     73c:	00000713          	li	a4,0
     740:	f71ff06f          	j	6b0 <__divsf3+0x254>
     744:	000a8913          	mv	s2,s5
     748:	000a0413          	mv	s0,s4
     74c:	000b0713          	mv	a4,s6
     750:	fd1ff06f          	j	720 <__divsf3+0x2c4>
     754:	04070c63          	beqz	a4,7ac <__divsf3+0x350>
     758:	fe600793          	li	a5,-26
     75c:	fcf74ee3          	blt	a4,a5,738 <__divsf3+0x2dc>
     760:	00100793          	li	a5,1
     764:	40e787b3          	sub	a5,a5,a4
     768:	09e98493          	addi	s1,s3,158
     76c:	00f457b3          	srl	a5,s0,a5
     770:	00941433          	sll	s0,s0,s1
     774:	00803433          	snez	s0,s0
     778:	0087e7b3          	or	a5,a5,s0
     77c:	0077f713          	andi	a4,a5,7
     780:	00070a63          	beqz	a4,794 <__divsf3+0x338>
     784:	00f7f713          	andi	a4,a5,15
     788:	00400693          	li	a3,4
     78c:	00d70463          	beq	a4,a3,794 <__divsf3+0x338>
     790:	00d787b3          	add	a5,a5,a3
     794:	00579713          	slli	a4,a5,0x5
     798:	0037d793          	srli	a5,a5,0x3
     79c:	fa0750e3          	bgez	a4,73c <__divsf3+0x2e0>
     7a0:	00000793          	li	a5,0
     7a4:	00100713          	li	a4,1
     7a8:	f09ff06f          	j	6b0 <__divsf3+0x254>
     7ac:	00100793          	li	a5,1
     7b0:	fb9ff06f          	j	768 <__divsf3+0x30c>
     7b4:	004007b7          	lui	a5,0x400
     7b8:	0ff00713          	li	a4,255
     7bc:	00000913          	li	s2,0
     7c0:	ef1ff06f          	j	6b0 <__divsf3+0x254>
     7c4:	00000793          	li	a5,0
     7c8:	0ff00713          	li	a4,255
     7cc:	ee5ff06f          	j	6b0 <__divsf3+0x254>

000007d0 <__gesf2>:
     7d0:	00800737          	lui	a4,0x800
     7d4:	fff70713          	addi	a4,a4,-1 # 7fffff <main+0x7fed6b>
     7d8:	00a77633          	and	a2,a4,a0
     7dc:	01755693          	srli	a3,a0,0x17
     7e0:	0ff6f693          	zext.b	a3,a3
     7e4:	01f55793          	srli	a5,a0,0x1f
     7e8:	00b77733          	and	a4,a4,a1
     7ec:	01f5d893          	srli	a7,a1,0x1f
     7f0:	00060863          	beqz	a2,800 <__gesf2+0x30>
     7f4:	f0168813          	addi	a6,a3,-255 # 20000f01 <main+0x1ffffc6d>
     7f8:	ffe00513          	li	a0,-2
     7fc:	06080463          	beqz	a6,864 <__gesf2+0x94>
     800:	0175d593          	srli	a1,a1,0x17
     804:	0ff5f593          	zext.b	a1,a1
     808:	00070863          	beqz	a4,818 <__gesf2+0x48>
     80c:	f0158813          	addi	a6,a1,-255 # 3ffff01 <main+0x3ffec6d>
     810:	ffe00513          	li	a0,-2
     814:	04080863          	beqz	a6,864 <__gesf2+0x94>
     818:	00c6e533          	or	a0,a3,a2
     81c:	00e5e833          	or	a6,a1,a4
     820:	00051a63          	bnez	a0,834 <__gesf2+0x64>
     824:	04080063          	beqz	a6,864 <__gesf2+0x94>
     828:	00189513          	slli	a0,a7,0x1
     82c:	fff50513          	addi	a0,a0,-1
     830:	00008067          	ret
     834:	00081863          	bnez	a6,844 <__gesf2+0x74>
     838:	40f007b3          	neg	a5,a5
     83c:	0017e513          	ori	a0,a5,1
     840:	00008067          	ret
     844:	ff179ae3          	bne	a5,a7,838 <__gesf2+0x68>
     848:	fed5c8e3          	blt	a1,a3,838 <__gesf2+0x68>
     84c:	00b6d663          	bge	a3,a1,858 <__gesf2+0x88>
     850:	00179513          	slli	a0,a5,0x1
     854:	fd9ff06f          	j	82c <__gesf2+0x5c>
     858:	fec760e3          	bltu	a4,a2,838 <__gesf2+0x68>
     85c:	00000513          	li	a0,0
     860:	fee668e3          	bltu	a2,a4,850 <__gesf2+0x80>
     864:	00008067          	ret

00000868 <__mulsf3>:
     868:	fe010113          	addi	sp,sp,-32
     86c:	01212823          	sw	s2,16(sp)
     870:	01755913          	srli	s2,a0,0x17
     874:	00912a23          	sw	s1,20(sp)
     878:	01312623          	sw	s3,12(sp)
     87c:	01512223          	sw	s5,4(sp)
     880:	00951493          	slli	s1,a0,0x9
     884:	00112e23          	sw	ra,28(sp)
     888:	00812c23          	sw	s0,24(sp)
     88c:	01412423          	sw	s4,8(sp)
     890:	0ff97913          	zext.b	s2,s2
     894:	00058a93          	mv	s5,a1
     898:	0094d493          	srli	s1,s1,0x9
     89c:	01f55993          	srli	s3,a0,0x1f
     8a0:	1a090a63          	beqz	s2,a54 <__mulsf3+0x1ec>
     8a4:	0ff00793          	li	a5,255
     8a8:	1cf90663          	beq	s2,a5,a74 <__mulsf3+0x20c>
     8ac:	00349493          	slli	s1,s1,0x3
     8b0:	040007b7          	lui	a5,0x4000
     8b4:	00f4e4b3          	or	s1,s1,a5
     8b8:	f8190913          	addi	s2,s2,-127
     8bc:	00000a13          	li	s4,0
     8c0:	017ad793          	srli	a5,s5,0x17
     8c4:	009a9413          	slli	s0,s5,0x9
     8c8:	0ff7f793          	zext.b	a5,a5
     8cc:	00945413          	srli	s0,s0,0x9
     8d0:	01fada93          	srli	s5,s5,0x1f
     8d4:	1a078e63          	beqz	a5,a90 <__mulsf3+0x228>
     8d8:	0ff00713          	li	a4,255
     8dc:	1ce78a63          	beq	a5,a4,ab0 <__mulsf3+0x248>
     8e0:	00341413          	slli	s0,s0,0x3
     8e4:	04000737          	lui	a4,0x4000
     8e8:	00e46433          	or	s0,s0,a4
     8ec:	f8178793          	addi	a5,a5,-127 # 3ffff81 <main+0x3ffeced>
     8f0:	00000713          	li	a4,0
     8f4:	00f90933          	add	s2,s2,a5
     8f8:	002a1793          	slli	a5,s4,0x2
     8fc:	00e7e7b3          	or	a5,a5,a4
     900:	00a00693          	li	a3,10
     904:	00190813          	addi	a6,s2,1
     908:	20f6c463          	blt	a3,a5,b10 <__mulsf3+0x2a8>
     90c:	00200613          	li	a2,2
     910:	0159c9b3          	xor	s3,s3,s5
     914:	00100693          	li	a3,1
     918:	1af64a63          	blt	a2,a5,acc <__mulsf3+0x264>
     91c:	fff78793          	addi	a5,a5,-1
     920:	1cf6f663          	bgeu	a3,a5,aec <__mulsf3+0x284>
     924:	01045793          	srli	a5,s0,0x10
     928:	01041413          	slli	s0,s0,0x10
     92c:	01049513          	slli	a0,s1,0x10
     930:	01045413          	srli	s0,s0,0x10
     934:	0104de13          	srli	t3,s1,0x10
     938:	01055513          	srli	a0,a0,0x10
     93c:	00040593          	mv	a1,s0
     940:	031000ef          	jal	1170 <__mulsi3>
     944:	00050893          	mv	a7,a0
     948:	01049513          	slli	a0,s1,0x10
     94c:	01055513          	srli	a0,a0,0x10
     950:	00078593          	mv	a1,a5
     954:	01d000ef          	jal	1170 <__mulsi3>
     958:	00050713          	mv	a4,a0
     95c:	00040593          	mv	a1,s0
     960:	000e0513          	mv	a0,t3
     964:	00d000ef          	jal	1170 <__mulsi3>
     968:	00050313          	mv	t1,a0
     96c:	00078593          	mv	a1,a5
     970:	000e0513          	mv	a0,t3
     974:	7fc000ef          	jal	1170 <__mulsi3>
     978:	0108d793          	srli	a5,a7,0x10
     97c:	00670733          	add	a4,a4,t1
     980:	00e787b3          	add	a5,a5,a4
     984:	0067f663          	bgeu	a5,t1,990 <__mulsf3+0x128>
     988:	00010737          	lui	a4,0x10
     98c:	00e50533          	add	a0,a0,a4
     990:	01089893          	slli	a7,a7,0x10
     994:	01079713          	slli	a4,a5,0x10
     998:	0108d893          	srli	a7,a7,0x10
     99c:	01170733          	add	a4,a4,a7
     9a0:	0107d793          	srli	a5,a5,0x10
     9a4:	00671413          	slli	s0,a4,0x6
     9a8:	00a787b3          	add	a5,a5,a0
     9ac:	01a75713          	srli	a4,a4,0x1a
     9b0:	00679793          	slli	a5,a5,0x6
     9b4:	00803433          	snez	s0,s0
     9b8:	00e46433          	or	s0,s0,a4
     9bc:	00479713          	slli	a4,a5,0x4
     9c0:	0087e433          	or	s0,a5,s0
     9c4:	16075463          	bgez	a4,b2c <__mulsf3+0x2c4>
     9c8:	00145793          	srli	a5,s0,0x1
     9cc:	00147413          	andi	s0,s0,1
     9d0:	0087e433          	or	s0,a5,s0
     9d4:	07f80513          	addi	a0,a6,127
     9d8:	14a05e63          	blez	a0,b34 <__mulsf3+0x2cc>
     9dc:	00747793          	andi	a5,s0,7
     9e0:	00078a63          	beqz	a5,9f4 <__mulsf3+0x18c>
     9e4:	00f47793          	andi	a5,s0,15
     9e8:	00400713          	li	a4,4
     9ec:	00e78463          	beq	a5,a4,9f4 <__mulsf3+0x18c>
     9f0:	00e40433          	add	s0,s0,a4
     9f4:	00441793          	slli	a5,s0,0x4
     9f8:	0007da63          	bgez	a5,a0c <__mulsf3+0x1a4>
     9fc:	f80007b7          	lui	a5,0xf8000
     a00:	fff78793          	addi	a5,a5,-1 # f7ffffff <_stack_top+0xd7feffff>
     a04:	00f47433          	and	s0,s0,a5
     a08:	08080513          	addi	a0,a6,128
     a0c:	0fe00793          	li	a5,254
     a10:	18a7ca63          	blt	a5,a0,ba4 <__mulsf3+0x33c>
     a14:	00345793          	srli	a5,s0,0x3
     a18:	01c12083          	lw	ra,28(sp)
     a1c:	01812403          	lw	s0,24(sp)
     a20:	00979793          	slli	a5,a5,0x9
     a24:	01751513          	slli	a0,a0,0x17
     a28:	0097d793          	srli	a5,a5,0x9
     a2c:	01f99993          	slli	s3,s3,0x1f
     a30:	00f56533          	or	a0,a0,a5
     a34:	01412483          	lw	s1,20(sp)
     a38:	01012903          	lw	s2,16(sp)
     a3c:	00812a03          	lw	s4,8(sp)
     a40:	00412a83          	lw	s5,4(sp)
     a44:	01356533          	or	a0,a0,s3
     a48:	00c12983          	lw	s3,12(sp)
     a4c:	02010113          	addi	sp,sp,32
     a50:	00008067          	ret
     a54:	02048863          	beqz	s1,a84 <__mulsf3+0x21c>
     a58:	00048513          	mv	a0,s1
     a5c:	7ec000ef          	jal	1248 <__clzsi2>
     a60:	ffb50793          	addi	a5,a0,-5
     a64:	f8a00913          	li	s2,-118
     a68:	00f494b3          	sll	s1,s1,a5
     a6c:	40a90933          	sub	s2,s2,a0
     a70:	e4dff06f          	j	8bc <__mulsf3+0x54>
     a74:	00200a13          	li	s4,2
     a78:	e40484e3          	beqz	s1,8c0 <__mulsf3+0x58>
     a7c:	00300a13          	li	s4,3
     a80:	e41ff06f          	j	8c0 <__mulsf3+0x58>
     a84:	00000913          	li	s2,0
     a88:	00100a13          	li	s4,1
     a8c:	e35ff06f          	j	8c0 <__mulsf3+0x58>
     a90:	02040863          	beqz	s0,ac0 <__mulsf3+0x258>
     a94:	00040513          	mv	a0,s0
     a98:	7b0000ef          	jal	1248 <__clzsi2>
     a9c:	ffb50793          	addi	a5,a0,-5
     aa0:	00f41433          	sll	s0,s0,a5
     aa4:	f8a00793          	li	a5,-118
     aa8:	40a787b3          	sub	a5,a5,a0
     aac:	e45ff06f          	j	8f0 <__mulsf3+0x88>
     ab0:	00200713          	li	a4,2
     ab4:	e40400e3          	beqz	s0,8f4 <__mulsf3+0x8c>
     ab8:	00300713          	li	a4,3
     abc:	e39ff06f          	j	8f4 <__mulsf3+0x8c>
     ac0:	00000793          	li	a5,0
     ac4:	00100713          	li	a4,1
     ac8:	e2dff06f          	j	8f4 <__mulsf3+0x8c>
     acc:	00f697b3          	sll	a5,a3,a5
     ad0:	5307f693          	andi	a3,a5,1328
     ad4:	04069663          	bnez	a3,b20 <__mulsf3+0x2b8>
     ad8:	2407f693          	andi	a3,a5,576
     adc:	0a069c63          	bnez	a3,b94 <__mulsf3+0x32c>
     ae0:	0887f793          	andi	a5,a5,136
     ae4:	e40780e3          	beqz	a5,924 <__mulsf3+0xbc>
     ae8:	000a8993          	mv	s3,s5
     aec:	00200793          	li	a5,2
     af0:	0af70a63          	beq	a4,a5,ba4 <__mulsf3+0x33c>
     af4:	00300793          	li	a5,3
     af8:	08f70e63          	beq	a4,a5,b94 <__mulsf3+0x32c>
     afc:	00100793          	li	a5,1
     b00:	ecf71ae3          	bne	a4,a5,9d4 <__mulsf3+0x16c>
     b04:	00000793          	li	a5,0
     b08:	00000513          	li	a0,0
     b0c:	f0dff06f          	j	a18 <__mulsf3+0x1b0>
     b10:	00f00693          	li	a3,15
     b14:	08d78063          	beq	a5,a3,b94 <__mulsf3+0x32c>
     b18:	00b00693          	li	a3,11
     b1c:	fcd786e3          	beq	a5,a3,ae8 <__mulsf3+0x280>
     b20:	00048413          	mv	s0,s1
     b24:	000a0713          	mv	a4,s4
     b28:	fc5ff06f          	j	aec <__mulsf3+0x284>
     b2c:	00090813          	mv	a6,s2
     b30:	ea5ff06f          	j	9d4 <__mulsf3+0x16c>
     b34:	04050c63          	beqz	a0,b8c <__mulsf3+0x324>
     b38:	fe600793          	li	a5,-26
     b3c:	fcf544e3          	blt	a0,a5,b04 <__mulsf3+0x29c>
     b40:	00100793          	li	a5,1
     b44:	40a787b3          	sub	a5,a5,a0
     b48:	09e80813          	addi	a6,a6,158
     b4c:	00f457b3          	srl	a5,s0,a5
     b50:	01041433          	sll	s0,s0,a6
     b54:	00803433          	snez	s0,s0
     b58:	0087e7b3          	or	a5,a5,s0
     b5c:	0077f713          	andi	a4,a5,7
     b60:	00070a63          	beqz	a4,b74 <__mulsf3+0x30c>
     b64:	00f7f713          	andi	a4,a5,15
     b68:	00400693          	li	a3,4
     b6c:	00d70463          	beq	a4,a3,b74 <__mulsf3+0x30c>
     b70:	00d787b3          	add	a5,a5,a3
     b74:	00579713          	slli	a4,a5,0x5
     b78:	0037d793          	srli	a5,a5,0x3
     b7c:	f80756e3          	bgez	a4,b08 <__mulsf3+0x2a0>
     b80:	00000793          	li	a5,0
     b84:	00100513          	li	a0,1
     b88:	e91ff06f          	j	a18 <__mulsf3+0x1b0>
     b8c:	00100793          	li	a5,1
     b90:	fb9ff06f          	j	b48 <__mulsf3+0x2e0>
     b94:	004007b7          	lui	a5,0x400
     b98:	0ff00513          	li	a0,255
     b9c:	00000993          	li	s3,0
     ba0:	e79ff06f          	j	a18 <__mulsf3+0x1b0>
     ba4:	00000793          	li	a5,0
     ba8:	0ff00513          	li	a0,255
     bac:	e6dff06f          	j	a18 <__mulsf3+0x1b0>

00000bb0 <__subsf3>:
     bb0:	00800737          	lui	a4,0x800
     bb4:	fff70713          	addi	a4,a4,-1 # 7fffff <main+0x7fed6b>
     bb8:	0175d693          	srli	a3,a1,0x17
     bbc:	00a777b3          	and	a5,a4,a0
     bc0:	0ff6f693          	zext.b	a3,a3
     bc4:	00b77733          	and	a4,a4,a1
     bc8:	ff010113          	addi	sp,sp,-16
     bcc:	00371713          	slli	a4,a4,0x3
     bd0:	f0168613          	addi	a2,a3,-255
     bd4:	00812423          	sw	s0,8(sp)
     bd8:	00912223          	sw	s1,4(sp)
     bdc:	01755413          	srli	s0,a0,0x17
     be0:	01f55493          	srli	s1,a0,0x1f
     be4:	00c03633          	snez	a2,a2
     be8:	00173513          	seqz	a0,a4
     bec:	00a66633          	or	a2,a2,a0
     bf0:	01f5d593          	srli	a1,a1,0x1f
     bf4:	0ff47413          	zext.b	s0,s0
     bf8:	00c5c5b3          	xor	a1,a1,a2
     bfc:	00112623          	sw	ra,12(sp)
     c00:	01212023          	sw	s2,0(sp)
     c04:	00379793          	slli	a5,a5,0x3
     c08:	40d40633          	sub	a2,s0,a3
     c0c:	1c959c63          	bne	a1,s1,de4 <__subsf3+0x234>
     c10:	08c05e63          	blez	a2,cac <__subsf3+0xfc>
     c14:	0ff00513          	li	a0,255
     c18:	02069663          	bnez	a3,c44 <__subsf3+0x94>
     c1c:	00070e63          	beqz	a4,c38 <__subsf3+0x88>
     c20:	fff60593          	addi	a1,a2,-1 # 3ffffff <main+0x3ffed6b>
     c24:	00059863          	bnez	a1,c34 <__subsf3+0x84>
     c28:	00e787b3          	add	a5,a5,a4
     c2c:	00100413          	li	s0,1
     c30:	04c0006f          	j	c7c <__subsf3+0xcc>
     c34:	02a61063          	bne	a2,a0,c54 <__subsf3+0xa4>
     c38:	00060413          	mv	s0,a2
     c3c:	00078713          	mv	a4,a5
     c40:	3880006f          	j	fc8 <__subsf3+0x418>
     c44:	fea40ce3          	beq	s0,a0,c3c <__subsf3+0x8c>
     c48:	040006b7          	lui	a3,0x4000
     c4c:	00d76733          	or	a4,a4,a3
     c50:	00060593          	mv	a1,a2
     c54:	01b00613          	li	a2,27
     c58:	00100693          	li	a3,1
     c5c:	00b64e63          	blt	a2,a1,c78 <__subsf3+0xc8>
     c60:	02000693          	li	a3,32
     c64:	40b686b3          	sub	a3,a3,a1
     c68:	00b75633          	srl	a2,a4,a1
     c6c:	00d71733          	sll	a4,a4,a3
     c70:	00e03733          	snez	a4,a4
     c74:	00e666b3          	or	a3,a2,a4
     c78:	00d787b3          	add	a5,a5,a3
     c7c:	00579713          	slli	a4,a5,0x5
     c80:	12075263          	bgez	a4,da4 <__subsf3+0x1f4>
     c84:	00140413          	addi	s0,s0,1
     c88:	0ff00713          	li	a4,255
     c8c:	36e40063          	beq	s0,a4,fec <__subsf3+0x43c>
     c90:	7e0006b7          	lui	a3,0x7e000
     c94:	0017d713          	srli	a4,a5,0x1
     c98:	fff68693          	addi	a3,a3,-1 # 7dffffff <_stack_top+0x5dfeffff>
     c9c:	00d77733          	and	a4,a4,a3
     ca0:	0017f793          	andi	a5,a5,1
     ca4:	00f767b3          	or	a5,a4,a5
     ca8:	0fc0006f          	j	da4 <__subsf3+0x1f4>
     cac:	06060463          	beqz	a2,d14 <__subsf3+0x164>
     cb0:	40868633          	sub	a2,a3,s0
     cb4:	0ff00513          	li	a0,255
     cb8:	00041e63          	bnez	s0,cd4 <__subsf3+0x124>
     cbc:	30078463          	beqz	a5,fc4 <__subsf3+0x414>
     cc0:	fff60593          	addi	a1,a2,-1
     cc4:	f60582e3          	beqz	a1,c28 <__subsf3+0x78>
     cc8:	00a61e63          	bne	a2,a0,ce4 <__subsf3+0x134>
     ccc:	0ff00413          	li	s0,255
     cd0:	2f80006f          	j	fc8 <__subsf3+0x418>
     cd4:	fea68ce3          	beq	a3,a0,ccc <__subsf3+0x11c>
     cd8:	040005b7          	lui	a1,0x4000
     cdc:	00b7e7b3          	or	a5,a5,a1
     ce0:	00060593          	mv	a1,a2
     ce4:	01b00513          	li	a0,27
     ce8:	00100613          	li	a2,1
     cec:	00b54e63          	blt	a0,a1,d08 <__subsf3+0x158>
     cf0:	02000613          	li	a2,32
     cf4:	40b60633          	sub	a2,a2,a1
     cf8:	00b7d533          	srl	a0,a5,a1
     cfc:	00c797b3          	sll	a5,a5,a2
     d00:	00f037b3          	snez	a5,a5
     d04:	00f56633          	or	a2,a0,a5
     d08:	00e607b3          	add	a5,a2,a4
     d0c:	00068413          	mv	s0,a3
     d10:	f6dff06f          	j	c7c <__subsf3+0xcc>
     d14:	00140693          	addi	a3,s0,1
     d18:	0fe6f613          	andi	a2,a3,254
     d1c:	06061a63          	bnez	a2,d90 <__subsf3+0x1e0>
     d20:	06041063          	bnez	s0,d80 <__subsf3+0x1d0>
     d24:	28078c63          	beqz	a5,fbc <__subsf3+0x40c>
     d28:	08070a63          	beqz	a4,dbc <__subsf3+0x20c>
     d2c:	00f70733          	add	a4,a4,a5
     d30:	00571793          	slli	a5,a4,0x5
     d34:	2807da63          	bgez	a5,fc8 <__subsf3+0x418>
     d38:	1f8007b7          	lui	a5,0x1f800
     d3c:	00375713          	srli	a4,a4,0x3
     d40:	fff78793          	addi	a5,a5,-1 # 1f7fffff <main+0x1f7fed6b>
     d44:	00f777b3          	and	a5,a4,a5
     d48:	00100413          	li	s0,1
     d4c:	0ff47413          	zext.b	s0,s0
     d50:	00979793          	slli	a5,a5,0x9
     d54:	01741413          	slli	s0,s0,0x17
     d58:	0097d793          	srli	a5,a5,0x9
     d5c:	00f46433          	or	s0,s0,a5
     d60:	01f49513          	slli	a0,s1,0x1f
     d64:	00c12083          	lw	ra,12(sp)
     d68:	00a46533          	or	a0,s0,a0
     d6c:	00812403          	lw	s0,8(sp)
     d70:	00412483          	lw	s1,4(sp)
     d74:	00012903          	lw	s2,0(sp)
     d78:	01010113          	addi	sp,sp,16
     d7c:	00008067          	ret
     d80:	f40786e3          	beqz	a5,ccc <__subsf3+0x11c>
     d84:	1a071e63          	bnez	a4,f40 <__subsf3+0x390>
     d88:	00078713          	mv	a4,a5
     d8c:	f41ff06f          	j	ccc <__subsf3+0x11c>
     d90:	0ff00613          	li	a2,255
     d94:	24c68a63          	beq	a3,a2,fe8 <__subsf3+0x438>
     d98:	00e78733          	add	a4,a5,a4
     d9c:	00175793          	srli	a5,a4,0x1
     da0:	00068413          	mv	s0,a3
     da4:	0077f713          	andi	a4,a5,7
     da8:	00070a63          	beqz	a4,dbc <__subsf3+0x20c>
     dac:	00f7f713          	andi	a4,a5,15
     db0:	00400693          	li	a3,4
     db4:	00d70463          	beq	a4,a3,dbc <__subsf3+0x20c>
     db8:	00d787b3          	add	a5,a5,a3
     dbc:	00579713          	slli	a4,a5,0x5
     dc0:	e6075ee3          	bgez	a4,c3c <__subsf3+0x8c>
     dc4:	00140413          	addi	s0,s0,1
     dc8:	0ff00713          	li	a4,255
     dcc:	22e40063          	beq	s0,a4,fec <__subsf3+0x43c>
     dd0:	1f800737          	lui	a4,0x1f800
     dd4:	0037d793          	srli	a5,a5,0x3
     dd8:	fff70713          	addi	a4,a4,-1 # 1f7fffff <main+0x1f7fed6b>
     ddc:	00e7f7b3          	and	a5,a5,a4
     de0:	f6dff06f          	j	d4c <__subsf3+0x19c>
     de4:	08c05063          	blez	a2,e64 <__subsf3+0x2b4>
     de8:	06069263          	bnez	a3,e4c <__subsf3+0x29c>
     dec:	e40706e3          	beqz	a4,c38 <__subsf3+0x88>
     df0:	fff60593          	addi	a1,a2,-1
     df4:	00059863          	bnez	a1,e04 <__subsf3+0x254>
     df8:	40e787b3          	sub	a5,a5,a4
     dfc:	00100413          	li	s0,1
     e00:	0340006f          	j	e34 <__subsf3+0x284>
     e04:	0ff00693          	li	a3,255
     e08:	e2d608e3          	beq	a2,a3,c38 <__subsf3+0x88>
     e0c:	01b00613          	li	a2,27
     e10:	00100693          	li	a3,1
     e14:	00b64e63          	blt	a2,a1,e30 <__subsf3+0x280>
     e18:	02000693          	li	a3,32
     e1c:	40b686b3          	sub	a3,a3,a1
     e20:	00b75633          	srl	a2,a4,a1
     e24:	00d71733          	sll	a4,a4,a3
     e28:	00e03733          	snez	a4,a4
     e2c:	00e666b3          	or	a3,a2,a4
     e30:	40d787b3          	sub	a5,a5,a3
     e34:	00579713          	slli	a4,a5,0x5
     e38:	f60756e3          	bgez	a4,da4 <__subsf3+0x1f4>
     e3c:	04000937          	lui	s2,0x4000
     e40:	fff90913          	addi	s2,s2,-1 # 3ffffff <main+0x3ffed6b>
     e44:	0127f933          	and	s2,a5,s2
     e48:	11c0006f          	j	f64 <__subsf3+0x3b4>
     e4c:	0ff00693          	li	a3,255
     e50:	ded406e3          	beq	s0,a3,c3c <__subsf3+0x8c>
     e54:	040006b7          	lui	a3,0x4000
     e58:	00d76733          	or	a4,a4,a3
     e5c:	00060593          	mv	a1,a2
     e60:	fadff06f          	j	e0c <__subsf3+0x25c>
     e64:	06060e63          	beqz	a2,ee0 <__subsf3+0x330>
     e68:	40868633          	sub	a2,a3,s0
     e6c:	02041663          	bnez	s0,e98 <__subsf3+0x2e8>
     e70:	02078063          	beqz	a5,e90 <__subsf3+0x2e0>
     e74:	fff60513          	addi	a0,a2,-1
     e78:	00051863          	bnez	a0,e88 <__subsf3+0x2d8>
     e7c:	40f707b3          	sub	a5,a4,a5
     e80:	00058493          	mv	s1,a1
     e84:	f79ff06f          	j	dfc <__subsf3+0x24c>
     e88:	0ff00813          	li	a6,255
     e8c:	03061063          	bne	a2,a6,eac <__subsf3+0x2fc>
     e90:	00060413          	mv	s0,a2
     e94:	0680006f          	j	efc <__subsf3+0x34c>
     e98:	0ff00513          	li	a0,255
     e9c:	14a68263          	beq	a3,a0,fe0 <__subsf3+0x430>
     ea0:	04000537          	lui	a0,0x4000
     ea4:	00a7e7b3          	or	a5,a5,a0
     ea8:	00060513          	mv	a0,a2
     eac:	01b00813          	li	a6,27
     eb0:	00100613          	li	a2,1
     eb4:	00a84e63          	blt	a6,a0,ed0 <__subsf3+0x320>
     eb8:	02000613          	li	a2,32
     ebc:	40a60633          	sub	a2,a2,a0
     ec0:	00a7d833          	srl	a6,a5,a0
     ec4:	00c797b3          	sll	a5,a5,a2
     ec8:	00f037b3          	snez	a5,a5
     ecc:	00f86633          	or	a2,a6,a5
     ed0:	40c707b3          	sub	a5,a4,a2
     ed4:	00068413          	mv	s0,a3
     ed8:	00058493          	mv	s1,a1
     edc:	f59ff06f          	j	e34 <__subsf3+0x284>
     ee0:	00140693          	addi	a3,s0,1
     ee4:	0fe6f693          	andi	a3,a3,254
     ee8:	06069463          	bnez	a3,f50 <__subsf3+0x3a0>
     eec:	04041863          	bnez	s0,f3c <__subsf3+0x38c>
     ef0:	00079a63          	bnez	a5,f04 <__subsf3+0x354>
     ef4:	00000493          	li	s1,0
     ef8:	e4070ae3          	beqz	a4,d4c <__subsf3+0x19c>
     efc:	00058493          	mv	s1,a1
     f00:	0c80006f          	j	fc8 <__subsf3+0x418>
     f04:	ea070ce3          	beqz	a4,dbc <__subsf3+0x20c>
     f08:	40e786b3          	sub	a3,a5,a4
     f0c:	00569613          	slli	a2,a3,0x5
     f10:	00065c63          	bgez	a2,f28 <__subsf3+0x378>
     f14:	40f707b3          	sub	a5,a4,a5
     f18:	00058493          	mv	s1,a1
     f1c:	00000413          	li	s0,0
     f20:	e20786e3          	beqz	a5,d4c <__subsf3+0x19c>
     f24:	e81ff06f          	j	da4 <__subsf3+0x1f4>
     f28:	00068713          	mv	a4,a3
     f2c:	08069e63          	bnez	a3,fc8 <__subsf3+0x418>
     f30:	00000793          	li	a5,0
     f34:	00000493          	li	s1,0
     f38:	e15ff06f          	j	d4c <__subsf3+0x19c>
     f3c:	e40794e3          	bnez	a5,d84 <__subsf3+0x1d4>
     f40:	00000493          	li	s1,0
     f44:	0ff00413          	li	s0,255
     f48:	004007b7          	lui	a5,0x400
     f4c:	e01ff06f          	j	d4c <__subsf3+0x19c>
     f50:	40e78933          	sub	s2,a5,a4
     f54:	00591693          	slli	a3,s2,0x5
     f58:	0406d263          	bgez	a3,f9c <__subsf3+0x3ec>
     f5c:	40f70933          	sub	s2,a4,a5
     f60:	00058493          	mv	s1,a1
     f64:	00090513          	mv	a0,s2
     f68:	2e0000ef          	jal	1248 <__clzsi2>
     f6c:	ffb50513          	addi	a0,a0,-5 # 3fffffb <main+0x3ffed67>
     f70:	00a91933          	sll	s2,s2,a0
     f74:	02854a63          	blt	a0,s0,fa8 <__subsf3+0x3f8>
     f78:	40850533          	sub	a0,a0,s0
     f7c:	00150513          	addi	a0,a0,1
     f80:	02000713          	li	a4,32
     f84:	40a70733          	sub	a4,a4,a0
     f88:	00a957b3          	srl	a5,s2,a0
     f8c:	00e91933          	sll	s2,s2,a4
     f90:	01203933          	snez	s2,s2
     f94:	0127e7b3          	or	a5,a5,s2
     f98:	f85ff06f          	j	f1c <__subsf3+0x36c>
     f9c:	fc0914e3          	bnez	s2,f64 <__subsf3+0x3b4>
     fa0:	00000413          	li	s0,0
     fa4:	f8dff06f          	j	f30 <__subsf3+0x380>
     fa8:	fc0007b7          	lui	a5,0xfc000
     fac:	fff78793          	addi	a5,a5,-1 # fbffffff <_stack_top+0xdbfeffff>
     fb0:	40a40433          	sub	s0,s0,a0
     fb4:	00f977b3          	and	a5,s2,a5
     fb8:	dedff06f          	j	da4 <__subsf3+0x1f4>
     fbc:	00070793          	mv	a5,a4
     fc0:	f5dff06f          	j	f1c <__subsf3+0x36c>
     fc4:	00060413          	mv	s0,a2
     fc8:	00375793          	srli	a5,a4,0x3
     fcc:	0ff00713          	li	a4,255
     fd0:	d6e41ee3          	bne	s0,a4,d4c <__subsf3+0x19c>
     fd4:	d6078ce3          	beqz	a5,d4c <__subsf3+0x19c>
     fd8:	004007b7          	lui	a5,0x400
     fdc:	f59ff06f          	j	f34 <__subsf3+0x384>
     fe0:	00068413          	mv	s0,a3
     fe4:	f19ff06f          	j	efc <__subsf3+0x34c>
     fe8:	00068413          	mv	s0,a3
     fec:	00000793          	li	a5,0
     ff0:	d5dff06f          	j	d4c <__subsf3+0x19c>

00000ff4 <__fixsfsi>:
     ff4:	00800637          	lui	a2,0x800
     ff8:	01755713          	srli	a4,a0,0x17
     ffc:	fff60793          	addi	a5,a2,-1 # 7fffff <main+0x7fed6b>
    1000:	0ff77713          	zext.b	a4,a4
    1004:	07e00593          	li	a1,126
    1008:	00a7f7b3          	and	a5,a5,a0
    100c:	01f55693          	srli	a3,a0,0x1f
    1010:	04e5d663          	bge	a1,a4,105c <__fixsfsi+0x68>
    1014:	09d00593          	li	a1,157
    1018:	00e5da63          	bge	a1,a4,102c <__fixsfsi+0x38>
    101c:	80000537          	lui	a0,0x80000
    1020:	fff50513          	addi	a0,a0,-1 # 7fffffff <_stack_top+0x5ffeffff>
    1024:	00a68533          	add	a0,a3,a0
    1028:	00008067          	ret
    102c:	00c7e533          	or	a0,a5,a2
    1030:	09500793          	li	a5,149
    1034:	00e7dc63          	bge	a5,a4,104c <__fixsfsi+0x58>
    1038:	f6a70713          	addi	a4,a4,-150
    103c:	00e51533          	sll	a0,a0,a4
    1040:	02068063          	beqz	a3,1060 <__fixsfsi+0x6c>
    1044:	40a00533          	neg	a0,a0
    1048:	00008067          	ret
    104c:	09600793          	li	a5,150
    1050:	40e787b3          	sub	a5,a5,a4
    1054:	00f55533          	srl	a0,a0,a5
    1058:	fe9ff06f          	j	1040 <__fixsfsi+0x4c>
    105c:	00000513          	li	a0,0
    1060:	00008067          	ret

00001064 <__floatsisf>:
    1064:	ff010113          	addi	sp,sp,-16
    1068:	00112623          	sw	ra,12(sp)
    106c:	00812423          	sw	s0,8(sp)
    1070:	00912223          	sw	s1,4(sp)
    1074:	0e050463          	beqz	a0,115c <__floatsisf+0xf8>
    1078:	41f55793          	srai	a5,a0,0x1f
    107c:	00a7c433          	xor	s0,a5,a0
    1080:	40f40433          	sub	s0,s0,a5
    1084:	01f55493          	srli	s1,a0,0x1f
    1088:	00040513          	mv	a0,s0
    108c:	1bc000ef          	jal	1248 <__clzsi2>
    1090:	09e00793          	li	a5,158
    1094:	00050693          	mv	a3,a0
    1098:	40a78533          	sub	a0,a5,a0
    109c:	00700793          	li	a5,7
    10a0:	04d7d063          	bge	a5,a3,10e0 <__floatsisf+0x7c>
    10a4:	00800793          	li	a5,8
    10a8:	0cf68063          	beq	a3,a5,1168 <__floatsisf+0x104>
    10ac:	ff868693          	addi	a3,a3,-8 # 3fffff8 <main+0x3ffed64>
    10b0:	00d41433          	sll	s0,s0,a3
    10b4:	00941413          	slli	s0,s0,0x9
    10b8:	00945413          	srli	s0,s0,0x9
    10bc:	01751513          	slli	a0,a0,0x17
    10c0:	00c12083          	lw	ra,12(sp)
    10c4:	00856533          	or	a0,a0,s0
    10c8:	00812403          	lw	s0,8(sp)
    10cc:	01f49493          	slli	s1,s1,0x1f
    10d0:	00956533          	or	a0,a0,s1
    10d4:	00412483          	lw	s1,4(sp)
    10d8:	01010113          	addi	sp,sp,16
    10dc:	00008067          	ret
    10e0:	00400793          	li	a5,4
    10e4:	00500713          	li	a4,5
    10e8:	06d7c263          	blt	a5,a3,114c <__floatsisf+0xe8>
    10ec:	01b68793          	addi	a5,a3,27
    10f0:	00f417b3          	sll	a5,s0,a5
    10f4:	40d70733          	sub	a4,a4,a3
    10f8:	00f037b3          	snez	a5,a5
    10fc:	00e45433          	srl	s0,s0,a4
    1100:	0087e433          	or	s0,a5,s0
    1104:	fc000737          	lui	a4,0xfc000
    1108:	fff70713          	addi	a4,a4,-1 # fbffffff <_stack_top+0xdbfeffff>
    110c:	00747793          	andi	a5,s0,7
    1110:	00e47733          	and	a4,s0,a4
    1114:	02078863          	beqz	a5,1144 <__floatsisf+0xe0>
    1118:	00f47413          	andi	s0,s0,15
    111c:	00400793          	li	a5,4
    1120:	02f40263          	beq	s0,a5,1144 <__floatsisf+0xe0>
    1124:	00f70733          	add	a4,a4,a5
    1128:	00571793          	slli	a5,a4,0x5
    112c:	0007dc63          	bgez	a5,1144 <__floatsisf+0xe0>
    1130:	fc0007b7          	lui	a5,0xfc000
    1134:	fff78793          	addi	a5,a5,-1 # fbffffff <_stack_top+0xdbfeffff>
    1138:	00f77733          	and	a4,a4,a5
    113c:	09f00793          	li	a5,159
    1140:	40d78533          	sub	a0,a5,a3
    1144:	00375413          	srli	s0,a4,0x3
    1148:	f6dff06f          	j	10b4 <__floatsisf+0x50>
    114c:	fae68ce3          	beq	a3,a4,1104 <__floatsisf+0xa0>
    1150:	ffb68793          	addi	a5,a3,-5
    1154:	00f41433          	sll	s0,s0,a5
    1158:	fadff06f          	j	1104 <__floatsisf+0xa0>
    115c:	00000493          	li	s1,0
    1160:	00000413          	li	s0,0
    1164:	f51ff06f          	j	10b4 <__floatsisf+0x50>
    1168:	09600513          	li	a0,150
    116c:	f49ff06f          	j	10b4 <__floatsisf+0x50>

00001170 <__mulsi3>:
    1170:	00050613          	mv	a2,a0
    1174:	00000513          	li	a0,0
    1178:	0015f693          	andi	a3,a1,1
    117c:	00068463          	beqz	a3,1184 <__mulsi3+0x14>
    1180:	00c50533          	add	a0,a0,a2
    1184:	0015d593          	srli	a1,a1,0x1
    1188:	00161613          	slli	a2,a2,0x1
    118c:	fe0596e3          	bnez	a1,1178 <__mulsi3+0x8>
    1190:	00008067          	ret

00001194 <__divsi3>:
    1194:	06054063          	bltz	a0,11f4 <__umodsi3+0x10>
    1198:	0605c663          	bltz	a1,1204 <__umodsi3+0x20>

0000119c <__hidden___udivsi3>:
    119c:	00058613          	mv	a2,a1
    11a0:	00050593          	mv	a1,a0
    11a4:	fff00513          	li	a0,-1
    11a8:	02060c63          	beqz	a2,11e0 <__hidden___udivsi3+0x44>
    11ac:	00100693          	li	a3,1
    11b0:	00b67a63          	bgeu	a2,a1,11c4 <__hidden___udivsi3+0x28>
    11b4:	00c05863          	blez	a2,11c4 <__hidden___udivsi3+0x28>
    11b8:	00161613          	slli	a2,a2,0x1
    11bc:	00169693          	slli	a3,a3,0x1
    11c0:	feb66ae3          	bltu	a2,a1,11b4 <__hidden___udivsi3+0x18>
    11c4:	00000513          	li	a0,0
    11c8:	00c5e663          	bltu	a1,a2,11d4 <__hidden___udivsi3+0x38>
    11cc:	40c585b3          	sub	a1,a1,a2
    11d0:	00d56533          	or	a0,a0,a3
    11d4:	0016d693          	srli	a3,a3,0x1
    11d8:	00165613          	srli	a2,a2,0x1
    11dc:	fe0696e3          	bnez	a3,11c8 <__hidden___udivsi3+0x2c>
    11e0:	00008067          	ret

000011e4 <__umodsi3>:
    11e4:	00008293          	mv	t0,ra
    11e8:	fb5ff0ef          	jal	119c <__hidden___udivsi3>
    11ec:	00058513          	mv	a0,a1
    11f0:	00028067          	jr	t0
    11f4:	40a00533          	neg	a0,a0
    11f8:	00b04863          	bgtz	a1,1208 <__umodsi3+0x24>
    11fc:	40b005b3          	neg	a1,a1
    1200:	f9dff06f          	j	119c <__hidden___udivsi3>
    1204:	40b005b3          	neg	a1,a1
    1208:	00008293          	mv	t0,ra
    120c:	f91ff0ef          	jal	119c <__hidden___udivsi3>
    1210:	40a00533          	neg	a0,a0
    1214:	00028067          	jr	t0

00001218 <__modsi3>:
    1218:	00008293          	mv	t0,ra
    121c:	0005ca63          	bltz	a1,1230 <__modsi3+0x18>
    1220:	00054c63          	bltz	a0,1238 <__modsi3+0x20>
    1224:	f79ff0ef          	jal	119c <__hidden___udivsi3>
    1228:	00058513          	mv	a0,a1
    122c:	00028067          	jr	t0
    1230:	40b005b3          	neg	a1,a1
    1234:	fe0558e3          	bgez	a0,1224 <__modsi3+0xc>
    1238:	40a00533          	neg	a0,a0
    123c:	f61ff0ef          	jal	119c <__hidden___udivsi3>
    1240:	40b00533          	neg	a0,a1
    1244:	00028067          	jr	t0

00001248 <__clzsi2>:
    1248:	000107b7          	lui	a5,0x10
    124c:	02f57a63          	bgeu	a0,a5,1280 <__clzsi2+0x38>
    1250:	10053793          	sltiu	a5,a0,256
    1254:	0017b793          	seqz	a5,a5
    1258:	00379793          	slli	a5,a5,0x3
    125c:	20001737          	lui	a4,0x20001
    1260:	00f55533          	srl	a0,a0,a5
    1264:	03c70713          	addi	a4,a4,60 # 2000103c <__clz_tab>
    1268:	00a70733          	add	a4,a4,a0
    126c:	00074503          	lbu	a0,0(a4)
    1270:	02000693          	li	a3,32
    1274:	40f686b3          	sub	a3,a3,a5
    1278:	40a68533          	sub	a0,a3,a0
    127c:	00008067          	ret
    1280:	01000737          	lui	a4,0x1000
    1284:	01800793          	li	a5,24
    1288:	fce57ae3          	bgeu	a0,a4,125c <__clzsi2+0x14>
    128c:	01000793          	li	a5,16
    1290:	fcdff06f          	j	125c <__clzsi2+0x14>

00001294 <main>:
    1294:	200017b7          	lui	a5,0x20001
    1298:	1407a503          	lw	a0,320(a5) # 20001140 <train_labels>
    129c:	f7010113          	addi	sp,sp,-144
    12a0:	08812423          	sw	s0,136(sp)
    12a4:	07312e23          	sw	s3,124(sp)
    12a8:	07512a23          	sw	s5,116(sp)
    12ac:	08112623          	sw	ra,140(sp)
    12b0:	08912223          	sw	s1,132(sp)
    12b4:	09212023          	sw	s2,128(sp)
    12b8:	07412c23          	sw	s4,120(sp)
    12bc:	07612823          	sw	s6,112(sp)
    12c0:	07712623          	sw	s7,108(sp)
    12c4:	07812423          	sw	s8,104(sp)
    12c8:	07912223          	sw	s9,100(sp)
    12cc:	07a12023          	sw	s10,96(sp)
    12d0:	05b12e23          	sw	s11,92(sp)
    12d4:	d21ff0ef          	jal	ff4 <__fixsfsi>
    12d8:	200007b7          	lui	a5,0x20000
    12dc:	10000713          	li	a4,256
    12e0:	00e7a023          	sw	a4,0(a5) # 20000000 <main+0x1fffed6c>
    12e4:	200027b7          	lui	a5,0x20002
    12e8:	ad478793          	addi	a5,a5,-1324 # 20001ad4 <activation_bits>
    12ec:	20002437          	lui	s0,0x20002
    12f0:	00f12623          	sw	a5,12(sp)
    12f4:	00050a93          	mv	s5,a0
    12f8:	00078993          	mv	s3,a5
    12fc:	ac042823          	sw	zero,-1328(s0) # 20001ad0 <bdot_count>
    1300:	20002737          	lui	a4,0x20002
    1304:	0007a023          	sw	zero,0(a5)
    1308:	b0470713          	addi	a4,a4,-1276 # 20001b04 <activation_bits+0x30>
    130c:	00478793          	addi	a5,a5,4
    1310:	fee798e3          	bne	a5,a4,1300 <main+0x6c>
    1314:	00900793          	li	a5,9
    1318:	0007802b          	.insn	4, 0x0007802b
    131c:	20002c37          	lui	s8,0x20002
    1320:	20002d37          	lui	s10,0x20002
    1324:	20002cb7          	lui	s9,0x20002
    1328:	20002737          	lui	a4,0x20002
    132c:	200027b7          	lui	a5,0x20002
    1330:	20001bb7          	lui	s7,0x20001
    1334:	01312a23          	sw	s3,20(sp)
    1338:	a00c0c13          	addi	s8,s8,-1536 # 20001a00 <l_b_conv_pool_bn_bst0_bn_std>
    133c:	aa0d0d13          	addi	s10,s10,-1376 # 20001aa0 <l_b_conv_pool_bn_bst0_bconv_b>
    1340:	a50c8c93          	addi	s9,s9,-1456 # 20001a50 <l_b_conv_pool_bn_bst0_bn_gamma>
    1344:	a7870e13          	addi	t3,a4,-1416 # 20001a78 <l_b_conv_pool_bn_bst0_bn_beta>
    1348:	a2878693          	addi	a3,a5,-1496 # 20001a28 <l_b_conv_pool_bn_bst0_bn_mean>
    134c:	190b8b93          	addi	s7,s7,400 # 20001190 <train_data>
    1350:	40000a37          	lui	s4,0x40000
    1354:	00300913          	li	s2,3
    1358:	300004b7          	lui	s1,0x30000
    135c:	00000993          	li	s3,0
    1360:	01812023          	sw	s8,0(sp)
    1364:	00098613          	mv	a2,s3
    1368:	00000d93          	li	s11,0
    136c:	00600b13          	li	s6,6
    1370:	01512c23          	sw	s5,24(sp)
    1374:	00000c13          	li	s8,0
    1378:	01312e23          	sw	s3,28(sp)
    137c:	000a0793          	mv	a5,s4
    1380:	00000993          	li	s3,0
    1384:	000b0a13          	mv	s4,s6
    1388:	00000a93          	li	s5,0
    138c:	00c12823          	sw	a2,16(sp)
    1390:	01c12223          	sw	t3,4(sp)
    1394:	00d12423          	sw	a3,8(sp)
    1398:	00078b13          	mv	s6,a5
    139c:	000d8513          	mv	a0,s11
    13a0:	000c0713          	mv	a4,s8
    13a4:	00000313          	li	t1,0
    13a8:	00151793          	slli	a5,a0,0x1
    13ac:	015787b3          	add	a5,a5,s5
    13b0:	00000613          	li	a2,0
    13b4:	40f00e33          	neg	t3,a5
    13b8:	00078693          	mv	a3,a5
    13bc:	00000e93          	li	t4,0
    13c0:	00000893          	li	a7,0
    13c4:	00068813          	mv	a6,a3
    13c8:	00368f13          	addi	t5,a3,3
    13cc:	00385593          	srli	a1,a6,0x3
    13d0:	00bb85b3          	add	a1,s7,a1
    13d4:	0005c583          	lbu	a1,0(a1) # 4000000 <main+0x3ffed6c>
    13d8:	fff84f93          	not	t6,a6
    13dc:	007fff93          	andi	t6,t6,7
    13e0:	41f5d5b3          	sra	a1,a1,t6
    13e4:	0015f593          	andi	a1,a1,1
    13e8:	01c80fb3          	add	t6,a6,t3
    13ec:	01f595b3          	sll	a1,a1,t6
    13f0:	00180813          	addi	a6,a6,1
    13f4:	00beeeb3          	or	t4,t4,a1
    13f8:	fde81ae3          	bne	a6,t5,13cc <main+0x138>
    13fc:	00188893          	addi	a7,a7,1
    1400:	01c68693          	addi	a3,a3,28
    1404:	fe7e0e13          	addi	t3,t3,-25
    1408:	fb289ee3          	bne	a7,s2,13c4 <main+0x130>
    140c:	01d4a023          	sw	t4,0(s1) # 30000000 <_stack_top+0xfff0000>
    1410:	ad042683          	lw	a3,-1328(s0)
    1414:	00168693          	addi	a3,a3,1
    1418:	acd42823          	sw	a3,-1328(s0)
    141c:	016496ab          	.insn	4, 0x016496ab
    1420:	00d37463          	bgeu	t1,a3,1428 <main+0x194>
    1424:	00068313          	mv	t1,a3
    1428:	00160613          	addi	a2,a2,1
    142c:	00278793          	addi	a5,a5,2
    1430:	f92612e3          	bne	a2,s2,13b4 <main+0x120>
    1434:	00270713          	addi	a4,a4,2
    1438:	01c50513          	addi	a0,a0,28
    143c:	f74716e3          	bne	a4,s4,13a8 <main+0x114>
    1440:	00131513          	slli	a0,t1,0x1
    1444:	ff750513          	addi	a0,a0,-9
    1448:	c1dff0ef          	jal	1064 <__floatsisf>
    144c:	000d2583          	lw	a1,0(s10)
    1450:	be1fe0ef          	jal	30 <__addsf3>
    1454:	00812783          	lw	a5,8(sp)
    1458:	0007a583          	lw	a1,0(a5)
    145c:	f54ff0ef          	jal	bb0 <__subsf3>
    1460:	00012783          	lw	a5,0(sp)
    1464:	0007a583          	lw	a1,0(a5)
    1468:	ff5fe0ef          	jal	45c <__divsf3>
    146c:	000ca583          	lw	a1,0(s9)
    1470:	bf8ff0ef          	jal	868 <__mulsf3>
    1474:	00412783          	lw	a5,4(sp)
    1478:	0007a583          	lw	a1,0(a5)
    147c:	bb5fe0ef          	jal	30 <__addsf3>
    1480:	00000593          	li	a1,0
    1484:	b4cff0ef          	jal	7d0 <__gesf2>
    1488:	02054863          	bltz	a0,14b8 <main+0x224>
    148c:	01012783          	lw	a5,16(sp)
    1490:	00c12683          	lw	a3,12(sp)
    1494:	00100613          	li	a2,1
    1498:	00f98733          	add	a4,s3,a5
    149c:	00575793          	srli	a5,a4,0x5
    14a0:	00279793          	slli	a5,a5,0x2
    14a4:	00f687b3          	add	a5,a3,a5
    14a8:	0007a683          	lw	a3,0(a5)
    14ac:	00e61733          	sll	a4,a2,a4
    14b0:	00d76733          	or	a4,a4,a3
    14b4:	00e7a023          	sw	a4,0(a5)
    14b8:	00198993          	addi	s3,s3,1
    14bc:	00600793          	li	a5,6
    14c0:	004a8a93          	addi	s5,s5,4
    14c4:	ecf99ce3          	bne	s3,a5,139c <main+0x108>
    14c8:	01012603          	lw	a2,16(sp)
    14cc:	000b0793          	mv	a5,s6
    14d0:	004a0b13          	addi	s6,s4,4 # 40000004 <_stack_top+0x1fff0004>
    14d4:	00078a13          	mv	s4,a5
    14d8:	01e00793          	li	a5,30
    14dc:	00412e03          	lw	t3,4(sp)
    14e0:	00812683          	lw	a3,8(sp)
    14e4:	00660613          	addi	a2,a2,6
    14e8:	004c0c13          	addi	s8,s8,4
    14ec:	038d8d93          	addi	s11,s11,56
    14f0:	e8fb16e3          	bne	s6,a5,137c <main+0xe8>
    14f4:	00012c03          	lw	s8,0(sp)
    14f8:	01c12983          	lw	s3,28(sp)
    14fc:	200027b7          	lui	a5,0x20002
    1500:	004c0c13          	addi	s8,s8,4
    1504:	a2878793          	addi	a5,a5,-1496 # 20001a28 <l_b_conv_pool_bn_bst0_bn_mean>
    1508:	01812a83          	lw	s5,24(sp)
    150c:	004d0d13          	addi	s10,s10,4
    1510:	004c8c93          	addi	s9,s9,4
    1514:	004e0e13          	addi	t3,t3,4
    1518:	00468693          	addi	a3,a3,4
    151c:	010a0a13          	addi	s4,s4,16
    1520:	02498993          	addi	s3,s3,36
    1524:	e2fc1ee3          	bne	s8,a5,1360 <main+0xcc>
    1528:	00c12783          	lw	a5,12(sp)
    152c:	01412983          	lw	s3,20(sp)
    1530:	30000737          	lui	a4,0x30000
    1534:	40f70733          	sub	a4,a4,a5
    1538:	0007a603          	lw	a2,0(a5)
    153c:	00f706b3          	add	a3,a4,a5
    1540:	00478793          	addi	a5,a5,4
    1544:	00c6a023          	sw	a2,0(a3)
    1548:	200026b7          	lui	a3,0x20002
    154c:	b0468693          	addi	a3,a3,-1276 # 20001b04 <activation_bits+0x30>
    1550:	fed794e3          	bne	a5,a3,1538 <main+0x2a4>
    1554:	16800793          	li	a5,360
    1558:	0007802b          	.insn	4, 0x0007802b
    155c:	200017b7          	lui	a5,0x20001
    1560:	13c7a783          	lw	a5,316(a5) # 2000113c <__clz_tab+0x100>
    1564:	20002d37          	lui	s10,0x20002
    1568:	20002cb7          	lui	s9,0x20002
    156c:	20002c37          	lui	s8,0x20002
    1570:	20002b37          	lui	s6,0x20002
    1574:	20002a37          	lui	s4,0x20002
    1578:	40000937          	lui	s2,0x40000
    157c:	01312223          	sw	s3,4(sp)
    1580:	00f12023          	sw	a5,0(sp)
    1584:	02810b93          	addi	s7,sp,40
    1588:	9d8d0d13          	addi	s10,s10,-1576 # 200019d8 <l_b_linear_bn_softmax1_bl_b>
    158c:	988c8c93          	addi	s9,s9,-1656 # 20001988 <l_b_linear_bn_softmax1_bn_gamma>
    1590:	9b0c0c13          	addi	s8,s8,-1616 # 200019b0 <l_b_linear_bn_softmax1_bn_beta>
    1594:	960b0b13          	addi	s6,s6,-1696 # 20001960 <l_b_linear_bn_softmax1_bn_mean>
    1598:	938a0a13          	addi	s4,s4,-1736 # 20001938 <l_b_linear_bn_softmax1_bn_std>
    159c:	0a090913          	addi	s2,s2,160 # 400000a0 <_stack_top+0x1fff00a0>
    15a0:	00000d93          	li	s11,0
    15a4:	30000637          	lui	a2,0x30000
    15a8:	00000993          	li	s3,0
    15ac:	ad042783          	lw	a5,-1328(s0)
    15b0:	00178793          	addi	a5,a5,1
    15b4:	acf42823          	sw	a5,-1328(s0)
    15b8:	0126152b          	.insn	4, 0x0126152b
    15bc:	00151513          	slli	a0,a0,0x1
    15c0:	e9850513          	addi	a0,a0,-360
    15c4:	aa1ff0ef          	jal	1064 <__floatsisf>
    15c8:	000d2583          	lw	a1,0(s10)
    15cc:	a65fe0ef          	jal	30 <__addsf3>
    15d0:	000b2583          	lw	a1,0(s6)
    15d4:	ddcff0ef          	jal	bb0 <__subsf3>
    15d8:	000a2583          	lw	a1,0(s4)
    15dc:	e81fe0ef          	jal	45c <__divsf3>
    15e0:	000ca583          	lw	a1,0(s9)
    15e4:	a84ff0ef          	jal	868 <__mulsf3>
    15e8:	000c2583          	lw	a1,0(s8)
    15ec:	a45fe0ef          	jal	30 <__addsf3>
    15f0:	00012583          	lw	a1,0(sp)
    15f4:	00aba023          	sw	a0,0(s7)
    15f8:	00050493          	mv	s1,a0
    15fc:	9d4ff0ef          	jal	7d0 <__gesf2>
    1600:	30000637          	lui	a2,0x30000
    1604:	00a00693          	li	a3,10
    1608:	00a05663          	blez	a0,1614 <main+0x380>
    160c:	00912023          	sw	s1,0(sp)
    1610:	000d8993          	mv	s3,s11
    1614:	001d8d93          	addi	s11,s11,1
    1618:	03090913          	addi	s2,s2,48
    161c:	004d0d13          	addi	s10,s10,4
    1620:	004c8c93          	addi	s9,s9,4
    1624:	004c0c13          	addi	s8,s8,4
    1628:	004b0b13          	addi	s6,s6,4
    162c:	004a0a13          	addi	s4,s4,4
    1630:	004b8b93          	addi	s7,s7,4
    1634:	f6dd9ce3          	bne	s11,a3,15ac <main+0x318>
    1638:	00098493          	mv	s1,s3
    163c:	200007b7          	lui	a5,0x20000
    1640:	00078713          	mv	a4,a5
    1644:	00412983          	lw	s3,4(sp)
    1648:	0097a223          	sw	s1,4(a5) # 20000004 <main+0x1fffed70>
    164c:	409a87b3          	sub	a5,s5,s1
    1650:	01572423          	sw	s5,8(a4) # 30000008 <_stack_top+0xfff0008>
    1654:	0017b793          	seqz	a5,a5
    1658:	00f72623          	sw	a5,12(a4)
    165c:	811ca737          	lui	a4,0x811ca
    1660:	dc570713          	addi	a4,a4,-571 # 811c9dc5 <_stack_top+0x611b9dc5>
    1664:	0009a783          	lw	a5,0(s3)
    1668:	00498993          	addi	s3,s3,4
    166c:	00f74733          	xor	a4,a4,a5
    1670:	00f71793          	slli	a5,a4,0xf
    1674:	00e787b3          	add	a5,a5,a4
    1678:	00279793          	slli	a5,a5,0x2
    167c:	40e787b3          	sub	a5,a5,a4
    1680:	00379793          	slli	a5,a5,0x3
    1684:	00e787b3          	add	a5,a5,a4
    1688:	00279793          	slli	a5,a5,0x2
    168c:	00e787b3          	add	a5,a5,a4
    1690:	00279793          	slli	a5,a5,0x2
    1694:	40e78733          	sub	a4,a5,a4
    1698:	200027b7          	lui	a5,0x20002
    169c:	b0478793          	addi	a5,a5,-1276 # 20001b04 <activation_bits+0x30>
    16a0:	fcf992e3          	bne	s3,a5,1664 <main+0x3d0>
    16a4:	200007b7          	lui	a5,0x20000
    16a8:	00e7a823          	sw	a4,16(a5) # 20000010 <main+0x1fffed7c>
    16ac:	ad042603          	lw	a2,-1328(s0)
    16b0:	200006b7          	lui	a3,0x20000
    16b4:	04068713          	addi	a4,a3,64 # 20000040 <main+0x1fffedac>
    16b8:	02810793          	addi	a5,sp,40
    16bc:	00c6aa23          	sw	a2,20(a3)
    16c0:	40f70733          	sub	a4,a4,a5
    16c4:	200006b7          	lui	a3,0x20000
    16c8:	0007a583          	lw	a1,0(a5)
    16cc:	00f70633          	add	a2,a4,a5
    16d0:	00478793          	addi	a5,a5,4
    16d4:	00b62023          	sw	a1,0(a2) # 30000000 <_stack_top+0xfff0000>
    16d8:	05010613          	addi	a2,sp,80
    16dc:	fef616e3          	bne	a2,a5,16c8 <main+0x434>
    16e0:	08c12083          	lw	ra,140(sp)
    16e4:	08812403          	lw	s0,136(sp)
    16e8:	00100513          	li	a0,1
    16ec:	00a6a023          	sw	a0,0(a3) # 20000000 <main+0x1fffed6c>
    16f0:	08412483          	lw	s1,132(sp)
    16f4:	08012903          	lw	s2,128(sp)
    16f8:	07c12983          	lw	s3,124(sp)
    16fc:	07812a03          	lw	s4,120(sp)
    1700:	07412a83          	lw	s5,116(sp)
    1704:	07012b03          	lw	s6,112(sp)
    1708:	06c12b83          	lw	s7,108(sp)
    170c:	06812c03          	lw	s8,104(sp)
    1710:	06412c83          	lw	s9,100(sp)
    1714:	06012d03          	lw	s10,96(sp)
    1718:	05c12d83          	lw	s11,92(sp)
    171c:	09010113          	addi	sp,sp,144
    1720:	00008067          	ret
