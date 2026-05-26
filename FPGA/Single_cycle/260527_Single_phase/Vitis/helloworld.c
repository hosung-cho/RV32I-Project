#include <stddef.h>
#include <stdint.h>
#include <stdio.h>

#include "platform.h"
#include "xil_cache.h"
#include "xil_io.h"
#include "xil_printf.h"
#include "xparameters.h"
#include "xil_types.h"
#include "sleep.h"

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

#define GPIO_DATA_OFFSET 0x0U
#define GPIO_TRI_OFFSET 0x4U

#define WORD_SIZE_BYTES 4U
#define DMEM_MAILBOX_BYTES 0x1000U
#define DMEM_IMAGE_OFFSET_WORDS (DMEM_MAILBOX_BYTES / WORD_SIZE_BYTES)

#define KWS_CATEGORY_COUNT 12

/* Paste arrays generated from TinyML/MLPerf_Tiny_standalone build here. */
static const u32 inst_array[] = {
	0x00000013U
};

static const u32 data_array[] = {
	0x00000000U
};

static const char* kCategoryLabels[KWS_CATEGORY_COUNT] = {
	"down", "go", "left", "no", "off", "on",
	"right", "stop", "up", "yes", "silence", "unknown"
};

enum ResultWord {
	kStatus = 0,
	kPredictedIndex = 1,
	kPredictedRawScore = 2,
	kOutputBase = 3,
};

enum StatusCode {
	kStatusStarted = 0x100,
	kStatusModelOk = 0x110,
	kStatusResolverOk = 0x120,
	kStatusInterpreterOk = 0x130,
	kStatusAllocating = 0x140,
	kStatusAllocateOk = 0x150,
	kStatusInputCopied = 0x160,
	kStatusInvoking = 0x170,
	kStatusInvokeOk = 0x180,
	kStatusSchemaMismatch = -1,
	kStatusAllocateFailed = -2,
	kStatusInputSizeMismatch = -3,
	kStatusInvokeFailed = -4,
	kStatusOk = 1,
};

static const char* KwsStatusName(int32_t status) {
	switch (status) {
	case kStatusStarted:
		return "started";
	case kStatusModelOk:
		return "model ok";
	case kStatusResolverOk:
		return "resolver ok";
	case kStatusInterpreterOk:
		return "interpreter ok";
	case kStatusAllocating:
		return "allocating tensors";
	case kStatusAllocateOk:
		return "allocate ok";
	case kStatusInputCopied:
		return "input copied";
	case kStatusInvoking:
		return "invoking";
	case kStatusInvokeOk:
		return "invoke ok";
	case kStatusSchemaMismatch:
		return "schema mismatch";
	case kStatusAllocateFailed:
		return "allocate failed";
	case kStatusInputSizeMismatch:
		return "input size mismatch";
	case kStatusInvokeFailed:
		return "invoke failed";
	case kStatusOk:
		return "ok";
	default:
		return "unknown";
	}
}

static void LoadWordsToBram(u32 base, const u32* data, size_t word_count,
							u32 word_offset) {
	for (size_t i = 0; i < word_count; ++i) {
		Xil_Out32(base + (word_offset + (u32)i) * WORD_SIZE_BYTES, data[i]);
	}
}

static void ClearMailbox(void) {
	for (u32 i = 0; i < DMEM_MAILBOX_BYTES / WORD_SIZE_BYTES; ++i) {
		Xil_Out32(DATA_BRAM_BASE + i * WORD_SIZE_BYTES, 0U);
	}
}

static void ResetGpioInit(void) {
	Xil_Out32(RESET_GPIO_BASE + GPIO_TRI_OFFSET, 0x0U);
}

static void SetRv32iReset(int assert_reset) {
	const u32 value = assert_reset ? 0x0U : 0x1U;
	Xil_Out32(RESET_GPIO_BASE + GPIO_DATA_OFFSET, value);
}

static int32_t ReadMailboxS32(u32 index) {
	return (int32_t)Xil_In32(DATA_BRAM_BASE + index * WORD_SIZE_BYTES);
}

static void DumpOutputs(void) {
	const int32_t best_index = ReadMailboxS32(kPredictedIndex);
	const int32_t best_raw = ReadMailboxS32(kPredictedRawScore);

	xil_printf("KWS result index=%d raw=%d\r\n", (int)best_index,
			   (int)best_raw);
	if (best_index >= 0 && best_index < KWS_CATEGORY_COUNT) {
		xil_printf("KWS label=%s\r\n", kCategoryLabels[best_index]);
	}

	xil_printf("KWS outputs=[");
	for (int i = 0; i < KWS_CATEGORY_COUNT; ++i) {
		int32_t value = ReadMailboxS32(kOutputBase + (u32)i);
		xil_printf("%d%s", (int)value,
				   (i + 1 == KWS_CATEGORY_COUNT) ? "" : ",");
	}
	xil_printf("]\r\n");
}

int main(void) {
	init_platform();

	xil_printf("MLPerf Tiny KWS (DS-CNN) loader\r\n");
	xil_printf("IMEM base=0x%08lx DMEM base=0x%08lx\r\n",
			   (unsigned long)INST_BRAM_BASE,
			   (unsigned long)DATA_BRAM_BASE);

	ClearMailbox();
	ResetGpioInit();
	SetRv32iReset(1);

	xil_printf("Loading IMEM (%lu words)\r\n",
			   (unsigned long)(sizeof(inst_array) / sizeof(inst_array[0])));
	LoadWordsToBram(INST_BRAM_BASE, inst_array,
					sizeof(inst_array) / sizeof(inst_array[0]), 0U);

	xil_printf("Loading DMEM (%lu words)\r\n",
			   (unsigned long)(sizeof(data_array) / sizeof(data_array[0])));
	LoadWordsToBram(DATA_BRAM_BASE, data_array,
					sizeof(data_array) / sizeof(data_array[0]),
					DMEM_IMAGE_OFFSET_WORDS);

	Xil_DCacheFlush();
	xil_printf("Memory load complete. Releasing RV32I reset.\r\n");
	SetRv32iReset(0);
	usleep(1000);

	xil_printf("Waiting for KWS status...\r\n");
	int32_t status = 0;
	int32_t last_status = -999;
	const u32 timeout_ms = 60000U;
	for (u32 i = 0; i < timeout_ms; ++i) {
		status = ReadMailboxS32(kStatus);
		if (status != last_status) {
			xil_printf("KWS status=%d (0x%08lx, %s)\r\n", (int)status,
					   (unsigned long)(u32)status, KwsStatusName(status));
			last_status = status;
		}
		if (status == kStatusOk || status < 0) {
			break;
		}
		usleep(1000);
	}

	if (status == kStatusOk) {
		xil_printf("KWS status OK\r\n");
		DumpOutputs();
	} else if (status < 0) {
		xil_printf("KWS error status=%d (%s)\r\n", (int)status,
				   KwsStatusName(status));
	} else {
		xil_printf("KWS timeout status=%d (%s)\r\n", (int)status,
				   KwsStatusName(status));
	}

	cleanup_platform();
	return 0;
}
