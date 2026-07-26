    .section .text
    .globl _start

_start:
    lui     t0, 0x20000
    sw      zero, 0(t0)
    sw      zero, 4(t0)

    # I-type and R-type arithmetic/logic.
    li      t1, 20
    li      t2, 8
    add     t3, t1, t2
    li      t4, 28
    li      s0, 1
    bne     t3, t4, fail

    sub     t3, t1, t2
    li      t4, 12
    li      s0, 2
    bne     t3, t4, fail

    xor     t3, t1, t2
    li      t4, 28
    li      s0, 3
    bne     t3, t4, fail

    or      t3, t1, t2
    li      t4, 28
    li      s0, 4
    bne     t3, t4, fail

    and     t3, t1, t2
    li      t4, 0
    li      s0, 5
    bne     t3, t4, fail

    slli    t3, t2, 3
    li      t4, 64
    li      s0, 6
    bne     t3, t4, fail

    srli    t3, t3, 2
    li      t4, 16
    li      s0, 7
    bne     t3, t4, fail

    li      t3, -16
    srai    t3, t3, 2
    li      t4, -4
    li      s0, 8
    bne     t3, t4, fail

    li      t5, 2
    sll     t3, t2, t5
    li      t4, 32
    li      s0, 9
    bne     t3, t4, fail

    srl     t3, t3, t5
    li      t4, 8
    li      s0, 10
    bne     t3, t4, fail

    li      t3, -16
    sra     t3, t3, t5
    li      t4, -4
    li      s0, 11
    bne     t3, t4, fail

    li      t1, -1
    li      t2, 1
    slt     t3, t1, t2
    li      t4, 1
    li      s0, 12
    bne     t3, t4, fail

    sltu    t3, t1, t2
    li      t4, 0
    li      s0, 13
    bne     t3, t4, fail

    # LUI.
    lui     t3, 0x12345
    lui     t4, 0x12345
    li      s0, 14
    bne     t3, t4, fail

    # Word, byte and halfword load/store with sign extension.
    li      t1, 0x80ff7f01
    sw      t1, 64(t0)

    lb      t2, 64(t0)
    li      t4, 1
    li      s0, 15
    bne     t2, t4, fail

    lbu     t2, 66(t0)
    li      t4, 255
    li      s0, 16
    bne     t2, t4, fail

    lb      t2, 66(t0)
    li      t4, -1
    li      s0, 17
    bne     t2, t4, fail

    lh      t2, 64(t0)
    li      t4, 0x7f01
    li      s0, 18
    bne     t2, t4, fail

    lhu     t2, 66(t0)
    li      t4, 0x80ff
    li      s0, 19
    bne     t2, t4, fail

    lh      t2, 66(t0)
    li      t4, -32513
    li      s0, 20
    bne     t2, t4, fail

    li      t1, 0x12
    sb      t1, 68(t0)
    li      t1, 0x3456
    sh      t1, 70(t0)
    lw      t2, 68(t0)
    li      t4, 0x34560012
    li      s0, 21
    bne     t2, t4, fail

    # Conditional branches, signed and unsigned.
    li      t1, 5
    li      t2, 5
    li      s0, 22
    beq     t1, t2, branch_beq_ok
    j       fail
branch_beq_ok:
    li      t2, 6
    li      s0, 23
    bne     t1, t2, branch_bne_ok
    j       fail
branch_bne_ok:
    li      t1, -1
    li      t2, 1
    li      s0, 24
    blt     t1, t2, branch_blt_ok
    j       fail
branch_blt_ok:
    li      s0, 25
    bge     t2, t1, branch_bge_ok
    j       fail
branch_bge_ok:
    li      s0, 26
    bltu    t2, t1, branch_bltu_ok
    j       fail
branch_bltu_ok:
    li      s0, 27
    bgeu    t1, t2, branch_bgeu_ok
    j       fail
branch_bgeu_ok:

    # JAL and JALR return path.
    li      t3, 0
    li      s0, 28
    jal     ra, subroutine
    li      t4, 77
    bne     t3, t4, fail

    li      t1, 1
    sw      t1, 0(t0)
    sw      zero, 4(t0)
halt:
    jal     zero, halt

subroutine:
    li      t3, 77
    jalr    zero, ra, 0

fail:
    li      t1, -1
    sw      t1, 0(t0)
    sw      s0, 4(t0)
    jal     zero, halt
