# Ultra96-V1 최초 보드 실행 timeout 분석

- 분석일: 2026-08-17
- 대상: Wide-BDOT128 Ultra96-V1 PS loader 및 FPGA bitstream
- 현상: 전체 AXI read-back PASS 후 RV32I 실행이 1초 안에 완료되지 않음
- 판단: 기존 설계의 `CPU 35 MHz / CPU-facing BRAM 105 MHz` read-latency 은폐
  구조가 이번 Block Design의 IMEM/DMEM Port B에서 빠진 것이 가장 유력한 원인
- 수정 상태: 2026-08-18 CPU 통합형 수정 bitstream 실기검증 PASS. CPU와 BDOT
  FSM/연산은 35 MHz, IMEM/DMEM Port B와 Activation/Weight wide Port B만 105 MHz를
  사용하며 최초 1초 timeout이 해소됐다.

## 1. 보드 실행 결과

```text
READBACK PASS IMEM words=136
READBACK PASS DMEM words=1632
READBACK PASS ACT0 input words=25
READBACK PASS ACT0 padding zero words=8167
READBACK PASS ACT1 zero words=8192
READBACK PASS WEIGHT words=94528
RUN TIMEOUT: status=0 GPIO2=0x0
run=1000000 us, approximately 35000000 RV32I cycles @ 35 MHz
Wide-BDOT128 RUN FAIL: status=0
```

확인된 사실은 다음과 같다.

1. PS에서 각 AXI slave까지의 주소 decode와 Port-A write/read 경로는 정상이다.
2. IMEM, DMEM, activation, weight image의 적재 값은 모두 일치한다.
3. 실행 뒤 DMEM result status word가 0에서 바뀌지 않았다.
4. timeout 순간 `GPIO2=0`은 `bdot_busy=0`, `bdot_error=0`이라는 뜻이다.
   `bdot_busy`는 실행 중 일시적으로만 올라가므로 timeout 순간의 0만으로 BDOT가
   한 번도 실행되지 않았다고 단정할 수는 없다.

## 2. 가장 유력한 원인: CPU-facing BRAM overclock 누락

### 2.1 기존 정상 동작 구조

`rv32i_cpu`는 instruction과 load data가 다음 CPU edge 전에 제공된다고 가정한다.
기존 `260726_XPC32_RegToReg` Ultra96-V1 프로젝트는 이 조건을 다음 related-clock
구조로 만족시켰다.

```text
CPU clock              35 MHz
IMEM/DMEM Port B      105 MHz
clock ratio               1:3, 같은 Clock Wizard, phase 0
```

CPU edge에서 PC 또는 data address가 바뀐 뒤 다음 CPU edge까지 두 번 이상의 105 MHz
BRAM edge가 더 발생한다. 따라서 synchronous BRAM의 1-cycle read data가 다음 35 MHz
CPU edge 전에 안정되고, CPU에 별도 wait-state를 넣지 않아도 동작한다.

기존 프로젝트의 실제 Block Design 연결도 다음과 같다.

```text
clk_wiz_0/clk_cpu  → RV32I_System_0/CLOCK_50
clk_wiz_0/clk_bram → blk_mem_gen_0/clkb, blk_mem_gen_1/clkb
```

### 2.2 최초 실패 Block Design의 차이

최초 실패 당시 `create_and_build.tcl`은 Clock Wizard에서 동일하게 35 MHz와 105 MHz를
만들었지만, 실제 연결은 다음과 같았다.

```text
clk_cpu 35 MHz → wide_bdot_fpga_core_0/cpu_clk
                 imem_bram/clkb
                 dmem_bram/clkb

clk_bram 105 MHz → wide_bdot_fpga_core_0/accel_clk만 연결
```

즉 IMEM/DMEM Port B가 CPU와 같은 35 MHz였다. 이 경우 CPU edge 사이에 별도
BRAM read edge가 없으므로 기존에 사용하던 latency 은폐 조건이 성립하지 않는다.

현재 CPU의 동작 특성은 다음과 같다.

- PC와 `inst`를 같은 cycle에 decode하고 다음 PC와 register write를 결정한다.
- load instruction도 같은 cycle의 `MemRData`를 register file에 기록한다.
- 별도의 instruction valid, memory ready 또는 load wait-state는 없다. 기존에는
  105 MHz BRAM clock이 이 조건을 보완했다.

`wide_bdot_fpga_core.v`도 BMG 출력에 wait-state를 추가하지 않고 직접 CPU에 연결한다.

```verilog
assign imem_addr = pc;
...
.pc(pc), .inst(imem_rdata),
...
.MemRData(cpu_mem_rdata)
```

### 2.3 현재 35 MHz 연결에서 발생하는 현상

보드 설계의 IMEM과 DMEM BMG Port B는 1-cycle synchronous read다.
주소와 enable을 clock edge에서 받은 뒤 read data가 갱신된다. 따라서 현재 PC의
instruction이나 현재 load 주소의 data를 같은 CPU edge에서 사용할 수 없다.

특히 reset 해제 직후에는 다음 순서가 된다.

1. CPU PC는 0이지만 IMEM Port B에는 아직 유효한 word 0이 나오지 않았다.
2. 첫 active CPU edge에서 PC가 4로 진행한다.
3. 그 edge 뒤에야 IMEM word 0이 출력된다.
4. 다음 edge에는 word 0을 PC=4의 instruction처럼 실행한다.

35 MHz로 연결된 현재 구조에서는 그 뒤에도 instruction이 PC보다 한 fetch 늦게
유지된다. 첫 image instruction이
`AUIPC`이고 startup code에 branch/JAL과 PC-relative address 생성이 포함되어 있어,
단순히 첫 instruction 하나만 무시되는 문제가 아니라 control flow와 address가
잘못된다. DMEM load도 같은 이유로 stale read data를 commit한다.

### 2.4 Activation Port A의 추가 확인 및 해결

IMEM/DMEM clock을 105 MHz로 복구하면 startup과 threshold/polarity load는 기존
구조와 같아진다. Activation BMG Port A는 wrapper 내부에서 `cpu_clk=35 MHz`를
사용하므로, 기존 LFC software의 다음 volatile read-modify-write도 제거했다.

```c
output[neuron >> 5] |= 1u << (neuron & 31u);
```

수정된 software는 32개 neuron 결과를 CPU local register에 pack한 뒤 완성된
32-bit word를 한 번만 store한다. 따라서 실행 중 Activation Port A는 write만 하며,
35 MHz synchronous read latency에 의존하지 않는다. Clock mux는 추가하지 않았다.

## 3. 기존 검증이 통과한 이유

FINN LFC full RTL testbench의 CPU memory는 다음처럼 조합식 배열이었다.

```verilog
wire [31:0] inst = imem[pc[16:2]];

always @(*) begin
    if (dmem_select)
        cpu_mem_rdata = dmem[cpu_mem_addr[15:2]];
    ...
end
```

따라서 이 시험은 single-cycle CPU의 기존 timing 계약에는 맞지만 실제 BMG 기반
IMEM/DMEM의 1-cycle read latency를 포함하지 않는다.

기존 actual-BMG equivalence 시험은 다음 항목을 확인했다.

- 32-bit Port-A write와 128-bit Port-B lane ordering
- byte write enable
- Weight W3 offset
- accelerator 측 1-cycle wide read

CPU 35 MHz, IMEM/DMEM 105 MHz와 Activation CPU access까지 포함해 software 전체를
실행하는 board-equivalent 시험은 포함되지 않았다. 합성, place/route, DRC, timing
PASS도 기능적인 clock/read-latency 계약을 검증하지는 않는다.

## 4. 제외한 가설

### 4.1 byte address를 BMG에 직접 연결한 문제

Block Design에서는 `pc`와 `dmem_addr`가 32-bit BMG address port에 직접 연결된다.
처음에는 byte/word address 변환 누락이 의심됐으나 생성 netlist를 확인한 결과
BMG wrapper 내부에서 다음처럼 byte address의 `[16:2]` 또는 `[15:2]`를 사용한다.

```verilog
.addrb({... , addrb[16:2], 2'b00})
```

따라서 현재 IMEM/DMEM의 외부 byte-address 연결 자체는 정상이며 이번 timeout의
원인으로 보지 않는다.

### 4.2 PS image load 또는 address map 문제

전체 영역 read-back이 통과했으므로 PS 주소 map, AXI write, Port-A storage와 image
내용은 정상이다. 다만 이 read-back은 CPU가 사용하는 synchronous Port-B 기능과
CPU timing을 검증하지 않는다.

## 5. 적용한 수정: CPU 통합형

기존 IMEM/DMEM overclock 계약은 복구하되 BDOT 자체는 CPU 내부 실행 유닛으로
취급해 CPU와 같은 clock domain에 통합했다.

1. CPU, custom instruction control, BDOT FSM, popcount/accumulator는 모두 35 MHz다.
2. 기존 `bdot_cdc_bridge`의 request/done toggle CDC는 제거하고 CPU와 accelerator를
   직접 연결했다.
3. `imem_bram/clkb`, `dmem_bram/clkb`는 `clk_bram=105 MHz`로 복구했다.
4. Activation/Weight의 128-bit Port B도 105 MHz를 유지한다. Accelerator FSM은
   `ISSUE → WAIT → ACCUM`의 보수적인 3 CPU-cycle/block 순서를 사용한다.
5. Activation output은 local 32-bit pack 후 single store 방식으로 변경했다.

이 구조를 유지하면 CPU에 fetch/load state machine을 추가할 필요는 없다. 향후 BRAM
clock을 CPU와 같게 낮추거나 independent clock으로 바꾸려면 그때 instruction/load
wait-state 또는 명시적인 request/ready interface가 필요하다.

단순히 loader timeout을 늘리거나 reset sequence를 바꾸는 방법은 이 문제를 해결하지
못한다. 현재 예상 완료 시간은 약 3 ms이므로 1초 timeout은 이미 충분히 길다.

## 6. 수정 후 검증 결과

완료한 RTL 검증:

1. CPU/BDOT 직접 통합 시험 PASS: result=411, start 1회, total 28 CPU cycles.
2. FINN LFC 전체 RTL 추론 PASS: status=1, prediction=5, 10개 score exact match.
3. CPU 통합형 측정값: 121,522 CPU cycles, BDOT 3,082회, block 23,632회.
4. wrapper/popcount/accelerator/CPU control/통합 functional regression PASS.

Ultra96-V1 실기검증도 완료했다.

1. 전체 AXI image read-back PASS, IMEM 144 words 확인.
2. `status=1`, prediction=5, 10개 score exact match.
3. 실행시간 3,478 us, 약 121,730 RV32I cycles @ 35 MHz.
4. RTL 예상 121,522 cycles와의 차이는 약 0.17%이며 timer/polling 측정 경계로
   설명 가능한 범위다.

## 7. 디버그 관측성 개선 제안

현재 GPIO2의 `bdot_busy`와 `bdot_error`만으로는 CPU fetch 정지와 software loop를
구분하기 어렵다. 다음 bitstream에서는 ILA 또는 별도 debug register에 최소한 아래
신호를 추가하는 것이 좋다.

- PC
- fetched instruction / instruction valid
- CPU memory state
- DMEM write address/data/enable
- BDOT request/done count

PS loader에서도 control GPIO write 후 data register를 read-back해 `3 → 1 → 0`
전이가 실제 반영됐음을 출력하면 reset/control 문제를 빠르게 제외할 수 있다.
