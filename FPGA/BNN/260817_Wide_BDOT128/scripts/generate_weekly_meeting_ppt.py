#!/usr/bin/env python3
"""Generate the 2026-08-18 Hosung weekly meeting deck from the prior template.

Only Python's standard library is used.  The script keeps the original slide
masters/theme/relationships and replaces each slide's drawing tree.
"""

from __future__ import annotations

import copy
import shutil
import tempfile
import zipfile
from pathlib import Path
import xml.etree.ElementTree as ET


ROOT = Path(__file__).resolve().parents[5]
TEMPLATE = ROOT / "미팅자료" / "260810_Ultra_Low_Power_ML_조호성.pptx"
OUTPUT = ROOT / "미팅자료" / "260818_Ultra_Low_Power_ML_조호성.pptx"

P = "http://schemas.openxmlformats.org/presentationml/2006/main"
A = "http://schemas.openxmlformats.org/drawingml/2006/main"
R = "http://schemas.openxmlformats.org/officeDocument/2006/relationships"
ET.register_namespace("a", A)
ET.register_namespace("p", P)
ET.register_namespace("r", R)

EMU = 914400
SLIDE_W, SLIDE_H = 12192000, 6858000

NAVY = "3F4E91"
BLUE = "5D6DBE"
BLUE2 = "7482CB"
PURPLE = "7B63B6"
GREEN = "368A62"
ORANGE = "D6843A"
RED = "C75B5B"
DARK = "222222"
GRAY = "666666"
MID = "AEB4CC"
LIGHT = "F6F7FC"
LIGHT_BLUE = "EEF0FA"
LIGHT_GREEN = "E9F5EF"
LIGHT_ORANGE = "FFF3E8"
WHITE = "FFFFFF"


def q(ns: str, tag: str) -> str:
    return f"{{{ns}}}{tag}"


def emu(v: float) -> str:
    return str(round(v * EMU))


class Slide:
    def __init__(self, root: ET.Element):
        self.root = root
        self.tree = root.find(f".//{q(P, 'spTree')}")
        assert self.tree is not None
        for child in list(self.tree)[2:]:
            self.tree.remove(child)
        self.sid = 2

    def _shape(self, x, y, w, h, *, fill=None, line=None, radius=True, name=None):
        sp = ET.SubElement(self.tree, q(P, "sp"))
        nv = ET.SubElement(sp, q(P, "nvSpPr"))
        ET.SubElement(nv, q(P, "cNvPr"), {"id": str(self.sid), "name": name or f"Shape {self.sid}"})
        ET.SubElement(nv, q(P, "cNvSpPr"), {"txBox": "1"})
        ET.SubElement(nv, q(P, "nvPr"))
        self.sid += 1
        spr = ET.SubElement(sp, q(P, "spPr"))
        xfrm = ET.SubElement(spr, q(A, "xfrm"))
        ET.SubElement(xfrm, q(A, "off"), {"x": emu(x), "y": emu(y)})
        ET.SubElement(xfrm, q(A, "ext"), {"cx": emu(w), "cy": emu(h)})
        geom = ET.SubElement(spr, q(A, "prstGeom"), {"prst": "roundRect" if radius else "rect"})
        ET.SubElement(geom, q(A, "avLst"))
        if fill:
            sf = ET.SubElement(spr, q(A, "solidFill"))
            ET.SubElement(sf, q(A, "srgbClr"), {"val": fill})
        else:
            ET.SubElement(spr, q(A, "noFill"))
        ln = ET.SubElement(spr, q(A, "ln"), {"w": "12700"})
        if line:
            lsf = ET.SubElement(ln, q(A, "solidFill"))
            ET.SubElement(lsf, q(A, "srgbClr"), {"val": line})
        else:
            ET.SubElement(ln, q(A, "noFill"))
        return sp

    def box(self, x, y, w, h, fill=LIGHT, line=None, radius=True):
        self._shape(x, y, w, h, fill=fill, line=line, radius=radius)

    def text(self, x, y, w, h, text, *, size=18, color=DARK, bold=False,
             align="l", valign="mid", fill=None, line=None, radius=False,
             margin=0.03, font="Malgun Gothic", spacing=1.0):
        sp = self._shape(x, y, w, h, fill=fill, line=line, radius=radius)
        tx = ET.SubElement(sp, q(P, "txBody"))
        ET.SubElement(tx, q(A, "bodyPr"), {
            "wrap": "square", "lIns": emu(margin), "rIns": emu(margin),
            "tIns": emu(margin), "bIns": emu(margin), "anchor": {"top": "t", "mid": "ctr", "bottom": "b"}[valign]
        })
        ET.SubElement(tx, q(A, "lstStyle"))
        lines = str(text).split("\n")
        for line_text in lines:
            para = ET.SubElement(tx, q(A, "p"))
            ppr = ET.SubElement(para, q(A, "pPr"), {"algn": {"l": "l", "c": "ctr", "r": "r"}[align]})
            ET.SubElement(ppr, q(A, "buNone"))
            run = ET.SubElement(para, q(A, "r"))
            rpr = ET.SubElement(run, q(A, "rPr"), {"lang": "ko-KR", "sz": str(int(size * 100)), "b": "1" if bold else "0"})
            sf = ET.SubElement(rpr, q(A, "solidFill"))
            ET.SubElement(sf, q(A, "srgbClr"), {"val": color})
            ET.SubElement(rpr, q(A, "latin"), {"typeface": font})
            ET.SubElement(rpr, q(A, "ea"), {"typeface": font})
            ET.SubElement(run, q(A, "t")).text = line_text
            epr = ET.SubElement(para, q(A, "endParaRPr"), {"lang": "ko-KR", "sz": str(int(size * 100))})
            ET.SubElement(epr, q(A, "latin"), {"typeface": font})
            ET.SubElement(epr, q(A, "ea"), {"typeface": font})
        return sp

    def header(self, title, section, page):
        self.text(0.55, 0.28, 11.75, 0.55, title, size=27, color=BLUE, bold=True, font="Arial", margin=0)
        self.text(0.66, 1.02, 6.2, 0.3, f"[{section}]", size=14, color=DARK, bold=True, margin=0)
        self.text(0.66, 7.13, 1.2, 0.22, "Hosung", size=11, color=BLUE, bold=True, font="Arial", margin=0)
        self.text(12.15, 7.13, 0.45, 0.22, str(page), size=10, color=BLUE, align="r", font="Arial", margin=0)

    def takeaway(self, text, color=BLUE, fill=LIGHT_BLUE):
        self.text(0.68, 6.52, 11.95, 0.42, text, size=15, color=color, bold=True,
                  align="c", fill=fill, line=color, radius=True, margin=0.04)


def card(s, x, y, w, h, title, body, *, color=BLUE, fill=LIGHT, title_size=16, body_size=14):
    s.box(x, y, w, h, fill=fill, line=color, radius=True)
    s.text(x + 0.16, y + 0.12, w - 0.32, 0.34, title, size=title_size, color=color, bold=True)
    s.text(x + 0.16, y + 0.52, w - 0.32, h - 0.64, body, size=body_size, color=DARK, valign="top", spacing=1.05)


def arrow(s, x, y, w, text=""):
    s.box(x, y + 0.16, w, 0.08, fill=BLUE, radius=False)
    s.text(x + w - 0.08, y, 0.25, 0.4, "▶", size=15, color=BLUE, bold=True, align="c")
    if text:
        s.text(x - 0.1, y - 0.25, w + 0.2, 0.24, text, size=10, color=GRAY, align="c")


def build_cover(s):
    s.box(0, 0, 13.333, 7.5, fill=WHITE, radius=False)
    s.box(0, 0, 0.18, 7.5, fill=BLUE, radius=False)
    s.text(0.82, 1.18, 11.6, 1.35, "BNN Wide-BRAM Blocking BDOT128\nCPU 통합형 구현 및 Ultra96 실기 결과", size=31, color=BLUE, bold=True, valign="top", font="Arial")
    s.box(0.84, 2.85, 2.3, 0.08, fill=BLUE, radius=False)
    s.text(0.84, 3.12, 10.8, 0.55, "CPU–BDOT 35 MHz · Wide BRAM 105 MHz · Board PASS", size=19, color=NAVY, bold=True, font="Arial")
    s.text(0.84, 5.62, 4.2, 0.35, "Ultra-Low-Power ML Weekly Meeting", size=14, color=GRAY, font="Arial")
    s.text(0.84, 6.12, 3.0, 0.35, "2026. 08. 18.", size=15, color=DARK, bold=True, font="Arial")
    s.text(10.4, 6.12, 1.8, 0.35, "Hosung", size=16, color=BLUE, bold=True, align="r", font="Arial")


def build_summary(s):
    s.header("BNN Wide-BRAM Blocking BDOT128 구현 결과", "이번 주 진행 요약", 2)
    card(s, 0.72, 1.55, 3.82, 4.55, "01  CPU 통합형 RTL", "• custom-1 BCFG·BDOT 명령 추가\n• CPU·BDOT 동일 35 MHz 직접 연결\n• Wide BRAM read만 105 MHz\n• ISSUE→WAIT→ACCUM, 3 CPU cycles/block", color=BLUE, fill=LIGHT_BLUE)
    card(s, 4.75, 1.55, 3.82, 4.55, "02  Full workload", "• FINN LFC 전체 추론 실행\n• 23,632 blocks / 3,082 BDOT\n• RTL 121,522 CPU cycles\n• prediction = 5, score 전부 일치", color=GREEN, fill=LIGHT_GREEN)
    card(s, 8.78, 1.55, 3.82, 4.55, "03  Ultra96 실기", "• 전체 AXI read-back PASS\n• run = 3,478 us / 약 121,730 cycles\n• status=1, prediction=5, correct=1\n• FINN LFC BOARD PASS", color=ORANGE, fill=LIGHT_ORANGE)
    s.takeaway("CPU 통합형 RTL부터 Ultra96-V1 실제 추론까지 end-to-end 검증 완료", color=GREEN, fill=LIGHT_GREEN)


def build_arch(s):
    s.header("BNN Wide-BRAM Blocking BDOT128 구현 결과", "최종 시스템 구조", 3)
    card(s, 0.62, 1.55, 2.15, 1.22, "PS (A53)", "AXI loader\nGPIO reset/run", color=NAVY, fill=LIGHT_BLUE, body_size=13)
    arrow(s, 2.78, 1.93, 0.72, "35 MHz AXI")
    card(s, 3.55, 1.55, 2.35, 1.22, "RV32I Core", "BCFG / BDOT\nPC hold", color=BLUE, fill=LIGHT_BLUE, body_size=13)
    arrow(s, 5.92, 1.93, 0.72, "direct")
    card(s, 6.7, 1.55, 2.4, 1.22, "BDOT128", "4×32-bit lanes\n35 MHz", color=PURPLE, fill="F1ECF8", body_size=13)
    arrow(s, 9.12, 1.93, 0.72, "Port B 128b")
    card(s, 9.9, 1.55, 2.75, 1.22, "Wide BRAM", "Activation ×2\nWeight", color=GREEN, fill=LIGHT_GREEN, body_size=13)
    card(s, 0.68, 3.2, 5.85, 2.75, "Clock / ownership", "• CPU·AXI·BDOT control/datapath: 35 MHz\n• IMEM/DMEM 및 Wide BRAM Port B: 105 MHz\n• 동일 Clock Wizard의 1:3 위상 정렬 clock\n• PS는 load_mode에서 AXI Port A로 image 적재", color=BLUE, fill=LIGHT)
    card(s, 6.78, 3.2, 5.85, 2.75, "Memory role", "• IMEM 128 KiB / DMEM 64 KiB\n• ACT0·ACT1 각 32 KiB\n• Weight physical 400 KiB\n• 낮은 주소 word → lane [31:0]", color=GREEN, fill=LIGHT)
    s.takeaway("32-bit CPU memory path는 유지하고, BNN operand read path만 128-bit로 확장")


def build_isa(s):
    s.header("BNN Wide-BRAM Blocking BDOT128 구현 결과", "ISA와 CPU 통합 Blocking", 4)
    card(s, 0.68, 1.52, 5.8, 2.05, "Custom ISA", "opcode custom-1 = 0x2B\nBCFG  funct3=000 : base·stride·count 설정\nBDOT  funct3=001 : blocking dot-product 실행", color=BLUE, fill=LIGHT_BLUE, body_size=14)
    card(s, 0.68, 3.86, 5.8, 2.18, "Blocking semantics", "IDLE → START → WAIT → COMMIT\nBDOT busy 동안 PC와 architectural state hold\n완료 결과는 CPU clock edge에서 1회 commit", color=PURPLE, fill="F1ECF8", body_size=14)
    s.text(7.0, 1.66, 1.62, 0.72, "CPU\n35 MHz", size=17, color=BLUE, bold=True, align="c", fill=LIGHT_BLUE, line=BLUE, radius=True)
    arrow(s, 8.66, 1.82, 1.0, "start / result")
    s.text(9.72, 1.66, 2.1, 0.72, "BDOT FSM\n35 MHz", size=17, color=PURPLE, bold=True, align="c", fill="F1ECF8", line=PURPLE, radius=True)
    s.text(7.08, 3.15, 5.18, 2.5, "동일 clock-domain 원칙\n\n• CPU–BDOT request/result는 직접 연결\n• busy 동안 PC hold, start는 1회만 발생\n• done에서 결과를 1회 commit\n• 105 MHz는 BRAM synchronous read에만 사용", size=15, color=DARK, bold=False, valign="top", fill=LIGHT, line=MID, radius=True, margin=0.22)
    s.takeaway("CPU와 BDOT을 35 MHz 단일 domain으로 통합해 제어 경로와 완료 시점을 단순화")


def build_datapath(s):
    s.header("BNN Wide-BRAM Blocking BDOT128 구현 결과", "Wide BDOT128 Datapath", 5)
    stages = [(0.72, "ISSUE", "BRAM address\n등록"), (4.52, "WAIT", "synchronous read\n1 cycle 대기"), (8.32, "ACCUM", "XNOR-popcount\n누산 / 완료")]
    for i, (x, t, b) in enumerate(stages):
        card(s, x, 1.55, 3.25, 1.52, f"{i+1}  {t}", b, color=[BLUE, PURPLE, GREEN][i], fill=[LIGHT_BLUE, "F1ECF8", LIGHT_GREEN][i], body_size=13)
        if i < 2:
            arrow(s, x + 3.28, 2.08, 0.43)
    s.text(0.72, 3.52, 2.18, 0.64, "lane 0\n[31:0]", size=15, color=NAVY, bold=True, align="c", fill=LIGHT_BLUE, line=BLUE, radius=True)
    s.text(3.04, 3.52, 2.18, 0.64, "lane 1\n[63:32]", size=15, color=NAVY, bold=True, align="c", fill=LIGHT_BLUE, line=BLUE, radius=True)
    s.text(5.36, 3.52, 2.18, 0.64, "lane 2\n[95:64]", size=15, color=NAVY, bold=True, align="c", fill=LIGHT_BLUE, line=BLUE, radius=True)
    s.text(7.68, 3.52, 2.18, 0.64, "lane 3\n[127:96]", size=15, color=NAVY, bold=True, align="c", fill=LIGHT_BLUE, line=BLUE, radius=True)
    s.text(10.22, 3.52, 2.18, 0.64, "popcount\n0…128", size=15, color=GREEN, bold=True, align="c", fill=LIGHT_GREEN, line=GREEN, radius=True)
    card(s, 0.72, 4.55, 5.75, 1.46, "Block processing", "1 block = 128 binary MACs\nBDOT FSM = 3 CPU cycles/block @35 MHz", color=BLUE, fill=LIGHT)
    card(s, 6.72, 4.55, 5.75, 1.46, "Tail handling", "최종 784-bit layer도 valid-bit count로 처리\npadding bit가 score에 포함되지 않음", color=GREEN, fill=LIGHT)
    s.takeaway("128 binary MACs를 3 CPU cycles에 처리하고, BRAM read는 105 MHz로 지원")


def build_memory(s):
    s.header("BNN Wide-BRAM Blocking BDOT128 구현 결과", "Memory Image와 BRAM 구성", 6)
    card(s, 0.68, 1.52, 4.0, 4.54, "Memory capacity / image", "IMEM       128 KiB   (144 words)\nDMEM        64 KiB   (1,632 words)\nACT0         32 KiB   (25 input words)\nACT1         32 KiB\nWeight      400 KiB\n\nWeight image = 94,528 × 32-bit words", color=BLUE, fill=LIGHT_BLUE, body_size=14)
    card(s, 4.92, 1.52, 3.62, 4.54, "Weight layout", "Layer   offset    stride\nL0      0x00000     112\nL1      0x1C000     128\nL2      0x3C000     128\nL3      0x5C000     128\n\nlow address word\n→ lane [31:0]", color=PURPLE, fill="F1ECF8", body_size=13)
    card(s, 8.78, 1.52, 3.82, 4.54, "400 KiB 선택 근거", "Weight RAMB36\n384 KiB : 96\n400 KiB : 100  ← selected\n512 KiB : 128\n\n예상 BDOT256 image\n385.25 KiB 수용\n512 KiB 대비 28개 절감", color=GREEN, fill=LIGHT_GREEN, body_size=13)
    s.takeaway("현재 image와 BDOT256 확장 여유를 확보하면서 BRAM 28개를 절감")


def build_fullrtl(s):
    s.header("BNN Wide-BRAM Blocking BDOT128 구현 결과", "FINN LFC Full RTL 결과", 7)
    s.text(0.72, 1.52, 3.72, 1.45, "121,522", size=32, color=BLUE, bold=True, align="c", fill=LIGHT_BLUE, line=BLUE, radius=True)
    s.text(0.72, 2.56, 3.72, 0.28, "CPU cycles", size=13, color=BLUE, bold=True, align="c")
    s.text(4.78, 1.52, 3.72, 1.45, "23,632", size=32, color=PURPLE, bold=True, align="c", fill="F1ECF8", line=PURPLE, radius=True)
    s.text(4.78, 2.56, 3.72, 0.28, "128-bit blocks", size=13, color=PURPLE, bold=True, align="c")
    s.text(8.84, 1.52, 3.72, 1.45, "3,082", size=32, color=GREEN, bold=True, align="c", fill=LIGHT_GREEN, line=GREEN, radius=True)
    s.text(8.84, 2.56, 3.72, 0.28, "BDOT instructions", size=13, color=GREEN, bold=True, align="c")
    card(s, 0.72, 3.22, 7.65, 2.65, "Class scores", "[-182, -94, -34, 326, -162, 556, 54, 6, 216, -96]\n\nGolden result와 전 class score 일치", color=BLUE, fill=LIGHT, body_size=16)
    s.text(8.72, 3.22, 3.84, 2.65, "PASS\n\nprediction = 5\nBCFG = 4", size=23, color=GREEN, bold=True, align="c", fill=LIGHT_GREEN, line=GREEN, radius=True)
    s.takeaway("CPU 통합형 RTL에서 FINN LFC 전체 network와 class score를 정확히 재현", color=GREEN, fill=LIGHT_GREEN)


def build_perf(s):
    s.header("BNN Wide-BRAM Blocking BDOT128 구현 결과", "Cycle 및 성능 비교", 8)
    # table header
    cols = [0.72, 3.38, 6.18, 8.72]
    widths = [2.66, 2.8, 2.54, 3.84]
    headers = ["Architecture", "CPU cycles", "@35 MHz", "Relative speed"]
    for x, w, t in zip(cols, widths, headers):
        s.text(x, 1.52, w, 0.55, t, size=14, color=WHITE, bold=True, align="c", fill=BLUE, line=WHITE)
    rows = [
        ("RV32I baseline", "2,399,397", "68.554 ms", "1.000×"),
        ("XPC32", "776,741", "22.193 ms", "3.089×"),
        ("BDOT128 board", "≈121,730", "3.478 ms", "19.711×"),
    ]
    for ri, row in enumerate(rows):
        y = 2.07 + ri * 0.66
        bg = LIGHT_GREEN if ri == 2 else (LIGHT_BLUE if ri == 1 else LIGHT)
        for x, w, t in zip(cols, widths, row):
            s.text(x, y, w, 0.66, t, size=15, color=GREEN if ri == 2 else DARK, bold=ri == 2, align="c", fill=bg, line=WHITE)
    # simple relative cycle bars
    s.text(0.82, 4.32, 2.4, 0.28, "Normalized CPU cycles", size=13, color=GRAY, bold=True)
    bars = [("RV32I", 8.6, NAVY, "100.0%"), ("XPC32", 2.78, BLUE2, "32.4%"), ("BDOT128", 0.44, GREEN, "5.1%")]
    for i, (label, width, color, pct) in enumerate(bars):
        y = 4.72 + i * 0.48
        s.text(0.82, y, 1.05, 0.32, label, size=12, color=DARK, bold=True)
        s.box(1.92, y + 0.04, width, 0.24, fill=color, radius=True)
        s.text(10.72, y, 1.1, 0.32, pct, size=12, color=color, bold=True, align="r")
    s.takeaway("보드 실측 기준 XPC32 대비 cycle 84.328% 감소 · 6.381× speedup")


def build_break_even(s):
    s.header("BNN Wide-BRAM Blocking BDOT128 구현 결과", "CPU 통합형 Cycle Breakdown", 9)
    card(s, 0.68, 1.52, 5.88, 4.55, "Full inference activity (RTL)", "Total                       121,522 CPU cycles\nBDOT block work       70,896 CPU cycles\nOther CPU execution  50,626 CPU cycles\nBDOT instructions       3,082\n128-bit blocks           23,632\n\n70,896 = 23,632 blocks × 3 cycles", color=BLUE, fill=LIGHT_BLUE, body_size=14)
    s.text(6.86, 1.52, 5.72, 0.55, "RTL–Board latency correlation", size=17, color=NAVY, bold=True, align="c")
    vals = [("RTL", "121,522 cycles", BLUE), ("RTL @35M", "3.472 ms", PURPLE), ("Ultra96", "3.478 ms", GREEN)]
    for i, (lab, val, col) in enumerate(vals):
        y = 2.25 + i * 1.1
        s.text(6.98, y, 2.0, 0.64, lab, size=14, color=col, bold=True, align="c", fill=WHITE, line=col, radius=True)
        s.text(9.18, y, 3.18, 0.64, val, size=21, color=col, bold=True, align="c", fill=LIGHT if i < 2 else LIGHT_GREEN, line=col, radius=True)
    s.text(7.12, 5.66, 5.24, 0.32, "board–RTL latency 차이 +0.17%", size=13, color=GRAY, align="c")
    s.takeaway("105 MHz는 메모리 read clock이며, CPU와 BDOT 연산/제어는 동일한 35 MHz domain")


def build_regression(s):
    s.header("BNN Wide-BRAM Blocking BDOT128 구현 결과", "검증 및 Regression", 10)
    rows = [
        ("Primitive", "wrapper 7 checks · popcount 2,134 vectors", BLUE),
        ("Accelerator", "directed/random 18 tests · 35 MHz CPU 통합", PURPLE),
        ("CPU", "blocking control · PC hold · one start / one commit", ORANGE),
        ("Workload", "LFC 121,522 cycles · score 전 class 일치", GREEN),
        ("Board", "AXI read-back · UART result · 3.478 ms", NAVY),
    ]
    for i, (scope, result, col) in enumerate(rows):
        y = 1.48 + i * 0.91
        s.text(0.72, y, 2.2, 0.66, scope, size=15, color=WHITE, bold=True, align="c", fill=col, line=col, radius=True)
        s.text(3.08, y, 8.32, 0.66, result, size=14, color=DARK, bold=False, fill=LIGHT, line=MID, radius=True, margin=0.16)
        s.text(11.62, y, 0.82, 0.66, "PASS", size=13, color=GREEN, bold=True, align="c", fill=LIGHT_GREEN, line=GREEN, radius=True)
    s.takeaway("unit → CPU → full workload → implementation → Ultra96 실기까지 검증", color=GREEN, fill=LIGHT_GREEN)


def build_core(s):
    s.header("BNN Wide-BRAM Blocking BDOT128 구현 결과", "실제 BMG 및 Core 구현", 11)
    card(s, 0.68, 1.52, 4.2, 4.55, "BMG memory mapping", "Activation 32 KiB ×2 : 8 RAMB36 each\nWeight 400 KiB       : 100 RAMB36\nIMEM 128 KiB         : 32 RAMB36\nDMEM 64 KiB          : 16 RAMB36\n\nCore OOC             : 116 RAMB36\nBoard design total : 164 RAMB36", color=BLUE, fill=LIGHT_BLUE, body_size=14)
    card(s, 5.12, 1.52, 3.5, 4.55, "Core OOC utilization", "LUT       3,650  (5.17%)\nFF         1,403  (0.99%)\nRAMB36   116  (53.70%)\nDSP       0\n\n※ IMEM/DMEM 제외 OOC\nActivation + Weight", color=PURPLE, fill="F1ECF8", body_size=14)
    card(s, 8.86, 1.52, 3.72, 4.55, "Core OOC timing", "CPU / BDOT 35 MHz\nBRAM read 105 MHz\n\nSetup WNS  +1.410 ns\nHold WHS   +0.027 ns\n\nroute completed\nDRC violation 0", color=GREEN, fill=LIGHT_GREEN, body_size=14)
    s.takeaway("실제 Block Memory Generator를 사용한 OOC 구현에서도 timing closure 확인")


def build_board(s):
    s.header("BNN Wide-BRAM Blocking BDOT128 구현 결과", "Ultra96-V1 전체 구현", 12)
    card(s, 0.68, 1.52, 3.82, 2.52, "Device utilization", "LUT       14,518 / 70,560   20.58%\nREG      14,587 / 141,120  10.34%\nRAMB36  164 / 216             75.93%\nDSP      0", color=BLUE, fill=LIGHT_BLUE, body_size=13)
    card(s, 4.75, 1.52, 3.82, 2.52, "Timing / implementation", "Overall setup WNS  +0.452 ns\nOverall hold WHS    +0.009 ns\n105→35 MHz WNS     +0.452 ns\n35→105 MHz WNS     +1.885 ns\nRoute/DRC              PASS", color=GREEN, fill=LIGHT_GREEN, body_size=13)
    card(s, 8.82, 1.52, 3.78, 2.52, "Generated artifacts", "bitstream (.bit)\nconfiguration binary (.bin)\nhardware platform (.xsa)\n\nvectorless power 2.144 W\n※ energy/inference 아님", color=ORANGE, fill=LIGHT_ORANGE, body_size=13)
    s.text(0.72, 4.36, 11.84, 0.42, "PS address map", size=16, color=NAVY, bold=True)
    amap = "IMEM A000_0000 / 128K    DMEM A200_0000 / 64K    GPIO A300_0000\nACT0 A400_0000 / 32K   ACT1 A401_0000 / 32K   Weight A500_0000 / decode 512K, physical 400K"
    s.text(0.72, 4.83, 11.84, 1.12, amap, size=14, color=DARK, bold=False, align="c", fill=LIGHT, line=MID, radius=True)
    s.takeaway("Ultra96-V1 post-route timing·DRC PASS 후 동일 bitstream으로 실기 추론 성공", color=GREEN, fill=LIGHT_GREEN)


def build_loader(s):
    s.header("BNN Wide-BRAM Blocking BDOT128 구현 결과", "PS Loader 및 Ultra96 실기 결과", 13)
    card(s, 0.68, 1.52, 5.8, 2.42, "AXI load / read-back PASS", "• IMEM 144 / DMEM 1,632 words\n• ACT0 input 25 + padding 8,167 words\n• ACT1 zero 8,192 words\n• Weight 94,528 words\n• 모든 memory complete read-back PASS", color=BLUE, fill=LIGHT_BLUE, body_size=13)
    card(s, 0.68, 4.18, 5.8, 1.84, "Execution result", "run = 3,478 us  (약 121,730 CPU cycles)\nstatus=1 · prediction=5 · expected=5 · correct=1\nRTL 예상 3.472 ms 대비 +0.17%", color=GREEN, fill=LIGHT_GREEN, body_size=14)
    card(s, 6.78, 1.52, 5.82, 4.5, "FINN LFC BOARD PASS", "scores\n[-182, -94, -34, 326, -162,\n 556, 54, 6, 216, -96]\n\nGolden / RTL / Ultra96 결과 완전 일치\n\n남은 과제\n• rail power 실측 → energy/inference\n• PC hold 및 BDOT FSM cycle 최적화", color=GREEN, fill=LIGHT_GREEN, body_size=14)
    s.takeaway("CPU 통합형 Wide-BDOT128의 메모리 적재·실행·정답·latency를 Ultra96에서 확인", color=GREEN, fill=LIGHT_GREEN)


def build_end(s):
    s.box(0, 0, 13.333, 7.5, fill=WHITE, radius=False)
    s.box(0, 0, 0.18, 7.5, fill=BLUE, radius=False)
    s.text(1.0, 2.52, 11.2, 1.0, "감사합니다.", size=40, color=BLUE, bold=True, align="c", font="Arial")
    s.text(1.0, 3.72, 11.2, 0.45, "Q & A", size=20, color=GRAY, bold=True, align="c", font="Arial")
    s.text(10.7, 6.55, 1.6, 0.32, "Hosung", size=15, color=BLUE, bold=True, align="r", font="Arial")


BUILDERS = [build_cover, build_summary, build_arch, build_isa, build_datapath,
            build_memory, build_fullrtl, build_perf, build_break_even,
            build_regression, build_core, build_board, build_loader, build_end]


def main():
    if not TEMPLATE.exists():
        raise SystemExit(f"Template not found: {TEMPLATE}")
    with tempfile.TemporaryDirectory(prefix="hosung_ppt_") as td:
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
            "BNN Wide-BRAM Blocking BDOT 구현계획",
            "BNN Wide-BRAM Blocking BDOT128 CPU 통합형 구현 및 Ultra96 실기 결과",
        ).replace(
            "2026-08-10 연구실 미팅자료", "2026-08-18 연구실 미팅자료"
        ).replace(
            "generated using python-pptx", "Hosung weekly meeting deck"
        )
        core_path.write_text(core_text, encoding="utf-8")
        OUTPUT.parent.mkdir(parents=True, exist_ok=True)
        tmp_output = OUTPUT.with_suffix(".pptx.tmp")
        with zipfile.ZipFile(tmp_output, "w", zipfile.ZIP_DEFLATED) as zf:
            for path in sorted(unpacked.rglob("*")):
                if path.is_file():
                    zf.write(path, path.relative_to(unpacked))
        shutil.move(tmp_output, OUTPUT)
    print(OUTPUT)


if __name__ == "__main__":
    main()
