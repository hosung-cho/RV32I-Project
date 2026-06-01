# Vivado functional simulation script for pipeline hazard tests.

set script_dir [file dirname [file normalize [info script]]]
cd $script_dir

set proj_dir [file normalize [file join $script_dir sim_workspace]]
set rtl_dir  [file normalize [file join $script_dir ../../../src/rtl]]
set tb_dir   [file normalize [file join $script_dir ..]]

puts "Tcl: Creating simulation project: $proj_dir"
create_project -force -part xc7a35tcpg236-1 sim_project $proj_dir

puts "Tcl: Reading RTL"
read_verilog [file join $rtl_dir basic_modules.v]
read_verilog [file join $rtl_dir rv32i_cpu.v]

puts "Tcl: Reading testbench"
read_verilog [file join $tb_dir tb_pipeline_hazard.v]

set_property top tb_pipeline_hazard [get_filesets sim_1]
set_property -name {xsim.simulate.runtime} -value {all} -objects [get_filesets sim_1]
set_property -name {xsim.elaborate.load_glbl} -value {false} -objects [get_filesets sim_1]
set_property -name {xsim.simulate.log_all_signals} -value {false} -objects [get_filesets sim_1]

puts "Tcl: Launching functional simulation"
launch_simulation -simset sim_1 -mode behavioral

puts "Tcl: Simulation finished"
