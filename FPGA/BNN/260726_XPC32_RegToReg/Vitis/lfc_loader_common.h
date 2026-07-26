#ifndef LFC_LOADER_COMMON_H
#define LFC_LOADER_COMMON_H

#include <stdint.h>
#include "xil_cache.h"
#include "xil_io.h"
#include "xil_printf.h"
#include "xparameters.h"
#include "xiltimer.h"

#if defined(XPAR_AXI_BRAM_CTRL_0_S_AXI_BASEADDR)
#define LFC_IMEM_BASE XPAR_AXI_BRAM_CTRL_0_S_AXI_BASEADDR
#elif defined(XPAR_AXI_BRAM_CTRL_0_BASEADDR)
#define LFC_IMEM_BASE XPAR_AXI_BRAM_CTRL_0_BASEADDR
#else
#define LFC_IMEM_BASE 0xA0000000U
#endif
#if defined(XPAR_AXI_BRAM_CTRL_1_S_AXI_BASEADDR)
#define LFC_DMEM_BASE XPAR_AXI_BRAM_CTRL_1_S_AXI_BASEADDR
#elif defined(XPAR_AXI_BRAM_CTRL_1_BASEADDR)
#define LFC_DMEM_BASE XPAR_AXI_BRAM_CTRL_1_BASEADDR
#else
#define LFC_DMEM_BASE 0xA2000000U
#endif
#if defined(XPAR_AXI_GPIO_0_BASEADDR)
#define LFC_RESET_GPIO_BASE XPAR_AXI_GPIO_0_BASEADDR
#else
#define LFC_RESET_GPIO_BASE 0xA3000000U
#endif

#define LFC_IMEM_BYTES 0x00040000U
#define LFC_DMEM_BYTES 0x00080000U
#define LFC_GPIO_DATA_OFFSET 0x0U
#define LFC_GPIO_TRI_OFFSET 0x4U
#define LFC_WORD_BYTES 4U
#define LFC_RV32I_HZ 35000000ULL
#define LFC_TIMEOUT_US 1000000U
#define LFC_STATUS_WORD 0U
#define LFC_PREDICTION_WORD 1U
#define LFC_EXPECTED_WORD 2U
#define LFC_CORRECT_WORD 3U
#define LFC_SCORE_BASE_WORD 16U
#define LFC_SCORE_COUNT 10U

static const int32_t lfc_expected_scores[LFC_SCORE_COUNT] = {
    -182, -94, -34, 326, -162, 556, 54, 6, 216, -96
};

static void lfc_set_reset(int assert_reset)
{
    Xil_Out32(LFC_RESET_GPIO_BASE + LFC_GPIO_DATA_OFFSET,
              assert_reset ? 0U : 1U);
}

static int32_t lfc_read_dmem_s32(uint32_t word_index)
{
    const UINTPTR address = (UINTPTR)LFC_DMEM_BASE +
        (UINTPTR)word_index * LFC_WORD_BYTES;
    Xil_DCacheInvalidateRange(address, LFC_WORD_BYTES);
    return (int32_t)Xil_In32(address);
}

static uint32_t lfc_ticks_to_us(XTime ticks)
{
    const uint64_t us = ((uint64_t)ticks * 1000000ULL +
        COUNTS_PER_SECOND / 2ULL) / COUNTS_PER_SECOND;
    return (uint32_t)us;
}

static uint32_t lfc_us_to_cycles(uint32_t us)
{
    const uint64_t cycles = ((uint64_t)us * LFC_RV32I_HZ +
        500000ULL) / 1000000ULL;
    return (uint32_t)cycles;
}

static void lfc_load_images(void)
{
    uint32_t index;
    for (index = 0U; index < LFC_IMEM_WORDS; ++index) {
        Xil_Out32(LFC_IMEM_BASE + index * LFC_WORD_BYTES,
                  LFC_IMEM_IMAGE[index]);
    }
    for (index = 0U; index < LFC_DMEM_IMAGE_WORDS; ++index) {
        Xil_Out32(LFC_DMEM_BASE + index * LFC_WORD_BYTES,
                  lfc_dmem_image[index]);
    }
}

static int lfc_wait_for_status(XTime start, XTime *finish)
{
    for (;;) {
        const int32_t status = lfc_read_dmem_s32(LFC_STATUS_WORD);
        XTime now;
        XTime_GetTime(&now);
        if (status == 1 || status < 0) {
            *finish = now;
            return status;
        }
        if (lfc_ticks_to_us(now - start) >= LFC_TIMEOUT_US) {
            *finish = now;
            return status;
        }
    }
}

static int lfc_check_results(void)
{
    const int32_t status = lfc_read_dmem_s32(LFC_STATUS_WORD);
    const int32_t prediction = lfc_read_dmem_s32(LFC_PREDICTION_WORD);
    const int32_t expected = lfc_read_dmem_s32(LFC_EXPECTED_WORD);
    const int32_t correct = lfc_read_dmem_s32(LFC_CORRECT_WORD);
    int failures = 0;
    uint32_t index;

    xil_printf("status=%ld prediction=%ld expected=%ld correct=%ld\r\n",
               (long)status, (long)prediction, (long)expected, (long)correct);
    if (status != 1 || prediction != 5 || expected != 5 || correct != 1) {
        ++failures;
    }
    xil_printf("scores=[");
    for (index = 0U; index < LFC_SCORE_COUNT; ++index) {
        const int32_t actual = lfc_read_dmem_s32(LFC_SCORE_BASE_WORD + index);
        xil_printf("%ld%s", (long)actual,
                   (index + 1U == LFC_SCORE_COUNT) ? "" : ",");
        if (actual != lfc_expected_scores[index]) {
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
    uint32_t elapsed_us;
    uint32_t approximate_cycles;
    int status;
    int failures;

    Xil_DCacheDisable();
    xil_printf("\r\nFINN LFC-W1A1 RV32I loader\r\n");
    xil_printf("variant=%s\r\n", LFC_VARIANT_NAME);
    xil_printf("IMEM=0x%08lx words=%lu bytes=%lu/%lu\r\n",
               (unsigned long)LFC_IMEM_BASE, (unsigned long)LFC_IMEM_WORDS,
               (unsigned long)(LFC_IMEM_WORDS * LFC_WORD_BYTES),
               (unsigned long)LFC_IMEM_BYTES);
    xil_printf("DMEM=0x%08lx words=%lu bytes=%lu/%lu\r\n",
               (unsigned long)LFC_DMEM_BASE, (unsigned long)LFC_DMEM_IMAGE_WORDS,
               (unsigned long)(LFC_DMEM_IMAGE_WORDS * LFC_WORD_BYTES),
               (unsigned long)LFC_DMEM_BYTES);
    xil_printf("reference RTL cycles=%lu XPC32 count=%lu\r\n",
               (unsigned long)LFC_EXPECTED_RTL_CYCLES,
               (unsigned long)LFC_EXPECTED_XPC32_COUNT);

    if ((LFC_IMEM_WORDS * LFC_WORD_BYTES > LFC_IMEM_BYTES) ||
        (LFC_DMEM_IMAGE_WORDS * LFC_WORD_BYTES > LFC_DMEM_BYTES)) {
        xil_printf("LFC LOAD FAIL: image exceeds BRAM capacity\r\n");
        return 1;
    }

    Xil_Out32(LFC_RESET_GPIO_BASE + LFC_GPIO_TRI_OFFSET, 0U);
    lfc_set_reset(1);
    xil_printf("Loading IMEM and DMEM...\r\n");
    lfc_load_images();
    xil_printf("readback inst[0]=0x%08lx rodata[0]=0x%08lx\r\n",
               (unsigned long)Xil_In32(LFC_IMEM_BASE),
               (unsigned long)Xil_In32(LFC_DMEM_BASE + 0x1000U));

    XTime_GetTime(&start);
    lfc_set_reset(0);
    status = lfc_wait_for_status(start, &finish);
    lfc_set_reset(1);
    elapsed_us = lfc_ticks_to_us(finish - start);
    approximate_cycles = lfc_us_to_cycles(elapsed_us);
    xil_printf("reset-release-to-status=%lu us, approx %lu cycles @ 35 MHz\r\n",
               (unsigned long)elapsed_us, (unsigned long)approximate_cycles);

    if (status != 1) {
        xil_printf("LFC RUN FAIL: status=%d\r\n", status);
        return 1;
    }
    failures = lfc_check_results();
    if (failures == 0) {
        xil_printf("FINN LFC %s PASS\r\n", LFC_VARIANT_NAME);
    } else {
        xil_printf("FINN LFC %s FAIL: %d mismatches\r\n",
                   LFC_VARIANT_NAME, failures);
    }
    return failures == 0 ? 0 : 1;
}

#endif
