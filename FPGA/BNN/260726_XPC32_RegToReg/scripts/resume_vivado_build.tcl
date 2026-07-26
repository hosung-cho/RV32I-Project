if { $argc != 2 } {
    puts "Usage: vivado -mode batch -source resume_vivado_build.tcl -tclargs <baseline|xpc32> <project_dir>"
    exit 2
}

set variant [lindex $argv 0]
set project_dir [file normalize [lindex $argv 1]]
set report_dir [file join $project_dir reports]
set project_file [file join $project_dir xpc32_${variant}.xpr]

if { ![file exists $project_file] } {
    puts "ERROR: project does not exist: $project_file"
    exit 2
}

open_project $project_file
file mkdir $report_dir

if { ![string match "*Complete*" [get_property STATUS [get_runs synth_1]]] } {
    puts "ERROR: synthesis is not complete for $variant"
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
