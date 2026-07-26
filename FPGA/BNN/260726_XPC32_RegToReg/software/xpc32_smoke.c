#include <stdint.h>

#include "xpc32.h"

uint32_t xpc32_smoke(uint32_t operand_a, uint32_t operand_b)
{
    return xpc32(operand_a, operand_b);
}
