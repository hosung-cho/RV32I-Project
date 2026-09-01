if {$argc != 3} {
    puts "Usage: vivado -mode batch -source report_board_lfc_saif_power.tcl -tclargs <board_routed.dcp> <activity.saif> <output_dir>"
    exit 2
}

set routed_dcp [file normalize [lindex $argv 0]]
set saif_file [file normalize [lindex $argv 1]]
set output_dir [file normalize [lindex $argv 2]]
set core_instance design_1_i/wide_bdot_fpga_core_0/inst

if {![file exists $routed_dcp]} {
    puts "ERROR: board routed checkpoint not found: $routed_dcp"
    exit 3
}
if {![file exists $saif_file]} {
    puts "ERROR: SAIF not found: $saif_file"
    exit 4
}

file mkdir $output_dir
open_checkpoint $routed_dcp

if {[llength [get_cells -quiet $core_instance]] != 1} {
    puts "ERROR: Wide-BDOT core instance not found: $core_instance"
    exit 5
}

puts "BOARD_POWER design_top=[get_property TOP [current_design]] core_instance=$core_instance"

# The runner wraps the functional SAIF in the exact Block Design hierarchy:
# design_1_i/wide_bdot_fpga_core_0/inst.
read_saif -no_strip \
    -out_file [file join $output_dir board_lfc_saif_unmatched.rpt] \
    $saif_file

report_power -file [file join $output_dir board_lfc_saif_power.rpt]
report_power -verbose -file [file join $output_dir board_lfc_saif_power_verbose.rpt]
report_power -advisory -file [file join $output_dir board_lfc_saif_power_advisory.rpt]
write_checkpoint -force [file join $output_dir design_1_wrapper_lfc_saif.dcp]

puts "BOARD POWER PASS: reports=$output_dir"
exit 0
