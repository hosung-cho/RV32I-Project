#ifndef XPC32_H
#define XPC32_H

#include <stdint.h>

/*
 * XPC32 encoding
 *   opcode = custom-0 (0x0b)
 *   funct3 = 0
 *   funct7 = 0
 *
 * rd = popcount32(~(rs1 ^ rs2))
 */
static inline uint32_t xpc32(uint32_t operand_a, uint32_t operand_b)
{
    uint32_t result;

    __asm__ volatile(
        ".insn r 0x0b, 0, 0, %0, %1, %2"
        : "=r"(result)
        : "r"(operand_a), "r"(operand_b)
    );

    return result;
}

#endif
