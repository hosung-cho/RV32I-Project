if { $argc != 2 } {
    puts "Usage: vivado -mode batch -source run_vivado_build.tcl -tclargs <baseline|xpc32> <project_dir>"
    exit 2
}

set variant [lindex $argv 0]
set project_dir [file normalize [lindex $argv 1]]
set script_dir [file dirname [file normalize [info script]]]
set project_root [file dirname $script_dir]
set workspace_root [file normalize [file join $project_root .. .. .. ..]]
set baseline_root [file join $workspace_root RV32I-Project FPGA Single_cycle 260606_Single_cycle_Ver1.0]
set report_dir [file join $project_dir reports]

if { $variant ni {baseline xpc32} } {
    puts "ERROR: unsupported variant '$variant'"
    exit 2
}

file mkdir $project_dir
file mkdir $report_dir

create_project xpc32_${variant} $project_dir -part xczu3eg-sbva484-1-e -force
set ultra96_board avnet.com:ultra96v1:part0:1.2
if { [llength [get_board_parts -quiet $ultra96_board]] != 0 } {
    set_property BOARD_PART $ultra96_board [current_project]
} else {
    puts "WARNING: Ultra96 board_part is unavailable; using explicit part xczu3eg-sbva484-1-e"
}

if { $variant eq "baseline" } {
    set rtl_root [file join $baseline_root src rtl]
    set xdc_root [file join $baseline_root src XDC]
    set rtl_files [list \
        [file join $rtl_root basic_modules.v] \
        [file join $rtl_root rv32i_cpu.v] \
        [file join $rtl_root RV32I_System.v]]
} else {
    set rtl_root [file join $project_root src rtl]
    set xdc_root [file join $project_root src XDC]
    set rtl_files [list \
        [file join $rtl_root basic_modules.v] \
        [file join $rtl_root xnor_popcount32.v] \
        [file join $rtl_root rv32i_cpu.v] \
        [file join $rtl_root RV32I_System.v]]
}

add_files -norecurse $rtl_files
add_files -fileset constrs_1 -norecurse [list \
    [file join $xdc_root top.xdc] \
    [file join $xdc_root timing.xdc]]
update_compile_order -fileset sources_1

# Both variants use the same 35 MHz CPU / 105 MHz BRAM Block Design.
source [file join $project_root src bd design_1_35M.tcl]

set bd_file [get_files -quiet */design_1.bd]
if { $bd_file eq "" } {
    puts "ERROR: design_1.bd was not generated"
    exit 3
}

generate_target all $bd_file
make_wrapper -files $bd_file -top
set wrapper_file [file join $project_dir xpc32_${variant}.gen sources_1 bd design_1 hdl design_1_wrapper.v]
if { ![file exists $wrapper_file] } {
    puts "ERROR: generated wrapper was not found at $wrapper_file"
    exit 3
}
add_files -norecurse [list $wrapper_file]
set_property top design_1_wrapper [current_fileset]
update_compile_order -fileset sources_1

launch_runs synth_1 -jobs 4
wait_on_run synth_1
if { ![string match "*Complete*" [get_property STATUS [get_runs synth_1]]] } {
    puts "ERROR: synthesis failed for $variant"
    exit 4
}

open_run synth_1
report_utilization -file [file join $report_dir post_synth_utilization.rpt]
report_timing_summary -delay_type min_max -max_paths 20 \
    -file [file join $report_dir post_synth_timing_summary.rpt]
report_timing -delay_type max -max_paths 20 -sort_by group \
    -file [file join $report_dir post_synth_timing_paths.rpt]

launch_runs impl_1 -to_step route_design -jobs 4
wait_on_run impl_1
if { ![string match "*Complete*" [get_property STATUS [get_runs impl_1]]] } {
    puts "ERROR: implementation failed for $variant"
    exit 5
}

open_run impl_1
report_utilization -file [file join $report_dir post_route_utilization.rpt]
report_timing_summary -delay_type min_max -max_paths 20 \
    -file [file join $report_dir post_route_timing_summary.rpt]
report_timing -delay_type max -max_paths 20 -sort_by group \
    -file [file join $report_dir post_route_timing_paths.rpt]
report_power -file [file join $report_dir post_route_power.rpt]

set status_file [open [file join $report_dir build_status.txt] w]
puts $status_file "variant=$variant"
puts $status_file "synth_status=[get_property STATUS [get_runs synth_1]]"
puts $status_file "impl_status=[get_property STATUS [get_runs impl_1]]"
puts $status_file "part=[get_property PART [current_project]]"
close $status_file

puts "BUILD PASS: $variant reports=$report_dir"
exit 0
