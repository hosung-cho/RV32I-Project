#include "lfc_dmem_image.h"
#include "lfc_imem_xpc32.h"

#define LFC_VARIANT_NAME "xpc32-reg-to-reg"
#define LFC_IMEM_IMAGE lfc_imem_xpc32
#define LFC_IMEM_WORDS LFC_IMEM_XPC32_WORDS
#define LFC_EXPECTED_RTL_CYCLES 776741U
#define LFC_EXPECTED_XPC32_COUNT 90432U

#include "lfc_loader_common.h"
