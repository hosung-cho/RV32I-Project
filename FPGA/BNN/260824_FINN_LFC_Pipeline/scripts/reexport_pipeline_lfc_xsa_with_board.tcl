set script_dir [file dirname [file normalize [info script]]]
set source_dir [file normalize [file join $script_dir ..]]
set workspace_root [file normalize [file join $source_dir .. .. .. ..]]
set project_dir [file join $workspace_root vivado_workspace 260824_FINN_LFC_Pipeline]
set project_file [file join $project_dir Pipeline_FINN_LFC_80M.xpr]
set export_dir [file join $project_dir export]
set output_xsa [file join $export_dir Pipeline_FINN_LFC_80M.xsa]
set target_board avnet.com:ultra96v1:part0:1.2
set board_repo /home/hosung/.Xilinx/Vivado/2024.2/xhub/board_store/xilinx_board_store/XilinxBoardStore/Vivado/2024.2/boards

if {![file exists $project_file]} {
    error "Vivado project not found: $project_file"
}
if {![file isdirectory $board_repo]} {
    error "Ultra96 board repository not found: $board_repo"
}

set_param board.repoPaths [list $board_repo]
open_project $project_file
if {[llength [get_board_parts -quiet $target_board]] == 0} {
    error "Installed Ultra96-V1 board part is not visible: $target_board"
}
set_property BOARD_PART $target_board [current_project]

open_run impl_1
write_hw_platform -fixed -include_bit -force -file $output_xsa

puts "PIPELINE_LFC_XSA_BOARD_REEXPORT=PASS"
puts "BOARD_PART=[get_property BOARD_PART [current_project]]"
puts "XSA=$output_xsa"
