# 260527 Single Phase RTL Debug Note

## 요약

MLPerf Tiny KWS(DS-CNN) FPGA 실행 중 Vitis loader에서 status mailbox 값이 정상 상태값과 `0x00003D34` 사이를 번갈아 보이는 문제가 있었다.

관찰된 정상 상태값:

- `0x00000100`: started
- `0x00000102`: before model read
- `0x00000104`: model bytes read
- `0x00000108`: get model ok
- `0x0000010C`: version read
- `0x00000110`: model ok

비정상 값:

- `0x00003D34`

최종 원인은 다음 두 가지가 겹친 것으로 판단했다.

1. RV32I 코어는 IMEM/DMEM 비동기 read를 전제로 설계되어 있으나 FPGA BRAM은 동기식 read라서, ILA 파형상 `inst`가 `fetch_addr`보다 한 instruction 늦게 따라온다.
2. DMEM 256KB 범위 밖 주소인 `0x20040000`에 write가 발생했고, BRAM 하위 주소 alias 때문에 mailbox offset 0을 덮어써 status가 `0x00003D34`로 보였다.

## 관련 파일

- `src/rtl/rv32i_cpu.v`
- `src/rtl/RV32I_System.v`
- `src/XDC/timing.xdc`
- `src/bd/design_1.tcl`
- `Vitis/helloworld.c`
- `etc/iladata.vcd`
- `TinyML/MLPerf_Tiny_standalone/src/custom_memory_kws.ld`
- `TinyML/MLPerf_Tiny_standalone/src/crt0.S`
- `TinyML/MLPerf_Tiny_standalone/build_rv32i/main_kws_rv32i.asm`

## 시스템 전제

현재 FPGA 구성은 3상 클럭을 사용한다.

- CPU: 0도
- IMEM BRAM: 90도
- DMEM BRAM: 270도

의도는 RV32I 코어가 기대하는 비동기 read와 유사하게 보이도록, BRAM의 동기 read latency를 phase shift로 흡수하는 것이다.

다만 phase shift는 BRAM data return timing을 맞춰줄 뿐, `fetch_addr`와 `inst`를 논리적으로 같은 instruction으로 자동 정렬해주지는 않는다. 따라서 ILA에서는 `fetch_addr`가 다음 instruction 주소를 가리키고, `inst`는 이전 fetch 주소의 instruction으로 보인다.

## Vitis BRAM Address Diagnostic 결과

RTL 수정 전, 먼저 BRAM Port B 주소 해석 문제가 있는지 Vitis C diagnostic으로 확인했다.

Diagnostic program이 RV32I에서 DMEM byte offset에 직접 write:

- `0x00000`
- `0x00004`
- `0x00010`
- `0x01000`
- `0x3FFF0`

Readback:

```text
DMEM+0x00000 = 0x11111111
DMEM+0x00004 = 0x22222222
DMEM+0x00008 = 0x00000000
DMEM+0x00010 = 0x33333333
DMEM+0x00040 = 0x00000000
DMEM+0x01000 = 0x44444444
DMEM+0x04000 = 0x00000000
DMEM+0x3FFC0 = 0x00000000
DMEM+0x3FFF0 = 0x55555555
```

결론:

- DMEM Port B는 byte address 기준으로 정상 동작한다.
- 따라서 `RV32I_System.v`에서 BRAM address를 word index로 바꾸는 수정은 하지 않는다.
- `RUN_BRAM_ADDR_DIAG`는 테스트 후 다시 0으로 되돌렸다.

## ILA VCD 분석 결과

분석 대상:

- `etc/iladata.vcd`

주요 signal:

- `inst`
- `fetch_addr`
- `data_addr`
- `write_data`
- `read_data`
- `ByteEnable`
- `data_we`

ILA에서 mailbox write로 확인된 정상 status:

```text
t=512 data_addr=0x20000000 write_data=0x00000100
t=518 data_addr=0x20000000 write_data=0x00000101
t=520 data_addr=0x20000000 write_data=0x00000102
t=534 data_addr=0x20000000 write_data=0x00000104
t=549 data_addr=0x20000000 write_data=0x00000108
t=565 data_addr=0x20000000 write_data=0x0000010C
t=568 data_addr=0x20000000 write_data=0x00000110
```

중요 관찰:

- `0x00003D34`는 mailbox 주소 `0x20000000`에 직접 쓰인 값이 아니었다.
- 대신 다음 write가 포착되었다.

```text
t=585 pc=0x0000eca4 inst=0x00112e23 data_addr=0x20040000 write_data=0x00003d34 be=0xf
```

`inst=0x00112e23`는 `sw ra,28(sp)`로 해석된다. ASM 기준으로는 `Register_FULLY_CONNECTED` 근처의 함수 prologue였다.

문제는 `data_addr=0x20040000`이다.

- DMEM base: `0x20000000`
- DMEM size: 256KB
- valid range: `0x20000000` to `0x2003FFFF`
- first invalid address: `0x20040000`

BRAM address width가 256KB 하위 주소만 사용하면 `0x20040000`은 offset 0으로 wrap되어 mailbox를 덮을 수 있다. 이 때문에 PS가 status를 polling할 때 `0x00003D34`를 읽는 것으로 보인다.

## fetch_addr와 inst가 한 instruction 어긋나는 이유

현재 파형에서는 `fetch_addr`가 `inst`보다 한 instruction 앞서 있다.

예시:

```text
0x3d2c: jal 0xeca0
0x3d30: lui a3,0x14
0x3d34: addi a2,sp,8
```

ILA에서는 `inst`가 `0x3d2c`의 `jal`일 때 `fetch_addr`/`pc`가 이미 `0x3d30`을 가리키는 형태가 된다.

따라서 현재 FPGA 동기 BRAM 모델에서는:

- RTL의 `pc`는 현재 실행 instruction PC가 아니라 다음 fetch 주소처럼 동작한다.
- 현재 실행 instruction의 실제 PC는 `inst_pc = pc - 4`로 보아야 한다.

이 상태에서 기존 CPU 로직을 그대로 쓰면:

- JAL/JALR link 값이 `pc + 4`가 되어 한 instruction 더 앞선 값이 저장된다.
- AUIPC가 현재 instruction PC가 아니라 다음 fetch PC를 기준으로 계산된다.
- JALR target update도 다음 fetch 주소 관점에서 4 byte 보정이 필요하다.

## Linker와 stack 관련 확인

`custom_memory_kws.ld`:

```ld
DMEM (rwx) : ORIGIN = 0x20000000, LENGTH = 256K
PROVIDE(_stack_top = ORIGIN(DMEM) + LENGTH(DMEM));
```

따라서 `_stack_top = 0x20040000`.

`crt0.S`에서는:

```asm
la sp, _stack_top
```

ASM 시작부:

```asm
0x00000000: auipc sp,0x20040
0x00000004: mv sp,sp
```

기존 AUIPC가 한 instruction 앞선 `pc`를 기준으로 계산되면 stack pointer가 의도보다 4 byte 높아질 수 있다. 함수 prologue의 stack store와 결합되면 `0x20040000` 근처 invalid write가 발생할 가능성이 커진다.

## RTL 수정 내용

### 1. `rv32i_cpu.v`: 현재 instruction PC 보정

추가:

```verilog
wire [31:0] inst_pc;
assign inst_pc = pc - 32'd4;
```

의미:

- 동기 IMEM 환경에서 `pc`는 현재 `inst`의 주소가 아니라 다음 fetch 주소에 가깝다.
- 현재 실행 중인 instruction 기준 PC는 `inst_pc`로 계산한다.

### 2. `rv32i_cpu.v`: AUIPC 기준 PC 수정

기존:

```verilog
if (auipc) alusrc1[31:0] = pc;
```

수정:

```verilog
if (auipc) alusrc1[31:0] = inst_pc;
```

효과:

- `la sp, _stack_top` 같은 AUIPC 기반 주소 생성이 한 instruction만큼 밀리지 않는다.

### 3. `rv32i_cpu.v`: JAL/JALR link 값 수정

기존:

```verilog
if (jal | jalr) rd_data[31:0] = pc + 4;
```

수정:

```verilog
if (jal | jalr) rd_data[31:0] = pc;
```

이유:

- RISC-V link 값은 현재 instruction PC + 4이다.
- 현재 모델에서 `pc = inst_pc + 4`이므로 link 값은 `pc` 자체가 맞다.

### 4. `rv32i_cpu.v`: JALR target 보정

기존:

```verilog
assign jalr_dest = {aluout[31:1],1'b0};
```

수정:

```verilog
assign jalr_dest_tmp = {aluout[31:1],1'b0};
assign jalr_dest     = jalr_dest_tmp + 32'd4;
```

이유:

- JALR target 자체는 `rs1 + imm`의 LSB clear 값이다.
- 하지만 이 datapath의 `pc` 레지스터가 다음 fetch 주소로 해석되므로, 다음 cycle fetch 주소에는 target instruction의 다음 주소 관점 보정이 필요하다.

### 5. Branch/JAL target은 유지

다음 계산은 유지했다.

```verilog
assign branch_dest = pc + se_br_imm;
assign jal_dest    = pc + se_jal_imm;
```

이유:

- RISC-V branch/JAL target은 `inst_pc + imm`이다.
- 하지만 current `pc = inst_pc + 4`이고 immediate generator가 branch/jal offset 형태와 결합되어 기존 설계에서 다음 fetch 주소 관점으로 맞물려 있었다.
- ILA 관점에서 문제로 확인된 것은 link/AUIPC/JALR 정렬이었다.

### 6. `RV32I_System.v`: DMEM 범위 guard 추가

추가:

```verilog
(* mark_debug = "true" *) wire dmem_addr_valid;
assign dmem_addr_valid = (data_addr[31:18] == 14'h0800);
```

수정:

```verilog
assign dmem_we = (data_we && dmem_addr_valid) ? ByteEnable : 4'b0000;
```

유효 범위:

- `data_addr[31:18] == 14'h0800`
- byte address 기준 `0x20000000` to `0x2003FFFF`

효과:

- `0x20040000` 같은 out-of-range write가 BRAM 하위 주소 alias로 mailbox를 덮어쓰는 것을 차단한다.
- `dmem_addr_valid`를 `mark_debug`로 잡아 ILA에서 invalid write 차단 여부를 직접 확인할 수 있다.

## 검증 결과

RTL 문법 체크:

```bash
iverilog -tnull -Wall \
  RV32I-Project/FPGA/Single_cycle/260527_Single_phase/src/rtl/basic_modules.v \
  RV32I-Project/FPGA/Single_cycle/260527_Single_phase/src/rtl/rv32i_cpu.v \
  RV32I-Project/FPGA/Single_cycle/260527_Single_phase/src/rtl/RV32I_System.v
```

결과:

- exit code 0
- syntax error 없음
- 기존 `basic_modules.v`의 메모리 array sensitivity warning만 존재

Warning:

```text
basic_modules.v:60: warning: @* is sensitive to all 32 words in array 'mem'.
basic_modules.v:61: warning: @* is sensitive to all 32 words in array 'mem'.
```

## 다음 FPGA 확인 포인트

Bitstream 재생성 후 Vitis loader와 ILA에서 다음을 확인한다.

1. Vitis polling log에서 `0x00003D34` status가 사라지는지 확인한다.
2. ILA에서 `data_addr=0x20040000` 또는 DMEM 범위 밖 주소가 나올 때:
   - `dmem_addr_valid = 0`
   - `dmem_we = 4'b0000`
   이어야 한다.
3. JAL/JALR link 값이 한 instruction 앞서지 않는지 확인한다.
   - 예: `0x3d2c`의 JAL link는 `0x3d30`이어야 하며, `0x3d34`가 아니어야 한다.
4. AUIPC 기반 stack pointer 초기화가 `_stack_top = 0x20040000` 기준으로 정확히 맞는지 확인한다.
5. KWS가 `model ok` 이후 timeout 없이 inference 완료 status까지 진행하는지 확인한다.

## 남은 리스크

DMEM write guard는 mailbox alias corruption을 막지만, 소프트웨어가 실제로 DMEM 범위 밖 stack/heap을 계속 사용한다면 프로그램 자체는 여전히 실패할 수 있다.

따라서 이번 RTL 수정 이후에도 KWS가 멈춘다면 다음 후보를 확인해야 한다.

- stack 사용량이 `__bss_end`와 `_stack_top` 사이 여유를 초과하는지
- TFLM arena/stack 배치가 256KB DMEM에 맞는지
- DMEM read timing도 CPU 관점에서 한 cycle/phase 어긋나지 않는지
- `timing.xdc` comment가 실제 3상 설정과 다르게 남아 있는 부분 정리

## 결론

이번 수정은 BRAM 주소 체계 자체를 바꾸는 것이 아니라, 동기 BRAM 사용으로 인해 생긴 PC/inst alignment 문제와 DMEM 범위 밖 write alias 문제를 보정하는 방향이다.

주요 변경:

- `rv32i_cpu.v`: `inst_pc = pc - 4` 도입, AUIPC/JAL/JALR 보정
- `RV32I_System.v`: DMEM valid range guard 추가

이제 재합성 후 ILA에서 `dmem_addr_valid`와 link 값 변화를 확인하면 된다.
