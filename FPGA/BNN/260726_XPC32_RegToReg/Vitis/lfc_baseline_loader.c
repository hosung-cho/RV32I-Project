#include "lfc_dmem_image.h"
#include "lfc_imem_baseline.h"

#define LFC_VARIANT_NAME "baseline-software-popcount"
#define LFC_IMEM_IMAGE lfc_imem_baseline
#define LFC_IMEM_WORDS LFC_IMEM_BASELINE_WORDS
#define LFC_EXPECTED_RTL_CYCLES 2399397U
#define LFC_EXPECTED_XPC32_COUNT 0U

#include "lfc_loader_common.h"
