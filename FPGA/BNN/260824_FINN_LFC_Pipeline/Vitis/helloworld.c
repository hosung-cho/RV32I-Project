#include <stdint.h>

#include "xil_cache.h"
#include "xil_io.h"
#include "xil_printf.h"
#include "xparameters.h"
#include "xiltimer.h"

#include "pipeline_lfc_images.h"

#ifndef INST_BRAM_BASE
#ifdef XPAR_AXI_BRAM_CTRL_0_S_AXI_BASEADDR
#define INST_BRAM_BASE XPAR_AXI_BRAM_CTRL_0_S_AXI_BASEADDR
#else
#define INST_BRAM_BASE 0xA0000000U
#endif
#endif

#ifndef DATA_BRAM_BASE
#ifdef XPAR_AXI_BRAM_CTRL_1_S_AXI_BASEADDR
#define DATA_BRAM_BASE XPAR_AXI_BRAM_CTRL_1_S_AXI_BASEADDR
#else
#define DATA_BRAM_BASE 0xA2000000U
#endif
#endif

#ifndef RESET_GPIO_BASE
#ifdef XPAR_AXI_GPIO_0_BASEADDR
#define RESET_GPIO_BASE XPAR_AXI_GPIO_0_BASEADDR
#else
#define RESET_GPIO_BASE 0xA3000000U
#endif
#endif

#define IMEM_BYTES       0x00020000U
#define DMEM_BYTES       0x00080000U
#define WORD_BYTES       4U
#define GPIO_DATA_OFFSET 0x0U
#define GPIO_TRI_OFFSET  0x4U
#define RUN_TIMEOUT_US   5000000U

#define RESULT_STATUS_WORD       0U
#define RESULT_PREDICTION_WORD   1U
#define RESULT_EXPECTED_WORD     2U
#define RESULT_CORRECT_WORD      3U
#define RESULT_SCORE_BASE_WORD   16U
#define RESULT_SCORE_COUNT       10U

#ifndef PIPELINE_LFC_FULL_READBACK
#define PIPELINE_LFC_FULL_READBACK 1
#endif

static const int32_t expected_scores[RESULT_SCORE_COUNT] = {
    -182, -94, -34, 326, -162, 556, 54, 6, 216, -96
};

static void set_rv32i_reset(int asserted)
{
    /* RV32I_System converts this active-low GPIO signal to CPU active-high. */
    Xil_Out32(RESET_GPIO_BASE + GPIO_DATA_OFFSET, asserted ? 0U : 1U);
}

static void write_words(uint32_t base, uint32_t origin,
                        const uint32_t *image, uint32_t words)
{
    uint32_t index;
    for (index = 0U; index < words; ++index) {
        Xil_Out32((UINTPTR)base + (UINTPTR)(origin + index) * WORD_BYTES,
                  image[index]);
    }
}

static int verify_words(uint32_t base, uint32_t origin,
                        const uint32_t *expected, uint32_t words,
                        const char *name)
{
    uint32_t index;
    for (index = 0U; index < words; ++index) {
        const uint32_t actual = Xil_In32(
            (UINTPTR)base + (UINTPTR)(origin + index) * WORD_BYTES);
        if (actual != expected[index]) {
            xil_printf("READBACK FAIL %s word=%lu expected=%08lx actual=%08lx\r\n",
                       name, (unsigned long)(origin + index),
                       (unsigned long)expected[index], (unsigned long)actual);
            return 1;
        }
    }
    xil_printf("READBACK PASS %s words=%lu\r\n", name, (unsigned long)words);
    return 0;
}

static int32_t read_mailbox(uint32_t word)
{
    return (int32_t)Xil_In32((UINTPTR)DATA_BRAM_BASE +
                             (UINTPTR)word * WORD_BYTES);
}

static uint32_t ticks_to_us(XTime ticks)
{
    const uint64_t value = ((uint64_t)ticks * 1000000ULL +
                            COUNTS_PER_SECOND / 2ULL) / COUNTS_PER_SECOND;
    return (uint32_t)value;
}

static int check_sizes(void)
{
    if (((PIPELINE_LFC_IMEM_ORIGIN_WORD + PIPELINE_LFC_IMEM_WORDS) *
         WORD_BYTES > IMEM_BYTES) ||
        ((PIPELINE_LFC_DMEM_ORIGIN_WORD + PIPELINE_LFC_DMEM_WORDS) *
         WORD_BYTES > DMEM_BYTES)) {
        xil_printf("LOAD FAIL: LFC image exceeds configured BRAM capacity\r\n");
        return 1;
    }
    return 0;
}

static int check_results(void)
{
    const int32_t status = read_mailbox(RESULT_STATUS_WORD);
    const int32_t prediction = read_mailbox(RESULT_PREDICTION_WORD);
    const int32_t expected = read_mailbox(RESULT_EXPECTED_WORD);
    const int32_t correct = read_mailbox(RESULT_CORRECT_WORD);
    uint32_t index;
    int failures = 0;

    xil_printf("status=%ld prediction=%ld expected=%ld correct=%ld\r\n",
               (long)status, (long)prediction, (long)expected, (long)correct);
    if (status != 1 || prediction != 5 || expected != 5 || correct != 1) {
        ++failures;
    }
    xil_printf("scores=[");
    for (index = 0U; index < RESULT_SCORE_COUNT; ++index) {
        const int32_t actual = read_mailbox(RESULT_SCORE_BASE_WORD + index);
        xil_printf("%ld%s", (long)actual,
                   index + 1U == RESULT_SCORE_COUNT ? "" : ",");
        if (actual != expected_scores[index]) {
            ++failures;
        }
    }
    xil_printf("]\r\n");
    return failures;
}

int main(void)
{
    XTime start;
    XTime finish;
    int32_t status = 0;
    uint32_t index;

    Xil_DCacheDisable();
    xil_printf("\r\nPipeline RV32I FINN LFC Ultra96-V1 loader\r\n");
    xil_printf("IMEM=0x%08lx/128KiB DMEM=0x%08lx/512KiB GPIO=0x%08lx\r\n",
               (unsigned long)INST_BRAM_BASE, (unsigned long)DATA_BRAM_BASE,
               (unsigned long)RESET_GPIO_BASE);

    if (check_sizes() != 0) {
        return 1;
    }

    Xil_Out32(RESET_GPIO_BASE + GPIO_TRI_OFFSET, 0U);
    set_rv32i_reset(1);
    for (index = 0U; index < 1024U; ++index) {
        Xil_Out32(DATA_BRAM_BASE + index * WORD_BYTES, 0U);
    }
    write_words(INST_BRAM_BASE, PIPELINE_LFC_IMEM_ORIGIN_WORD,
                pipeline_lfc_imem, PIPELINE_LFC_IMEM_WORDS);
    write_words(DATA_BRAM_BASE, PIPELINE_LFC_DMEM_ORIGIN_WORD,
                pipeline_lfc_dmem, PIPELINE_LFC_DMEM_WORDS);

#if PIPELINE_LFC_FULL_READBACK
    if (verify_words(INST_BRAM_BASE, PIPELINE_LFC_IMEM_ORIGIN_WORD,
                     pipeline_lfc_imem, PIPELINE_LFC_IMEM_WORDS, "IMEM") ||
        verify_words(DATA_BRAM_BASE, PIPELINE_LFC_DMEM_ORIGIN_WORD,
                     pipeline_lfc_dmem, PIPELINE_LFC_DMEM_WORDS, "DMEM")) {
        return 1;
    }
#endif

    XTime_GetTime(&start);
    set_rv32i_reset(0);
    do {
        XTime now;
        status = read_mailbox(RESULT_STATUS_WORD);
        XTime_GetTime(&now);
        if (status == 1 || status < 0) {
            finish = now;
            break;
        }
        if (ticks_to_us(now - start) >= RUN_TIMEOUT_US) {
            finish = now;
            xil_printf("RUN TIMEOUT status=%ld\r\n", (long)status);
            break;
        }
    } while (1);
    set_rv32i_reset(1);

    xil_printf("run=%lu us\r\n", (unsigned long)ticks_to_us(finish - start));
    if (status == 1 && check_results() == 0) {
        xil_printf("Pipeline RV32I FINN LFC PASS\r\n");
        return 0;
    }

    xil_printf("Pipeline RV32I FINN LFC FAIL\r\n");
    return 1;
}
