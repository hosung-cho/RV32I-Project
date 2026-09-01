if {$argc != 3} {
    puts "Usage: vivado -mode batch -source report_lfc_saif_power.tcl -tclargs <routed.dcp> <activity.saif> <output_dir>"
    exit 2
}

set routed_dcp [file normalize [lindex $argv 0]]
set saif_file [file normalize [lindex $argv 1]]
set output_dir [file normalize [lindex $argv 2]]

if {![file exists $routed_dcp]} {
    puts "ERROR: routed checkpoint not found: $routed_dcp"
    exit 3
}
if {![file exists $saif_file]} {
    puts "ERROR: SAIF not found: $saif_file"
    exit 4
}

file mkdir $output_dir
open_checkpoint $routed_dcp

set design_top [get_property TOP [current_design]]
puts "POWER design_top=$design_top"

# XSim records the testbench as the SAIF root. The DUT instances named cpu and
# accel then map directly to the corresponding instances in
# wide_bdot_fpga_core.
read_saif -strip_path rv32i_lfc_bdot_tb $saif_file

report_power -file [file join $output_dir lfc_saif_power.rpt]
report_power -verbose -file [file join $output_dir lfc_saif_power_verbose.rpt]
report_power -advisory -file [file join $output_dir lfc_saif_power_advisory.rpt]

# Preserve the annotated routed design so the applied activity can be audited
# interactively without repeating simulation.
write_checkpoint -force [file join $output_dir wide_bdot_fpga_core_lfc_saif.dcp]

puts "POWER PASS: reports=$output_dir"
exit 0
