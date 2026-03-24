# Usage:
#   vivado -mode batch -source run_vivado_sim.tcl -tclargs <root_dir> [cpu|ho|tflm] [imem.hex] [dmem.hex] [run_dir]

proc fail {msg} {
  puts "\[ERROR\] $msg"
  exit 1
}

proc run_and_echo {cmd_list step_name} {
  set output ""
  set rc [catch {exec {*}$cmd_list 2>@1} output]
  if {$output ne ""} {
    puts $output
  }
  if {$rc != 0} {
    fail "$step_name failed: $output"
  }
}

if {[llength $argv] < 1} {
  fail "Missing root_dir argument"
}

set root_dir [file normalize [lindex $argv 0]]
set mode "cpu"
if {[llength $argv] >= 2 && [lindex $argv 1] ne ""} {
  set mode [string tolower [lindex $argv 1]]
}

set imem_src ""
set dmem_src ""
set run_dir ""
if {[llength $argv] >= 3} {
  set imem_src [lindex $argv 2]
}
if {[llength $argv] >= 4} {
  set dmem_src [lindex $argv 3]
}
if {[llength $argv] >= 5} {
  set run_dir [lindex $argv 4]
}

if {$run_dir eq ""} {
  set run_dir [file join $root_dir sim_out vivado manual_$mode]
}
file mkdir $run_dir
set run_dir [file normalize $run_dir]
cd $run_dir
puts "\[INFO\] Output directory: $run_dir"

set tb_path ""
set top ""
set snapshot ""

switch -- $mode {
  cpu {
    set tb_path [file join $root_dir testbench cpu_tb.v]
    set top "cpu_tb"
    set snapshot "single_cycle_cpu_tb_sim"
  }
  ho {
    set tb_path [file join $root_dir testbench_Ho RV32I_System_tb.v]
    set top "RV32I_System_tb"
    set snapshot "single_cycle_ho_tb_sim"
  }
  tflm {
    set tb_path [file join $root_dir testbench_TFLM RV32I_System_tb.v]
    set top "RV32I_System_tb"
    set snapshot "single_cycle_tflm_tb_sim"
  }
  default {
    fail "Unsupported mode '$mode'. Use one of: cpu, ho, tflm"
  }
}

if {![file exists $tb_path]} {
  fail "Testbench not found: $tb_path"
}

set rtl_files [lsort [glob -nocomplain [file join $root_dir src rtl *.v]]]
if {[llength $rtl_files] == 0} {
  fail "No RTL files found in src/rtl"
}

if {$mode eq "tflm"} {
  if {$imem_src eq ""} {
    set imem_src [file join $root_dir .. TinyML my_standalone 260317 imem.hex]
  }
  if {$dmem_src eq ""} {
    set dmem_src [file join $root_dir .. TinyML my_standalone 260317 dmem.hex]
  }

  if {![file exists $imem_src]} {
    fail "imem.hex not found: $imem_src"
  }
  if {![file exists $dmem_src]} {
    fail "dmem.hex not found: $dmem_src"
  }

  file copy -force $imem_src [file join $run_dir imem.hex]
  file copy -force $dmem_src [file join $run_dir dmem.hex]
  puts "\[INFO\] Copied imem.hex and dmem.hex into $run_dir"
}

set xvlog_cmd [list xvlog -i [file join $root_dir testbench]]
if {$mode eq "cpu"} {
  lappend xvlog_cmd -d IVERILOG
}
foreach f $rtl_files {
  lappend xvlog_cmd $f
}
lappend xvlog_cmd $tb_path

puts "\[INFO\] Compiling RTL + TB"
run_and_echo $xvlog_cmd "xvlog"

puts "\[INFO\] Elaborating top: $top"
set xelab_cmd [list xelab $top -s $snapshot -timescale 1ns/1ps]
run_and_echo $xelab_cmd "xelab"

puts "\[INFO\] Running simulation snapshot: $snapshot"
set xsim_cmd [list xsim $snapshot -wdb $snapshot.wdb -runall]
run_and_echo $xsim_cmd "xsim"

puts "\[DONE\] Simulation complete"
