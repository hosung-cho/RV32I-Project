/* Linker script for MLPerf Tiny KWS DS-CNN on the RV32I core.
 *
 * CPU-visible memory map:
 *   IMEM: 0x0000_0000 - 0x0007_FFFF, 512 KiB
 *   DMEM: 0x2000_0000 - 0x2003_FFFF, 256 KiB
 *
 * PS AXI view is different:
 *   IMEM BRAM: 0xA000_0000 - 0xA007_FFFF
 *   DMEM BRAM: 0xA200_0000 - 0xA203_FFFF
 */

ENTRY(_start)

MEMORY
{
    IMEM (rx)  : ORIGIN = 0x00000000, LENGTH = 512K
    DMEM (rwx) : ORIGIN = 0x20000000, LENGTH = 256K
}

SECTIONS
{
    .text :
    {
        . = ALIGN(4);
        KEEP(*(.text.init))
        *(.text)
        *(.text.*)
    } > IMEM

    /* Reserve the first 4 KiB of DMEM for status/result inspection. */
    .mailbox (NOLOAD) :
    {
        . = ALIGN(4);
        __mailbox_start = .;
        . = . + 0x1000;
        __mailbox_end = .;
    } > DMEM

    /* The core is Harvard-style: data loads always go to DMEM, so constants
       and the TFLite flatbuffer model must live in DMEM, not only in IMEM. */
    .rodata :
    {
        . = ALIGN(4);
        *(.rodata)
        *(.rodata.*)
        *(.srodata)
        *(.srodata.*)
        . = ALIGN(4);
    } > DMEM

    .data :
    {
        . = ALIGN(4);
        __data_start = .;
        *(.sdata)
        *(.sdata.*)
        *(.data)
        *(.data.*)
        . = ALIGN(4);
        __data_end = .;
    } > DMEM

    .bss (NOLOAD) :
    {
        . = ALIGN(16);
        __bss_start = .;
        *(.sbss)
        *(.sbss.*)
        *(.bss)
        *(.bss.*)
        *(COMMON)
        . = ALIGN(16);
        __bss_end = .;
    } > DMEM

    PROVIDE(__result_base = ORIGIN(DMEM));
    PROVIDE(__global_pointer$ = __data_start + 0x800);
    PROVIDE(_stack_top = ORIGIN(DMEM) + LENGTH(DMEM));

    /DISCARD/ :
    {
        *(.comment)
        *(.note*)
        *(.gnu*)
        *(.riscv.attributes)
        *(.eh_frame)
        *(.eh_frame.*)
        *(.init_array*)
        *(.fini_array*)
    }
}
