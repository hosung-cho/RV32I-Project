set script_dir [file dirname [file normalize [info script]]]
set source_dir [file normalize [file join $script_dir ..]]
set workspace_root [file normalize [file join $source_dir .. .. .. ..]]
set project_dir [file join $workspace_root vivado_workspace 260824_FINN_LFC_Pipeline]
set export_dir [file join $project_dir export]
set project_name Pipeline_FINN_LFC_80M
set target_board avnet.com:ultra96v1:part0:1.2
set board_repo /home/hosung/.Xilinx/Vivado/2024.2/xhub/board_store/xilinx_board_store/XilinxBoardStore/Vivado/2024.2/boards

file mkdir $project_dir
file mkdir $export_dir

if {![file isdirectory $board_repo]} {
    error "Ultra96 board repository not found: $board_repo"
}
set_param board.repoPaths [list $board_repo]
create_project -force $project_name $project_dir -part xczu3eg-sbva484-1-e
if {[llength [get_board_parts -quiet $target_board]] == 0} {
    error "Installed Ultra96-V1 board part is not visible: $target_board"
}
set_property BOARD_PART $target_board [current_project]
set_property target_language Verilog [current_project]
set_property simulator_language Mixed [current_project]

add_files [list \
    [file join $source_dir src rtl basic_modules.v] \
    [file join $source_dir src rtl rv32i_cpu.v] \
    [file join $source_dir src rtl RV32I_System.v]]
update_compile_order -fileset sources_1

source [file join $source_dir src bd design_1_80M.tcl]
validate_bd_design
save_bd_design
generate_target all [get_files design_1.bd]

set wrapper [make_wrapper -files [get_files design_1.bd] -top]
add_files -norecurse $wrapper
set_property top design_1_wrapper [current_fileset]
update_compile_order -fileset sources_1

launch_runs synth_1 -jobs 2
wait_on_run synth_1
if {[get_property STATUS [get_runs synth_1]] ne "synth_design Complete!"} {
    error "synth_1 failed: [get_property STATUS [get_runs synth_1]]"
}

launch_runs impl_1 -to_step write_bitstream -jobs 2
wait_on_run impl_1
if {[get_property STATUS [get_runs impl_1]] ne "write_bitstream Complete!"} {
    error "impl_1 failed: [get_property STATUS [get_runs impl_1]]"
}

open_run impl_1
report_utilization -file [file join $export_dir utilization_post_route.rpt]
report_timing_summary -file [file join $export_dir timing_summary_post_route.rpt]
report_drc -file [file join $export_dir drc_post_route.rpt]

set bitstream [get_property DIRECTORY [get_runs impl_1]]/design_1_wrapper.bit
file copy -force $bitstream [file join $export_dir design_1_wrapper.bit]
write_hw_platform -fixed -include_bit -force \
    -file [file join $export_dir Pipeline_FINN_LFC_80M.xsa]

puts "PIPELINE_LFC_VIVADO_BUILD=PASS"
puts "PROJECT=[file join $project_dir ${project_name}.xpr]"
puts "BITSTREAM=[file join $export_dir design_1_wrapper.bit]"
puts "XSA=[file join $export_dir Pipeline_FINN_LFC_80M.xsa]"
