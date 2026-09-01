#!/usr/bin/env python3
"""Generate the 2026-08-25 Hosung weekly meeting deck.

The 2026-08-18 Hosung deck is used as the package/template so the existing
master, theme, aspect ratio, and slide count remain unchanged.
"""

from __future__ import annotations

import importlib.util
import shutil
import tempfile
import zipfile
from pathlib import Path
import xml.etree.ElementTree as ET


ROOT = Path(__file__).resolve().parents[5]
BASE_SCRIPT = Path(__file__).with_name("generate_weekly_meeting_ppt.py")
TEMPLATE = ROOT / "미팅자료" / "260818_Ultra_Low_Power_ML_조호성.pptx"
OUTPUT = ROOT / "미팅자료" / "260825_Ultra_Low_Power_ML_조호성.pptx"

spec = importlib.util.spec_from_file_location("hosung_ppt_base", BASE_SCRIPT)
if spec is None or spec.loader is None:
    raise RuntimeError(f"Cannot load {BASE_SCRIPT}")
base = importlib.util.module_from_spec(spec)
spec.loader.exec_module(base)

Slide = base.Slide
card = base.card
arrow = base.arrow
BLUE = base.BLUE
BLUE2 = base.BLUE2
NAVY = base.NAVY
PURPLE = base.PURPLE
GREEN = base.GREEN
ORANGE = base.ORANGE
RED = base.RED
DARK = base.DARK
GRAY = base.GRAY
MID = base.MID
LIGHT = base.LIGHT
LIGHT_BLUE = base.LIGHT_BLUE
LIGHT_GREEN = base.LIGHT_GREEN
LIGHT_ORANGE = base.LIGHT_ORANGE
WHITE = base.WHITE


def cover(s):
    s.box(0, 0, 13.333, 7.5, fill=WHITE, radius=False)
    s.box(0, 0, 0.18, 7.5, fill=BLUE, radius=False)
    s.text(0.82, 1.12, 11.7, 1.45,
           "Wide-BDOT128 모델 확장 및\nPipeline FINN LFC 비교",
           size=32, color=BLUE, bold=True, valign="top", font="Arial")
    s.box(0.84, 2.86, 2.3, 0.08, fill=BLUE, radius=False)
    s.text(0.84, 3.10, 11.2, 0.62,
           "FINN CNV · eBNN · Pipeline LFC · SAIF Power",
           size=19, color=NAVY, bold=True, font="Arial")
    s.text(0.84, 5.62, 4.8, 0.35, "Ultra-Low-Power ML Weekly Meeting",
           size=14, color=GRAY, font="Arial")
    s.text(0.84, 6.12, 3.0, 0.35, "2026. 08. 25.",
           size=15, color=DARK, bold=True, font="Arial")
    s.text(10.4, 6.12, 1.8, 0.35, "Hosung",
           size=16, color=BLUE, bold=True, align="r", font="Arial")


def summary(s):
    s.header("Wide-BDOT128 모델 확장 및 Pipeline 비교", "이번 주 진행 요약", 2)
    card(s, 0.68, 1.48, 2.86, 4.66, "01  SAIF Power",
         "• LFC inference / idle SAIF\n• Active dynamic 34 mW\n• Incremental 24.304 μJ/inf.\n• coverage 8% — preliminary",
         color=BLUE, fill=LIGHT_BLUE, body_size=13)
    card(s, 3.72, 1.48, 2.86, 4.66, "02  FINN CNV",
         "• CIFAR-10 class 3\n• 29.360 M cycles\n• FPGA 838.871 ms\n• score/checksum PASS",
         color=PURPLE, fill="F1ECF8", body_size=13)
    card(s, 6.76, 1.48, 2.86, 4.66, "03  eBNN",
         "• Binary-MNIST class 5\n• 1.045 M cycles\n• FPGA 29.853 ms\n• score/checksum PASS",
         color=GREEN, fill=LIGHT_GREEN, body_size=13)
    card(s, 9.80, 1.48, 2.86, 4.66, "04  Pipeline LFC",
         "• 80 MHz Pipeline CPU\n• FPGA 34.064 ms\n• prediction / score PASS\n• Ultra96 XSA metadata 보정",
         color=ORANGE, fill=LIGHT_ORANGE, body_size=13)
    s.takeaway("한 모델·한 CPU 검증에서 3개 BNN 모델과 Pipeline 비교까지 평가 범위를 확장", color=GREEN, fill=LIGHT_GREEN)


def feedback(s):
    s.header("Wide-BDOT128 모델 확장 및 Pipeline 비교", "교수님 코멘트 반영", 3)
    rows = [
        ("다양한 BNN 모델", "LFC + FINN CNV-W1A1 + eBNN Binary-MNIST", "FPGA 3종 PASS", GREEN),
        ("Power / energy", "LFC active·idle SAIF → Vivado report_power", "1차 energy 산출", BLUE),
        ("Pipelined CPU 비교", "Pipeline_Ver1.0 + 동일 FINN LFC image", "80 MHz FPGA PASS", ORANGE),
        ("결과값 검증", "prediction 외 score·checksum·read-back 비교", "exact match", PURPLE),
    ]
    for i, (request, action, result, col) in enumerate(rows):
        y = 1.48 + i * 1.08
        s.text(0.68, y, 2.50, 0.78, request, size=14, color=WHITE, bold=True,
               align="c", fill=col, line=col, radius=True)
        s.text(3.38, y, 6.15, 0.78, action, size=14, color=DARK,
               fill=LIGHT, line=MID, radius=True, margin=0.16)
        s.text(9.75, y, 2.85, 0.78, result, size=14, color=col, bold=True,
               align="c", fill=WHITE, line=col, radius=True)
    s.takeaway("이번 주 우선순위였던 power 경로·Pipeline 비교·두 번째 모델 검증을 모두 실행")


def saif_flow(s):
    s.header("Wide-BDOT128 모델 확장 및 Pipeline 비교", "FINN LFC SAIF Power 측정", 4)
    stages = [
        (0.66, "Inference RTL", "reset 해제 →\nstatus=1"),
        (3.82, "Native SAIF", "121,522 cycles\n3.472 ms"),
        (6.98, "Post-route", "OOC core\nSAIF annotation"),
        (10.14, "Power", "active / idle\n비교"),
    ]
    colors = [BLUE, PURPLE, ORANGE, GREEN]
    fills = [LIGHT_BLUE, "F1ECF8", LIGHT_ORANGE, LIGHT_GREEN]
    for i, (x, title, body) in enumerate(stages):
        card(s, x, 1.50, 2.52, 1.48, title, body, color=colors[i], fill=fills[i], body_size=13)
        if i < 3:
            arrow(s, x + 2.56, 1.98, 0.42)
    card(s, 0.68, 3.36, 5.78, 2.63, "Activity window",
         "• Memory image load와 reset 구간 제외\n• Full LFC 결과를 SAIF 생성 중 재검증\n• prediction=5, score 10개 exact match\n• idle: completion loop 10,000 cycles",
         color=BLUE, fill=LIGHT, body_size=14)
    card(s, 6.75, 3.36, 5.85, 2.63, "Annotation result",
         "• OOC matched nets: 901 / 11,588 = 8%\n• Active / idle confidence: Medium\n• Board hierarchy mapping: 866 nets\n• PS/AXI activity는 inference SAIF 미적용",
         color=ORANGE, fill=LIGHT_ORANGE, body_size=14)
    s.takeaway("실제 추론 구간의 activity를 post-route Wide-BDOT core에 연결하는 분석 경로 확보")


def saif_result(s):
    s.header("Wide-BDOT128 모델 확장 및 Pipeline 비교", "SAIF 기반 Power / Energy 1차 결과", 5)
    headers = ["Metric", "Active", "Idle", "Difference"]
    xs = [0.70, 4.25, 6.70, 9.15]
    ws = [3.55, 2.45, 2.45, 3.45]
    for x, w, t in zip(xs, ws, headers):
        s.text(x, 1.48, w, 0.54, t, size=14, color=WHITE, bold=True,
               align="c", fill=BLUE, line=WHITE)
    rows = [
        ("Total on-chip", "0.256 W", "0.249 W", "+7 mW"),
        ("Dynamic", "0.034 W", "0.027 W", "+7 mW"),
        ("Block RAM", "0.026 W", "0.025 W", "+1 mW"),
    ]
    for i, row in enumerate(rows):
        y = 2.02 + i * 0.64
        for x, w, t in zip(xs, ws, row):
            s.text(x, y, w, 0.64, t, size=15, color=DARK, bold=i == 1,
                   align="c", fill=LIGHT_GREEN if i == 1 else LIGHT, line=WHITE)
    card(s, 0.70, 4.25, 3.72, 1.62, "Dynamic energy", "118.050 μJ / inference",
         color=BLUE, fill=LIGHT_BLUE, body_size=17)
    card(s, 4.66, 4.25, 3.72, 1.62, "Total energy", "888.847 μJ / inference",
         color=PURPLE, fill="F1ECF8", body_size=17)
    card(s, 8.62, 4.25, 3.72, 1.62, "Incremental energy", "24.304 μJ / inference",
         color=GREEN, fill=LIGHT_GREEN, body_size=17)
    s.takeaway("Coverage 8%·1 mW 표시 정밀도의 SAIF-assisted preliminary estimate — 최종 논문 수치 아님", color=ORANGE, fill=LIGHT_ORANGE)


def model_map(s):
    s.header("Wide-BDOT128 모델 확장 및 Pipeline 비교", "BNN Workload 확장", 6)
    card(s, 0.68, 1.50, 3.80, 4.50, "FINN LFC-W1A1", "MNIST\n4 binary FC layers\n784 / 1024-bit vector\n\nNeuron별 BDOT\n긴 vector → 높은 가속 효율",
         color=BLUE, fill=LIGHT_BLUE, body_size=14)
    card(s, 4.76, 1.50, 3.80, 4.50, "FINN CNV-W1A1", "CIFAR-10\n5 binary conv + 3 FC\n64 / 128 / 256 / 512-bit\n\nKernel-position별 BDOT\n짧은 vector → command overhead 증가",
         color=PURPLE, fill="F1ECF8", body_size=14)
    card(s, 8.84, 1.50, 3.80, 4.50, "eBNN Binary-MNIST", "MNIST\n9-bit conv + 360-bit FC\nfloat bias / BN 유지\n\nPacking 후 BDOT\n비정형 길이와 mixed processing 검증",
         color=GREEN, fill=LIGHT_GREEN, body_size=14)
    s.takeaway("동일 BDOT128 명령으로 FC·convolution·비정형 bit-length까지 동작 범위를 확인")


def cnv(s):
    s.header("Wide-BDOT128 모델 확장 및 Pipeline 비교", "FINN CNV-W1A1 FPGA 결과", 7)
    card(s, 0.68, 1.48, 5.78, 2.35, "BDOT 적용", "• 첫 Q1.7/W1 convolution은 CPU 실행\n• 이후 binary 3×3 conv는 kernel-position별 BDOT\n• binary FC 3개 layer는 neuron별 BDOT\n• threshold·pooling·checksum은 CPU 처리",
         color=PURPLE, fill="F1ECF8", body_size=13)
    card(s, 0.68, 4.08, 5.78, 1.92, "Memory", "Aligned weight 206,464 B / 400 KiB = 50.41%\n64-channel pixel은 16-byte 정렬을 위해 2-word padding",
         color=BLUE, fill=LIGHT_BLUE, body_size=13)
    s.text(6.78, 1.48, 5.82, 4.52,
           "FINN CNV FPGA PASS\n\n838.871 ms @ 35 MHz\n29,360,485 cycles (approx.)\n\nprediction = expected = 3\nscore 10개 exact match\nlayer checksum 10개 exact match\nAXI full read-back PASS",
           size=18, color=GREEN, bold=True, align="c", fill=LIGHT_GREEN,
           line=GREEN, radius=True, margin=0.18)
    s.takeaway("RTL 838.864 ms와 FPGA 838.871 ms 차이 7 μs — 전체 layer 결과까지 일치", color=GREEN, fill=LIGHT_GREEN)


def ebnn(s):
    s.header("Wide-BDOT128 모델 확장 및 Pipeline 비교", "eBNN Binary-MNIST FPGA 결과", 8)
    card(s, 0.68, 1.48, 5.78, 2.35, "BDOT 적용", "• 3×3 input window를 9-bit vector로 packing\n• convolution/pooling 결합 후 9개 결과의 max\n• 10×6×6 output을 360-bit vector로 packing\n• 360→10 FC는 class당 3개 128-bit block",
         color=GREEN, fill=LIGHT_GREEN, body_size=13)
    card(s, 0.68, 4.08, 5.78, 1.92, "Mixed processing", "Binary conv/FC는 BDOT128, float bias·batch normalization은 CPU\n전체 weight image 640 B",
         color=BLUE, fill=LIGHT_BLUE, body_size=13)
    s.text(6.78, 1.48, 5.82, 4.52,
           "eBNN FPGA PASS\n\n29.853 ms @ 35 MHz\n1,044,855 cycles (approx.)\n\nprediction = expected = 5\nchecksum = 0x82552330\nscore bit pattern 10개 exact match\nAXI full read-back PASS",
           size=18, color=GREEN, bold=True, align="c", fill=LIGHT_GREEN,
           line=GREEN, radius=True, margin=0.18)
    s.takeaway("RTL 29.849 ms와 FPGA 29.853 ms 차이 4 μs — 비정형 9/360-bit workload 검증", color=GREEN, fill=LIGHT_GREEN)


def model_compare(s):
    s.header("Wide-BDOT128 모델 확장 및 Pipeline 비교", "Wide-BDOT128 모델별 결과", 9)
    cols = [0.68, 3.06, 5.27, 7.55, 9.70, 11.42]
    widths = [2.38, 2.21, 2.28, 2.15, 1.72, 1.18]
    headers = ["Model", "FPGA latency", "BDOT", "Blocks", "vs RV32I", "Result"]
    for x, w, t in zip(cols, widths, headers):
        s.text(x, 1.52, w, 0.58, t, size=13, color=WHITE, bold=True,
               align="c", fill=BLUE, line=WHITE)
    rows = [
        ("FINN LFC", "3.478 ms", "3,082", "23,632", "19.71×", "PASS"),
        ("FINN CNV", "838.871 ms", "756,746", "761,128", "2.876×", "PASS"),
        ("eBNN", "29.853 ms", "3,250", "3,270", "4.546×", "PASS"),
    ]
    for i, row in enumerate(rows):
        y = 2.10 + i * 0.74
        bg = [LIGHT_BLUE, "F1ECF8", LIGHT_GREEN][i]
        for x, w, t in zip(cols, widths, row):
            s.text(x, y, w, 0.74, t, size=14, color=GREEN if t == "PASS" else DARK,
                   bold=t == "PASS", align="c", fill=bg, line=WHITE)
    card(s, 0.72, 4.74, 5.72, 1.28, "Bitstream reuse", "세 모델 모두 동일 Wide-BDOT128 XSA / bitstream 사용\nVitis loader와 memory image만 교체",
         color=BLUE, fill=LIGHT_BLUE, body_size=13)
    card(s, 6.76, 4.74, 5.72, 1.28, "해석", "긴 FC vector에서 가속 효율이 가장 높고,\n짧은 CNV vector에서는 blocking command overhead 비중 증가",
         color=ORANGE, fill=LIGHT_ORANGE, body_size=13)
    s.takeaway("모델별 prediction뿐 아니라 score/checksum과 RTL–FPGA latency를 함께 검증")


def pipeline_platform(s):
    s.header("Wide-BDOT128 모델 확장 및 Pipeline 비교", "Pipeline FINN LFC FPGA 준비", 10)
    card(s, 0.68, 1.48, 3.62, 4.58, "Baseline", "Pipeline_Ver1.0\n5-stage RV32I\n80 MHz target\n\n동일 FINN LFC-W1A1\nparameter / input / score",
         color=BLUE, fill=LIGHT_BLUE, body_size=14)
    card(s, 4.54, 1.48, 3.62, 4.58, "Memory 변경", "기존 DMEM 256 KiB\nLFC 사용 ≈364 KiB → 수용 불가\n\nIMEM 128 KiB\nDMEM 512 KiB\n새 bitstream / XSA 생성",
         color=PURPLE, fill="F1ECF8", body_size=14)
    card(s, 8.40, 1.48, 4.20, 4.58, "Ultra96 platform", "XSA board metadata 보정\nBoardId = ultra96v1\nBoardPart = avnet.com:\nultra96v1:part0:1.2\n\nPS loader full read-back PASS",
         color=GREEN, fill=LIGHT_GREEN, body_size=14)
    s.takeaway("Pipeline LFC용 512 KiB DMEM과 Ultra96-V1 metadata를 포함한 별도 XSA 확보")


def pipeline_result(s):
    s.header("Wide-BDOT128 모델 확장 및 Pipeline 비교", "Pipeline FINN LFC FPGA 결과", 11)
    s.text(0.68, 1.48, 3.72, 1.38, "34.064 ms", size=29, color=BLUE, bold=True,
           align="c", fill=LIGHT_BLUE, line=BLUE, radius=True)
    s.text(4.80, 1.48, 3.72, 1.38, "≈2,725,120", size=29, color=PURPLE, bold=True,
           align="c", fill="F1ECF8", line=PURPLE, radius=True)
    s.text(8.92, 1.48, 3.72, 1.38, "PASS", size=29, color=GREEN, bold=True,
           align="c", fill=LIGHT_GREEN, line=GREEN, radius=True)
    s.text(0.68, 2.58, 3.72, 0.25, "FPGA latency @ 80 MHz", size=12, color=BLUE, bold=True, align="c")
    s.text(4.80, 2.58, 3.72, 0.25, "FPGA cycles (timer 환산)", size=12, color=PURPLE, bold=True, align="c")
    s.text(8.92, 2.58, 3.72, 0.25, "prediction / score", size=12, color=GREEN, bold=True, align="c")
    card(s, 0.68, 3.30, 5.78, 2.55, "Read-back / result",
         "• IMEM 226 words PASS\n• DMEM 93,113 words PASS\n• status=1, prediction=5, expected=5\n• class score 10개 exact match",
         color=BLUE, fill=LIGHT, body_size=14)
    card(s, 6.76, 3.30, 5.84, 2.55, "RTL correlation",
         "RTL        2,724,933 cycles / 34.062 ms\nFPGA     ≈2,725,120 cycles / 34.064 ms\n차이       ≈187 cycles / 2 μs\n\n※ FPGA 값은 PS timer 환산",
         color=GREEN, fill=LIGHT_GREEN, body_size=14)
    s.takeaway("동일 FINN LFC의 Pipeline RTL–Ultra96 end-to-end 실행 경로 검증 완료", color=GREEN, fill=LIGHT_GREEN)


def architecture_compare(s):
    s.header("Wide-BDOT128 모델 확장 및 Pipeline 비교", "FINN LFC Architecture 비교", 12)
    cols = [0.68, 3.54, 5.30, 7.53, 10.18]
    widths = [2.86, 1.76, 2.23, 2.65, 2.42]
    headers = ["Architecture", "Clock", "Cycles", "Latency", "vs Pipeline"]
    for x, w, t in zip(cols, widths, headers):
        s.text(x, 1.50, w, 0.56, t, size=13, color=WHITE, bold=True,
               align="c", fill=BLUE, line=WHITE)
    rows = [
        ("Single RV32I", "35 MHz", "2,399,397", "68.554 ms", "0.497×"),
        ("Pipeline RV32I", "80 MHz", "≈2,725,120", "34.064 ms", "1.000×"),
        ("XPC32", "35 MHz", "776,741", "22.193 ms", "1.535×"),
        ("Wide-BDOT128", "35 MHz", "≈121,730", "3.478 ms", "9.794×"),
    ]
    for i, row in enumerate(rows):
        y = 2.06 + i * 0.67
        bg = LIGHT_GREEN if i == 3 else (LIGHT_ORANGE if i == 1 else LIGHT)
        for x, w, t in zip(cols, widths, row):
            s.text(x, y, w, 0.67, t, size=14,
                   color=GREEN if i == 3 else DARK, bold=i == 3,
                   align="c", fill=bg, line=WHITE)
    card(s, 0.72, 5.04, 5.72, 1.02, "Pipeline", "80 MHz로 Single-cycle baseline보다 2.01× 빠름",
         color=ORANGE, fill=LIGHT_ORANGE, body_size=13)
    card(s, 6.76, 5.04, 5.72, 1.02, "Wide-BDOT128", "35 MHz에서도 Pipeline 80 MHz보다 9.79× 빠름",
         color=GREEN, fill=LIGHT_GREEN, body_size=13)
    s.takeaway("일반 pipeline의 clock 이득보다 workload-specific instruction의 cycle 감소 효과가 더 큼")


def conclusions(s):
    s.header("Wide-BDOT128 모델 확장 및 Pipeline 비교", "결론 및 다음 작업", 13)
    card(s, 0.68, 1.48, 3.82, 4.58, "확보한 증거", "• 3개 BNN 모델 FPGA PASS\n• score/checksum exact match\n• Pipeline LFC FPGA PASS\n• SAIF active/idle 분석 경로\n• 모델별 RTL–FPGA latency 일치",
         color=GREEN, fill=LIGHT_GREEN, body_size=14)
    card(s, 4.75, 1.48, 3.82, 4.58, "현재 한계", "• 입력 sample 각 1개\n• SAIF matched net 8%\n• Pipeline 80 MHz WNS -0.857 ns\n• board power rail 미실측\n• CNV short-vector overhead 큼",
         color=ORANGE, fill=LIGHT_ORANGE, body_size=14)
    card(s, 8.82, 1.48, 3.78, 4.58, "다음 작업", "1. 모델별 multiple input 검증\n2. SAIF coverage 개선\n3. baseline/XPC32 power 비교\n4. Ultra96 rail power 교차검증\n5. BDOT command overhead 최적화",
         color=BLUE, fill=LIGHT_BLUE, body_size=14)
    s.takeaway("정확성·latency 증거를 확보했으며, 다음 단계는 energy 비교의 신뢰도 향상")


def end(s):
    s.box(0, 0, 13.333, 7.5, fill=WHITE, radius=False)
    s.box(0, 0, 0.18, 7.5, fill=BLUE, radius=False)
    s.text(1.0, 2.52, 11.2, 1.0, "감사합니다.", size=40, color=BLUE,
           bold=True, align="c", font="Arial")
    s.text(1.0, 3.72, 11.2, 0.45, "Q & A", size=20, color=GRAY,
           bold=True, align="c", font="Arial")
    s.text(10.7, 6.55, 1.6, 0.32, "Hosung", size=15, color=BLUE,
           bold=True, align="r", font="Arial")


BUILDERS = [cover, summary, feedback, saif_flow, saif_result, model_map,
            cnv, ebnn, model_compare, pipeline_platform, pipeline_result,
            architecture_compare, conclusions, end]


def main():
    if not TEMPLATE.exists():
        raise SystemExit(f"Template not found: {TEMPLATE}")
    with tempfile.TemporaryDirectory(prefix="hosung_260825_ppt_") as td:
        unpacked = Path(td)
        with zipfile.ZipFile(TEMPLATE) as zf:
            zf.extractall(unpacked)
        for idx, builder in enumerate(BUILDERS, 1):
            slide_path = unpacked / "ppt" / "slides" / f"slide{idx}.xml"
            tree = ET.parse(slide_path)
            slide = Slide(tree.getroot())
            builder(slide)
            tree.write(slide_path, encoding="UTF-8", xml_declaration=True)

        core_path = unpacked / "docProps" / "core.xml"
        core_text = core_path.read_text(encoding="utf-8")
        core_text = core_text.replace(
            "BNN Wide-BRAM Blocking BDOT128 CPU 통합형 구현 및 Ultra96 실기 결과",
            "Wide-BDOT128 모델 확장 및 Pipeline FINN LFC 비교",
        ).replace("2026-08-18 연구실 미팅자료", "2026-08-25 연구실 미팅자료")
        core_path.write_text(core_text, encoding="utf-8")

        OUTPUT.parent.mkdir(parents=True, exist_ok=True)
        temp_output = OUTPUT.with_suffix(".pptx.tmp")
        with zipfile.ZipFile(temp_output, "w", zipfile.ZIP_DEFLATED) as zf:
            for path in sorted(unpacked.rglob("*")):
                if path.is_file():
                    zf.write(path, path.relative_to(unpacked))
        shutil.move(temp_output, OUTPUT)
    print(OUTPUT)


if __name__ == "__main__":
    main()
