#!/usr/bin/env python3
"""Remove Verilator's pre-trace hold time from a late-opened SAIF window."""

import re
import sys
from pathlib import Path


def main() -> int:
    if len(sys.argv) != 3:
        print(f"usage: {sys.argv[0]} <saif> <capture_duration_ps>", file=sys.stderr)
        return 2

    path = Path(sys.argv[1])
    capture = int(sys.argv[2])
    text = path.read_text()
    duration_match = re.search(r"^\(DURATION (\d+)\)$", text, re.MULTILINE)
    if duration_match is None:
        raise RuntimeError(f"DURATION not found in {path}")

    duration = int(duration_match.group(1))
    offset = duration - capture
    if offset <= 0:
        raise RuntimeError(
            f"capture duration {capture} must be smaller than SAIF duration {duration}"
        )

    activity = re.compile(
        r"\(T0 (\d+)\) \(T1 (\d+)\) \(TZ (\d+)\) \(TX (\d+)\)"
    )

    def trim(match: re.Match[str]) -> str:
        values = [int(value) for value in match.groups()]
        index = max(range(4), key=values.__getitem__)
        if values[index] < offset:
            raise RuntimeError(f"no activity bucket can absorb offset in: {match.group(0)}")
        values[index] -= offset
        if sum(values) != capture:
            raise RuntimeError(f"trimmed activity does not equal capture duration: {values}")
        return "(T0 {}) (T1 {}) (TZ {}) (TX {})".format(*values)

    text = activity.sub(trim, text)
    text = duration_match.re.sub(f"(DURATION {capture})", text, count=1)
    path.write_text(text)
    print(f"SAIF_TRIM path={path} offset_ps={offset} duration_ps={capture}")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
