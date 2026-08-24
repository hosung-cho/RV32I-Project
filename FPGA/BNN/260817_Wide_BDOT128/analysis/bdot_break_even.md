# BDOT128 break-even 분석 기록

## 기준값

```text
XPC32 cycles       = 776,741
CPU frequency      = 35 MHz
XPC32 RTL time     = 22.1926 ms
LFC BDOT count     = 3,082
BDOT128 block count= 23,632
```

## 모델

```text
T_BDOT = C_host / F_cpu + C_accel / F_accel

C_accel = 3,082 * C_start
        + 23,632 * II_block
        + 3,082 * C_finish
        + C_cdc

F_accel_min = C_accel
            / (T_XPC32 - C_host / F_cpu)
```

FINN LFC 전체 RTL 추론을 완료해 host, CDC 및 accelerator activity를 계측했다.

## 측정표

| 항목 | 예상 | RTL 측정 | FPGA 측정 |
|---|---:|---:|---:|
| `C_start` | 0 | 0 | TBD |
| `II_block` | 3 | 3 | TBD |
| `C_finish` | 0 | 0 | TBD |
| accelerator busy | 70,896 | 70,896 | TBD |
| non-hold CPU cycle | TBD | 57,411 | TBD |
| PC hold cycle | TBD | 48,288 | TBD |
| 전체 CPU cycle | TBD | 105,699 | TBD |
| dual-clock break-even | TBD | 3.572 MHz | - |
| dual-clock 20% margin | TBD | 4.286 MHz | - |

현재 기능 우선 FSM은 각 block을 `ISSUE -> WAIT -> ACCUM`의 3 cycle로
처리한다. Standalone request accept부터 done까지 측정한 값은 다음과 같다.

| bit length | block | accelerator cycle |
|---:|---:|---:|
| 128 | 1 | 3 |
| 256 | 2 | 6 |
| 512 | 4 | 12 |
| 784 | 7 | 21 |
| 1024 | 8 | 24 |

## FINN LFC 실측 기반 계산

```text
C_total_cpu      = 105,699
C_pc_hold        = 48,288
C_nonhold        = 57,411
C_accel          = 70,896 accelerator cycles
C_accel_cpu_eq   = 70,896 / 3 = 23,632 CPU cycles
C_protocol_fixed = 48,288 - 23,632 = 24,656 CPU cycles
C_fixed          = 57,411 + 24,656 = 82,067 CPU cycles
```

CPU 35 MHz 고정, accelerator clock만 변화시킨다는 가정에서 calculator 입력은
다음과 같다.

```bash
python3 analysis/bdot_break_even.py \
  --host-cycles 82067 \
  --start-cycles 0 \
  --block-ii 3 \
  --finish-cycles 0 \
  --cdc-cycles 0
```

```text
xpc32_time_ms=22.192600
host_time_ms=2.344771
accel_cycles=70896
break_even_mhz=3.571978
target_mhz=4.286373
```

여기서 `82,067`은 순수 software host만이 아니라 현재 clock ratio에서 관측한
고정 protocol/CDC 상당 cycle까지 포함한다. 따라서 3.572 MHz는 측정값으로부터
도출한 분석치이며 FPGA 주파수 sweep 실측값은 아니다.

전체 105,699 cycle이 하나의 clock에 비례한다고 보는 보수적 common-clock 모델은
break-even 4.763 MHz, 20% margin 5.715 MHz이다. 두 모델 모두 목표 105 MHz보다
충분히 낮다.
