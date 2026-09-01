set script_dir [file dirname [file normalize [info script]]]
set project_dir [file normalize [file join $script_dir ..]]
set validate_dir [file join /tmp pipeline_lfc_bd_validate_[pid]]

create_project -force pipeline_lfc_bd_validate $validate_dir -part xczu3eg-sbva484-1-e

add_files [list \
    [file join $project_dir src rtl basic_modules.v] \
    [file join $project_dir src rtl rv32i_cpu.v] \
    [file join $project_dir src rtl RV32I_System.v]]
add_files -fileset constrs_1 [file join $project_dir src XDC top.xdc]

source [file join $project_dir src bd design_1_80M.tcl]
validate_bd_design
save_bd_design

set imem_seg [get_bd_addr_segs zynq_ultra_ps_e_0/Data/SEG_axi_bram_ctrl_0_Mem0]
set dmem_seg [get_bd_addr_segs zynq_ultra_ps_e_0/Data/SEG_axi_bram_ctrl_1_Mem0]
puts "PIPELINE_LFC_BD_VALIDATE=PASS"
puts "IMEM_OFFSET=[get_property OFFSET $imem_seg] IMEM_RANGE=[get_property RANGE $imem_seg]"
puts "DMEM_OFFSET=[get_property OFFSET $dmem_seg] DMEM_RANGE=[get_property RANGE $dmem_seg]"
puts "VALIDATION_PROJECT=$validate_dir"
close_project
