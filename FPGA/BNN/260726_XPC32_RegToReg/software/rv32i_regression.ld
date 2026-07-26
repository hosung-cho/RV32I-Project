ENTRY(_start)

MEMORY
{
    IMEM (rx)  : ORIGIN = 0x00000000, LENGTH = 16K
    DMEM (rw)  : ORIGIN = 0x20000000, LENGTH = 4K
}

SECTIONS
{
    .text :
    {
        *(.text*)
    } > IMEM

    .rodata :
    {
        *(.rodata*)
    } > DMEM

    .data :
    {
        *(.data*)
    } > DMEM

    .bss (NOLOAD) :
    {
        *(.bss*)
        *(COMMON)
    } > DMEM
}
