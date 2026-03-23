
main.elf:     file format elf32-littleriscv


Disassembly of section .text.startup:

00000000 <main>:
   0:	f9010113          	addi	sp,sp,-112
   4:	000007b7          	lui	a5,0x0
   8:	00078793          	mv	a5,a5
   c:	05612823          	sw	s6,80(sp)
  10:	00000b37          	lui	s6,0x0
  14:	05412c23          	sw	s4,88(sp)
  18:	05512a23          	sw	s5,84(sp)
  1c:	00000737          	lui	a4,0x0
  20:	00f12e23          	sw	a5,28(sp)
  24:	00000a37          	lui	s4,0x0
  28:	00078a93          	mv	s5,a5
  2c:	000b0793          	mv	a5,s6
  30:	00070613          	mv	a2,a4
  34:	00f12c23          	sw	a5,24(sp)
  38:	200a0793          	addi	a5,s4,512 # 200 <.L11+0x38>
  3c:	06812423          	sw	s0,104(sp)
  40:	07212023          	sw	s2,96(sp)
  44:	05312e23          	sw	s3,92(sp)
  48:	00f12823          	sw	a5,16(sp)
  4c:	06112623          	sw	ra,108(sp)
  50:	06912223          	sw	s1,100(sp)
  54:	05712623          	sw	s7,76(sp)
  58:	05812423          	sw	s8,72(sp)
  5c:	05912223          	sw	s9,68(sp)
  60:	05a12023          	sw	s10,64(sp)
  64:	03b12e23          	sw	s11,60(sp)
  68:	00000413          	li	s0,0
  6c:	f8000993          	li	s3,-128
  70:	07f00913          	li	s2,127
  74:	04060793          	addi	a5,a2,64

00000078 <.L2>:
  78:	64078c93          	addi	s9,a5,1600 # 640 <output_data+0x340>
  7c:	00078b93          	mv	s7,a5
  80:	02812223          	sw	s0,36(sp)
  84:	01512a23          	sw	s5,20(sp)
  88:	03512423          	sw	s5,40(sp)
  8c:	03912623          	sw	s9,44(sp)

00000090 <.L10>:
  90:	000007b7          	lui	a5,0x0
  94:	01012a03          	lw	s4,16(sp)
  98:	10078713          	addi	a4,a5,256 # 100 <.L3+0x30>
  9c:	01812d83          	lw	s11,24(sp)
  a0:	01412d03          	lw	s10,20(sp)
  a4:	02e12023          	sw	a4,32(sp)
  a8:	10078413          	addi	s0,a5,256
  ac:	00000737          	lui	a4,0x0
  b0:	fc0b8793          	addi	a5,s7,-64
  b4:	00000a93          	li	s5,0
  b8:	00f12623          	sw	a5,12(sp)
  bc:	000a0c93          	mv	s9,s4
  c0:	00070c13          	mv	s8,a4

000000c4 <.L8>:
  c4:	00c12b03          	lw	s6,12(sp)
  c8:	000c0a13          	mv	s4,s8
  cc:	00000493          	li	s1,0

000000d0 <.L3>:
  d0:	000a0583          	lb	a1,0(s4)
  d4:	000b0503          	lb	a0,0(s6) # 0 <main>
  d8:	001b0b13          	addi	s6,s6,1
  dc:	001a0a13          	addi	s4,s4,1
  e0:	00000097          	auipc	ra,0x0
  e4:	000080e7          	jalr	ra # e0 <.L3+0x10>
  e8:	00a484b3          	add	s1,s1,a0
  ec:	ff6b92e3          	bne	s7,s6,d0 <.L3>
  f0:	000da503          	lw	a0,0(s11)
  f4:	000ca603          	lw	a2,0(s9)
  f8:	00042583          	lw	a1,0(s0)
  fc:	00a48533          	add	a0,s1,a0
 100:	00000097          	auipc	ra,0x0
 104:	000080e7          	jalr	ra # 100 <.L3+0x30>
 108:	01355463          	bge	a0,s3,110 <.L4>
 10c:	f8000513          	li	a0,-128

00000110 <.L4>:
 110:	00a95463          	bge	s2,a0,118 <.L5>
 114:	07f00513          	li	a0,127

00000118 <.L5>:
 118:	00ad0023          	sb	a0,0(s10)
 11c:	040a8a93          	addi	s5,s5,64
 120:	000017b7          	lui	a5,0x1
 124:	004d8d93          	addi	s11,s11,4
 128:	00440413          	addi	s0,s0,4
 12c:	004c8c93          	addi	s9,s9,4
 130:	001d0d13          	addi	s10,s10,1
 134:	040c0c13          	addi	s8,s8,64
 138:	f8fa96e3          	bne	s5,a5,c4 <.L8>
 13c:	01412783          	lw	a5,20(sp)
 140:	040b8b93          	addi	s7,s7,64
 144:	04078793          	addi	a5,a5,64 # 1040 <output_data+0xd40>
 148:	00f12a23          	sw	a5,20(sp)
 14c:	02c12783          	lw	a5,44(sp)
 150:	f4fb90e3          	bne	s7,a5,90 <.L10>
 154:	02412403          	lw	s0,36(sp)
 158:	000a8b13          	mv	s6,s5
 15c:	02812a83          	lw	s5,40(sp)
 160:	01940413          	addi	s0,s0,25
 164:	07d00793          	li	a5,125
 168:	640a8a93          	addi	s5,s5,1600
 16c:	00f40663          	beq	s0,a5,178 <.L9>
 170:	000b8793          	mv	a5,s7
 174:	f05ff06f          	j	78 <.L2>

00000178 <.L9>:
 178:	000007b7          	lui	a5,0x0
 17c:	00002637          	lui	a2,0x2
 180:	00078513          	mv	a0,a5
 184:	f4060613          	addi	a2,a2,-192 # 1f40 <output_data+0x1c40>
 188:	00100593          	li	a1,1
 18c:	02012483          	lw	s1,32(sp)
 190:	00000097          	auipc	ra,0x0
 194:	000080e7          	jalr	ra # 190 <.L9+0x18>
 198:	000007b7          	lui	a5,0x0
 19c:	000b0613          	mv	a2,s6
 1a0:	00078513          	mv	a0,a5
 1a4:	00200593          	li	a1,2
 1a8:	00000097          	auipc	ra,0x0
 1ac:	000080e7          	jalr	ra # 1a8 <.L9+0x30>
 1b0:	01812503          	lw	a0,24(sp)
 1b4:	10000613          	li	a2,256
 1b8:	00000593          	li	a1,0
 1bc:	00000097          	auipc	ra,0x0
 1c0:	000080e7          	jalr	ra # 1bc <.L9+0x44>
 1c4:	40000737          	lui	a4,0x40000

000001c8 <.L11>:
 1c8:	01012783          	lw	a5,16(sp)
 1cc:	00e4a023          	sw	a4,0(s1)
 1d0:	00448493          	addi	s1,s1,4
 1d4:	fe979ae3          	bne	a5,s1,1c8 <.L11>
 1d8:	01012503          	lw	a0,16(sp)
 1dc:	10000613          	li	a2,256
 1e0:	0ff00593          	li	a1,255
 1e4:	00000097          	auipc	ra,0x0
 1e8:	000080e7          	jalr	ra # 1e4 <.L11+0x1c>
 1ec:	01c12783          	lw	a5,28(sp)
 1f0:	06c12083          	lw	ra,108(sp)
 1f4:	06812403          	lw	s0,104(sp)
 1f8:	00078503          	lb	a0,0(a5) # 0 <main>
 1fc:	06412483          	lw	s1,100(sp)
 200:	06012903          	lw	s2,96(sp)
 204:	05c12983          	lw	s3,92(sp)
 208:	05812a03          	lw	s4,88(sp)
 20c:	05412a83          	lw	s5,84(sp)
 210:	05012b03          	lw	s6,80(sp)
 214:	04c12b83          	lw	s7,76(sp)
 218:	04812c03          	lw	s8,72(sp)
 21c:	04412c83          	lw	s9,68(sp)
 220:	04012d03          	lw	s10,64(sp)
 224:	03c12d83          	lw	s11,60(sp)
 228:	07010113          	addi	sp,sp,112
 22c:	00008067          	ret
