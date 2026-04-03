#!/usr/bin/env tclsh

# Reusable Vivado batch simulation runner.
# Usage:
#   vivado -mode batch -source scripts/run_tb.tcl -tclargs basic

proc fail {msg} {
    puts stderr "\[ERROR\] $msg"
    if {[info exists ::run_log_fp] && $::run_log_fp ne ""} {
        catch {close $::run_log_fp}
    }
    exit 1
}

proc log_info {msg} {
    set line "\[INFO\] $msg"
    puts $line
    if {[info exists ::run_log_fp] && $::run_log_fp ne ""} {
        puts $::run_log_fp $line
        flush $::run_log_fp
    }
}

set tb_name "basic"
if {[llength $::argv] > 0} {
    set tb_name [lindex $::argv 0]
}

set script_dir   [file dirname [file normalize [info script]]]
set vivado_dir   [file normalize [file join $script_dir ".."]]
set project_root [file normalize [file join $vivado_dir ".." ".."]]

set rtl_dir      [file join $project_root "src" "rtl"]
set build_root   [file join $vivado_dir "build"]
set logs_root    [file join $vivado_dir "logs"]

set supported_tbs [dict create \
    basic [dict create \
        top     "cpu_tb" \
        tb_dir  [file join $project_root "testbench" "testbench_Basic"] \
        tb_file "cpu_tb.v" \
        defines [list "IVERILOG"] \
    ] \
]

if {![dict exists $supported_tbs $tb_name]} {
    fail "Unsupported testbench '$tb_name'. Currently supported: basic"
}

set tb_cfg      [dict get $supported_tbs $tb_name]
set tb_top      [dict get $tb_cfg top]
set tb_dir      [dict get $tb_cfg tb_dir]
set tb_file     [dict get $tb_cfg tb_file]
set tb_defines  [dict get $tb_cfg defines]

set build_dir   [file join $build_root $tb_name]
set logs_dir    [file join $logs_root $tb_name]

file mkdir $build_dir
file mkdir $logs_dir

set ::run_log_fp [open [file join $logs_dir "run_${tb_name}.log"] w]

log_info "Project root : $project_root"
log_info "Build dir    : $build_dir"
log_info "Logs dir     : $logs_dir"
log_info "Testbench    : $tb_name (top=$tb_top)"

set required_files [list \
    [file join $rtl_dir "basic_modules.v"] \
    [file join $rtl_dir "rv32i_cpu.v"] \
    [file join $rtl_dir "inst_memory.v"] \
    [file join $rtl_dir "data_memory.v"] \
    [file join $rtl_dir "RV32I_System.v"] \
    [file join $tb_dir  $tb_file] \
]

foreach f $required_files {
    if {![file exists $f]} {
        fail "Required source file not found: $f"
    }
}

set imem_hex [file join $build_dir "imem.hex"]
set dmem_hex [file join $build_dir "dmem.hex"]

# Ensure memory image files exist for $readmemh in memory modules.
set fp [open $imem_hex w]
puts $fp "00000013"
close $fp

set fp [open $dmem_hex w]
puts $fp "00000000"
close $fp

set old_pwd [pwd]
cd $build_dir

set xvlog_cmd [list xvlog -sv]
foreach d $tb_defines {
    lappend xvlog_cmd -d $d
}
lappend xvlog_cmd -i $tb_dir
lappend xvlog_cmd \
    [file join $rtl_dir "basic_modules.v"] \
    [file join $rtl_dir "rv32i_cpu.v"] \
    [file join $rtl_dir "inst_memory.v"] \
    [file join $rtl_dir "data_memory.v"] \
    [file join $rtl_dir "RV32I_System.v"] \
    [file join $tb_dir  $tb_file]
lappend xvlog_cmd -log [file join $logs_dir "xvlog_${tb_name}.log"]

log_info "Running xvlog..."
if {[catch {set xvlog_out [exec {*}$xvlog_cmd 2>@1]} xvlog_err]} {
    puts $xvlog_err
    cd $old_pwd
    fail "xvlog failed"
}
if {$xvlog_out ne ""} {
    puts $xvlog_out
}

set snapshot "${tb_top}_snapshot"
set xelab_cmd [list xelab $tb_top -s $snapshot --debug typical -timescale 1ns/1ns -log [file join $logs_dir "xelab_${tb_name}.log"]]

log_info "Running xelab..."
if {[catch {set xelab_out [exec {*}$xelab_cmd 2>@1]} xelab_err]} {
    puts $xelab_err
    cd $old_pwd
    fail "xelab failed"
}
if {$xelab_out ne ""} {
    puts $xelab_out
}

# Explicitly log all hierarchical signals into WDB in batch mode.
# Use a relative path so spaces in absolute paths do not break -tclbatch parsing.
set xsim_batch_tcl "xsim_batch_${tb_name}.tcl"
set fp_xsim [open $xsim_batch_tcl w]
puts $fp_xsim "log_wave -r /*"
puts $fp_xsim "run all"
puts $fp_xsim "quit"
close $fp_xsim

set xsim_cmd [list xsim $snapshot -onfinish quit -tclbatch $xsim_batch_tcl -wdb [file join $build_dir "${tb_top}.wdb"] -log [file join $logs_dir "xsim_${tb_name}.log"]]

log_info "Running xsim..."
if {[catch {set xsim_out [exec {*}$xsim_cmd 2>@1]} xsim_err]} {
    puts $xsim_err
    cd $old_pwd
    fail "xsim failed"
}
if {$xsim_out ne ""} {
    puts $xsim_out
}

cd $old_pwd
log_info "Simulation finished successfully for testbench '$tb_name'."
catch {close $::run_log_fp}
exit 0
