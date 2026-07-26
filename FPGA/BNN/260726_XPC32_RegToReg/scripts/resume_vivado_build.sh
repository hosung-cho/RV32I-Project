#!/usr/bin/env bash
set -euo pipefail

if [[ "$#" -ne 1 || ! "$1" =~ ^(baseline|xpc32)$ ]]; then
  echo "Usage: $0 <baseline|xpc32>" >&2
  exit 2
fi

VARIANT="$1"
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PROJECT_DIR="$(cd "${SCRIPT_DIR}/.." && pwd)"
BUILD_DIR="${PROJECT_DIR}/reports/vivado_${VARIANT}"
LOG_DIR="${PROJECT_DIR}/reports/logs"

mkdir -p "${LOG_DIR}"

vivado \
  -mode batch \
  -nojournal \
  -nolog \
  -source "${SCRIPT_DIR}/resume_vivado_build.tcl" \
  -tclargs "${VARIANT}" "${BUILD_DIR}" \
  2>&1 | tee "${LOG_DIR}/vivado_${VARIANT}_resume.log"
