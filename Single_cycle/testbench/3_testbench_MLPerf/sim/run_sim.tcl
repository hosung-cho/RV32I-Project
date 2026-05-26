puts "\[Tcl\] Create MLPerf KWS simulation project..."
create_project -force -part xc7a35tcpg236-1 sim_project ./sim_workspace

puts "\[Tcl\] Read RTL..."
read_verilog ../../../src/rtl/basic_modules.v
read_verilog ../../../src/rtl/rv32i_cpu.v
read_verilog ../RV32I_System_MLPerf.v
read_verilog ../RV32I_System_tb.v

add_files -fileset sim_1 [glob ../*.hex]
set_property file_type {Memory Initialization Files} [get_files [glob ../*.hex]]

set_property top RV32I_System_tb [get_filesets sim_1]
set_property -name {xsim.simulate.runtime} -value {all} -objects [get_filesets sim_1]
set_property -name {xsim.elaborate.load_glbl} -value {false} -objects [get_filesets sim_1]
set_property -name {xsim.simulate.log_all_signals} -value {false} -objects [get_filesets sim_1]

puts "\[Tcl\] Launch simulation..."
launch_simulation

puts "\[Tcl\] Simulation complete."
