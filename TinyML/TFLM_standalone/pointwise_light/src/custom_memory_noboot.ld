/* Linker script for bootcode-less pointwise_light build.
 * - IMEM starts at 0x00000000
 * - DMEM starts at 0x20000000
 * Entry is main (TB initializes sp before reset release)
 */
ENTRY(main)

MEMORY
{
    IMEM (rx)  : ORIGIN = 0x00000000, LENGTH = 64K
    DMEM (rwx) : ORIGIN = 0x20000000, LENGTH = 64K
}

SECTIONS
{
    .text :
    {
        KEEP(*(.text.main))
        KEEP(*(.text.startup.main))
        *(.text)
        *(.text.*)
        *(.rodata)
        *(.rodata.*)
        *(.srodata)
        *(.srodata.*)
        *(.eh_frame)
        *(.eh_frame.*)
    } > IMEM

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
        . = ALIGN(4);
        __bss_start = .;
        *(.sbss)
        *(.sbss.*)
        *(.bss)
        *(.bss.*)
        *(COMMON)
        . = ALIGN(4);
        __bss_end = .;
    } > DMEM

    PROVIDE(__global_pointer$ = __data_start + 0x800);

    /DISCARD/ :
    {
        *(.comment)
        *(.note*)
        *(.gnu*)
        *(.riscv.attributes)
    }
}
