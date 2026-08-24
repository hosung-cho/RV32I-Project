# Wide-BDOT128 Ultra96-V1 PS loader 작성 결과

> 후속 결과: 2026-08-18 갱신된 IMEM 144-word image로 Ultra96-V1 실행까지 PASS했다.
> 상세 결과는 `ultra96v1_cpu_integrated_board_result.md`를 따른다.

## 1. 범위

Vitis platform/application project는 생성하지 않고, 사용자가 XSA로 만든
standalone A53 application에 import할 코드만 `Vitis/`에 작성했다.

| 파일 | 용도 |
|---|---|
| `Vitis/wide_bdot_loader.c` | PS loader, 실행 및 결과 검사 |
| `Vitis/wide_bdot_images.h` | RV32I/DMEM/Activation/Weight 내장 image |
| `Vitis/generate_wide_bdot_vitis_images.py` | 원본 image에서 헤더 재생성 |
| `Vitis/README.md` | Vitis import 및 실행 안내 |

## 2. 포함된 이미지

| Image | 헤더에 포함한 범위 | 물리 BRAM |
|---|---:|---:|
| IMEM | 136 words | 32,768 words |
| DMEM | word `0x400`부터 1,632 words | 16,384 words |
| Activation 0 input | 25 words | 8,192 words |
| Activation 1 | zero clear | 8,192 words |
| Weight | 94,528 words, 378,112 bytes | 102,400 words, 400 KiB |

IMEM, DMEM, Activation bank는 적재 전에 전체를 0으로 초기화한다. Weight는
accelerator가 실제 접근하는 378,112 bytes를 전부 포함하며, 400 KiB 물리 범위와
512 KiB AXI decode window를 혼동하지 않도록 loader에서 크기를 검사한다.

## 3. 제어 절차

Loader는 AXI GPIO channel 1을 다음 순서로 제어한다.

1. `3`: `load_mode=1`, `async_reset=1`
2. 전체 image 적재 및 AXI read-back
3. `1`: reset 해제, loader ownership 유지
4. 1 us 대기(35 MHz CPU 2주기보다 충분히 김)
5. `0`: RV32I ownership 전환 및 실행
6. DMEM mailbox 완료 또는 1초 timeout 대기
7. `3`: RV32I 정지 및 loader ownership 복구

실행 중에는 GPIO channel 2의 `bdot_error`와 DMEM status를 확인한다. 완료 후
prediction 5, expected 5, correct 1과 다음 score를 모두 비교한다.

```text
[-182, -94, -34, 326, -162, 556, 54, 6, 216, -96]
```

## 4. 검증 결과

- Generator 실행: PASS
- IMEM/DMEM/Activation/Weight 원본 용량 및 zero-padding 검사: PASS
- 생성 헤더 data count: 96,321 words, PASS
- Loader가 접근하는 최대 Weight 범위: 378,112 bytes `<` 400 KiB, PASS
- C11 `-Wall -Wextra -Werror` syntax 검사: PASS
- GPIO sequence 및 하드웨어 주소와 Vivado Block Design의 일치 여부: PASS

Vitis 2024.2 SDT 기반 standalone BSP는 기존 `xtime_l.h` 대신 export된
`xiltimer.h`에서 `XTime`, `XTime_GetTime`, `COUNTS_PER_SECOND`를 제공한다. 실제
생성된 BSP include 구성을 확인해 loader도 `xiltimer.h`를 사용하도록 확정했다.

사용자가 생성한 Vitis 2024.2 standalone A53 project의 실제 BSP로 loader object
compile과 ELF link를 확인했다. 생성 ELF는 AArch64 static executable이며
text 423,329 B, data 292 B, bss 21,283 B, 합계 444,904 B다. 터미널 Ninja 재검증은
link 이후 bare `aarch64-none-elf-size`의 PATH 문제로 마지막 command만 실패 상태가
됐지만 ELF는 생성됐고 절대 경로의 Vitis size/readelf/nm으로 검증했다.

남은 작업은 Vitis IDE에서 수정 source를 Clean/Build하고 Ultra96-V1에서 실제
실행하는 것이다. 예상 UART 출력과 import 방법은 `Vitis/README.md`에 기록했다.
