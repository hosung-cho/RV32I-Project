if {$argc != 2} {
    puts "Usage: vivado -mode batch -source inspect_board_power_hierarchy.tcl -tclargs <routed.dcp> <output.txt>"
    exit 2
}

set routed_dcp [file normalize [lindex $argv 0]]
set output_file [file normalize [lindex $argv 1]]
open_checkpoint $routed_dcp

set handle [open $output_file w]
puts $handle "top=[get_property TOP [current_design]]"
puts $handle "cells:"
foreach cell [lsort [get_cells -hier -filter {NAME =~ *wide_bdot* || NAME =~ *cpu || NAME =~ *accel || NAME =~ *act0_mem || NAME =~ *act1_mem || NAME =~ *weight_mem}]] {
    puts $handle $cell
}
puts $handle "nets:"
foreach net [lsort [get_nets -hier -filter {NAME =~ *wide_bdot*}]] {
    puts $handle $net
}
close $handle
puts "HIERARCHY PASS: $output_file"
exit 0

