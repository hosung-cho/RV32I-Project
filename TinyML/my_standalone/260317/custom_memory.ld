/* 엔트리 포인트 (부트 코드의 시작점) 지정 */
ENTRY(_start)

/* 물리적 메모리 구조 정의 (제안한 메모리 맵 적용) */
MEMORY
{
    IMEM (rx) : ORIGIN = 0x00000000, LENGTH = 64K
    DMEM (rw) : ORIGIN = 0x20000000, LENGTH = 64K
}

SECTIONS
{
    /* 1. 명령어 영역 (IMEM에 배치) */
    .text :
    {
        *(.text.init) /* 부트 코드가 가장 먼저 오도록 강제 */
        *(.text)      /* 일반 C/C++ 함수들 (main 등) */
        *(.text.*)
        *(.rodata)    /* 읽기 전용 데이터 (상수 등) */
        *(.rodata.*)
    } > IMEM

    /* 2. 초기값이 있는 전역 변수 (DMEM에 배치) */
    .data :
    {
        . = ALIGN(4);
        *(.data)
        *(.data.*)
    } > DMEM

    /* 3. 초기값이 없는(0으로 초기화될) 전역 변수 (DMEM에 배치) */
    .bss :
    {
        . = ALIGN(4);
        __bss_start = .; /* BSS 시작 주소 (부트 코드에서 사용) */
        *(.bss)
        *(.bss.*)
        *(COMMON)
        . = ALIGN(4);
        __bss_end = .;   /* BSS 끝 주소 (부트 코드에서 사용) */
    } > DMEM

    /* 4. 스택 포인터 위치 지정 (DMEM의 맨 끝 주소) */
    /* 0x20000000 + 64KB = 0x20010000 */
    PROVIDE(_stack_top = ORIGIN(DMEM) + LENGTH(DMEM));
}