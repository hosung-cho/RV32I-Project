
/home/hosung/Ho/MSMLab_workspace/RV32I-Project/FPGA/BNN/260624_eBNN_Binary_MNIST/build_rv32i/main_ebnn_binary_mnist_rv32i.elf:     file format elf32-littleriscv


Disassembly of section .text:

00000000 <_start>:
       0:	20020117          	auipc	sp,0x20020
       4:	00010113          	mv	sp,sp
       8:	20002297          	auipc	t0,0x20002
       c:	cb828293          	addi	t0,t0,-840 # 20001cc0 <temp1>
      10:	20002317          	auipc	t1,0x20002
      14:	d2030313          	addi	t1,t1,-736 # 20001d30 <__bss_end>
      18:	00628863          	beq	t0,t1,28 <bss_clear_done>

0000001c <bss_clear_loop>:
      1c:	0002a023          	sw	zero,0(t0)
      20:	00428293          	addi	t0,t0,4
      24:	fe62ece3          	bltu	t0,t1,1c <bss_clear_loop>

00000028 <bss_clear_done>:
      28:	194030ef          	jal	31bc <main>

0000002c <halt_loop>:
      2c:	0000006f          	j	2c <halt_loop>

00000030 <__adddf3>:
      30:	00100737          	lui	a4,0x100
      34:	fe010113          	addi	sp,sp,-32 # 2001ffe0 <__bss_end+0x1e2b0>
      38:	fff70713          	addi	a4,a4,-1 # fffff <main+0xfce43>
      3c:	00b777b3          	and	a5,a4,a1
      40:	0146d893          	srli	a7,a3,0x14
      44:	00d77733          	and	a4,a4,a3
      48:	00812c23          	sw	s0,24(sp)
      4c:	0145d413          	srli	s0,a1,0x14
      50:	00371713          	slli	a4,a4,0x3
      54:	01d65813          	srli	a6,a2,0x1d
      58:	01212823          	sw	s2,16(sp)
      5c:	7ff47413          	andi	s0,s0,2047
      60:	01f5d913          	srli	s2,a1,0x1f
      64:	00379793          	slli	a5,a5,0x3
      68:	01d55593          	srli	a1,a0,0x1d
      6c:	7ff8f893          	andi	a7,a7,2047
      70:	00112e23          	sw	ra,28(sp)
      74:	00912a23          	sw	s1,20(sp)
      78:	01312623          	sw	s3,12(sp)
      7c:	01f6d693          	srli	a3,a3,0x1f
      80:	00f5e7b3          	or	a5,a1,a5
      84:	00e86833          	or	a6,a6,a4
      88:	00351513          	slli	a0,a0,0x3
      8c:	00361613          	slli	a2,a2,0x3
      90:	41140733          	sub	a4,s0,a7
      94:	7ff00593          	li	a1,2047
      98:	30d91463          	bne	s2,a3,3a0 <__adddf3+0x370>
      9c:	10e05263          	blez	a4,1a0 <__adddf3+0x170>
      a0:	02089c63          	bnez	a7,d8 <__adddf3+0xa8>
      a4:	00c86733          	or	a4,a6,a2
      a8:	02070463          	beqz	a4,d0 <__adddf3+0xa0>
      ac:	fff40713          	addi	a4,s0,-1
      b0:	00071e63          	bnez	a4,cc <__adddf3+0x9c>
      b4:	00c50633          	add	a2,a0,a2
      b8:	010787b3          	add	a5,a5,a6
      bc:	00a63533          	sltu	a0,a2,a0
      c0:	00a787b3          	add	a5,a5,a0
      c4:	00100413          	li	s0,1
      c8:	0600006f          	j	128 <__adddf3+0xf8>
      cc:	00b41c63          	bne	s0,a1,e4 <__adddf3+0xb4>
      d0:	00050613          	mv	a2,a0
      d4:	1d80006f          	j	2ac <__adddf3+0x27c>
      d8:	feb40ce3          	beq	s0,a1,d0 <__adddf3+0xa0>
      dc:	008006b7          	lui	a3,0x800
      e0:	00d86833          	or	a6,a6,a3
      e4:	03800693          	li	a3,56
      e8:	0ae6c663          	blt	a3,a4,194 <__adddf3+0x164>
      ec:	01f00693          	li	a3,31
      f0:	02000893          	li	a7,32
      f4:	06e6c863          	blt	a3,a4,164 <__adddf3+0x134>
      f8:	40e888b3          	sub	a7,a7,a4
      fc:	011816b3          	sll	a3,a6,a7
     100:	00e655b3          	srl	a1,a2,a4
     104:	011618b3          	sll	a7,a2,a7
     108:	00b6e6b3          	or	a3,a3,a1
     10c:	011038b3          	snez	a7,a7
     110:	0116e6b3          	or	a3,a3,a7
     114:	00e85733          	srl	a4,a6,a4
     118:	00a68633          	add	a2,a3,a0
     11c:	00f70733          	add	a4,a4,a5
     120:	00d636b3          	sltu	a3,a2,a3
     124:	00d707b3          	add	a5,a4,a3
     128:	00879713          	slli	a4,a5,0x8
     12c:	22075663          	bgez	a4,358 <__adddf3+0x328>
     130:	00140413          	addi	s0,s0,1
     134:	7ff00713          	li	a4,2047
     138:	60e40863          	beq	s0,a4,748 <__adddf3+0x718>
     13c:	ff800737          	lui	a4,0xff800
     140:	fff70713          	addi	a4,a4,-1 # ff7fffff <_stack_top+0xdf7dffff>
     144:	00e7f7b3          	and	a5,a5,a4
     148:	00165713          	srli	a4,a2,0x1
     14c:	00167613          	andi	a2,a2,1
     150:	00c76733          	or	a4,a4,a2
     154:	01f79613          	slli	a2,a5,0x1f
     158:	00e66633          	or	a2,a2,a4
     15c:	0017d793          	srli	a5,a5,0x1
     160:	1f80006f          	j	358 <__adddf3+0x328>
     164:	fe070693          	addi	a3,a4,-32
     168:	00d856b3          	srl	a3,a6,a3
     16c:	00000593          	li	a1,0
     170:	01170863          	beq	a4,a7,180 <__adddf3+0x150>
     174:	04000593          	li	a1,64
     178:	40e585b3          	sub	a1,a1,a4
     17c:	00b815b3          	sll	a1,a6,a1
     180:	00c5e5b3          	or	a1,a1,a2
     184:	00b035b3          	snez	a1,a1
     188:	00b6e6b3          	or	a3,a3,a1
     18c:	00000713          	li	a4,0
     190:	f89ff06f          	j	118 <__adddf3+0xe8>
     194:	00c866b3          	or	a3,a6,a2
     198:	00d036b3          	snez	a3,a3
     19c:	ff1ff06f          	j	18c <__adddf3+0x15c>
     1a0:	0c070263          	beqz	a4,264 <__adddf3+0x234>
     1a4:	40888733          	sub	a4,a7,s0
     1a8:	02041263          	bnez	s0,1cc <__adddf3+0x19c>
     1ac:	00a7e6b3          	or	a3,a5,a0
     1b0:	00068863          	beqz	a3,1c0 <__adddf3+0x190>
     1b4:	fff70693          	addi	a3,a4,-1
     1b8:	ee068ee3          	beqz	a3,b4 <__adddf3+0x84>
     1bc:	02b71063          	bne	a4,a1,1dc <__adddf3+0x1ac>
     1c0:	00080793          	mv	a5,a6
     1c4:	00070413          	mv	s0,a4
     1c8:	0e40006f          	j	2ac <__adddf3+0x27c>
     1cc:	58b88663          	beq	a7,a1,758 <__adddf3+0x728>
     1d0:	008006b7          	lui	a3,0x800
     1d4:	00d7e7b3          	or	a5,a5,a3
     1d8:	00070693          	mv	a3,a4
     1dc:	03800713          	li	a4,56
     1e0:	06d74c63          	blt	a4,a3,258 <__adddf3+0x228>
     1e4:	01f00713          	li	a4,31
     1e8:	02000313          	li	t1,32
     1ec:	02d74e63          	blt	a4,a3,228 <__adddf3+0x1f8>
     1f0:	40d30333          	sub	t1,t1,a3
     1f4:	00679733          	sll	a4,a5,t1
     1f8:	00d555b3          	srl	a1,a0,a3
     1fc:	00651333          	sll	t1,a0,t1
     200:	00b76733          	or	a4,a4,a1
     204:	00603333          	snez	t1,t1
     208:	00676733          	or	a4,a4,t1
     20c:	00d7d6b3          	srl	a3,a5,a3
     210:	00c70633          	add	a2,a4,a2
     214:	010686b3          	add	a3,a3,a6
     218:	00e63733          	sltu	a4,a2,a4
     21c:	00e687b3          	add	a5,a3,a4
     220:	00088413          	mv	s0,a7
     224:	f05ff06f          	j	128 <__adddf3+0xf8>
     228:	fe068713          	addi	a4,a3,-32 # 7fffe0 <main+0x7fce24>
     22c:	00e7d733          	srl	a4,a5,a4
     230:	00000593          	li	a1,0
     234:	00668863          	beq	a3,t1,244 <__adddf3+0x214>
     238:	04000593          	li	a1,64
     23c:	40d585b3          	sub	a1,a1,a3
     240:	00b795b3          	sll	a1,a5,a1
     244:	00a5e5b3          	or	a1,a1,a0
     248:	00b035b3          	snez	a1,a1
     24c:	00b76733          	or	a4,a4,a1
     250:	00000693          	li	a3,0
     254:	fbdff06f          	j	210 <__adddf3+0x1e0>
     258:	00a7e733          	or	a4,a5,a0
     25c:	00e03733          	snez	a4,a4
     260:	ff1ff06f          	j	250 <__adddf3+0x220>
     264:	00140713          	addi	a4,s0,1
     268:	7fe77693          	andi	a3,a4,2046
     26c:	0c069263          	bnez	a3,330 <__adddf3+0x300>
     270:	00a7e733          	or	a4,a5,a0
     274:	0a041463          	bnez	s0,31c <__adddf3+0x2ec>
     278:	4a070863          	beqz	a4,728 <__adddf3+0x6f8>
     27c:	00c86733          	or	a4,a6,a2
     280:	4a070863          	beqz	a4,730 <__adddf3+0x700>
     284:	00c50633          	add	a2,a0,a2
     288:	010787b3          	add	a5,a5,a6
     28c:	00a63533          	sltu	a0,a2,a0
     290:	00a787b3          	add	a5,a5,a0
     294:	00879713          	slli	a4,a5,0x8
     298:	32075a63          	bgez	a4,5cc <__adddf3+0x59c>
     29c:	ff800737          	lui	a4,0xff800
     2a0:	fff70713          	addi	a4,a4,-1 # ff7fffff <_stack_top+0xdf7dffff>
     2a4:	00e7f7b3          	and	a5,a5,a4
     2a8:	00100413          	li	s0,1
     2ac:	01d79713          	slli	a4,a5,0x1d
     2b0:	00365613          	srli	a2,a2,0x3
     2b4:	7ff00693          	li	a3,2047
     2b8:	00c76733          	or	a4,a4,a2
     2bc:	0037d793          	srli	a5,a5,0x3
     2c0:	00d41e63          	bne	s0,a3,2dc <__adddf3+0x2ac>
     2c4:	00f76733          	or	a4,a4,a5
     2c8:	00000793          	li	a5,0
     2cc:	00070863          	beqz	a4,2dc <__adddf3+0x2ac>
     2d0:	000807b7          	lui	a5,0x80
     2d4:	00000713          	li	a4,0
     2d8:	00000913          	li	s2,0
     2dc:	7ff47413          	andi	s0,s0,2047
     2e0:	00c79793          	slli	a5,a5,0xc
     2e4:	00c7d793          	srli	a5,a5,0xc
     2e8:	01441413          	slli	s0,s0,0x14
     2ec:	01f91593          	slli	a1,s2,0x1f
     2f0:	00f46433          	or	s0,s0,a5
     2f4:	01c12083          	lw	ra,28(sp)
     2f8:	00b467b3          	or	a5,s0,a1
     2fc:	01812403          	lw	s0,24(sp)
     300:	01412483          	lw	s1,20(sp)
     304:	01012903          	lw	s2,16(sp)
     308:	00c12983          	lw	s3,12(sp)
     30c:	00070513          	mv	a0,a4
     310:	00078593          	mv	a1,a5
     314:	02010113          	addi	sp,sp,32
     318:	00008067          	ret
     31c:	40070e63          	beqz	a4,738 <__adddf3+0x708>
     320:	00c86833          	or	a6,a6,a2
     324:	2c081c63          	bnez	a6,5fc <__adddf3+0x5cc>
     328:	00050613          	mv	a2,a0
     32c:	4100006f          	j	73c <__adddf3+0x70c>
     330:	40b70a63          	beq	a4,a1,744 <__adddf3+0x714>
     334:	00c50633          	add	a2,a0,a2
     338:	00a63533          	sltu	a0,a2,a0
     33c:	010787b3          	add	a5,a5,a6
     340:	00a787b3          	add	a5,a5,a0
     344:	01f79693          	slli	a3,a5,0x1f
     348:	00165613          	srli	a2,a2,0x1
     34c:	00c6e633          	or	a2,a3,a2
     350:	0017d793          	srli	a5,a5,0x1
     354:	00070413          	mv	s0,a4
     358:	00767713          	andi	a4,a2,7
     35c:	02070063          	beqz	a4,37c <__adddf3+0x34c>
     360:	00f67713          	andi	a4,a2,15
     364:	00400693          	li	a3,4
     368:	00d70a63          	beq	a4,a3,37c <__adddf3+0x34c>
     36c:	00d60733          	add	a4,a2,a3
     370:	00c736b3          	sltu	a3,a4,a2
     374:	00d787b3          	add	a5,a5,a3
     378:	00070613          	mv	a2,a4
     37c:	00879713          	slli	a4,a5,0x8
     380:	f20756e3          	bgez	a4,2ac <__adddf3+0x27c>
     384:	00140413          	addi	s0,s0,1
     388:	7ff00713          	li	a4,2047
     38c:	3ae40e63          	beq	s0,a4,748 <__adddf3+0x718>
     390:	ff800737          	lui	a4,0xff800
     394:	fff70713          	addi	a4,a4,-1 # ff7fffff <_stack_top+0xdf7dffff>
     398:	00e7f7b3          	and	a5,a5,a4
     39c:	f11ff06f          	j	2ac <__adddf3+0x27c>
     3a0:	0ee05063          	blez	a4,480 <__adddf3+0x450>
     3a4:	08089863          	bnez	a7,434 <__adddf3+0x404>
     3a8:	00c86733          	or	a4,a6,a2
     3ac:	d20702e3          	beqz	a4,d0 <__adddf3+0xa0>
     3b0:	fff40713          	addi	a4,s0,-1
     3b4:	00071e63          	bnez	a4,3d0 <__adddf3+0x3a0>
     3b8:	40c50633          	sub	a2,a0,a2
     3bc:	410787b3          	sub	a5,a5,a6
     3c0:	00c53533          	sltu	a0,a0,a2
     3c4:	40a787b3          	sub	a5,a5,a0
     3c8:	00100413          	li	s0,1
     3cc:	04c0006f          	j	418 <__adddf3+0x3e8>
     3d0:	d0b400e3          	beq	s0,a1,d0 <__adddf3+0xa0>
     3d4:	03800693          	li	a3,56
     3d8:	08e6ce63          	blt	a3,a4,474 <__adddf3+0x444>
     3dc:	01f00693          	li	a3,31
     3e0:	02000893          	li	a7,32
     3e4:	06e6c063          	blt	a3,a4,444 <__adddf3+0x414>
     3e8:	40e888b3          	sub	a7,a7,a4
     3ec:	011816b3          	sll	a3,a6,a7
     3f0:	00e655b3          	srl	a1,a2,a4
     3f4:	011618b3          	sll	a7,a2,a7
     3f8:	00b6e6b3          	or	a3,a3,a1
     3fc:	011038b3          	snez	a7,a7
     400:	0116e6b3          	or	a3,a3,a7
     404:	00e85733          	srl	a4,a6,a4
     408:	40d50633          	sub	a2,a0,a3
     40c:	40e78733          	sub	a4,a5,a4
     410:	00c53533          	sltu	a0,a0,a2
     414:	40a707b3          	sub	a5,a4,a0
     418:	00879713          	slli	a4,a5,0x8
     41c:	f2075ee3          	bgez	a4,358 <__adddf3+0x328>
     420:	008004b7          	lui	s1,0x800
     424:	fff48493          	addi	s1,s1,-1 # 7fffff <main+0x7fce43>
     428:	0097f4b3          	and	s1,a5,s1
     42c:	00060993          	mv	s3,a2
     430:	2140006f          	j	644 <__adddf3+0x614>
     434:	c8b40ee3          	beq	s0,a1,d0 <__adddf3+0xa0>
     438:	008006b7          	lui	a3,0x800
     43c:	00d86833          	or	a6,a6,a3
     440:	f95ff06f          	j	3d4 <__adddf3+0x3a4>
     444:	fe070693          	addi	a3,a4,-32
     448:	00d856b3          	srl	a3,a6,a3
     44c:	00000593          	li	a1,0
     450:	01170863          	beq	a4,a7,460 <__adddf3+0x430>
     454:	04000593          	li	a1,64
     458:	40e585b3          	sub	a1,a1,a4
     45c:	00b815b3          	sll	a1,a6,a1
     460:	00c5e5b3          	or	a1,a1,a2
     464:	00b035b3          	snez	a1,a1
     468:	00b6e6b3          	or	a3,a3,a1
     46c:	00000713          	li	a4,0
     470:	f99ff06f          	j	408 <__adddf3+0x3d8>
     474:	00c866b3          	or	a3,a6,a2
     478:	00d036b3          	snez	a3,a3
     47c:	ff1ff06f          	j	46c <__adddf3+0x43c>
     480:	0e070663          	beqz	a4,56c <__adddf3+0x53c>
     484:	40888333          	sub	t1,a7,s0
     488:	04041263          	bnez	s0,4cc <__adddf3+0x49c>
     48c:	00a7e733          	or	a4,a5,a0
     490:	02070663          	beqz	a4,4bc <__adddf3+0x48c>
     494:	fff30713          	addi	a4,t1,-1
     498:	02071063          	bnez	a4,4b8 <__adddf3+0x488>
     49c:	40a60533          	sub	a0,a2,a0
     4a0:	00a63733          	sltu	a4,a2,a0
     4a4:	40f807b3          	sub	a5,a6,a5
     4a8:	00050613          	mv	a2,a0
     4ac:	40e787b3          	sub	a5,a5,a4
     4b0:	00068913          	mv	s2,a3
     4b4:	f15ff06f          	j	3c8 <__adddf3+0x398>
     4b8:	02b31263          	bne	t1,a1,4dc <__adddf3+0x4ac>
     4bc:	00068913          	mv	s2,a3
     4c0:	00080793          	mv	a5,a6
     4c4:	00030413          	mv	s0,t1
     4c8:	de5ff06f          	j	2ac <__adddf3+0x27c>
     4cc:	28b88463          	beq	a7,a1,754 <__adddf3+0x724>
     4d0:	00800737          	lui	a4,0x800
     4d4:	00e7e7b3          	or	a5,a5,a4
     4d8:	00030713          	mv	a4,t1
     4dc:	03800593          	li	a1,56
     4e0:	08e5c063          	blt	a1,a4,560 <__adddf3+0x530>
     4e4:	01f00593          	li	a1,31
     4e8:	02000e13          	li	t3,32
     4ec:	04e5c263          	blt	a1,a4,530 <__adddf3+0x500>
     4f0:	40ee0e33          	sub	t3,t3,a4
     4f4:	01c795b3          	sll	a1,a5,t3
     4f8:	00e55333          	srl	t1,a0,a4
     4fc:	01c51e33          	sll	t3,a0,t3
     500:	0065e5b3          	or	a1,a1,t1
     504:	01c03e33          	snez	t3,t3
     508:	01c5e5b3          	or	a1,a1,t3
     50c:	00e7d733          	srl	a4,a5,a4
     510:	40b605b3          	sub	a1,a2,a1
     514:	00b637b3          	sltu	a5,a2,a1
     518:	40e80733          	sub	a4,a6,a4
     51c:	00058613          	mv	a2,a1
     520:	40f707b3          	sub	a5,a4,a5
     524:	00088413          	mv	s0,a7
     528:	00068913          	mv	s2,a3
     52c:	eedff06f          	j	418 <__adddf3+0x3e8>
     530:	fe070593          	addi	a1,a4,-32 # 7fffe0 <main+0x7fce24>
     534:	00b7d5b3          	srl	a1,a5,a1
     538:	00000313          	li	t1,0
     53c:	01c70863          	beq	a4,t3,54c <__adddf3+0x51c>
     540:	04000313          	li	t1,64
     544:	40e30333          	sub	t1,t1,a4
     548:	00679333          	sll	t1,a5,t1
     54c:	00a36333          	or	t1,t1,a0
     550:	00603333          	snez	t1,t1
     554:	0065e5b3          	or	a1,a1,t1
     558:	00000713          	li	a4,0
     55c:	fb5ff06f          	j	510 <__adddf3+0x4e0>
     560:	00a7e5b3          	or	a1,a5,a0
     564:	00b035b3          	snez	a1,a1
     568:	ff1ff06f          	j	558 <__adddf3+0x528>
     56c:	00140713          	addi	a4,s0,1
     570:	7fe77713          	andi	a4,a4,2046
     574:	0a071063          	bnez	a4,614 <__adddf3+0x5e4>
     578:	00a7e8b3          	or	a7,a5,a0
     57c:	00c86733          	or	a4,a6,a2
     580:	06041863          	bnez	s0,5f0 <__adddf3+0x5c0>
     584:	00089a63          	bnez	a7,598 <__adddf3+0x568>
     588:	00080793          	mv	a5,a6
     58c:	02071e63          	bnez	a4,5c8 <__adddf3+0x598>
     590:	00000913          	li	s2,0
     594:	1b40006f          	j	748 <__adddf3+0x718>
     598:	18070c63          	beqz	a4,730 <__adddf3+0x700>
     59c:	40c505b3          	sub	a1,a0,a2
     5a0:	00b538b3          	sltu	a7,a0,a1
     5a4:	41078733          	sub	a4,a5,a6
     5a8:	41170733          	sub	a4,a4,a7
     5ac:	00871893          	slli	a7,a4,0x8
     5b0:	0208d663          	bgez	a7,5dc <__adddf3+0x5ac>
     5b4:	40a60533          	sub	a0,a2,a0
     5b8:	00a63733          	sltu	a4,a2,a0
     5bc:	40f807b3          	sub	a5,a6,a5
     5c0:	00050613          	mv	a2,a0
     5c4:	40e787b3          	sub	a5,a5,a4
     5c8:	00068913          	mv	s2,a3
     5cc:	00f66733          	or	a4,a2,a5
     5d0:	1a070063          	beqz	a4,770 <__adddf3+0x740>
     5d4:	00000413          	li	s0,0
     5d8:	d81ff06f          	j	358 <__adddf3+0x328>
     5dc:	00e5e633          	or	a2,a1,a4
     5e0:	18060263          	beqz	a2,764 <__adddf3+0x734>
     5e4:	00070793          	mv	a5,a4
     5e8:	00058613          	mv	a2,a1
     5ec:	fe1ff06f          	j	5cc <__adddf3+0x59c>
     5f0:	00089e63          	bnez	a7,60c <__adddf3+0x5dc>
     5f4:	00068913          	mv	s2,a3
     5f8:	14071063          	bnez	a4,738 <__adddf3+0x708>
     5fc:	00000913          	li	s2,0
     600:	004007b7          	lui	a5,0x400
     604:	00000613          	li	a2,0
     608:	1340006f          	j	73c <__adddf3+0x70c>
     60c:	d0070ee3          	beqz	a4,328 <__adddf3+0x2f8>
     610:	fedff06f          	j	5fc <__adddf3+0x5cc>
     614:	40c50733          	sub	a4,a0,a2
     618:	00e535b3          	sltu	a1,a0,a4
     61c:	410784b3          	sub	s1,a5,a6
     620:	40b484b3          	sub	s1,s1,a1
     624:	00849593          	slli	a1,s1,0x8
     628:	00070993          	mv	s3,a4
     62c:	0605de63          	bgez	a1,6a8 <__adddf3+0x678>
     630:	40a609b3          	sub	s3,a2,a0
     634:	40f804b3          	sub	s1,a6,a5
     638:	01363633          	sltu	a2,a2,s3
     63c:	40c484b3          	sub	s1,s1,a2
     640:	00068913          	mv	s2,a3
     644:	06048e63          	beqz	s1,6c0 <__adddf3+0x690>
     648:	00048513          	mv	a0,s1
     64c:	3d0020ef          	jal	2a1c <__clzsi2>
     650:	ff850713          	addi	a4,a0,-8
     654:	02000793          	li	a5,32
     658:	40e787b3          	sub	a5,a5,a4
     65c:	00e494b3          	sll	s1,s1,a4
     660:	00f9d7b3          	srl	a5,s3,a5
     664:	0097e7b3          	or	a5,a5,s1
     668:	00e99633          	sll	a2,s3,a4
     66c:	0a874463          	blt	a4,s0,714 <__adddf3+0x6e4>
     670:	40870733          	sub	a4,a4,s0
     674:	00170513          	addi	a0,a4,1
     678:	01f00693          	li	a3,31
     67c:	02000593          	li	a1,32
     680:	06a6c263          	blt	a3,a0,6e4 <__adddf3+0x6b4>
     684:	40a585b3          	sub	a1,a1,a0
     688:	00b79733          	sll	a4,a5,a1
     68c:	00a656b3          	srl	a3,a2,a0
     690:	00b615b3          	sll	a1,a2,a1
     694:	00d76733          	or	a4,a4,a3
     698:	00b035b3          	snez	a1,a1
     69c:	00b76633          	or	a2,a4,a1
     6a0:	00a7d7b3          	srl	a5,a5,a0
     6a4:	f29ff06f          	j	5cc <__adddf3+0x59c>
     6a8:	00976633          	or	a2,a4,s1
     6ac:	f8061ce3          	bnez	a2,644 <__adddf3+0x614>
     6b0:	00000913          	li	s2,0
     6b4:	00000793          	li	a5,0
     6b8:	00000413          	li	s0,0
     6bc:	bf1ff06f          	j	2ac <__adddf3+0x27c>
     6c0:	00098513          	mv	a0,s3
     6c4:	358020ef          	jal	2a1c <__clzsi2>
     6c8:	01850713          	addi	a4,a0,24
     6cc:	01f00793          	li	a5,31
     6d0:	f8e7d2e3          	bge	a5,a4,654 <__adddf3+0x624>
     6d4:	ff850793          	addi	a5,a0,-8
     6d8:	00f997b3          	sll	a5,s3,a5
     6dc:	00000613          	li	a2,0
     6e0:	f8dff06f          	j	66c <__adddf3+0x63c>
     6e4:	fe170713          	addi	a4,a4,-31
     6e8:	00e7d733          	srl	a4,a5,a4
     6ec:	00000693          	li	a3,0
     6f0:	00b50863          	beq	a0,a1,700 <__adddf3+0x6d0>
     6f4:	04000693          	li	a3,64
     6f8:	40a686b3          	sub	a3,a3,a0
     6fc:	00d796b3          	sll	a3,a5,a3
     700:	00d666b3          	or	a3,a2,a3
     704:	00d036b3          	snez	a3,a3
     708:	00d76633          	or	a2,a4,a3
     70c:	00000793          	li	a5,0
     710:	ebdff06f          	j	5cc <__adddf3+0x59c>
     714:	40e40433          	sub	s0,s0,a4
     718:	ff800737          	lui	a4,0xff800
     71c:	fff70713          	addi	a4,a4,-1 # ff7fffff <_stack_top+0xdf7dffff>
     720:	00e7f7b3          	and	a5,a5,a4
     724:	c35ff06f          	j	358 <__adddf3+0x328>
     728:	00080793          	mv	a5,a6
     72c:	ea1ff06f          	j	5cc <__adddf3+0x59c>
     730:	00050613          	mv	a2,a0
     734:	e99ff06f          	j	5cc <__adddf3+0x59c>
     738:	00080793          	mv	a5,a6
     73c:	00058413          	mv	s0,a1
     740:	b6dff06f          	j	2ac <__adddf3+0x27c>
     744:	00070413          	mv	s0,a4
     748:	00000793          	li	a5,0
     74c:	00000613          	li	a2,0
     750:	b5dff06f          	j	2ac <__adddf3+0x27c>
     754:	00068913          	mv	s2,a3
     758:	00080793          	mv	a5,a6
     75c:	00088413          	mv	s0,a7
     760:	b4dff06f          	j	2ac <__adddf3+0x27c>
     764:	00000913          	li	s2,0
     768:	00000793          	li	a5,0
     76c:	b41ff06f          	j	2ac <__adddf3+0x27c>
     770:	00000793          	li	a5,0
     774:	00000613          	li	a2,0
     778:	f41ff06f          	j	6b8 <__adddf3+0x688>

0000077c <__gedf2>:
     77c:	0145d893          	srli	a7,a1,0x14
     780:	00100737          	lui	a4,0x100
     784:	fff70713          	addi	a4,a4,-1 # fffff <main+0xfce43>
     788:	0146d813          	srli	a6,a3,0x14
     78c:	7ff8f893          	andi	a7,a7,2047
     790:	7ff00793          	li	a5,2047
     794:	00b77333          	and	t1,a4,a1
     798:	7ff87813          	andi	a6,a6,2047
     79c:	00d77733          	and	a4,a4,a3
     7a0:	01f5d593          	srli	a1,a1,0x1f
     7a4:	01f6d693          	srli	a3,a3,0x1f
     7a8:	02f88063          	beq	a7,a5,7c8 <__gedf2+0x4c>
     7ac:	7ff00e13          	li	t3,2047
     7b0:	00080793          	mv	a5,a6
     7b4:	03c81463          	bne	a6,t3,7dc <__gedf2+0x60>
     7b8:	00c76e33          	or	t3,a4,a2
     7bc:	020e0063          	beqz	t3,7dc <__gedf2+0x60>
     7c0:	ffe00793          	li	a5,-2
     7c4:	0100006f          	j	7d4 <__gedf2+0x58>
     7c8:	00a36e33          	or	t3,t1,a0
     7cc:	ffe00793          	li	a5,-2
     7d0:	fc0e0ee3          	beqz	t3,7ac <__gedf2+0x30>
     7d4:	00078513          	mv	a0,a5
     7d8:	00008067          	ret
     7dc:	00000e13          	li	t3,0
     7e0:	00089663          	bnez	a7,7ec <__gedf2+0x70>
     7e4:	00a36e33          	or	t3,t1,a0
     7e8:	001e3e13          	seqz	t3,t3
     7ec:	04081863          	bnez	a6,83c <__gedf2+0xc0>
     7f0:	00c76eb3          	or	t4,a4,a2
     7f4:	000e0a63          	beqz	t3,808 <__gedf2+0x8c>
     7f8:	fc0e8ee3          	beqz	t4,7d4 <__gedf2+0x58>
     7fc:	00169793          	slli	a5,a3,0x1
     800:	fff78793          	addi	a5,a5,-1 # 3fffff <main+0x3fce43>
     804:	fd1ff06f          	j	7d4 <__gedf2+0x58>
     808:	020e9c63          	bnez	t4,840 <__gedf2+0xc4>
     80c:	40b005b3          	neg	a1,a1
     810:	0015e793          	ori	a5,a1,1
     814:	fc1ff06f          	j	7d4 <__gedf2+0x58>
     818:	ff08c2e3          	blt	a7,a6,7fc <__gedf2+0x80>
     81c:	fe6768e3          	bltu	a4,t1,80c <__gedf2+0x90>
     820:	00a67463          	bgeu	a2,a0,828 <__gedf2+0xac>
     824:	fee304e3          	beq	t1,a4,80c <__gedf2+0x90>
     828:	00c56663          	bltu	a0,a2,834 <__gedf2+0xb8>
     82c:	00000793          	li	a5,0
     830:	fae372e3          	bgeu	t1,a4,7d4 <__gedf2+0x58>
     834:	00159793          	slli	a5,a1,0x1
     838:	fc9ff06f          	j	800 <__gedf2+0x84>
     83c:	fc0e10e3          	bnez	t3,7fc <__gedf2+0x80>
     840:	fcb696e3          	bne	a3,a1,80c <__gedf2+0x90>
     844:	fd185ae3          	bge	a6,a7,818 <__gedf2+0x9c>
     848:	40d006b3          	neg	a3,a3
     84c:	0016e793          	ori	a5,a3,1
     850:	f85ff06f          	j	7d4 <__gedf2+0x58>

00000854 <__muldf3>:
     854:	fd010113          	addi	sp,sp,-48
     858:	01312e23          	sw	s3,28(sp)
     85c:	0145d993          	srli	s3,a1,0x14
     860:	02812423          	sw	s0,40(sp)
     864:	02912223          	sw	s1,36(sp)
     868:	01412c23          	sw	s4,24(sp)
     86c:	01512a23          	sw	s5,20(sp)
     870:	01712623          	sw	s7,12(sp)
     874:	00c59493          	slli	s1,a1,0xc
     878:	02112623          	sw	ra,44(sp)
     87c:	03212023          	sw	s2,32(sp)
     880:	01612823          	sw	s6,16(sp)
     884:	7ff9f993          	andi	s3,s3,2047
     888:	00050413          	mv	s0,a0
     88c:	00060b93          	mv	s7,a2
     890:	00068a13          	mv	s4,a3
     894:	00c4d493          	srli	s1,s1,0xc
     898:	01f5da93          	srli	s5,a1,0x1f
     89c:	0c098263          	beqz	s3,960 <__muldf3+0x10c>
     8a0:	7ff00793          	li	a5,2047
     8a4:	12f98463          	beq	s3,a5,9cc <__muldf3+0x178>
     8a8:	00349493          	slli	s1,s1,0x3
     8ac:	01d55793          	srli	a5,a0,0x1d
     8b0:	0097e7b3          	or	a5,a5,s1
     8b4:	008004b7          	lui	s1,0x800
     8b8:	0097e4b3          	or	s1,a5,s1
     8bc:	00351913          	slli	s2,a0,0x3
     8c0:	c0198993          	addi	s3,s3,-1023
     8c4:	00000b13          	li	s6,0
     8c8:	014a5793          	srli	a5,s4,0x14
     8cc:	00ca1413          	slli	s0,s4,0xc
     8d0:	7ff7f793          	andi	a5,a5,2047
     8d4:	00c45413          	srli	s0,s0,0xc
     8d8:	01fa5a13          	srli	s4,s4,0x1f
     8dc:	12078063          	beqz	a5,9fc <__muldf3+0x1a8>
     8e0:	7ff00713          	li	a4,2047
     8e4:	18e78463          	beq	a5,a4,a6c <__muldf3+0x218>
     8e8:	00341413          	slli	s0,s0,0x3
     8ec:	01dbd713          	srli	a4,s7,0x1d
     8f0:	00876733          	or	a4,a4,s0
     8f4:	00800437          	lui	s0,0x800
     8f8:	00876433          	or	s0,a4,s0
     8fc:	003b9593          	slli	a1,s7,0x3
     900:	c0178793          	addi	a5,a5,-1023
     904:	00000693          	li	a3,0
     908:	00f989b3          	add	s3,s3,a5
     90c:	002b1793          	slli	a5,s6,0x2
     910:	00d7e7b3          	or	a5,a5,a3
     914:	00a00713          	li	a4,10
     918:	00198893          	addi	a7,s3,1
     91c:	1af74263          	blt	a4,a5,ac0 <__muldf3+0x26c>
     920:	00200613          	li	a2,2
     924:	014ac833          	xor	a6,s5,s4
     928:	00100713          	li	a4,1
     92c:	16f64863          	blt	a2,a5,a9c <__muldf3+0x248>
     930:	fff78793          	addi	a5,a5,-1
     934:	1af76663          	bltu	a4,a5,ae0 <__muldf3+0x28c>
     938:	00068b13          	mv	s6,a3
     93c:	00200793          	li	a5,2
     940:	58fb0863          	beq	s6,a5,ed0 <__muldf3+0x67c>
     944:	00300793          	li	a5,3
     948:	56fb0e63          	beq	s6,a5,ec4 <__muldf3+0x670>
     94c:	00100793          	li	a5,1
     950:	40fb1063          	bne	s6,a5,d50 <__muldf3+0x4fc>
     954:	00000413          	li	s0,0
     958:	00000713          	li	a4,0
     95c:	5180006f          	j	e74 <__muldf3+0x620>
     960:	00a4e933          	or	s2,s1,a0
     964:	06090e63          	beqz	s2,9e0 <__muldf3+0x18c>
     968:	04048263          	beqz	s1,9ac <__muldf3+0x158>
     96c:	00048513          	mv	a0,s1
     970:	0ac020ef          	jal	2a1c <__clzsi2>
     974:	00050713          	mv	a4,a0
     978:	ff550693          	addi	a3,a0,-11
     97c:	01d00793          	li	a5,29
     980:	ff870613          	addi	a2,a4,-8
     984:	40d787b3          	sub	a5,a5,a3
     988:	00c494b3          	sll	s1,s1,a2
     98c:	00f457b3          	srl	a5,s0,a5
     990:	0097e7b3          	or	a5,a5,s1
     994:	00c414b3          	sll	s1,s0,a2
     998:	c0d00993          	li	s3,-1011
     99c:	00048913          	mv	s2,s1
     9a0:	40e989b3          	sub	s3,s3,a4
     9a4:	00078493          	mv	s1,a5
     9a8:	f1dff06f          	j	8c4 <__muldf3+0x70>
     9ac:	070020ef          	jal	2a1c <__clzsi2>
     9b0:	01550693          	addi	a3,a0,21
     9b4:	01c00793          	li	a5,28
     9b8:	02050713          	addi	a4,a0,32
     9bc:	fcd7d0e3          	bge	a5,a3,97c <__muldf3+0x128>
     9c0:	ff850793          	addi	a5,a0,-8
     9c4:	00f417b3          	sll	a5,s0,a5
     9c8:	fd1ff06f          	j	998 <__muldf3+0x144>
     9cc:	00a4e933          	or	s2,s1,a0
     9d0:	02091063          	bnez	s2,9f0 <__muldf3+0x19c>
     9d4:	00000493          	li	s1,0
     9d8:	00200b13          	li	s6,2
     9dc:	eedff06f          	j	8c8 <__muldf3+0x74>
     9e0:	00000493          	li	s1,0
     9e4:	00000993          	li	s3,0
     9e8:	00100b13          	li	s6,1
     9ec:	eddff06f          	j	8c8 <__muldf3+0x74>
     9f0:	00050913          	mv	s2,a0
     9f4:	00300b13          	li	s6,3
     9f8:	ed1ff06f          	j	8c8 <__muldf3+0x74>
     9fc:	017465b3          	or	a1,s0,s7
     a00:	08058063          	beqz	a1,a80 <__muldf3+0x22c>
     a04:	04040263          	beqz	s0,a48 <__muldf3+0x1f4>
     a08:	00040513          	mv	a0,s0
     a0c:	010020ef          	jal	2a1c <__clzsi2>
     a10:	00050693          	mv	a3,a0
     a14:	ff550793          	addi	a5,a0,-11
     a18:	01d00713          	li	a4,29
     a1c:	ff868613          	addi	a2,a3,-8 # 7ffff8 <main+0x7fce3c>
     a20:	40f70733          	sub	a4,a4,a5
     a24:	00c41433          	sll	s0,s0,a2
     a28:	00ebd733          	srl	a4,s7,a4
     a2c:	00876733          	or	a4,a4,s0
     a30:	00cb9433          	sll	s0,s7,a2
     a34:	c0d00793          	li	a5,-1011
     a38:	00040593          	mv	a1,s0
     a3c:	40d787b3          	sub	a5,a5,a3
     a40:	00070413          	mv	s0,a4
     a44:	ec1ff06f          	j	904 <__muldf3+0xb0>
     a48:	000b8513          	mv	a0,s7
     a4c:	7d1010ef          	jal	2a1c <__clzsi2>
     a50:	01550793          	addi	a5,a0,21
     a54:	01c00713          	li	a4,28
     a58:	02050693          	addi	a3,a0,32
     a5c:	faf75ee3          	bge	a4,a5,a18 <__muldf3+0x1c4>
     a60:	ff850713          	addi	a4,a0,-8
     a64:	00eb9733          	sll	a4,s7,a4
     a68:	fcdff06f          	j	a34 <__muldf3+0x1e0>
     a6c:	017465b3          	or	a1,s0,s7
     a70:	02059063          	bnez	a1,a90 <__muldf3+0x23c>
     a74:	00000413          	li	s0,0
     a78:	00200693          	li	a3,2
     a7c:	e8dff06f          	j	908 <__muldf3+0xb4>
     a80:	00000413          	li	s0,0
     a84:	00000793          	li	a5,0
     a88:	00100693          	li	a3,1
     a8c:	e7dff06f          	j	908 <__muldf3+0xb4>
     a90:	000b8593          	mv	a1,s7
     a94:	00300693          	li	a3,3
     a98:	e71ff06f          	j	908 <__muldf3+0xb4>
     a9c:	00f717b3          	sll	a5,a4,a5
     aa0:	5307f713          	andi	a4,a5,1328
     aa4:	02071863          	bnez	a4,ad4 <__muldf3+0x280>
     aa8:	2407f613          	andi	a2,a5,576
     aac:	40061463          	bnez	a2,eb4 <__muldf3+0x660>
     ab0:	0887f793          	andi	a5,a5,136
     ab4:	02078663          	beqz	a5,ae0 <__muldf3+0x28c>
     ab8:	000a0813          	mv	a6,s4
     abc:	e7dff06f          	j	938 <__muldf3+0xe4>
     ac0:	00f00713          	li	a4,15
     ac4:	40e78063          	beq	a5,a4,ec4 <__muldf3+0x670>
     ac8:	00b00713          	li	a4,11
     acc:	000a8813          	mv	a6,s5
     ad0:	fee784e3          	beq	a5,a4,ab8 <__muldf3+0x264>
     ad4:	00048413          	mv	s0,s1
     ad8:	00090593          	mv	a1,s2
     adc:	e61ff06f          	j	93c <__muldf3+0xe8>
     ae0:	01095793          	srli	a5,s2,0x10
     ae4:	01059f13          	slli	t5,a1,0x10
     ae8:	01091913          	slli	s2,s2,0x10
     aec:	01095913          	srli	s2,s2,0x10
     af0:	010f5f13          	srli	t5,t5,0x10
     af4:	0105de93          	srli	t4,a1,0x10
     af8:	00090513          	mv	a0,s2
     afc:	000f0593          	mv	a1,t5
     b00:	645010ef          	jal	2944 <__mulsi3>
     b04:	00050e13          	mv	t3,a0
     b08:	000e8593          	mv	a1,t4
     b0c:	00090513          	mv	a0,s2
     b10:	635010ef          	jal	2944 <__mulsi3>
     b14:	00050f93          	mv	t6,a0
     b18:	000f0593          	mv	a1,t5
     b1c:	00078513          	mv	a0,a5
     b20:	625010ef          	jal	2944 <__mulsi3>
     b24:	00050293          	mv	t0,a0
     b28:	000e8593          	mv	a1,t4
     b2c:	00078513          	mv	a0,a5
     b30:	615010ef          	jal	2944 <__mulsi3>
     b34:	010e5313          	srli	t1,t3,0x10
     b38:	005f8fb3          	add	t6,t6,t0
     b3c:	01f30333          	add	t1,t1,t6
     b40:	00050713          	mv	a4,a0
     b44:	00537663          	bgeu	t1,t0,b50 <__muldf3+0x2fc>
     b48:	000106b7          	lui	a3,0x10
     b4c:	00d50733          	add	a4,a0,a3
     b50:	010e1e13          	slli	t3,t3,0x10
     b54:	01035393          	srli	t2,t1,0x10
     b58:	010e5e13          	srli	t3,t3,0x10
     b5c:	01031313          	slli	t1,t1,0x10
     b60:	01c30333          	add	t1,t1,t3
     b64:	01045e13          	srli	t3,s0,0x10
     b68:	01041413          	slli	s0,s0,0x10
     b6c:	01045413          	srli	s0,s0,0x10
     b70:	00090513          	mv	a0,s2
     b74:	00040593          	mv	a1,s0
     b78:	5cd010ef          	jal	2944 <__mulsi3>
     b7c:	00050293          	mv	t0,a0
     b80:	000e0593          	mv	a1,t3
     b84:	00090513          	mv	a0,s2
     b88:	5bd010ef          	jal	2944 <__mulsi3>
     b8c:	00050f93          	mv	t6,a0
     b90:	00040593          	mv	a1,s0
     b94:	00078513          	mv	a0,a5
     b98:	5ad010ef          	jal	2944 <__mulsi3>
     b9c:	00050913          	mv	s2,a0
     ba0:	000e0593          	mv	a1,t3
     ba4:	00078513          	mv	a0,a5
     ba8:	59d010ef          	jal	2944 <__mulsi3>
     bac:	0102d793          	srli	a5,t0,0x10
     bb0:	012f8fb3          	add	t6,t6,s2
     bb4:	01f787b3          	add	a5,a5,t6
     bb8:	0127f663          	bgeu	a5,s2,bc4 <__muldf3+0x370>
     bbc:	000106b7          	lui	a3,0x10
     bc0:	00d50533          	add	a0,a0,a3
     bc4:	01029293          	slli	t0,t0,0x10
     bc8:	0107d593          	srli	a1,a5,0x10
     bcc:	0102d293          	srli	t0,t0,0x10
     bd0:	0104d913          	srli	s2,s1,0x10
     bd4:	01079793          	slli	a5,a5,0x10
     bd8:	01049493          	slli	s1,s1,0x10
     bdc:	005787b3          	add	a5,a5,t0
     be0:	0104d493          	srli	s1,s1,0x10
     be4:	00a58fb3          	add	t6,a1,a0
     be8:	00f383b3          	add	t2,t2,a5
     bec:	00048513          	mv	a0,s1
     bf0:	000f0593          	mv	a1,t5
     bf4:	551010ef          	jal	2944 <__mulsi3>
     bf8:	00050293          	mv	t0,a0
     bfc:	000e8593          	mv	a1,t4
     c00:	00048513          	mv	a0,s1
     c04:	541010ef          	jal	2944 <__mulsi3>
     c08:	00050a13          	mv	s4,a0
     c0c:	000f0593          	mv	a1,t5
     c10:	00090513          	mv	a0,s2
     c14:	531010ef          	jal	2944 <__mulsi3>
     c18:	00050f13          	mv	t5,a0
     c1c:	000e8593          	mv	a1,t4
     c20:	00090513          	mv	a0,s2
     c24:	521010ef          	jal	2944 <__mulsi3>
     c28:	0102d613          	srli	a2,t0,0x10
     c2c:	01ea0a33          	add	s4,s4,t5
     c30:	01460633          	add	a2,a2,s4
     c34:	01e67663          	bgeu	a2,t5,c40 <__muldf3+0x3ec>
     c38:	000106b7          	lui	a3,0x10
     c3c:	00d50533          	add	a0,a0,a3
     c40:	01029293          	slli	t0,t0,0x10
     c44:	01065593          	srli	a1,a2,0x10
     c48:	0102d293          	srli	t0,t0,0x10
     c4c:	01061613          	slli	a2,a2,0x10
     c50:	00a58eb3          	add	t4,a1,a0
     c54:	00560f33          	add	t5,a2,t0
     c58:	00048513          	mv	a0,s1
     c5c:	00040593          	mv	a1,s0
     c60:	4e5010ef          	jal	2944 <__mulsi3>
     c64:	00050293          	mv	t0,a0
     c68:	000e0593          	mv	a1,t3
     c6c:	00048513          	mv	a0,s1
     c70:	4d5010ef          	jal	2944 <__mulsi3>
     c74:	00050493          	mv	s1,a0
     c78:	00040593          	mv	a1,s0
     c7c:	00090513          	mv	a0,s2
     c80:	4c5010ef          	jal	2944 <__mulsi3>
     c84:	00050413          	mv	s0,a0
     c88:	000e0593          	mv	a1,t3
     c8c:	00090513          	mv	a0,s2
     c90:	4b5010ef          	jal	2944 <__mulsi3>
     c94:	0102d613          	srli	a2,t0,0x10
     c98:	008484b3          	add	s1,s1,s0
     c9c:	00960633          	add	a2,a2,s1
     ca0:	00050e13          	mv	t3,a0
     ca4:	00867663          	bgeu	a2,s0,cb0 <__muldf3+0x45c>
     ca8:	000106b7          	lui	a3,0x10
     cac:	00d50e33          	add	t3,a0,a3
     cb0:	01029293          	slli	t0,t0,0x10
     cb4:	01061693          	slli	a3,a2,0x10
     cb8:	0102d293          	srli	t0,t0,0x10
     cbc:	00770733          	add	a4,a4,t2
     cc0:	005686b3          	add	a3,a3,t0
     cc4:	01f685b3          	add	a1,a3,t6
     cc8:	00f737b3          	sltu	a5,a4,a5
     ccc:	00f587b3          	add	a5,a1,a5
     cd0:	00d5b6b3          	sltu	a3,a1,a3
     cd4:	00b7b5b3          	sltu	a1,a5,a1
     cd8:	00b6e6b3          	or	a3,a3,a1
     cdc:	01065613          	srli	a2,a2,0x10
     ce0:	00c686b3          	add	a3,a3,a2
     ce4:	01e70633          	add	a2,a4,t5
     ce8:	01d785b3          	add	a1,a5,t4
     cec:	00e63733          	sltu	a4,a2,a4
     cf0:	00e58733          	add	a4,a1,a4
     cf4:	00f5b7b3          	sltu	a5,a1,a5
     cf8:	00b735b3          	sltu	a1,a4,a1
     cfc:	00b7e7b3          	or	a5,a5,a1
     d00:	00961593          	slli	a1,a2,0x9
     d04:	00d787b3          	add	a5,a5,a3
     d08:	0065e5b3          	or	a1,a1,t1
     d0c:	01c787b3          	add	a5,a5,t3
     d10:	00b035b3          	snez	a1,a1
     d14:	01765613          	srli	a2,a2,0x17
     d18:	00979793          	slli	a5,a5,0x9
     d1c:	01775413          	srli	s0,a4,0x17
     d20:	00c5e5b3          	or	a1,a1,a2
     d24:	00971713          	slli	a4,a4,0x9
     d28:	00e5e5b3          	or	a1,a1,a4
     d2c:	00779713          	slli	a4,a5,0x7
     d30:	0087e433          	or	s0,a5,s0
     d34:	0c075063          	bgez	a4,df4 <__muldf3+0x5a0>
     d38:	0015d793          	srli	a5,a1,0x1
     d3c:	0015f593          	andi	a1,a1,1
     d40:	00b7e7b3          	or	a5,a5,a1
     d44:	01f41593          	slli	a1,s0,0x1f
     d48:	00b7e5b3          	or	a1,a5,a1
     d4c:	00145413          	srli	s0,s0,0x1
     d50:	3ff88793          	addi	a5,a7,1023
     d54:	0af05463          	blez	a5,dfc <__muldf3+0x5a8>
     d58:	0075f713          	andi	a4,a1,7
     d5c:	02070063          	beqz	a4,d7c <__muldf3+0x528>
     d60:	00f5f713          	andi	a4,a1,15
     d64:	00400693          	li	a3,4
     d68:	00d70a63          	beq	a4,a3,d7c <__muldf3+0x528>
     d6c:	00d58733          	add	a4,a1,a3
     d70:	00b736b3          	sltu	a3,a4,a1
     d74:	00d40433          	add	s0,s0,a3
     d78:	00070593          	mv	a1,a4
     d7c:	00741713          	slli	a4,s0,0x7
     d80:	00075a63          	bgez	a4,d94 <__muldf3+0x540>
     d84:	ff0007b7          	lui	a5,0xff000
     d88:	fff78793          	addi	a5,a5,-1 # feffffff <_stack_top+0xdefdffff>
     d8c:	00f47433          	and	s0,s0,a5
     d90:	40088793          	addi	a5,a7,1024
     d94:	7fe00713          	li	a4,2046
     d98:	12f74c63          	blt	a4,a5,ed0 <__muldf3+0x67c>
     d9c:	01d41713          	slli	a4,s0,0x1d
     da0:	0035d593          	srli	a1,a1,0x3
     da4:	00b76733          	or	a4,a4,a1
     da8:	00345413          	srli	s0,s0,0x3
     dac:	00c41413          	slli	s0,s0,0xc
     db0:	00c45413          	srli	s0,s0,0xc
     db4:	01479793          	slli	a5,a5,0x14
     db8:	02c12083          	lw	ra,44(sp)
     dbc:	0087e7b3          	or	a5,a5,s0
     dc0:	02812403          	lw	s0,40(sp)
     dc4:	01f81813          	slli	a6,a6,0x1f
     dc8:	02412483          	lw	s1,36(sp)
     dcc:	02012903          	lw	s2,32(sp)
     dd0:	01c12983          	lw	s3,28(sp)
     dd4:	01812a03          	lw	s4,24(sp)
     dd8:	01412a83          	lw	s5,20(sp)
     ddc:	01012b03          	lw	s6,16(sp)
     de0:	00c12b83          	lw	s7,12(sp)
     de4:	00070513          	mv	a0,a4
     de8:	0107e5b3          	or	a1,a5,a6
     dec:	03010113          	addi	sp,sp,48
     df0:	00008067          	ret
     df4:	00098893          	mv	a7,s3
     df8:	f59ff06f          	j	d50 <__muldf3+0x4fc>
     dfc:	08078063          	beqz	a5,e7c <__muldf3+0x628>
     e00:	fc900713          	li	a4,-55
     e04:	b4e7c8e3          	blt	a5,a4,954 <__muldf3+0x100>
     e08:	fe200713          	li	a4,-30
     e0c:	06e7cc63          	blt	a5,a4,e84 <__muldf3+0x630>
     e10:	00100713          	li	a4,1
     e14:	40f70733          	sub	a4,a4,a5
     e18:	41e88893          	addi	a7,a7,1054
     e1c:	011597b3          	sll	a5,a1,a7
     e20:	00f037b3          	snez	a5,a5
     e24:	011418b3          	sll	a7,s0,a7
     e28:	00e5d6b3          	srl	a3,a1,a4
     e2c:	0117e7b3          	or	a5,a5,a7
     e30:	00d7e7b3          	or	a5,a5,a3
     e34:	00e45433          	srl	s0,s0,a4
     e38:	0077f713          	andi	a4,a5,7
     e3c:	02070063          	beqz	a4,e5c <__muldf3+0x608>
     e40:	00f7f713          	andi	a4,a5,15
     e44:	00400693          	li	a3,4
     e48:	00d70a63          	beq	a4,a3,e5c <__muldf3+0x608>
     e4c:	00d78733          	add	a4,a5,a3
     e50:	00f736b3          	sltu	a3,a4,a5
     e54:	00d40433          	add	s0,s0,a3
     e58:	00070793          	mv	a5,a4
     e5c:	00841713          	slli	a4,s0,0x8
     e60:	08074063          	bltz	a4,ee0 <__muldf3+0x68c>
     e64:	01d41713          	slli	a4,s0,0x1d
     e68:	0037d793          	srli	a5,a5,0x3
     e6c:	00f76733          	or	a4,a4,a5
     e70:	00345413          	srli	s0,s0,0x3
     e74:	00000793          	li	a5,0
     e78:	f35ff06f          	j	dac <__muldf3+0x558>
     e7c:	00100713          	li	a4,1
     e80:	f99ff06f          	j	e18 <__muldf3+0x5c4>
     e84:	fe100613          	li	a2,-31
     e88:	40f60733          	sub	a4,a2,a5
     e8c:	00e45733          	srl	a4,s0,a4
     e90:	00000693          	li	a3,0
     e94:	00c78663          	beq	a5,a2,ea0 <__muldf3+0x64c>
     e98:	43e88893          	addi	a7,a7,1086
     e9c:	011416b3          	sll	a3,s0,a7
     ea0:	00d5e5b3          	or	a1,a1,a3
     ea4:	00b035b3          	snez	a1,a1
     ea8:	00b767b3          	or	a5,a4,a1
     eac:	00000413          	li	s0,0
     eb0:	f89ff06f          	j	e38 <__muldf3+0x5e4>
     eb4:	00080437          	lui	s0,0x80
     eb8:	7ff00793          	li	a5,2047
     ebc:	00000813          	li	a6,0
     ec0:	eedff06f          	j	dac <__muldf3+0x558>
     ec4:	00080437          	lui	s0,0x80
     ec8:	00000713          	li	a4,0
     ecc:	fedff06f          	j	eb8 <__muldf3+0x664>
     ed0:	00000413          	li	s0,0
     ed4:	00000713          	li	a4,0
     ed8:	7ff00793          	li	a5,2047
     edc:	ed1ff06f          	j	dac <__muldf3+0x558>
     ee0:	00000413          	li	s0,0
     ee4:	00000713          	li	a4,0
     ee8:	00100793          	li	a5,1
     eec:	ec1ff06f          	j	dac <__muldf3+0x558>

00000ef0 <__subdf3>:
     ef0:	00100837          	lui	a6,0x100
     ef4:	fff80813          	addi	a6,a6,-1 # fffff <main+0xfce43>
     ef8:	fe010113          	addi	sp,sp,-32
     efc:	00b877b3          	and	a5,a6,a1
     f00:	0145d713          	srli	a4,a1,0x14
     f04:	00d87833          	and	a6,a6,a3
     f08:	0146d893          	srli	a7,a3,0x14
     f0c:	00912a23          	sw	s1,20(sp)
     f10:	00379793          	slli	a5,a5,0x3
     f14:	7ff77493          	andi	s1,a4,2047
     f18:	01d55713          	srli	a4,a0,0x1d
     f1c:	01212823          	sw	s2,16(sp)
     f20:	00f767b3          	or	a5,a4,a5
     f24:	01f5d913          	srli	s2,a1,0x1f
     f28:	01d65713          	srli	a4,a2,0x1d
     f2c:	00381813          	slli	a6,a6,0x3
     f30:	00112e23          	sw	ra,28(sp)
     f34:	00812c23          	sw	s0,24(sp)
     f38:	01312623          	sw	s3,12(sp)
     f3c:	7ff8f893          	andi	a7,a7,2047
     f40:	7ff00593          	li	a1,2047
     f44:	00351513          	slli	a0,a0,0x3
     f48:	01f6d693          	srli	a3,a3,0x1f
     f4c:	01076733          	or	a4,a4,a6
     f50:	00361613          	slli	a2,a2,0x3
     f54:	00b89663          	bne	a7,a1,f60 <__subdf3+0x70>
     f58:	00c765b3          	or	a1,a4,a2
     f5c:	00059463          	bnez	a1,f64 <__subdf3+0x74>
     f60:	0016c693          	xori	a3,a3,1
     f64:	41148833          	sub	a6,s1,a7
     f68:	7ff00593          	li	a1,2047
     f6c:	31269463          	bne	a3,s2,1274 <__subdf3+0x384>
     f70:	11005263          	blez	a6,1074 <__subdf3+0x184>
     f74:	02089c63          	bnez	a7,fac <__subdf3+0xbc>
     f78:	00c766b3          	or	a3,a4,a2
     f7c:	02068463          	beqz	a3,fa4 <__subdf3+0xb4>
     f80:	fff48813          	addi	a6,s1,-1 # 7fffff <main+0x7fce43>
     f84:	00081e63          	bnez	a6,fa0 <__subdf3+0xb0>
     f88:	00c50633          	add	a2,a0,a2
     f8c:	00e787b3          	add	a5,a5,a4
     f90:	00a63533          	sltu	a0,a2,a0
     f94:	00a787b3          	add	a5,a5,a0
     f98:	00100493          	li	s1,1
     f9c:	0600006f          	j	ffc <__subdf3+0x10c>
     fa0:	00b49c63          	bne	s1,a1,fb8 <__subdf3+0xc8>
     fa4:	00050613          	mv	a2,a0
     fa8:	1d80006f          	j	1180 <__subdf3+0x290>
     fac:	feb48ce3          	beq	s1,a1,fa4 <__subdf3+0xb4>
     fb0:	008006b7          	lui	a3,0x800
     fb4:	00d76733          	or	a4,a4,a3
     fb8:	03800693          	li	a3,56
     fbc:	0b06c663          	blt	a3,a6,1068 <__subdf3+0x178>
     fc0:	01f00693          	li	a3,31
     fc4:	02000893          	li	a7,32
     fc8:	0706c863          	blt	a3,a6,1038 <__subdf3+0x148>
     fcc:	410888b3          	sub	a7,a7,a6
     fd0:	011716b3          	sll	a3,a4,a7
     fd4:	010655b3          	srl	a1,a2,a6
     fd8:	011618b3          	sll	a7,a2,a7
     fdc:	00b6e6b3          	or	a3,a3,a1
     fe0:	011038b3          	snez	a7,a7
     fe4:	0116e6b3          	or	a3,a3,a7
     fe8:	01075833          	srl	a6,a4,a6
     fec:	00a68633          	add	a2,a3,a0
     ff0:	00f80833          	add	a6,a6,a5
     ff4:	00d636b3          	sltu	a3,a2,a3
     ff8:	00d807b3          	add	a5,a6,a3
     ffc:	00879713          	slli	a4,a5,0x8
    1000:	22075663          	bgez	a4,122c <__subdf3+0x33c>
    1004:	00148493          	addi	s1,s1,1
    1008:	7ff00713          	li	a4,2047
    100c:	60e48863          	beq	s1,a4,161c <__subdf3+0x72c>
    1010:	ff800737          	lui	a4,0xff800
    1014:	fff70713          	addi	a4,a4,-1 # ff7fffff <_stack_top+0xdf7dffff>
    1018:	00e7f7b3          	and	a5,a5,a4
    101c:	00165713          	srli	a4,a2,0x1
    1020:	00167613          	andi	a2,a2,1
    1024:	00c76733          	or	a4,a4,a2
    1028:	01f79613          	slli	a2,a5,0x1f
    102c:	00e66633          	or	a2,a2,a4
    1030:	0017d793          	srli	a5,a5,0x1
    1034:	1f80006f          	j	122c <__subdf3+0x33c>
    1038:	fe080693          	addi	a3,a6,-32
    103c:	00d756b3          	srl	a3,a4,a3
    1040:	00000593          	li	a1,0
    1044:	01180863          	beq	a6,a7,1054 <__subdf3+0x164>
    1048:	04000593          	li	a1,64
    104c:	410585b3          	sub	a1,a1,a6
    1050:	00b715b3          	sll	a1,a4,a1
    1054:	00c5e5b3          	or	a1,a1,a2
    1058:	00b035b3          	snez	a1,a1
    105c:	00b6e6b3          	or	a3,a3,a1
    1060:	00000813          	li	a6,0
    1064:	f89ff06f          	j	fec <__subdf3+0xfc>
    1068:	00c766b3          	or	a3,a4,a2
    106c:	00d036b3          	snez	a3,a3
    1070:	ff1ff06f          	j	1060 <__subdf3+0x170>
    1074:	0c080263          	beqz	a6,1138 <__subdf3+0x248>
    1078:	409886b3          	sub	a3,a7,s1
    107c:	02049263          	bnez	s1,10a0 <__subdf3+0x1b0>
    1080:	00a7e833          	or	a6,a5,a0
    1084:	00080863          	beqz	a6,1094 <__subdf3+0x1a4>
    1088:	fff68813          	addi	a6,a3,-1 # 7fffff <main+0x7fce43>
    108c:	ee080ee3          	beqz	a6,f88 <__subdf3+0x98>
    1090:	02b69063          	bne	a3,a1,10b0 <__subdf3+0x1c0>
    1094:	00070793          	mv	a5,a4
    1098:	00068493          	mv	s1,a3
    109c:	0e40006f          	j	1180 <__subdf3+0x290>
    10a0:	58b88663          	beq	a7,a1,162c <__subdf3+0x73c>
    10a4:	008005b7          	lui	a1,0x800
    10a8:	00b7e7b3          	or	a5,a5,a1
    10ac:	00068813          	mv	a6,a3
    10b0:	03800693          	li	a3,56
    10b4:	0706cc63          	blt	a3,a6,112c <__subdf3+0x23c>
    10b8:	01f00693          	li	a3,31
    10bc:	02000313          	li	t1,32
    10c0:	0306ce63          	blt	a3,a6,10fc <__subdf3+0x20c>
    10c4:	41030333          	sub	t1,t1,a6
    10c8:	006796b3          	sll	a3,a5,t1
    10cc:	010555b3          	srl	a1,a0,a6
    10d0:	00651333          	sll	t1,a0,t1
    10d4:	00b6e6b3          	or	a3,a3,a1
    10d8:	00603333          	snez	t1,t1
    10dc:	0066e6b3          	or	a3,a3,t1
    10e0:	0107d833          	srl	a6,a5,a6
    10e4:	00c68633          	add	a2,a3,a2
    10e8:	00e80833          	add	a6,a6,a4
    10ec:	00d636b3          	sltu	a3,a2,a3
    10f0:	00d807b3          	add	a5,a6,a3
    10f4:	00088493          	mv	s1,a7
    10f8:	f05ff06f          	j	ffc <__subdf3+0x10c>
    10fc:	fe080693          	addi	a3,a6,-32
    1100:	00d7d6b3          	srl	a3,a5,a3
    1104:	00000593          	li	a1,0
    1108:	00680863          	beq	a6,t1,1118 <__subdf3+0x228>
    110c:	04000593          	li	a1,64
    1110:	410585b3          	sub	a1,a1,a6
    1114:	00b795b3          	sll	a1,a5,a1
    1118:	00a5e5b3          	or	a1,a1,a0
    111c:	00b035b3          	snez	a1,a1
    1120:	00b6e6b3          	or	a3,a3,a1
    1124:	00000813          	li	a6,0
    1128:	fbdff06f          	j	10e4 <__subdf3+0x1f4>
    112c:	00a7e6b3          	or	a3,a5,a0
    1130:	00d036b3          	snez	a3,a3
    1134:	ff1ff06f          	j	1124 <__subdf3+0x234>
    1138:	00148693          	addi	a3,s1,1
    113c:	7fe6f813          	andi	a6,a3,2046
    1140:	0c081263          	bnez	a6,1204 <__subdf3+0x314>
    1144:	00a7e6b3          	or	a3,a5,a0
    1148:	0a049463          	bnez	s1,11f0 <__subdf3+0x300>
    114c:	4a068863          	beqz	a3,15fc <__subdf3+0x70c>
    1150:	00c766b3          	or	a3,a4,a2
    1154:	4a068863          	beqz	a3,1604 <__subdf3+0x714>
    1158:	00c50633          	add	a2,a0,a2
    115c:	00e787b3          	add	a5,a5,a4
    1160:	00a63533          	sltu	a0,a2,a0
    1164:	00a787b3          	add	a5,a5,a0
    1168:	00879713          	slli	a4,a5,0x8
    116c:	32075a63          	bgez	a4,14a0 <__subdf3+0x5b0>
    1170:	ff800737          	lui	a4,0xff800
    1174:	fff70713          	addi	a4,a4,-1 # ff7fffff <_stack_top+0xdf7dffff>
    1178:	00e7f7b3          	and	a5,a5,a4
    117c:	00100493          	li	s1,1
    1180:	01d79693          	slli	a3,a5,0x1d
    1184:	00365613          	srli	a2,a2,0x3
    1188:	7ff00713          	li	a4,2047
    118c:	00c6e6b3          	or	a3,a3,a2
    1190:	0037d793          	srli	a5,a5,0x3
    1194:	00e49e63          	bne	s1,a4,11b0 <__subdf3+0x2c0>
    1198:	00f6e6b3          	or	a3,a3,a5
    119c:	00000793          	li	a5,0
    11a0:	00068863          	beqz	a3,11b0 <__subdf3+0x2c0>
    11a4:	000807b7          	lui	a5,0x80
    11a8:	00000693          	li	a3,0
    11ac:	00000913          	li	s2,0
    11b0:	7ff4f713          	andi	a4,s1,2047
    11b4:	00c79793          	slli	a5,a5,0xc
    11b8:	01c12083          	lw	ra,28(sp)
    11bc:	01812403          	lw	s0,24(sp)
    11c0:	00c7d793          	srli	a5,a5,0xc
    11c4:	01471713          	slli	a4,a4,0x14
    11c8:	01f91593          	slli	a1,s2,0x1f
    11cc:	00f76733          	or	a4,a4,a5
    11d0:	00b767b3          	or	a5,a4,a1
    11d4:	01412483          	lw	s1,20(sp)
    11d8:	01012903          	lw	s2,16(sp)
    11dc:	00c12983          	lw	s3,12(sp)
    11e0:	00068513          	mv	a0,a3
    11e4:	00078593          	mv	a1,a5
    11e8:	02010113          	addi	sp,sp,32
    11ec:	00008067          	ret
    11f0:	40068e63          	beqz	a3,160c <__subdf3+0x71c>
    11f4:	00c76733          	or	a4,a4,a2
    11f8:	2c071c63          	bnez	a4,14d0 <__subdf3+0x5e0>
    11fc:	00050613          	mv	a2,a0
    1200:	4100006f          	j	1610 <__subdf3+0x720>
    1204:	40b68a63          	beq	a3,a1,1618 <__subdf3+0x728>
    1208:	00c50633          	add	a2,a0,a2
    120c:	00e787b3          	add	a5,a5,a4
    1210:	00a63533          	sltu	a0,a2,a0
    1214:	00a787b3          	add	a5,a5,a0
    1218:	01f79713          	slli	a4,a5,0x1f
    121c:	00165613          	srli	a2,a2,0x1
    1220:	00c76633          	or	a2,a4,a2
    1224:	0017d793          	srli	a5,a5,0x1
    1228:	00068493          	mv	s1,a3
    122c:	00767713          	andi	a4,a2,7
    1230:	02070063          	beqz	a4,1250 <__subdf3+0x360>
    1234:	00f67713          	andi	a4,a2,15
    1238:	00400693          	li	a3,4
    123c:	00d70a63          	beq	a4,a3,1250 <__subdf3+0x360>
    1240:	00d60733          	add	a4,a2,a3
    1244:	00c736b3          	sltu	a3,a4,a2
    1248:	00d787b3          	add	a5,a5,a3
    124c:	00070613          	mv	a2,a4
    1250:	00879713          	slli	a4,a5,0x8
    1254:	f20756e3          	bgez	a4,1180 <__subdf3+0x290>
    1258:	00148493          	addi	s1,s1,1
    125c:	7ff00713          	li	a4,2047
    1260:	3ae48e63          	beq	s1,a4,161c <__subdf3+0x72c>
    1264:	ff800737          	lui	a4,0xff800
    1268:	fff70713          	addi	a4,a4,-1 # ff7fffff <_stack_top+0xdf7dffff>
    126c:	00e7f7b3          	and	a5,a5,a4
    1270:	f11ff06f          	j	1180 <__subdf3+0x290>
    1274:	0f005063          	blez	a6,1354 <__subdf3+0x464>
    1278:	08089863          	bnez	a7,1308 <__subdf3+0x418>
    127c:	00c766b3          	or	a3,a4,a2
    1280:	d20682e3          	beqz	a3,fa4 <__subdf3+0xb4>
    1284:	fff48813          	addi	a6,s1,-1
    1288:	00081e63          	bnez	a6,12a4 <__subdf3+0x3b4>
    128c:	40c50633          	sub	a2,a0,a2
    1290:	40e787b3          	sub	a5,a5,a4
    1294:	00c53533          	sltu	a0,a0,a2
    1298:	40a787b3          	sub	a5,a5,a0
    129c:	00100493          	li	s1,1
    12a0:	04c0006f          	j	12ec <__subdf3+0x3fc>
    12a4:	d0b480e3          	beq	s1,a1,fa4 <__subdf3+0xb4>
    12a8:	03800693          	li	a3,56
    12ac:	0906ce63          	blt	a3,a6,1348 <__subdf3+0x458>
    12b0:	01f00693          	li	a3,31
    12b4:	02000893          	li	a7,32
    12b8:	0706c063          	blt	a3,a6,1318 <__subdf3+0x428>
    12bc:	410888b3          	sub	a7,a7,a6
    12c0:	011716b3          	sll	a3,a4,a7
    12c4:	010655b3          	srl	a1,a2,a6
    12c8:	011618b3          	sll	a7,a2,a7
    12cc:	00b6e6b3          	or	a3,a3,a1
    12d0:	011038b3          	snez	a7,a7
    12d4:	0116e6b3          	or	a3,a3,a7
    12d8:	01075833          	srl	a6,a4,a6
    12dc:	40d50633          	sub	a2,a0,a3
    12e0:	41078833          	sub	a6,a5,a6
    12e4:	00c53533          	sltu	a0,a0,a2
    12e8:	40a807b3          	sub	a5,a6,a0
    12ec:	00879713          	slli	a4,a5,0x8
    12f0:	f2075ee3          	bgez	a4,122c <__subdf3+0x33c>
    12f4:	00800437          	lui	s0,0x800
    12f8:	fff40413          	addi	s0,s0,-1 # 7fffff <main+0x7fce43>
    12fc:	0087f433          	and	s0,a5,s0
    1300:	00060993          	mv	s3,a2
    1304:	2140006f          	j	1518 <__subdf3+0x628>
    1308:	c8b48ee3          	beq	s1,a1,fa4 <__subdf3+0xb4>
    130c:	008006b7          	lui	a3,0x800
    1310:	00d76733          	or	a4,a4,a3
    1314:	f95ff06f          	j	12a8 <__subdf3+0x3b8>
    1318:	fe080693          	addi	a3,a6,-32
    131c:	00d756b3          	srl	a3,a4,a3
    1320:	00000593          	li	a1,0
    1324:	01180863          	beq	a6,a7,1334 <__subdf3+0x444>
    1328:	04000593          	li	a1,64
    132c:	410585b3          	sub	a1,a1,a6
    1330:	00b715b3          	sll	a1,a4,a1
    1334:	00c5e5b3          	or	a1,a1,a2
    1338:	00b035b3          	snez	a1,a1
    133c:	00b6e6b3          	or	a3,a3,a1
    1340:	00000813          	li	a6,0
    1344:	f99ff06f          	j	12dc <__subdf3+0x3ec>
    1348:	00c766b3          	or	a3,a4,a2
    134c:	00d036b3          	snez	a3,a3
    1350:	ff1ff06f          	j	1340 <__subdf3+0x450>
    1354:	0e080663          	beqz	a6,1440 <__subdf3+0x550>
    1358:	40988333          	sub	t1,a7,s1
    135c:	04049263          	bnez	s1,13a0 <__subdf3+0x4b0>
    1360:	00a7e833          	or	a6,a5,a0
    1364:	02080663          	beqz	a6,1390 <__subdf3+0x4a0>
    1368:	fff30813          	addi	a6,t1,-1
    136c:	02081063          	bnez	a6,138c <__subdf3+0x49c>
    1370:	40a60533          	sub	a0,a2,a0
    1374:	00a635b3          	sltu	a1,a2,a0
    1378:	40f707b3          	sub	a5,a4,a5
    137c:	00050613          	mv	a2,a0
    1380:	40b787b3          	sub	a5,a5,a1
    1384:	00068913          	mv	s2,a3
    1388:	f15ff06f          	j	129c <__subdf3+0x3ac>
    138c:	02b31263          	bne	t1,a1,13b0 <__subdf3+0x4c0>
    1390:	00068913          	mv	s2,a3
    1394:	00070793          	mv	a5,a4
    1398:	00030493          	mv	s1,t1
    139c:	de5ff06f          	j	1180 <__subdf3+0x290>
    13a0:	28b88463          	beq	a7,a1,1628 <__subdf3+0x738>
    13a4:	008005b7          	lui	a1,0x800
    13a8:	00b7e7b3          	or	a5,a5,a1
    13ac:	00030813          	mv	a6,t1
    13b0:	03800593          	li	a1,56
    13b4:	0905c063          	blt	a1,a6,1434 <__subdf3+0x544>
    13b8:	01f00593          	li	a1,31
    13bc:	02000e13          	li	t3,32
    13c0:	0505c263          	blt	a1,a6,1404 <__subdf3+0x514>
    13c4:	410e0e33          	sub	t3,t3,a6
    13c8:	01c795b3          	sll	a1,a5,t3
    13cc:	01055333          	srl	t1,a0,a6
    13d0:	01c51e33          	sll	t3,a0,t3
    13d4:	0065e5b3          	or	a1,a1,t1
    13d8:	01c03e33          	snez	t3,t3
    13dc:	01c5e5b3          	or	a1,a1,t3
    13e0:	0107d833          	srl	a6,a5,a6
    13e4:	40b605b3          	sub	a1,a2,a1
    13e8:	00b637b3          	sltu	a5,a2,a1
    13ec:	41070833          	sub	a6,a4,a6
    13f0:	00058613          	mv	a2,a1
    13f4:	40f807b3          	sub	a5,a6,a5
    13f8:	00088493          	mv	s1,a7
    13fc:	00068913          	mv	s2,a3
    1400:	eedff06f          	j	12ec <__subdf3+0x3fc>
    1404:	fe080593          	addi	a1,a6,-32
    1408:	00b7d5b3          	srl	a1,a5,a1
    140c:	00000313          	li	t1,0
    1410:	01c80863          	beq	a6,t3,1420 <__subdf3+0x530>
    1414:	04000313          	li	t1,64
    1418:	41030333          	sub	t1,t1,a6
    141c:	00679333          	sll	t1,a5,t1
    1420:	00a36333          	or	t1,t1,a0
    1424:	00603333          	snez	t1,t1
    1428:	0065e5b3          	or	a1,a1,t1
    142c:	00000813          	li	a6,0
    1430:	fb5ff06f          	j	13e4 <__subdf3+0x4f4>
    1434:	00a7e5b3          	or	a1,a5,a0
    1438:	00b035b3          	snez	a1,a1
    143c:	ff1ff06f          	j	142c <__subdf3+0x53c>
    1440:	00148813          	addi	a6,s1,1
    1444:	7fe87813          	andi	a6,a6,2046
    1448:	0a081063          	bnez	a6,14e8 <__subdf3+0x5f8>
    144c:	00c76833          	or	a6,a4,a2
    1450:	00a7e8b3          	or	a7,a5,a0
    1454:	06049863          	bnez	s1,14c4 <__subdf3+0x5d4>
    1458:	00089a63          	bnez	a7,146c <__subdf3+0x57c>
    145c:	00070793          	mv	a5,a4
    1460:	02081e63          	bnez	a6,149c <__subdf3+0x5ac>
    1464:	00000913          	li	s2,0
    1468:	1b40006f          	j	161c <__subdf3+0x72c>
    146c:	18080c63          	beqz	a6,1604 <__subdf3+0x714>
    1470:	40c50833          	sub	a6,a0,a2
    1474:	010538b3          	sltu	a7,a0,a6
    1478:	40e785b3          	sub	a1,a5,a4
    147c:	411585b3          	sub	a1,a1,a7
    1480:	00859893          	slli	a7,a1,0x8
    1484:	0208d663          	bgez	a7,14b0 <__subdf3+0x5c0>
    1488:	40a60533          	sub	a0,a2,a0
    148c:	00a635b3          	sltu	a1,a2,a0
    1490:	40f707b3          	sub	a5,a4,a5
    1494:	00050613          	mv	a2,a0
    1498:	40b787b3          	sub	a5,a5,a1
    149c:	00068913          	mv	s2,a3
    14a0:	00f66733          	or	a4,a2,a5
    14a4:	1a070063          	beqz	a4,1644 <__subdf3+0x754>
    14a8:	00000493          	li	s1,0
    14ac:	d81ff06f          	j	122c <__subdf3+0x33c>
    14b0:	00b86633          	or	a2,a6,a1
    14b4:	18060263          	beqz	a2,1638 <__subdf3+0x748>
    14b8:	00058793          	mv	a5,a1
    14bc:	00080613          	mv	a2,a6
    14c0:	fe1ff06f          	j	14a0 <__subdf3+0x5b0>
    14c4:	00089e63          	bnez	a7,14e0 <__subdf3+0x5f0>
    14c8:	00068913          	mv	s2,a3
    14cc:	14081063          	bnez	a6,160c <__subdf3+0x71c>
    14d0:	00000913          	li	s2,0
    14d4:	004007b7          	lui	a5,0x400
    14d8:	00000613          	li	a2,0
    14dc:	1340006f          	j	1610 <__subdf3+0x720>
    14e0:	d0080ee3          	beqz	a6,11fc <__subdf3+0x30c>
    14e4:	fedff06f          	j	14d0 <__subdf3+0x5e0>
    14e8:	40c505b3          	sub	a1,a0,a2
    14ec:	00b53833          	sltu	a6,a0,a1
    14f0:	40e78433          	sub	s0,a5,a4
    14f4:	41040433          	sub	s0,s0,a6
    14f8:	00841813          	slli	a6,s0,0x8
    14fc:	00058993          	mv	s3,a1
    1500:	06085e63          	bgez	a6,157c <__subdf3+0x68c>
    1504:	40a609b3          	sub	s3,a2,a0
    1508:	40f70433          	sub	s0,a4,a5
    150c:	01363633          	sltu	a2,a2,s3
    1510:	40c40433          	sub	s0,s0,a2
    1514:	00068913          	mv	s2,a3
    1518:	06040e63          	beqz	s0,1594 <__subdf3+0x6a4>
    151c:	00040513          	mv	a0,s0
    1520:	4fc010ef          	jal	2a1c <__clzsi2>
    1524:	ff850713          	addi	a4,a0,-8
    1528:	02000793          	li	a5,32
    152c:	40e787b3          	sub	a5,a5,a4
    1530:	00e41433          	sll	s0,s0,a4
    1534:	00f9d7b3          	srl	a5,s3,a5
    1538:	0087e7b3          	or	a5,a5,s0
    153c:	00e99633          	sll	a2,s3,a4
    1540:	0a974463          	blt	a4,s1,15e8 <__subdf3+0x6f8>
    1544:	40970733          	sub	a4,a4,s1
    1548:	00170513          	addi	a0,a4,1
    154c:	01f00693          	li	a3,31
    1550:	02000593          	li	a1,32
    1554:	06a6c263          	blt	a3,a0,15b8 <__subdf3+0x6c8>
    1558:	40a585b3          	sub	a1,a1,a0
    155c:	00b79733          	sll	a4,a5,a1
    1560:	00a656b3          	srl	a3,a2,a0
    1564:	00b615b3          	sll	a1,a2,a1
    1568:	00d76733          	or	a4,a4,a3
    156c:	00b035b3          	snez	a1,a1
    1570:	00b76633          	or	a2,a4,a1
    1574:	00a7d7b3          	srl	a5,a5,a0
    1578:	f29ff06f          	j	14a0 <__subdf3+0x5b0>
    157c:	0085e633          	or	a2,a1,s0
    1580:	f8061ce3          	bnez	a2,1518 <__subdf3+0x628>
    1584:	00000913          	li	s2,0
    1588:	00000793          	li	a5,0
    158c:	00000493          	li	s1,0
    1590:	bf1ff06f          	j	1180 <__subdf3+0x290>
    1594:	00098513          	mv	a0,s3
    1598:	484010ef          	jal	2a1c <__clzsi2>
    159c:	01850713          	addi	a4,a0,24
    15a0:	01f00793          	li	a5,31
    15a4:	f8e7d2e3          	bge	a5,a4,1528 <__subdf3+0x638>
    15a8:	ff850793          	addi	a5,a0,-8
    15ac:	00f997b3          	sll	a5,s3,a5
    15b0:	00000613          	li	a2,0
    15b4:	f8dff06f          	j	1540 <__subdf3+0x650>
    15b8:	fe170713          	addi	a4,a4,-31
    15bc:	00e7d733          	srl	a4,a5,a4
    15c0:	00000693          	li	a3,0
    15c4:	00b50863          	beq	a0,a1,15d4 <__subdf3+0x6e4>
    15c8:	04000693          	li	a3,64
    15cc:	40a686b3          	sub	a3,a3,a0
    15d0:	00d796b3          	sll	a3,a5,a3
    15d4:	00d666b3          	or	a3,a2,a3
    15d8:	00d036b3          	snez	a3,a3
    15dc:	00d76633          	or	a2,a4,a3
    15e0:	00000793          	li	a5,0
    15e4:	ebdff06f          	j	14a0 <__subdf3+0x5b0>
    15e8:	40e484b3          	sub	s1,s1,a4
    15ec:	ff800737          	lui	a4,0xff800
    15f0:	fff70713          	addi	a4,a4,-1 # ff7fffff <_stack_top+0xdf7dffff>
    15f4:	00e7f7b3          	and	a5,a5,a4
    15f8:	c35ff06f          	j	122c <__subdf3+0x33c>
    15fc:	00070793          	mv	a5,a4
    1600:	ea1ff06f          	j	14a0 <__subdf3+0x5b0>
    1604:	00050613          	mv	a2,a0
    1608:	e99ff06f          	j	14a0 <__subdf3+0x5b0>
    160c:	00070793          	mv	a5,a4
    1610:	00058493          	mv	s1,a1
    1614:	b6dff06f          	j	1180 <__subdf3+0x290>
    1618:	00068493          	mv	s1,a3
    161c:	00000793          	li	a5,0
    1620:	00000613          	li	a2,0
    1624:	b5dff06f          	j	1180 <__subdf3+0x290>
    1628:	00068913          	mv	s2,a3
    162c:	00070793          	mv	a5,a4
    1630:	00088493          	mv	s1,a7
    1634:	b4dff06f          	j	1180 <__subdf3+0x290>
    1638:	00000913          	li	s2,0
    163c:	00000793          	li	a5,0
    1640:	b41ff06f          	j	1180 <__subdf3+0x290>
    1644:	00000793          	li	a5,0
    1648:	00000613          	li	a2,0
    164c:	f41ff06f          	j	158c <__subdf3+0x69c>

00001650 <__fixdfsi>:
    1650:	0145d713          	srli	a4,a1,0x14
    1654:	001006b7          	lui	a3,0x100
    1658:	fff68793          	addi	a5,a3,-1 # fffff <main+0xfce43>
    165c:	7ff77713          	andi	a4,a4,2047
    1660:	3fe00613          	li	a2,1022
    1664:	00b7f7b3          	and	a5,a5,a1
    1668:	01f5d593          	srli	a1,a1,0x1f
    166c:	04e65c63          	bge	a2,a4,16c4 <__fixdfsi+0x74>
    1670:	41d00613          	li	a2,1053
    1674:	00e65a63          	bge	a2,a4,1688 <__fixdfsi+0x38>
    1678:	80000537          	lui	a0,0x80000
    167c:	fff50513          	addi	a0,a0,-1 # 7fffffff <_stack_top+0x5ffdffff>
    1680:	00a58533          	add	a0,a1,a0
    1684:	00008067          	ret
    1688:	00d7e7b3          	or	a5,a5,a3
    168c:	41300693          	li	a3,1043
    1690:	02e6d463          	bge	a3,a4,16b8 <__fixdfsi+0x68>
    1694:	bed70693          	addi	a3,a4,-1043
    1698:	00d797b3          	sll	a5,a5,a3
    169c:	43300693          	li	a3,1075
    16a0:	40e68733          	sub	a4,a3,a4
    16a4:	00e55533          	srl	a0,a0,a4
    16a8:	00a7e533          	or	a0,a5,a0
    16ac:	00058e63          	beqz	a1,16c8 <__fixdfsi+0x78>
    16b0:	40a00533          	neg	a0,a0
    16b4:	00008067          	ret
    16b8:	40e686b3          	sub	a3,a3,a4
    16bc:	00d7d533          	srl	a0,a5,a3
    16c0:	fedff06f          	j	16ac <__fixdfsi+0x5c>
    16c4:	00000513          	li	a0,0
    16c8:	00008067          	ret

000016cc <__floatsidf>:
    16cc:	ff010113          	addi	sp,sp,-16
    16d0:	00112623          	sw	ra,12(sp)
    16d4:	00812423          	sw	s0,8(sp)
    16d8:	00912223          	sw	s1,4(sp)
    16dc:	00050793          	mv	a5,a0
    16e0:	08050063          	beqz	a0,1760 <__floatsidf+0x94>
    16e4:	41f55713          	srai	a4,a0,0x1f
    16e8:	00a74433          	xor	s0,a4,a0
    16ec:	40e40433          	sub	s0,s0,a4
    16f0:	01f55493          	srli	s1,a0,0x1f
    16f4:	00040513          	mv	a0,s0
    16f8:	324010ef          	jal	2a1c <__clzsi2>
    16fc:	41e00793          	li	a5,1054
    1700:	00a00713          	li	a4,10
    1704:	40a787b3          	sub	a5,a5,a0
    1708:	04a74463          	blt	a4,a0,1750 <__floatsidf+0x84>
    170c:	00b00713          	li	a4,11
    1710:	40a70733          	sub	a4,a4,a0
    1714:	01550513          	addi	a0,a0,21
    1718:	00e45733          	srl	a4,s0,a4
    171c:	00a41433          	sll	s0,s0,a0
    1720:	00c12083          	lw	ra,12(sp)
    1724:	00040513          	mv	a0,s0
    1728:	00c71713          	slli	a4,a4,0xc
    172c:	00812403          	lw	s0,8(sp)
    1730:	01479793          	slli	a5,a5,0x14
    1734:	00c75713          	srli	a4,a4,0xc
    1738:	01f49493          	slli	s1,s1,0x1f
    173c:	00e7e7b3          	or	a5,a5,a4
    1740:	0097e5b3          	or	a1,a5,s1
    1744:	00412483          	lw	s1,4(sp)
    1748:	01010113          	addi	sp,sp,16
    174c:	00008067          	ret
    1750:	ff550513          	addi	a0,a0,-11
    1754:	00a41733          	sll	a4,s0,a0
    1758:	00000413          	li	s0,0
    175c:	fc5ff06f          	j	1720 <__floatsidf+0x54>
    1760:	00000493          	li	s1,0
    1764:	00000713          	li	a4,0
    1768:	ff1ff06f          	j	1758 <__floatsidf+0x8c>

0000176c <__addsf3>:
    176c:	ff010113          	addi	sp,sp,-16
    1770:	00800737          	lui	a4,0x800
    1774:	fff70713          	addi	a4,a4,-1 # 7fffff <main+0x7fce43>
    1778:	0175d613          	srli	a2,a1,0x17
    177c:	00812423          	sw	s0,8(sp)
    1780:	01755413          	srli	s0,a0,0x17
    1784:	00a777b3          	and	a5,a4,a0
    1788:	00912223          	sw	s1,4(sp)
    178c:	00b77733          	and	a4,a4,a1
    1790:	0ff47413          	zext.b	s0,s0
    1794:	0ff67613          	zext.b	a2,a2
    1798:	00112623          	sw	ra,12(sp)
    179c:	01212023          	sw	s2,0(sp)
    17a0:	01f55493          	srli	s1,a0,0x1f
    17a4:	01f5d593          	srli	a1,a1,0x1f
    17a8:	00379793          	slli	a5,a5,0x3
    17ac:	00371713          	slli	a4,a4,0x3
    17b0:	40c406b3          	sub	a3,s0,a2
    17b4:	1cb49c63          	bne	s1,a1,198c <__addsf3+0x220>
    17b8:	08d05e63          	blez	a3,1854 <__addsf3+0xe8>
    17bc:	0ff00593          	li	a1,255
    17c0:	02061663          	bnez	a2,17ec <__addsf3+0x80>
    17c4:	00070e63          	beqz	a4,17e0 <__addsf3+0x74>
    17c8:	fff68613          	addi	a2,a3,-1
    17cc:	00061863          	bnez	a2,17dc <__addsf3+0x70>
    17d0:	00e787b3          	add	a5,a5,a4
    17d4:	00100413          	li	s0,1
    17d8:	04c0006f          	j	1824 <__addsf3+0xb8>
    17dc:	02b69063          	bne	a3,a1,17fc <__addsf3+0x90>
    17e0:	00068413          	mv	s0,a3
    17e4:	00078713          	mv	a4,a5
    17e8:	2c00006f          	j	1aa8 <__addsf3+0x33c>
    17ec:	feb40ce3          	beq	s0,a1,17e4 <__addsf3+0x78>
    17f0:	04000637          	lui	a2,0x4000
    17f4:	00c76733          	or	a4,a4,a2
    17f8:	00068613          	mv	a2,a3
    17fc:	01b00593          	li	a1,27
    1800:	00100693          	li	a3,1
    1804:	00c5ce63          	blt	a1,a2,1820 <__addsf3+0xb4>
    1808:	02000693          	li	a3,32
    180c:	40c686b3          	sub	a3,a3,a2
    1810:	00c755b3          	srl	a1,a4,a2
    1814:	00d71733          	sll	a4,a4,a3
    1818:	00e03733          	snez	a4,a4
    181c:	00e5e6b3          	or	a3,a1,a4
    1820:	00d787b3          	add	a5,a5,a3
    1824:	00579713          	slli	a4,a5,0x5
    1828:	12075263          	bgez	a4,194c <__addsf3+0x1e0>
    182c:	00140413          	addi	s0,s0,1
    1830:	0ff00713          	li	a4,255
    1834:	34e40e63          	beq	s0,a4,1b90 <__addsf3+0x424>
    1838:	7e0006b7          	lui	a3,0x7e000
    183c:	0017d713          	srli	a4,a5,0x1
    1840:	fff68693          	addi	a3,a3,-1 # 7dffffff <_stack_top+0x5dfdffff>
    1844:	00d77733          	and	a4,a4,a3
    1848:	0017f793          	andi	a5,a5,1
    184c:	00f767b3          	or	a5,a4,a5
    1850:	0fc0006f          	j	194c <__addsf3+0x1e0>
    1854:	06068463          	beqz	a3,18bc <__addsf3+0x150>
    1858:	408606b3          	sub	a3,a2,s0
    185c:	0ff00513          	li	a0,255
    1860:	00041e63          	bnez	s0,187c <__addsf3+0x110>
    1864:	32078063          	beqz	a5,1b84 <__addsf3+0x418>
    1868:	fff68593          	addi	a1,a3,-1
    186c:	f60582e3          	beqz	a1,17d0 <__addsf3+0x64>
    1870:	00a69e63          	bne	a3,a0,188c <__addsf3+0x120>
    1874:	0ff00413          	li	s0,255
    1878:	2300006f          	j	1aa8 <__addsf3+0x33c>
    187c:	fea60ce3          	beq	a2,a0,1874 <__addsf3+0x108>
    1880:	040005b7          	lui	a1,0x4000
    1884:	00b7e7b3          	or	a5,a5,a1
    1888:	00068593          	mv	a1,a3
    188c:	01b00513          	li	a0,27
    1890:	00100693          	li	a3,1
    1894:	00b54e63          	blt	a0,a1,18b0 <__addsf3+0x144>
    1898:	02000693          	li	a3,32
    189c:	40b686b3          	sub	a3,a3,a1
    18a0:	00b7d533          	srl	a0,a5,a1
    18a4:	00d797b3          	sll	a5,a5,a3
    18a8:	00f037b3          	snez	a5,a5
    18ac:	00f566b3          	or	a3,a0,a5
    18b0:	00e687b3          	add	a5,a3,a4
    18b4:	00060413          	mv	s0,a2
    18b8:	f6dff06f          	j	1824 <__addsf3+0xb8>
    18bc:	00140693          	addi	a3,s0,1
    18c0:	0fe6f613          	andi	a2,a3,254
    18c4:	06061a63          	bnez	a2,1938 <__addsf3+0x1cc>
    18c8:	06041063          	bnez	s0,1928 <__addsf3+0x1bc>
    18cc:	2a078663          	beqz	a5,1b78 <__addsf3+0x40c>
    18d0:	08070a63          	beqz	a4,1964 <__addsf3+0x1f8>
    18d4:	00f70733          	add	a4,a4,a5
    18d8:	00571793          	slli	a5,a4,0x5
    18dc:	1c07d663          	bgez	a5,1aa8 <__addsf3+0x33c>
    18e0:	1f8007b7          	lui	a5,0x1f800
    18e4:	00375713          	srli	a4,a4,0x3
    18e8:	fff78793          	addi	a5,a5,-1 # 1f7fffff <main+0x1f7fce43>
    18ec:	00f777b3          	and	a5,a4,a5
    18f0:	00100413          	li	s0,1
    18f4:	0ff47413          	zext.b	s0,s0
    18f8:	00979793          	slli	a5,a5,0x9
    18fc:	01741413          	slli	s0,s0,0x17
    1900:	0097d793          	srli	a5,a5,0x9
    1904:	00f46433          	or	s0,s0,a5
    1908:	01f49513          	slli	a0,s1,0x1f
    190c:	00c12083          	lw	ra,12(sp)
    1910:	00a46533          	or	a0,s0,a0
    1914:	00812403          	lw	s0,8(sp)
    1918:	00412483          	lw	s1,4(sp)
    191c:	00012903          	lw	s2,0(sp)
    1920:	01010113          	addi	sp,sp,16
    1924:	00008067          	ret
    1928:	f40786e3          	beqz	a5,1874 <__addsf3+0x108>
    192c:	1c071863          	bnez	a4,1afc <__addsf3+0x390>
    1930:	00078713          	mv	a4,a5
    1934:	f41ff06f          	j	1874 <__addsf3+0x108>
    1938:	0ff00613          	li	a2,255
    193c:	24c68863          	beq	a3,a2,1b8c <__addsf3+0x420>
    1940:	00e78733          	add	a4,a5,a4
    1944:	00175793          	srli	a5,a4,0x1
    1948:	00068413          	mv	s0,a3
    194c:	0077f713          	andi	a4,a5,7
    1950:	00070a63          	beqz	a4,1964 <__addsf3+0x1f8>
    1954:	00f7f713          	andi	a4,a5,15
    1958:	00400693          	li	a3,4
    195c:	00d70463          	beq	a4,a3,1964 <__addsf3+0x1f8>
    1960:	00d787b3          	add	a5,a5,a3
    1964:	00579713          	slli	a4,a5,0x5
    1968:	e6075ee3          	bgez	a4,17e4 <__addsf3+0x78>
    196c:	00140413          	addi	s0,s0,1
    1970:	0ff00713          	li	a4,255
    1974:	20e40e63          	beq	s0,a4,1b90 <__addsf3+0x424>
    1978:	1f800737          	lui	a4,0x1f800
    197c:	0037d793          	srli	a5,a5,0x3
    1980:	fff70713          	addi	a4,a4,-1 # 1f7fffff <main+0x1f7fce43>
    1984:	00e7f7b3          	and	a5,a5,a4
    1988:	f6dff06f          	j	18f4 <__addsf3+0x188>
    198c:	08d05063          	blez	a3,1a0c <__addsf3+0x2a0>
    1990:	06061263          	bnez	a2,19f4 <__addsf3+0x288>
    1994:	e40706e3          	beqz	a4,17e0 <__addsf3+0x74>
    1998:	fff68613          	addi	a2,a3,-1
    199c:	00061863          	bnez	a2,19ac <__addsf3+0x240>
    19a0:	40e787b3          	sub	a5,a5,a4
    19a4:	00100413          	li	s0,1
    19a8:	0340006f          	j	19dc <__addsf3+0x270>
    19ac:	0ff00593          	li	a1,255
    19b0:	e2b688e3          	beq	a3,a1,17e0 <__addsf3+0x74>
    19b4:	01b00593          	li	a1,27
    19b8:	00100693          	li	a3,1
    19bc:	00c5ce63          	blt	a1,a2,19d8 <__addsf3+0x26c>
    19c0:	02000693          	li	a3,32
    19c4:	40c686b3          	sub	a3,a3,a2
    19c8:	00c755b3          	srl	a1,a4,a2
    19cc:	00d71733          	sll	a4,a4,a3
    19d0:	00e03733          	snez	a4,a4
    19d4:	00e5e6b3          	or	a3,a1,a4
    19d8:	40d787b3          	sub	a5,a5,a3
    19dc:	00579713          	slli	a4,a5,0x5
    19e0:	f60756e3          	bgez	a4,194c <__addsf3+0x1e0>
    19e4:	04000937          	lui	s2,0x4000
    19e8:	fff90913          	addi	s2,s2,-1 # 3ffffff <main+0x3ffce43>
    19ec:	0127f933          	and	s2,a5,s2
    19f0:	1300006f          	j	1b20 <__addsf3+0x3b4>
    19f4:	0ff00613          	li	a2,255
    19f8:	dec406e3          	beq	s0,a2,17e4 <__addsf3+0x78>
    19fc:	04000637          	lui	a2,0x4000
    1a00:	00c76733          	or	a4,a4,a2
    1a04:	00068613          	mv	a2,a3
    1a08:	fadff06f          	j	19b4 <__addsf3+0x248>
    1a0c:	06068e63          	beqz	a3,1a88 <__addsf3+0x31c>
    1a10:	408606b3          	sub	a3,a2,s0
    1a14:	02041663          	bnez	s0,1a40 <__addsf3+0x2d4>
    1a18:	16078463          	beqz	a5,1b80 <__addsf3+0x414>
    1a1c:	fff68513          	addi	a0,a3,-1
    1a20:	00051863          	bnez	a0,1a30 <__addsf3+0x2c4>
    1a24:	40f707b3          	sub	a5,a4,a5
    1a28:	00058493          	mv	s1,a1
    1a2c:	f79ff06f          	j	19a4 <__addsf3+0x238>
    1a30:	0ff00813          	li	a6,255
    1a34:	03069063          	bne	a3,a6,1a54 <__addsf3+0x2e8>
    1a38:	00058493          	mv	s1,a1
    1a3c:	e39ff06f          	j	1874 <__addsf3+0x108>
    1a40:	0ff00513          	li	a0,255
    1a44:	fea60ae3          	beq	a2,a0,1a38 <__addsf3+0x2cc>
    1a48:	04000537          	lui	a0,0x4000
    1a4c:	00a7e7b3          	or	a5,a5,a0
    1a50:	00068513          	mv	a0,a3
    1a54:	01b00813          	li	a6,27
    1a58:	00100693          	li	a3,1
    1a5c:	00a84e63          	blt	a6,a0,1a78 <__addsf3+0x30c>
    1a60:	02000693          	li	a3,32
    1a64:	40a686b3          	sub	a3,a3,a0
    1a68:	00a7d833          	srl	a6,a5,a0
    1a6c:	00d797b3          	sll	a5,a5,a3
    1a70:	00f037b3          	snez	a5,a5
    1a74:	00f866b3          	or	a3,a6,a5
    1a78:	40d707b3          	sub	a5,a4,a3
    1a7c:	00060413          	mv	s0,a2
    1a80:	00058493          	mv	s1,a1
    1a84:	f59ff06f          	j	19dc <__addsf3+0x270>
    1a88:	00140693          	addi	a3,s0,1
    1a8c:	0fe6f693          	andi	a3,a3,254
    1a90:	06069e63          	bnez	a3,1b0c <__addsf3+0x3a0>
    1a94:	06041263          	bnez	s0,1af8 <__addsf3+0x38c>
    1a98:	02079463          	bnez	a5,1ac0 <__addsf3+0x354>
    1a9c:	00000493          	li	s1,0
    1aa0:	e4070ae3          	beqz	a4,18f4 <__addsf3+0x188>
    1aa4:	00058493          	mv	s1,a1
    1aa8:	00375793          	srli	a5,a4,0x3
    1aac:	0ff00713          	li	a4,255
    1ab0:	e4e412e3          	bne	s0,a4,18f4 <__addsf3+0x188>
    1ab4:	e40780e3          	beqz	a5,18f4 <__addsf3+0x188>
    1ab8:	004007b7          	lui	a5,0x400
    1abc:	0340006f          	j	1af0 <__addsf3+0x384>
    1ac0:	ea0702e3          	beqz	a4,1964 <__addsf3+0x1f8>
    1ac4:	40e786b3          	sub	a3,a5,a4
    1ac8:	00569613          	slli	a2,a3,0x5
    1acc:	00065c63          	bgez	a2,1ae4 <__addsf3+0x378>
    1ad0:	40f707b3          	sub	a5,a4,a5
    1ad4:	00058493          	mv	s1,a1
    1ad8:	00000413          	li	s0,0
    1adc:	e0078ce3          	beqz	a5,18f4 <__addsf3+0x188>
    1ae0:	e6dff06f          	j	194c <__addsf3+0x1e0>
    1ae4:	00068713          	mv	a4,a3
    1ae8:	fc0690e3          	bnez	a3,1aa8 <__addsf3+0x33c>
    1aec:	00000793          	li	a5,0
    1af0:	00000493          	li	s1,0
    1af4:	e01ff06f          	j	18f4 <__addsf3+0x188>
    1af8:	e2079ae3          	bnez	a5,192c <__addsf3+0x1c0>
    1afc:	00000493          	li	s1,0
    1b00:	0ff00413          	li	s0,255
    1b04:	004007b7          	lui	a5,0x400
    1b08:	dedff06f          	j	18f4 <__addsf3+0x188>
    1b0c:	40e78933          	sub	s2,a5,a4
    1b10:	00591693          	slli	a3,s2,0x5
    1b14:	0406d263          	bgez	a3,1b58 <__addsf3+0x3ec>
    1b18:	40f70933          	sub	s2,a4,a5
    1b1c:	00058493          	mv	s1,a1
    1b20:	00090513          	mv	a0,s2
    1b24:	6f9000ef          	jal	2a1c <__clzsi2>
    1b28:	ffb50513          	addi	a0,a0,-5 # 3fffffb <main+0x3ffce3f>
    1b2c:	00a91933          	sll	s2,s2,a0
    1b30:	02854a63          	blt	a0,s0,1b64 <__addsf3+0x3f8>
    1b34:	40850533          	sub	a0,a0,s0
    1b38:	00150513          	addi	a0,a0,1
    1b3c:	02000713          	li	a4,32
    1b40:	40a70733          	sub	a4,a4,a0
    1b44:	00a957b3          	srl	a5,s2,a0
    1b48:	00e91933          	sll	s2,s2,a4
    1b4c:	01203933          	snez	s2,s2
    1b50:	0127e7b3          	or	a5,a5,s2
    1b54:	f85ff06f          	j	1ad8 <__addsf3+0x36c>
    1b58:	fc0914e3          	bnez	s2,1b20 <__addsf3+0x3b4>
    1b5c:	00000413          	li	s0,0
    1b60:	f8dff06f          	j	1aec <__addsf3+0x380>
    1b64:	fc0007b7          	lui	a5,0xfc000
    1b68:	fff78793          	addi	a5,a5,-1 # fbffffff <_stack_top+0xdbfdffff>
    1b6c:	40a40433          	sub	s0,s0,a0
    1b70:	00f977b3          	and	a5,s2,a5
    1b74:	dd9ff06f          	j	194c <__addsf3+0x1e0>
    1b78:	00070793          	mv	a5,a4
    1b7c:	f5dff06f          	j	1ad8 <__addsf3+0x36c>
    1b80:	00058493          	mv	s1,a1
    1b84:	00068413          	mv	s0,a3
    1b88:	f21ff06f          	j	1aa8 <__addsf3+0x33c>
    1b8c:	00068413          	mv	s0,a3
    1b90:	00000793          	li	a5,0
    1b94:	d61ff06f          	j	18f4 <__addsf3+0x188>

00001b98 <__divsf3>:
    1b98:	fd010113          	addi	sp,sp,-48
    1b9c:	02912223          	sw	s1,36(sp)
    1ba0:	01755493          	srli	s1,a0,0x17
    1ba4:	01412c23          	sw	s4,24(sp)
    1ba8:	01512a23          	sw	s5,20(sp)
    1bac:	01712623          	sw	s7,12(sp)
    1bb0:	00951a13          	slli	s4,a0,0x9
    1bb4:	02112623          	sw	ra,44(sp)
    1bb8:	02812423          	sw	s0,40(sp)
    1bbc:	03212023          	sw	s2,32(sp)
    1bc0:	01312e23          	sw	s3,28(sp)
    1bc4:	01612823          	sw	s6,16(sp)
    1bc8:	01812423          	sw	s8,8(sp)
    1bcc:	0ff4f493          	zext.b	s1,s1
    1bd0:	00058b93          	mv	s7,a1
    1bd4:	009a5a13          	srli	s4,s4,0x9
    1bd8:	01f55a93          	srli	s5,a0,0x1f
    1bdc:	08048463          	beqz	s1,1c64 <__divsf3+0xcc>
    1be0:	0ff00793          	li	a5,255
    1be4:	0af48063          	beq	s1,a5,1c84 <__divsf3+0xec>
    1be8:	003a1a13          	slli	s4,s4,0x3
    1bec:	040007b7          	lui	a5,0x4000
    1bf0:	00fa6a33          	or	s4,s4,a5
    1bf4:	f8148493          	addi	s1,s1,-127
    1bf8:	00000b13          	li	s6,0
    1bfc:	017bd793          	srli	a5,s7,0x17
    1c00:	009b9413          	slli	s0,s7,0x9
    1c04:	0ff7f793          	zext.b	a5,a5
    1c08:	00945413          	srli	s0,s0,0x9
    1c0c:	01fbdb93          	srli	s7,s7,0x1f
    1c10:	08078863          	beqz	a5,1ca0 <__divsf3+0x108>
    1c14:	0ff00713          	li	a4,255
    1c18:	0ae78463          	beq	a5,a4,1cc0 <__divsf3+0x128>
    1c1c:	00341413          	slli	s0,s0,0x3
    1c20:	04000737          	lui	a4,0x4000
    1c24:	00e46433          	or	s0,s0,a4
    1c28:	f8178793          	addi	a5,a5,-127 # 3ffff81 <main+0x3ffcdc5>
    1c2c:	00000713          	li	a4,0
    1c30:	40f489b3          	sub	s3,s1,a5
    1c34:	002b1793          	slli	a5,s6,0x2
    1c38:	00e7e7b3          	or	a5,a5,a4
    1c3c:	fff78793          	addi	a5,a5,-1
    1c40:	00e00693          	li	a3,14
    1c44:	017ac933          	xor	s2,s5,s7
    1c48:	08f6ea63          	bltu	a3,a5,1cdc <__divsf3+0x144>
    1c4c:	200016b7          	lui	a3,0x20001
    1c50:	00279793          	slli	a5,a5,0x2
    1c54:	00068693          	mv	a3,a3
    1c58:	00d787b3          	add	a5,a5,a3
    1c5c:	0007a783          	lw	a5,0(a5)
    1c60:	00078067          	jr	a5
    1c64:	020a0863          	beqz	s4,1c94 <__divsf3+0xfc>
    1c68:	000a0513          	mv	a0,s4
    1c6c:	5b1000ef          	jal	2a1c <__clzsi2>
    1c70:	ffb50793          	addi	a5,a0,-5
    1c74:	f8a00493          	li	s1,-118
    1c78:	00fa1a33          	sll	s4,s4,a5
    1c7c:	40a484b3          	sub	s1,s1,a0
    1c80:	f79ff06f          	j	1bf8 <__divsf3+0x60>
    1c84:	00200b13          	li	s6,2
    1c88:	f60a0ae3          	beqz	s4,1bfc <__divsf3+0x64>
    1c8c:	00300b13          	li	s6,3
    1c90:	f6dff06f          	j	1bfc <__divsf3+0x64>
    1c94:	00000493          	li	s1,0
    1c98:	00100b13          	li	s6,1
    1c9c:	f61ff06f          	j	1bfc <__divsf3+0x64>
    1ca0:	02040863          	beqz	s0,1cd0 <__divsf3+0x138>
    1ca4:	00040513          	mv	a0,s0
    1ca8:	575000ef          	jal	2a1c <__clzsi2>
    1cac:	ffb50793          	addi	a5,a0,-5
    1cb0:	00f41433          	sll	s0,s0,a5
    1cb4:	f8a00793          	li	a5,-118
    1cb8:	40a787b3          	sub	a5,a5,a0
    1cbc:	f71ff06f          	j	1c2c <__divsf3+0x94>
    1cc0:	00200713          	li	a4,2
    1cc4:	f60406e3          	beqz	s0,1c30 <__divsf3+0x98>
    1cc8:	00300713          	li	a4,3
    1ccc:	f65ff06f          	j	1c30 <__divsf3+0x98>
    1cd0:	00000793          	li	a5,0
    1cd4:	00100713          	li	a4,1
    1cd8:	f59ff06f          	j	1c30 <__divsf3+0x98>
    1cdc:	00541b13          	slli	s6,s0,0x5
    1ce0:	148a7a63          	bgeu	s4,s0,1e34 <__divsf3+0x29c>
    1ce4:	fff98993          	addi	s3,s3,-1
    1ce8:	00000413          	li	s0,0
    1cec:	010b5a93          	srli	s5,s6,0x10
    1cf0:	000a8593          	mv	a1,s5
    1cf4:	010b1c13          	slli	s8,s6,0x10
    1cf8:	000a0513          	mv	a0,s4
    1cfc:	475000ef          	jal	2970 <__hidden___udivsi3>
    1d00:	010c5c13          	srli	s8,s8,0x10
    1d04:	00050593          	mv	a1,a0
    1d08:	00050493          	mv	s1,a0
    1d0c:	000c0513          	mv	a0,s8
    1d10:	435000ef          	jal	2944 <__mulsi3>
    1d14:	00050b93          	mv	s7,a0
    1d18:	000a8593          	mv	a1,s5
    1d1c:	000a0513          	mv	a0,s4
    1d20:	499000ef          	jal	29b8 <__umodsi3>
    1d24:	01051513          	slli	a0,a0,0x10
    1d28:	01045793          	srli	a5,s0,0x10
    1d2c:	00a7e7b3          	or	a5,a5,a0
    1d30:	0177fa63          	bgeu	a5,s7,1d44 <__divsf3+0x1ac>
    1d34:	00fb07b3          	add	a5,s6,a5
    1d38:	0177f463          	bgeu	a5,s7,1d40 <__divsf3+0x1a8>
    1d3c:	1167f263          	bgeu	a5,s6,1e40 <__divsf3+0x2a8>
    1d40:	fff48493          	addi	s1,s1,-1
    1d44:	41778433          	sub	s0,a5,s7
    1d48:	000a8593          	mv	a1,s5
    1d4c:	00040513          	mv	a0,s0
    1d50:	421000ef          	jal	2970 <__hidden___udivsi3>
    1d54:	00050593          	mv	a1,a0
    1d58:	00050a13          	mv	s4,a0
    1d5c:	000c0513          	mv	a0,s8
    1d60:	3e5000ef          	jal	2944 <__mulsi3>
    1d64:	00050b93          	mv	s7,a0
    1d68:	000a8593          	mv	a1,s5
    1d6c:	00040513          	mv	a0,s0
    1d70:	449000ef          	jal	29b8 <__umodsi3>
    1d74:	01051793          	slli	a5,a0,0x10
    1d78:	0177fe63          	bgeu	a5,s7,1d94 <__divsf3+0x1fc>
    1d7c:	01678733          	add	a4,a5,s6
    1d80:	00f736b3          	sltu	a3,a4,a5
    1d84:	00070793          	mv	a5,a4
    1d88:	01777463          	bgeu	a4,s7,1d90 <__divsf3+0x1f8>
    1d8c:	0c068063          	beqz	a3,1e4c <__divsf3+0x2b4>
    1d90:	fffa0a13          	addi	s4,s4,-1
    1d94:	01049413          	slli	s0,s1,0x10
    1d98:	417787b3          	sub	a5,a5,s7
    1d9c:	01446433          	or	s0,s0,s4
    1da0:	00f037b3          	snez	a5,a5
    1da4:	00f46433          	or	s0,s0,a5
    1da8:	07f98713          	addi	a4,s3,127
    1dac:	0ee05263          	blez	a4,1e90 <__divsf3+0x2f8>
    1db0:	00747793          	andi	a5,s0,7
    1db4:	00078a63          	beqz	a5,1dc8 <__divsf3+0x230>
    1db8:	00f47793          	andi	a5,s0,15
    1dbc:	00400693          	li	a3,4
    1dc0:	00d78463          	beq	a5,a3,1dc8 <__divsf3+0x230>
    1dc4:	00d40433          	add	s0,s0,a3
    1dc8:	00441793          	slli	a5,s0,0x4
    1dcc:	0007da63          	bgez	a5,1de0 <__divsf3+0x248>
    1dd0:	f80007b7          	lui	a5,0xf8000
    1dd4:	fff78793          	addi	a5,a5,-1 # f7ffffff <_stack_top+0xd7fdffff>
    1dd8:	00f47433          	and	s0,s0,a5
    1ddc:	08098713          	addi	a4,s3,128
    1de0:	0fe00793          	li	a5,254
    1de4:	10e7ce63          	blt	a5,a4,1f00 <__divsf3+0x368>
    1de8:	00345793          	srli	a5,s0,0x3
    1dec:	02c12083          	lw	ra,44(sp)
    1df0:	02812403          	lw	s0,40(sp)
    1df4:	00979793          	slli	a5,a5,0x9
    1df8:	01771713          	slli	a4,a4,0x17
    1dfc:	0097d793          	srli	a5,a5,0x9
    1e00:	01f91513          	slli	a0,s2,0x1f
    1e04:	00f76733          	or	a4,a4,a5
    1e08:	02412483          	lw	s1,36(sp)
    1e0c:	02012903          	lw	s2,32(sp)
    1e10:	01c12983          	lw	s3,28(sp)
    1e14:	01812a03          	lw	s4,24(sp)
    1e18:	01412a83          	lw	s5,20(sp)
    1e1c:	01012b03          	lw	s6,16(sp)
    1e20:	00c12b83          	lw	s7,12(sp)
    1e24:	00812c03          	lw	s8,8(sp)
    1e28:	00a76533          	or	a0,a4,a0
    1e2c:	03010113          	addi	sp,sp,48
    1e30:	00008067          	ret
    1e34:	01fa1413          	slli	s0,s4,0x1f
    1e38:	001a5a13          	srli	s4,s4,0x1
    1e3c:	eb1ff06f          	j	1cec <__divsf3+0x154>
    1e40:	ffe48493          	addi	s1,s1,-2
    1e44:	016787b3          	add	a5,a5,s6
    1e48:	efdff06f          	j	1d44 <__divsf3+0x1ac>
    1e4c:	ffea0a13          	addi	s4,s4,-2
    1e50:	016707b3          	add	a5,a4,s6
    1e54:	f41ff06f          	j	1d94 <__divsf3+0x1fc>
    1e58:	000b8913          	mv	s2,s7
    1e5c:	00200793          	li	a5,2
    1e60:	0af70063          	beq	a4,a5,1f00 <__divsf3+0x368>
    1e64:	00300793          	li	a5,3
    1e68:	08f70463          	beq	a4,a5,1ef0 <__divsf3+0x358>
    1e6c:	00100793          	li	a5,1
    1e70:	f2f71ce3          	bne	a4,a5,1da8 <__divsf3+0x210>
    1e74:	00000793          	li	a5,0
    1e78:	00000713          	li	a4,0
    1e7c:	f71ff06f          	j	1dec <__divsf3+0x254>
    1e80:	000a8913          	mv	s2,s5
    1e84:	000a0413          	mv	s0,s4
    1e88:	000b0713          	mv	a4,s6
    1e8c:	fd1ff06f          	j	1e5c <__divsf3+0x2c4>
    1e90:	04070c63          	beqz	a4,1ee8 <__divsf3+0x350>
    1e94:	fe600793          	li	a5,-26
    1e98:	fcf74ee3          	blt	a4,a5,1e74 <__divsf3+0x2dc>
    1e9c:	00100793          	li	a5,1
    1ea0:	40e787b3          	sub	a5,a5,a4
    1ea4:	09e98493          	addi	s1,s3,158
    1ea8:	00f457b3          	srl	a5,s0,a5
    1eac:	00941433          	sll	s0,s0,s1
    1eb0:	00803433          	snez	s0,s0
    1eb4:	0087e7b3          	or	a5,a5,s0
    1eb8:	0077f713          	andi	a4,a5,7
    1ebc:	00070a63          	beqz	a4,1ed0 <__divsf3+0x338>
    1ec0:	00f7f713          	andi	a4,a5,15
    1ec4:	00400693          	li	a3,4
    1ec8:	00d70463          	beq	a4,a3,1ed0 <__divsf3+0x338>
    1ecc:	00d787b3          	add	a5,a5,a3
    1ed0:	00579713          	slli	a4,a5,0x5
    1ed4:	0037d793          	srli	a5,a5,0x3
    1ed8:	fa0750e3          	bgez	a4,1e78 <__divsf3+0x2e0>
    1edc:	00000793          	li	a5,0
    1ee0:	00100713          	li	a4,1
    1ee4:	f09ff06f          	j	1dec <__divsf3+0x254>
    1ee8:	00100793          	li	a5,1
    1eec:	fb9ff06f          	j	1ea4 <__divsf3+0x30c>
    1ef0:	004007b7          	lui	a5,0x400
    1ef4:	0ff00713          	li	a4,255
    1ef8:	00000913          	li	s2,0
    1efc:	ef1ff06f          	j	1dec <__divsf3+0x254>
    1f00:	00000793          	li	a5,0
    1f04:	0ff00713          	li	a4,255
    1f08:	ee5ff06f          	j	1dec <__divsf3+0x254>

00001f0c <__gesf2>:
    1f0c:	00800737          	lui	a4,0x800
    1f10:	fff70713          	addi	a4,a4,-1 # 7fffff <main+0x7fce43>
    1f14:	00a77633          	and	a2,a4,a0
    1f18:	01755693          	srli	a3,a0,0x17
    1f1c:	0ff6f693          	zext.b	a3,a3
    1f20:	01f55793          	srli	a5,a0,0x1f
    1f24:	00b77733          	and	a4,a4,a1
    1f28:	01f5d893          	srli	a7,a1,0x1f
    1f2c:	00060863          	beqz	a2,1f3c <__gesf2+0x30>
    1f30:	f0168813          	addi	a6,a3,-255 # 20000f01 <__mailbox_start+0xf01>
    1f34:	ffe00513          	li	a0,-2
    1f38:	06080463          	beqz	a6,1fa0 <__gesf2+0x94>
    1f3c:	0175d593          	srli	a1,a1,0x17
    1f40:	0ff5f593          	zext.b	a1,a1
    1f44:	00070863          	beqz	a4,1f54 <__gesf2+0x48>
    1f48:	f0158813          	addi	a6,a1,-255 # 3ffff01 <main+0x3ffcd45>
    1f4c:	ffe00513          	li	a0,-2
    1f50:	04080863          	beqz	a6,1fa0 <__gesf2+0x94>
    1f54:	00c6e533          	or	a0,a3,a2
    1f58:	00e5e833          	or	a6,a1,a4
    1f5c:	00051a63          	bnez	a0,1f70 <__gesf2+0x64>
    1f60:	04080063          	beqz	a6,1fa0 <__gesf2+0x94>
    1f64:	00189513          	slli	a0,a7,0x1
    1f68:	fff50513          	addi	a0,a0,-1
    1f6c:	00008067          	ret
    1f70:	00081863          	bnez	a6,1f80 <__gesf2+0x74>
    1f74:	40f007b3          	neg	a5,a5
    1f78:	0017e513          	ori	a0,a5,1
    1f7c:	00008067          	ret
    1f80:	ff179ae3          	bne	a5,a7,1f74 <__gesf2+0x68>
    1f84:	fed5c8e3          	blt	a1,a3,1f74 <__gesf2+0x68>
    1f88:	00b6d663          	bge	a3,a1,1f94 <__gesf2+0x88>
    1f8c:	00179513          	slli	a0,a5,0x1
    1f90:	fd9ff06f          	j	1f68 <__gesf2+0x5c>
    1f94:	fec760e3          	bltu	a4,a2,1f74 <__gesf2+0x68>
    1f98:	00000513          	li	a0,0
    1f9c:	fee668e3          	bltu	a2,a4,1f8c <__gesf2+0x80>
    1fa0:	00008067          	ret

00001fa4 <__lesf2>:
    1fa4:	00800737          	lui	a4,0x800
    1fa8:	fff70713          	addi	a4,a4,-1 # 7fffff <main+0x7fce43>
    1fac:	00a77633          	and	a2,a4,a0
    1fb0:	01755693          	srli	a3,a0,0x17
    1fb4:	0ff6f693          	zext.b	a3,a3
    1fb8:	01f55793          	srli	a5,a0,0x1f
    1fbc:	00b77733          	and	a4,a4,a1
    1fc0:	01f5d893          	srli	a7,a1,0x1f
    1fc4:	00060863          	beqz	a2,1fd4 <__lesf2+0x30>
    1fc8:	f0168813          	addi	a6,a3,-255
    1fcc:	00200513          	li	a0,2
    1fd0:	06080463          	beqz	a6,2038 <__lesf2+0x94>
    1fd4:	0175d593          	srli	a1,a1,0x17
    1fd8:	0ff5f593          	zext.b	a1,a1
    1fdc:	00070863          	beqz	a4,1fec <__lesf2+0x48>
    1fe0:	f0158813          	addi	a6,a1,-255
    1fe4:	00200513          	li	a0,2
    1fe8:	04080863          	beqz	a6,2038 <__lesf2+0x94>
    1fec:	00c6e533          	or	a0,a3,a2
    1ff0:	00e5e833          	or	a6,a1,a4
    1ff4:	00051a63          	bnez	a0,2008 <__lesf2+0x64>
    1ff8:	04080063          	beqz	a6,2038 <__lesf2+0x94>
    1ffc:	00189513          	slli	a0,a7,0x1
    2000:	fff50513          	addi	a0,a0,-1
    2004:	00008067          	ret
    2008:	00081863          	bnez	a6,2018 <__lesf2+0x74>
    200c:	40f007b3          	neg	a5,a5
    2010:	0017e513          	ori	a0,a5,1
    2014:	00008067          	ret
    2018:	ff179ae3          	bne	a5,a7,200c <__lesf2+0x68>
    201c:	fed5c8e3          	blt	a1,a3,200c <__lesf2+0x68>
    2020:	00b6d663          	bge	a3,a1,202c <__lesf2+0x88>
    2024:	00179513          	slli	a0,a5,0x1
    2028:	fd9ff06f          	j	2000 <__lesf2+0x5c>
    202c:	fec760e3          	bltu	a4,a2,200c <__lesf2+0x68>
    2030:	00000513          	li	a0,0
    2034:	fee668e3          	bltu	a2,a4,2024 <__lesf2+0x80>
    2038:	00008067          	ret

0000203c <__mulsf3>:
    203c:	fe010113          	addi	sp,sp,-32
    2040:	01212823          	sw	s2,16(sp)
    2044:	01755913          	srli	s2,a0,0x17
    2048:	00912a23          	sw	s1,20(sp)
    204c:	01312623          	sw	s3,12(sp)
    2050:	01512223          	sw	s5,4(sp)
    2054:	00951493          	slli	s1,a0,0x9
    2058:	00112e23          	sw	ra,28(sp)
    205c:	00812c23          	sw	s0,24(sp)
    2060:	01412423          	sw	s4,8(sp)
    2064:	0ff97913          	zext.b	s2,s2
    2068:	00058a93          	mv	s5,a1
    206c:	0094d493          	srli	s1,s1,0x9
    2070:	01f55993          	srli	s3,a0,0x1f
    2074:	1a090a63          	beqz	s2,2228 <__mulsf3+0x1ec>
    2078:	0ff00793          	li	a5,255
    207c:	1cf90663          	beq	s2,a5,2248 <__mulsf3+0x20c>
    2080:	00349493          	slli	s1,s1,0x3
    2084:	040007b7          	lui	a5,0x4000
    2088:	00f4e4b3          	or	s1,s1,a5
    208c:	f8190913          	addi	s2,s2,-127
    2090:	00000a13          	li	s4,0
    2094:	017ad793          	srli	a5,s5,0x17
    2098:	009a9413          	slli	s0,s5,0x9
    209c:	0ff7f793          	zext.b	a5,a5
    20a0:	00945413          	srli	s0,s0,0x9
    20a4:	01fada93          	srli	s5,s5,0x1f
    20a8:	1a078e63          	beqz	a5,2264 <__mulsf3+0x228>
    20ac:	0ff00713          	li	a4,255
    20b0:	1ce78a63          	beq	a5,a4,2284 <__mulsf3+0x248>
    20b4:	00341413          	slli	s0,s0,0x3
    20b8:	04000737          	lui	a4,0x4000
    20bc:	00e46433          	or	s0,s0,a4
    20c0:	f8178793          	addi	a5,a5,-127 # 3ffff81 <main+0x3ffcdc5>
    20c4:	00000713          	li	a4,0
    20c8:	00f90933          	add	s2,s2,a5
    20cc:	002a1793          	slli	a5,s4,0x2
    20d0:	00e7e7b3          	or	a5,a5,a4
    20d4:	00a00693          	li	a3,10
    20d8:	00190813          	addi	a6,s2,1
    20dc:	20f6c463          	blt	a3,a5,22e4 <__mulsf3+0x2a8>
    20e0:	00200613          	li	a2,2
    20e4:	0159c9b3          	xor	s3,s3,s5
    20e8:	00100693          	li	a3,1
    20ec:	1af64a63          	blt	a2,a5,22a0 <__mulsf3+0x264>
    20f0:	fff78793          	addi	a5,a5,-1
    20f4:	1cf6f663          	bgeu	a3,a5,22c0 <__mulsf3+0x284>
    20f8:	01045793          	srli	a5,s0,0x10
    20fc:	01041413          	slli	s0,s0,0x10
    2100:	01049513          	slli	a0,s1,0x10
    2104:	01045413          	srli	s0,s0,0x10
    2108:	0104de13          	srli	t3,s1,0x10
    210c:	01055513          	srli	a0,a0,0x10
    2110:	00040593          	mv	a1,s0
    2114:	031000ef          	jal	2944 <__mulsi3>
    2118:	00050893          	mv	a7,a0
    211c:	01049513          	slli	a0,s1,0x10
    2120:	01055513          	srli	a0,a0,0x10
    2124:	00078593          	mv	a1,a5
    2128:	01d000ef          	jal	2944 <__mulsi3>
    212c:	00050713          	mv	a4,a0
    2130:	00040593          	mv	a1,s0
    2134:	000e0513          	mv	a0,t3
    2138:	00d000ef          	jal	2944 <__mulsi3>
    213c:	00050313          	mv	t1,a0
    2140:	00078593          	mv	a1,a5
    2144:	000e0513          	mv	a0,t3
    2148:	7fc000ef          	jal	2944 <__mulsi3>
    214c:	0108d793          	srli	a5,a7,0x10
    2150:	00670733          	add	a4,a4,t1
    2154:	00e787b3          	add	a5,a5,a4
    2158:	0067f663          	bgeu	a5,t1,2164 <__mulsf3+0x128>
    215c:	00010737          	lui	a4,0x10
    2160:	00e50533          	add	a0,a0,a4
    2164:	01089893          	slli	a7,a7,0x10
    2168:	01079713          	slli	a4,a5,0x10
    216c:	0108d893          	srli	a7,a7,0x10
    2170:	01170733          	add	a4,a4,a7
    2174:	0107d793          	srli	a5,a5,0x10
    2178:	00671413          	slli	s0,a4,0x6
    217c:	00a787b3          	add	a5,a5,a0
    2180:	01a75713          	srli	a4,a4,0x1a
    2184:	00679793          	slli	a5,a5,0x6
    2188:	00803433          	snez	s0,s0
    218c:	00e46433          	or	s0,s0,a4
    2190:	00479713          	slli	a4,a5,0x4
    2194:	0087e433          	or	s0,a5,s0
    2198:	16075463          	bgez	a4,2300 <__mulsf3+0x2c4>
    219c:	00145793          	srli	a5,s0,0x1
    21a0:	00147413          	andi	s0,s0,1
    21a4:	0087e433          	or	s0,a5,s0
    21a8:	07f80513          	addi	a0,a6,127
    21ac:	14a05e63          	blez	a0,2308 <__mulsf3+0x2cc>
    21b0:	00747793          	andi	a5,s0,7
    21b4:	00078a63          	beqz	a5,21c8 <__mulsf3+0x18c>
    21b8:	00f47793          	andi	a5,s0,15
    21bc:	00400713          	li	a4,4
    21c0:	00e78463          	beq	a5,a4,21c8 <__mulsf3+0x18c>
    21c4:	00e40433          	add	s0,s0,a4
    21c8:	00441793          	slli	a5,s0,0x4
    21cc:	0007da63          	bgez	a5,21e0 <__mulsf3+0x1a4>
    21d0:	f80007b7          	lui	a5,0xf8000
    21d4:	fff78793          	addi	a5,a5,-1 # f7ffffff <_stack_top+0xd7fdffff>
    21d8:	00f47433          	and	s0,s0,a5
    21dc:	08080513          	addi	a0,a6,128
    21e0:	0fe00793          	li	a5,254
    21e4:	18a7ca63          	blt	a5,a0,2378 <__mulsf3+0x33c>
    21e8:	00345793          	srli	a5,s0,0x3
    21ec:	01c12083          	lw	ra,28(sp)
    21f0:	01812403          	lw	s0,24(sp)
    21f4:	00979793          	slli	a5,a5,0x9
    21f8:	01751513          	slli	a0,a0,0x17
    21fc:	0097d793          	srli	a5,a5,0x9
    2200:	01f99993          	slli	s3,s3,0x1f
    2204:	00f56533          	or	a0,a0,a5
    2208:	01412483          	lw	s1,20(sp)
    220c:	01012903          	lw	s2,16(sp)
    2210:	00812a03          	lw	s4,8(sp)
    2214:	00412a83          	lw	s5,4(sp)
    2218:	01356533          	or	a0,a0,s3
    221c:	00c12983          	lw	s3,12(sp)
    2220:	02010113          	addi	sp,sp,32
    2224:	00008067          	ret
    2228:	02048863          	beqz	s1,2258 <__mulsf3+0x21c>
    222c:	00048513          	mv	a0,s1
    2230:	7ec000ef          	jal	2a1c <__clzsi2>
    2234:	ffb50793          	addi	a5,a0,-5
    2238:	f8a00913          	li	s2,-118
    223c:	00f494b3          	sll	s1,s1,a5
    2240:	40a90933          	sub	s2,s2,a0
    2244:	e4dff06f          	j	2090 <__mulsf3+0x54>
    2248:	00200a13          	li	s4,2
    224c:	e40484e3          	beqz	s1,2094 <__mulsf3+0x58>
    2250:	00300a13          	li	s4,3
    2254:	e41ff06f          	j	2094 <__mulsf3+0x58>
    2258:	00000913          	li	s2,0
    225c:	00100a13          	li	s4,1
    2260:	e35ff06f          	j	2094 <__mulsf3+0x58>
    2264:	02040863          	beqz	s0,2294 <__mulsf3+0x258>
    2268:	00040513          	mv	a0,s0
    226c:	7b0000ef          	jal	2a1c <__clzsi2>
    2270:	ffb50793          	addi	a5,a0,-5
    2274:	00f41433          	sll	s0,s0,a5
    2278:	f8a00793          	li	a5,-118
    227c:	40a787b3          	sub	a5,a5,a0
    2280:	e45ff06f          	j	20c4 <__mulsf3+0x88>
    2284:	00200713          	li	a4,2
    2288:	e40400e3          	beqz	s0,20c8 <__mulsf3+0x8c>
    228c:	00300713          	li	a4,3
    2290:	e39ff06f          	j	20c8 <__mulsf3+0x8c>
    2294:	00000793          	li	a5,0
    2298:	00100713          	li	a4,1
    229c:	e2dff06f          	j	20c8 <__mulsf3+0x8c>
    22a0:	00f697b3          	sll	a5,a3,a5
    22a4:	5307f693          	andi	a3,a5,1328
    22a8:	04069663          	bnez	a3,22f4 <__mulsf3+0x2b8>
    22ac:	2407f693          	andi	a3,a5,576
    22b0:	0a069c63          	bnez	a3,2368 <__mulsf3+0x32c>
    22b4:	0887f793          	andi	a5,a5,136
    22b8:	e40780e3          	beqz	a5,20f8 <__mulsf3+0xbc>
    22bc:	000a8993          	mv	s3,s5
    22c0:	00200793          	li	a5,2
    22c4:	0af70a63          	beq	a4,a5,2378 <__mulsf3+0x33c>
    22c8:	00300793          	li	a5,3
    22cc:	08f70e63          	beq	a4,a5,2368 <__mulsf3+0x32c>
    22d0:	00100793          	li	a5,1
    22d4:	ecf71ae3          	bne	a4,a5,21a8 <__mulsf3+0x16c>
    22d8:	00000793          	li	a5,0
    22dc:	00000513          	li	a0,0
    22e0:	f0dff06f          	j	21ec <__mulsf3+0x1b0>
    22e4:	00f00693          	li	a3,15
    22e8:	08d78063          	beq	a5,a3,2368 <__mulsf3+0x32c>
    22ec:	00b00693          	li	a3,11
    22f0:	fcd786e3          	beq	a5,a3,22bc <__mulsf3+0x280>
    22f4:	00048413          	mv	s0,s1
    22f8:	000a0713          	mv	a4,s4
    22fc:	fc5ff06f          	j	22c0 <__mulsf3+0x284>
    2300:	00090813          	mv	a6,s2
    2304:	ea5ff06f          	j	21a8 <__mulsf3+0x16c>
    2308:	04050c63          	beqz	a0,2360 <__mulsf3+0x324>
    230c:	fe600793          	li	a5,-26
    2310:	fcf544e3          	blt	a0,a5,22d8 <__mulsf3+0x29c>
    2314:	00100793          	li	a5,1
    2318:	40a787b3          	sub	a5,a5,a0
    231c:	09e80813          	addi	a6,a6,158
    2320:	00f457b3          	srl	a5,s0,a5
    2324:	01041433          	sll	s0,s0,a6
    2328:	00803433          	snez	s0,s0
    232c:	0087e7b3          	or	a5,a5,s0
    2330:	0077f713          	andi	a4,a5,7
    2334:	00070a63          	beqz	a4,2348 <__mulsf3+0x30c>
    2338:	00f7f713          	andi	a4,a5,15
    233c:	00400693          	li	a3,4
    2340:	00d70463          	beq	a4,a3,2348 <__mulsf3+0x30c>
    2344:	00d787b3          	add	a5,a5,a3
    2348:	00579713          	slli	a4,a5,0x5
    234c:	0037d793          	srli	a5,a5,0x3
    2350:	f80756e3          	bgez	a4,22dc <__mulsf3+0x2a0>
    2354:	00000793          	li	a5,0
    2358:	00100513          	li	a0,1
    235c:	e91ff06f          	j	21ec <__mulsf3+0x1b0>
    2360:	00100793          	li	a5,1
    2364:	fb9ff06f          	j	231c <__mulsf3+0x2e0>
    2368:	004007b7          	lui	a5,0x400
    236c:	0ff00513          	li	a0,255
    2370:	00000993          	li	s3,0
    2374:	e79ff06f          	j	21ec <__mulsf3+0x1b0>
    2378:	00000793          	li	a5,0
    237c:	0ff00513          	li	a0,255
    2380:	e6dff06f          	j	21ec <__mulsf3+0x1b0>

00002384 <__subsf3>:
    2384:	00800737          	lui	a4,0x800
    2388:	fff70713          	addi	a4,a4,-1 # 7fffff <main+0x7fce43>
    238c:	0175d693          	srli	a3,a1,0x17
    2390:	00a777b3          	and	a5,a4,a0
    2394:	0ff6f693          	zext.b	a3,a3
    2398:	00b77733          	and	a4,a4,a1
    239c:	ff010113          	addi	sp,sp,-16
    23a0:	00371713          	slli	a4,a4,0x3
    23a4:	f0168613          	addi	a2,a3,-255
    23a8:	00812423          	sw	s0,8(sp)
    23ac:	00912223          	sw	s1,4(sp)
    23b0:	01755413          	srli	s0,a0,0x17
    23b4:	01f55493          	srli	s1,a0,0x1f
    23b8:	00c03633          	snez	a2,a2
    23bc:	00173513          	seqz	a0,a4
    23c0:	00a66633          	or	a2,a2,a0
    23c4:	01f5d593          	srli	a1,a1,0x1f
    23c8:	0ff47413          	zext.b	s0,s0
    23cc:	00c5c5b3          	xor	a1,a1,a2
    23d0:	00112623          	sw	ra,12(sp)
    23d4:	01212023          	sw	s2,0(sp)
    23d8:	00379793          	slli	a5,a5,0x3
    23dc:	40d40633          	sub	a2,s0,a3
    23e0:	1c959c63          	bne	a1,s1,25b8 <__subsf3+0x234>
    23e4:	08c05e63          	blez	a2,2480 <__subsf3+0xfc>
    23e8:	0ff00513          	li	a0,255
    23ec:	02069663          	bnez	a3,2418 <__subsf3+0x94>
    23f0:	00070e63          	beqz	a4,240c <__subsf3+0x88>
    23f4:	fff60593          	addi	a1,a2,-1 # 3ffffff <main+0x3ffce43>
    23f8:	00059863          	bnez	a1,2408 <__subsf3+0x84>
    23fc:	00e787b3          	add	a5,a5,a4
    2400:	00100413          	li	s0,1
    2404:	04c0006f          	j	2450 <__subsf3+0xcc>
    2408:	02a61063          	bne	a2,a0,2428 <__subsf3+0xa4>
    240c:	00060413          	mv	s0,a2
    2410:	00078713          	mv	a4,a5
    2414:	3880006f          	j	279c <__subsf3+0x418>
    2418:	fea40ce3          	beq	s0,a0,2410 <__subsf3+0x8c>
    241c:	040006b7          	lui	a3,0x4000
    2420:	00d76733          	or	a4,a4,a3
    2424:	00060593          	mv	a1,a2
    2428:	01b00613          	li	a2,27
    242c:	00100693          	li	a3,1
    2430:	00b64e63          	blt	a2,a1,244c <__subsf3+0xc8>
    2434:	02000693          	li	a3,32
    2438:	40b686b3          	sub	a3,a3,a1
    243c:	00b75633          	srl	a2,a4,a1
    2440:	00d71733          	sll	a4,a4,a3
    2444:	00e03733          	snez	a4,a4
    2448:	00e666b3          	or	a3,a2,a4
    244c:	00d787b3          	add	a5,a5,a3
    2450:	00579713          	slli	a4,a5,0x5
    2454:	12075263          	bgez	a4,2578 <__subsf3+0x1f4>
    2458:	00140413          	addi	s0,s0,1
    245c:	0ff00713          	li	a4,255
    2460:	36e40063          	beq	s0,a4,27c0 <__subsf3+0x43c>
    2464:	7e0006b7          	lui	a3,0x7e000
    2468:	0017d713          	srli	a4,a5,0x1
    246c:	fff68693          	addi	a3,a3,-1 # 7dffffff <_stack_top+0x5dfdffff>
    2470:	00d77733          	and	a4,a4,a3
    2474:	0017f793          	andi	a5,a5,1
    2478:	00f767b3          	or	a5,a4,a5
    247c:	0fc0006f          	j	2578 <__subsf3+0x1f4>
    2480:	06060463          	beqz	a2,24e8 <__subsf3+0x164>
    2484:	40868633          	sub	a2,a3,s0
    2488:	0ff00513          	li	a0,255
    248c:	00041e63          	bnez	s0,24a8 <__subsf3+0x124>
    2490:	30078463          	beqz	a5,2798 <__subsf3+0x414>
    2494:	fff60593          	addi	a1,a2,-1
    2498:	f60582e3          	beqz	a1,23fc <__subsf3+0x78>
    249c:	00a61e63          	bne	a2,a0,24b8 <__subsf3+0x134>
    24a0:	0ff00413          	li	s0,255
    24a4:	2f80006f          	j	279c <__subsf3+0x418>
    24a8:	fea68ce3          	beq	a3,a0,24a0 <__subsf3+0x11c>
    24ac:	040005b7          	lui	a1,0x4000
    24b0:	00b7e7b3          	or	a5,a5,a1
    24b4:	00060593          	mv	a1,a2
    24b8:	01b00513          	li	a0,27
    24bc:	00100613          	li	a2,1
    24c0:	00b54e63          	blt	a0,a1,24dc <__subsf3+0x158>
    24c4:	02000613          	li	a2,32
    24c8:	40b60633          	sub	a2,a2,a1
    24cc:	00b7d533          	srl	a0,a5,a1
    24d0:	00c797b3          	sll	a5,a5,a2
    24d4:	00f037b3          	snez	a5,a5
    24d8:	00f56633          	or	a2,a0,a5
    24dc:	00e607b3          	add	a5,a2,a4
    24e0:	00068413          	mv	s0,a3
    24e4:	f6dff06f          	j	2450 <__subsf3+0xcc>
    24e8:	00140693          	addi	a3,s0,1
    24ec:	0fe6f613          	andi	a2,a3,254
    24f0:	06061a63          	bnez	a2,2564 <__subsf3+0x1e0>
    24f4:	06041063          	bnez	s0,2554 <__subsf3+0x1d0>
    24f8:	28078c63          	beqz	a5,2790 <__subsf3+0x40c>
    24fc:	08070a63          	beqz	a4,2590 <__subsf3+0x20c>
    2500:	00f70733          	add	a4,a4,a5
    2504:	00571793          	slli	a5,a4,0x5
    2508:	2807da63          	bgez	a5,279c <__subsf3+0x418>
    250c:	1f8007b7          	lui	a5,0x1f800
    2510:	00375713          	srli	a4,a4,0x3
    2514:	fff78793          	addi	a5,a5,-1 # 1f7fffff <main+0x1f7fce43>
    2518:	00f777b3          	and	a5,a4,a5
    251c:	00100413          	li	s0,1
    2520:	0ff47413          	zext.b	s0,s0
    2524:	00979793          	slli	a5,a5,0x9
    2528:	01741413          	slli	s0,s0,0x17
    252c:	0097d793          	srli	a5,a5,0x9
    2530:	00f46433          	or	s0,s0,a5
    2534:	01f49513          	slli	a0,s1,0x1f
    2538:	00c12083          	lw	ra,12(sp)
    253c:	00a46533          	or	a0,s0,a0
    2540:	00812403          	lw	s0,8(sp)
    2544:	00412483          	lw	s1,4(sp)
    2548:	00012903          	lw	s2,0(sp)
    254c:	01010113          	addi	sp,sp,16
    2550:	00008067          	ret
    2554:	f40786e3          	beqz	a5,24a0 <__subsf3+0x11c>
    2558:	1a071e63          	bnez	a4,2714 <__subsf3+0x390>
    255c:	00078713          	mv	a4,a5
    2560:	f41ff06f          	j	24a0 <__subsf3+0x11c>
    2564:	0ff00613          	li	a2,255
    2568:	24c68a63          	beq	a3,a2,27bc <__subsf3+0x438>
    256c:	00e78733          	add	a4,a5,a4
    2570:	00175793          	srli	a5,a4,0x1
    2574:	00068413          	mv	s0,a3
    2578:	0077f713          	andi	a4,a5,7
    257c:	00070a63          	beqz	a4,2590 <__subsf3+0x20c>
    2580:	00f7f713          	andi	a4,a5,15
    2584:	00400693          	li	a3,4
    2588:	00d70463          	beq	a4,a3,2590 <__subsf3+0x20c>
    258c:	00d787b3          	add	a5,a5,a3
    2590:	00579713          	slli	a4,a5,0x5
    2594:	e6075ee3          	bgez	a4,2410 <__subsf3+0x8c>
    2598:	00140413          	addi	s0,s0,1
    259c:	0ff00713          	li	a4,255
    25a0:	22e40063          	beq	s0,a4,27c0 <__subsf3+0x43c>
    25a4:	1f800737          	lui	a4,0x1f800
    25a8:	0037d793          	srli	a5,a5,0x3
    25ac:	fff70713          	addi	a4,a4,-1 # 1f7fffff <main+0x1f7fce43>
    25b0:	00e7f7b3          	and	a5,a5,a4
    25b4:	f6dff06f          	j	2520 <__subsf3+0x19c>
    25b8:	08c05063          	blez	a2,2638 <__subsf3+0x2b4>
    25bc:	06069263          	bnez	a3,2620 <__subsf3+0x29c>
    25c0:	e40706e3          	beqz	a4,240c <__subsf3+0x88>
    25c4:	fff60593          	addi	a1,a2,-1
    25c8:	00059863          	bnez	a1,25d8 <__subsf3+0x254>
    25cc:	40e787b3          	sub	a5,a5,a4
    25d0:	00100413          	li	s0,1
    25d4:	0340006f          	j	2608 <__subsf3+0x284>
    25d8:	0ff00693          	li	a3,255
    25dc:	e2d608e3          	beq	a2,a3,240c <__subsf3+0x88>
    25e0:	01b00613          	li	a2,27
    25e4:	00100693          	li	a3,1
    25e8:	00b64e63          	blt	a2,a1,2604 <__subsf3+0x280>
    25ec:	02000693          	li	a3,32
    25f0:	40b686b3          	sub	a3,a3,a1
    25f4:	00b75633          	srl	a2,a4,a1
    25f8:	00d71733          	sll	a4,a4,a3
    25fc:	00e03733          	snez	a4,a4
    2600:	00e666b3          	or	a3,a2,a4
    2604:	40d787b3          	sub	a5,a5,a3
    2608:	00579713          	slli	a4,a5,0x5
    260c:	f60756e3          	bgez	a4,2578 <__subsf3+0x1f4>
    2610:	04000937          	lui	s2,0x4000
    2614:	fff90913          	addi	s2,s2,-1 # 3ffffff <main+0x3ffce43>
    2618:	0127f933          	and	s2,a5,s2
    261c:	11c0006f          	j	2738 <__subsf3+0x3b4>
    2620:	0ff00693          	li	a3,255
    2624:	ded406e3          	beq	s0,a3,2410 <__subsf3+0x8c>
    2628:	040006b7          	lui	a3,0x4000
    262c:	00d76733          	or	a4,a4,a3
    2630:	00060593          	mv	a1,a2
    2634:	fadff06f          	j	25e0 <__subsf3+0x25c>
    2638:	06060e63          	beqz	a2,26b4 <__subsf3+0x330>
    263c:	40868633          	sub	a2,a3,s0
    2640:	02041663          	bnez	s0,266c <__subsf3+0x2e8>
    2644:	02078063          	beqz	a5,2664 <__subsf3+0x2e0>
    2648:	fff60513          	addi	a0,a2,-1
    264c:	00051863          	bnez	a0,265c <__subsf3+0x2d8>
    2650:	40f707b3          	sub	a5,a4,a5
    2654:	00058493          	mv	s1,a1
    2658:	f79ff06f          	j	25d0 <__subsf3+0x24c>
    265c:	0ff00813          	li	a6,255
    2660:	03061063          	bne	a2,a6,2680 <__subsf3+0x2fc>
    2664:	00060413          	mv	s0,a2
    2668:	0680006f          	j	26d0 <__subsf3+0x34c>
    266c:	0ff00513          	li	a0,255
    2670:	14a68263          	beq	a3,a0,27b4 <__subsf3+0x430>
    2674:	04000537          	lui	a0,0x4000
    2678:	00a7e7b3          	or	a5,a5,a0
    267c:	00060513          	mv	a0,a2
    2680:	01b00813          	li	a6,27
    2684:	00100613          	li	a2,1
    2688:	00a84e63          	blt	a6,a0,26a4 <__subsf3+0x320>
    268c:	02000613          	li	a2,32
    2690:	40a60633          	sub	a2,a2,a0
    2694:	00a7d833          	srl	a6,a5,a0
    2698:	00c797b3          	sll	a5,a5,a2
    269c:	00f037b3          	snez	a5,a5
    26a0:	00f86633          	or	a2,a6,a5
    26a4:	40c707b3          	sub	a5,a4,a2
    26a8:	00068413          	mv	s0,a3
    26ac:	00058493          	mv	s1,a1
    26b0:	f59ff06f          	j	2608 <__subsf3+0x284>
    26b4:	00140693          	addi	a3,s0,1
    26b8:	0fe6f693          	andi	a3,a3,254
    26bc:	06069463          	bnez	a3,2724 <__subsf3+0x3a0>
    26c0:	04041863          	bnez	s0,2710 <__subsf3+0x38c>
    26c4:	00079a63          	bnez	a5,26d8 <__subsf3+0x354>
    26c8:	00000493          	li	s1,0
    26cc:	e4070ae3          	beqz	a4,2520 <__subsf3+0x19c>
    26d0:	00058493          	mv	s1,a1
    26d4:	0c80006f          	j	279c <__subsf3+0x418>
    26d8:	ea070ce3          	beqz	a4,2590 <__subsf3+0x20c>
    26dc:	40e786b3          	sub	a3,a5,a4
    26e0:	00569613          	slli	a2,a3,0x5
    26e4:	00065c63          	bgez	a2,26fc <__subsf3+0x378>
    26e8:	40f707b3          	sub	a5,a4,a5
    26ec:	00058493          	mv	s1,a1
    26f0:	00000413          	li	s0,0
    26f4:	e20786e3          	beqz	a5,2520 <__subsf3+0x19c>
    26f8:	e81ff06f          	j	2578 <__subsf3+0x1f4>
    26fc:	00068713          	mv	a4,a3
    2700:	08069e63          	bnez	a3,279c <__subsf3+0x418>
    2704:	00000793          	li	a5,0
    2708:	00000493          	li	s1,0
    270c:	e15ff06f          	j	2520 <__subsf3+0x19c>
    2710:	e40794e3          	bnez	a5,2558 <__subsf3+0x1d4>
    2714:	00000493          	li	s1,0
    2718:	0ff00413          	li	s0,255
    271c:	004007b7          	lui	a5,0x400
    2720:	e01ff06f          	j	2520 <__subsf3+0x19c>
    2724:	40e78933          	sub	s2,a5,a4
    2728:	00591693          	slli	a3,s2,0x5
    272c:	0406d263          	bgez	a3,2770 <__subsf3+0x3ec>
    2730:	40f70933          	sub	s2,a4,a5
    2734:	00058493          	mv	s1,a1
    2738:	00090513          	mv	a0,s2
    273c:	2e0000ef          	jal	2a1c <__clzsi2>
    2740:	ffb50513          	addi	a0,a0,-5 # 3fffffb <main+0x3ffce3f>
    2744:	00a91933          	sll	s2,s2,a0
    2748:	02854a63          	blt	a0,s0,277c <__subsf3+0x3f8>
    274c:	40850533          	sub	a0,a0,s0
    2750:	00150513          	addi	a0,a0,1
    2754:	02000713          	li	a4,32
    2758:	40a70733          	sub	a4,a4,a0
    275c:	00a957b3          	srl	a5,s2,a0
    2760:	00e91933          	sll	s2,s2,a4
    2764:	01203933          	snez	s2,s2
    2768:	0127e7b3          	or	a5,a5,s2
    276c:	f85ff06f          	j	26f0 <__subsf3+0x36c>
    2770:	fc0914e3          	bnez	s2,2738 <__subsf3+0x3b4>
    2774:	00000413          	li	s0,0
    2778:	f8dff06f          	j	2704 <__subsf3+0x380>
    277c:	fc0007b7          	lui	a5,0xfc000
    2780:	fff78793          	addi	a5,a5,-1 # fbffffff <_stack_top+0xdbfdffff>
    2784:	40a40433          	sub	s0,s0,a0
    2788:	00f977b3          	and	a5,s2,a5
    278c:	dedff06f          	j	2578 <__subsf3+0x1f4>
    2790:	00070793          	mv	a5,a4
    2794:	f5dff06f          	j	26f0 <__subsf3+0x36c>
    2798:	00060413          	mv	s0,a2
    279c:	00375793          	srli	a5,a4,0x3
    27a0:	0ff00713          	li	a4,255
    27a4:	d6e41ee3          	bne	s0,a4,2520 <__subsf3+0x19c>
    27a8:	d6078ce3          	beqz	a5,2520 <__subsf3+0x19c>
    27ac:	004007b7          	lui	a5,0x400
    27b0:	f59ff06f          	j	2708 <__subsf3+0x384>
    27b4:	00068413          	mv	s0,a3
    27b8:	f19ff06f          	j	26d0 <__subsf3+0x34c>
    27bc:	00068413          	mv	s0,a3
    27c0:	00000793          	li	a5,0
    27c4:	d5dff06f          	j	2520 <__subsf3+0x19c>

000027c8 <__fixsfsi>:
    27c8:	00800637          	lui	a2,0x800
    27cc:	01755713          	srli	a4,a0,0x17
    27d0:	fff60793          	addi	a5,a2,-1 # 7fffff <main+0x7fce43>
    27d4:	0ff77713          	zext.b	a4,a4
    27d8:	07e00593          	li	a1,126
    27dc:	00a7f7b3          	and	a5,a5,a0
    27e0:	01f55693          	srli	a3,a0,0x1f
    27e4:	04e5d663          	bge	a1,a4,2830 <__fixsfsi+0x68>
    27e8:	09d00593          	li	a1,157
    27ec:	00e5da63          	bge	a1,a4,2800 <__fixsfsi+0x38>
    27f0:	80000537          	lui	a0,0x80000
    27f4:	fff50513          	addi	a0,a0,-1 # 7fffffff <_stack_top+0x5ffdffff>
    27f8:	00a68533          	add	a0,a3,a0
    27fc:	00008067          	ret
    2800:	00c7e533          	or	a0,a5,a2
    2804:	09500793          	li	a5,149
    2808:	00e7dc63          	bge	a5,a4,2820 <__fixsfsi+0x58>
    280c:	f6a70713          	addi	a4,a4,-150
    2810:	00e51533          	sll	a0,a0,a4
    2814:	02068063          	beqz	a3,2834 <__fixsfsi+0x6c>
    2818:	40a00533          	neg	a0,a0
    281c:	00008067          	ret
    2820:	09600793          	li	a5,150
    2824:	40e787b3          	sub	a5,a5,a4
    2828:	00f55533          	srl	a0,a0,a5
    282c:	fe9ff06f          	j	2814 <__fixsfsi+0x4c>
    2830:	00000513          	li	a0,0
    2834:	00008067          	ret

00002838 <__floatsisf>:
    2838:	ff010113          	addi	sp,sp,-16
    283c:	00112623          	sw	ra,12(sp)
    2840:	00812423          	sw	s0,8(sp)
    2844:	00912223          	sw	s1,4(sp)
    2848:	0e050463          	beqz	a0,2930 <__floatsisf+0xf8>
    284c:	41f55793          	srai	a5,a0,0x1f
    2850:	00a7c433          	xor	s0,a5,a0
    2854:	40f40433          	sub	s0,s0,a5
    2858:	01f55493          	srli	s1,a0,0x1f
    285c:	00040513          	mv	a0,s0
    2860:	1bc000ef          	jal	2a1c <__clzsi2>
    2864:	09e00793          	li	a5,158
    2868:	00050693          	mv	a3,a0
    286c:	40a78533          	sub	a0,a5,a0
    2870:	00700793          	li	a5,7
    2874:	04d7d063          	bge	a5,a3,28b4 <__floatsisf+0x7c>
    2878:	00800793          	li	a5,8
    287c:	0cf68063          	beq	a3,a5,293c <__floatsisf+0x104>
    2880:	ff868693          	addi	a3,a3,-8 # 3fffff8 <main+0x3ffce3c>
    2884:	00d41433          	sll	s0,s0,a3
    2888:	00941413          	slli	s0,s0,0x9
    288c:	00945413          	srli	s0,s0,0x9
    2890:	01751513          	slli	a0,a0,0x17
    2894:	00c12083          	lw	ra,12(sp)
    2898:	00856533          	or	a0,a0,s0
    289c:	00812403          	lw	s0,8(sp)
    28a0:	01f49493          	slli	s1,s1,0x1f
    28a4:	00956533          	or	a0,a0,s1
    28a8:	00412483          	lw	s1,4(sp)
    28ac:	01010113          	addi	sp,sp,16
    28b0:	00008067          	ret
    28b4:	00400793          	li	a5,4
    28b8:	00500713          	li	a4,5
    28bc:	06d7c263          	blt	a5,a3,2920 <__floatsisf+0xe8>
    28c0:	01b68793          	addi	a5,a3,27
    28c4:	00f417b3          	sll	a5,s0,a5
    28c8:	40d70733          	sub	a4,a4,a3
    28cc:	00f037b3          	snez	a5,a5
    28d0:	00e45433          	srl	s0,s0,a4
    28d4:	0087e433          	or	s0,a5,s0
    28d8:	fc000737          	lui	a4,0xfc000
    28dc:	fff70713          	addi	a4,a4,-1 # fbffffff <_stack_top+0xdbfdffff>
    28e0:	00747793          	andi	a5,s0,7
    28e4:	00e47733          	and	a4,s0,a4
    28e8:	02078863          	beqz	a5,2918 <__floatsisf+0xe0>
    28ec:	00f47413          	andi	s0,s0,15
    28f0:	00400793          	li	a5,4
    28f4:	02f40263          	beq	s0,a5,2918 <__floatsisf+0xe0>
    28f8:	00f70733          	add	a4,a4,a5
    28fc:	00571793          	slli	a5,a4,0x5
    2900:	0007dc63          	bgez	a5,2918 <__floatsisf+0xe0>
    2904:	fc0007b7          	lui	a5,0xfc000
    2908:	fff78793          	addi	a5,a5,-1 # fbffffff <_stack_top+0xdbfdffff>
    290c:	00f77733          	and	a4,a4,a5
    2910:	09f00793          	li	a5,159
    2914:	40d78533          	sub	a0,a5,a3
    2918:	00375413          	srli	s0,a4,0x3
    291c:	f6dff06f          	j	2888 <__floatsisf+0x50>
    2920:	fae68ce3          	beq	a3,a4,28d8 <__floatsisf+0xa0>
    2924:	ffb68793          	addi	a5,a3,-5
    2928:	00f41433          	sll	s0,s0,a5
    292c:	fadff06f          	j	28d8 <__floatsisf+0xa0>
    2930:	00000493          	li	s1,0
    2934:	00000413          	li	s0,0
    2938:	f51ff06f          	j	2888 <__floatsisf+0x50>
    293c:	09600513          	li	a0,150
    2940:	f49ff06f          	j	2888 <__floatsisf+0x50>

00002944 <__mulsi3>:
    2944:	00050613          	mv	a2,a0
    2948:	00000513          	li	a0,0
    294c:	0015f693          	andi	a3,a1,1
    2950:	00068463          	beqz	a3,2958 <__mulsi3+0x14>
    2954:	00c50533          	add	a0,a0,a2
    2958:	0015d593          	srli	a1,a1,0x1
    295c:	00161613          	slli	a2,a2,0x1
    2960:	fe0596e3          	bnez	a1,294c <__mulsi3+0x8>
    2964:	00008067          	ret

00002968 <__divsi3>:
    2968:	06054063          	bltz	a0,29c8 <__umodsi3+0x10>
    296c:	0605c663          	bltz	a1,29d8 <__umodsi3+0x20>

00002970 <__hidden___udivsi3>:
    2970:	00058613          	mv	a2,a1
    2974:	00050593          	mv	a1,a0
    2978:	fff00513          	li	a0,-1
    297c:	02060c63          	beqz	a2,29b4 <__hidden___udivsi3+0x44>
    2980:	00100693          	li	a3,1
    2984:	00b67a63          	bgeu	a2,a1,2998 <__hidden___udivsi3+0x28>
    2988:	00c05863          	blez	a2,2998 <__hidden___udivsi3+0x28>
    298c:	00161613          	slli	a2,a2,0x1
    2990:	00169693          	slli	a3,a3,0x1
    2994:	feb66ae3          	bltu	a2,a1,2988 <__hidden___udivsi3+0x18>
    2998:	00000513          	li	a0,0
    299c:	00c5e663          	bltu	a1,a2,29a8 <__hidden___udivsi3+0x38>
    29a0:	40c585b3          	sub	a1,a1,a2
    29a4:	00d56533          	or	a0,a0,a3
    29a8:	0016d693          	srli	a3,a3,0x1
    29ac:	00165613          	srli	a2,a2,0x1
    29b0:	fe0696e3          	bnez	a3,299c <__hidden___udivsi3+0x2c>
    29b4:	00008067          	ret

000029b8 <__umodsi3>:
    29b8:	00008293          	mv	t0,ra
    29bc:	fb5ff0ef          	jal	2970 <__hidden___udivsi3>
    29c0:	00058513          	mv	a0,a1
    29c4:	00028067          	jr	t0
    29c8:	40a00533          	neg	a0,a0
    29cc:	00b04863          	bgtz	a1,29dc <__umodsi3+0x24>
    29d0:	40b005b3          	neg	a1,a1
    29d4:	f9dff06f          	j	2970 <__hidden___udivsi3>
    29d8:	40b005b3          	neg	a1,a1
    29dc:	00008293          	mv	t0,ra
    29e0:	f91ff0ef          	jal	2970 <__hidden___udivsi3>
    29e4:	40a00533          	neg	a0,a0
    29e8:	00028067          	jr	t0

000029ec <__modsi3>:
    29ec:	00008293          	mv	t0,ra
    29f0:	0005ca63          	bltz	a1,2a04 <__modsi3+0x18>
    29f4:	00054c63          	bltz	a0,2a0c <__modsi3+0x20>
    29f8:	f79ff0ef          	jal	2970 <__hidden___udivsi3>
    29fc:	00058513          	mv	a0,a1
    2a00:	00028067          	jr	t0
    2a04:	40b005b3          	neg	a1,a1
    2a08:	fe0558e3          	bgez	a0,29f8 <__modsi3+0xc>
    2a0c:	40a00533          	neg	a0,a0
    2a10:	f61ff0ef          	jal	2970 <__hidden___udivsi3>
    2a14:	40b00533          	neg	a0,a1
    2a18:	00028067          	jr	t0

00002a1c <__clzsi2>:
    2a1c:	000107b7          	lui	a5,0x10
    2a20:	02f57a63          	bgeu	a0,a5,2a54 <__clzsi2+0x38>
    2a24:	10053793          	sltiu	a5,a0,256
    2a28:	0017b793          	seqz	a5,a5
    2a2c:	00379793          	slli	a5,a5,0x3
    2a30:	20001737          	lui	a4,0x20001
    2a34:	00f55533          	srl	a0,a0,a5
    2a38:	03c70713          	addi	a4,a4,60 # 2000103c <__clz_tab>
    2a3c:	00a70733          	add	a4,a4,a0
    2a40:	00074503          	lbu	a0,0(a4)
    2a44:	02000693          	li	a3,32
    2a48:	40f686b3          	sub	a3,a3,a5
    2a4c:	40a68533          	sub	a0,a3,a0
    2a50:	00008067          	ret
    2a54:	01000737          	lui	a4,0x1000
    2a58:	01800793          	li	a5,24
    2a5c:	fce57ae3          	bgeu	a0,a4,2a30 <__clzsi2+0x14>
    2a60:	01000793          	li	a5,16
    2a64:	fcdff06f          	j	2a30 <__clzsi2+0x14>

00002a68 <bdot>:
    2a68:	fe010113          	addi	sp,sp,-32
    2a6c:	01412423          	sw	s4,8(sp)
    2a70:	00050a13          	mv	s4,a0
    2a74:	00060513          	mv	a0,a2
    2a78:	00112e23          	sw	ra,28(sp)
    2a7c:	00812c23          	sw	s0,24(sp)
    2a80:	00912a23          	sw	s1,20(sp)
    2a84:	01212823          	sw	s2,16(sp)
    2a88:	01312623          	sw	s3,12(sp)
    2a8c:	01512223          	sw	s5,4(sp)
    2a90:	00060413          	mv	s0,a2
    2a94:	00058a93          	mv	s5,a1
    2a98:	c35fe0ef          	jal	16cc <__floatsidf>
    2a9c:	200017b7          	lui	a5,0x20001
    2aa0:	1487a603          	lw	a2,328(a5) # 20001148 <bits+0xc>
    2aa4:	14c7a683          	lw	a3,332(a5)
    2aa8:	dadfd0ef          	jal	854 <__muldf3>
    2aac:	00058993          	mv	s3,a1
    2ab0:	00050913          	mv	s2,a0
    2ab4:	b9dfe0ef          	jal	1650 <__fixdfsi>
    2ab8:	00050493          	mv	s1,a0
    2abc:	c11fe0ef          	jal	16cc <__floatsidf>
    2ac0:	00050613          	mv	a2,a0
    2ac4:	00058693          	mv	a3,a1
    2ac8:	00090513          	mv	a0,s2
    2acc:	00098593          	mv	a1,s3
    2ad0:	c20fe0ef          	jal	ef0 <__subdf3>
    2ad4:	00000613          	li	a2,0
    2ad8:	00000693          	li	a3,0
    2adc:	ca1fd0ef          	jal	77c <__gedf2>
    2ae0:	02a05263          	blez	a0,2b04 <bdot+0x9c>
    2ae4:	200017b7          	lui	a5,0x20001
    2ae8:	1507a603          	lw	a2,336(a5) # 20001150 <bits+0x14>
    2aec:	1547a683          	lw	a3,340(a5)
    2af0:	00090513          	mv	a0,s2
    2af4:	00098593          	mv	a1,s3
    2af8:	d38fd0ef          	jal	30 <__adddf3>
    2afc:	b55fe0ef          	jal	1650 <__fixdfsi>
    2b00:	00050493          	mv	s1,a0
    2b04:	08905663          	blez	s1,2b90 <bdot+0x128>
    2b08:	000a0693          	mv	a3,s4
    2b0c:	009a0633          	add	a2,s4,s1
    2b10:	000a8593          	mv	a1,s5
    2b14:	00000513          	li	a0,0
    2b18:	0005c703          	lbu	a4,0(a1) # 4000000 <main+0x3ffce44>
    2b1c:	0006c783          	lbu	a5,0(a3)
    2b20:	00168693          	addi	a3,a3,1
    2b24:	00158593          	addi	a1,a1,1
    2b28:	00e7c7b3          	xor	a5,a5,a4
    2b2c:	0ff7c793          	xori	a5,a5,255
    2b30:	0017d713          	srli	a4,a5,0x1
    2b34:	05577713          	andi	a4,a4,85
    2b38:	40e787b3          	sub	a5,a5,a4
    2b3c:	0ff7f793          	zext.b	a5,a5
    2b40:	0027d713          	srli	a4,a5,0x2
    2b44:	03377713          	andi	a4,a4,51
    2b48:	0337f793          	andi	a5,a5,51
    2b4c:	00f707b3          	add	a5,a4,a5
    2b50:	0047d713          	srli	a4,a5,0x4
    2b54:	00e787b3          	add	a5,a5,a4
    2b58:	00f7f793          	andi	a5,a5,15
    2b5c:	00f50533          	add	a0,a0,a5
    2b60:	fad61ce3          	bne	a2,a3,2b18 <bdot+0xb0>
    2b64:	00151513          	slli	a0,a0,0x1
    2b68:	01c12083          	lw	ra,28(sp)
    2b6c:	40850533          	sub	a0,a0,s0
    2b70:	01812403          	lw	s0,24(sp)
    2b74:	01412483          	lw	s1,20(sp)
    2b78:	01012903          	lw	s2,16(sp)
    2b7c:	00c12983          	lw	s3,12(sp)
    2b80:	00812a03          	lw	s4,8(sp)
    2b84:	00412a83          	lw	s5,4(sp)
    2b88:	02010113          	addi	sp,sp,32
    2b8c:	00008067          	ret
    2b90:	00000513          	li	a0,0
    2b94:	fd5ff06f          	j	2b68 <bdot+0x100>

00002b98 <l_b_conv_pool_bn_bst0>:
    2b98:	f6010113          	addi	sp,sp,-160
    2b9c:	07b12623          	sw	s11,108(sp)
    2ba0:	08112e23          	sw	ra,156(sp)
    2ba4:	08812c23          	sw	s0,152(sp)
    2ba8:	08912a23          	sw	s1,148(sp)
    2bac:	09212823          	sw	s2,144(sp)
    2bb0:	09312623          	sw	s3,140(sp)
    2bb4:	09412423          	sw	s4,136(sp)
    2bb8:	09512223          	sw	s5,132(sp)
    2bbc:	09612023          	sw	s6,128(sp)
    2bc0:	07712e23          	sw	s7,124(sp)
    2bc4:	07812c23          	sw	s8,120(sp)
    2bc8:	07912a23          	sw	s9,116(sp)
    2bcc:	07a12823          	sw	s10,112(sp)
    2bd0:	00058d93          	mv	s11,a1
    2bd4:	02a12423          	sw	a0,40(sp)
    2bd8:	00058793          	mv	a5,a1
    2bdc:	02d58713          	addi	a4,a1,45
    2be0:	00078023          	sb	zero,0(a5)
    2be4:	00178793          	addi	a5,a5,1
    2be8:	fef71ce3          	bne	a4,a5,2be0 <l_b_conv_pool_bn_bst0+0x48>
    2bec:	200017b7          	lui	a5,0x20001
    2bf0:	1587a783          	lw	a5,344(a5) # 20001158 <bits+0x1c>
    2bf4:	20002637          	lui	a2,0x20002
    2bf8:	20002737          	lui	a4,0x20002
    2bfc:	be070713          	addi	a4,a4,-1056 # 20001be0 <l_b_conv_pool_bn_bst0_bn_std>
    2c00:	02f12223          	sw	a5,36(sp)
    2c04:	20002837          	lui	a6,0x20002
    2c08:	20002537          	lui	a0,0x20002
    2c0c:	200025b7          	lui	a1,0x20002
    2c10:	200026b7          	lui	a3,0x20002
    2c14:	200017b7          	lui	a5,0x20001
    2c18:	c0860613          	addi	a2,a2,-1016 # 20001c08 <l_b_conv_pool_bn_bst0_bn_mean>
    2c1c:	00e12e23          	sw	a4,28(sp)
    2c20:	c9480b13          	addi	s6,a6,-876 # 20001c94 <l_b_conv_pool_bn_bst0_bconv_b>
    2c24:	c3050c13          	addi	s8,a0,-976 # 20001c30 <l_b_conv_pool_bn_bst0_bn_gamma>
    2c28:	02c12023          	sw	a2,32(sp)
    2c2c:	13c78e93          	addi	t4,a5,316 # 2000113c <bits>
    2c30:	00000a13          	li	s4,0
    2c34:	00000993          	li	s3,0
    2c38:	c5858493          	addi	s1,a1,-936 # 20001c58 <l_b_conv_pool_bn_bst0_bn_beta>
    2c3c:	c8068c93          	addi	s9,a3,-896 # 20001c80 <l_b_conv_pool_bn_bst0_bconv_W>
    2c40:	000d8713          	mv	a4,s11
    2c44:	fff9c413          	not	s0,s3
    2c48:	00100793          	li	a5,1
    2c4c:	00747413          	andi	s0,s0,7
    2c50:	00879633          	sll	a2,a5,s0
    2c54:	02012783          	lw	a5,32(sp)
    2c58:	0ff67b93          	zext.b	s7,a2
    2c5c:	4039da93          	srai	s5,s3,0x3
    2c60:	014786b3          	add	a3,a5,s4
    2c64:	01c12783          	lw	a5,28(sp)
    2c68:	0006a683          	lw	a3,0(a3)
    2c6c:	00000d93          	li	s11,0
    2c70:	014787b3          	add	a5,a5,s4
    2c74:	0007a783          	lw	a5,0(a5)
    2c78:	00d12623          	sw	a3,12(sp)
    2c7c:	00000913          	li	s2,0
    2c80:	00f12823          	sw	a5,16(sp)
    2c84:	000b2783          	lw	a5,0(s6)
    2c88:	03312623          	sw	s3,44(sp)
    2c8c:	000a0d13          	mv	s10,s4
    2c90:	00f12023          	sw	a5,0(sp)
    2c94:	000c2783          	lw	a5,0(s8)
    2c98:	000c8f13          	mv	t5,s9
    2c9c:	02912823          	sw	s1,48(sp)
    2ca0:	00f12223          	sw	a5,4(sp)
    2ca4:	0004a783          	lw	a5,0(s1)
    2ca8:	00f12423          	sw	a5,8(sp)
    2cac:	00191793          	slli	a5,s2,0x1
    2cb0:	00f12a23          	sw	a5,20(sp)
    2cb4:	00678793          	addi	a5,a5,6
    2cb8:	00f12c23          	sw	a5,24(sp)
    2cbc:	03212a23          	sw	s2,52(sp)
    2cc0:	00040493          	mv	s1,s0
    2cc4:	08000793          	li	a5,128
    2cc8:	000f0c93          	mv	s9,t5
    2ccc:	001d9913          	slli	s2,s11,0x1
    2cd0:	00000a13          	li	s4,0
    2cd4:	00070413          	mv	s0,a4
    2cd8:	000b0613          	mv	a2,s6
    2cdc:	000d8813          	mv	a6,s11
    2ce0:	003a0b13          	addi	s6,s4,3
    2ce4:	000d0d93          	mv	s11,s10
    2ce8:	02412983          	lw	s3,36(sp)
    2cec:	000b8d13          	mv	s10,s7
    2cf0:	000a8b93          	mv	s7,s5
    2cf4:	000a0a93          	mv	s5,s4
    2cf8:	01412a03          	lw	s4,20(sp)
    2cfc:	000c0693          	mv	a3,s8
    2d00:	00090893          	mv	a7,s2
    2d04:	00048c13          	mv	s8,s1
    2d08:	00040313          	mv	t1,s0
    2d0c:	00090493          	mv	s1,s2
    2d10:	00048413          	mv	s0,s1
    2d14:	00048e13          	mv	t3,s1
    2d18:	000a8913          	mv	s2,s5
    2d1c:	00068493          	mv	s1,a3
    2d20:	000a0693          	mv	a3,s4
    2d24:	00060a13          	mv	s4,a2
    2d28:	04012a23          	sw	zero,84(sp)
    2d2c:	04012c23          	sw	zero,88(sp)
    2d30:	04012e23          	sw	zero,92(sp)
    2d34:	00040f13          	mv	t5,s0
    2d38:	00300513          	li	a0,3
    2d3c:	00000393          	li	t2,0
    2d40:	00700593          	li	a1,7
    2d44:	ffd50613          	addi	a2,a0,-3
    2d48:	000f0293          	mv	t0,t5
    2d4c:	02d12c23          	sw	a3,56(sp)
    2d50:	40365713          	srai	a4,a2,0x3
    2d54:	00078f93          	mv	t6,a5
    2d58:	00c0006f          	j	2d64 <l_b_conv_pool_bn_bst0+0x1cc>
    2d5c:	0007cf83          	lbu	t6,0(a5)
    2d60:	ff43c383          	lbu	t2,-12(t2)
    2d64:	02812683          	lw	a3,40(sp)
    2d68:	4032d793          	srai	a5,t0,0x3
    2d6c:	00270733          	add	a4,a4,sp
    2d70:	00f687b3          	add	a5,a3,a5
    2d74:	0007c783          	lbu	a5,0(a5)
    2d78:	00160613          	addi	a2,a2,1
    2d7c:	00fff7b3          	and	a5,t6,a5
    2d80:	00f037b3          	snez	a5,a5
    2d84:	00b797b3          	sll	a5,a5,a1
    2d88:	00f3e7b3          	or	a5,t2,a5
    2d8c:	04f70a23          	sb	a5,84(a4)
    2d90:	fff58593          	addi	a1,a1,-1
    2d94:	fff00793          	li	a5,-1
    2d98:	00f59463          	bne	a1,a5,2da0 <l_b_conv_pool_bn_bst0+0x208>
    2d9c:	00700593          	li	a1,7
    2da0:	00128293          	addi	t0,t0,1
    2da4:	40365713          	srai	a4,a2,0x3
    2da8:	0072f793          	andi	a5,t0,7
    2dac:	01070f93          	addi	t6,a4,16
    2db0:	05010693          	addi	a3,sp,80
    2db4:	00fe87b3          	add	a5,t4,a5
    2db8:	00df83b3          	add	t2,t6,a3
    2dbc:	faa610e3          	bne	a2,a0,2d5c <l_b_conv_pool_bn_bst0+0x1c4>
    2dc0:	00350513          	addi	a0,a0,3
    2dc4:	00c00793          	li	a5,12
    2dc8:	03812683          	lw	a3,56(sp)
    2dcc:	02f50263          	beq	a0,a5,2df0 <l_b_conv_pool_bn_bst0+0x258>
    2dd0:	01cf0f13          	addi	t5,t5,28
    2dd4:	40365793          	srai	a5,a2,0x3
    2dd8:	007f7713          	andi	a4,t5,7
    2ddc:	002787b3          	add	a5,a5,sp
    2de0:	00ee8733          	add	a4,t4,a4
    2de4:	0547c383          	lbu	t2,84(a5)
    2de8:	00074783          	lbu	a5,0(a4)
    2dec:	f59ff06f          	j	2d44 <l_b_conv_pool_bn_bst0+0x1ac>
    2df0:	00900613          	li	a2,9
    2df4:	000c8593          	mv	a1,s9
    2df8:	05410513          	addi	a0,sp,84
    2dfc:	05012623          	sw	a6,76(sp)
    2e00:	05112423          	sw	a7,72(sp)
    2e04:	04d12223          	sw	a3,68(sp)
    2e08:	05c12023          	sw	t3,64(sp)
    2e0c:	02612e23          	sw	t1,60(sp)
    2e10:	c59ff0ef          	jal	2a68 <bdot>
    2e14:	a25ff0ef          	jal	2838 <__floatsisf>
    2e18:	00050593          	mv	a1,a0
    2e1c:	02a12c23          	sw	a0,56(sp)
    2e20:	00098513          	mv	a0,s3
    2e24:	980ff0ef          	jal	1fa4 <__lesf2>
    2e28:	200017b7          	lui	a5,0x20001
    2e2c:	03812583          	lw	a1,56(sp)
    2e30:	03c12303          	lw	t1,60(sp)
    2e34:	04012e03          	lw	t3,64(sp)
    2e38:	04412683          	lw	a3,68(sp)
    2e3c:	04812883          	lw	a7,72(sp)
    2e40:	04c12803          	lw	a6,76(sp)
    2e44:	13c78e93          	addi	t4,a5,316 # 2000113c <bits>
    2e48:	00054463          	bltz	a0,2e50 <l_b_conv_pool_bn_bst0+0x2b8>
    2e4c:	00098593          	mv	a1,s3
    2e50:	00190913          	addi	s2,s2,1
    2e54:	00058993          	mv	s3,a1
    2e58:	01690c63          	beq	s2,s6,2e70 <l_b_conv_pool_bn_bst0+0x2d8>
    2e5c:	00240413          	addi	s0,s0,2
    2e60:	00747793          	andi	a5,s0,7
    2e64:	00fe87b3          	add	a5,t4,a5
    2e68:	0007c783          	lbu	a5,0(a5)
    2e6c:	ebdff06f          	j	2d28 <l_b_conv_pool_bn_bst0+0x190>
    2e70:	01812783          	lw	a5,24(sp)
    2e74:	000a0613          	mv	a2,s4
    2e78:	00268a13          	addi	s4,a3,2
    2e7c:	00048693          	mv	a3,s1
    2e80:	01478c63          	beq	a5,s4,2e98 <l_b_conv_pool_bn_bst0+0x300>
    2e84:	038e0493          	addi	s1,t3,56
    2e88:	0074f793          	andi	a5,s1,7
    2e8c:	00fe87b3          	add	a5,t4,a5
    2e90:	0007c783          	lbu	a5,0(a5)
    2e94:	e7dff06f          	j	2d10 <l_b_conv_pool_bn_bst0+0x178>
    2e98:	00012503          	lw	a0,0(sp)
    2e9c:	00030413          	mv	s0,t1
    2ea0:	00060b13          	mv	s6,a2
    2ea4:	00088913          	mv	s2,a7
    2ea8:	000c0493          	mv	s1,s8
    2eac:	000a8a13          	mv	s4,s5
    2eb0:	00068c13          	mv	s8,a3
    2eb4:	000b8a93          	mv	s5,s7
    2eb8:	000d0b93          	mv	s7,s10
    2ebc:	000d8d13          	mv	s10,s11
    2ec0:	00080d93          	mv	s11,a6
    2ec4:	8a9fe0ef          	jal	176c <__addsf3>
    2ec8:	00c12583          	lw	a1,12(sp)
    2ecc:	cb8ff0ef          	jal	2384 <__subsf3>
    2ed0:	01012583          	lw	a1,16(sp)
    2ed4:	cc5fe0ef          	jal	1b98 <__divsf3>
    2ed8:	00050593          	mv	a1,a0
    2edc:	00412503          	lw	a0,4(sp)
    2ee0:	95cff0ef          	jal	203c <__mulsf3>
    2ee4:	00050593          	mv	a1,a0
    2ee8:	00812503          	lw	a0,8(sp)
    2eec:	015406b3          	add	a3,s0,s5
    2ef0:	02d12c23          	sw	a3,56(sp)
    2ef4:	879fe0ef          	jal	176c <__addsf3>
    2ef8:	00000593          	li	a1,0
    2efc:	810ff0ef          	jal	1f0c <__gesf2>
    2f00:	03812683          	lw	a3,56(sp)
    2f04:	fff54793          	not	a5,a0
    2f08:	01f7d793          	srli	a5,a5,0x1f
    2f0c:	0006c703          	lbu	a4,0(a3)
    2f10:	009797b3          	sll	a5,a5,s1
    2f14:	fff48493          	addi	s1,s1,-1
    2f18:	00e7e7b3          	or	a5,a5,a4
    2f1c:	001bd713          	srli	a4,s7,0x1
    2f20:	007b9b93          	slli	s7,s7,0x7
    2f24:	01770733          	add	a4,a4,s7
    2f28:	0ff77b93          	zext.b	s7,a4
    2f2c:	00f68023          	sb	a5,0(a3)
    2f30:	007bd793          	srli	a5,s7,0x7
    2f34:	00fa8ab3          	add	s5,s5,a5
    2f38:	20001737          	lui	a4,0x20001
    2f3c:	fff00793          	li	a5,-1
    2f40:	13c70e93          	addi	t4,a4,316 # 2000113c <bits>
    2f44:	00f49463          	bne	s1,a5,2f4c <l_b_conv_pool_bn_bst0+0x3b4>
    2f48:	00700493          	li	s1,7
    2f4c:	002a0a13          	addi	s4,s4,2
    2f50:	00c00793          	li	a5,12
    2f54:	00fa0c63          	beq	s4,a5,2f6c <l_b_conv_pool_bn_bst0+0x3d4>
    2f58:	00490913          	addi	s2,s2,4
    2f5c:	00797793          	andi	a5,s2,7
    2f60:	00fe87b3          	add	a5,t4,a5
    2f64:	0007c783          	lbu	a5,0(a5)
    2f68:	d71ff06f          	j	2cd8 <l_b_conv_pool_bn_bst0+0x140>
    2f6c:	03412903          	lw	s2,52(sp)
    2f70:	00040713          	mv	a4,s0
    2f74:	000c8f13          	mv	t5,s9
    2f78:	00290913          	addi	s2,s2,2
    2f7c:	00048413          	mv	s0,s1
    2f80:	038d8d93          	addi	s11,s11,56
    2f84:	d34914e3          	bne	s2,s4,2cac <l_b_conv_pool_bn_bst0+0x114>
    2f88:	02c12983          	lw	s3,44(sp)
    2f8c:	03012483          	lw	s1,48(sp)
    2f90:	16800793          	li	a5,360
    2f94:	02498993          	addi	s3,s3,36
    2f98:	004b0b13          	addi	s6,s6,4
    2f9c:	004c0c13          	addi	s8,s8,4
    2fa0:	00448493          	addi	s1,s1,4
    2fa4:	002c8c93          	addi	s9,s9,2
    2fa8:	004d0a13          	addi	s4,s10,4
    2fac:	c8f99ce3          	bne	s3,a5,2c44 <l_b_conv_pool_bn_bst0+0xac>
    2fb0:	09c12083          	lw	ra,156(sp)
    2fb4:	09812403          	lw	s0,152(sp)
    2fb8:	09412483          	lw	s1,148(sp)
    2fbc:	09012903          	lw	s2,144(sp)
    2fc0:	08c12983          	lw	s3,140(sp)
    2fc4:	08812a03          	lw	s4,136(sp)
    2fc8:	08412a83          	lw	s5,132(sp)
    2fcc:	08012b03          	lw	s6,128(sp)
    2fd0:	07c12b83          	lw	s7,124(sp)
    2fd4:	07812c03          	lw	s8,120(sp)
    2fd8:	07412c83          	lw	s9,116(sp)
    2fdc:	07012d03          	lw	s10,112(sp)
    2fe0:	06c12d83          	lw	s11,108(sp)
    2fe4:	0a010113          	addi	sp,sp,160
    2fe8:	00008067          	ret

00002fec <l_b_linear_bn_softmax1>:
    2fec:	fb010113          	addi	sp,sp,-80
    2ff0:	200017b7          	lui	a5,0x20001
    2ff4:	03512a23          	sw	s5,52(sp)
    2ff8:	1587aa83          	lw	s5,344(a5) # 20001158 <bits+0x1c>
    2ffc:	04812423          	sw	s0,72(sp)
    3000:	04912223          	sw	s1,68(sp)
    3004:	05212023          	sw	s2,64(sp)
    3008:	03312e23          	sw	s3,60(sp)
    300c:	03412c23          	sw	s4,56(sp)
    3010:	01b12e23          	sw	s11,28(sp)
    3014:	20002a37          	lui	s4,0x20002
    3018:	200029b7          	lui	s3,0x20002
    301c:	20002937          	lui	s2,0x20002
    3020:	200024b7          	lui	s1,0x20002
    3024:	20002437          	lui	s0,0x20002
    3028:	20002db7          	lui	s11,0x20002
    302c:	03612823          	sw	s6,48(sp)
    3030:	03712623          	sw	s7,44(sp)
    3034:	03912223          	sw	s9,36(sp)
    3038:	03a12023          	sw	s10,32(sp)
    303c:	04112623          	sw	ra,76(sp)
    3040:	03812423          	sw	s8,40(sp)
    3044:	00050b13          	mv	s6,a0
    3048:	00b12623          	sw	a1,12(sp)
    304c:	02d50c93          	addi	s9,a0,45
    3050:	bb8a0a13          	addi	s4,s4,-1096 # 20001bb8 <l_b_linear_bn_softmax1_bl_b>
    3054:	9a498993          	addi	s3,s3,-1628 # 200019a4 <l_b_linear_bn_softmax1_bn_gamma>
    3058:	9cc90913          	addi	s2,s2,-1588 # 200019cc <l_b_linear_bn_softmax1_bn_beta>
    305c:	97c48493          	addi	s1,s1,-1668 # 2000197c <l_b_linear_bn_softmax1_bn_mean>
    3060:	95440413          	addi	s0,s0,-1708 # 20001954 <l_b_linear_bn_softmax1_bn_std>
    3064:	9f4d8d93          	addi	s11,s11,-1548 # 200019f4 <l_b_linear_bn_softmax1_bl_W>
    3068:	00000d13          	li	s10,0
    306c:	00a00b93          	li	s7,10
    3070:	000b0693          	mv	a3,s6
    3074:	000d8613          	mv	a2,s11
    3078:	00000593          	li	a1,0
    307c:	00064703          	lbu	a4,0(a2)
    3080:	0006c783          	lbu	a5,0(a3)
    3084:	00168693          	addi	a3,a3,1
    3088:	00160613          	addi	a2,a2,1
    308c:	00e7c7b3          	xor	a5,a5,a4
    3090:	0ff7c793          	xori	a5,a5,255
    3094:	0017d713          	srli	a4,a5,0x1
    3098:	05577713          	andi	a4,a4,85
    309c:	40e787b3          	sub	a5,a5,a4
    30a0:	0ff7f793          	zext.b	a5,a5
    30a4:	0027d713          	srli	a4,a5,0x2
    30a8:	03377713          	andi	a4,a4,51
    30ac:	0337f793          	andi	a5,a5,51
    30b0:	00f707b3          	add	a5,a4,a5
    30b4:	0047d713          	srli	a4,a5,0x4
    30b8:	00e787b3          	add	a5,a5,a4
    30bc:	00f7f793          	andi	a5,a5,15
    30c0:	00f585b3          	add	a1,a1,a5
    30c4:	fadc9ce3          	bne	s9,a3,307c <l_b_linear_bn_softmax1+0x90>
    30c8:	f4c58593          	addi	a1,a1,-180
    30cc:	00159513          	slli	a0,a1,0x1
    30d0:	f68ff0ef          	jal	2838 <__floatsisf>
    30d4:	000a2583          	lw	a1,0(s4)
    30d8:	e94fe0ef          	jal	176c <__addsf3>
    30dc:	0004a583          	lw	a1,0(s1)
    30e0:	aa4ff0ef          	jal	2384 <__subsf3>
    30e4:	00042583          	lw	a1,0(s0)
    30e8:	ab1fe0ef          	jal	1b98 <__divsf3>
    30ec:	0009a583          	lw	a1,0(s3)
    30f0:	f4dfe0ef          	jal	203c <__mulsf3>
    30f4:	00092583          	lw	a1,0(s2)
    30f8:	e74fe0ef          	jal	176c <__addsf3>
    30fc:	00050c13          	mv	s8,a0
    3100:	00050593          	mv	a1,a0
    3104:	000a8513          	mv	a0,s5
    3108:	e9dfe0ef          	jal	1fa4 <__lesf2>
    310c:	00055663          	bgez	a0,3118 <l_b_linear_bn_softmax1+0x12c>
    3110:	000c0a93          	mv	s5,s8
    3114:	01a12423          	sw	s10,8(sp)
    3118:	001d0d13          	addi	s10,s10,1
    311c:	004a0a13          	addi	s4,s4,4
    3120:	00498993          	addi	s3,s3,4
    3124:	00490913          	addi	s2,s2,4
    3128:	00448493          	addi	s1,s1,4
    312c:	00440413          	addi	s0,s0,4
    3130:	02dd8d93          	addi	s11,s11,45
    3134:	f37d1ee3          	bne	s10,s7,3070 <l_b_linear_bn_softmax1+0x84>
    3138:	00c12783          	lw	a5,12(sp)
    313c:	00812703          	lw	a4,8(sp)
    3140:	00e78023          	sb	a4,0(a5)
    3144:	04c12083          	lw	ra,76(sp)
    3148:	04812403          	lw	s0,72(sp)
    314c:	04412483          	lw	s1,68(sp)
    3150:	04012903          	lw	s2,64(sp)
    3154:	03c12983          	lw	s3,60(sp)
    3158:	03812a03          	lw	s4,56(sp)
    315c:	03412a83          	lw	s5,52(sp)
    3160:	03012b03          	lw	s6,48(sp)
    3164:	02c12b83          	lw	s7,44(sp)
    3168:	02812c03          	lw	s8,40(sp)
    316c:	02412c83          	lw	s9,36(sp)
    3170:	02012d03          	lw	s10,32(sp)
    3174:	01c12d83          	lw	s11,28(sp)
    3178:	05010113          	addi	sp,sp,80
    317c:	00008067          	ret

00003180 <ebnn_compute>:
    3180:	ff010113          	addi	sp,sp,-16
    3184:	00812423          	sw	s0,8(sp)
    3188:	20002437          	lui	s0,0x20002
    318c:	00912223          	sw	s1,4(sp)
    3190:	00058493          	mv	s1,a1
    3194:	cc040593          	addi	a1,s0,-832 # 20001cc0 <temp1>
    3198:	00112623          	sw	ra,12(sp)
    319c:	9fdff0ef          	jal	2b98 <l_b_conv_pool_bn_bst0>
    31a0:	cc040513          	addi	a0,s0,-832
    31a4:	00812403          	lw	s0,8(sp)
    31a8:	00c12083          	lw	ra,12(sp)
    31ac:	00048593          	mv	a1,s1
    31b0:	00412483          	lw	s1,4(sp)
    31b4:	01010113          	addi	sp,sp,16
    31b8:	e35ff06f          	j	2fec <l_b_linear_bn_softmax1>

000031bc <main>:
    31bc:	fe010113          	addi	sp,sp,-32
    31c0:	00112e23          	sw	ra,28(sp)
    31c4:	00812c23          	sw	s0,24(sp)
    31c8:	00912a23          	sw	s1,20(sp)
    31cc:	01212823          	sw	s2,16(sp)
    31d0:	200005b7          	lui	a1,0x20000
    31d4:	10000793          	li	a5,256
    31d8:	00f5a023          	sw	a5,0(a1) # 20000000 <__mailbox_start>
    31dc:	00100493          	li	s1,1
    31e0:	0095a223          	sw	s1,4(a1)
    31e4:	0005a423          	sw	zero,8(a1)
    31e8:	fff00913          	li	s2,-1
    31ec:	0125a623          	sw	s2,12(a1)
    31f0:	0005a823          	sw	zero,16(a1)
    31f4:	06200693          	li	a3,98
    31f8:	00d5ae23          	sw	a3,28(a1)
    31fc:	00a00713          	li	a4,10
    3200:	02e5a023          	sw	a4,32(a1)
    3204:	11000793          	li	a5,272
    3208:	00f5a023          	sw	a5,0(a1)
    320c:	200017b7          	lui	a5,0x20001
    3210:	15c7a503          	lw	a0,348(a5) # 2000115c <train_labels>
    3214:	db4ff0ef          	jal	27c8 <__fixsfsi>
    3218:	00050413          	mv	s0,a0
    321c:	20001537          	lui	a0,0x20001
    3220:	00c10593          	addi	a1,sp,12
    3224:	1ac50513          	addi	a0,a0,428 # 200011ac <train_data>
    3228:	f59ff0ef          	jal	3180 <ebnn_compute>
    322c:	00c14583          	lbu	a1,12(sp)
    3230:	0ff47793          	zext.b	a5,s0
    3234:	0ab78c63          	beq	a5,a1,32ec <main+0x130>
    3238:	00000693          	li	a3,0
    323c:	00000613          	li	a2,0
    3240:	811ca737          	lui	a4,0x811ca
    3244:	dc570713          	addi	a4,a4,-571 # 811c9dc5 <_stack_top+0x611a9dc5>
    3248:	00e5c733          	xor	a4,a1,a4
    324c:	00f71793          	slli	a5,a4,0xf
    3250:	00e787b3          	add	a5,a5,a4
    3254:	00279793          	slli	a5,a5,0x2
    3258:	40e787b3          	sub	a5,a5,a4
    325c:	00379793          	slli	a5,a5,0x3
    3260:	00e787b3          	add	a5,a5,a4
    3264:	00279793          	slli	a5,a5,0x2
    3268:	00e787b3          	add	a5,a5,a4
    326c:	00279793          	slli	a5,a5,0x2
    3270:	0ff47513          	zext.b	a0,s0
    3274:	40e787b3          	sub	a5,a5,a4
    3278:	00f547b3          	xor	a5,a0,a5
    327c:	00f79713          	slli	a4,a5,0xf
    3280:	00f70733          	add	a4,a4,a5
    3284:	200008b7          	lui	a7,0x20000
    3288:	00271713          	slli	a4,a4,0x2
    328c:	04b8a023          	sw	a1,64(a7) # 20000040 <__mailbox_start+0x40>
    3290:	40f70733          	sub	a4,a4,a5
    3294:	08a8a823          	sw	a0,144(a7)
    3298:	00371713          	slli	a4,a4,0x3
    329c:	00b8aa23          	sw	a1,20(a7)
    32a0:	00f70733          	add	a4,a4,a5
    32a4:	00a8ac23          	sw	a0,24(a7)
    32a8:	00271713          	slli	a4,a4,0x2
    32ac:	12000593          	li	a1,288
    32b0:	00b8a023          	sw	a1,0(a7)
    32b4:	00f70733          	add	a4,a4,a5
    32b8:	00c8a423          	sw	a2,8(a7)
    32bc:	00271713          	slli	a4,a4,0x2
    32c0:	00d8a623          	sw	a3,12(a7)
    32c4:	01c12083          	lw	ra,28(sp)
    32c8:	01812403          	lw	s0,24(sp)
    32cc:	40f707b3          	sub	a5,a4,a5
    32d0:	00f8a823          	sw	a5,16(a7)
    32d4:	00100513          	li	a0,1
    32d8:	00a8a023          	sw	a0,0(a7)
    32dc:	01412483          	lw	s1,20(sp)
    32e0:	01012903          	lw	s2,16(sp)
    32e4:	02010113          	addi	sp,sp,32
    32e8:	00008067          	ret
    32ec:	00090693          	mv	a3,s2
    32f0:	00048613          	mv	a2,s1
    32f4:	f4dff06f          	j	3240 <main+0x84>
