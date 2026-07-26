# XPC32 Register-to-Register 가속기

## 목적

32-bit register-to-register XNOR-Popcount 명령어 `XPC32`를 조합논리로 구현하고,
single-cycle RV32I CPU에 통합해 순수 RTL 기능을 검증한다.

## 기준 설계

- 베이스라인: [`260606_Single_cycle_Ver1.0`](../../Single_cycle/260606_Single_cycle_Ver1.0/)
- 베이스라인 원본은 수정하지 않는다.
- 베이스라인의 `src/`, `Vitis/`, `XSA/`를 이 디렉터리에 복사했으며, 이후 CPU 구동과 수정은 이 작업본에서 수행한다.
- RTL, testbench, build 및 합성 산출물을 이 디렉터리 안에서 관리한다.

## 작업 원칙

1. 독립 `xnor_popcount32` RTL과 testbench를 먼저 검증한다.
2. `XPC32` encoding 충돌을 확인한 뒤 single-cycle CPU에 통합한다.
3. functional simulation에서는 PS, AXI, Block Design 및 FPGA BRAM IP를 제외한다.
4. CPU RTL과 testbench의 단순 Verilog memory array만으로 기능을 검증한다.
5. 전체 RTL 회귀시험 통과 후 FPGA 합성·구현·보드 검증은 사용자가 수행한다.
6. 주요 설계 결정과 검증 과정은 저장소 루트의 `docs/`에 `YYMMDD_HHMM_문서명.md` 형식으로 남긴다.

## 클럭 기준

- CPU: 35 MHz
- BRAM: 105 MHz
- 두 clock은 같은 Clocking Wizard/MMCM에서 생성되는 related clock으로 취급한다.
- 기준 파일: `src/bd/design_1_35M.tcl`

## 관련 문서

- [주간 진행계획](../../../../docs/260726_1935_BNN_XPC32_주간_진행계획.md)
- [작업환경 확정 기록](../../../../docs/260726_1944_XPC32_작업환경_확정.md)
- [베이스라인 복사 및 확인](../../../../docs/260726_1947_XPC32_베이스라인_복사_및_확인.md)
- [클럭 기준 확정](../../../../docs/260726_1950_XPC32_클럭_기준_확정.md)
- [순수 RTL 기능검증 결과](../../../../docs/260726_2018_XPC32_RTL_기능검증_결과.md)
- [FINN LFC XPC32 RTL 비교 결과](../../../../docs/260726_2036_FINN_LFC_XPC32_RTL_비교결과.md)
- [Ultra96-V1 FPGA 포팅 결과](../../../../docs/260726_2130_XPC32_Ultra96V1_FPGA_포팅_결과.md)
- [이전 주간 진행사항](../../../../docs/260720_BNN_가속기_주간_진행사항.md)
- [BNN 벤치마크·성능 분석](../../../../docs/260719_BNN_벤치마크_구조_성능_분석.md)

## 전체 기능시험

다음 명령은 FPGA 요소 없이 software encoding, 독립 연산기, CPU custom instruction,
기존 RV32I ISA, eBNN 호환성 및 FINN LFC baseline/XPC32 비교를 순서대로 검증하고
`testbench/logs/`에 로그를 남긴다.

```bash
./testbench/run_all_functional_tests.sh
```

LFC 비교만 실행하려면 다음 명령을 사용한다.

```bash
./testbench/run_rv32i_lfc_regression.sh
```

현재 순수 RTL 측정 결과는 baseline 2,399,397 cycles, XPC32 776,741 cycles로
3.089057× speedup이다. 두 버전의 prediction과 class score 10개가 모두 일치한다.

## 예정 구조

```text
260726_XPC32_RegToReg/
├── README.md
├── src/                  # 베이스라인에서 복사 완료
│   ├── rtl/
│   ├── bd/
│   └── XDC/
├── Vitis/                # 베이스라인에서 복사 완료
├── XSA/                  # 베이스라인에서 복사 완료
├── testbench/
├── software/
└── reports/
```

구체적인 디렉터리는 실제 파일을 추가하는 시점에 생성한다.
