#include <stdint.h>

#include "sleep.h"
#include "xil_cache.h"
#include "xil_io.h"
#include "xil_printf.h"
#include "xparameters.h"

#if defined(XPAR_AXI_BRAM_CTRL_0_S_AXI_BASEADDR)
#define IMEM_BASE XPAR_AXI_BRAM_CTRL_0_S_AXI_BASEADDR
#elif defined(XPAR_AXI_BRAM_CTRL_0_BASEADDR)
#define IMEM_BASE XPAR_AXI_BRAM_CTRL_0_BASEADDR
#else
#define IMEM_BASE 0xA0000000U
#endif

#if defined(XPAR_AXI_BRAM_CTRL_1_S_AXI_BASEADDR)
#define DMEM_BASE XPAR_AXI_BRAM_CTRL_1_S_AXI_BASEADDR
#elif defined(XPAR_AXI_BRAM_CTRL_1_BASEADDR)
#define DMEM_BASE XPAR_AXI_BRAM_CTRL_1_BASEADDR
#else
#define DMEM_BASE 0xA2000000U
#endif

#ifdef XPAR_AXI_GPIO_0_BASEADDR
#define RESET_GPIO_BASE XPAR_AXI_GPIO_0_BASEADDR
#else
#define RESET_GPIO_BASE 0xA3000000U
#endif

#define IMEM_BYTES 0x00040000U
#define DMEM_BYTES 0x00080000U

#define GPIO_DATA_OFFSET 0x0U
#define GPIO_TRI_OFFSET  0x4U

#define RESULT_WORDS 7U
#define TIMEOUT_US 1000000U

/*
 * This is the same XPC32 program used by rv32i_xpc32_tb.v.
 * It writes seven results to DMEM and then executes "jal x0, 0".
 */
static const uint32_t xpc32_test_program[] = {
    0x00000093U, /* addi x1,  x0,  0              */
    0xFFF00113U, /* addi x2,  x0, -1              */
    0x0020818BU, /* xpc32 x3, x1, x2 -> 0         */
    0x0010820BU, /* xpc32 x4, x1, x1 -> 32        */
    0x00100293U, /* addi x5,  x0,  1              */
    0x0012828BU, /* xpc32 x5, x5, x1 -> 31        */
    0x0010800BU, /* xpc32 x0, x1, x1              */
    0x01000313U, /* addi x6,  x0, 16              */
    0xFFFF03B7U, /* lui x7, 0xffff0                */
    0x0013840BU, /* xpc32 x8, x7, x1 -> 16        */
    0xFFE00493U, /* addi x9,  x0, -2              */
    0x0014850BU, /* xpc32 x10, x9, x1 -> 1        */
    0x00700593U, /* addi x11, x0, 7               */
    0x0010958BU, /* unsupported custom-0 funct3=1 */
    0x00302023U, /* sw x3,   0(x0)                 */
    0x00402223U, /* sw x4,   4(x0)                 */
    0x00502423U, /* sw x5,   8(x0)                 */
    0x00602623U, /* sw x6,  12(x0)                 */
    0x00802823U, /* sw x8,  16(x0)                 */
    0x00A02A23U, /* sw x10, 20(x0)                 */
    0x00B02C23U, /* sw x11, 24(x0)                 */
    0x0000006FU  /* halt: jal x0, 0                */
};

static const uint32_t expected_results[RESULT_WORDS] = {
    0U, 32U, 31U, 16U, 16U, 1U, 7U
};

static void set_rv32i_reset(int assert_reset)
{
    /*
     * This polarity follows the baseline Block Design:
     * GPIO 0 asserts reset and GPIO 1 releases reset.
     */
    Xil_Out32(RESET_GPIO_BASE + GPIO_DATA_OFFSET,
              assert_reset ? 0U : 1U);
}

static void load_test_program(void)
{
    uint32_t index;

    for (index = 0U;
         index < (uint32_t)(sizeof(xpc32_test_program) /
                            sizeof(xpc32_test_program[0]));
         ++index) {
        Xil_Out32(IMEM_BASE + index * sizeof(uint32_t),
                  xpc32_test_program[index]);
    }

    for (index = 0U; index < RESULT_WORDS; ++index) {
        Xil_Out32(DMEM_BASE + index * sizeof(uint32_t), 0xDEADBEEFU);
    }

    Xil_DCacheFlushRange(IMEM_BASE, IMEM_BYTES);
    Xil_DCacheFlushRange(DMEM_BASE, RESULT_WORDS * sizeof(uint32_t));
}

static int wait_for_completion(void)
{
    uint32_t elapsed_us;

    for (elapsed_us = 0U; elapsed_us < TIMEOUT_US; elapsed_us += 10U) {
        Xil_DCacheInvalidateRange(
            DMEM_BASE + (RESULT_WORDS - 1U) * sizeof(uint32_t),
            sizeof(uint32_t));

        if (Xil_In32(DMEM_BASE +
                     (RESULT_WORDS - 1U) * sizeof(uint32_t)) ==
            expected_results[RESULT_WORDS - 1U]) {
            return 0;
        }

        usleep(10U);
    }

    return -1;
}

static int check_results(void)
{
    uint32_t index;
    int failures = 0;

    Xil_DCacheInvalidateRange(DMEM_BASE,
                              RESULT_WORDS * sizeof(uint32_t));

    for (index = 0U; index < RESULT_WORDS; ++index) {
        const uint32_t actual =
            Xil_In32(DMEM_BASE + index * sizeof(uint32_t));

        xil_printf("result[%lu] expected=%lu actual=%lu\r\n",
                   (unsigned long)index,
                   (unsigned long)expected_results[index],
                   (unsigned long)actual);

        if (actual != expected_results[index]) {
            ++failures;
        }
    }

    return failures;
}

int main(void)
{
    int failures;

    Xil_DCacheDisable();

    xil_printf("\r\nXPC32 Ultra96-V1 bring-up\r\n");
    xil_printf("IMEM=0x%08lx (%lu KiB)\r\n",
               (unsigned long)IMEM_BASE,
               (unsigned long)(IMEM_BYTES / 1024U));
    xil_printf("DMEM=0x%08lx (%lu KiB)\r\n",
               (unsigned long)DMEM_BASE,
               (unsigned long)(DMEM_BYTES / 1024U));
    xil_printf("RESET GPIO=0x%08lx\r\n",
               (unsigned long)RESET_GPIO_BASE);

    Xil_Out32(RESET_GPIO_BASE + GPIO_TRI_OFFSET, 0U);
    set_rv32i_reset(1);
    load_test_program();

    xil_printf("Program loaded; releasing RV32I reset.\r\n");
    set_rv32i_reset(0);

    if (wait_for_completion() != 0) {
        set_rv32i_reset(1);
        xil_printf("XPC32 BRING-UP FAIL: timeout\r\n");
        return 1;
    }

    set_rv32i_reset(1);
    failures = check_results();

    if (failures == 0) {
        xil_printf("XPC32 BRING-UP PASS\r\n");
    } else {
        xil_printf("XPC32 BRING-UP FAIL: %d mismatches\r\n", failures);
    }

    return failures == 0 ? 0 : 1;
}
