.section .text.init, "ax"
    .global _start
    .align 2

_start:
    /* 1. 스택 포인터(sp, x2) 초기화 */
    /* 링커 스크립트에서 계산한 _stack_top(0x20010000)을 가져와 설정 */
    la sp, _stack_top

    /* 2. BSS 영역(초기화되지 않은 전역 변수)을 0으로 지우기 */
    la t0, __bss_start
    la t1, __bss_end
    beq t0, t1, bss_clear_done  /* 지울 영역이 없으면 건너뜀 */

bss_clear_loop:
    sw zero, 0(t0)              /* t0가 가리키는 주소에 0 저장 */
    addi t0, t0, 4              /* 주소를 4바이트(1워드) 증가 */
    bltu t0, t1, bss_clear_loop /* 아직 끝 주소에 안 도달했으면 반복 */

bss_clear_done:
    /* 3. C++의 main 함수 호출 */
    call main

    /* 4. main 함수가 끝나고 리턴되면 무한 루프에 빠지도록 하여 CPU 안전 정지 */
end_loop:
    j end_loop