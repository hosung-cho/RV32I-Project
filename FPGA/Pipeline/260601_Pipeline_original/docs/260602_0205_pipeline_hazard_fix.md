# 260602 Pipeline Hazard 수정 기록

## 배경

대상 프로젝트:

- `RV32I-Project/FPGA/Pipeline/260601_Pipeline_original`

Vitis 로더 실행 결과:

```text
MLPerf Tiny KWS (DS-CNN) loader
IMEM base=0xA0000000 DMEM base=0xA2000000
Loading IMEM (21331 words)
Loading DMEM (14014 words)
DMEM readback rodata[0]=0x00000F6C model[0]=0x0000001C
Memory load complete. Releasing RV32I reset.
Waiting for KWS status...
KWS status=0 (0x00000000, unknown)
KWS status=272 (0x00000110, model ok)
KWS timeout status=272 (model ok)
KWS debug pred=3 raw=0x00000003
```

해석:

- PS에서 IMEM/DMEM BRAM으로 프로그램과 데이터 이미지를 쓰는 과정은 정상으로 보인다.
- RV32I 프로그램이 실행되어 `kStatusModelOk = 0x110`까지 도달했다.
- 다음 단계인 `kStatusResolverOk = 0x120`까지 진행하지 못하고 타임아웃됐다.
- `pred=3`은 최종 KWS 결과가 아니다. `kStatusOk = 1`에 도달하지 못했기 때문에, timeout 상황에서 mailbox word 1을 디버그용으로 읽은 값일 뿐이다.

멈춘 위치는 TFLM 모델 검증 직후, resolver/interpreter 초기화 구간으로 추정된다. 이 구간에는 branch, pointer check, 함수 호출이 많으므로 pipeline hazard 문제가 유력했다.

## 수정 파일

RTL:

- `src/rtl/rv32i_cpu.v`

테스트벤치:

- `testbench/testbench_hazard/tb_pipeline_hazard.v`

시뮬레이션 스크립트:

- `testbench/testbench_hazard/sim/run_sim.tcl`
- `testbench/testbench_hazard/sim/run.bat`

## RTL 수정 사항

### 1. PC 업데이트에서 flush가 stall보다 우선하도록 수정

위치:

- `src/rtl/rv32i_cpu.v`

수정 전:

```verilog
else if (~stall)
  pc <= next_pc;
```

수정 후:

```verilog
else if (flush || ~stall)
  pc <= next_pc;
```

이유:

- branch/jump redirect는 `flush`로 표현된다.
- 기존 로직에서는 `flush`와 `stall`이 같은 사이클에 발생하면 `stall` 때문에 PC redirect가 막힐 수 있었다.
- 그 결과 branch/jump target으로 가지 못하고 wrong path에 남을 가능성이 있었다.
- 수정 후에는 `flush`가 발생한 사이클에는 stall 여부와 관계없이 `next_pc`로 PC를 갱신한다.

### 2. load-use hazard에서 B-type branch의 `rs2`도 검사하도록 수정

위치:

- `src/rtl/rv32i_cpu.v`

수정 전:

```verilog
// Check rs1 always, but only check rs2 for S-type and R-type instructions
// (I-type arithmetic and load instructions use rs2 bits as immediate, not register)
wire is_S_type = (IDEX_opcode == 7'b0100011);  // Store
wire is_R_type = (IDEX_opcode == 7'b0110011);  // R-type
assign stall = (IDEX_MemtoReg &&
                ((IDEX_rd == rs1) || ((is_S_type || is_R_type) && (IDEX_rd == rs2))) &&
                (IDEX_rd != 5'b0));
```

수정 후:

```verilog
// Check rs1 always, but only check rs2 for instructions that actually read it.
// I-type arithmetic, loads, JALR, LUI, AUIPC, and JAL use bits [24:20] as
// immediate/encoding fields, not as rs2.
wire is_S_type = (IDEX_opcode == 7'b0100011);  // Store
wire is_R_type = (IDEX_opcode == 7'b0110011);  // R-type
wire is_B_type = (IDEX_opcode == 7'b1100011);  // Branch
assign stall = (IDEX_MemtoReg &&
                ((IDEX_rd == rs1) || ((is_S_type || is_R_type || is_B_type) && (IDEX_rd == rs2))) &&
                (IDEX_rd != 5'b0));
```

이유:

- B-type branch 명령은 `rs1`과 `rs2`를 모두 읽는다.
- 기존 hazard detector는 R-type/S-type의 `rs2`만 검사하고 B-type의 `rs2`는 검사하지 않았다.
- 따라서 아래와 같은 코드에서 branch가 load 결과가 아닌 stale value를 비교할 수 있었다.

```asm
lw   x5, 0(x0)
beq  x0, x5, target
```

- 수정 후에는 load 결과를 바로 branch `rs2`에서 사용하는 경우 bubble을 삽입한다.

## 테스트벤치 검증 내용

파일:

- `testbench/testbench_hazard/tb_pipeline_hazard.v`

### Test 1: branch `rs2` load-use hazard

테스트 프로그램:

```verilog
imem[0] = 32'h00002283; // lw   x5, 0(x0)
imem[1] = 32'h00500863; // beq  x0, x5, fail
imem[2] = 32'h02a00513; // addi x10, x0, 42
imem[3] = 32'h00a02223; // sw   x10, 4(x0)
imem[4] = 32'h00c0006f; // jal  x0, done
imem[5] = 32'h06300513; // fail: addi x10, x0, 99
imem[6] = 32'h00a02223; // sw   x10, 4(x0)
imem[7] = 32'h0000006f; // done: jal x0, 0
```

기대 결과:

- `dmem[1] = 42`
- branch `rs2` load-use hazard가 처리되지 않으면 stale value 때문에 `fail` 경로로 가서 `99`가 저장될 수 있다.

### Test 2: taken branch의 flush 우선순위

테스트 프로그램:

```verilog
imem[0] = 32'h00000093; // addi x1, x0, 0
imem[1] = 32'h00000a63; // beq  x0, x0, pass
imem[2] = 32'h00002283; // wrong path: lw  x5, 0(x0)
imem[3] = 32'h00028333; // wrong path: add x6, x5, x0
imem[4] = 32'h06300513; // wrong path: addi x10, x0, 99
imem[5] = 32'h0000006f; // wrong path halt
imem[6] = 32'h03700513; // pass: addi x10, x0, 55
imem[7] = 32'h00a02423; // sw   x10, 8(x0)
imem[8] = 32'h0000006f; // done: jal x0, 0
```

기대 결과:

- `dmem[2] = 55`
- taken branch redirect가 wrong path에서 생긴 load-use stall 조건에 의해 막히지 않는지 확인한다.

## 시뮬레이션 스크립트 수정 사항

### `run_sim.tcl`

functional simulation 전용으로 정리했다.

주요 변경:

- `sim/sim_workspace`에 임시 Vivado project 생성
- 필요한 RTL만 읽도록 구성
  - `basic_modules.v`
  - `rv32i_cpu.v`
- hazard 테스트벤치 읽기
  - `tb_pipeline_hazard.v`
- top module을 `tb_pipeline_hazard`로 지정
- 존재하지 않는 `../*.hex` glob 제거
- Tcl 로그 문자열을 ASCII로 정리
- 아래 명령으로 behavioral simulation 실행

```tcl
launch_simulation -simset sim_1 -mode behavioral
```

### `run.bat`

기존 `run.bat`은 CP949 한글 주석이 포함되어 있어 `apply_patch`가 UTF-8로 읽지 못했다. 이후 수정과 관리를 쉽게 하기 위해 ASCII 배치 파일로 다시 작성했다.

주요 변경:

- BAT 파일 위치를 기준으로 실행되도록 변경

```bat
cd /d "%~dp0"
```

- Vivado 2024.2 환경 설정 호출

```bat
call C:\Xilinx\Vivado\2024.2\settings64.bat
```

- Vivado batch 실행

```bat
call vivado -mode batch -source run_sim.tcl -notrace
```

- Vivado 종료 코드를 보존

```bat
set SIM_EXIT=%ERRORLEVEL%
exit /b %SIM_EXIT%
```

## Functional Simulation 결과

실행 위치:

```text
RV32I-Project/FPGA/Pipeline/260601_Pipeline_original/testbench/testbench_hazard/sim
```

실행 명령:

```bat
cmd /c run.bat
```

요청대로 Vivado는 샌드박스 밖에서 실행했다.

결과:

```text
[TB] Test 1: load-use hazard on branch rs2
[TB] Test 1 passed: dmem[1]=42
[TB] Test 2: taken branch flush priority over load-use stall
[TB] Test 2 passed: dmem[2]=55
[TB] dbg_stall_count=1
[TB] dbg_flush_count=19
[TB] PASS: all pipeline hazard tests passed
```

Vivado 종료 코드는 `0`이었다.

## 참고 사항

Vivado 실행 중 아래 경고가 있었다.

```text
WARNING: [Vivado 12-13340] Unable to auto find GCC executables from simulator install path! (path not set)
```

이 경고는 Verilog functional simulation 실행에는 영향을 주지 않았다. compile, elaborate, simulate 단계는 모두 정상 완료됐다.

## 다음 Hardware Bring-up 확인 항목

수정된 RTL로 bitstream을 다시 생성한 뒤 Vitis KWS loader를 실행해서 status가 아래 지점에서 멈추지 않는지 확인한다.

현재 멈춘 위치:

```text
0x110 model ok
```

기대 진행 순서:

```text
0x120 resolver ok
0x130 interpreter ok
0x140 allocating tensors
0x150 allocate ok
0x160 input copied
0x170 invoking
0x180 invoke ok
0x00000001 ok
```

그래도 `0x110`에서 멈춘다면 다음 항목을 추가로 확인한다.

- CPU와 BRAM Port B 사이의 클럭/타이밍 관계
- synchronous BRAM read와 CPU의 memory read timing 가정
- ILA에서 `pc`, `inst`, `data_addr`, `data_we`, `ByteEnable`, `dmem_rdata` 관찰
- status `0x110` 이후 PC가 특정 루프에 갇히는지, 잘못된 branch/jump로 튀는지 확인
