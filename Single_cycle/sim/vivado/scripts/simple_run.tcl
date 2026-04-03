#!/usr/bin/env tclsh
#
# 가장 기본적인 Vivado 시뮬레이션 스크립트
# 다른 RTL 프로젝트에서도 재사용 가능
#
# === 1단계: 아래 변수들만 수정해서 사용하세요 ===

# 프로젝트 루트 경로 (이 스크립트 기준 상대경로)
set project_root "../../.."

# RTL 파일 목록 (소스 폴더에서의 상대 경로)
set rtl_files [list \
    "src/rtl/basic_modules.v" \
    "src/rtl/rv32i_cpu.v" \
    "src/rtl/inst_memory.v" \
    "src/rtl/data_memory.v" \
    "src/rtl/RV32I_System.v" \
]

# 테스트벤치 파일
set tb_file "testbench/testbench_Basic/cpu_tb.v"

# 테스트벤치 최상위 모듈 이름
set tb_top "cpu_tb"

# 테스트벤치 include 경로 (매크로 파일들이 있는 폴더)
set tb_include_dir "testbench/testbench_Basic"

# 컴파일 시 define 옵션 (선택사항, 공백이면 생략)
set defines [list "IVERILOG"]

# === 2단계: 스크립트는 건드리지 마세요 ===

# 절대 경로로 변환
set script_dir   [file dirname [file normalize [info script]]]
set project_root [file normalize [file join $script_dir $project_root]]

set build_dir    [file normalize [file join $script_dir ".." "build"]]
set logs_dir     [file normalize [file join $script_dir ".." "logs"]]

# 디렉터리 생성
file mkdir $build_dir
file mkdir $logs_dir

# 로그 파일 열기
set log_file [file join $logs_dir "sim.log"]
set fp_log [open $log_file w]

proc log_msg {msg} {
    global fp_log
    puts $msg
    puts $fp_log $msg
    flush $fp_log
}

log_msg "Starting Vivado simulation..."
log_msg "Project root: $project_root"
log_msg "Build dir: $build_dir"
log_msg "Logs dir: $logs_dir"

# RTL 파일 절대 경로로 변환 및 존재 확인
set rtl_files_abs [list]
foreach f $rtl_files {
    set abs_path [file normalize [file join $project_root $f]]
    if {![file exists $abs_path]} {
        log_msg "ERROR: RTL file not found: $f"
        cd $old_pwd
        close $fp_log
        exit 1
    }
    lappend rtl_files_abs $abs_path
}

# 테스트벤치 파일 확인
set tb_file_abs [file normalize [file join $project_root $tb_file]]
if {![file exists $tb_file_abs]} {
    log_msg "ERROR: Testbench file not found: $tb_file"
    cd $old_pwd
    close $fp_log
    exit 1
}

# TB include 경로 절대 경로로 변환
set tb_include_abs [file normalize [file join $project_root $tb_include_dir]]

# 빌드 디렉터리로 작업 디렉터리 변경
set old_pwd [pwd]
cd $build_dir

# xvlog 컴파일 명령 구성
log_msg "Step 1/3: Compiling with xvlog..."
set xvlog_cmd [list xvlog -sv]

# define 옵션 추가
foreach d $defines {
    lappend xvlog_cmd -d $d
}

# include 경로 추가
lappend xvlog_cmd -i $tb_include_abs

# 모든 파일 추가
foreach f $rtl_files_abs {
    lappend xvlog_cmd $f
}
lappend xvlog_cmd $tb_file_abs

# xvlog 로그 파일 추가
lappend xvlog_cmd -log [file join $logs_dir "xvlog.log"]

# xvlog 실행
if {[catch {set result [exec {*}$xvlog_cmd 2>@1]} err]} {
    log_msg "ERROR: xvlog failed"
    log_msg $err
    cd $old_pwd
    close $fp_log
    exit 1
}
log_msg $result

# xelab 엘라보레이션
log_msg "Step 2/3: Elaborating with xelab..."
set snapshot "tb_snapshot"
set xelab_cmd [list xelab $tb_top -s $snapshot --debug typical -timescale 1ns/1ns -log [file join $logs_dir "xelab.log"]]
if {[catch {set result [exec {*}$xelab_cmd 2>@1]} err]} {
    log_msg "ERROR: xelab failed"
    log_msg $err
    cd $old_pwd
    close $fp_log
    exit 1
}
log_msg $result

# xsim 시뮬레이션
log_msg "Step 3/3: Running with xsim..."
set wdb_file [file join $build_dir "sim.wdb"]

# Explicitly log all hierarchical signals into WDB in batch mode.
# Use a relative path so spaces in absolute paths do not break -tclbatch parsing.
set xsim_batch_tcl "xsim_batch.tcl"
set fp_xsim [open $xsim_batch_tcl w]
puts $fp_xsim "log_wave -r /*"
puts $fp_xsim "run all"
puts $fp_xsim "quit"
close $fp_xsim

set xsim_cmd [list xsim $snapshot -onfinish quit -tclbatch $xsim_batch_tcl -wdb $wdb_file -log [file join $logs_dir "xsim.log"]]
if {[catch {set result [exec {*}$xsim_cmd 2>@1]} err]} {
    log_msg "ERROR: xsim failed"
    log_msg $err
    cd $old_pwd
    close $fp_log
    exit 1
}
log_msg $result

log_msg "Simulation completed successfully!"

# 정리: 불필요한 Vivado 임시 디렉터리 삭제
cd $old_pwd
if {[file exists ".Xil"]} {
    file delete -force ".Xil"
}
if {[file exists "$build_dir/.Xil"]} {
    file delete -force "$build_dir/.Xil"
}

close $fp_log
exit 0
