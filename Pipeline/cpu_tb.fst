$date
	Mon Mar 23 18:05:48 2026
$end
$version
	Icarus Verilog
$end
$timescale
	1ns
$end
$scope module cpu_tb $end
$var wire 32 ! timeout_cycle [31:0] $end
$var parameter 32 " CPU_CLOCK_FREQ $end
$var parameter 32 # CPU_CLOCK_PERIOD $end
$var reg 15 $ DATA_ADDR [14:0] $end
$var reg 15 % DATA_ADDR0 [14:0] $end
$var reg 15 & DATA_ADDR1 [14:0] $end
$var reg 15 ' DATA_ADDR2 [14:0] $end
$var reg 15 ( DATA_ADDR3 [14:0] $end
$var reg 15 ) DATA_ADDR4 [14:0] $end
$var reg 15 * DATA_ADDR5 [14:0] $end
$var reg 15 + DATA_ADDR6 [14:0] $end
$var reg 15 , DATA_ADDR7 [14:0] $end
$var reg 15 - DATA_ADDR8 [14:0] $end
$var reg 32 . IMM [31:0] $end
$var reg 32 / IMM0 [31:0] $end
$var reg 32 0 IMM1 [31:0] $end
$var reg 32 1 IMM2 [31:0] $end
$var reg 32 2 IMM3 [31:0] $end
$var reg 15 3 INST_ADDR [14:0] $end
$var reg 32 4 JUMP_ADDR [31:0] $end
$var reg 5 5 RD [4:0] $end
$var reg 32 6 RD1 [31:0] $end
$var reg 32 7 RD2 [31:0] $end
$var reg 5 8 RS1 [4:0] $end
$var reg 5 9 RS2 [4:0] $end
$var reg 5 : SHAMT [4:0] $end
$var reg 1 ; all_tests_passed $end
$var reg 1 < clk $end
$var reg 32 = current_output [31:0] $end
$var reg 32 > current_result [31:0] $end
$var reg 32 ? current_test_id [31:0] $end
$var reg 256 @ current_test_type [255:0] $end
$var reg 32 A cycle [31:0] $end
$var reg 1 B done $end
$var reg 32 C num_cycles [31:0] $end
$var reg 32 D num_insts [31:0] $end
$var reg 1 E rst $end
$var integer 32 F i [31:0] $end
$scope module CPU $end
$var wire 1 < CLOCK_50 $end
$var wire 1 G clk $end
$var wire 1 E reset $end
$var wire 32 H write_data [31:0] $end
$var wire 32 I read_data [31:0] $end
$var wire 32 J inst [31:0] $end
$var wire 32 K fetch_addr [31:0] $end
$var wire 1 L data_we $end
$var wire 32 M data_addr [31:0] $end
$var wire 4 N ByteEnable [3:0] $end
$scope module iDMem $end
$var wire 14 O address [13:0] $end
$var wire 1 G clock $end
$var wire 1 P enable $end
$var wire 32 Q write_data [31:0] $end
$var wire 1 L wren $end
$var wire 4 R byteena [3:0] $end
$var parameter 32 S DEPTH $end
$var reg 32 T read_data [31:0] $end
$var integer 32 U i [31:0] $end
$upscope $end
$scope module iIMem $end
$var wire 14 V address [13:0] $end
$var wire 1 G clock $end
$var wire 1 W enable $end
$var parameter 32 X DEPTH $end
$var reg 32 Y instruction [31:0] $end
$var integer 32 Z i [31:0] $end
$upscope $end
$scope module icpu $end
$var wire 32 [ MemRData [31:0] $end
$var wire 1 G clk $end
$var wire 32 \ inst [31:0] $end
$var wire 1 ] reset $end
$var wire 32 ^ pc [31:0] $end
$var wire 1 _ lui $end
$var wire 1 ` jalr $end
$var wire 1 a jal $end
$var wire 32 b inst_decode [31:0] $end
$var wire 1 c branch $end
$var wire 1 d auipc $end
$var wire 1 e RegWrite $end
$var wire 1 f MemtoReg $end
$var wire 1 g MemWrite_ctrl $end
$var wire 1 L MemWrite $end
$var wire 32 h MemWData [31:0] $end
$var wire 32 i MemAddr [31:0] $end
$var wire 4 j ByteEnable [3:0] $end
$var wire 5 k ALUcontrol [4:0] $end
$var wire 1 l ALUSrc $end
$scope module i_controller $end
$var wire 3 m funct3 [2:0] $end
$var wire 7 n funct7 [6:0] $end
$var wire 7 o opcode [6:0] $end
$var wire 1 _ lui $end
$var wire 1 ` jalr $end
$var wire 1 a jal $end
$var wire 1 c branch $end
$var wire 1 d auipc $end
$var wire 1 e RegWrite $end
$var wire 1 f MemtoReg $end
$var wire 1 g MemWrite $end
$var wire 5 p ALUcontrol [4:0] $end
$var wire 1 l ALUSrc $end
$scope module i_aludec $end
$var wire 3 q funct3 [2:0] $end
$var wire 7 r funct7 [6:0] $end
$var wire 7 s opcode [6:0] $end
$var reg 5 t ALUcontrol [4:0] $end
$upscope $end
$scope module i_maindec $end
$var wire 7 u opcode [6:0] $end
$var wire 1 _ lui $end
$var wire 1 ` jalr $end
$var wire 1 a jal $end
$var wire 1 c branch $end
$var wire 1 d auipc $end
$var wire 1 e RegWrite $end
$var wire 1 f MemtoReg $end
$var wire 1 g MemWrite $end
$var wire 1 l ALUSrc $end
$var reg 9 v controls [8:0] $end
$upscope $end
$upscope $end
$scope module i_datapath $end
$var wire 1 l ALUSrc $end
$var wire 5 w ALUcontrol [4:0] $end
$var wire 32 x MemAddr [31:0] $end
$var wire 32 y MemRData [31:0] $end
$var wire 1 g MemWrite $end
$var wire 1 L MemWrite_out $end
$var wire 1 f MemtoReg $end
$var wire 1 e RegWrite $end
$var wire 1 d auipc $end
$var wire 1 z beq_taken $end
$var wire 1 { bge_taken $end
$var wire 1 | bgeu_taken $end
$var wire 1 } blt_taken $end
$var wire 1 ~ bltu_taken $end
$var wire 1 !" bne_taken $end
$var wire 1 c branch $end
$var wire 1 "" btaken $end
$var wire 1 G clk $end
$var wire 1 #" flush $end
$var wire 32 $" inst [31:0] $end
$var wire 32 %" inst_decode [31:0] $end
$var wire 1 a jal $end
$var wire 32 &" jal_dest [31:0] $end
$var wire 1 ` jalr $end
$var wire 1 _ lui $end
$var wire 1 ] reset $end
$var wire 1 '" stall $end
$var wire 32 (" se_jal_imm [31:0] $end
$var wire 32 )" se_imm_stype [31:0] $end
$var wire 32 *" se_imm_itype [31:0] $end
$var wire 32 +" se_br_imm [31:0] $end
$var wire 32 ," rs2_data [31:0] $end
$var wire 5 -" rs2 [4:0] $end
$var wire 32 ." rs1_data [31:0] $end
$var wire 5 /" rs1 [4:0] $end
$var wire 5 0" rd [4:0] $end
$var wire 32 1" pc_plus4 [31:0] $end
$var wire 32 2" next_pc [31:0] $end
$var wire 32 3" jalr_dest [31:0] $end
$var wire 20 4" jal_imm [20:1] $end
$var wire 3 5" funct3 [2:0] $end
$var wire 2 6" forwardB [1:0] $end
$var wire 2 7" forwardA [1:0] $end
$var wire 1 8" f3bne $end
$var wire 1 9" f3bltu $end
$var wire 1 :" f3blt $end
$var wire 1 ;" f3bgeu $end
$var wire 1 <" f3bge $end
$var wire 1 =" f3beq $end
$var wire 32 >" exmem_fwd_data [31:0] $end
$var wire 32 ?" branch_dest [31:0] $end
$var wire 12 @" br_imm [12:1] $end
$var wire 32 A" auipc_lui_imm [31:0] $end
$var wire 32 B" aluout [31:0] $end
$var wire 1 C" Zflag $end
$var wire 1 D" Vflag $end
$var wire 1 E" Nflag $end
$var wire 32 F" MemWData [31:0] $end
$var wire 1 G" Cflag $end
$var wire 2 H" Addr_Last2 [1:0] $end
$var reg 4 I" ByteEnable [3:0] $end
$var reg 1 J" EXMEM_Cflag $end
$var reg 1 K" EXMEM_MemWrite $end
$var reg 1 L" EXMEM_MemtoReg $end
$var reg 1 M" EXMEM_Nflag $end
$var reg 1 N" EXMEM_RegWrite $end
$var reg 1 O" EXMEM_Vflag $end
$var reg 1 P" EXMEM_Zflag $end
$var reg 32 Q" EXMEM_aluout [31:0] $end
$var reg 1 R" EXMEM_branch $end
$var reg 32 S" EXMEM_branch_dest [31:0] $end
$var reg 3 T" EXMEM_funct3 [2:0] $end
$var reg 1 U" EXMEM_jal $end
$var reg 1 V" EXMEM_jalr $end
$var reg 32 W" EXMEM_pc_plus4 [31:0] $end
$var reg 5 X" EXMEM_rd [4:0] $end
$var reg 32 Y" EXMEM_rs2_data [31:0] $end
$var reg 1 Z" IDEX_ALUSrc $end
$var reg 5 [" IDEX_ALUcontrol [4:0] $end
$var reg 1 \" IDEX_MemWrite $end
$var reg 1 ]" IDEX_MemtoReg $end
$var reg 1 ^" IDEX_RegWrite $end
$var reg 1 _" IDEX_auipc $end
$var reg 32 `" IDEX_auipc_lui_imm [31:0] $end
$var reg 1 a" IDEX_branch $end
$var reg 3 b" IDEX_funct3 [2:0] $end
$var reg 1 c" IDEX_jal $end
$var reg 1 d" IDEX_jalr $end
$var reg 1 e" IDEX_lui $end
$var reg 32 f" IDEX_pc [31:0] $end
$var reg 5 g" IDEX_rd [4:0] $end
$var reg 5 h" IDEX_rs1 [4:0] $end
$var reg 32 i" IDEX_rs1_data [31:0] $end
$var reg 5 j" IDEX_rs2 [4:0] $end
$var reg 32 k" IDEX_rs2_data [31:0] $end
$var reg 32 l" IDEX_se_br_imm [31:0] $end
$var reg 32 m" IDEX_se_imm_itype [31:0] $end
$var reg 32 n" IDEX_se_imm_stype [31:0] $end
$var reg 32 o" IDEX_se_jal_imm [31:0] $end
$var reg 32 p" IFID_inst [31:0] $end
$var reg 32 q" IFID_pc [31:0] $end
$var reg 32 r" MEMWB_MemRData2RF [31:0] $end
$var reg 1 s" MEMWB_MemtoReg $end
$var reg 1 t" MEMWB_RegWrite $end
$var reg 32 u" MEMWB_aluout [31:0] $end
$var reg 1 v" MEMWB_jal $end
$var reg 1 w" MEMWB_jalr $end
$var reg 32 x" MEMWB_pc_plus4 [31:0] $end
$var reg 5 y" MEMWB_rd [4:0] $end
$var reg 32 z" MemRData2RF [31:0] $end
$var reg 32 {" alusrc1 [31:0] $end
$var reg 32 |" alusrc2 [31:0] $end
$var reg 32 }" forward_rs1_data [31:0] $end
$var reg 32 ~" forward_rs2_data [31:0] $end
$var reg 32 !# pc [31:0] $end
$var reg 32 "# rd_data [31:0] $end
$scope module i_alu $end
$var wire 32 ## a [31:0] $end
$var wire 5 $# alucont [4:0] $end
$var wire 32 %# b [31:0] $end
$var wire 1 &# slt $end
$var wire 1 '# sltu $end
$var wire 32 (# sum [31:0] $end
$var wire 32 )# b2 [31:0] $end
$var wire 1 C" Z $end
$var wire 1 D" V $end
$var wire 1 E" N $end
$var wire 1 G" C $end
$var reg 32 *# result [31:0] $end
$scope module iadder32 $end
$var wire 1 D" V $end
$var wire 32 +# a [31:0] $end
$var wire 32 ,# b [31:0] $end
$var wire 1 -# cin $end
$var wire 32 .# sum [31:0] $end
$var wire 32 /# ctmp [31:0] $end
$var wire 1 C" Z $end
$var wire 1 E" N $end
$var wire 1 G" C $end
$scope module bit0 $end
$var wire 1 0# a $end
$var wire 1 1# b $end
$var wire 1 -# cin $end
$var wire 1 2# cout $end
$var wire 1 3# sum $end
$upscope $end
$scope module bit1 $end
$var wire 1 4# a $end
$var wire 1 5# b $end
$var wire 1 6# cin $end
$var wire 1 7# cout $end
$var wire 1 8# sum $end
$upscope $end
$scope module bit10 $end
$var wire 1 9# a $end
$var wire 1 :# b $end
$var wire 1 ;# cin $end
$var wire 1 <# cout $end
$var wire 1 =# sum $end
$upscope $end
$scope module bit11 $end
$var wire 1 ># a $end
$var wire 1 ?# b $end
$var wire 1 @# cin $end
$var wire 1 A# cout $end
$var wire 1 B# sum $end
$upscope $end
$scope module bit12 $end
$var wire 1 C# a $end
$var wire 1 D# b $end
$var wire 1 E# cin $end
$var wire 1 F# cout $end
$var wire 1 G# sum $end
$upscope $end
$scope module bit13 $end
$var wire 1 H# a $end
$var wire 1 I# b $end
$var wire 1 J# cin $end
$var wire 1 K# cout $end
$var wire 1 L# sum $end
$upscope $end
$scope module bit14 $end
$var wire 1 M# a $end
$var wire 1 N# b $end
$var wire 1 O# cin $end
$var wire 1 P# cout $end
$var wire 1 Q# sum $end
$upscope $end
$scope module bit15 $end
$var wire 1 R# a $end
$var wire 1 S# b $end
$var wire 1 T# cin $end
$var wire 1 U# cout $end
$var wire 1 V# sum $end
$upscope $end
$scope module bit16 $end
$var wire 1 W# a $end
$var wire 1 X# b $end
$var wire 1 Y# cin $end
$var wire 1 Z# cout $end
$var wire 1 [# sum $end
$upscope $end
$scope module bit17 $end
$var wire 1 \# a $end
$var wire 1 ]# b $end
$var wire 1 ^# cin $end
$var wire 1 _# cout $end
$var wire 1 `# sum $end
$upscope $end
$scope module bit18 $end
$var wire 1 a# a $end
$var wire 1 b# b $end
$var wire 1 c# cin $end
$var wire 1 d# cout $end
$var wire 1 e# sum $end
$upscope $end
$scope module bit19 $end
$var wire 1 f# a $end
$var wire 1 g# b $end
$var wire 1 h# cin $end
$var wire 1 i# cout $end
$var wire 1 j# sum $end
$upscope $end
$scope module bit2 $end
$var wire 1 k# a $end
$var wire 1 l# b $end
$var wire 1 m# cin $end
$var wire 1 n# cout $end
$var wire 1 o# sum $end
$upscope $end
$scope module bit20 $end
$var wire 1 p# a $end
$var wire 1 q# b $end
$var wire 1 r# cin $end
$var wire 1 s# cout $end
$var wire 1 t# sum $end
$upscope $end
$scope module bit21 $end
$var wire 1 u# a $end
$var wire 1 v# b $end
$var wire 1 w# cin $end
$var wire 1 x# cout $end
$var wire 1 y# sum $end
$upscope $end
$scope module bit22 $end
$var wire 1 z# a $end
$var wire 1 {# b $end
$var wire 1 |# cin $end
$var wire 1 }# cout $end
$var wire 1 ~# sum $end
$upscope $end
$scope module bit23 $end
$var wire 1 !$ a $end
$var wire 1 "$ b $end
$var wire 1 #$ cin $end
$var wire 1 $$ cout $end
$var wire 1 %$ sum $end
$upscope $end
$scope module bit24 $end
$var wire 1 &$ a $end
$var wire 1 '$ b $end
$var wire 1 ($ cin $end
$var wire 1 )$ cout $end
$var wire 1 *$ sum $end
$upscope $end
$scope module bit25 $end
$var wire 1 +$ a $end
$var wire 1 ,$ b $end
$var wire 1 -$ cin $end
$var wire 1 .$ cout $end
$var wire 1 /$ sum $end
$upscope $end
$scope module bit26 $end
$var wire 1 0$ a $end
$var wire 1 1$ b $end
$var wire 1 2$ cin $end
$var wire 1 3$ cout $end
$var wire 1 4$ sum $end
$upscope $end
$scope module bit27 $end
$var wire 1 5$ a $end
$var wire 1 6$ b $end
$var wire 1 7$ cin $end
$var wire 1 8$ cout $end
$var wire 1 9$ sum $end
$upscope $end
$scope module bit28 $end
$var wire 1 :$ a $end
$var wire 1 ;$ b $end
$var wire 1 <$ cin $end
$var wire 1 =$ cout $end
$var wire 1 >$ sum $end
$upscope $end
$scope module bit29 $end
$var wire 1 ?$ a $end
$var wire 1 @$ b $end
$var wire 1 A$ cin $end
$var wire 1 B$ cout $end
$var wire 1 C$ sum $end
$upscope $end
$scope module bit3 $end
$var wire 1 D$ a $end
$var wire 1 E$ b $end
$var wire 1 F$ cin $end
$var wire 1 G$ cout $end
$var wire 1 H$ sum $end
$upscope $end
$scope module bit30 $end
$var wire 1 I$ a $end
$var wire 1 J$ b $end
$var wire 1 K$ cin $end
$var wire 1 L$ cout $end
$var wire 1 M$ sum $end
$upscope $end
$scope module bit31 $end
$var wire 1 N$ a $end
$var wire 1 O$ b $end
$var wire 1 P$ cin $end
$var wire 1 Q$ cout $end
$var wire 1 R$ sum $end
$upscope $end
$scope module bit4 $end
$var wire 1 S$ a $end
$var wire 1 T$ b $end
$var wire 1 U$ cin $end
$var wire 1 V$ cout $end
$var wire 1 W$ sum $end
$upscope $end
$scope module bit5 $end
$var wire 1 X$ a $end
$var wire 1 Y$ b $end
$var wire 1 Z$ cin $end
$var wire 1 [$ cout $end
$var wire 1 \$ sum $end
$upscope $end
$scope module bit6 $end
$var wire 1 ]$ a $end
$var wire 1 ^$ b $end
$var wire 1 _$ cin $end
$var wire 1 `$ cout $end
$var wire 1 a$ sum $end
$upscope $end
$scope module bit7 $end
$var wire 1 b$ a $end
$var wire 1 c$ b $end
$var wire 1 d$ cin $end
$var wire 1 e$ cout $end
$var wire 1 f$ sum $end
$upscope $end
$scope module bit8 $end
$var wire 1 g$ a $end
$var wire 1 h$ b $end
$var wire 1 i$ cin $end
$var wire 1 j$ cout $end
$var wire 1 k$ sum $end
$upscope $end
$scope module bit9 $end
$var wire 1 l$ a $end
$var wire 1 m$ b $end
$var wire 1 n$ cin $end
$var wire 1 o$ cout $end
$var wire 1 p$ sum $end
$upscope $end
$upscope $end
$upscope $end
$scope module i_regfile $end
$var wire 1 G clk $end
$var wire 5 q$ rd [4:0] $end
$var wire 32 r$ rd_data [31:0] $end
$var wire 5 s$ rs1 [4:0] $end
$var wire 5 t$ rs2 [4:0] $end
$var wire 1 t" we $end
$var wire 32 u$ x1 [31:0] $end
$var wire 32 v$ x10 [31:0] $end
$var wire 32 w$ x11 [31:0] $end
$var wire 32 x$ x12 [31:0] $end
$var wire 32 y$ x13 [31:0] $end
$var wire 32 z$ x14 [31:0] $end
$var wire 32 {$ x15 [31:0] $end
$var wire 32 |$ x16 [31:0] $end
$var wire 32 }$ x17 [31:0] $end
$var wire 32 ~$ x18 [31:0] $end
$var wire 32 !% x19 [31:0] $end
$var wire 32 "% x2 [31:0] $end
$var wire 32 #% x20 [31:0] $end
$var wire 32 $% x21 [31:0] $end
$var wire 32 %% x22 [31:0] $end
$var wire 32 &% x23 [31:0] $end
$var wire 32 '% x24 [31:0] $end
$var wire 32 (% x25 [31:0] $end
$var wire 32 )% x26 [31:0] $end
$var wire 32 *% x27 [31:0] $end
$var wire 32 +% x28 [31:0] $end
$var wire 32 ,% x29 [31:0] $end
$var wire 32 -% x3 [31:0] $end
$var wire 32 .% x30 [31:0] $end
$var wire 32 /% x31 [31:0] $end
$var wire 32 0% x4 [31:0] $end
$var wire 32 1% x5 [31:0] $end
$var wire 32 2% x6 [31:0] $end
$var wire 32 3% x7 [31:0] $end
$var wire 32 4% x8 [31:0] $end
$var wire 32 5% x9 [31:0] $end
$var parameter 32 6% DEPTH $end
$var reg 32 7% rs1_data [31:0] $end
$var reg 32 8% rs2_data [31:0] $end
$var integer 32 9% i [31:0] $end
$upscope $end
$upscope $end
$upscope $end
$upscope $end
$scope task check_result_dmem $end
$var reg 32 :% addr [31:0] $end
$var reg 32 ;% result [31:0] $end
$var reg 256 <% test_type [255:0] $end
$upscope $end
$scope task check_result_rf $end
$var reg 32 =% result [31:0] $end
$var reg 32 >% rf_wa [31:0] $end
$var reg 256 ?% test_type [255:0] $end
$upscope $end
$scope task init_rf $end
$var integer 32 @% i [31:0] $end
$upscope $end
$scope task reset $end
$var integer 32 A% i [31:0] $end
$upscope $end
$scope task reset_cpu $end
$upscope $end
$upscope $end
$enddefinitions $end
$comment Show the parameter values. $end
$dumpall
b100000 6%
b100000000000000 X
b100000000000000 S
b10100 #
b10111110101111000010000000 "
$end
#0
$dumpvars
bx A%
bx @%
bx ?%
bx >%
bx =%
bx <%
bx ;%
bx :%
b100000 9%
bx 8%
bx 7%
b0 5%
b0 4%
b0 3%
b0 2%
b0 1%
b0 0%
b0 /%
b0 .%
b0 -%
b0 ,%
b0 +%
b0 *%
b0 )%
b0 (%
b0 '%
b0 &%
b0 %%
b0 $%
b0 #%
b0 "%
b0 !%
b0 ~$
b0 }$
b0 |$
b0 {$
b0 z$
b0 y$
b0 x$
b0 w$
b0 v$
b0 u$
bx t$
bx s$
bx r$
bx q$
xp$
xo$
xn$
xm$
xl$
xk$
xj$
xi$
xh$
xg$
xf$
xe$
xd$
xc$
xb$
xa$
x`$
x_$
x^$
x]$
x\$
x[$
xZ$
xY$
xX$
xW$
xV$
xU$
xT$
xS$
xR$
xQ$
xP$
xO$
xN$
xM$
xL$
xK$
xJ$
xI$
xH$
xG$
xF$
xE$
xD$
xC$
xB$
xA$
x@$
x?$
x>$
x=$
x<$
x;$
x:$
x9$
x8$
x7$
x6$
x5$
x4$
x3$
x2$
x1$
x0$
x/$
x.$
x-$
x,$
x+$
x*$
x)$
x($
x'$
x&$
x%$
x$$
x#$
x"$
x!$
x~#
x}#
x|#
x{#
xz#
xy#
xx#
xw#
xv#
xu#
xt#
xs#
xr#
xq#
xp#
xo#
xn#
xm#
xl#
xk#
xj#
xi#
xh#
xg#
xf#
xe#
xd#
xc#
xb#
xa#
x`#
x_#
x^#
x]#
x\#
x[#
xZ#
xY#
xX#
xW#
xV#
xU#
xT#
xS#
xR#
xQ#
xP#
xO#
xN#
xM#
xL#
xK#
xJ#
xI#
xH#
xG#
xF#
xE#
xD#
xC#
xB#
xA#
x@#
x?#
x>#
x=#
x<#
x;#
x:#
x9#
x8#
x7#
x6#
x5#
x4#
x3#
x2#
x1#
x0#
bx /#
bx .#
x-#
bx ,#
bx +#
bx *#
bx )#
bx (#
x'#
x&#
bx %#
bx $#
bx ##
bx "#
bx !#
bx ~"
bx }"
bx |"
bx {"
bx z"
bx y"
bx x"
xw"
xv"
bx u"
xt"
xs"
bx r"
bx q"
bx p"
bx o"
bx n"
bx m"
bx l"
bx k"
bx j"
bx i"
bx h"
bx g"
bx f"
xe"
xd"
xc"
bx b"
xa"
bx `"
x_"
x^"
x]"
x\"
bx ["
xZ"
bx Y"
bx X"
bx W"
xV"
xU"
bx T"
bx S"
xR"
bx Q"
xP"
xO"
xN"
xM"
xL"
xK"
xJ"
bx I"
bx H"
xG"
bx F"
xE"
xD"
xC"
bx B"
bx000000000000 A"
bx @"
bx ?"
bx >"
x="
x<"
x;"
x:"
x9"
x8"
bx 7"
bx 6"
bx 5"
bx 4"
bx0 3"
bx 2"
bx 1"
bx 0"
bx /"
bx ."
bx -"
bx ,"
bx0 +"
bx *"
bx )"
bx0 ("
x'"
bx &"
bx %"
bx $"
x#"
x""
x!"
x~
x}
x|
x{
xz
bx y
bx x
bx w
bx v
bx u
bx t
bx s
bx r
bx q
bx p
bx o
bx n
bx m
xl
bx k
bx j
bx i
bx h
xg
xf
xe
xd
xc
bx b
xa
x`
x_
bx ^
1]
bx \
bx [
b100000000000000 Z
bx Y
1W
bx V
b100000000000000 U
bx T
bx R
bx Q
1P
bx O
bx N
bx M
xL
bx K
bx J
bx I
bx H
0G
bx F
0E
b0 D
b0 C
xB
bx A
bx @
b0 ?
bx >
bx =
0<
0;
bx :
bx 9
bx 8
bx 7
bx 6
bx 5
bx 4
bx 3
bx 2
bx 1
bx 0
bx /
bx .
bx -
bx ,
bx +
bx *
bx )
bx (
bx '
bx &
bx %
bx $
b11001 !
$end
#10000000000
0d
0_
1e
1l
0f
0g
0c
0a
0`
b0 B"
b0 *#
b0 z"
b0 k
b0 p
b0 t
b0 w
b1100000 v
b1 N
b1 R
b1 j
b1 I"
0&#
0E"
1C"
08#
0#"
1'#
0R$
0D"
0M$
0C$
0>$
09$
04$
0/$
0*$
0%$
0~#
0y#
0t#
0j#
0e#
0`#
0[#
0V#
0Q#
0L#
0G#
0B#
0=#
0p$
0k$
0f$
0a$
0\$
0W$
0H$
0o#
06#
0G"
0P$
0K$
0A$
0<$
07$
02$
0-$
0($
0#$
0|#
0w#
0r#
0h#
0c#
0^#
0Y#
0T#
0O#
0J#
0E#
0@#
0;#
0n$
0i$
0d$
0_$
0Z$
0U$
0F$
0m#
02#
0""
0Q$
0L$
0B$
0=$
08$
03$
0.$
0)$
0$$
0}#
0x#
0s#
0i#
0d#
0_#
0Z#
0U#
0P#
0K#
0F#
0A#
0<#
0o$
0j$
0e$
0`$
0[$
0V$
0G$
0n#
b0 /#
07#
b0 (#
b0 .#
03#
0O$
0J$
0@$
0;$
06$
01$
0,$
0'$
0"$
0{#
0v#
0q#
0g#
0b#
0]#
0X#
0S#
0N#
0I#
0D#
0?#
0:#
0m$
0h$
0c$
0^$
0Y$
0T$
0E$
0l#
05#
01#
0N$
0I$
0?$
0:$
05$
00$
0+$
0&$
0!$
0z#
0u#
0p#
0f#
0a#
0\#
0W#
0R#
0M#
0H#
0C#
0>#
09#
0l$
0g$
0b$
0]$
0X$
0S$
0D$
0k#
04#
00#
b101000000000010100010011 J
b101000000000010100010011 Y
b101000000000010100010011 \
b101000000000010100010011 $"
b0 ."
b0 7%
b0 ,"
b0 8%
b0 6"
b0 7"
b0 )#
b0 ,#
b0 {"
b0 ##
b0 +#
b10000000000000000000000000100 2"
0!"
0}
0{
0~
b0 I
b0 T
b0 [
b0 y
b0 V
b0 /"
b0 s$
b0 -"
b0 t$
b0 0"
b0 5"
b0 ("
b0 4"
b0 +"
b0 @"
b0 *"
b0 )"
b0 A"
b0 m
b0 q
b0 n
b0 r
b10011 o
b10011 s
b10011 u
0-#
0'"
b0 ?"
b0 |"
b0 %#
b0 ~"
b0 }"
0|
0z
b0 H
b0 Q
b0 h
b0 F"
b0 3"
b0 H"
b0 O
b0 >"
b0 "#
b0 r$
b10000000000000000000000000100 1"
b10000000000000000000000000000 K
b10000000000000000000000000000 ^
b10000000000000000000000000000 !#
b10011 b
b10011 %"
b10011 p"
b0 q"
0d"
0c"
0a"
b0 ["
b0 $#
0Z"
0\"
0]"
0^"
0e"
0_"
b0 b"
b0 g"
b0 j"
b0 h"
b0 `"
b0 o"
b0 l"
b0 n"
b0 m"
b0 k"
b0 i"
b0 f"
0V"
0U"
0R"
0L
0K"
0L"
0N"
0O"
0J"
0M"
0P"
1="
08"
0:"
0<"
09"
0;"
b0 T"
b0 X"
b0 &"
b0 S"
b0 Y"
b0 M
b0 i
b0 x
b0 Q"
b0 W"
0w"
0v"
0s"
0t"
b0 y"
b0 q$
b0 x"
b0 r"
b0 u"
b0 A
1G
1<
#20000000000
0G
0<
#30000000000
1G
1<
#40000000000
0G
0<
#50000000000
1G
1<
#60000000000
0G
0<
#70000000000
1G
1<
#80000000000
0G
0<
#90000000000
1G
1<
#100000000000
0G
0<
#110000000000
1G
1<
#120000000000
0G
0<
#130000000000
1G
1<
#140000000000
0G
0<
#150000000000
1G
1<
#160000000000
0G
0<
#170000000000
1G
1<
#180000000000
0G
0<
#190000000000
1G
1<
#200000000000
b1000001000000110110011 J
b1000001000000110110011 Y
b1000001000000110110011 \
b1000001000000110110011 $"
0]
b0 3
b10100 :
b11001000 "%
b11111111111111111111111110011100 u$
b11 5
b11001000 7
b10 9
b11111111111111111111111110011100 6
b1 8
b100000000000000 A%
1E
0G
0<
#210000000000
0l
b1000000 v
b10000000000000000000000001000 2"
b1000000001000001000001000110011 J
b1000000001000001000001000110011 Y
b1000000001000001000001000110011 \
b1000000001000001000001000110011 $"
b11111111111111111111111110011100 ."
b11111111111111111111111110011100 7%
b11001000 ,"
b11001000 8%
b1 V
b1 /"
b1 s$
b10 -"
b10 t$
b11 0"
b1000000000000010 ("
b100000000000001 4"
b100000000010 +"
b10000000001 @"
b10 *"
b11 )"
b1000001000000000000000 A"
b110011 o
b110011 s
b110011 u
b10000000000000000000000001000 1"
b10000000000000000000000000100 K
b10000000000000000000000000100 ^
b10000000000000000000000000100 !#
b1000001000000110110011 b
b1000001000000110110011 %"
b1000001000000110110011 p"
b10000000000000000000000000000 q"
1Z"
1^"
1P"
b100 W"
1G
1<
#220000000000
1]
0E
0G
0<
#230000000000
1l
b1100000 v
b10000000000000000000000000100 2"
b0 ."
b0 7%
b0 ,"
b0 8%
b1000001000000110110011 J
b1000001000000110110011 Y
b1000001000000110110011 \
b1000001000000110110011 $"
b0 /"
b0 s$
b0 -"
b0 t$
b0 0"
b0 ("
b0 4"
b0 +"
b0 @"
b0 *"
b0 )"
b0 A"
b10011 o
b10011 s
b10011 u
b0 V
0P"
b0 W"
0Z"
0^"
b10011 b
b10011 %"
b10011 p"
b0 q"
b10000000000000000000000000100 1"
b10000000000000000000000000000 K
b10000000000000000000000000000 ^
b10000000000000000000000000000 !#
1G
1<
#240000000000
0G
0<
#250000000000
1G
1<
#260000000000
0G
0<
#270000000000
1G
1<
#280000000000
0]
b0 =
b1100100 >
b1010010001011010101010001111001011100000110010100100000010000010100010001000100 @
b1 ?
0B
b1010010001011010101010001111001011100000110010100100000010000010100010001000100 ?%
b1100100 =%
b11 >%
1E
0G
0<
#290000000000
0l
b1000000 v
b10000000000000000000000001000 2"
b1000000001000001000001000110011 J
b1000000001000001000001000110011 Y
b1000000001000001000001000110011 \
b1000000001000001000001000110011 $"
b11111111111111111111111110011100 ."
b11111111111111111111111110011100 7%
b11001000 ,"
b11001000 8%
b1 V
b1 /"
b1 s$
b10 -"
b10 t$
b11 0"
b1000000000000010 ("
b100000000000001 4"
b100000000010 +"
b10000000001 @"
b10 *"
b11 )"
b1000001000000000000000 A"
b110011 o
b110011 s
b110011 u
b10000000000000000000000001000 1"
b10000000000000000000000000100 K
b10000000000000000000000000100 ^
b10000000000000000000000000100 !#
b1000001000000110110011 b
b1000001000000110110011 %"
b1000001000000110110011 p"
b10000000000000000000000000000 q"
1Z"
1^"
1P"
b100 W"
b1 A
1G
1<
#300000000000
0G
0<
#310000000000
b1100100 B"
b1100100 *#
b10000 k
b10000 p
b10000 t
b10000 w
0'#
1G"
1Q$
0D"
1P$
1L$
1K$
1B$
1A$
1=$
1<$
18$
17$
13$
12$
1.$
1-$
1)$
1($
1$$
1#$
1}#
1|#
1x#
1w#
1s#
1r#
1i#
1h#
1d#
1c#
1_#
1^#
1Z#
1Y#
1U#
1T#
1P#
1O#
1K#
1J#
1F#
1E#
1A#
1@#
1<#
1;#
1o$
1\$
1n$
1Z$
1j$
1V$
0&#
1i$
1U$
0E"
1e$
b11111111111111111111111110011000 /#
1G$
1a$
0R$
0M$
0C$
0>$
09$
04$
0/$
0*$
0%$
0~#
0y#
0t#
0j#
0e#
0`#
0[#
0V#
0Q#
0L#
0G#
0B#
0=#
0p$
0k$
0W$
0C"
b1100100 (#
b1100100 .#
1o#
1c$
1^$
1E$
1N$
1I$
1?$
1:$
15$
10$
1+$
1&$
1!$
1z#
1u#
1p#
1f#
1a#
1\#
1W#
1R#
1M#
1H#
1C#
1>#
19#
1l$
1g$
1b$
1S$
1D$
1k#
b10000000000000000000000001100 2"
b11001000 )#
b11001000 ,#
b11111111111111111111111110011100 {"
b11111111111111111111111110011100 ##
b11111111111111111111111110011100 +#
b1000001001001010110011 J
b1000001001001010110011 Y
b1000001001001010110011 \
b1000001001001010110011 $"
b11001000 |"
b11001000 %#
b11001000 ~"
b11111111111111111111111110011100 }"
b100 0"
b1000010000000010 ("
b100001000000001 4"
b10000000100 +"
b1000000010 @"
b10000000010 *"
b10000000100 )"
b1000000001000001000000000000000 A"
b100000 n
b100000 r
b10 V
b100 x"
1N"
0Z"
b11 g"
b10 j"
b1 h"
b1000001000000000000000 `"
b1000000000000010 o"
b100000000010 l"
b11 n"
b10 m"
b11001000 k"
b11111111111111111111111110011100 i"
b10000000000000000100000000010 ?"
b10000000000000000000000000000 f"
b1000000001000001000001000110011 b
b1000000001000001000001000110011 %"
b1000000001000001000001000110011 p"
b10000000000000000000000000100 q"
b10000000000000000000000001100 1"
b10000000000000000000000001000 K
b10000000000000000000000001000 ^
b10000000000000000000000001000 !#
b10 A
1G
1<
#320000000000
0G
0<
#330000000000
b11111111111111111111111011010100 B"
b11111111111111111111111011010100 *#
b100 k
b100 p
b100 t
b100 w
1m#
17#
1&#
0i$
1U$
1F$
1E"
0e$
1_$
1G$
1n#
16#
1R$
1M$
1C$
1>$
19$
14$
1/$
1*$
1%$
1~#
1y#
1t#
1j#
1e#
1`#
1[#
1V#
1Q#
1L#
1G#
1B#
1=#
1p$
0k$
1f$
1a$
0\$
1[$
1W$
0H$
1o#
08#
b11111111111111111111111100111111 /#
12#
b10000000000000000000000010000 2"
1O$
1J$
1@$
1;$
16$
11$
1,$
1'$
1"$
1{#
1v#
1q#
1g#
1b#
1]#
1X#
1S#
1N#
1I#
1D#
1?#
1:#
1m$
1h$
0c$
0^$
1Y$
1T$
0E$
1l#
15#
11#
b1000001010001100110011 J
b1000001010001100110011 Y
b1000001010001100110011 \
b1000001010001100110011 $"
b11111111111111111111111100110111 )#
b11111111111111111111111100110111 ,#
b11111111111111111111111011010100 (#
b11111111111111111111111011010100 .#
03#
b11 V
b101 0"
b1 5"
b1001000000000010 ("
b100100000000001 4"
b100000000100 +"
b10000000010 @"
b10 *"
b101 )"
b1000001001000000000000 A"
b1 m
b1 q
b0 n
b0 r
1-#
b11001000 H
b11001000 Q
b11001000 h
b11001000 F"
b1100100 >"
b1100100 3"
b11001 O
b10000000000000000000000010000 1"
b10000000000000000000000001100 K
b10000000000000000000000001100 ^
b10000000000000000000000001100 !#
b1000001001001010110011 b
b1000001001001010110011 %"
b1000001001001010110011 p"
b10000000000000000000000001000 q"
b10000 ["
b10000 $#
b100 g"
b1000000001000001000000000000000 `"
b1000010000000010 o"
b10000000100 l"
b10000000100 n"
b10000000010 m"
b10000000000000000010000001000 ?"
b10000000000000000000000000100 f"
1J"
0P"
b11 X"
b10000000000000000100000000010 &"
b10000000000000000100000000010 S"
b11001000 Y"
b1100100 M
b1100100 i
b1100100 x
b1100100 Q"
b10000000000000000000000000100 W"
1t"
b11 A
1G
1<
#340000000000
0G
0<
#350000000000
b11000 k
b11000 p
b11000 t
b11000 w
b11111111111111111001110000000000 B"
b11111111111111111001110000000000 *#
0'#
1G"
1Q$
0D"
1P$
1L$
1K$
1B$
1A$
1=$
1<$
18$
17$
13$
12$
1.$
1-$
1)$
1($
1$$
1#$
1}#
1|#
1x#
1w#
1s#
1r#
1i#
1h#
1d#
1c#
1_#
1^#
1Z#
1Y#
1U#
1T#
1P#
1O#
1K#
1J#
1F#
1E#
1A#
1@#
1<#
1;#
1o$
0F$
0n#
0&#
1n$
1i$
0E"
1j$
1e$
0d$
0_$
0m#
0R$
0M$
0C$
0>$
09$
04$
0/$
0*$
0%$
0~#
0y#
0t#
0j#
0e#
0`#
0[#
0V#
0Q#
0L#
0G#
0B#
0=#
0p$
0k$
0f$
1a$
0`$
1\$
0[$
0W$
0H$
1o#
07#
06#
0O$
0J$
0@$
0;$
06$
01$
0,$
0'$
0"$
0{#
0v#
0q#
0g#
0b#
0]#
0X#
0S#
0N#
0I#
0D#
0?#
0:#
0m$
0h$
1c$
1^$
0Y$
0T$
1E$
0l#
05#
01#
b11111111111111111111111110011000 /#
02#
b10000000000000000000000010100 2"
b11001000 )#
b11001000 ,#
b1100100 (#
b1100100 .#
03#
b1000001011001110110011 J
b1000001011001110110011 Y
b1000001011001110110011 \
b1000001011001110110011 $"
b1100100 "#
b1100100 r$
b11111111111111111111111011010100 >"
b11111111111111111111111011010100 3"
b11111110110101 O
0-#
b110 0"
b10 5"
b1010000000000010 ("
b101000000000001 4"
b110 +"
b11 @"
b110 )"
b1000001010000000000000 A"
b10 m
b10 q
b100 V
b11 y"
b11 q$
b10000000000000000000000000100 x"
b1100100 u"
1M"
b100 X"
b10000000000000000010000001000 &"
b10000000000000000010000001000 S"
b11111111111111111111111011010100 M
b11111111111111111111111011010100 i
b11111111111111111111111011010100 x
b11111111111111111111111011010100 Q"
b10000000000000000000000001000 W"
b100 ["
b100 $#
b1 b"
b101 g"
b1000001001000000000000 `"
b1001000000000010 o"
b100000000100 l"
b101 n"
b10 m"
b10000000000000000100000001100 ?"
b10000000000000000000000001000 f"
b1000001010001100110011 b
b1000001010001100110011 %"
b1000001010001100110011 p"
b10000000000000000000000001100 q"
b10000000000000000000000010100 1"
b10000000000000000000000010000 K
b10000000000000000000000010000 ^
b10000000000000000000000010000 !#
b100 A
1G
1<
#360000000000
0G
0<
#370000000000
b10111 k
b10111 p
b10111 t
b10111 w
b1 B"
b1 *#
b11 N
b11 R
b11 j
b11 I"
1m#
17#
1&#
0i$
1U$
1F$
1E"
0e$
1_$
1G$
1n#
16#
1R$
1M$
1C$
1>$
19$
14$
1/$
1*$
1%$
1~#
1y#
1t#
1j#
1e#
1`#
1[#
1V#
1Q#
1L#
1G#
1B#
1=#
1p$
0k$
1f$
1a$
0\$
1[$
1W$
0H$
1o#
08#
b11111111111111111111111100111111 /#
12#
b10000000000000000000000011000 2"
1O$
1J$
1@$
1;$
16$
11$
1,$
1'$
1"$
1{#
1v#
1q#
1g#
1b#
1]#
1X#
1S#
1N#
1I#
1D#
1?#
1:#
1m$
1h$
0c$
0^$
1Y$
1T$
0E$
1l#
15#
11#
b1000001100010000110011 J
b1000001100010000110011 Y
b1000001100010000110011 \
b1000001100010000110011 $"
b11111111111111111111111100110111 )#
b11111111111111111111111100110111 ,#
b11111111111111111111111011010100 (#
b11111111111111111111111011010100 .#
03#
b101 V
b111 0"
b11 5"
b1011000000000010 ("
b101100000000001 4"
b100000000110 +"
b10000000011 @"
b111 )"
b1000001011000000000000 A"
b11 m
b11 q
1-#
b11111111111111111001110000000000 >"
b11111111111111111001110000000000 3"
b10011100000000 O
b11111111111111111111111011010100 "#
b11111111111111111111111011010100 r$
b1100100 -%
b10000000000000000000000011000 1"
b10000000000000000000000010100 K
b10000000000000000000000010100 ^
b10000000000000000000000010100 !#
b1000001011001110110011 b
b1000001011001110110011 %"
b1000001011001110110011 p"
b10000000000000000000000010000 q"
b11000 ["
b11000 $#
b10 b"
b110 g"
b1000001010000000000000 `"
b1010000000000010 o"
b110 l"
b110 n"
b10000000000000000000000010010 ?"
b10000000000000000000000001100 f"
0M"
0="
18"
b1 T"
b101 X"
b10000000000000000100000001100 &"
b10000000000000000100000001100 S"
b11111111111111111001110000000000 M
b11111111111111111001110000000000 i
b11111111111111111001110000000000 x
b11111111111111111001110000000000 Q"
b10000000000000000000000001100 W"
b100 y"
b100 q$
b10000000000000000000000001000 x"
b11111111111111111111111011010100 u"
b101 A
1G
1<
#380000000000
0G
0<
#390000000000
b11 k
b11 p
b11 t
b11 w
b1111 N
b1111 R
b1111 j
b1111 I"
b0 B"
b0 *#
b10000000000000000000000011100 2"
b1000001110010010110011 J
b1000001110010010110011 Y
b1000001110010010110011 \
b1000001110010010110011 $"
b11111111111111111001110000000000 "#
b11111111111111111001110000000000 r$
b1 >"
b0 3"
b1 H"
b0 O
b1000 0"
b100 5"
b1100000000000010 ("
b110000000000001 4"
b1000 +"
b100 @"
b1000 )"
b1000001100000000000000 A"
b100 m
b100 q
b110 V
b101 y"
b101 q$
b10000000000000000000000001100 x"
b11111111111111111001110000000000 u"
1M"
08"
b10 T"
b110 X"
b10000000000000000000000010010 &"
b10000000000000000000000010010 S"
b1 M
b1 i
b1 x
b1 Q"
b10000000000000000000000010000 W"
b10111 ["
b10111 $#
b11 b"
b111 g"
b1000001011000000000000 `"
b1011000000000010 o"
b100000000110 l"
b111 n"
b10000000000000000100000010110 ?"
b10000000000000000000000010000 f"
b1000001100010000110011 b
b1000001100010000110011 %"
b1000001100010000110011 p"
b10000000000000000000000010100 q"
b10000000000000000000000011100 1"
b10000000000000000000000011000 K
b10000000000000000000000011000 ^
b10000000000000000000000011000 !#
b11111111111111111111111011010100 0%
b11111111111111111111111011010100 >
b1010010001011010101010001111001011100000110010100100000010100110101010101000010 @
b10 ?
b1010010001011010101010001111001011100000110010100100000010100110101010101000010 ?%
b11111111111111111111111011010100 =%
b100 >%
0B
b110 A
1G
1<
#400000000000
0G
0<
#410000000000
b10 k
b10 p
b10 t
b10 w
b11111111111111111111111101010100 B"
b11111111111111111111111101010100 *#
b0 N
b0 R
b0 j
b0 I"
0'#
1G"
1Q$
0D"
1P$
1L$
1K$
1B$
1A$
1=$
1<$
18$
17$
13$
12$
1.$
1-$
1)$
1($
1$$
1#$
1}#
1|#
1x#
1w#
1s#
1r#
1i#
1h#
1d#
1c#
1_#
1^#
1Z#
1Y#
1U#
1T#
1P#
1O#
1K#
1J#
1F#
1E#
1A#
1@#
1<#
1;#
1o$
0F$
0n#
0&#
1n$
1i$
0E"
1j$
1e$
0d$
0_$
0m#
0R$
0M$
0C$
0>$
09$
04$
0/$
0*$
0%$
0~#
0y#
0t#
0j#
0e#
0`#
0[#
0V#
0Q#
0L#
0G#
0B#
0=#
0p$
0k$
0f$
1a$
0`$
1\$
0[$
0W$
0H$
1o#
07#
06#
b10000000000000000000000100000 2"
0O$
0J$
0@$
0;$
06$
01$
0,$
0'$
0"$
0{#
0v#
0q#
0g#
0b#
0]#
0X#
0S#
0N#
0I#
0D#
0?#
0:#
0m$
0h$
1c$
1^$
0Y$
0T$
1E$
0l#
05#
01#
b11111111111111111111111110011000 /#
02#
b1000001111010100110011 J
b1000001111010100110011 Y
b1000001111010100110011 \
b1000001111010100110011 $"
b11001000 )#
b11001000 ,#
b1100100 (#
b1100100 .#
03#
b111 V
b1001 0"
b110 5"
b1110000000000010 ("
b111000000000001 4"
b100000001000 +"
b10000000100 @"
b1001 )"
b1000001110000000000000 A"
b110 m
b110 q
0-#
b0 >"
b0 H"
b1 "#
b1 r$
b11111111111111111001110000000000 1%
b10000000000000000000000100000 1"
b10000000000000000000000011100 K
b10000000000000000000000011100 ^
b10000000000000000000000011100 !#
b1000001110010010110011 b
b1000001110010010110011 %"
b1000001110010010110011 p"
b10000000000000000000000011000 q"
b11 ["
b11 $#
b100 b"
b1000 g"
b1000001100000000000000 `"
b1100000000000010 o"
b1000 l"
b1000 n"
b10000000000000000000000011100 ?"
b10000000000000000000000010100 f"
b11 T"
b111 X"
b10000000000000000100000010110 &"
b10000000000000000100000010110 S"
b0 M
b0 i
b0 x
b0 Q"
b10000000000000000000000010100 W"
b110 y"
b110 q$
b10000000000000000000000010000 x"
b1 u"
b11111111111111111001110000000000 >
b1010010001011010101010001111001011100000110010100100000010100110100110001001100 @
b11 ?
b1010010001011010101010001111001011100000110010100100000010100110100110001001100 ?%
b11111111111111111001110000000000 =%
b101 >%
0B
b0 A
1G
1<
#420000000000
0G
0<
#430000000000
b1 k
b1 p
b1 t
b1 w
b1 N
b1 R
b1 j
b1 I"
b11111111111111111111111111011100 B"
b11111111111111111111111111011100 *#
b10000000000000000000000100100 2"
b1000001101010110110011 J
b1000001101010110110011 Y
b1000001101010110110011 \
b1000001101010110110011 $"
b0 "#
b0 r$
b11111111111111111111111101010100 >"
b11111111111111111111111101010100 3"
b11111111010101 O
b1010 0"
b111 5"
b1111000000000010 ("
b111100000000001 4"
b1010 +"
b101 @"
b1010 )"
b1000001111000000000000 A"
b111 m
b111 q
b1000 V
b111 y"
b111 q$
b10000000000000000000000010100 x"
b0 u"
0M"
1:"
b100 T"
b1000 X"
b10000000000000000000000011100 &"
b10000000000000000000000011100 S"
b11111111111111111111111101010100 M
b11111111111111111111111101010100 i
b11111111111111111111111101010100 x
b11111111111111111111111101010100 Q"
b10000000000000000000000011000 W"
b10 ["
b10 $#
b110 b"
b1001 g"
b1000001110000000000000 `"
b1110000000000010 o"
b100000001000 l"
b1001 n"
b10000000000000000100000100000 ?"
b10000000000000000000000011000 f"
b1000001111010100110011 b
b1000001111010100110011 %"
b1000001111010100110011 p"
b10000000000000000000000011100 q"
b10000000000000000000000100100 1"
b10000000000000000000000100000 K
b10000000000000000000000100000 ^
b10000000000000000000000100000 !#
b1 2%
b1 >
b1010010001011010101010001111001011100000110010100100000010100110100110001010100 @
b100 ?
b1010010001011010101010001111001011100000110010100100000010100110100110001010100 ?%
b1 =%
b110 >%
0B
1G
1<
#440000000000
0G
0<
#450000000000
b101 k
b101 p
b101 t
b101 w
b10001000 B"
b10001000 *#
b0 N
b0 R
b0 j
b0 I"
b10000000000000000000000101000 2"
b1000000001000001101011000110011 J
b1000000001000001101011000110011 Y
b1000000001000001101011000110011 \
b1000000001000001101011000110011 $"
b1001 V
b1011 0"
b101 5"
b1101000000000010 ("
b110100000000001 4"
b100000001010 +"
b10000000101 @"
b1011 )"
b1000001101000000000000 A"
b101 m
b101 q
b11111111111111111111111111011100 >"
b11111111111111111111111111011100 3"
b11111111110111 O
b11111111111111111111111101010100 "#
b11111111111111111111111101010100 r$
b10000000000000000000000101000 1"
b10000000000000000000000100100 K
b10000000000000000000000100100 ^
b10000000000000000000000100100 !#
b1000001101010110110011 b
b1000001101010110110011 %"
b1000001101010110110011 p"
b10000000000000000000000100000 q"
b1 ["
b1 $#
b111 b"
b1010 g"
b1000001111000000000000 `"
b1111000000000010 o"
b1010 l"
b1010 n"
b10000000000000000000000100110 ?"
b10000000000000000000000011100 f"
0:"
19"
b110 T"
b1001 X"
b10000000000000000100000100000 &"
b10000000000000000100000100000 S"
b11111111111111111111111111011100 M
b11111111111111111111111111011100 i
b11111111111111111111111111011100 x
b11111111111111111111111111011100 Q"
b10000000000000000000000011100 W"
b1000 y"
b1000 q$
b10000000000000000000000011000 x"
b11111111111111111111111101010100 u"
b11111111111111111111111101010100 >
b1010010001011010101010001111001011100000110010100100000010110000100111101010010 @
b110 ?
b1010010001011010101010001111001011100000110010100100000010110000100111101010010 ?%
b11111111111111111111111101010100 =%
b1000 >%
0B
1G
1<
#460000000000
0G
0<
#470000000000
b110 k
b110 p
b110 t
b110 w
b111111111111111111111111 B"
b111111111111111111111111 *#
b10000000000000000000000101100 2"
b1010000001001011010010011 J
b1010000001001011010010011 Y
b1010000001001011010010011 \
b1010000001001011010010011 $"
b11111111111111111111111111011100 "#
b11111111111111111111111111011100 r$
b10001000 >"
b10001000 3"
b100010 O
b1100 0"
b1101010000000010 ("
b110101000000001 4"
b10000001100 +"
b1000000110 @"
b10000000010 *"
b10000001100 )"
b1000000001000001101000000000000 A"
b100000 n
b100000 r
b1010 V
b1001 y"
b1001 q$
b10000000000000000000000011100 x"
b11111111111111111111111111011100 u"
09"
1;"
b111 T"
b1010 X"
b10000000000000000000000100110 &"
b10000000000000000000000100110 S"
b10001000 M
b10001000 i
b10001000 x
b10001000 Q"
b10000000000000000000000100000 W"
b101 ["
b101 $#
b101 b"
b1011 g"
b1000001101000000000000 `"
b1101000000000010 o"
b100000001010 l"
b1011 n"
b10000000000000000100000101010 ?"
b10000000000000000000000100000 f"
b1000000001000001101011000110011 b
b1000000001000001101011000110011 %"
b1000000001000001101011000110011 p"
b10000000000000000000000100100 q"
b10000000000000000000000101100 1"
b10000000000000000000000101000 K
b10000000000000000000000101000 ^
b10000000000000000000000101000 !#
b11111111111111111111111101010100 4%
b1 A
1G
1<
#480000000000
0G
0<
#490000000000
1l
b100 k
b100 p
b100 t
b100 w
b1100000 v
b11111111111111111111111111111111 B"
b11111111111111111111111111111111 *#
b10000000000000000000000110000 2"
b1010000001101011100010011 J
b1010000001101011100010011 Y
b1010000001101011100010011 \
b1010000001101011100010011 $"
b0 ,"
b0 8%
b1011 V
b10100 -"
b10100 t$
b1101 0"
b1 5"
b1001000000010100 ("
b100100000001010 4"
b100000001100 +"
b10000000110 @"
b10100 *"
b1101 )"
b1010000001001000000000000 A"
b1 m
b1 q
b0 n
b0 r
b10011 o
b10011 s
b10011 u
b111111111111111111111111 >"
b111111111111111111111110 3"
b11 H"
b11111111111111 O
b10001000 "#
b10001000 r$
b11111111111111111111111111011100 5%
b10000000000000000000000110000 1"
b10000000000000000000000101100 K
b10000000000000000000000101100 ^
b10000000000000000000000101100 !#
b1010000001001011010010011 b
b1010000001001011010010011 %"
b1010000001001011010010011 p"
b10000000000000000000000101000 q"
b110 ["
b110 $#
b1100 g"
b1000000001000001101000000000000 `"
b1101010000000010 o"
b10000001100 l"
b10000001100 n"
b10000000010 m"
b10000000000000000010000110000 ?"
b10000000000000000000000100100 f"
1<"
0;"
b101 T"
b1011 X"
b10000000000000000100000101010 &"
b10000000000000000100000101010 S"
b111111111111111111111111 M
b111111111111111111111111 i
b111111111111111111111111 x
b111111111111111111111111 Q"
b10000000000000000000000100100 W"
b1010 y"
b1010 q$
b10000000000000000000000100000 x"
b10001000 u"
b11111111111111111111111111011100 >
b10100100010110101010100011110010111000001100101001000000100111101010010 @
b111 ?
b10100100010110101010100011110010111000001100101001000000100111101010010 ?%
b11111111111111111111111111011100 =%
b1001 >%
0B
b10 A
1G
1<
#500000000000
0G
0<
#510000000000
b101 k
b101 p
b101 t
b101 w
b11111001110000000000000000000000 B"
b11111001110000000000000000000000 *#
1'#
0G"
0Q$
1E"
1&#
1R$
0D"
0P$
0L$
1M$
0K$
0B$
1C$
0A$
0=$
1>$
0<$
08$
19$
07$
03$
14$
02$
0.$
1/$
0-$
0)$
1*$
0($
0$$
1%$
0#$
0}#
1~#
0|#
0x#
1y#
0w#
0s#
1t#
0r#
0i#
1j#
0h#
0d#
1e#
0c#
0_#
1`#
0^#
0Z#
1[#
0Y#
0U#
1V#
0T#
0P#
1Q#
0O#
0K#
1L#
0J#
0F#
1G#
0E#
0A#
1B#
0@#
0<#
1=#
0;#
0o$
1p$
0n$
0j$
1k$
0i$
1U$
1F$
0e$
1G$
b11100 /#
1n#
1f$
0a$
1W$
0H$
b11111111111111111111111110110000 (#
b11111111111111111111111110110000 .#
0o#
0c$
0^$
1T$
0E$
1l#
b10000000000000000000000110100 2"
b10100 )#
b10100 ,#
b1000001010000001101011110010011 J
b1000001010000001101011110010011 Y
b1000001010000001101011110010011 \
b1000001010000001101011110010011 $"
b111111111111111111111111 "#
b111111111111111111111111 r$
b11111111111111111111111111111111 >"
b11111111111111111111111111111110 3"
b10100 |"
b10100 %#
b0 ~"
b1110 0"
b101 5"
b1101000000010100 ("
b110100000001010 4"
b1110 +"
b111 @"
b1110 )"
b1010000001101000000000000 A"
b101 m
b101 q
b1100 V
b1011 y"
b1011 q$
b10000000000000000000000100100 x"
b111111111111111111111111 u"
b1100 X"
b10000000000000000010000110000 &"
b10000000000000000010000110000 S"
b11111111111111111111111111111111 M
b11111111111111111111111111111111 i
b11111111111111111111111111111111 x
b11111111111111111111111111111111 Q"
b10000000000000000000000101000 W"
b100 ["
b100 $#
1Z"
b1 b"
b1101 g"
b10100 j"
b1010000001001000000000000 `"
b1001000000010100 o"
b100000001100 l"
b1101 n"
b10100 m"
b0 k"
b10000000000000000100000110100 ?"
b10000000000000000000000101000 f"
b1010000001101011100010011 b
b1010000001101011100010011 %"
b1010000001101011100010011 p"
b10000000000000000000000101100 q"
b10000000000000000000000110100 1"
b10000000000000000000000110000 K
b10000000000000000000000110000 ^
b10000000000000000000000110000 !#
b10001000 v$
b10001000 >
b1010010001011010101010001111001011100000110010100100000010000010100111001000100 @
b1000 ?
b1010010001011010101010001111001011100000110010100100000010000010100111001000100 ?%
b10001000 =%
b1010 >%
0B
b0 A
1G
1<
#520000000000
0G
0<
#530000000000
b110 k
b110 p
b110 t
b110 w
b111111111111 B"
b111111111111 *#
b11 N
b11 R
b11 j
b11 I"
b10000000000000000000000111000 2"
b0 J
b0 Y
b0 \
b0 $"
b0 H
b0 Q
b0 h
b0 F"
b1101 V
b1111 0"
b1101010000010100 ("
b110101000001010 4"
b110000001110 +"
b11000000111 @"
b10000010100 *"
b10000001111 )"
b1000001010000001101000000000000 A"
b100000 n
b100000 r
b11111001110000000000000000000000 >"
b11111001110000000000000000000000 3"
b0 H"
b0 O
b11111111111111111111111111111111 "#
b11111111111111111111111111111111 r$
b111111111111111111111111 w$
b10000000000000000000000111000 1"
b10000000000000000000000110100 K
b10000000000000000000000110100 ^
b10000000000000000000000110100 !#
b1000001010000001101011110010011 b
b1000001010000001101011110010011 %"
b1000001010000001101011110010011 p"
b10000000000000000000000110000 q"
b101 ["
b101 $#
b101 b"
b1110 g"
b1010000001101000000000000 `"
b1101000000010100 o"
b1110 l"
b1110 n"
b10000000000000000000000111010 ?"
b10000000000000000000000101100 f"
0J"
1M"
18"
0<"
b1 T"
b1101 X"
b10000000000000000100000110100 &"
b10000000000000000100000110100 S"
b0 Y"
b11111001110000000000000000000000 M
b11111001110000000000000000000000 i
b11111001110000000000000000000000 x
b11111001110000000000000000000000 Q"
b10000000000000000000000101100 W"
b1100 y"
b1100 q$
b10000000000000000000000101000 x"
b11111111111111111111111111111111 u"
b111111111111111111111111 >
b1010010001011010101010001111001011100000110010100100000010100110101001001001100 @
b1001 ?
b1010010001011010101010001111001011100000110010100100000010100110101001001001100 ?%
b111111111111111111111111 =%
b1011 >%
0B
1G
1<
#540000000000
0G
0<
#550000000000
0e
0l
b0 k
b0 p
b0 t
b0 w
b0 v
b0 N
b0 R
b0 j
b0 I"
b11111111111111111111111111111111 B"
b11111111111111111111111111111111 *#
0'#
1G"
1Q$
0E"
0&#
0R$
0D"
1P$
1L$
0M$
1K$
1B$
0C$
1A$
1=$
0>$
1<$
18$
09$
17$
13$
04$
12$
1.$
0/$
1-$
1)$
0*$
1($
1$$
0%$
1#$
1}#
0~#
1|#
1x#
0y#
1w#
1s#
0t#
1r#
1i#
0j#
1h#
1d#
0e#
1c#
1_#
0`#
1^#
1Z#
0[#
1Y#
1U#
0V#
1T#
1P#
0Q#
1O#
1K#
0L#
1J#
1F#
0G#
1E#
1A#
0B#
1@#
b11111111111111111111110000011100 /#
1<#
b1110110000 (#
b1110110000 .#
0=#
1:#
b10000000000000000000000111100 2"
b10000010100 )#
b10000010100 ,#
b0 ."
b0 7%
b11111001110000000000000000000000 "#
b11111001110000000000000000000000 r$
b111111111111 >"
b111111111110 3"
b11 H"
b1111111111 O
b10000010100 |"
b10000010100 %#
b0 /"
b0 s$
b0 -"
b0 t$
b0 0"
b0 5"
b0 ("
b0 4"
b0 +"
b0 @"
b0 *"
b0 )"
b0 A"
b0 m
b0 q
b0 n
b0 r
b0 o
b0 s
b0 u
b1110 V
b1101 y"
b1101 q$
b10000000000000000000000101100 x"
b11111001110000000000000000000000 u"
08"
1<"
b101 T"
b1110 X"
b10000000000000000000000111010 &"
b10000000000000000000000111010 S"
b111111111111 M
b111111111111 i
b111111111111 x
b111111111111 Q"
b10000000000000000000000110000 W"
b110 ["
b110 $#
b1111 g"
b1000001010000001101000000000000 `"
b1101010000010100 o"
b110000001110 l"
b10000001111 n"
b10000010100 m"
b10000000000000000110000111110 ?"
b10000000000000000000000110000 f"
b0 b
b0 %"
b0 p"
b10000000000000000000000110100 q"
b10000000000000000000000111100 1"
b10000000000000000000000111000 K
b10000000000000000000000111000 ^
b10000000000000000000000111000 !#
b11111111111111111111111111111111 x$
b11111111111111111111111111111111 >
b1010010001011010101010001111001011100000110010100100000010100110101001001000001 @
b1010 ?
b1010010001011010101010001111001011100000110010100100000010100110101001001000001 ?%
b11111111111111111111111111111111 =%
b1100 >%
0B
1G
1<
#560000000000
0G
0<
#570000000000
b0 B"
b0 *#
1'#
1C"
0W$
0\$
0&#
0G"
0P$
0K$
0A$
0<$
07$
02$
0-$
0($
0#$
0|#
0w#
0r#
0h#
0c#
0^#
0Y#
0T#
0O#
0J#
0E#
0@#
0U$
0F$
0Z$
0E"
0Q$
0L$
0B$
0=$
08$
03$
0.$
0)$
0$$
0}#
0x#
0s#
0i#
0d#
0_#
0Z#
0U#
0P#
0K#
0F#
0A#
0<#
0G$
0n#
b0 /#
0V$
0R$
0M$
0C$
0>$
09$
04$
0/$
0*$
0%$
0~#
0y#
0t#
0j#
0e#
0`#
0[#
0V#
0Q#
0L#
0G#
0B#
0p$
0k$
0f$
b0 (#
b0 .#
0H$
b10000000000000000000001000000 2"
0:#
0T$
0l#
0N$
0I$
0?$
0:$
05$
00$
0+$
0&$
0!$
0z#
0u#
0p#
0f#
0a#
0\#
0W#
0R#
0M#
0H#
0C#
0>#
09#
0l$
0g$
0b$
0S$
0D$
0k#
b0 )#
b0 ,#
b0 {"
b0 ##
b0 +#
b1111 V
b0 |"
b0 %#
b0 }"
b11111111111111111111111111111111 >"
b11111111111111111111111111111110 3"
b11111111111111 O
b111111111111 "#
b111111111111 r$
b11111001110000000000000000000000 y$
b10000000000000000000001000000 1"
b10000000000000000000000111100 K
b10000000000000000000000111100 ^
b10000000000000000000000111100 !#
b10000000000000000000000111000 q"
b0 ["
b0 $#
0Z"
0^"
b0 b"
b0 g"
b0 j"
b0 h"
b0 `"
b0 o"
b0 l"
b0 n"
b0 m"
b0 i"
b10000000000000000000000110100 ?"
b10000000000000000000000110100 f"
1J"
0M"
b1111 X"
b10000000000000000110000111110 &"
b10000000000000000110000111110 S"
b11111111111111111111111111111111 M
b11111111111111111111111111111111 i
b11111111111111111111111111111111 x
b11111111111111111111111111111111 Q"
b10000000000000000000000110100 W"
b1110 y"
b1110 q$
b10000000000000000000000110000 x"
b111111111111 u"
b11111001110000000000000000000000 >
b101001000101101010101000111100101110000011001010010000001010011010011000100110001001001 @
b1011 ?
b101001000101101010101000111100101110000011001010010000001010011010011000100110001001001 ?%
b11111001110000000000000000000000 =%
b1101 >%
0B
1G
1<
#580000000000
0G
0<
#590000000000
b1 N
b1 R
b1 j
b1 I"
b10000000000000000000001000100 2"
b0 7"
b0 6"
b11111111111111111111111111111111 "#
b11111111111111111111111111111111 r$
b0 >"
b0 3"
b0 H"
b0 O
b10000 V
b1111 y"
b1111 q$
b10000000000000000000000110100 x"
b11111111111111111111111111111111 u"
0N"
0J"
1P"
1="
0<"
b0 T"
b0 X"
b10000000000000000000000110100 &"
b10000000000000000000000110100 S"
b0 M
b0 i
b0 x
b0 Q"
b10000000000000000000000111000 W"
b10000000000000000000000111000 ?"
b10000000000000000000000111000 f"
b10000000000000000000000111100 q"
b10000000000000000000001000100 1"
b10000000000000000000001000000 K
b10000000000000000000001000000 ^
b10000000000000000000001000000 !#
b111111111111 z$
b111111111111 >
b101001000101101010101000111100101110000011001010010000001010011010100100100110001001001 @
b1100 ?
b101001000101101010101000111100101110000011001010010000001010011010100100100110001001001 ?%
b111111111111 =%
b1110 >%
0B
1G
1<
#600000000000
0G
0<
#610000000000
b10000000000000000000001001000 2"
b0 7"
b0 6"
b10001 V
b0 "#
b0 r$
b11111111111111111111111111111111 {$
b10000000000000000000001001000 1"
b10000000000000000000001000100 K
b10000000000000000000001000100 ^
b10000000000000000000001000100 !#
b10000000000000000000001000000 q"
b10000000000000000000000111100 ?"
b10000000000000000000000111100 f"
b10000000000000000000000111000 &"
b10000000000000000000000111000 S"
b10000000000000000000000111100 W"
0t"
b0 y"
b0 q$
b10000000000000000000000111000 x"
b0 u"
b11111111111111111111111111111111 >
b101001000101101010101000111100101110000011001010010000001010011010100100100000101001001 @
b1101 ?
b101001000101101010101000111100101110000011001010010000001010011010100100100000101001001 ?%
b11111111111111111111111111111111 =%
b1111 >%
0B
1G
1<
#620000000000
0G
0<
#630000000000
b10000000000000000000001001100 2"
b10010 V
b10000000000000000000000111100 x"
b10000000000000000000000111100 &"
b10000000000000000000000111100 S"
b10000000000000000000001000000 W"
b10000000000000000000001000000 ?"
b10000000000000000000001000000 f"
b10000000000000000000001000100 q"
b10000000000000000000001001100 1"
b10000000000000000000001001000 K
b10000000000000000000001001000 ^
b10000000000000000000001001000 !#
b11111111111111111111111100111000 .
b0 {$
b0 z$
b0 y$
b0 x$
b0 w$
b0 v$
b0 5%
b0 4%
b0 2%
b0 1%
b0 0%
b0 -%
b0 "%
b11111111111111111111111110011100 u$
b100000000000000 A%
1B
1G
1<
#640000000000
1]
0E
0G
0<
#650000000000
1e
1l
b1100000 v
b10000000000000000000000000100 2"
b11110011100000001000000110010011 J
b11110011100000001000000110010011 Y
b11110011100000001000000110010011 \
b11110011100000001000000110010011 $"
b0 V
b10011 o
b10011 s
b10011 u
b10000000000000000000000000100 1"
b10000000000000000000000000000 K
b10000000000000000000000000000 ^
b10000000000000000000000000000 !#
b10011 b
b10011 %"
b10011 p"
b0 q"
b0 ?"
b0 f"
0P"
b0 &"
b0 S"
b0 W"
b0 x"
1G
1<
#660000000000
0G
0<
#670000000000
1G
1<
#680000000000
0G
0<
#690000000000
1G
1<
#700000000000
0]
b11111111111111111111111011010100 >
b1001001001011010101010001111001011100000110010100100000010000010100010001000100 @
b1110 ?
0B
b1001001001011010101010001111001011100000110010100100000010000010100010001000100 ?%
b11111111111111111111111011010100 =%
b11 >%
1E
0G
0<
#710000000000
b10000000000000000000000001000 2"
b11111111111111111111111110011100 ."
b11111111111111111111111110011100 7%
b11110011100000001010001000010011 J
b11110011100000001010001000010011 Y
b11110011100000001010001000010011 \
b11110011100000001010001000010011 $"
b1 /"
b1 s$
b11000 -"
b11000 t$
b11 0"
b11111111111100001000011100111000 ("
b10000100001110011100 4"
b11111111111111111111111100100010 +"
b111110010001 @"
b11111111111111111111111100111000 *"
b11111111111111111111111100100011 )"
b11110011100000001000000000000000 A"
b1111001 n
b1111001 r
b1 V
1P"
b100 W"
1Z"
1^"
b11110011100000001000000110010011 b
b11110011100000001000000110010011 %"
b11110011100000001000000110010011 p"
b10000000000000000000000000000 q"
b10000000000000000000000001000 1"
b10000000000000000000000000100 K
b10000000000000000000000000100 ^
b10000000000000000000000000100 !#
b1 A
1G
1<
#720000000000
0G
0<
#730000000000
b11111111111111111111111011010100 B"
b11111111111111111111111011010100 *#
b11000 k
b11000 p
b11000 t
b11000 w
1a$
1&#
1_$
1E"
1[$
0'#
1R$
1M$
1C$
1>$
19$
14$
1/$
1*$
1%$
1~#
1y#
1t#
1j#
1e#
1`#
1[#
1V#
1Q#
1L#
1G#
1B#
1=#
1p$
1W$
1G"
1P$
1K$
1A$
1<$
17$
12$
1-$
1($
1#$
1|#
1w#
1r#
1h#
1c#
1^#
1Y#
1T#
1O#
1J#
1E#
1@#
1;#
1n$
1Z$
1U$
1Q$
1L$
1B$
1=$
18$
13$
1.$
1)$
1$$
1}#
1x#
1s#
1i#
1d#
1_#
1Z#
1U#
1P#
1K#
1F#
1A#
1<#
1o$
1j$
1V$
b11111111111111111111111100111000 /#
1G$
0\$
1f$
0C"
b11111111111111111111111011010100 (#
b11111111111111111111111011010100 .#
1o#
b10000000000000000000000001100 2"
1O$
1J$
1@$
1;$
16$
11$
1,$
1'$
1"$
1{#
1v#
1q#
1g#
1b#
1]#
1X#
1S#
1N#
1I#
1D#
1?#
1:#
1m$
1h$
1Y$
1T$
1E$
1N$
1I$
1?$
1:$
15$
10$
1+$
1&$
1!$
1z#
1u#
1p#
1f#
1a#
1\#
1W#
1R#
1M#
1H#
1C#
1>#
19#
1l$
1g$
1b$
1S$
1D$
1k#
b11110011100000001011001010010011 J
b11110011100000001011001010010011 Y
b11110011100000001011001010010011 \
b11110011100000001011001010010011 $"
b11111111111111111111111100111000 )#
b11111111111111111111111100111000 ,#
b11111111111111111111111110011100 {"
b11111111111111111111111110011100 ##
b11111111111111111111111110011100 +#
b10 V
b100 0"
b10 5"
b11111111111100001010011100111000 ("
b10000101001110011100 4"
b11111111111111111111011100100100 +"
b101110010010 @"
b11111111111111111111111100100100 )"
b11110011100000001010000000000000 A"
b10 m
b10 q
b11111111111111111111111100111000 |"
b11111111111111111111111100111000 %#
b11111111111111111111111110011100 }"
b10000000000000000000000001100 1"
b10000000000000000000000001000 K
b10000000000000000000000001000 ^
b10000000000000000000000001000 !#
b11110011100000001010001000010011 b
b11110011100000001010001000010011 %"
b11110011100000001010001000010011 p"
b10000000000000000000000000100 q"
b11 g"
b11000 j"
b1 h"
b11110011100000001000000000000000 `"
b11111111111100001000011100111000 o"
b11111111111111111111111100100010 l"
b11111111111111111111111100100011 n"
b11111111111111111111111100111000 m"
b11111111111111111111111110011100 i"
b1111111111111111111100100010 ?"
b10000000000000000000000000000 f"
1N"
b100 x"
b10 A
1G
1<
#740000000000
0G
0<
#750000000000
b10111 k
b10111 p
b10111 t
b10111 w
b0 B"
b0 *#
0'#
1G"
1Q$
0D"
1P$
1L$
1K$
1B$
1A$
1=$
1<$
18$
17$
13$
12$
1.$
1-$
1)$
1($
1$$
1#$
1}#
1|#
1x#
1w#
1s#
1r#
1i#
1h#
1d#
1c#
1_#
1^#
1Z#
1Y#
1U#
1T#
1P#
1O#
1K#
1J#
1F#
1E#
1A#
1@#
1<#
1;#
1Z$
1o$
1V$
1m#
17#
0&#
1n$
1i$
1U$
1F$
0E"
1j$
1e$
0d$
0_$
1G$
1n#
16#
0R$
0M$
0C$
0>$
09$
04$
0/$
0*$
0%$
0~#
0y#
0t#
0j#
0e#
0`#
0[#
0V#
0Q#
0L#
0G#
0B#
0=#
0p$
0k$
0f$
1a$
0`$
1\$
0[$
0W$
0H$
1o#
08#
b11111111111111111111111110011111 /#
12#
0O$
0J$
0@$
0;$
06$
01$
0,$
0'$
0"$
0{#
0v#
0q#
0g#
0b#
0]#
0X#
0S#
0N#
0I#
0D#
0?#
0:#
0m$
0h$
1c$
1^$
0Y$
0T$
0E$
1l#
15#
11#
b10000000000000000000000010000 2"
b11000111 )#
b11000111 ,#
b1100100 (#
b1100100 .#
03#
b11110011100000001100001100010011 J
b11110011100000001100001100010011 Y
b11110011100000001100001100010011 \
b11110011100000001100001100010011 $"
b11111111111111111111111011010100 >"
b11111111111111111111111011010100 3"
b11111110110101 O
1-#
b101 0"
b11 5"
b11111111111100001011011100111000 ("
b10000101101110011100 4"
b11111111111111111111111100100100 +"
b111110010010 @"
b11111111111111111111111100100101 )"
b11110011100000001011000000000000 A"
b11 m
b11 q
b11 V
1t"
1J"
1M"
0P"
b11 X"
b1111111111111111111100100010 &"
b1111111111111111111100100010 S"
b11111111111111111111111011010100 M
b11111111111111111111111011010100 i
b11111111111111111111111011010100 x
b11111111111111111111111011010100 Q"
b10000000000000000000000000100 W"
b11000 ["
b11000 $#
b10 b"
b100 g"
b11110011100000001010000000000000 `"
b11111111111100001010011100111000 o"
b11111111111111111111011100100100 l"
b11111111111111111111111100100100 n"
b1111111111111111011100101000 ?"
b10000000000000000000000000100 f"
b11110011100000001011001010010011 b
b11110011100000001011001010010011 %"
b11110011100000001011001010010011 p"
b10000000000000000000000001000 q"
b10000000000000000000000010000 1"
b10000000000000000000000001100 K
b10000000000000000000000001100 ^
b10000000000000000000000001100 !#
b11 A
1G
1<
#760000000000
0G
0<
#770000000000
b11 k
b11 p
b11 t
b11 w
b1111 N
b1111 R
b1111 j
b1111 I"
b10000000000000000000000010100 2"
b11110011100000001110001110010011 J
b11110011100000001110001110010011 Y
b11110011100000001110001110010011 \
b11110011100000001110001110010011 $"
b100 V
b110 0"
b100 5"
b11111111111100001100011100111000 ("
b10000110001110011100 4"
b11111111111111111111011100100110 +"
b101110010011 @"
b11111111111111111111111100100110 )"
b11110011100000001100000000000000 A"
b100 m
b100 q
b0 >"
b0 3"
b0 O
b11111111111111111111111011010100 "#
b11111111111111111111111011010100 r$
b10000000000000000000000010100 1"
b10000000000000000000000010000 K
b10000000000000000000000010000 ^
b10000000000000000000000010000 !#
b11110011100000001100001100010011 b
b11110011100000001100001100010011 %"
b11110011100000001100001100010011 p"
b10000000000000000000000001100 q"
b10111 ["
b10111 $#
b11 b"
b101 g"
b11110011100000001011000000000000 `"
b11111111111100001011011100111000 o"
b11111111111111111111111100100100 l"
b11111111111111111111111100100101 n"
b1111111111111111111100101100 ?"
b10000000000000000000000001000 f"
0M"
0="
b10 T"
b100 X"
b1111111111111111011100101000 &"
b1111111111111111011100101000 S"
b0 M
b0 i
b0 x
b0 Q"
b10000000000000000000000001000 W"
b11 y"
b11 q$
b10000000000000000000000000100 x"
b11111111111111111111111011010100 u"
b100 A
1G
1<
#780000000000
0G
0<
#790000000000
b10 k
b10 p
b10 t
b10 w
b0 N
b0 R
b0 j
b0 I"
b10100100 B"
b10100100 *#
0F$
0n#
1&#
0i$
1E"
0e$
1_$
0m#
1R$
1M$
1C$
1>$
19$
14$
1/$
1*$
1%$
1~#
1y#
1t#
1j#
1e#
1`#
1[#
1V#
1Q#
1L#
1G#
1B#
1=#
1p$
0k$
1f$
1a$
0\$
1[$
1W$
0H$
1o#
07#
06#
1O$
1J$
1@$
1;$
16$
11$
1,$
1'$
1"$
1{#
1v#
1q#
1g#
1b#
1]#
1X#
1S#
1N#
1I#
1D#
1?#
1:#
1m$
1h$
0c$
0^$
1Y$
1T$
1E$
0l#
05#
01#
b11111111111111111111111100111000 /#
02#
b10000000000000000000000011000 2"
b11111111111111111111111100111000 )#
b11111111111111111111111100111000 ,#
b11111111111111111111111011010100 (#
b11111111111111111111111011010100 .#
03#
b11110011100000001111010000010011 J
b11110011100000001111010000010011 Y
b11110011100000001111010000010011 \
b11110011100000001111010000010011 $"
b0 "#
b0 r$
0-#
b111 0"
b110 5"
b11111111111100001110011100111000 ("
b10000111001110011100 4"
b11111111111111111111111100100110 +"
b111110010011 @"
b11111111111111111111111100100111 )"
b11110011100000001110000000000000 A"
b110 m
b110 q
b101 V
b100 y"
b100 q$
b10000000000000000000000001000 x"
b0 u"
b11 T"
b101 X"
b1111111111111111111100101100 &"
b1111111111111111111100101100 S"
b10000000000000000000000001100 W"
b11 ["
b11 $#
b100 b"
b110 g"
b11110011100000001100000000000000 `"
b11111111111100001100011100111000 o"
b11111111111111111111011100100110 l"
b11111111111111111111111100100110 n"
b1111111111111111011100110010 ?"
b10000000000000000000000001100 f"
b11110011100000001110001110010011 b
b11110011100000001110001110010011 %"
b11110011100000001110001110010011 p"
b10000000000000000000000010000 q"
b10000000000000000000000011000 1"
b10000000000000000000000010100 K
b10000000000000000000000010100 ^
b10000000000000000000000010100 !#
b11111111111111111111111011010100 -%
b101 A
1G
1<
#800000000000
0G
0<
#810000000000
b1 k
b1 p
b1 t
b1 w
b11111111111111111111111110111100 B"
b11111111111111111111111110111100 *#
b1 N
b1 R
b1 j
b1 I"
b10000000000000000000000011100 2"
b0 J
b0 Y
b0 \
b0 $"
b110 V
b1000 0"
b111 5"
b11111111111100001111011100111000 ("
b10000111101110011100 4"
b11111111111111111111011100101000 +"
b101110010100 @"
b11111111111111111111111100101000 )"
b11110011100000001111000000000000 A"
b111 m
b111 q
b10100100 >"
b10100100 3"
b101001 O
b10000000000000000000000011100 1"
b10000000000000000000000011000 K
b10000000000000000000000011000 ^
b10000000000000000000000011000 !#
b11110011100000001111010000010011 b
b11110011100000001111010000010011 %"
b11110011100000001111010000010011 p"
b10000000000000000000000010100 q"
b10 ["
b10 $#
b110 b"
b111 g"
b11110011100000001110000000000000 `"
b11111111111100001110011100111000 o"
b11111111111111111111111100100110 l"
b11111111111111111111111100100111 n"
b1111111111111111111100110110 ?"
b10000000000000000000000010000 f"
1M"
1:"
b100 T"
b110 X"
b1111111111111111011100110010 &"
b1111111111111111011100110010 S"
b10100100 M
b10100100 i
b10100100 x
b10100100 Q"
b10000000000000000000000010000 W"
b101 y"
b101 q$
b10000000000000000000000001100 x"
b10100100 >
b1001001001011010101010001111001011100000110010100100000010110000100111101010010 @
b10001 ?
b1001001001011010101010001111001011100000110010100100000010110000100111101010010 ?%
b10100100 =%
b110 >%
0B
b110 A
1G
1<
#820000000000
0G
0<
#830000000000
0e
0l
b0 k
b0 p
b0 t
b0 w
b0 v
b0 N
b0 R
b0 j
b0 I"
b11111111111111111111111100011000 B"
b11111111111111111111111100011000 *#
b10000000000000000000000100000 2"
b0 ."
b0 7%
b10100100 "#
b10100100 r$
b11111111111111111111111110111100 >"
b11111111111111111111111110111100 3"
b11111111101111 O
b0 /"
b0 s$
b0 -"
b0 t$
b0 0"
b0 5"
b0 ("
b0 4"
b0 +"
b0 @"
b0 *"
b0 )"
b0 A"
b0 m
b0 q
b0 n
b0 r
b0 o
b0 s
b0 u
b111 V
b110 y"
b110 q$
b10000000000000000000000010000 x"
b10100100 u"
0:"
19"
b110 T"
b111 X"
b1111111111111111111100110110 &"
b1111111111111111111100110110 S"
b11111111111111111111111110111100 M
b11111111111111111111111110111100 i
b11111111111111111111111110111100 x
b11111111111111111111111110111100 Q"
b10000000000000000000000010100 W"
b1 ["
b1 $#
b111 b"
b1000 g"
b11110011100000001111000000000000 `"
b11111111111100001111011100111000 o"
b11111111111111111111011100101000 l"
b11111111111111111111111100101000 n"
b1111111111111111011100111100 ?"
b10000000000000000000000010100 f"
b0 b
b0 %"
b0 p"
b10000000000000000000000011000 q"
b10000000000000000000000100000 1"
b10000000000000000000000011100 K
b10000000000000000000000011100 ^
b10000000000000000000000011100 !#
b111 A
1G
1<
#840000000000
0G
0<
#850000000000
b0 B"
b0 *#
0&#
0E"
1C"
0p$
0W$
1'#
0R$
0M$
0C$
0>$
09$
04$
0/$
0*$
0%$
0~#
0y#
0t#
0j#
0e#
0`#
0[#
0V#
0Q#
0L#
0G#
0B#
0=#
0a$
0n$
0U$
0G"
0P$
0K$
0A$
0<$
07$
02$
0-$
0($
0#$
0|#
0w#
0r#
0h#
0c#
0^#
0Y#
0T#
0O#
0J#
0E#
0@#
0;#
0_$
0Z$
0j$
0G$
0Q$
0L$
0B$
0=$
08$
03$
0.$
0)$
0$$
0}#
0x#
0s#
0i#
0d#
0_#
0Z#
0U#
0P#
0K#
0F#
0A#
0<#
0o$
0\$
0[$
b0 /#
0V$
0f$
b0 (#
b0 .#
0o#
b10000000000000000000000100100 2"
0O$
0J$
0@$
0;$
06$
01$
0,$
0'$
0"$
0{#
0v#
0q#
0g#
0b#
0]#
0X#
0S#
0N#
0I#
0D#
0?#
0:#
0m$
0h$
0Y$
0T$
0E$
0N$
0I$
0?$
0:$
05$
00$
0+$
0&$
0!$
0z#
0u#
0p#
0f#
0a#
0\#
0W#
0R#
0M#
0H#
0C#
0>#
09#
0l$
0g$
0b$
0S$
0D$
0k#
b0 )#
b0 ,#
b0 {"
b0 ##
b0 +#
b1000 V
b0 |"
b0 %#
b0 }"
b11111111111111111111111100011000 >"
b11111111111111111111111100011000 3"
b11111111000110 O
b11111111111111111111111110111100 "#
b11111111111111111111111110111100 r$
b10100100 2%
b10000000000000000000000100100 1"
b10000000000000000000000100000 K
b10000000000000000000000100000 ^
b10000000000000000000000100000 !#
b10000000000000000000000011100 q"
b0 ["
b0 $#
0Z"
0^"
b0 b"
b0 g"
b0 j"
b0 h"
b0 `"
b0 o"
b0 l"
b0 n"
b0 m"
b0 i"
b10000000000000000000000011000 ?"
b10000000000000000000000011000 f"
09"
1;"
b111 T"
b1000 X"
b1111111111111111011100111100 &"
b1111111111111111011100111100 S"
b11111111111111111111111100011000 M
b11111111111111111111111100011000 i
b11111111111111111111111100011000 x
b11111111111111111111111100011000 Q"
b10000000000000000000000011000 W"
b111 y"
b111 q$
b10000000000000000000000010100 x"
b11111111111111111111111110111100 u"
b1000 A
1G
1<
#860000000000
0G
0<
#870000000000
b1 N
b1 R
b1 j
b1 I"
b10000000000000000000000101000 2"
b0 7"
b0 6"
b11111111111111111111111100011000 "#
b11111111111111111111111100011000 r$
b0 >"
b0 3"
b0 O
b1001 V
b1000 y"
b1000 q$
b10000000000000000000000011000 x"
b11111111111111111111111100011000 u"
0N"
0J"
0M"
1P"
1="
0;"
b0 T"
b0 X"
b10000000000000000000000011000 &"
b10000000000000000000000011000 S"
b0 M
b0 i
b0 x
b0 Q"
b10000000000000000000000011100 W"
b10000000000000000000000011100 ?"
b10000000000000000000000011100 f"
b10000000000000000000000100000 q"
b10000000000000000000000101000 1"
b10000000000000000000000100100 K
b10000000000000000000000100100 ^
b10000000000000000000000100100 !#
b11111111111111111111111110111100 3%
b11111111111111111111111110111100 >
b10010010010110101010100011110010111000001100101001000000100111101010010 @
b10010 ?
b10010010010110101010100011110010111000001100101001000000100111101010010 ?%
b11111111111111111111111110111100 =%
b111 >%
0B
b0 A
1G
1<
#880000000000
0G
0<
#890000000000
b10000000000000000000000101100 2"
b0 7"
b0 6"
b1010 V
b0 "#
b0 r$
b11111111111111111111111100011000 4%
b10000000000000000000000101100 1"
b10000000000000000000000101000 K
b10000000000000000000000101000 ^
b10000000000000000000000101000 !#
b10000000000000000000000100100 q"
b10000000000000000000000100000 ?"
b10000000000000000000000100000 f"
b10000000000000000000000011100 &"
b10000000000000000000000011100 S"
b10000000000000000000000100000 W"
0t"
b0 y"
b0 q$
b10000000000000000000000011100 x"
b0 u"
b11111111111111111111111100011000 >
b1001001001011010101010001111001011100000110010100100000010000010100111001000100 @
b10011 ?
b1001001001011010101010001111001011100000110010100100000010000010100111001000100 ?%
b11111111111111111111111100011000 =%
b1000 >%
0B
1G
1<
#900000000000
0G
0<
#910000000000
b10000000000000000000000110000 2"
b1011 V
b10000000000000000000000100000 x"
b10000000000000000000000100000 &"
b10000000000000000000000100000 S"
b10000000000000000000000100100 W"
b10000000000000000000000100100 ?"
b10000000000000000000000100100 f"
b10000000000000000000000101000 q"
b10000000000000000000000110000 1"
b10000000000000000000000101100 K
b10000000000000000000000101100 ^
b10000000000000000000000101100 !#
b0 J
b0 Y
b0 \
b0 $"
b1000000 $
b11 2
b10 1
b1 0
b0 /
b0 4%
b0 3%
b0 2%
b0 -%
b110000000000000000000100000000 u$
b100000000000000 A%
1B
1G
1<
#920000000000
1]
0E
0G
0<
#930000000000
1e
1l
b1100000 v
b10000000000000000000000000100 2"
b1010000100000011 J
b1010000100000011 Y
b1010000100000011 \
b1010000100000011 $"
b0 V
b10011 o
b10011 s
b10011 u
b10000000000000000000000000100 1"
b10000000000000000000000000000 K
b10000000000000000000000000000 ^
b10000000000000000000000000000 !#
b10011 b
b10011 %"
b10011 p"
b0 q"
b0 ?"
b0 f"
0P"
b0 &"
b0 S"
b0 W"
b0 x"
1G
1<
#940000000000
0G
0<
#950000000000
1G
1<
#960000000000
0G
0<
#970000000000
1G
1<
#980000000000
0]
b11011110101011011011111011101111 >
b10010010010110101010100011110010111000001100101001000000100110001010111 @
b10100 ?
0B
b10010010010110101010100011110010111000001100101001000000100110001010111 ?%
b11011110101011011011111011101111 =%
b10 >%
1E
0G
0<
#990000000000
1f
b1110000 v
b10000000000000000000000001000 2"
b110000000000000000000100000000 ."
b110000000000000000000100000000 7%
b1001000110000011 J
b1001000110000011 Y
b1001000110000011 \
b1001000110000011 $"
b1 /"
b1 s$
b10 0"
b10 5"
b1010000000000000 ("
b101000000000000 4"
b10 +"
b1 @"
b10 )"
b1010000000000000 A"
b10 m
b10 q
b11 o
b11 s
b11 u
b1 V
1P"
b100 W"
1Z"
1^"
b1010000100000011 b
b1010000100000011 %"
b1010000100000011 p"
b10000000000000000000000000000 q"
b10000000000000000000000001000 1"
b10000000000000000000000000100 K
b10000000000000000000000000100 ^
b10000000000000000000000000100 !#
b1 A
1G
1<
#1000000000000
0G
0<
#1010000000000
b110000000000000000000100000000 B"
b110000000000000000000100000000 *#
1C$
1>$
0C"
b110000000000000000000100000000 (#
b110000000000000000000100000000 .#
1k$
b10000000000000000000000001100 2"
1?$
1:$
1g$
b0 J
b0 Y
b0 \
b0 $"
b110000000000000000000100000000 {"
b110000000000000000000100000000 ##
b110000000000000000000100000000 +#
b10 V
b11 0"
b1 5"
b1001000000000000 ("
b100100000000000 4"
b100000000010 +"
b10000000001 @"
b11 )"
b1001000000000000 A"
b1 m
b1 q
b110000000000000000000100000000 }"
b10000000000000000000000001100 1"
b10000000000000000000000001000 K
b10000000000000000000000001000 ^
b10000000000000000000000001000 !#
b1001000110000011 b
b1001000110000011 %"
b1001000110000011 p"
b10000000000000000000000000100 q"
1]"
b10 b"
b10 g"
b1 h"
b1010000000000000 `"
b1010000000000000 o"
b10 l"
b10 n"
b110000000000000000000100000000 i"
b10000000000000000000000000010 ?"
b10000000000000000000000000000 f"
1N"
b100 x"
b10 A
1G
1<
#1020000000000
0G
0<
#1030000000000
0e
0l
0f
b11011110101011011011111011101111 z"
b0 v
b1111 N
b1111 R
b1111 j
b1111 I"
b10000000000000000000000010000 2"
b11011110101011011011111011101111 I
b11011110101011011011111011101111 T
b11011110101011011011111011101111 [
b11011110101011011011111011101111 y
b0 ."
b0 7%
b110000000000000000000100000000 >"
b110000000000000000000100000000 3"
b1000000 O
b0 /"
b0 s$
b0 0"
b0 5"
b0 ("
b0 4"
b0 +"
b0 @"
b0 )"
b0 A"
b0 m
b0 q
b0 o
b0 s
b0 u
b11 V
1t"
1L"
0P"
0="
b10 T"
b10 X"
b10000000000000000000000000010 &"
b10000000000000000000000000010 S"
b110000000000000000000100000000 M
b110000000000000000000100000000 i
b110000000000000000000100000000 x
b110000000000000000000100000000 Q"
b10000000000000000000000000100 W"
b1 b"
b11 g"
b1001000000000000 `"
b1001000000000000 o"
b100000000010 l"
b11 n"
b10000000000000000100000000110 ?"
b10000000000000000000000000100 f"
b0 b
b0 %"
b0 p"
b10000000000000000000000001000 q"
b10000000000000000000000010000 1"
b10000000000000000000000001100 K
b10000000000000000000000001100 ^
b10000000000000000000000001100 !#
b11 A
1G
1<
#1040000000000
0G
0<
#1050000000000
b0 B"
b0 *#
b11111111111111111011111011101111 z"
b11 N
b11 R
b11 j
b11 I"
1C"
0C$
0>$
b0 (#
b0 .#
0k$
b10000000000000000000000010100 2"
0?$
0:$
0g$
b1000001001001010000011 J
b1000001001001010000011 Y
b1000001001001010000011 \
b1000001001001010000011 $"
b0 {"
b0 ##
b0 +#
b100 V
b0 }"
b11011110101011011011111011101111 "#
b11011110101011011011111011101111 r$
b10000000000000000000000010100 1"
b10000000000000000000000010000 K
b10000000000000000000000010000 ^
b10000000000000000000000010000 !#
b10000000000000000000000001100 q"
0Z"
0]"
0^"
b0 b"
b0 g"
b0 h"
b0 `"
b0 o"
b0 l"
b0 n"
b0 i"
b10000000000000000000000001000 ?"
b10000000000000000000000001000 f"
18"
b1 T"
b11 X"
b10000000000000000100000000110 &"
b10000000000000000100000000110 S"
b10000000000000000000000001000 W"
1s"
b10 y"
b10 q$
b10000000000000000000000000100 x"
b11011110101011011011111011101111 r"
b110000000000000000000100000000 u"
b100 A
1G
1<
#1060000000000
0G
0<
#1070000000000
1e
1l
1f
b1110000 v
b0 z"
b1 N
b1 R
b1 j
b1 I"
b10000000000000000000000011000 2"
b0 7"
b0 6"
b0 I
b0 T
b0 [
b0 y
b110000000000000000000100000000 ."
b110000000000000000000100000000 7%
b11011110101011011011111011101111 ,"
b11011110101011011011111011101111 8%
b0 J
b0 Y
b0 \
b0 $"
b11111111111111111011111011101111 "#
b11111111111111111011111011101111 r$
b0 >"
b0 3"
b0 O
b1 /"
b1 s$
b10 -"
b10 t$
b101 0"
b1 5"
b1001000000000010 ("
b100100000000001 4"
b100000000100 +"
b10000000010 @"
b10 *"
b101 )"
b1000001001000000000000 A"
b1 m
b1 q
b11 o
b11 s
b11 u
b101 V
b11 y"
b11 q$
b10000000000000000000000001000 x"
b11111111111111111011111011101111 r"
0L"
0N"
1P"
1="
08"
b0 T"
b0 X"
b10000000000000000000000001000 &"
b10000000000000000000000001000 S"
b0 M
b0 i
b0 x
b0 Q"
b10000000000000000000000001100 W"
b10000000000000000000000001100 ?"
b10000000000000000000000001100 f"
b1000001001001010000011 b
b1000001001001010000011 %"
b1000001001001010000011 p"
b10000000000000000000000010000 q"
b10000000000000000000000011000 1"
b10000000000000000000000010100 K
b10000000000000000000000010100 ^
b10000000000000000000000010100 !#
b11011110101011011011111011101111 "%
b101 A
1G
1<
#1080000000000
0G
0<
#1090000000000
0e
0l
0f
b110000000000000000000100000010 B"
b110000000000000000000100000010 *#
b0 v
18#
1C$
1>$
0C"
b110000000000000000000100000010 (#
b110000000000000000000100000010 .#
1k$
b10000000000000000000000011100 2"
15#
1?$
1:$
1g$
b1000001110000011 J
b1000001110000011 Y
b1000001110000011 \
b1000001110000011 $"
b0 ."
b0 7%
b0 ,"
b0 8%
b10 )#
b10 ,#
b110000000000000000000100000000 {"
b110000000000000000000100000000 ##
b110000000000000000000100000000 +#
b110 V
b0 /"
b0 s$
b0 -"
b0 t$
b0 0"
b0 5"
b0 ("
b0 4"
b0 +"
b0 @"
b0 *"
b0 )"
b0 A"
b0 m
b0 q
b0 o
b0 s
b0 u
b10 |"
b10 %#
b11011110101011011011111011101111 ~"
b110000000000000000000100000000 }"
b0 "#
b0 r$
b11111111111111111011111011101111 -%
b10000000000000000000000011100 1"
b10000000000000000000000011000 K
b10000000000000000000000011000 ^
b10000000000000000000000011000 !#
b0 b
b0 %"
b0 p"
b10000000000000000000000010100 q"
1Z"
1]"
1^"
b1 b"
b101 g"
b10 j"
b1 h"
b1000001001000000000000 `"
b1001000000000010 o"
b100000000100 l"
b101 n"
b10 m"
b11011110101011011011111011101111 k"
b110000000000000000000100000000 i"
b10000000000000000100000010100 ?"
b10000000000000000000000010000 f"
b10000000000000000000000001100 &"
b10000000000000000000000001100 S"
b10000000000000000000000010000 W"
0s"
0t"
b0 y"
b0 q$
b10000000000000000000000001100 x"
b0 r"
b0 u"
b11111111111111111011111011101111 >
b100100100101101010101000111100101110000011001010010000001001100010010000010000000110000 @
b10101 ?
b100100100101101010101000111100101110000011001010010000001001100010010000010000000110000 ?%
b11111111111111111011111011101111 =%
b11 >%
0B
b110 A
1G
1<
#1100000000000
0G
0<
#1110000000000
1e
1l
1f
b0 B"
b0 *#
b11111111111111111101111010101101 z"
b1110000 v
b1100 N
b1100 R
b1100 j
b1100 I"
1C"
08#
0C$
0>$
b0 (#
b0 .#
0k$
05#
0?$
0:$
0g$
b10000000000000000000000100000 2"
b11011110101011011011111011101111 I
b11011110101011011011111011101111 T
b11011110101011011011111011101111 [
b11011110101011011011111011101111 y
b0 )#
b0 ,#
b0 {"
b0 ##
b0 +#
b110000000000000000000100000000 ."
b110000000000000000000100000000 7%
b100001000010000000011 J
b100001000010000000011 Y
b100001000010000000011 \
b100001000010000000011 $"
b10111110111011110000000000000000 H
b10111110111011110000000000000000 Q
b10111110111011110000000000000000 h
b10111110111011110000000000000000 F"
b110000000000000000000100000010 >"
b110000000000000000000100000010 3"
b10 H"
b1000000 O
b0 |"
b0 %#
b0 ~"
b0 }"
b1 /"
b1 s$
b111 0"
b1000000000000000 ("
b100000000000000 4"
b100000000110 +"
b10000000011 @"
b111 )"
b1000000000000000 A"
b11 o
b11 s
b11 u
b111 V
b10000000000000000000000010000 x"
1L"
1N"
0P"
0="
18"
b1 T"
b101 X"
b10000000000000000100000010100 &"
b10000000000000000100000010100 S"
b11011110101011011011111011101111 Y"
b110000000000000000000100000010 M
b110000000000000000000100000010 i
b110000000000000000000100000010 x
b110000000000000000000100000010 Q"
b10000000000000000000000010100 W"
0Z"
0]"
0^"
b0 b"
b0 g"
b0 j"
b0 h"
b0 `"
b0 o"
b0 l"
b0 n"
b0 m"
b0 k"
b0 i"
b10000000000000000000000010100 ?"
b10000000000000000000000010100 f"
b1000001110000011 b
b1000001110000011 %"
b1000001110000011 p"
b10000000000000000000000011000 q"
b10000000000000000000000100000 1"
b10000000000000000000000011100 K
b10000000000000000000000011100 ^
b10000000000000000000000011100 !#
b11111111111111111101111010101101 >
b100100100101101010101000111100101110000011001010010000001001100010010000010000000110010 @
b10110 ?
b100100100101101010101000111100101110000011001010010000001001100010010000010000000110010 ?%
b11111111111111111101111010101101 =%
b101 >%
0B
b0 A
1G
1<
#1120000000000
0G
0<
#1130000000000
b110000000000000000000100000000 B"
b110000000000000000000100000000 *#
b0 z"
b1 N
b1 R
b1 j
b1 I"
1C$
1>$
0C"
b110000000000000000000100000000 (#
b110000000000000000000100000000 .#
1k$
b10000000000000000000000100100 2"
1?$
1:$
1g$
b1000001000010010000011 J
b1000001000010010000011 Y
b1000001000010010000011 \
b1000001000010010000011 $"
b110000000000000000000100000000 ,"
b110000000000000000000100000000 8%
b110000000000000000000100000000 {"
b110000000000000000000100000000 ##
b110000000000000000000100000000 +#
b0 6"
b0 I
b0 T
b0 [
b0 y
b1000 V
b1 -"
b1 t$
b1000 0"
b1000100000000000 ("
b100010000000000 4"
b1000 +"
b100 @"
b1 *"
b1000 )"
b100001000000000000000 A"
b110000000000000000000100000000 }"
b0 H
b0 Q
b0 h
b0 F"
b0 >"
b0 3"
b0 H"
b0 O
b11111111111111111101111010101101 "#
b11111111111111111101111010101101 r$
b10000000000000000000000100100 1"
b10000000000000000000000100000 K
b10000000000000000000000100000 ^
b10000000000000000000000100000 !#
b100001000010000000011 b
b100001000010000000011 %"
b100001000010000000011 p"
b10000000000000000000000011100 q"
1Z"
1]"
1^"
b111 g"
b1 h"
b1000000000000000 `"
b1000000000000000 o"
b100000000110 l"
b111 n"
b110000000000000000000100000000 i"
b10000000000000000100000011110 ?"
b10000000000000000000000011000 f"
0L"
0N"
1P"
1="
08"
b0 T"
b0 X"
b10000000000000000000000010100 &"
b10000000000000000000000010100 S"
b0 Y"
b0 M
b0 i
b0 x
b0 Q"
b10000000000000000000000011000 W"
1s"
1t"
b101 y"
b101 q$
b10000000000000000000000010100 x"
b11111111111111111101111010101101 r"
b110000000000000000000100000010 u"
b1 A
1G
1<
#1140000000000
0G
0<
#1150000000000
b110000000000000000000100000001 B"
b110000000000000000000100000001 *#
b11111111111111111111111111101111 z"
b110000000000000000000100000001 (#
b110000000000000000000100000001 .#
13#
11#
b10000000000000000000000101000 2"
b11011110101011011011111011101111 I
b11011110101011011011111011101111 T
b11011110101011011011111011101111 [
b11011110101011011011111011101111 y
b1 )#
b1 ,#
b11011110101011011011111011101111 ,"
b11011110101011011011111011101111 8%
b1100001000010100000011 J
b1100001000010100000011 Y
b1100001000010100000011 \
b1100001000010100000011 $"
b0 "#
b0 r$
b110000000000000000000100000000 >"
b110000000000000000000100000000 3"
b1000000 O
b1 |"
b1 %#
b110000000000000000000100000000 ~"
b10 -"
b10 t$
b1001 0"
b1000000000000010 ("
b100000000000001 4"
b100000001000 +"
b10000000100 @"
b10 *"
b1001 )"
b1000001000000000000000 A"
b1001 V
0s"
0t"
b0 y"
b0 q$
b10000000000000000000000011000 x"
b0 r"
b0 u"
1L"
1N"
0P"
b111 X"
b10000000000000000100000011110 &"
b10000000000000000100000011110 S"
b110000000000000000000100000000 M
b110000000000000000000100000000 i
b110000000000000000000100000000 x
b110000000000000000000100000000 Q"
b10000000000000000000000011100 W"
b1000 g"
b1 j"
b100001000000000000000 `"
b1000100000000000 o"
b1000 l"
b1000 n"
b1 m"
b110000000000000000000100000000 k"
b10000000000000000000000100100 ?"
b10000000000000000000000011100 f"
b1000001000010010000011 b
b1000001000010010000011 %"
b1000001000010010000011 p"
b10000000000000000000000100000 q"
b10000000000000000000000101000 1"
b10000000000000000000000100100 K
b10000000000000000000000100100 ^
b10000000000000000000000100100 !#
b11111111111111111101111010101101 1%
b10 A
1G
1<
#1160000000000
0G
0<
#1170000000000
b110000000000000000000100000010 B"
b110000000000000000000100000010 *#
b11111111111111111111111110111110 z"
b10 N
b10 R
b10 j
b10 I"
18#
b110000000000000000000100000010 (#
b110000000000000000000100000010 .#
03#
b10000000000000000000000101100 2"
15#
01#
b1101010110000011 J
b1101010110000011 Y
b1101010110000011 \
b1101010110000011 $"
b11111111111111111011111011101111 ,"
b11111111111111111011111011101111 8%
b10 )#
b10 ,#
b1010 V
b11 -"
b11 t$
b1010 0"
b1000100000000010 ("
b100010000000001 4"
b1010 +"
b101 @"
b11 *"
b1010 )"
b1100001000000000000000 A"
b10 |"
b10 %#
b11011110101011011011111011101111 ~"
b10000000000000000 H
b10000000000000000 Q
b10000000000000000 h
b10000000000000000 F"
b110000000000000000000100000001 >"
b1 H"
b11111111111111111111111111101111 "#
b11111111111111111111111111101111 r$
b10000000000000000000000101100 1"
b10000000000000000000000101000 K
b10000000000000000000000101000 ^
b10000000000000000000000101000 !#
b1100001000010100000011 b
b1100001000010100000011 %"
b1100001000010100000011 p"
b10000000000000000000000100100 q"
b1001 g"
b10 j"
b1000001000000000000000 `"
b1000000000000010 o"
b100000001000 l"
b1001 n"
b10 m"
b11011110101011011011111011101111 k"
b10000000000000000100000101000 ?"
b10000000000000000000000100000 f"
b1000 X"
b10000000000000000000000100100 &"
b10000000000000000000000100100 S"
b110000000000000000000100000000 Y"
b110000000000000000000100000001 M
b110000000000000000000100000001 i
b110000000000000000000100000001 x
b110000000000000000000100000001 Q"
b10000000000000000000000100000 W"
1s"
1t"
b111 y"
b111 q$
b10000000000000000000000011100 x"
b11111111111111111111111111101111 r"
b110000000000000000000100000000 u"
b11111111111111111111111111101111 >
b100100100101101010101000111100101110000011001010010000001001100010000100010000000110000 @
b10111 ?
b100100100101101010101000111100101110000011001010010000001001100010000100010000000110000 ?%
b11111111111111111111111111101111 =%
b111 >%
0B
b0 A
1G
1<
#1180000000000
0G
0<
#1190000000000
b110000000000000000000100000011 B"
b110000000000000000000100000011 *#
b11111111111111111111111110101101 z"
b100 N
b100 R
b100 j
b100 I"
b110000000000000000000100000011 (#
b110000000000000000000100000011 .#
13#
11#
b10000000000000000000000110000 2"
b11 )#
b11 ,#
b0 ,"
b0 8%
b0 J
b0 Y
b0 \
b0 $"
b11111111111111111111111110111110 "#
b11111111111111111111111110111110 r$
b10111110111011110000000000000000 H
b10111110111011110000000000000000 Q
b10111110111011110000000000000000 h
b10111110111011110000000000000000 F"
b110000000000000000000100000010 >"
b110000000000000000000100000010 3"
b10 H"
b11 |"
b11 %#
b11111111111111111011111011101111 ~"
b0 -"
b0 t$
b1011 0"
b101 5"
b1101000000000000 ("
b110100000000000 4"
b100000001010 +"
b10000000101 @"
b0 *"
b1011 )"
b1101000000000000 A"
b101 m
b101 q
b1011 V
b1000 y"
b1000 q$
b10000000000000000000000100000 x"
b11111111111111111111111110111110 r"
b110000000000000000000100000001 u"
b1001 X"
b10000000000000000100000101000 &"
b10000000000000000100000101000 S"
b11011110101011011011111011101111 Y"
b110000000000000000000100000010 M
b110000000000000000000100000010 i
b110000000000000000000100000010 x
b110000000000000000000100000010 Q"
b10000000000000000000000100100 W"
b1010 g"
b11 j"
b1100001000000000000000 `"
b1000100000000010 o"
b1010 l"
b1010 n"
b11 m"
b11111111111111111011111011101111 k"
b10000000000000000000000101110 ?"
b10000000000000000000000100100 f"
b1101010110000011 b
b1101010110000011 %"
b1101010110000011 p"
b10000000000000000000000101000 q"
b10000000000000000000000110000 1"
b10000000000000000000000101100 K
b10000000000000000000000101100 ^
b10000000000000000000000101100 !#
b11111111111111111111111111101111 3%
b1 A
1G
1<
#1200000000000
0G
0<
#1210000000000
0e
0l
0f
b110000000000000000000100000000 B"
b110000000000000000000100000000 *#
b0 v
b11111111111111111111111111011110 z"
b1000 N
b1000 R
b1000 j
b1000 I"
08#
b110000000000000000000100000000 (#
b110000000000000000000100000000 .#
03#
b10000000000000000000000110100 2"
05#
01#
b1000001101011010000011 J
b1000001101011010000011 Y
b1000001101011010000011 \
b1000001101011010000011 $"
b0 ."
b0 7%
b0 )#
b0 ,#
b11101111000000000000000000000000 H
b11101111000000000000000000000000 Q
b11101111000000000000000000000000 h
b11101111000000000000000000000000 F"
b1100 V
b0 /"
b0 s$
b0 0"
b0 5"
b0 ("
b0 4"
b0 +"
b0 @"
b0 )"
b0 A"
b0 m
b0 q
b0 o
b0 s
b0 u
b0 |"
b0 %#
b0 ~"
b110000000000000000000100000011 >"
b11 H"
b11111111111111111111111110101101 "#
b11111111111111111111111110101101 r$
b11111111111111111111111110111110 4%
b10000000000000000000000110100 1"
b10000000000000000000000110000 K
b10000000000000000000000110000 ^
b10000000000000000000000110000 !#
b0 b
b0 %"
b0 p"
b10000000000000000000000101100 q"
b101 b"
b1011 g"
b0 j"
b1101000000000000 `"
b1101000000000000 o"
b100000001010 l"
b1011 n"
b0 m"
b0 k"
b10000000000000000100000110010 ?"
b10000000000000000000000101000 f"
b1010 X"
b10000000000000000000000101110 &"
b10000000000000000000000101110 S"
b11111111111111111011111011101111 Y"
b110000000000000000000100000011 M
b110000000000000000000100000011 i
b110000000000000000000100000011 x
b110000000000000000000100000011 Q"
b10000000000000000000000101000 W"
b1001 y"
b1001 q$
b10000000000000000000000100100 x"
b11111111111111111111111110101101 r"
b110000000000000000000100000010 u"
b11111111111111111111111110111110 >
b100100100101101010101000111100101110000011001010010000001001100010000100010000000110001 @
b11000 ?
b100100100101101010101000111100101110000011001010010000001001100010000100010000000110001 ?%
b11111111111111111111111110111110 =%
b1000 >%
0B
b10 A
1G
1<
#1220000000000
0G
0<
#1230000000000
1e
1l
1f
b0 B"
b0 *#
b1110000 v
b1011111011101111 z"
b11 N
b11 R
b11 j
b11 I"
1C"
0C$
0>$
b0 (#
b0 .#
0k$
0?$
0:$
0g$
b10000000000000000000000111000 2"
b0 {"
b0 ##
b0 +#
b110000000000000000000100000000 ."
b110000000000000000000100000000 7%
b11011110101011011011111011101111 ,"
b11011110101011011011111011101111 8%
b0 J
b0 Y
b0 \
b0 $"
b11111111111111111111111111011110 "#
b11111111111111111111111111011110 r$
b0 H
b0 Q
b0 h
b0 F"
b110000000000000000000100000000 >"
b110000000000000000000100000000 3"
b0 H"
b0 }"
b1 /"
b1 s$
b10 -"
b10 t$
b1101 0"
b101 5"
b1101000000000010 ("
b110100000000001 4"
b100000001100 +"
b10000000110 @"
b10 *"
b1101 )"
b1000001101000000000000 A"
b101 m
b101 q
b11 o
b11 s
b11 u
b1101 V
b1010 y"
b1010 q$
b10000000000000000000000101000 x"
b11111111111111111111111111011110 r"
b110000000000000000000100000011 u"
0="
1<"
b101 T"
b1011 X"
b10000000000000000100000110010 &"
b10000000000000000100000110010 S"
b0 Y"
b110000000000000000000100000000 M
b110000000000000000000100000000 i
b110000000000000000000100000000 x
b110000000000000000000100000000 Q"
b10000000000000000000000101100 W"
0Z"
0]"
0^"
b0 b"
b0 g"
b0 h"
b0 `"
b0 o"
b0 l"
b0 n"
b0 i"
b10000000000000000000000101100 ?"
b10000000000000000000000101100 f"
b1000001101011010000011 b
b1000001101011010000011 %"
b1000001101011010000011 p"
b10000000000000000000000110000 q"
b10000000000000000000000111000 1"
b10000000000000000000000110100 K
b10000000000000000000000110100 ^
b10000000000000000000000110100 !#
b11111111111111111111111110101101 5%
b11111111111111111111111110101101 >
b100100100101101010101000111100101110000011001010010000001001100010000100010000000110010 @
b11001 ?
b100100100101101010101000111100101110000011001010010000001001100010000100010000000110010 ?%
b11111111111111111111111110101101 =%
b1001 >%
0B
b0 A
1G
1<
#1240000000000
0G
0<
#1250000000000
0e
0l
0f
b110000000000000000000100000010 B"
b110000000000000000000100000010 *#
b0 v
b0 z"
b1 N
b1 R
b1 j
b1 I"
18#
1C$
1>$
0C"
b110000000000000000000100000010 (#
b110000000000000000000100000010 .#
1k$
b10000000000000000000000111100 2"
15#
1?$
1:$
1g$
b1100011110000011 J
b1100011110000011 Y
b1100011110000011 \
b1100011110000011 $"
b0 ."
b0 7%
b0 ,"
b0 8%
b10 )#
b10 ,#
b110000000000000000000100000000 {"
b110000000000000000000100000000 ##
b110000000000000000000100000000 +#
b0 I
b0 T
b0 [
b0 y
b1110 V
b0 /"
b0 s$
b0 -"
b0 t$
b0 0"
b0 5"
b0 ("
b0 4"
b0 +"
b0 @"
b0 *"
b0 )"
b0 A"
b0 m
b0 q
b0 o
b0 s
b0 u
b10 |"
b10 %#
b11011110101011011011111011101111 ~"
b110000000000000000000100000000 }"
b0 >"
b0 3"
b0 O
b1011111011101111 "#
b1011111011101111 r$
b11111111111111111111111111011110 v$
b10000000000000000000000111100 1"
b10000000000000000000000111000 K
b10000000000000000000000111000 ^
b10000000000000000000000111000 !#
b0 b
b0 %"
b0 p"
b10000000000000000000000110100 q"
1Z"
1]"
1^"
b101 b"
b1101 g"
b10 j"
b1 h"
b1000001101000000000000 `"
b1101000000000010 o"
b100000001100 l"
b1101 n"
b10 m"
b11011110101011011011111011101111 k"
b110000000000000000000100000000 i"
b10000000000000000100000111100 ?"
b10000000000000000000000110000 f"
0L"
0N"
1P"
1="
0<"
b0 T"
b0 X"
b10000000000000000000000101100 &"
b10000000000000000000000101100 S"
b0 M
b0 i
b0 x
b0 Q"
b10000000000000000000000110000 W"
b1011 y"
b1011 q$
b10000000000000000000000101100 x"
b1011111011101111 r"
b110000000000000000000100000000 u"
b11111111111111111111111111011110 >
b100100100101101010101000111100101110000011001010010000001001100010000100010000000110011 @
b11010 ?
b100100100101101010101000111100101110000011001010010000001001100010000100010000000110011 ?%
b11111111111111111111111111011110 =%
b1010 >%
0B
1G
1<
#1260000000000
0G
0<
#1270000000000
1e
1l
1f
b0 B"
b0 *#
b1101111010101101 z"
b1110000 v
b1100 N
b1100 R
b1100 j
b1100 I"
1C"
08#
0C$
0>$
b0 (#
b0 .#
0k$
b0 7"
b0 6"
05#
0?$
0:$
0g$
b10000000000000000000001000000 2"
b11011110101011011011111011101111 I
b11011110101011011011111011101111 T
b11011110101011011011111011101111 [
b11011110101011011011111011101111 y
b0 )#
b0 ,#
b0 {"
b0 ##
b0 +#
b110000000000000000000100000000 ."
b110000000000000000000100000000 7%
b100001100100000000011 J
b100001100100000000011 Y
b100001100100000000011 \
b100001100100000000011 $"
b0 "#
b0 r$
b11011110101011011011111011101111 H
b11011110101011011011111011101111 Q
b11011110101011011011111011101111 h
b11011110101011011011111011101111 F"
b110000000000000000000100000010 >"
b110000000000000000000100000010 3"
b10 H"
b1000000 O
b0 |"
b0 %#
b0 ~"
b0 }"
b1 /"
b1 s$
b1111 0"
b100 5"
b1100000000000000 ("
b110000000000000 4"
b100000001110 +"
b10000000111 @"
b1111 )"
b1100000000000000 A"
b100 m
b100 q
b11 o
b11 s
b11 u
b1111 V
0s"
0t"
b0 y"
b0 q$
b10000000000000000000000110000 x"
b0 r"
b0 u"
1L"
1N"
0P"
0="
1<"
b101 T"
b1101 X"
b10000000000000000100000111100 &"
b10000000000000000100000111100 S"
b11011110101011011011111011101111 Y"
b110000000000000000000100000010 M
b110000000000000000000100000010 i
b110000000000000000000100000010 x
b110000000000000000000100000010 Q"
b10000000000000000000000110100 W"
0Z"
0]"
0^"
b0 b"
b0 g"
b0 j"
b0 h"
b0 `"
b0 o"
b0 l"
b0 n"
b0 m"
b0 k"
b0 i"
b10000000000000000000000110100 ?"
b10000000000000000000000110100 f"
b1100011110000011 b
b1100011110000011 %"
b1100011110000011 p"
b10000000000000000000000111000 q"
b10000000000000000000001000000 1"
b10000000000000000000000111100 K
b10000000000000000000000111100 ^
b10000000000000000000000111100 !#
b1011111011101111 w$
b1011111011101111 >
b10010010010110101010100011110010111000001100101001000000100110001001000010101010010000000110000 @
b11011 ?
b10010010010110101010100011110010111000001100101001000000100110001001000010101010010000000110000 ?%
b1011111011101111 =%
b1011 >%
0B
1G
1<
#1280000000000
0G
0<
#1290000000000
b110000000000000000000100000000 B"
b110000000000000000000100000000 *#
b0 z"
b1 N
b1 R
b1 j
b1 I"
1C$
1>$
0C"
b110000000000000000000100000000 (#
b110000000000000000000100000000 .#
1k$
b10000000000000000000001000100 2"
1?$
1:$
1g$
b1000001100100010000011 J
b1000001100100010000011 Y
b1000001100100010000011 \
b1000001100100010000011 $"
b110000000000000000000100000000 ,"
b110000000000000000000100000000 8%
b110000000000000000000100000000 {"
b110000000000000000000100000000 ##
b110000000000000000000100000000 +#
b0 6"
b0 I
b0 T
b0 [
b0 y
b10000 V
b1 -"
b1 t$
b10000 0"
b1100100000000000 ("
b110010000000000 4"
b10000 +"
b1000 @"
b1 *"
b10000 )"
b100001100000000000000 A"
b110000000000000000000100000000 }"
b0 H
b0 Q
b0 h
b0 F"
b0 >"
b0 3"
b0 H"
b0 O
b1101111010101101 "#
b1101111010101101 r$
b10000000000000000000001000100 1"
b10000000000000000000001000000 K
b10000000000000000000001000000 ^
b10000000000000000000001000000 !#
b100001100100000000011 b
b100001100100000000011 %"
b100001100100000000011 p"
b10000000000000000000000111100 q"
1Z"
1]"
1^"
b100 b"
b1111 g"
b1 h"
b1100000000000000 `"
b1100000000000000 o"
b100000001110 l"
b1111 n"
b110000000000000000000100000000 i"
b10000000000000000100001000110 ?"
b10000000000000000000000111000 f"
0L"
0N"
1P"
1="
0<"
b0 T"
b0 X"
b10000000000000000000000110100 &"
b10000000000000000000000110100 S"
b0 Y"
b0 M
b0 i
b0 x
b0 Q"
b10000000000000000000000111000 W"
1s"
1t"
b1101 y"
b1101 q$
b10000000000000000000000110100 x"
b1101111010101101 r"
b110000000000000000000100000010 u"
b1101111010101101 >
b10010010010110101010100011110010111000001100101001000000100110001001000010101010010000000110010 @
b11100 ?
b10010010010110101010100011110010111000001100101001000000100110001001000010101010010000000110010 ?%
b1101111010101101 =%
b1101 >%
0B
1G
1<
#1300000000000
0G
0<
#1310000000000
b110000000000000000000100000001 B"
b110000000000000000000100000001 *#
b11101111 z"
b110000000000000000000100000001 (#
b110000000000000000000100000001 .#
13#
11#
b10000000000000000000001001000 2"
b11011110101011011011111011101111 I
b11011110101011011011111011101111 T
b11011110101011011011111011101111 [
b11011110101011011011111011101111 y
b1 )#
b1 ,#
b11011110101011011011111011101111 ,"
b11011110101011011011111011101111 8%
b1100001100100100000011 J
b1100001100100100000011 Y
b1100001100100100000011 \
b1100001100100100000011 $"
b0 "#
b0 r$
b110000000000000000000100000000 >"
b110000000000000000000100000000 3"
b1000000 O
b1 |"
b1 %#
b110000000000000000000100000000 ~"
b10 -"
b10 t$
b10001 0"
b1100000000000010 ("
b110000000000001 4"
b100000010000 +"
b10000001000 @"
b10 *"
b10001 )"
b1000001100000000000000 A"
b10001 V
0s"
0t"
b0 y"
b0 q$
b10000000000000000000000111000 x"
b0 r"
b0 u"
1L"
1N"
0P"
0="
1:"
b100 T"
b1111 X"
b10000000000000000100001000110 &"
b10000000000000000100001000110 S"
b110000000000000000000100000000 M
b110000000000000000000100000000 i
b110000000000000000000100000000 x
b110000000000000000000100000000 Q"
b10000000000000000000000111100 W"
b10000 g"
b1 j"
b100001100000000000000 `"
b1100100000000000 o"
b10000 l"
b10000 n"
b1 m"
b110000000000000000000100000000 k"
b10000000000000000000001001100 ?"
b10000000000000000000000111100 f"
b1000001100100010000011 b
b1000001100100010000011 %"
b1000001100100010000011 p"
b10000000000000000000001000000 q"
b10000000000000000000001001000 1"
b10000000000000000000001000100 K
b10000000000000000000001000100 ^
b10000000000000000000001000100 !#
b1101111010101101 y$
b1 A
1G
1<
#1320000000000
0G
0<
#1330000000000
b110000000000000000000100000010 B"
b110000000000000000000100000010 *#
b10111110 z"
b10 N
b10 R
b10 j
b10 I"
18#
b110000000000000000000100000010 (#
b110000000000000000000100000010 .#
03#
b10000000000000000000001001100 2"
15#
01#
b0 J
b0 Y
b0 \
b0 $"
b11111111111111111011111011101111 ,"
b11111111111111111011111011101111 8%
b10 )#
b10 ,#
b110000000000000000000100000000 H
b110000000000000000000100000000 Q
b110000000000000000000100000000 h
b110000000000000000000100000000 F"
b10010 V
b11 -"
b11 t$
b10010 0"
b1100100000000010 ("
b110010000000001 4"
b10010 +"
b1001 @"
b11 *"
b10010 )"
b1100001100000000000000 A"
b10 |"
b10 %#
b11011110101011011011111011101111 ~"
b110000000000000000000100000001 >"
b1 H"
b11101111 "#
b11101111 r$
b10000000000000000000001001100 1"
b10000000000000000000001001000 K
b10000000000000000000001001000 ^
b10000000000000000000001001000 !#
b1100001100100100000011 b
b1100001100100100000011 %"
b1100001100100100000011 p"
b10000000000000000000001000100 q"
b10001 g"
b10 j"
b1000001100000000000000 `"
b1100000000000010 o"
b100000010000 l"
b10001 n"
b10 m"
b11011110101011011011111011101111 k"
b10000000000000000100001010000 ?"
b10000000000000000000001000000 f"
b10000 X"
b10000000000000000000001001100 &"
b10000000000000000000001001100 S"
b110000000000000000000100000000 Y"
b110000000000000000000100000001 M
b110000000000000000000100000001 i
b110000000000000000000100000001 x
b110000000000000000000100000001 Q"
b10000000000000000000001000000 W"
1s"
1t"
b1111 y"
b1111 q$
b10000000000000000000000111100 x"
b11101111 r"
b110000000000000000000100000000 u"
b11101111 >
b10010010010110101010100011110010111000001100101001000000100110001000010010101010010000000110000 @
b11101 ?
b10010010010110101010100011110010111000001100101001000000100110001000010010101010010000000110000 ?%
b11101111 =%
b1111 >%
0B
b10 A
1G
1<
#1340000000000
0G
0<
#1350000000000
0e
0l
0f
b110000000000000000000100000011 B"
b110000000000000000000100000011 *#
b10101101 z"
b100 N
b100 R
b100 j
b100 I"
b0 v
b110000000000000000000100000011 (#
b110000000000000000000100000011 .#
13#
11#
b10000000000000000000001010000 2"
b11011110101011011011111011101111 H
b11011110101011011011111011101111 Q
b11011110101011011011111011101111 h
b11011110101011011011111011101111 F"
b11 )#
b11 ,#
b0 ."
b0 7%
b0 ,"
b0 8%
b10111110 "#
b10111110 r$
b110000000000000000000100000010 >"
b110000000000000000000100000010 3"
b10 H"
b11 |"
b11 %#
b11111111111111111011111011101111 ~"
b0 /"
b0 s$
b0 -"
b0 t$
b0 0"
b0 5"
b0 ("
b0 4"
b0 +"
b0 @"
b0 *"
b0 )"
b0 A"
b0 m
b0 q
b0 o
b0 s
b0 u
b10011 V
b10000 y"
b10000 q$
b10000000000000000000001000000 x"
b10111110 r"
b110000000000000000000100000001 u"
b10001 X"
b10000000000000000100001010000 &"
b10000000000000000100001010000 S"
b11011110101011011011111011101111 Y"
b110000000000000000000100000010 M
b110000000000000000000100000010 i
b110000000000000000000100000010 x
b110000000000000000000100000010 Q"
b10000000000000000000001000100 W"
b10010 g"
b11 j"
b1100001100000000000000 `"
b1100100000000010 o"
b10010 l"
b10010 n"
b11 m"
b11111111111111111011111011101111 k"
b10000000000000000000001010110 ?"
b10000000000000000000001000100 f"
b0 b
b0 %"
b0 p"
b10000000000000000000001001000 q"
b10000000000000000000001010000 1"
b10000000000000000000001001100 K
b10000000000000000000001001100 ^
b10000000000000000000001001100 !#
b11101111 {$
b11 A
1G
1<
#1360000000000
0G
0<
#1370000000000
b0 B"
b0 *#
b11011110 z"
b1000 N
b1000 R
b1000 j
b1000 I"
1C"
08#
03#
0C$
0>$
b0 (#
b0 .#
0k$
b10000000000000000000001010100 2"
05#
01#
0?$
0:$
0g$
b0 )#
b0 ,#
b0 {"
b0 ##
b0 +#
b11111111111111111011111011101111 H
b11111111111111111011111011101111 Q
b11111111111111111011111011101111 h
b11111111111111111011111011101111 F"
b10100 V
b0 |"
b0 %#
b0 ~"
b0 }"
b110000000000000000000100000011 >"
b11 H"
b10101101 "#
b10101101 r$
b10111110 |$
b10000000000000000000001010100 1"
b10000000000000000000001010000 K
b10000000000000000000001010000 ^
b10000000000000000000001010000 !#
b10000000000000000000001001100 q"
0Z"
0]"
0^"
b0 b"
b0 g"
b0 j"
b0 h"
b0 `"
b0 o"
b0 l"
b0 n"
b0 m"
b0 k"
b0 i"
b10000000000000000000001001000 ?"
b10000000000000000000001001000 f"
b10010 X"
b10000000000000000000001010110 &"
b10000000000000000000001010110 S"
b11111111111111111011111011101111 Y"
b110000000000000000000100000011 M
b110000000000000000000100000011 i
b110000000000000000000100000011 x
b110000000000000000000100000011 Q"
b10000000000000000000001001000 W"
b10001 y"
b10001 q$
b10000000000000000000001000100 x"
b10101101 r"
b110000000000000000000100000010 u"
b10111110 >
b10010010010110101010100011110010111000001100101001000000100110001000010010101010010000000110001 @
b11110 ?
b10010010010110101010100011110010111000001100101001000000100110001000010010101010010000000110001 ?%
b10111110 =%
b10000 >%
0B
b100 A
1G
1<
#1380000000000
0G
0<
#1390000000000
b0 z"
b1 N
b1 R
b1 j
b1 I"
b10000000000000000000001011000 2"
b0 7"
b0 6"
b0 I
b0 T
b0 [
b0 y
b11011110 "#
b11011110 r$
b0 H
b0 Q
b0 h
b0 F"
b0 >"
b0 3"
b0 H"
b0 O
b10101 V
b10010 y"
b10010 q$
b10000000000000000000001001000 x"
b11011110 r"
b110000000000000000000100000011 u"
0L"
0N"
1P"
1="
0:"
b0 T"
b0 X"
b10000000000000000000001001000 &"
b10000000000000000000001001000 S"
b0 Y"
b0 M
b0 i
b0 x
b0 Q"
b10000000000000000000001001100 W"
b10000000000000000000001001100 ?"
b10000000000000000000001001100 f"
b10000000000000000000001010000 q"
b10000000000000000000001011000 1"
b10000000000000000000001010100 K
b10000000000000000000001010100 ^
b10000000000000000000001010100 !#
b10101101 }$
b10101101 >
b10010010010110101010100011110010111000001100101001000000100110001000010010101010010000000110010 @
b11111 ?
b10010010010110101010100011110010111000001100101001000000100110001000010010101010010000000110010 ?%
b10101101 =%
b10001 >%
0B
b0 A
1G
1<
#1400000000000
0G
0<
#1410000000000
b10000000000000000000001011100 2"
b0 7"
b0 6"
b10110 V
b0 "#
b0 r$
b11011110 ~$
b10000000000000000000001011100 1"
b10000000000000000000001011000 K
b10000000000000000000001011000 ^
b10000000000000000000001011000 !#
b10000000000000000000001010100 q"
b10000000000000000000001010000 ?"
b10000000000000000000001010000 f"
b10000000000000000000001001100 &"
b10000000000000000000001001100 S"
b10000000000000000000001010000 W"
0s"
0t"
b0 y"
b0 q$
b10000000000000000000001001100 x"
b0 r"
b0 u"
b11011110 >
b10010010010110101010100011110010111000001100101001000000100110001000010010101010010000000110011 @
b100000 ?
b10010010010110101010100011110010111000001100101001000000100110001000010010101010010000000110011 ?%
b11011110 =%
b10010 >%
0B
1G
1<
#1420000000000
0G
0<
#1430000000000
b10000000000000000000001100000 2"
b10111 V
b10000000000000000000001010000 x"
b10000000000000000000001010000 &"
b10000000000000000000001010000 S"
b10000000000000000000001010100 W"
b10000000000000000000001010100 ?"
b10000000000000000000001010100 f"
b10000000000000000000001011000 q"
b10000000000000000000001100000 1"
b10000000000000000000001011100 K
b10000000000000000000001011100 ^
b10000000000000000000001011100 !#
b1100100 -
b1100000 ,
b1011100 +
b1011000 *
b1010100 )
b1010000 (
b1001100 '
b1001000 &
b1000100 %
b100000011 2
b100000010 1
b100000001 0
b100000000 /
b110000000000000000000001010000 2%
b110000000000000000000000110000 0%
b0 ~$
b0 }$
b0 |$
b0 {$
b0 y$
b0 w$
b110000000000000000000010010000 v$
b110000000000000000000010000000 5%
b110000000000000000000001110000 4%
b110000000000000000000001100000 3%
b110000000000000000000001000000 1%
b110000000000000000000000100000 -%
b110000000000000000000000010000 "%
b10010001101000101011001111000 u$
b100000000000000 A%
1B
1G
1<
#1440000000000
1]
0E
0G
0<
#1450000000000
1e
1l
b1100000 v
b10000000000000000000000000100 2"
b10000000100010010000000100011 J
b10000000100010010000000100011 Y
b10000000100010010000000100011 \
b10000000100010010000000100011 $"
b0 V
b10011 o
b10011 s
b10011 u
b10000000000000000000000000100 1"
b10000000000000000000000000000 K
b10000000000000000000000000000 ^
b10000000000000000000000000000 !#
b10011 b
b10011 %"
b10011 p"
b0 q"
b0 ?"
b0 f"
0P"
b0 &"
b0 S"
b0 W"
b0 x"
1G
1<
#1460000000000
0G
0<
#1470000000000
1G
1<
#1480000000000
0G
0<
#1490000000000
1G
1<
#1500000000000
0]
b10010001101000101011001111000 >
b10100110010110101010100011110010111000001100101001000000101001101010111 @
b100001 ?
0B
b10100110010110101010100011110010111000001100101001000000101001101010111 <%
b10010001101000101011001111000 ;%
b1000100 :%
1E
0G
0<
#1510000000000
0e
1g
b101000 v
b10000000000000000000000001000 2"
b110000000000000000000000010000 ."
b110000000000000000000000010000 7%
b10010001101000101011001111000 ,"
b10010001101000101011001111000 8%
b10000000100011001000000100011 J
b10000000100011001000000100011 Y
b10000000100011001000000100011 \
b10000000100011001000000100011 $"
b10 /"
b10 s$
b1 -"
b1 t$
b10 5"
b10010100100000000 ("
b1001010010000000 4"
b100000000 +"
b10000000 @"
b100000001 *"
b100000000 )"
b10000000100010010000000000000 A"
b10 m
b10 q
b1000 n
b1000 r
b100011 o
b100011 s
b100011 u
b1 V
1P"
b100 W"
1Z"
1^"
b10000000100010010000000100011 b
b10000000100010010000000100011 %"
b10000000100010010000000100011 p"
b10000000000000000000000000000 q"
b10000000000000000000000001000 1"
b10000000000000000000000000100 K
b10000000000000000000000000100 ^
b10000000000000000000000000100 !#
b1 A
1G
1<
#1520000000000
0G
0<
#1530000000000
b110000000000000000000100010000 B"
b110000000000000000000100010000 *#
1k$
1C$
1>$
0C"
b110000000000000000000100010000 (#
b110000000000000000000100010000 .#
1W$
b10000000000000000000000001100 2"
1h$
1?$
1:$
1S$
b0 J
b0 Y
b0 \
b0 $"
b110000000000000000000000100000 ."
b110000000000000000000000100000 7%
b100000000 )#
b100000000 ,#
b110000000000000000000000010000 {"
b110000000000000000000000010000 ##
b110000000000000000000000010000 +#
b10 V
b11 /"
b11 s$
b1 5"
b11001100100000000 ("
b1100110010000000 4"
b10000000100011001000000000000 A"
b1 m
b1 q
b100000000 |"
b100000000 %#
b10010001101000101011001111000 ~"
b110000000000000000000000010000 }"
b10000000000000000000000001100 1"
b10000000000000000000000001000 K
b10000000000000000000000001000 ^
b10000000000000000000000001000 !#
b10000000100011001000000100011 b
b10000000100011001000000100011 %"
b10000000100011001000000100011 p"
b10000000000000000000000000100 q"
1\"
0^"
b10 b"
b1 j"
b10 h"
b10000000100010010000000000000 `"
b10010100100000000 o"
b100000000 l"
b100000000 n"
b100000001 m"
b10010001101000101011001111000 k"
b110000000000000000000000010000 i"
b10000000000000000000100000000 ?"
b10000000000000000000000000000 f"
1N"
b100 x"
b10 A
1G
1<
#1540000000000
0G
0<
#1550000000000
0l
0g
b110000000000000000000100100000 B"
b110000000000000000000100100000 *#
b0 v
b1111 N
b1111 R
b1111 j
b1111 I"
1\$
b110000000000000000000100100000 (#
b110000000000000000000100100000 .#
0W$
1X$
0S$
b10000000000000000000000010000 2"
b110000000000000000000000100000 {"
b110000000000000000000000100000 ##
b110000000000000000000000100000 +#
b10000000100101001000100100011 J
b10000000100101001000100100011 Y
b10000000100101001000100100011 \
b10000000100101001000100100011 $"
b0 ."
b0 7%
b0 ,"
b0 8%
b10010001101000101011001111000 H
b10010001101000101011001111000 Q
b10010001101000101011001111000 h
b10010001101000101011001111000 F"
b110000000000000000000100010000 >"
b110000000000000000000100010000 3"
b1000100 O
b110000000000000000000000100000 }"
b0 /"
b0 s$
b0 -"
b0 t$
b0 5"
b0 ("
b0 4"
b0 +"
b0 @"
b0 *"
b0 )"
b0 A"
b0 m
b0 q
b0 n
b0 r
b0 o
b0 s
b0 u
b11 V
1t"
1L
1K"
0N"
0P"
0="
b10 T"
b10000000000000000000100000000 &"
b10000000000000000000100000000 S"
b10010001101000101011001111000 Y"
b110000000000000000000100010000 M
b110000000000000000000100010000 i
b110000000000000000000100010000 x
b110000000000000000000100010000 Q"
b10000000000000000000000000100 W"
b1 b"
b11 h"
b10000000100011001000000000000 `"
b11001100100000000 o"
b110000000000000000000000100000 i"
b10000000000000000000100000100 ?"
b10000000000000000000000000100 f"
b0 b
b0 %"
b0 p"
b10000000000000000000000001000 q"
b10000000000000000000000010000 1"
b10000000000000000000000001100 K
b10000000000000000000000001100 ^
b10000000000000000000000001100 !#
b11 A
1G
1<
#1560000000000
0G
0<
#1570000000000
1l
1g
b0 B"
b0 *#
b101000 v
b0 z"
b11 N
b11 R
b11 j
b11 I"
1C"
0k$
0C$
0>$
b0 (#
b0 .#
0\$
b10000000000000000000000010100 2"
0h$
0?$
0:$
0X$
b0 J
b0 Y
b0 \
b0 $"
b110000000000000000000001000000 ."
b110000000000000000000001000000 7%
b10010001101000101011001111000 ,"
b10010001101000101011001111000 8%
b0 )#
b0 ,#
b0 {"
b0 ##
b0 +#
b100 V
b101 /"
b101 s$
b1 -"
b1 t$
b10 0"
b1 5"
b101001100100000000 ("
b10100110010000000 4"
b100000010 +"
b10000001 @"
b100000001 *"
b100000010 )"
b10000000100101001000000000000 A"
b1 m
b1 q
b1000 n
b1000 r
b100011 o
b100011 s
b100011 u
b0 |"
b0 %#
b0 ~"
b0 }"
b110000000000000000000100100000 >"
b110000000000000000000100100000 3"
b1001000 O
b110000000000000000000100010000 "#
b110000000000000000000100010000 r$
b0 I
b0 T
b0 [
b0 y
b10000000000000000000000010100 1"
b10000000000000000000000010000 K
b10000000000000000000000010000 ^
b10000000000000000000000010000 !#
b10000000100101001000100100011 b
b10000000100101001000100100011 %"
b10000000100101001000100100011 p"
b10000000000000000000000001100 q"
0Z"
0\"
b0 b"
b0 j"
b0 h"
b0 `"
b0 o"
b0 l"
b0 n"
b0 m"
b0 k"
b0 i"
b10000000000000000000000001000 ?"
b10000000000000000000000001000 f"
18"
b1 T"
b10000000000000000000100000100 &"
b10000000000000000000100000100 S"
b110000000000000000000100100000 M
b110000000000000000000100100000 i
b110000000000000000000100100000 x
b110000000000000000000100100000 Q"
b10000000000000000000000001000 W"
0t"
b10000000000000000000000000100 x"
b110000000000000000000100010000 u"
b100 A
1G
1<
#1580000000000
0G
0<
#1590000000000
0l
0g
b110000000000000000000101000010 B"
b110000000000000000000101000010 *#
b0 v
b1 N
b1 R
b1 j
b1 I"
1k$
18#
1C$
1>$
0C"
b110000000000000000000101000010 (#
b110000000000000000000101000010 .#
1a$
1h$
15#
1?$
1:$
1]$
b10000000000000000000000011000 2"
b100000010 )#
b100000010 ,#
b110000000000000000000001000000 {"
b110000000000000000000001000000 ##
b110000000000000000000001000000 +#
b0 ."
b0 7%
b0 ,"
b0 8%
b10000000100111000000000100011 J
b10000000100111000000000100011 Y
b10000000100111000000000100011 \
b10000000100111000000000100011 $"
b110000000000000000000100100000 "#
b110000000000000000000100100000 r$
b0 H
b0 Q
b0 h
b0 F"
b0 >"
b0 3"
b0 O
b100000010 |"
b100000010 %#
b10010001101000101011001111000 ~"
b110000000000000000000001000000 }"
b0 /"
b0 s$
b0 -"
b0 t$
b0 0"
b0 5"
b0 ("
b0 4"
b0 +"
b0 @"
b0 *"
b0 )"
b0 A"
b0 m
b0 q
b0 n
b0 r
b0 o
b0 s
b0 u
b101 V
b10000000000000000000000001000 x"
b110000000000000000000100100000 u"
0L
0K"
1P"
1="
08"
b0 T"
b10000000000000000000000001000 &"
b10000000000000000000000001000 S"
b0 Y"
b0 M
b0 i
b0 x
b0 Q"
b10000000000000000000000001100 W"
1Z"
1\"
b1 b"
b10 g"
b1 j"
b101 h"
b10000000100101001000000000000 `"
b101001100100000000 o"
b100000010 l"
b100000010 n"
b100000001 m"
b10010001101000101011001111000 k"
b110000000000000000000001000000 i"
b10000000000000000000100001110 ?"
b10000000000000000000000001100 f"
b0 b
b0 %"
b0 p"
b10000000000000000000000010000 q"
b10000000000000000000000011000 1"
b10000000000000000000000010100 K
b10000000000000000000000010100 ^
b10000000000000000000000010100 !#
b101011001111000 >
b101001100101101010101000111100101110000011001010010000001010011010010000010000000110001 @
b100010 ?
b101001100101101010101000111100101110000011001010010000001010011010010000010000000110001 <%
b101011001111000 ;%
b1001000 :%
0B
b0 A
1G
1<
#1600000000000
0G
0<
#1610000000000
1l
1g
b0 B"
b0 *#
b101000 v
b1100 N
b1100 R
b1100 j
b1100 I"
1C"
0k$
08#
0C$
0>$
b0 (#
b0 .#
0a$
b10000000000000000000000011100 2"
0h$
05#
0?$
0:$
0]$
b10000000101000000000010100011 J
b10000000101000000000010100011 Y
b10000000101000000000010100011 \
b10000000101000000000010100011 $"
b0 )#
b0 ,#
b0 {"
b0 ##
b0 +#
b110000000000000000000001100000 ."
b110000000000000000000001100000 7%
b10010001101000101011001111000 ,"
b10010001101000101011001111000 8%
b110 V
b111 /"
b111 s$
b1 -"
b1 t$
b111000100100000000 ("
b11100010010000000 4"
b100000000 +"
b10000000 @"
b100000001 *"
b100000000 )"
b10000000100111000000000000000 A"
b1000 n
b1000 r
b100011 o
b100011 s
b100011 u
b0 |"
b0 %#
b0 ~"
b0 }"
b1010110011110000000000000000000 H
b1010110011110000000000000000000 Q
b1010110011110000000000000000000 h
b1010110011110000000000000000000 F"
b110000000000000000000101000010 >"
b110000000000000000000101000010 3"
b10 H"
b1010000 O
b0 "#
b0 r$
b10000000000000000000000011100 1"
b10000000000000000000000011000 K
b10000000000000000000000011000 ^
b10000000000000000000000011000 !#
b10000000100111000000000100011 b
b10000000100111000000000100011 %"
b10000000100111000000000100011 p"
b10000000000000000000000010100 q"
0Z"
0\"
b0 b"
b0 g"
b0 j"
b0 h"
b0 `"
b0 o"
b0 l"
b0 n"
b0 m"
b0 k"
b0 i"
b10000000000000000000000010000 ?"
b10000000000000000000000010000 f"
1L
1K"
0P"
0="
18"
b1 T"
b10 X"
b10000000000000000000100001110 &"
b10000000000000000000100001110 S"
b10010001101000101011001111000 Y"
b110000000000000000000101000010 M
b110000000000000000000101000010 i
b110000000000000000000101000010 x
b110000000000000000000101000010 Q"
b10000000000000000000000010000 W"
b10000000000000000000000001100 x"
b0 u"
b1010110011110000000000000000000 >
b101001100101101010101000111100101110000011001010010000001010011010010000010000000110011 @
b100011 ?
b101001100101101010101000111100101110000011001010010000001010011010010000010000000110011 <%
b1010110011110000000000000000000 ;%
b1010000 :%
0B
1G
1<
#1620000000000
0G
0<
#1630000000000
b110000000000000000000101100000 B"
b110000000000000000000101100000 *#
b1 N
b1 R
b1 j
b1 I"
1k$
1C$
1>$
1a$
0C"
b110000000000000000000101100000 (#
b110000000000000000000101100000 .#
1\$
1h$
1?$
1:$
1]$
1X$
b10000000000000000000000100000 2"
b100000000 )#
b100000000 ,#
b110000000000000000000001100000 {"
b110000000000000000000001100000 ##
b110000000000000000000001100000 +#
b10000000101001000000100100011 J
b10000000101001000000100100011 Y
b10000000101001000000100100011 \
b10000000101001000000100100011 $"
b110000000000000000000001110000 ."
b110000000000000000000001110000 7%
b110000000000000000000101000010 "#
b110000000000000000000101000010 r$
b0 H
b0 Q
b0 h
b0 F"
b0 >"
b0 3"
b0 H"
b0 O
b100000000 |"
b100000000 %#
b10010001101000101011001111000 ~"
b110000000000000000000001100000 }"
b1000 /"
b1000 s$
b1 0"
b1000000100100000000 ("
b100000010010000000 4"
b100100000000 +"
b10010000000 @"
b100000001 )"
b10000000101000000000000000000 A"
b111 V
b10 y"
b10 q$
b10000000000000000000000010000 x"
b110000000000000000000101000010 u"
0L
0K"
1P"
1="
08"
b0 T"
b0 X"
b10000000000000000000000010000 &"
b10000000000000000000000010000 S"
b0 Y"
b0 M
b0 i
b0 x
b0 Q"
b10000000000000000000000010100 W"
1Z"
1\"
b1 j"
b111 h"
b10000000100111000000000000000 `"
b111000100100000000 o"
b100000000 l"
b100000000 n"
b100000001 m"
b10010001101000101011001111000 k"
b110000000000000000000001100000 i"
b10000000000000000000100010100 ?"
b10000000000000000000000010100 f"
b10000000101000000000010100011 b
b10000000101000000000010100011 %"
b10000000101000000000010100011 p"
b10000000000000000000000011000 q"
b10000000000000000000000100000 1"
b10000000000000000000000011100 K
b10000000000000000000000011100 ^
b10000000000000000000000011100 !#
b1 A
1G
1<
#1640000000000
0G
0<
#1650000000000
b110000000000000000000101110001 B"
b110000000000000000000101110001 *#
13#
b110000000000000000000101110001 (#
b110000000000000000000101110001 .#
1W$
b10000000000000000000000100100 2"
11#
1S$
b10000000101010000000110100011 J
b10000000101010000000110100011 Y
b10000000101010000000110100011 \
b10000000101010000000110100011 $"
b110000000000000000000010000000 ."
b110000000000000000000010000000 7%
b100000001 )#
b100000001 ,#
b110000000000000000000001110000 {"
b110000000000000000000001110000 ##
b110000000000000000000001110000 +#
b1000 V
b1001 /"
b1001 s$
b10 0"
b1001000100100000000 ("
b100100010010000000 4"
b100000010 +"
b10000001 @"
b100000010 )"
b10000000101001000000000000000 A"
b100000001 |"
b100000001 %#
b110000000000000000000001110000 }"
b10010001101000101011001111000 H
b10010001101000101011001111000 Q
b10010001101000101011001111000 h
b10010001101000101011001111000 F"
b110000000000000000000101100000 >"
b110000000000000000000101100000 3"
b1011000 O
b0 "#
b0 r$
b10000000000000000000000100100 1"
b10000000000000000000000100000 K
b10000000000000000000000100000 ^
b10000000000000000000000100000 !#
b10000000101001000000100100011 b
b10000000101001000000100100011 %"
b10000000101001000000100100011 p"
b10000000000000000000000011100 q"
b1 g"
b1000 h"
b10000000101000000000000000000 `"
b1000000100100000000 o"
b100100000000 l"
b100000001 n"
b110000000000000000000001110000 i"
b10000000000000000100100011000 ?"
b10000000000000000000000011000 f"
1L
1K"
0P"
b10000000000000000000100010100 &"
b10000000000000000000100010100 S"
b10010001101000101011001111000 Y"
b110000000000000000000101100000 M
b110000000000000000000101100000 i
b110000000000000000000101100000 x
b110000000000000000000101100000 Q"
b10000000000000000000000011000 W"
b0 y"
b0 q$
b10000000000000000000000010100 x"
b0 u"
b1111000 >
b101001100101101010101000111100101110000011001010010000001010011010000100010000000110001 @
b100100 ?
b101001100101101010101000111100101110000011001010010000001010011010000100010000000110001 <%
b1111000 ;%
b1011000 :%
0B
b10 A
1G
1<
#1660000000000
0G
0<
#1670000000000
b110000000000000000000110000010 B"
b110000000000000000000110000010 *#
b10 N
b10 R
b10 j
b10 I"
18#
03#
1f$
0a$
0\$
b110000000000000000000110000010 (#
b110000000000000000000110000010 .#
0W$
15#
01#
1b$
0]$
0X$
0S$
b10000000000000000000000101000 2"
b110100010101100111100000000000 H
b110100010101100111100000000000 Q
b110100010101100111100000000000 h
b110100010101100111100000000000 F"
b100000010 )#
b100000010 ,#
b110000000000000000000010000000 {"
b110000000000000000000010000000 ##
b110000000000000000000010000000 +#
b110000000000000000000010010000 ."
b110000000000000000000010010000 7%
b0 J
b0 Y
b0 \
b0 $"
b110000000000000000000101100000 "#
b110000000000000000000101100000 r$
b110000000000000000000101110001 >"
b110000000000000000000101110000 3"
b1 H"
b1011100 O
b100000010 |"
b100000010 %#
b110000000000000000000010000000 }"
b1010 /"
b1010 s$
b11 0"
b1010000100100000000 ("
b101000010010000000 4"
b100100000010 +"
b10010000001 @"
b100000011 )"
b10000000101010000000000000000 A"
b1001 V
b10000000000000000000000011000 x"
b110000000000000000000101100000 u"
b1 X"
b10000000000000000100100011000 &"
b10000000000000000100100011000 S"
b110000000000000000000101110001 M
b110000000000000000000101110001 i
b110000000000000000000101110001 x
b110000000000000000000101110001 Q"
b10000000000000000000000011100 W"
b10 g"
b1001 h"
b10000000101001000000000000000 `"
b1001000100100000000 o"
b100000010 l"
b100000010 n"
b110000000000000000000010000000 i"
b10000000000000000000100011110 ?"
b10000000000000000000000011100 f"
b10000000101010000000110100011 b
b10000000101010000000110100011 %"
b10000000101010000000110100011 p"
b10000000000000000000000100000 q"
b10000000000000000000000101000 1"
b10000000000000000000000100100 K
b10000000000000000000000100100 ^
b10000000000000000000000100100 !#
b11 A
1G
1<
#1680000000000
0G
0<
#1690000000000
0l
0g
b110000000000000000000110010011 B"
b110000000000000000000110010011 *#
b0 v
b100 N
b100 R
b100 j
b100 I"
13#
b110000000000000000000110010011 (#
b110000000000000000000110010011 .#
1W$
b10000000000000000000000101100 2"
11#
1S$
b0 ."
b0 7%
b0 ,"
b0 8%
b100000011 )#
b100000011 ,#
b110000000000000000000010010000 {"
b110000000000000000000010010000 ##
b110000000000000000000010010000 +#
b1010110011110000000000000000000 H
b1010110011110000000000000000000 Q
b1010110011110000000000000000000 h
b1010110011110000000000000000000 F"
b1010 V
b0 /"
b0 s$
b0 -"
b0 t$
b0 0"
b0 ("
b0 4"
b0 +"
b0 @"
b0 *"
b0 )"
b0 A"
b0 n
b0 r
b0 o
b0 s
b0 u
b100000011 |"
b100000011 %#
b110000000000000000000010010000 }"
b110000000000000000000110000010 >"
b110000000000000000000110000010 3"
b10 H"
b1100000 O
b110000000000000000000101110001 "#
b110000000000000000000101110001 r$
b0 I
b0 T
b0 [
b0 y
b10000000000000000000000101100 1"
b10000000000000000000000101000 K
b10000000000000000000000101000 ^
b10000000000000000000000101000 !#
b0 b
b0 %"
b0 p"
b10000000000000000000000100100 q"
b11 g"
b1010 h"
b10000000101010000000000000000 `"
b1010000100100000000 o"
b100100000010 l"
b100000011 n"
b110000000000000000000010010000 i"
b10000000000000000100100100010 ?"
b10000000000000000000000100000 f"
b10 X"
b10000000000000000000100011110 &"
b10000000000000000000100011110 S"
b110000000000000000000110000010 M
b110000000000000000000110000010 i
b110000000000000000000110000010 x
b110000000000000000000110000010 Q"
b10000000000000000000000100000 W"
b1 y"
b1 q$
b10000000000000000000000011100 x"
b110000000000000000000101110001 u"
b111100000000000 >
b101001100101101010101000111100101110000011001010010000001010011010000100010000000110010 @
b100101 ?
b101001100101101010101000111100101110000011001010010000001010011010000100010000000110010 <%
b111100000000000 ;%
b1011100 :%
0B
b100 A
1G
1<
#1700000000000
0G
0<
#1710000000000
b0 B"
b0 *#
b1000 N
b1000 R
b1000 j
b1000 I"
1C"
0k$
08#
03#
0C$
0>$
0f$
b0 (#
b0 .#
0W$
0h$
05#
01#
0?$
0:$
0b$
0S$
b10000000000000000000000110000 2"
b1111000000000000000000000000000 H
b1111000000000000000000000000000 Q
b1111000000000000000000000000000 h
b1111000000000000000000000000000 F"
b0 )#
b0 ,#
b0 {"
b0 ##
b0 +#
b110000000000000000000110000010 "#
b110000000000000000000110000010 r$
b110000000000000000000110010011 >"
b110000000000000000000110010010 3"
b11 H"
b1100100 O
b0 |"
b0 %#
b0 ~"
b0 }"
b1011 V
b10 y"
b10 q$
b10000000000000000000000100000 x"
b110000000000000000000110000010 u"
b11 X"
b10000000000000000100100100010 &"
b10000000000000000100100100010 S"
b110000000000000000000110010011 M
b110000000000000000000110010011 i
b110000000000000000000110010011 x
b110000000000000000000110010011 Q"
b10000000000000000000000100100 W"
0Z"
0\"
b0 g"
b0 j"
b0 h"
b0 `"
b0 o"
b0 l"
b0 n"
b0 m"
b0 k"
b0 i"
b10000000000000000000000100100 ?"
b10000000000000000000000100100 f"
b10000000000000000000000101000 q"
b10000000000000000000000110000 1"
b10000000000000000000000101100 K
b10000000000000000000000101100 ^
b10000000000000000000000101100 !#
b11110000000000000000000 >
b101001100101101010101000111100101110000011001010010000001010011010000100010000000110011 @
b100110 ?
b101001100101101010101000111100101110000011001010010000001010011010000100010000000110011 <%
b11110000000000000000000 ;%
b1100000 :%
0B
b0 A
1G
1<
#1720000000000
0G
0<
#1730000000000
b1 N
b1 R
b1 j
b1 I"
b10000000000000000000000110100 2"
b1100 V
b0 H
b0 Q
b0 h
b0 F"
b0 >"
b0 3"
b0 H"
b0 O
b110000000000000000000110010011 "#
b110000000000000000000110010011 r$
b0 I
b0 T
b0 [
b0 y
b10000000000000000000000110100 1"
b10000000000000000000000110000 K
b10000000000000000000000110000 ^
b10000000000000000000000110000 !#
b10000000000000000000000101100 q"
b10000000000000000000000101000 ?"
b10000000000000000000000101000 f"
0L
0K"
1P"
b0 X"
b10000000000000000000000100100 &"
b10000000000000000000000100100 S"
b0 Y"
b0 M
b0 i
b0 x
b0 Q"
b10000000000000000000000101000 W"
b11 y"
b11 q$
b10000000000000000000000100100 x"
b110000000000000000000110010011 u"
b1111000000000000000000000000000 >
b101001100101101010101000111100101110000011001010010000001010011010000100010000000110100 @
b100111 ?
b101001100101101010101000111100101110000011001010010000001010011010000100010000000110100 <%
b1111000000000000000000000000000 ;%
b1100100 :%
0B
1G
1<
#1740000000000
0G
0<
#1750000000000
b10000000000000000000000111000 2"
b0 "#
b0 r$
b1101 V
b0 y"
b0 q$
b10000000000000000000000101000 x"
b0 u"
b10000000000000000000000101000 &"
b10000000000000000000000101000 S"
b10000000000000000000000101100 W"
b10000000000000000000000101100 ?"
b10000000000000000000000101100 f"
b10000000000000000000000110000 q"
b10000000000000000000000111000 1"
b10000000000000000000000110100 K
b10000000000000000000000110100 ^
b10000000000000000000000110100 !#
b1111111111111110000000100100011 .
b0 v$
b0 5%
b0 4%
b0 3%
b0 2%
b0 1%
b0 0%
b0 -%
b0 "%
b0 u$
b100000000000000 A%
1B
1G
1<
#1760000000000
1]
0E
0G
0<
#1770000000000
1e
1l
b1100000 v
b10000000000000000000000000100 2"
b1111111111111110000000110110111 J
b1111111111111110000000110110111 Y
b1111111111111110000000110110111 \
b1111111111111110000000110110111 $"
b0 V
b10011 o
b10011 s
b10011 u
b10000000000000000000000000100 1"
b10000000000000000000000000000 K
b10000000000000000000000000000 ^
b10000000000000000000000000000 !#
b10011 b
b10011 %"
b10011 p"
b0 q"
b0 ?"
b0 f"
0P"
b0 &"
b0 S"
b0 W"
b0 x"
1G
1<
#1780000000000
0G
0<
#1790000000000
1G
1<
#1800000000000
0G
0<
#1810000000000
1G
1<
#1820000000000
0]
b1111111111111110000000000000000 >
b1010101001011010101010001111001011100000110010100100000010011000101010101001001 @
b101000 ?
0B
b1010101001011010101010001111001011100000110010100100000010011000101010101001001 ?%
b1111111111111110000000000000000 =%
b11 >%
1E
0G
0<
#1830000000000
1_
b11100000 v
b10000000000000000000000001000 2"
b1111111111111110000001000010111 J
b1111111111111110000001000010111 Y
b1111111111111110000001000010111 \
b1111111111111110000001000010111 $"
b11110 /"
b11110 s$
b11111 -"
b11111 t$
b11 0"
b11110000111111111110 ("
b1111000011111111111 4"
b111111100010 +"
b11111110001 @"
b11111111111 *"
b11111100011 )"
b1111111111111110000000000000000 A"
b111111 n
b111111 r
b110111 o
b110111 s
b110111 u
b1 V
1P"
b100 W"
1Z"
1^"
b1111111111111110000000110110111 b
b1111111111111110000000110110111 %"
b1111111111111110000000110110111 p"
b10000000000000000000000000000 q"
b10000000000000000000000001000 1"
b10000000000000000000000000100 K
b10000000000000000000000000100 ^
b10000000000000000000000000100 !#
b1 A
1G
1<
#1840000000000
0G
0<
#1850000000000
1d
0_
0l
b1111111111111110000000000000000 B"
b1111111111111110000000000000000 *#
b101000000 v
1M$
1C$
1>$
19$
14$
1/$
1*$
1%$
1~#
1y#
1t#
1j#
1e#
1`#
0C"
b1111111111111110000000000000000 (#
b1111111111111110000000000000000 .#
1[#
b10000000000000000000000001100 2"
1J$
1@$
1;$
16$
11$
1,$
1'$
1"$
1{#
1v#
1q#
1g#
1b#
1]#
1X#
b0 J
b0 Y
b0 \
b0 $"
b1111111111111110000000000000000 )#
b1111111111111110000000000000000 ,#
b10 V
b100 0"
b11111100100 +"
b1111110010 @"
b11111100100 )"
b10111 o
b10111 s
b10111 u
b1111111111111110000000000000000 |"
b1111111111111110000000000000000 %#
b10000000000000000000000001100 1"
b10000000000000000000000001000 K
b10000000000000000000000001000 ^
b10000000000000000000000001000 !#
b1111111111111110000001000010111 b
b1111111111111110000001000010111 %"
b1111111111111110000001000010111 p"
b10000000000000000000000000100 q"
1e"
b11 g"
b11111 j"
b11110 h"
b1111111111111110000000000000000 `"
b11110000111111111110 o"
b111111100010 l"
b11111100011 n"
b11111111111 m"
b10000000000000000111111100010 ?"
b10000000000000000000000000000 f"
1N"
b100 x"
b10 A
1G
1<
#1860000000000
0G
0<
#1870000000000
0d
0e
b10001111111111110000000000000100 B"
b10001111111111110000000000000100 *#
b0 v
1E"
0&#
1R$
1D"
1P$
1L$
0M$
1K$
1B$
0C$
1A$
b1110000000000000000000000000000 /#
1=$
0>$
b10001111111111110000000000000100 (#
b10001111111111110000000000000100 .#
1o#
b10000000000000000000000010000 2"
1:$
1k#
b1111111111111110000000000000000 >"
b1111111111111110000000000000000 3"
b10000000000000000000000000100 {"
b10000000000000000000000000100 ##
b10000000000000000000000000100 +#
b0 /"
b0 s$
b0 -"
b0 t$
b0 0"
b0 ("
b0 4"
b0 +"
b0 @"
b0 *"
b0 )"
b0 A"
b0 n
b0 r
b0 o
b0 s
b0 u
b11 V
1t"
0P"
b11 X"
b10000000000000000111111100010 &"
b10000000000000000111111100010 S"
b1111111111111110000000000000000 M
b1111111111111110000000000000000 i
b1111111111111110000000000000000 x
b1111111111111110000000000000000 Q"
b10000000000000000000000000100 W"
0Z"
0e"
1_"
b100 g"
b11111100100 l"
b11111100100 n"
b10000000000000000011111101000 ?"
b10000000000000000000000000100 f"
b0 b
b0 %"
b0 p"
b10000000000000000000000001000 q"
b10000000000000000000000010000 1"
b10000000000000000000000001100 K
b10000000000000000000000001100 ^
b10000000000000000000000001100 !#
b11 A
1G
1<
#1880000000000
0G
0<
#1890000000000
b0 B"
b0 *#
0E"
0&#
1C"
0R$
0D"
0P$
0K$
0A$
0M$
0L$
0C$
0B$
09$
04$
0/$
0*$
0%$
0~#
0y#
0t#
0j#
0e#
0`#
0[#
b0 /#
0=$
0>$
b0 (#
b0 .#
0o#
b10000000000000000000000010100 2"
0J$
0@$
0;$
06$
01$
0,$
0'$
0"$
0{#
0v#
0q#
0g#
0b#
0]#
0X#
b0 )#
b0 ,#
0:$
0k#
b100 V
b0 |"
b0 %#
b0 {"
b0 ##
b0 +#
b10001111111111110000000000000100 >"
b10001111111111110000000000000100 3"
b1 O
b1111111111111110000000000000000 "#
b1111111111111110000000000000000 r$
b10000000000000000000000010100 1"
b10000000000000000000000010000 K
b10000000000000000000000010000 ^
b10000000000000000000000010000 !#
b10000000000000000000000001100 q"
0^"
0_"
b0 g"
b0 j"
b0 h"
b0 `"
b0 o"
b0 l"
b0 n"
b0 m"
b10000000000000000000000001000 ?"
b10000000000000000000000001000 f"
1O"
1M"
b100 X"
b10000000000000000011111101000 &"
b10000000000000000011111101000 S"
b10001111111111110000000000000100 M
b10001111111111110000000000000100 i
b10001111111111110000000000000100 x
b10001111111111110000000000000100 Q"
b10000000000000000000000001000 W"
b11 y"
b11 q$
b10000000000000000000000000100 x"
b1111111111111110000000000000000 u"
b100 A
1G
1<
#1900000000000
0G
0<
#1910000000000
b10000000000000000000000011000 2"
b0 7"
b0 6"
b10001111111111110000000000000100 "#
b10001111111111110000000000000100 r$
b0 >"
b0 3"
b0 O
b101 V
b100 y"
b100 q$
b10000000000000000000000001000 x"
b10001111111111110000000000000100 u"
0N"
0O"
0M"
1P"
b0 X"
b10000000000000000000000001000 &"
b10000000000000000000000001000 S"
b0 M
b0 i
b0 x
b0 Q"
b10000000000000000000000001100 W"
b10000000000000000000000001100 ?"
b10000000000000000000000001100 f"
b10000000000000000000000010000 q"
b10000000000000000000000011000 1"
b10000000000000000000000010100 K
b10000000000000000000000010100 ^
b10000000000000000000000010100 !#
b1111111111111110000000000000000 -%
b101 A
1G
1<
#1920000000000
0G
0<
#1930000000000
b10000000000000000000000011100 2"
b0 7"
b0 6"
b110 V
b0 "#
b0 r$
b10001111111111110000000000000100 0%
b10000000000000000000000011100 1"
b10000000000000000000000011000 K
b10000000000000000000000011000 ^
b10000000000000000000000011000 !#
b10000000000000000000000010100 q"
b10000000000000000000000010000 ?"
b10000000000000000000000010000 f"
b10000000000000000000000001100 &"
b10000000000000000000000001100 S"
b10000000000000000000000010000 W"
0t"
b0 y"
b0 q$
b10000000000000000000000001100 x"
b0 u"
b10001111111111110000000000000100 >
b10101010010110101010100011110010111000001100101001000000100000101010101010010010101000001000011 @
b101001 ?
b10101010010110101010100011110010111000001100101001000000100000101010101010010010101000001000011 ?%
b10001111111111110000000000000100 =%
b100 >%
0B
b110 A
1G
1<
#1940000000000
0G
0<
#1950000000000
b10000000000000000000000100000 2"
b111 V
b10000000000000000000000010000 x"
b10000000000000000000000010000 &"
b10000000000000000000000010000 S"
b10000000000000000000000010100 W"
b10000000000000000000000010100 ?"
b10000000000000000000000010100 f"
b10000000000000000000000011000 q"
b10000000000000000000000100000 1"
b10000000000000000000000011100 K
b10000000000000000000000011100 ^
b10000000000000000000000011100 !#
b100000000000000001111111100 4
b111111110000 .
b11001000 "%
b1100100 u$
b110010000 0%
b100101100 -%
b100000000000000 A%
1B
b0 A
1G
1<
#1960000000000
1]
0E
0G
0<
#1970000000000
1e
1l
b1100000 v
b10000000000000000000000000100 2"
b1111111000100000000001011101111 J
b1111111000100000000001011101111 Y
b1111111000100000000001011101111 \
b1111111000100000000001011101111 $"
b0 V
b10011 o
b10011 s
b10011 u
b10000000000000000000000000100 1"
b10000000000000000000000000000 K
b10000000000000000000000000000 ^
b10000000000000000000000000000 !#
b10011 b
b10011 %"
b10011 p"
b0 q"
b0 ?"
b0 f"
0P"
b0 &"
b0 S"
b0 W"
b0 x"
1G
1<
#1980000000000
0G
0<
#1990000000000
1G
1<
#2000000000000
0G
0<
#2010000000000
1G
1<
#2020000000000
0]
b10000000000000000000000000100 >
b1001010001011010101010001111001011100000110010100100000010010100100000101001100 @
b101010 ?
0B
b1001010001011010101010001111001011100000110010100100000010010100100000101001100 ?%
b10000000000000000000000000100 =%
b101 >%
1E
0G
0<
#2030000000000
1a
b1100010 v
b10000000000000000000000001000 2"
b1000001000001100110011 J
b1000001000001100110011 Y
b1000001000001100110011 \
b1000001000001100110011 $"
b10001 -"
b10001 t$
b101 0"
b111111110000 ("
b11111111000 4"
b111111100100 +"
b11111110010 @"
b11111110001 *"
b11111100101 )"
b1111111000100000000000000000000 A"
b111111 n
b111111 r
b1101111 o
b1101111 s
b1101111 u
b1 V
1P"
b100 W"
1Z"
1^"
b1111111000100000000001011101111 b
b1111111000100000000001011101111 %"
b1111111000100000000001011101111 p"
b10000000000000000000000000000 q"
b10000000000000000000000001000 1"
b10000000000000000000000000100 K
b10000000000000000000000000100 ^
b10000000000000000000000000100 !#
b1 A
1G
1<
#2040000000000
0G
0<
#2050000000000
0l
0a
b11111110001 B"
b11111110001 *#
b1000000 v
1=#
1p$
1k$
1f$
1a$
1\$
1W$
0C"
b11111110001 (#
b11111110001 .#
13#
b10000000000000000000000001100 2"
1:#
1m$
1h$
1c$
1^$
1Y$
1T$
11#
b0 J
b0 Y
b0 \
b0 $"
b1100100 ."
b1100100 7%
b11001000 ,"
b11001000 8%
b11111110001 )#
b11111110001 ,#
b10 V
b1 /"
b1 s$
b10 -"
b10 t$
b110 0"
b1000000000000010 ("
b100000000000001 4"
b110 +"
b11 @"
b10 *"
b110 )"
b1000001000000000000000 A"
b0 n
b0 r
b110011 o
b110011 s
b110011 u
b11111110001 |"
b11111110001 %#
b10000000000000000000000001100 1"
b10000000000000000000000001000 K
b10000000000000000000000001000 ^
b10000000000000000000000001000 !#
b1000001000001100110011 b
b1000001000001100110011 %"
b1000001000001100110011 p"
b10000000000000000000000000100 q"
1c"
b101 g"
b10001 j"
b1111111000100000000000000000000 `"
b111111110000 o"
b111111100100 l"
b11111100101 n"
b11111110001 m"
b10000000000000000111111110000 ?"
b10000000000000000000000000000 f"
1N"
b100 x"
b10 A
1G
1<
#2060000000000
0G
0<
#2070000000000
0e
b100101100 B"
b100101100 *#
b10 N
b10 R
b10 j
b10 I"
b0 v
1i$
1e$
0f$
1d$
b11000000 /#
1`$
0=#
0p$
1k$
0W$
1H$
03#
0a$
b100101100 (#
b100101100 .#
1o#
0:#
0m$
0h$
0Y$
0T$
1E$
01#
1]$
1X$
1k#
1#"
b11001000 )#
b11001000 ,#
b1100100 {"
b1100100 ##
b1100100 +#
b0 ."
b0 7%
b0 ,"
b0 8%
b10000000000000000111111110000 2"
b10000000000000000000000000100 >"
b11111110000 3"
b1 H"
b111111100 O
b11001000 |"
b11001000 %#
b11001000 ~"
b1100100 }"
b0 /"
b0 s$
b0 -"
b0 t$
b0 0"
b0 ("
b0 4"
b0 +"
b0 @"
b0 *"
b0 )"
b0 A"
b0 o
b0 s
b0 u
b11 V
1t"
1U"
0P"
b101 X"
b10000000000000000111111110000 &"
b10000000000000000111111110000 S"
b11111110001 M
b11111110001 i
b11111110001 x
b11111110001 Q"
b10000000000000000000000000100 W"
0c"
0Z"
b110 g"
b10 j"
b1 h"
b1000001000000000000000 `"
b1000000000000010 o"
b110 l"
b110 n"
b10 m"
b11001000 k"
b1100100 i"
b10000000000000000000000001010 ?"
b10000000000000000000000000100 f"
b0 b
b0 %"
b0 p"
b10000000000000000000000001000 q"
b10000000000000000000000010000 1"
b10000000000000000000000001100 K
b10000000000000000000000001100 ^
b10000000000000000000000001100 !#
b11 A
1G
1<
#2080000000000
0G
0<
#2090000000000
1e
1l
b0 B"
b0 *#
b1100000 v
b1 N
b1 R
b1 j
b1 I"
1C"
0k$
0d$
0i$
0`$
0f$
b0 /#
0e$
0H$
0\$
b0 (#
b0 .#
0o#
0c$
0^$
0E$
0]$
0X$
0k#
b10000011000001110110011 J
b10000011000001110110011 Y
b10000011000001110110011 \
b10000011000001110110011 $"
b0 )#
b0 ,#
b0 {"
b0 ##
b0 +#
0#"
b1111111100 V
b10011 o
b10011 s
b10011 u
b0 |"
b0 %#
b0 ~"
b0 }"
b10000000000000000111111110100 2"
b0 3"
b0 H"
b0 O
b0 >"
b10000000000000000000000000100 "#
b10000000000000000000000000100 r$
b10000000000000000111111110100 1"
b10000000000000000111111110000 K
b10000000000000000111111110000 ^
b10000000000000000111111110000 !#
b10011 b
b10011 %"
b10011 p"
b0 q"
0^"
b0 g"
b0 j"
b0 h"
b0 `"
b0 o"
b0 l"
b0 n"
b0 m"
b0 k"
b0 i"
b0 ?"
b0 f"
0U"
0N"
b0 X"
b0 &"
b0 S"
b0 M
b0 i
b0 x
b0 Q"
b0 W"
1v"
b101 y"
b101 q$
b10000000000000000000000000100 x"
b11111110001 u"
b100 A
1G
1<
#2100000000000
0G
0<
#2110000000000
0l
b1000000 v
b0 7"
b0 6"
b10000000000000000111111111000 2"
b100101100 ."
b100101100 7%
b110010000 ,"
b110010000 8%
b0 J
b0 Y
b0 \
b0 $"
b0 "#
b0 r$
b11 /"
b11 s$
b100 -"
b100 t$
b111 0"
b11000000000000100 ("
b1100000000000010 4"
b100000000110 +"
b10000000011 @"
b100 *"
b111 )"
b10000011000000000000000 A"
b110011 o
b110011 s
b110011 u
b1111111101 V
0v"
0t"
b0 y"
b0 q$
b0 x"
b0 u"
1P"
b100 W"
1Z"
1^"
b10000011000001110110011 b
b10000011000001110110011 %"
b10000011000001110110011 p"
b10000000000000000111111110000 q"
b10000000000000000111111111000 1"
b10000000000000000111111110100 K
b10000000000000000111111110100 ^
b10000000000000000111111110100 !#
b10000000000000000000000000100 1%
b101 A
1G
1<
#2120000000000
0G
0<
#2130000000000
0e
b1010111100 B"
b1010111100 *#
b0 v
1p$
1n$
b100000000 /#
1j$
1f$
1W$
1\$
1H$
0C"
b1010111100 (#
b1010111100 .#
1o#
b10000000000000000111111111100 2"
1h$
1c$
1T$
1g$
1X$
1D$
1k#
b0 ."
b0 7%
b0 ,"
b0 8%
b110010000 )#
b110010000 ,#
b100101100 {"
b100101100 ##
b100101100 +#
b1111111110 V
b0 /"
b0 s$
b0 -"
b0 t$
b0 0"
b0 ("
b0 4"
b0 +"
b0 @"
b0 *"
b0 )"
b0 A"
b0 o
b0 s
b0 u
b110010000 |"
b110010000 %#
b110010000 ~"
b100101100 }"
b10000000000000000111111111100 1"
b10000000000000000111111111000 K
b10000000000000000111111111000 ^
b10000000000000000111111111000 !#
b0 b
b0 %"
b0 p"
b10000000000000000111111110100 q"
0Z"
b111 g"
b100 j"
b11 h"
b10000011000000000000000 `"
b11000000000000100 o"
b100000000110 l"
b111 n"
b100 m"
b110010000 k"
b100101100 i"
b10000000000000001011111110110 ?"
b10000000000000000111111110000 f"
1N"
b100 x"
b1010111100 >
b101011 ?
b1010111100 =%
b111 >%
0B
b110 A
1G
1<
#2140000000000
0G
0<
#2150000000000
b0 B"
b0 *#
1C"
0p$
0n$
b0 /#
0j$
0f$
0W$
0\$
0H$
b0 (#
b0 .#
0o#
0h$
0c$
0T$
0g$
0X$
0D$
0k#
b10000000000000001000000000000 2"
b0 )#
b0 ,#
b0 {"
b0 ##
b0 +#
b110010000 H
b110010000 Q
b110010000 h
b110010000 F"
b1010111100 >"
b1010111100 3"
b10101111 O
b0 |"
b0 %#
b0 ~"
b0 }"
b1111111111 V
1t"
0P"
b111 X"
b10000000000000001011111110110 &"
b10000000000000001011111110110 S"
b110010000 Y"
b1010111100 M
b1010111100 i
b1010111100 x
b1010111100 Q"
b10000000000000000111111110100 W"
0^"
b0 g"
b0 j"
b0 h"
b0 `"
b0 o"
b0 l"
b0 n"
b0 m"
b0 k"
b0 i"
b10000000000000000111111110100 ?"
b10000000000000000111111110100 f"
b10000000000000000111111111000 q"
b10000000000000001000000000000 1"
b10000000000000000111111111100 K
b10000000000000000111111111100 ^
b10000000000000000111111111100 !#
b111 A
1G
1<
#2160000000000
0G
0<
#2170000000000
b10000000000000001000000000100 2"
b0 7"
b0 6"
b10000000000 V
b0 H
b0 Q
b0 h
b0 F"
b0 >"
b0 3"
b0 O
b1010111100 "#
b1010111100 r$
b10000000000000001000000000100 1"
b10000000000000001000000000000 K
b10000000000000001000000000000 ^
b10000000000000001000000000000 !#
b10000000000000000111111111100 q"
b10000000000000000111111111000 ?"
b10000000000000000111111111000 f"
0N"
1P"
b0 X"
b10000000000000000111111110100 &"
b10000000000000000111111110100 S"
b0 Y"
b0 M
b0 i
b0 x
b0 Q"
b10000000000000000111111111000 W"
b111 y"
b111 q$
b10000000000000000111111110100 x"
b1010111100 u"
b1000 A
1G
1<
#2180000000000
0G
0<
#2190000000000
b0 7"
b0 6"
b10000000000000001000000001000 2"
b0 "#
b0 r$
b10000000001 V
0t"
b0 y"
b0 q$
b10000000000000000111111111000 x"
b0 u"
b10000000000000000111111111000 &"
b10000000000000000111111111000 S"
b10000000000000000111111111100 W"
b10000000000000000111111111100 ?"
b10000000000000000111111111100 f"
b10000000000000001000000000000 q"
b10000000000000001000000001000 1"
b10000000000000001000000000100 K
b10000000000000001000000000100 ^
b10000000000000001000000000100 !#
b1010111100 3%
b1001 A
1G
1<
#2200000000000
0G
0<
#2210000000000
b10000000000000001000000001100 2"
b10000000010 V
b10000000000000001000000001100 1"
b10000000000000001000000001000 K
b10000000000000001000000001000 ^
b10000000000000001000000001000 !#
b10000000000000001000000000100 q"
b10000000000000001000000000000 ?"
b10000000000000001000000000000 f"
b10000000000000000111111111100 &"
b10000000000000000111111111100 S"
b10000000000000001000000000000 W"
b10000000000000000111111111100 x"
b100000000000000000000111100 4
b11111111111111111111111111110000 .
b0 3%
b0 1%
b110010000 0%
b100101100 -%
b11001000 "%
b10000000000000000000100000000 u$
b100000000000000 A%
b0 >
b101100 ?
b0 =%
b110 >%
1B
b1010 A
1G
1<
#2220000000000
1]
0E
0G
0<
#2230000000000
1e
1l
b1100000 v
b10000000000000000000000000100 2"
b11111111000000001000001011100111 J
b11111111000000001000001011100111 Y
b11111111000000001000001011100111 \
b11111111000000001000001011100111 $"
b10011 o
b10011 s
b10011 u
b0 V
b0 x"
0P"
b0 &"
b0 S"
b0 W"
b0 ?"
b0 f"
b10011 b
b10011 %"
b10011 p"
b0 q"
b10000000000000000000000000100 1"
b10000000000000000000000000000 K
b10000000000000000000000000000 ^
b10000000000000000000000000000 !#
b0 A
1G
1<
#2240000000000
0G
0<
#2250000000000
1G
1<
#2260000000000
0G
0<
#2270000000000
1G
1<
#2280000000000
0]
b10000000000000000000000000100 >
b100101000101101010101000111100101110000011001010010000001001010010000010100110001010010 @
b101101 ?
0B
b100101000101101010101000111100101110000011001010010000001001010010000010100110001010010 ?%
b10000000000000000000000000100 =%
b101 >%
1E
0G
0<
#2290000000000
1`
b1100001 v
b10000000000000000000000001000 2"
b1000001000001100110011 J
b1000001000001100110011 Y
b1000001000001100110011 \
b1000001000001100110011 $"
b10000000000000000000100000000 ."
b10000000000000000000100000000 7%
b1 V
b1 /"
b1 s$
b10000 -"
b10000 t$
b101 0"
b11111111111100001000011111110000 ("
b10000100001111111000 4"
b11111111111111111111111111100100 +"
b111111110010 @"
b11111111111111111111111111110000 *"
b11111111111111111111111111100101 )"
b11111111000000001000000000000000 A"
b1111111 n
b1111111 r
b1100111 o
b1100111 s
b1100111 u
b10000000000000000000000001000 1"
b10000000000000000000000000100 K
b10000000000000000000000000100 ^
b10000000000000000000000000100 !#
b11111111000000001000001011100111 b
b11111111000000001000001011100111 %"
b11111111000000001000001011100111 p"
b10000000000000000000000000000 q"
1Z"
1^"
1P"
b100 W"
b1 A
1G
1<
#2300000000000
0G
0<
#2310000000000
0l
0`
b10000000000000000000011110000 B"
b10000000000000000000011110000 *#
b1000000 v
1>$
1<$
18$
17$
13$
12$
1.$
1-$
1)$
1($
1$$
1#$
1}#
1|#
1x#
1w#
1s#
1r#
1i#
1h#
1d#
1c#
1_#
1^#
1Z#
1Y#
1U#
1T#
1P#
1O#
1K#
1J#
1F#
0'#
1G"
1E#
1Q$
1A#
0D"
1P$
1@#
1L$
1<#
1K$
1;#
1B$
1o$
0&#
1A$
1n$
0E"
1=$
b11111111111111111111111100000000 /#
1j$
0R$
0M$
0C$
09$
04$
0/$
0*$
0%$
0~#
0y#
0t#
0j#
0e#
0`#
0[#
0V#
0Q#
0L#
0G#
0B#
0=#
0p$
1f$
1a$
1\$
0C"
b10000000000000000000011110000 (#
b10000000000000000000011110000 .#
1W$
1O$
1J$
1@$
1;$
16$
11$
1,$
1'$
1"$
1{#
1v#
1q#
1g#
1b#
1]#
1X#
1S#
1N#
1I#
1D#
1?#
1:#
1m$
1h$
1c$
1^$
1Y$
1T$
1:$
1g$
b10000000000000000000000001100 2"
b11111111111111111111111111110000 )#
b11111111111111111111111111110000 ,#
b10000000000000000000100000000 {"
b10000000000000000000100000000 ##
b10000000000000000000100000000 +#
b11001000 ,"
b11001000 8%
b0 J
b0 Y
b0 \
b0 $"
b11111111111111111111111111110000 |"
b11111111111111111111111111110000 %#
b10000000000000000000100000000 }"
b10 -"
b10 t$
b110 0"
b1000000000000010 ("
b100000000000001 4"
b110 +"
b11 @"
b10 *"
b110 )"
b1000001000000000000000 A"
b0 n
b0 r
b110011 o
b110011 s
b110011 u
b10 V
b100 x"
1N"
1d"
b101 g"
b10000 j"
b1 h"
b11111111000000001000000000000000 `"
b11111111111100001000011111110000 o"
b11111111111111111111111111100100 l"
b11111111111111111111111111100101 n"
b11111111111111111111111111110000 m"
b10000000000000000000100000000 i"
b1111111111111111111111100100 ?"
b10000000000000000000000000000 f"
b1000001000001100110011 b
b1000001000001100110011 %"
b1000001000001100110011 p"
b10000000000000000000000000100 q"
b10000000000000000000000001100 1"
b10000000000000000000000001000 K
b10000000000000000000000001000 ^
b10000000000000000000000001000 !#
b10 A
1G
1<
#2320000000000
0G
0<
#2330000000000
0e
b10000000000000000000111001000 B"
b10000000000000000000111001000 *#
b0 v
0A$
0=$
0&#
1'#
0n$
0E"
0G"
0P$
0K$
0<$
07$
02$
0-$
0($
0#$
0|#
0w#
0r#
0h#
0c#
0^#
0Y#
0T#
0O#
0J#
0E#
0@#
0;#
0j$
0R$
0Q$
0M$
0L$
0C$
0B$
1>$
09$
08$
04$
03$
0/$
0.$
0*$
0)$
0%$
0$$
0~#
0}#
0y#
0x#
0t#
0s#
0j#
0i#
0e#
0d#
0`#
0_#
0[#
0Z#
0V#
0U#
0Q#
0P#
0L#
0K#
0G#
0F#
0B#
0A#
0=#
0<#
0p$
b0 /#
0o$
1k$
0\$
0W$
b10000000000000000000111001000 (#
b10000000000000000000111001000 .#
1H$
0O$
0J$
0@$
0;$
06$
01$
0,$
0'$
0"$
0{#
0v#
0q#
0g#
0b#
0]#
0X#
0S#
0N#
0I#
0D#
0?#
0:#
0m$
0h$
0Y$
0T$
1E$
b0 ."
b0 7%
b0 ,"
b0 8%
b11001000 )#
b11001000 ,#
b10000000000000000000011110000 2"
b11 V
b0 /"
b0 s$
b0 -"
b0 t$
b0 0"
b0 ("
b0 4"
b0 +"
b0 @"
b0 *"
b0 )"
b0 A"
b0 o
b0 s
b0 u
b11001000 |"
b11001000 %#
b11001000 ~"
1#"
b10000000000000000000000000100 >"
b10000000000000000000011110000 3"
b111100 O
b10000000000000000000000010000 1"
b10000000000000000000000001100 K
b10000000000000000000000001100 ^
b10000000000000000000000001100 !#
b0 b
b0 %"
b0 p"
b10000000000000000000000001000 q"
0d"
0Z"
b110 g"
b10 j"
b1000001000000000000000 `"
b1000000000000010 o"
b110 l"
b110 n"
b10 m"
b11001000 k"
b10000000000000000000000001010 ?"
b10000000000000000000000000100 f"
1V"
1J"
0P"
b101 X"
b1111111111111111111111100100 &"
b1111111111111111111111100100 S"
b10000000000000000000011110000 M
b10000000000000000000011110000 i
b10000000000000000000011110000 x
b10000000000000000000011110000 Q"
b10000000000000000000000000100 W"
1t"
b11 A
1G
1<
#2340000000000
0G
0<
#2350000000000
1e
1l
b0 B"
b0 *#
b1100000 v
1C"
0f$
0a$
0H$
0>$
b0 (#
b0 .#
0k$
0c$
0^$
0E$
0:$
0g$
b10000000000000000000011110100 2"
b0 7"
b0 6"
b0 )#
b0 ,#
b0 {"
b0 ##
b0 +#
b10000011000001110110011 J
b10000011000001110110011 Y
b10000011000001110110011 \
b10000011000001110110011 $"
b10000000000000000000000000100 "#
b10000000000000000000000000100 r$
0#"
b0 3"
b0 O
b0 >"
b0 |"
b0 %#
b0 ~"
b0 }"
b10011 o
b10011 s
b10011 u
b111100 V
1w"
b101 y"
b101 q$
b10000000000000000000000000100 x"
b10000000000000000000011110000 u"
0V"
0N"
0J"
b0 X"
b0 &"
b0 S"
b0 M
b0 i
b0 x
b0 Q"
b0 W"
0^"
b0 g"
b0 j"
b0 h"
b0 `"
b0 o"
b0 l"
b0 n"
b0 m"
b0 k"
b0 i"
b0 ?"
b0 f"
b10011 b
b10011 %"
b10011 p"
b0 q"
b10000000000000000000011110100 1"
b10000000000000000000011110000 K
b10000000000000000000011110000 ^
b10000000000000000000011110000 !#
b100 A
1G
1<
#2360000000000
0G
0<
#2370000000000
0l
b1000000 v
b10000000000000000000011111000 2"
b0 7"
b0 6"
b0 J
b0 Y
b0 \
b0 $"
b100101100 ."
b100101100 7%
b110010000 ,"
b110010000 8%
b111101 V
b11 /"
b11 s$
b100 -"
b100 t$
b111 0"
b11000000000000100 ("
b1100000000000010 4"
b100000000110 +"
b10000000011 @"
b100 *"
b111 )"
b10000011000000000000000 A"
b110011 o
b110011 s
b110011 u
b0 "#
b0 r$
b10000000000000000000000000100 1%
b10000000000000000000011111000 1"
b10000000000000000000011110100 K
b10000000000000000000011110100 ^
b10000000000000000000011110100 !#
b10000011000001110110011 b
b10000011000001110110011 %"
b10000011000001110110011 p"
b10000000000000000000011110000 q"
1Z"
1^"
1P"
b100 W"
0w"
0t"
b0 y"
b0 q$
b0 x"
b0 u"
b101 A
1G
1<
#2380000000000
0G
0<
#2390000000000
0e
b1010111100 B"
b1010111100 *#
b0 v
1p$
1n$
b100000000 /#
1j$
1f$
1W$
1\$
1H$
0C"
b1010111100 (#
b1010111100 .#
1o#
1h$
1c$
1T$
1g$
1X$
1D$
1k#
b10000000000000000000011111100 2"
b110010000 )#
b110010000 ,#
b100101100 {"
b100101100 ##
b100101100 +#
b0 ."
b0 7%
b0 ,"
b0 8%
b110010000 |"
b110010000 %#
b110010000 ~"
b100101100 }"
b0 /"
b0 s$
b0 -"
b0 t$
b0 0"
b0 ("
b0 4"
b0 +"
b0 @"
b0 *"
b0 )"
b0 A"
b0 o
b0 s
b0 u
b111110 V
b100 x"
1N"
0Z"
b111 g"
b100 j"
b11 h"
b10000011000000000000000 `"
b11000000000000100 o"
b100000000110 l"
b111 n"
b100 m"
b110010000 k"
b100101100 i"
b10000000000000000100011110110 ?"
b10000000000000000000011110000 f"
b0 b
b0 %"
b0 p"
b10000000000000000000011110100 q"
b10000000000000000000011111100 1"
b10000000000000000000011111000 K
b10000000000000000000011111000 ^
b10000000000000000000011111000 !#
b1010111100 >
b101110 ?
b1010111100 =%
b111 >%
0B
b110 A
1G
1<
#2400000000000
0G
0<
#2410000000000
b0 B"
b0 *#
1C"
0p$
0n$
b0 /#
0j$
0f$
0W$
0\$
0H$
b0 (#
b0 .#
0o#
b10000000000000000000100000000 2"
0h$
0c$
0T$
0g$
0X$
0D$
0k#
b0 )#
b0 ,#
b0 {"
b0 ##
b0 +#
b111111 V
b0 |"
b0 %#
b0 ~"
b0 }"
b110010000 H
b110010000 Q
b110010000 h
b110010000 F"
b1010111100 >"
b1010111100 3"
b10101111 O
b10000000000000000000100000000 1"
b10000000000000000000011111100 K
b10000000000000000000011111100 ^
b10000000000000000000011111100 !#
b10000000000000000000011111000 q"
0^"
b0 g"
b0 j"
b0 h"
b0 `"
b0 o"
b0 l"
b0 n"
b0 m"
b0 k"
b0 i"
b10000000000000000000011110100 ?"
b10000000000000000000011110100 f"
0P"
b111 X"
b10000000000000000100011110110 &"
b10000000000000000100011110110 S"
b110010000 Y"
b1010111100 M
b1010111100 i
b1010111100 x
b1010111100 Q"
b10000000000000000000011110100 W"
1t"
b111 A
1G
1<
#2420000000000
0G
0<
#2430000000000
b10000000000000000000100000100 2"
b0 7"
b0 6"
b1010111100 "#
b1010111100 r$
b0 H
b0 Q
b0 h
b0 F"
b0 >"
b0 3"
b0 O
b1000000 V
b111 y"
b111 q$
b10000000000000000000011110100 x"
b1010111100 u"
0N"
1P"
b0 X"
b10000000000000000000011110100 &"
b10000000000000000000011110100 S"
b0 Y"
b0 M
b0 i
b0 x
b0 Q"
b10000000000000000000011111000 W"
b10000000000000000000011111000 ?"
b10000000000000000000011111000 f"
b10000000000000000000011111100 q"
b10000000000000000000100000100 1"
b10000000000000000000100000000 K
b10000000000000000000100000000 ^
b10000000000000000000100000000 !#
b1000 A
1G
1<
#2440000000000
0G
0<
#2450000000000
b10000000000000000000100001000 2"
b0 7"
b0 6"
b1000001 V
b0 "#
b0 r$
b1010111100 3%
b10000000000000000000100001000 1"
b10000000000000000000100000100 K
b10000000000000000000100000100 ^
b10000000000000000000100000100 !#
b10000000000000000000100000000 q"
b10000000000000000000011111100 ?"
b10000000000000000000011111100 f"
b10000000000000000000011111000 &"
b10000000000000000000011111000 S"
b10000000000000000000011111100 W"
0t"
b0 y"
b0 q$
b10000000000000000000011111000 x"
b0 u"
b1001 A
1G
1<
#2460000000000
0G
0<
#2470000000000
b10000000000000000000100001100 2"
b1000010 V
b10000000000000000000011111100 x"
b10000000000000000000011111100 &"
b10000000000000000000011111100 S"
b10000000000000000000100000000 W"
b10000000000000000000100000000 ?"
b10000000000000000000100000000 f"
b10000000000000000000100000100 q"
b10000000000000000000100001100 1"
b10000000000000000000100001000 K
b10000000000000000000100001000 ^
b10000000000000000000100001000 !#
b0 3%
b0 1%
b110010000 0%
b100101100 -%
b1100100 "%
b1100100 u$
b100000000000000 A%
b0 F
b100000000000000001111111100 4
b111111110000 .
b0 >
b101111 ?
b0 =%
b110 >%
1B
b1010 A
1G
1<
#2480000000000
1]
0E
0G
0<
#2490000000000
1e
1l
b1100000 v
b10000000000000000000000000100 2"
b1111110001000001000100011100011 J
b1111110001000001000100011100011 Y
b1111110001000001000100011100011 \
b1111110001000001000100011100011 $"
b0 V
b10011 o
b10011 s
b10011 u
b10000000000000000000000000100 1"
b10000000000000000000000000000 K
b10000000000000000000000000000 ^
b10000000000000000000000000000 !#
b10011 b
b10011 %"
b10011 p"
b0 q"
b0 ?"
b0 f"
0P"
b0 &"
b0 S"
b0 W"
b0 x"
b0 A
1G
1<
#2500000000000
0G
0<
#2510000000000
1G
1<
#2520000000000
0G
0<
#2530000000000
1G
1<
#2540000000000
0]
b1010111100 >
b1010111100 =%
b10000100010110101010100011110010111000001100101001000000100001001000101010100010010000001010100011000010110101101100101011011100010000000110010 @
b110001 ?
0B
b10000100010110101010100011110010111000001100101001000000100001001000101010100010010000001010100011000010110101101100101011011100010000000110010 ?%
b110 >%
1E
0G
0<
#2550000000000
0e
0l
1c
b10000 k
b10000 p
b10000 t
b10000 w
b100 v
b10000000000000000000000001000 2"
b1100100 ."
b1100100 7%
b1100100 ,"
b1100100 8%
b10000011000001010110011 J
b10000011000001010110011 Y
b10000011000001010110011 \
b10000011000001010110011 $"
b1 /"
b1 s$
b10 -"
b10 t$
b10001 0"
b1000011111100010 ("
b100001111110001 4"
b111111110000 +"
b11111111000 @"
b11111100010 *"
b11111110001 )"
b1111110001000001000000000000000 A"
b111111 n
b111111 r
b1100011 o
b1100011 s
b1100011 u
b1 V
1P"
b100 W"
1Z"
1^"
b1111110001000001000100011100011 b
b1111110001000001000100011100011 %"
b1111110001000001000100011100011 p"
b10000000000000000000000000000 q"
b10000000000000000000000001000 1"
b10000000000000000000000000100 K
b10000000000000000000000000100 ^
b10000000000000000000000000100 !#
b1 A
1G
1<
#2560000000000
0G
0<
#2570000000000
1e
0c
b0 B"
b0 *#
b0 k
b0 p
b0 t
b0 w
b1000000 v
0'#
1G"
1Q$
0D"
1P$
1L$
1K$
1B$
1A$
1=$
1<$
18$
17$
13$
12$
1.$
1-$
1)$
1($
1$$
1#$
1}#
1|#
1x#
1w#
1s#
1r#
1i#
1h#
1d#
1c#
1_#
1^#
1Z#
1Y#
1U#
1T#
1P#
1O#
1K#
1J#
1F#
1E#
1A#
1@#
1<#
1;#
1o$
1n$
1Z$
1j$
1V$
1i$
1U$
1m#
1e$
1G$
17#
0&#
1d$
1_$
1F$
0a$
0\$
0o#
0E"
16#
1`$
1[$
1n#
0R$
0M$
0C$
0>$
09$
04$
0/$
0*$
0%$
0~#
0y#
0t#
0j#
0e#
0`#
0[#
0V#
0Q#
0L#
0G#
0B#
0=#
0p$
0k$
0f$
0W$
0H$
08#
b11111111111111111111111111111111 /#
12#
b10000000000000000000000001100 2"
1O$
1J$
1@$
1;$
16$
11$
1,$
1'$
1"$
1{#
1v#
1q#
1g#
1b#
1]#
1X#
1S#
1N#
1I#
1D#
1?#
1:#
1m$
1h$
1c$
0^$
0Y$
1T$
1E$
0l#
15#
11#
1]$
1X$
1k#
b0 J
b0 Y
b0 \
b0 $"
b100101100 ."
b100101100 7%
b110010000 ,"
b110010000 8%
1C"
b0 (#
b0 .#
03#
b11111111111111111111111110011011 )#
b11111111111111111111111110011011 ,#
b1100100 {"
b1100100 ##
b1100100 +#
b10 V
b11 /"
b11 s$
b100 -"
b100 t$
b101 0"
b11000000000000100 ("
b1100000000000010 4"
b100000000100 +"
b10000000010 @"
b100 *"
b101 )"
b10000011000000000000000 A"
b0 n
b0 r
b110011 o
b110011 s
b110011 u
1-#
b1100100 |"
b1100100 %#
b1100100 ~"
b1100100 }"
b10000000000000000000000001100 1"
b10000000000000000000000001000 K
b10000000000000000000000001000 ^
b10000000000000000000000001000 !#
b10000011000001010110011 b
b10000011000001010110011 %"
b10000011000001010110011 p"
b10000000000000000000000000100 q"
1a"
b10000 ["
b10000 $#
0Z"
0^"
b10001 g"
b10 j"
b1 h"
b1111110001000001000000000000000 `"
b1000011111100010 o"
b111111110000 l"
b11111110001 n"
b11111100010 m"
b1100100 k"
b1100100 i"
b10000000000000000111111110000 ?"
b10000000000000000000000000000 f"
1N"
b100 x"
b10 A
1G
1<
#2580000000000
0G
0<
#2590000000000
0e
b1010111100 B"
b1010111100 *#
b0 v
0_$
0[$
1\$
0Z$
0V$
1W$
0U$
0G$
1H$
0F$
0i$
1#"
0n#
0e$
1f$
1""
0&#
1'#
1o#
0d$
0E"
0G"
0P$
0K$
0A$
0<$
07$
02$
0-$
0($
0#$
0|#
0w#
0r#
0h#
0c#
0^#
0Y#
0T#
0O#
0J#
0E#
0@#
0;#
0m#
0`$
0R$
0Q$
0M$
0L$
0C$
0B$
0>$
0=$
09$
08$
04$
03$
0/$
0.$
0*$
0)$
0%$
0$$
0~#
0}#
0y#
0x#
0t#
0s#
0j#
0i#
0e#
0d#
0`#
0_#
0[#
0Z#
0V#
0U#
0Q#
0P#
0L#
0K#
0G#
0F#
0B#
0A#
0=#
0<#
1p$
0o$
07#
0k$
0a$
06#
0O$
0J$
0@$
0;$
06$
01$
0,$
0'$
0"$
0{#
0v#
0q#
0g#
0b#
0]#
0X#
0S#
0N#
0I#
0D#
0?#
0:#
0m$
0E$
05#
01#
b100000000 /#
02#
1g$
0]$
1D$
b10000000000000000111111110000 2"
1z
b110010000 )#
b110010000 ,#
0C"
b1010111100 (#
b1010111100 .#
03#
b100101100 {"
b100101100 ##
b100101100 +#
b0 ."
b0 7%
b0 ,"
b0 8%
b1100100 H
b1100100 Q
b1100100 h
b1100100 F"
0-#
b110010000 |"
b110010000 %#
b110010000 ~"
b100101100 }"
b0 /"
b0 s$
b0 -"
b0 t$
b0 0"
b0 ("
b0 4"
b0 +"
b0 @"
b0 *"
b0 )"
b0 A"
b0 o
b0 s
b0 u
b11 V
1t"
1R"
0N"
1J"
b10001 X"
b10000000000000000111111110000 &"
b10000000000000000111111110000 S"
b1100100 Y"
b10000000000000000000000000100 W"
0a"
b0 ["
b0 $#
1^"
b101 g"
b100 j"
b11 h"
b10000011000000000000000 `"
b11000000000000100 o"
b100000000100 l"
b101 n"
b100 m"
b110010000 k"
b100101100 i"
b10000000000000000100000001000 ?"
b10000000000000000000000000100 f"
b0 b
b0 %"
b0 p"
b10000000000000000000000001000 q"
b10000000000000000000000010000 1"
b10000000000000000000000001100 K
b10000000000000000000000001100 ^
b10000000000000000000000001100 !#
b11 A
1G
1<
#2600000000000
0G
0<
#2610000000000
1e
1l
b0 B"
b0 *#
b1100000 v
1C"
0p$
0#"
0n$
b0 /#
0j$
0""
0f$
0W$
0\$
0H$
b0 (#
b0 .#
0o#
0h$
0c$
0T$
0g$
0X$
0D$
0k#
b10000000000000000111111110100 2"
b10000011000001100110011 J
b10000011000001100110011 Y
b10000011000001100110011 \
b10000011000001100110011 $"
b0 )#
b0 ,#
b0 {"
b0 ##
b0 +#
b1111111100 V
b10011 o
b10011 s
b10011 u
b0 |"
b0 %#
b0 ~"
b0 }"
0z
b0 H
b0 Q
b0 h
b0 F"
b10000000000000000111111110100 1"
b10000000000000000111111110000 K
b10000000000000000111111110000 ^
b10000000000000000111111110000 !#
b10011 b
b10011 %"
b10011 p"
b0 q"
0^"
b0 g"
b0 j"
b0 h"
b0 `"
b0 o"
b0 l"
b0 n"
b0 m"
b0 k"
b0 i"
b0 ?"
b0 f"
0R"
0J"
0P"
b0 X"
b0 &"
b0 S"
b0 Y"
b0 W"
0t"
b10001 y"
b10001 q$
b10000000000000000000000000100 x"
b100 A
1G
1<
#2620000000000
0G
0<
#2630000000000
0l
b1000000 v
b10000000000000000111111111000 2"
b0 J
b0 Y
b0 \
b0 $"
b100101100 ."
b100101100 7%
b110010000 ,"
b110010000 8%
b11 /"
b11 s$
b100 -"
b100 t$
b110 0"
b11000000000000100 ("
b1100000000000010 4"
b110 +"
b11 @"
b100 *"
b110 )"
b10000011000000000000000 A"
b110011 o
b110011 s
b110011 u
b1111111101 V
b0 y"
b0 q$
b0 x"
1P"
b100 W"
1Z"
1^"
b10000011000001100110011 b
b10000011000001100110011 %"
b10000011000001100110011 p"
b10000000000000000111111110000 q"
b10000000000000000111111111000 1"
b10000000000000000111111110100 K
b10000000000000000111111110100 ^
b10000000000000000111111110100 !#
b101 A
1G
1<
#2640000000000
0G
0<
#2650000000000
0e
b1010111100 B"
b1010111100 *#
b0 v
1p$
1n$
b100000000 /#
1j$
1f$
1W$
1\$
1H$
0C"
b1010111100 (#
b1010111100 .#
1o#
b10000000000000000111111111100 2"
1h$
1c$
1T$
1g$
1X$
1D$
1k#
b0 ."
b0 7%
b0 ,"
b0 8%
b110010000 )#
b110010000 ,#
b100101100 {"
b100101100 ##
b100101100 +#
b1111111110 V
b0 /"
b0 s$
b0 -"
b0 t$
b0 0"
b0 ("
b0 4"
b0 +"
b0 @"
b0 *"
b0 )"
b0 A"
b0 o
b0 s
b0 u
b110010000 |"
b110010000 %#
b110010000 ~"
b100101100 }"
b10000000000000000111111111100 1"
b10000000000000000111111111000 K
b10000000000000000111111111000 ^
b10000000000000000111111111000 !#
b0 b
b0 %"
b0 p"
b10000000000000000111111110100 q"
0Z"
b110 g"
b100 j"
b11 h"
b10000011000000000000000 `"
b11000000000000100 o"
b110 l"
b110 n"
b100 m"
b110010000 k"
b100101100 i"
b10000000000000000111111110110 ?"
b10000000000000000111111110000 f"
1N"
b100 x"
b110 A
1G
1<
#2660000000000
0G
0<
#2670000000000
b0 B"
b0 *#
1C"
0p$
0n$
b0 /#
0j$
0f$
0W$
0\$
0H$
b0 (#
b0 .#
0o#
0h$
0c$
0T$
0g$
0X$
0D$
0k#
b10000000000000001000000000000 2"
b0 )#
b0 ,#
b0 {"
b0 ##
b0 +#
b110010000 H
b110010000 Q
b110010000 h
b110010000 F"
b1010111100 >"
b1010111100 3"
b10101111 O
b0 |"
b0 %#
b0 ~"
b0 }"
b1111111111 V
1t"
0P"
b110 X"
b10000000000000000111111110110 &"
b10000000000000000111111110110 S"
b110010000 Y"
b1010111100 M
b1010111100 i
b1010111100 x
b1010111100 Q"
b10000000000000000111111110100 W"
0^"
b0 g"
b0 j"
b0 h"
b0 `"
b0 o"
b0 l"
b0 n"
b0 m"
b0 k"
b0 i"
b10000000000000000111111110100 ?"
b10000000000000000111111110100 f"
b10000000000000000111111111000 q"
b10000000000000001000000000000 1"
b10000000000000000111111111100 K
b10000000000000000111111111100 ^
b10000000000000000111111111100 !#
b111 A
1G
1<
#2680000000000
0G
0<
#2690000000000
b10000000000000001000000000100 2"
b0 7"
b0 6"
b10000000000 V
b0 H
b0 Q
b0 h
b0 F"
b0 >"
b0 3"
b0 O
b1010111100 "#
b1010111100 r$
b10000000000000001000000000100 1"
b10000000000000001000000000000 K
b10000000000000001000000000000 ^
b10000000000000001000000000000 !#
b10000000000000000111111111100 q"
b10000000000000000111111111000 ?"
b10000000000000000111111111000 f"
0N"
1P"
b0 X"
b10000000000000000111111110100 &"
b10000000000000000111111110100 S"
b0 Y"
b0 M
b0 i
b0 x
b0 Q"
b10000000000000000111111111000 W"
b110 y"
b110 q$
b10000000000000000111111110100 x"
b1010111100 u"
b1000 A
1G
1<
#2700000000000
0G
0<
#2710000000000
b0 7"
b0 6"
b10000000000000001000000001000 2"
b0 "#
b0 r$
b10000000001 V
0t"
b0 y"
b0 q$
b10000000000000000111111111000 x"
b0 u"
b10000000000000000111111111000 &"
b10000000000000000111111111000 S"
b10000000000000000111111111100 W"
b10000000000000000111111111100 ?"
b10000000000000000111111111100 f"
b10000000000000001000000000000 q"
b10000000000000001000000001000 1"
b10000000000000001000000000100 K
b10000000000000001000000000100 ^
b10000000000000001000000000100 !#
b1010111100 2%
b1001 A
1G
1<
#2720000000000
0G
0<
#2730000000000
b10000000000000001000000001100 2"
b10000000010 V
b10000000000000001000000001100 1"
b10000000000000001000000001000 K
b10000000000000001000000001000 ^
b10000000000000001000000001000 !#
b10000000000000001000000000100 q"
b10000000000000001000000000000 ?"
b10000000000000001000000000000 f"
b10000000000000000111111111100 &"
b10000000000000000111111111100 S"
b10000000000000001000000000000 W"
b10000000000000000111111111100 x"
b0 2%
b110010000 0%
b100101100 -%
b11001000 "%
b1100100 u$
b100000000000000 A%
1B
b1010 A
1G
1<
#2740000000000
1]
0E
0G
0<
#2750000000000
1e
1l
b1100000 v
b10000000000000000000000000100 2"
b1111110001000001000100011100011 J
b1111110001000001000100011100011 Y
b1111110001000001000100011100011 \
b1111110001000001000100011100011 $"
b10011 o
b10011 s
b10011 u
b0 V
b0 x"
0P"
b0 &"
b0 S"
b0 W"
b0 ?"
b0 f"
b10011 b
b10011 %"
b10011 p"
b0 q"
b10000000000000000000000000100 1"
b10000000000000000000000000000 K
b10000000000000000000000000000 ^
b10000000000000000000000000000 !#
b0 A
1G
1<
#2760000000000
0G
0<
#2770000000000
1G
1<
#2780000000000
0G
0<
#2790000000000
1G
1<
#2800000000000
0]
b100001000101101010101000111100101110000011001010010000001000010010001010101000100100000010011100110111101110100001000000101010001100001011010110110010101101110 @
b110010 ?
0B
b100001000101101010101000111100101110000011001010010000001000010010001010101000100100000010011100110111101110100001000000101010001100001011010110110010101101110 ?%
b101 >%
1E
0G
0<
#2810000000000
0e
0l
1c
b10000 k
b10000 p
b10000 t
b10000 w
b100 v
b10000000000000000000000001000 2"
b10000011000001010110011 J
b10000011000001010110011 Y
b10000011000001010110011 \
b10000011000001010110011 $"
b1100100 ."
b1100100 7%
b11001000 ,"
b11001000 8%
b1 V
b1 /"
b1 s$
b10 -"
b10 t$
b10001 0"
b1000011111100010 ("
b100001111110001 4"
b111111110000 +"
b11111111000 @"
b11111100010 *"
b11111110001 )"
b1111110001000001000000000000000 A"
b111111 n
b111111 r
b1100011 o
b1100011 s
b1100011 u
b10000000000000000000000001000 1"
b10000000000000000000000000100 K
b10000000000000000000000000100 ^
b10000000000000000000000000100 !#
b1111110001000001000100011100011 b
b1111110001000001000100011100011 %"
b1111110001000001000100011100011 p"
b10000000000000000000000000000 q"
1Z"
1^"
1P"
b100 W"
b1 A
1G
1<
#2820000000000
0G
0<
#2830000000000
1e
0c
b11111111111111111111111110011100 B"
b11111111111111111111111110011100 *#
b0 k
b0 p
b0 t
b0 w
b1000000 v
1o#
1m#
17#
1&#
1d$
1_$
1F$
0a$
1E"
16#
1`$
1[$
1n#
1R$
1M$
1C$
1>$
19$
14$
1/$
1*$
1%$
1~#
1y#
1t#
1j#
1e#
1`#
1[#
1V#
1Q#
1L#
1G#
1B#
1=#
1p$
1k$
1f$
1W$
1H$
08#
b1100111 /#
12#
1O$
1J$
1@$
1;$
16$
11$
1,$
1'$
1"$
1{#
1v#
1q#
1g#
1b#
1]#
1X#
1S#
1N#
1I#
1D#
1?#
1:#
1m$
1h$
0c$
0^$
1Y$
1T$
0E$
1l#
15#
11#
1]$
1X$
1k#
b10000000000000000000000001100 2"
0C"
b11111111111111111111111110011100 (#
b11111111111111111111111110011100 .#
03#
b11111111111111111111111100110111 )#
b11111111111111111111111100110111 ,#
b1100100 {"
b1100100 ##
b1100100 +#
b100101100 ."
b100101100 7%
b110010000 ,"
b110010000 8%
b0 J
b0 Y
b0 \
b0 $"
1-#
b11001000 |"
b11001000 %#
b11001000 ~"
b1100100 }"
b11 /"
b11 s$
b100 -"
b100 t$
b101 0"
b11000000000000100 ("
b1100000000000010 4"
b100000000100 +"
b10000000010 @"
b100 *"
b101 )"
b10000011000000000000000 A"
b0 n
b0 r
b110011 o
b110011 s
b110011 u
b10 V
b100 x"
1N"
1a"
b10000 ["
b10000 $#
0Z"
0^"
b10001 g"
b10 j"
b1 h"
b1111110001000001000000000000000 `"
b1000011111100010 o"
b111111110000 l"
b11111110001 n"
b11111100010 m"
b11001000 k"
b1100100 i"
b10000000000000000111111110000 ?"
b10000000000000000000000000000 f"
b10000011000001010110011 b
b10000011000001010110011 %"
b10000011000001010110011 p"
b10000000000000000000000000100 q"
b10000000000000000000000001100 1"
b10000000000000000000000001000 K
b10000000000000000000000001000 ^
b10000000000000000000000001000 !#
b10 A
1G
1<
#2840000000000
0G
0<
#2850000000000
0e
b1010111100 B"
b1010111100 *#
b0 v
0F$
0Z$
0n#
0V$
1W$
0&#
0_$
1n$
0d$
0U$
0E"
0i$
0[$
0m#
1j$
0`$
0G$
0R$
0M$
0C$
0>$
09$
04$
0/$
0*$
0%$
0~#
0y#
0t#
0j#
0e#
0`#
0[#
0V#
0Q#
0L#
0G#
0B#
0=#
1p$
1f$
0e$
1\$
1o#
07#
0k$
0a$
1H$
06#
b10000000000000000000000010000 2"
0O$
0J$
0@$
0;$
06$
01$
0,$
0'$
0"$
0{#
0v#
0q#
0g#
0b#
0]#
0X#
0S#
0N#
0I#
0D#
0?#
0:#
0m$
1c$
0Y$
0l#
05#
01#
b100000000 /#
02#
1g$
0]$
1D$
b0 ."
b0 7%
b0 ,"
b0 8%
b110010000 )#
b110010000 ,#
b1010111100 (#
b1010111100 .#
03#
b100101100 {"
b100101100 ##
b100101100 +#
b11 V
b0 /"
b0 s$
b0 -"
b0 t$
b0 0"
b0 ("
b0 4"
b0 +"
b0 @"
b0 *"
b0 )"
b0 A"
b0 o
b0 s
b0 u
0-#
b110010000 |"
b110010000 %#
b110010000 ~"
b100101100 }"
b11001000 H
b11001000 Q
b11001000 h
b11001000 F"
b11111111111111111111111110011100 >"
b11111111111111111111111110011100 3"
b11111111100111 O
b10000000000000000000000010000 1"
b10000000000000000000000001100 K
b10000000000000000000000001100 ^
b10000000000000000000000001100 !#
b0 b
b0 %"
b0 p"
b10000000000000000000000001000 q"
0a"
b0 ["
b0 $#
1^"
b101 g"
b100 j"
b11 h"
b10000011000000000000000 `"
b11000000000000100 o"
b100000000100 l"
b101 n"
b100 m"
b110010000 k"
b100101100 i"
b10000000000000000100000001000 ?"
b10000000000000000000000000100 f"
1R"
0N"
1M"
0P"
b10001 X"
b10000000000000000111111110000 &"
b10000000000000000111111110000 S"
b11001000 Y"
b11111111111111111111111110011100 M
b11111111111111111111111110011100 i
b11111111111111111111111110011100 x
b11111111111111111111111110011100 Q"
b10000000000000000000000000100 W"
1t"
b11 A
1G
1<
#2860000000000
0G
0<
#2870000000000
b0 B"
b0 *#
1C"
0p$
0n$
b0 /#
0j$
0f$
0W$
0\$
0H$
b0 (#
b0 .#
0o#
0h$
0c$
0T$
0g$
0X$
0D$
0k#
b10000000000000000000000010100 2"
b0 )#
b0 ,#
b0 {"
b0 ##
b0 +#
b11111111111111111111111110011100 "#
b11111111111111111111111110011100 r$
b110010000 H
b110010000 Q
b110010000 h
b110010000 F"
b1010111100 >"
b1010111100 3"
b10101111 O
b0 |"
b0 %#
b0 ~"
b0 }"
b100 V
0t"
b10001 y"
b10001 q$
b10000000000000000000000000100 x"
b11111111111111111111111110011100 u"
0R"
1N"
0M"
b101 X"
b10000000000000000100000001000 &"
b10000000000000000100000001000 S"
b110010000 Y"
b1010111100 M
b1010111100 i
b1010111100 x
b1010111100 Q"
b10000000000000000000000001000 W"
0^"
b0 g"
b0 j"
b0 h"
b0 `"
b0 o"
b0 l"
b0 n"
b0 m"
b0 k"
b0 i"
b10000000000000000000000001000 ?"
b10000000000000000000000001000 f"
b10000000000000000000000001100 q"
b10000000000000000000000010100 1"
b10000000000000000000000010000 K
b10000000000000000000000010000 ^
b10000000000000000000000010000 !#
b100 A
1G
1<
#2880000000000
0G
0<
#2890000000000
b10000000000000000000000011000 2"
b0 7"
b0 6"
b101 V
b0 H
b0 Q
b0 h
b0 F"
b0 >"
b0 3"
b0 O
b1010111100 "#
b1010111100 r$
b10000000000000000000000011000 1"
b10000000000000000000000010100 K
b10000000000000000000000010100 ^
b10000000000000000000000010100 !#
b10000000000000000000000010000 q"
b10000000000000000000000001100 ?"
b10000000000000000000000001100 f"
0N"
1P"
b0 X"
b10000000000000000000000001000 &"
b10000000000000000000000001000 S"
b0 Y"
b0 M
b0 i
b0 x
b0 Q"
b10000000000000000000000001100 W"
1t"
b101 y"
b101 q$
b10000000000000000000000001000 x"
b1010111100 u"
b101 A
1G
1<
#2900000000000
0G
0<
#2910000000000
b0 7"
b0 6"
b10000000000000000000000011100 2"
b0 "#
b0 r$
b110 V
0t"
b0 y"
b0 q$
b10000000000000000000000001100 x"
b0 u"
b10000000000000000000000001100 &"
b10000000000000000000000001100 S"
b10000000000000000000000010000 W"
b10000000000000000000000010000 ?"
b10000000000000000000000010000 f"
b10000000000000000000000010100 q"
b10000000000000000000000011100 1"
b10000000000000000000000011000 K
b10000000000000000000000011000 ^
b10000000000000000000000011000 !#
b1010111100 1%
b110 A
1G
1<
#2920000000000
0G
0<
#2930000000000
b10000000000000000000000100000 2"
b111 V
b10000000000000000000000100000 1"
b10000000000000000000000011100 K
b10000000000000000000000011100 ^
b10000000000000000000000011100 !#
b10000000000000000000000011000 q"
b10000000000000000000000010100 ?"
b10000000000000000000000010100 f"
b10000000000000000000000010000 &"
b10000000000000000000000010000 S"
b10000000000000000000000010100 W"
b10000000000000000000000010000 x"
b0 1%
b110010000 0%
b100101100 -%
b11001000 "%
b1100100 u$
b100000000000000 A%
b1 F
1B
b0 A
1G
1<
#2940000000000
1]
0E
0G
0<
#2950000000000
1e
1l
b1100000 v
b10000000000000000000000000100 2"
b1111110001000001001100011100011 J
b1111110001000001001100011100011 Y
b1111110001000001001100011100011 \
b1111110001000001001100011100011 $"
b10011 o
b10011 s
b10011 u
b0 V
b0 x"
0P"
b0 &"
b0 S"
b0 W"
b0 ?"
b0 f"
b10011 b
b10011 %"
b10011 p"
b0 q"
b10000000000000000000000000100 1"
b10000000000000000000000000000 K
b10000000000000000000000000000 ^
b10000000000000000000000000000 !#
1G
1<
#2960000000000
0G
0<
#2970000000000
1G
1<
#2980000000000
0G
0<
#2990000000000
1G
1<
#3000000000000
0]
b110 >%
b1010111100 >
b10000100010110101010100011110010111000001100101001000000100001001001110010001010010000001010100011000010110101101100101011011100010000000110010 @
b110100 ?
0B
b10000100010110101010100011110010111000001100101001000000100001001001110010001010010000001010100011000010110101101100101011011100010000000110010 ?%
b1010111100 =%
1E
0G
0<
#3010000000000
0e
0l
1c
b10000 k
b10000 p
b10000 t
b10000 w
b100 v
b10000000000000000000000001000 2"
b10000011000001010110011 J
b10000011000001010110011 Y
b10000011000001010110011 \
b10000011000001010110011 $"
b1100100 ."
b1100100 7%
b11001000 ,"
b11001000 8%
b1 V
b1 /"
b1 s$
b10 -"
b10 t$
b10001 0"
b1 5"
b1001011111100010 ("
b100101111110001 4"
b111111110000 +"
b11111111000 @"
b11111100010 *"
b11111110001 )"
b1111110001000001001000000000000 A"
b1 m
b1 q
b111111 n
b111111 r
b1100011 o
b1100011 s
b1100011 u
b10000000000000000000000001000 1"
b10000000000000000000000000100 K
b10000000000000000000000000100 ^
b10000000000000000000000000100 !#
b1111110001000001001100011100011 b
b1111110001000001001100011100011 %"
b1111110001000001001100011100011 p"
b10000000000000000000000000000 q"
1Z"
1^"
1P"
b100 W"
b1 A
1G
1<
#3020000000000
0G
0<
#3030000000000
1e
0c
b11111111111111111111111110011100 B"
b11111111111111111111111110011100 *#
b0 k
b0 p
b0 t
b0 w
b1000000 v
1o#
1m#
17#
1&#
1d$
1_$
1F$
0a$
1E"
16#
1`$
1[$
1n#
1R$
1M$
1C$
1>$
19$
14$
1/$
1*$
1%$
1~#
1y#
1t#
1j#
1e#
1`#
1[#
1V#
1Q#
1L#
1G#
1B#
1=#
1p$
1k$
1f$
1W$
1H$
08#
b1100111 /#
12#
1O$
1J$
1@$
1;$
16$
11$
1,$
1'$
1"$
1{#
1v#
1q#
1g#
1b#
1]#
1X#
1S#
1N#
1I#
1D#
1?#
1:#
1m$
1h$
0c$
0^$
1Y$
1T$
0E$
1l#
15#
11#
1]$
1X$
1k#
b10000000000000000000000001100 2"
0C"
b11111111111111111111111110011100 (#
b11111111111111111111111110011100 .#
03#
b11111111111111111111111100110111 )#
b11111111111111111111111100110111 ,#
b1100100 {"
b1100100 ##
b1100100 +#
b100101100 ."
b100101100 7%
b110010000 ,"
b110010000 8%
b0 J
b0 Y
b0 \
b0 $"
1-#
b11001000 |"
b11001000 %#
b11001000 ~"
b1100100 }"
b11 /"
b11 s$
b100 -"
b100 t$
b101 0"
b0 5"
b11000000000000100 ("
b1100000000000010 4"
b100000000100 +"
b10000000010 @"
b100 *"
b101 )"
b10000011000000000000000 A"
b0 m
b0 q
b0 n
b0 r
b110011 o
b110011 s
b110011 u
b10 V
b100 x"
1N"
1a"
b10000 ["
b10000 $#
0Z"
0^"
b1 b"
b10001 g"
b10 j"
b1 h"
b1111110001000001001000000000000 `"
b1001011111100010 o"
b111111110000 l"
b11111110001 n"
b11111100010 m"
b11001000 k"
b1100100 i"
b10000000000000000111111110000 ?"
b10000000000000000000000000000 f"
b10000011000001010110011 b
b10000011000001010110011 %"
b10000011000001010110011 p"
b10000000000000000000000000100 q"
b10000000000000000000000001100 1"
b10000000000000000000000001000 K
b10000000000000000000000001000 ^
b10000000000000000000000001000 !#
b10 A
1G
1<
#3040000000000
0G
0<
#3050000000000
0e
b1010111100 B"
b1010111100 *#
b0 v
b11 N
b11 R
b11 j
b11 I"
0F$
0Z$
0n#
0V$
1#"
1W$
0&#
0_$
1n$
0d$
0U$
1""
0E"
0i$
0[$
0m#
1j$
0`$
0G$
0R$
0M$
0C$
0>$
09$
04$
0/$
0*$
0%$
0~#
0y#
0t#
0j#
0e#
0`#
0[#
0V#
0Q#
0L#
0G#
0B#
0=#
1p$
1f$
0e$
1\$
1o#
07#
0k$
0a$
1H$
06#
b10000000000000000111111110000 2"
0O$
0J$
0@$
0;$
06$
01$
0,$
0'$
0"$
0{#
0v#
0q#
0g#
0b#
0]#
0X#
0S#
0N#
0I#
0D#
0?#
0:#
0m$
1c$
0Y$
0l#
05#
01#
b100000000 /#
02#
1g$
0]$
1D$
b0 ."
b0 7%
b0 ,"
b0 8%
b110010000 )#
b110010000 ,#
b1010111100 (#
b1010111100 .#
03#
b100101100 {"
b100101100 ##
b100101100 +#
1!"
b11 V
b0 /"
b0 s$
b0 -"
b0 t$
b0 0"
b0 ("
b0 4"
b0 +"
b0 @"
b0 *"
b0 )"
b0 A"
b0 o
b0 s
b0 u
0-#
b110010000 |"
b110010000 %#
b110010000 ~"
b100101100 }"
b11001000 H
b11001000 Q
b11001000 h
b11001000 F"
b11111111111111111111111110011100 >"
b11111111111111111111111110011100 3"
b11111111100111 O
b10000000000000000000000010000 1"
b10000000000000000000000001100 K
b10000000000000000000000001100 ^
b10000000000000000000000001100 !#
b0 b
b0 %"
b0 p"
b10000000000000000000000001000 q"
0a"
b0 ["
b0 $#
1^"
b0 b"
b101 g"
b100 j"
b11 h"
b10000011000000000000000 `"
b11000000000000100 o"
b100000000100 l"
b101 n"
b100 m"
b110010000 k"
b100101100 i"
b10000000000000000100000001000 ?"
b10000000000000000000000000100 f"
1R"
0N"
1M"
0P"
0="
18"
b1 T"
b10001 X"
b10000000000000000111111110000 &"
b10000000000000000111111110000 S"
b11001000 Y"
b11111111111111111111111110011100 M
b11111111111111111111111110011100 i
b11111111111111111111111110011100 x
b11111111111111111111111110011100 Q"
b10000000000000000000000000100 W"
1t"
b11 A
1G
1<
#3060000000000
0G
0<
#3070000000000
1e
1l
b0 B"
b0 *#
b1100000 v
b1 N
b1 R
b1 j
b1 I"
0#"
1C"
0p$
0""
0n$
b0 /#
0j$
0f$
0W$
0\$
0H$
b0 (#
b0 .#
0o#
b10000000000000000111111110100 2"
0h$
0c$
0T$
0g$
0X$
0D$
0k#
0!"
b0 )#
b0 ,#
b0 {"
b0 ##
b0 +#
b10000011000001100110011 J
b10000011000001100110011 Y
b10000011000001100110011 \
b10000011000001100110011 $"
b11111111111111111111111110011100 "#
b11111111111111111111111110011100 r$
b0 H
b0 Q
b0 h
b0 F"
b0 >"
b0 3"
b0 O
b0 |"
b0 %#
b0 ~"
b0 }"
b10011 o
b10011 s
b10011 u
b1111111100 V
0t"
b10001 y"
b10001 q$
b10000000000000000000000000100 x"
b11111111111111111111111110011100 u"
0R"
0M"
1="
08"
b0 T"
b0 X"
b0 &"
b0 S"
b0 Y"
b0 M
b0 i
b0 x
b0 Q"
b0 W"
0^"
b0 g"
b0 j"
b0 h"
b0 `"
b0 o"
b0 l"
b0 n"
b0 m"
b0 k"
b0 i"
b0 ?"
b0 f"
b10011 b
b10011 %"
b10011 p"
b0 q"
b10000000000000000111111110100 1"
b10000000000000000111111110000 K
b10000000000000000111111110000 ^
b10000000000000000111111110000 !#
b100 A
1G
1<
#3080000000000
0G
0<
#3090000000000
0l
b1000000 v
b10000000000000000111111111000 2"
b0 J
b0 Y
b0 \
b0 $"
b100101100 ."
b100101100 7%
b110010000 ,"
b110010000 8%
b1111111101 V
b11 /"
b11 s$
b100 -"
b100 t$
b110 0"
b11000000000000100 ("
b1100000000000010 4"
b110 +"
b11 @"
b100 *"
b110 )"
b10000011000000000000000 A"
b110011 o
b110011 s
b110011 u
b0 "#
b0 r$
b10000000000000000111111111000 1"
b10000000000000000111111110100 K
b10000000000000000111111110100 ^
b10000000000000000111111110100 !#
b10000011000001100110011 b
b10000011000001100110011 %"
b10000011000001100110011 p"
b10000000000000000111111110000 q"
1Z"
1^"
1P"
b100 W"
b0 y"
b0 q$
b0 x"
b0 u"
b101 A
1G
1<
#3100000000000
0G
0<
#3110000000000
0e
b1010111100 B"
b1010111100 *#
b0 v
1p$
1n$
b100000000 /#
1j$
1f$
1W$
1\$
1H$
0C"
b1010111100 (#
b1010111100 .#
1o#
1h$
1c$
1T$
1g$
1X$
1D$
1k#
b10000000000000000111111111100 2"
b110010000 )#
b110010000 ,#
b100101100 {"
b100101100 ##
b100101100 +#
b0 ."
b0 7%
b0 ,"
b0 8%
b110010000 |"
b110010000 %#
b110010000 ~"
b100101100 }"
b0 /"
b0 s$
b0 -"
b0 t$
b0 0"
b0 ("
b0 4"
b0 +"
b0 @"
b0 *"
b0 )"
b0 A"
b0 o
b0 s
b0 u
b1111111110 V
b100 x"
1N"
0Z"
b110 g"
b100 j"
b11 h"
b10000011000000000000000 `"
b11000000000000100 o"
b110 l"
b110 n"
b100 m"
b110010000 k"
b100101100 i"
b10000000000000000111111110110 ?"
b10000000000000000111111110000 f"
b0 b
b0 %"
b0 p"
b10000000000000000111111110100 q"
b10000000000000000111111111100 1"
b10000000000000000111111111000 K
b10000000000000000111111111000 ^
b10000000000000000111111111000 !#
b110 A
1G
1<
#3120000000000
0G
0<
#3130000000000
b0 B"
b0 *#
1C"
0p$
0n$
b0 /#
0j$
0f$
0W$
0\$
0H$
b0 (#
b0 .#
0o#
b10000000000000001000000000000 2"
0h$
0c$
0T$
0g$
0X$
0D$
0k#
b0 )#
b0 ,#
b0 {"
b0 ##
b0 +#
b1111111111 V
b0 |"
b0 %#
b0 ~"
b0 }"
b110010000 H
b110010000 Q
b110010000 h
b110010000 F"
b1010111100 >"
b1010111100 3"
b10101111 O
b10000000000000001000000000000 1"
b10000000000000000111111111100 K
b10000000000000000111111111100 ^
b10000000000000000111111111100 !#
b10000000000000000111111111000 q"
0^"
b0 g"
b0 j"
b0 h"
b0 `"
b0 o"
b0 l"
b0 n"
b0 m"
b0 k"
b0 i"
b10000000000000000111111110100 ?"
b10000000000000000111111110100 f"
0P"
b110 X"
b10000000000000000111111110110 &"
b10000000000000000111111110110 S"
b110010000 Y"
b1010111100 M
b1010111100 i
b1010111100 x
b1010111100 Q"
b10000000000000000111111110100 W"
1t"
b111 A
1G
1<
#3140000000000
0G
0<
#3150000000000
b10000000000000001000000000100 2"
b0 7"
b0 6"
b1010111100 "#
b1010111100 r$
b0 H
b0 Q
b0 h
b0 F"
b0 >"
b0 3"
b0 O
b10000000000 V
b110 y"
b110 q$
b10000000000000000111111110100 x"
b1010111100 u"
0N"
1P"
b0 X"
b10000000000000000111111110100 &"
b10000000000000000111111110100 S"
b0 Y"
b0 M
b0 i
b0 x
b0 Q"
b10000000000000000111111111000 W"
b10000000000000000111111111000 ?"
b10000000000000000111111111000 f"
b10000000000000000111111111100 q"
b10000000000000001000000000100 1"
b10000000000000001000000000000 K
b10000000000000001000000000000 ^
b10000000000000001000000000000 !#
b1000 A
1G
1<
#3160000000000
0G
0<
#3170000000000
b10000000000000001000000001000 2"
b0 7"
b0 6"
b10000000001 V
b0 "#
b0 r$
b1010111100 2%
b10000000000000001000000001000 1"
b10000000000000001000000000100 K
b10000000000000001000000000100 ^
b10000000000000001000000000100 !#
b10000000000000001000000000000 q"
b10000000000000000111111111100 ?"
b10000000000000000111111111100 f"
b10000000000000000111111111000 &"
b10000000000000000111111111000 S"
b10000000000000000111111111100 W"
0t"
b0 y"
b0 q$
b10000000000000000111111111000 x"
b0 u"
b1001 A
1G
1<
#3180000000000
0G
0<
#3190000000000
b10000000000000001000000001100 2"
b10000000010 V
b10000000000000000111111111100 x"
b10000000000000000111111111100 &"
b10000000000000000111111111100 S"
b10000000000000001000000000000 W"
b10000000000000001000000000000 ?"
b10000000000000001000000000000 f"
b10000000000000001000000000100 q"
b10000000000000001000000001100 1"
b10000000000000001000000001000 K
b10000000000000001000000001000 ^
b10000000000000001000000001000 !#
b0 2%
b110010000 0%
b100101100 -%
b1100100 "%
b1100100 u$
b100000000000000 A%
1B
b1010 A
1G
1<
#3200000000000
1]
0E
0G
0<
#3210000000000
1e
1l
b1100000 v
b10000000000000000000000000100 2"
b1111110001000001001100011100011 J
b1111110001000001001100011100011 Y
b1111110001000001001100011100011 \
b1111110001000001001100011100011 $"
b0 V
b10011 o
b10011 s
b10011 u
b10000000000000000000000000100 1"
b10000000000000000000000000000 K
b10000000000000000000000000000 ^
b10000000000000000000000000000 !#
b10011 b
b10011 %"
b10011 p"
b0 q"
b0 ?"
b0 f"
0P"
b0 &"
b0 S"
b0 W"
b0 x"
b0 A
1G
1<
#3220000000000
0G
0<
#3230000000000
1G
1<
#3240000000000
0G
0<
#3250000000000
1G
1<
#3260000000000
0]
b100001000101101010101000111100101110000011001010010000001000010010011100100010100100000010011100110111101110100001000000101010001100001011010110110010101101110 @
b110101 ?
0B
b100001000101101010101000111100101110000011001010010000001000010010011100100010100100000010011100110111101110100001000000101010001100001011010110110010101101110 ?%
b101 >%
1E
0G
0<
#3270000000000
0e
0l
1c
b10000 k
b10000 p
b10000 t
b10000 w
b100 v
b10000000000000000000000001000 2"
b1100100 ."
b1100100 7%
b1100100 ,"
b1100100 8%
b10000011000001010110011 J
b10000011000001010110011 Y
b10000011000001010110011 \
b10000011000001010110011 $"
b1 /"
b1 s$
b10 -"
b10 t$
b10001 0"
b1 5"
b1001011111100010 ("
b100101111110001 4"
b111111110000 +"
b11111111000 @"
b11111100010 *"
b11111110001 )"
b1111110001000001001000000000000 A"
b1 m
b1 q
b111111 n
b111111 r
b1100011 o
b1100011 s
b1100011 u
b1 V
1P"
b100 W"
1Z"
1^"
b1111110001000001001100011100011 b
b1111110001000001001100011100011 %"
b1111110001000001001100011100011 p"
b10000000000000000000000000000 q"
b10000000000000000000000001000 1"
b10000000000000000000000000100 K
b10000000000000000000000000100 ^
b10000000000000000000000000100 !#
b1 A
1G
1<
#3280000000000
0G
0<
#3290000000000
1e
0c
b0 B"
b0 *#
b0 k
b0 p
b0 t
b0 w
b1000000 v
0'#
1G"
1Q$
0D"
1P$
1L$
1K$
1B$
1A$
1=$
1<$
18$
17$
13$
12$
1.$
1-$
1)$
1($
1$$
1#$
1}#
1|#
1x#
1w#
1s#
1r#
1i#
1h#
1d#
1c#
1_#
1^#
1Z#
1Y#
1U#
1T#
1P#
1O#
1K#
1J#
1F#
1E#
1A#
1@#
1<#
1;#
1o$
1n$
1Z$
1j$
1V$
1i$
1U$
1m#
1e$
1G$
17#
0&#
1d$
1_$
1F$
0a$
0\$
0o#
0E"
16#
1`$
1[$
1n#
0R$
0M$
0C$
0>$
09$
04$
0/$
0*$
0%$
0~#
0y#
0t#
0j#
0e#
0`#
0[#
0V#
0Q#
0L#
0G#
0B#
0=#
0p$
0k$
0f$
0W$
0H$
08#
b11111111111111111111111111111111 /#
12#
b10000000000000000000000001100 2"
1O$
1J$
1@$
1;$
16$
11$
1,$
1'$
1"$
1{#
1v#
1q#
1g#
1b#
1]#
1X#
1S#
1N#
1I#
1D#
1?#
1:#
1m$
1h$
1c$
0^$
0Y$
1T$
1E$
0l#
15#
11#
1]$
1X$
1k#
b0 J
b0 Y
b0 \
b0 $"
b100101100 ."
b100101100 7%
b110010000 ,"
b110010000 8%
1C"
b0 (#
b0 .#
03#
b11111111111111111111111110011011 )#
b11111111111111111111111110011011 ,#
b1100100 {"
b1100100 ##
b1100100 +#
b10 V
b11 /"
b11 s$
b100 -"
b100 t$
b101 0"
b0 5"
b11000000000000100 ("
b1100000000000010 4"
b100000000100 +"
b10000000010 @"
b100 *"
b101 )"
b10000011000000000000000 A"
b0 m
b0 q
b0 n
b0 r
b110011 o
b110011 s
b110011 u
1-#
b1100100 |"
b1100100 %#
b1100100 ~"
b1100100 }"
b10000000000000000000000001100 1"
b10000000000000000000000001000 K
b10000000000000000000000001000 ^
b10000000000000000000000001000 !#
b10000011000001010110011 b
b10000011000001010110011 %"
b10000011000001010110011 p"
b10000000000000000000000000100 q"
1a"
b10000 ["
b10000 $#
0Z"
0^"
b1 b"
b10001 g"
b10 j"
b1 h"
b1111110001000001001000000000000 `"
b1001011111100010 o"
b111111110000 l"
b11111110001 n"
b11111100010 m"
b1100100 k"
b1100100 i"
b10000000000000000111111110000 ?"
b10000000000000000000000000000 f"
1N"
b100 x"
b10 A
1G
1<
#3300000000000
0G
0<
#3310000000000
0e
b1010111100 B"
b1010111100 *#
b0 v
b11 N
b11 R
b11 j
b11 I"
0_$
0[$
1\$
0Z$
0V$
1W$
0U$
0G$
1H$
0F$
0i$
0n#
0e$
1f$
0&#
1'#
1o#
0d$
0E"
0G"
0P$
0K$
0A$
0<$
07$
02$
0-$
0($
0#$
0|#
0w#
0r#
0h#
0c#
0^#
0Y#
0T#
0O#
0J#
0E#
0@#
0;#
0m#
0`$
0R$
0Q$
0M$
0L$
0C$
0B$
0>$
0=$
09$
08$
04$
03$
0/$
0.$
0*$
0)$
0%$
0$$
0~#
0}#
0y#
0x#
0t#
0s#
0j#
0i#
0e#
0d#
0`#
0_#
0[#
0Z#
0V#
0U#
0Q#
0P#
0L#
0K#
0G#
0F#
0B#
0A#
0=#
0<#
1p$
0o$
07#
0k$
0a$
06#
0O$
0J$
0@$
0;$
06$
01$
0,$
0'$
0"$
0{#
0v#
0q#
0g#
0b#
0]#
0X#
0S#
0N#
0I#
0D#
0?#
0:#
0m$
0E$
05#
01#
b100000000 /#
02#
1g$
0]$
1D$
b10000000000000000000000010000 2"
b110010000 )#
b110010000 ,#
0C"
b1010111100 (#
b1010111100 .#
03#
b100101100 {"
b100101100 ##
b100101100 +#
b0 ."
b0 7%
b0 ,"
b0 8%
b1100100 H
b1100100 Q
b1100100 h
b1100100 F"
0-#
b110010000 |"
b110010000 %#
b110010000 ~"
b100101100 }"
b0 /"
b0 s$
b0 -"
b0 t$
b0 0"
b0 ("
b0 4"
b0 +"
b0 @"
b0 *"
b0 )"
b0 A"
b0 o
b0 s
b0 u
b11 V
1t"
1R"
0N"
1J"
0="
18"
b1 T"
b10001 X"
b10000000000000000111111110000 &"
b10000000000000000111111110000 S"
b1100100 Y"
b10000000000000000000000000100 W"
0a"
b0 ["
b0 $#
1^"
b0 b"
b101 g"
b100 j"
b11 h"
b10000011000000000000000 `"
b11000000000000100 o"
b100000000100 l"
b101 n"
b100 m"
b110010000 k"
b100101100 i"
b10000000000000000100000001000 ?"
b10000000000000000000000000100 f"
b0 b
b0 %"
b0 p"
b10000000000000000000000001000 q"
b10000000000000000000000010000 1"
b10000000000000000000000001100 K
b10000000000000000000000001100 ^
b10000000000000000000000001100 !#
b11 A
1G
1<
#3320000000000
0G
0<
#3330000000000
b0 B"
b0 *#
b1 N
b1 R
b1 j
b1 I"
1C"
0p$
0n$
b0 /#
0j$
0f$
0W$
0\$
0H$
b0 (#
b0 .#
0o#
b10000000000000000000000010100 2"
0h$
0c$
0T$
0g$
0X$
0D$
0k#
b0 )#
b0 ,#
b0 {"
b0 ##
b0 +#
b100 V
b0 |"
b0 %#
b0 ~"
b0 }"
b110010000 H
b110010000 Q
b110010000 h
b110010000 F"
b1010111100 >"
b1010111100 3"
b10101111 O
b10000000000000000000000010100 1"
b10000000000000000000000010000 K
b10000000000000000000000010000 ^
b10000000000000000000000010000 !#
b10000000000000000000000001100 q"
0^"
b0 g"
b0 j"
b0 h"
b0 `"
b0 o"
b0 l"
b0 n"
b0 m"
b0 k"
b0 i"
b10000000000000000000000001000 ?"
b10000000000000000000000001000 f"
0R"
1N"
0J"
0P"
1="
08"
b0 T"
b101 X"
b10000000000000000100000001000 &"
b10000000000000000100000001000 S"
b110010000 Y"
b1010111100 M
b1010111100 i
b1010111100 x
b1010111100 Q"
b10000000000000000000000001000 W"
0t"
b10001 y"
b10001 q$
b10000000000000000000000000100 x"
b100 A
1G
1<
#3340000000000
0G
0<
#3350000000000
b10000000000000000000000011000 2"
b0 7"
b0 6"
b1010111100 "#
b1010111100 r$
b0 H
b0 Q
b0 h
b0 F"
b0 >"
b0 3"
b0 O
b101 V
1t"
b101 y"
b101 q$
b10000000000000000000000001000 x"
b1010111100 u"
0N"
1P"
b0 X"
b10000000000000000000000001000 &"
b10000000000000000000000001000 S"
b0 Y"
b0 M
b0 i
b0 x
b0 Q"
b10000000000000000000000001100 W"
b10000000000000000000000001100 ?"
b10000000000000000000000001100 f"
b10000000000000000000000010000 q"
b10000000000000000000000011000 1"
b10000000000000000000000010100 K
b10000000000000000000000010100 ^
b10000000000000000000000010100 !#
b101 A
1G
1<
#3360000000000
0G
0<
#3370000000000
b10000000000000000000000011100 2"
b0 7"
b0 6"
b110 V
b0 "#
b0 r$
b1010111100 1%
b10000000000000000000000011100 1"
b10000000000000000000000011000 K
b10000000000000000000000011000 ^
b10000000000000000000000011000 !#
b10000000000000000000000010100 q"
b10000000000000000000000010000 ?"
b10000000000000000000000010000 f"
b10000000000000000000000001100 &"
b10000000000000000000000001100 S"
b10000000000000000000000010000 W"
0t"
b0 y"
b0 q$
b10000000000000000000000001100 x"
b0 u"
b110 A
1G
1<
#3380000000000
0G
0<
#3390000000000
b10000000000000000000000100000 2"
b111 V
b10000000000000000000000010000 x"
b10000000000000000000000010000 &"
b10000000000000000000000010000 S"
b10000000000000000000000010100 W"
b10000000000000000000000010100 ?"
b10000000000000000000000010100 f"
b10000000000000000000000011000 q"
b10000000000000000000000100000 1"
b10000000000000000000000011100 K
b10000000000000000000000011100 ^
b10000000000000000000000011100 !#
b0 1%
b110010000 0%
b100101100 -%
b11001000 "%
b1100100 u$
b100000000000000 A%
b10 F
1B
b0 A
1G
1<
#3400000000000
1]
0E
0G
0<
#3410000000000
1e
1l
b1100000 v
b10000000000000000000000000100 2"
b1111110001000001100100011100011 J
b1111110001000001100100011100011 Y
b1111110001000001100100011100011 \
b1111110001000001100100011100011 $"
b0 V
b10011 o
b10011 s
b10011 u
b10000000000000000000000000100 1"
b10000000000000000000000000000 K
b10000000000000000000000000000 ^
b10000000000000000000000000000 !#
b10011 b
b10011 %"
b10011 p"
b0 q"
b0 ?"
b0 f"
0P"
b0 &"
b0 S"
b0 W"
b0 x"
1G
1<
#3420000000000
0G
0<
#3430000000000
1G
1<
#3440000000000
0G
0<
#3450000000000
1G
1<
#3460000000000
0]
b110 >%
b1010111100 >
b10000100010110101010100011110010111000001100101001000000100001001001100010101000010000001010100011000010110101101100101011011100010000000110010 @
b110111 ?
0B
b10000100010110101010100011110010111000001100101001000000100001001001100010101000010000001010100011000010110101101100101011011100010000000110010 ?%
b1010111100 =%
1E
0G
0<
#3470000000000
0e
0l
1c
b10000 k
b10000 p
b10000 t
b10000 w
b100 v
b10000000000000000000000001000 2"
b1100100 ."
b1100100 7%
b11001000 ,"
b11001000 8%
b10000011000001010110011 J
b10000011000001010110011 Y
b10000011000001010110011 \
b10000011000001010110011 $"
b1 /"
b1 s$
b10 -"
b10 t$
b10001 0"
b100 5"
b1100011111100010 ("
b110001111110001 4"
b111111110000 +"
b11111111000 @"
b11111100010 *"
b11111110001 )"
b1111110001000001100000000000000 A"
b100 m
b100 q
b111111 n
b111111 r
b1100011 o
b1100011 s
b1100011 u
b1 V
1P"
b100 W"
1Z"
1^"
b1111110001000001100100011100011 b
b1111110001000001100100011100011 %"
b1111110001000001100100011100011 p"
b10000000000000000000000000000 q"
b10000000000000000000000001000 1"
b10000000000000000000000000100 K
b10000000000000000000000000100 ^
b10000000000000000000000000100 !#
b1 A
1G
1<
#3480000000000
0G
0<
#3490000000000
1e
0c
b11111111111111111111111110011100 B"
b11111111111111111111111110011100 *#
b0 k
b0 p
b0 t
b0 w
b1000000 v
1o#
1m#
17#
1&#
1d$
1_$
1F$
0a$
1E"
16#
1`$
1[$
1n#
1R$
1M$
1C$
1>$
19$
14$
1/$
1*$
1%$
1~#
1y#
1t#
1j#
1e#
1`#
1[#
1V#
1Q#
1L#
1G#
1B#
1=#
1p$
1k$
1f$
1W$
1H$
08#
b1100111 /#
12#
b10000000000000000000000001100 2"
1O$
1J$
1@$
1;$
16$
11$
1,$
1'$
1"$
1{#
1v#
1q#
1g#
1b#
1]#
1X#
1S#
1N#
1I#
1D#
1?#
1:#
1m$
1h$
0c$
0^$
1Y$
1T$
0E$
1l#
15#
11#
1]$
1X$
1k#
b0 J
b0 Y
b0 \
b0 $"
b100101100 ."
b100101100 7%
b110010000 ,"
b110010000 8%
0C"
b11111111111111111111111110011100 (#
b11111111111111111111111110011100 .#
03#
b11111111111111111111111100110111 )#
b11111111111111111111111100110111 ,#
b1100100 {"
b1100100 ##
b1100100 +#
b10 V
b11 /"
b11 s$
b100 -"
b100 t$
b101 0"
b0 5"
b11000000000000100 ("
b1100000000000010 4"
b100000000100 +"
b10000000010 @"
b100 *"
b101 )"
b10000011000000000000000 A"
b0 m
b0 q
b0 n
b0 r
b110011 o
b110011 s
b110011 u
1-#
b11001000 |"
b11001000 %#
b11001000 ~"
b1100100 }"
b10000000000000000000000001100 1"
b10000000000000000000000001000 K
b10000000000000000000000001000 ^
b10000000000000000000000001000 !#
b10000011000001010110011 b
b10000011000001010110011 %"
b10000011000001010110011 p"
b10000000000000000000000000100 q"
1a"
b10000 ["
b10000 $#
0Z"
0^"
b100 b"
b10001 g"
b10 j"
b1 h"
b1111110001000001100000000000000 `"
b1100011111100010 o"
b111111110000 l"
b11111110001 n"
b11111100010 m"
b11001000 k"
b1100100 i"
b10000000000000000111111110000 ?"
b10000000000000000000000000000 f"
1N"
b100 x"
b10 A
1G
1<
#3500000000000
0G
0<
#3510000000000
0e
b1010111100 B"
b1010111100 *#
b0 v
0F$
0Z$
0n#
0V$
1#"
1W$
0&#
0_$
1n$
0d$
0U$
1""
0E"
0i$
0[$
0m#
1j$
0`$
0G$
0R$
0M$
0C$
0>$
09$
04$
0/$
0*$
0%$
0~#
0y#
0t#
0j#
0e#
0`#
0[#
0V#
0Q#
0L#
0G#
0B#
0=#
1p$
1f$
0e$
1\$
1o#
07#
0k$
0a$
1H$
06#
0O$
0J$
0@$
0;$
06$
01$
0,$
0'$
0"$
0{#
0v#
0q#
0g#
0b#
0]#
0X#
0S#
0N#
0I#
0D#
0?#
0:#
0m$
1c$
0Y$
0l#
05#
01#
b100000000 /#
02#
1g$
0]$
1D$
b10000000000000000111111110000 2"
1}
b110010000 )#
b110010000 ,#
b1010111100 (#
b1010111100 .#
03#
b100101100 {"
b100101100 ##
b100101100 +#
b0 ."
b0 7%
b0 ,"
b0 8%
b11001000 H
b11001000 Q
b11001000 h
b11001000 F"
b11111111111111111111111110011100 >"
b11111111111111111111111110011100 3"
b11111111100111 O
0-#
b110010000 |"
b110010000 %#
b110010000 ~"
b100101100 }"
b0 /"
b0 s$
b0 -"
b0 t$
b0 0"
b0 ("
b0 4"
b0 +"
b0 @"
b0 *"
b0 )"
b0 A"
b0 o
b0 s
b0 u
b11 V
1t"
1R"
0N"
1M"
0P"
0="
1:"
b100 T"
b10001 X"
b10000000000000000111111110000 &"
b10000000000000000111111110000 S"
b11001000 Y"
b11111111111111111111111110011100 M
b11111111111111111111111110011100 i
b11111111111111111111111110011100 x
b11111111111111111111111110011100 Q"
b10000000000000000000000000100 W"
0a"
b0 ["
b0 $#
1^"
b0 b"
b101 g"
b100 j"
b11 h"
b10000011000000000000000 `"
b11000000000000100 o"
b100000000100 l"
b101 n"
b100 m"
b110010000 k"
b100101100 i"
b10000000000000000100000001000 ?"
b10000000000000000000000000100 f"
b0 b
b0 %"
b0 p"
b10000000000000000000000001000 q"
b10000000000000000000000010000 1"
b10000000000000000000000001100 K
b10000000000000000000000001100 ^
b10000000000000000000000001100 !#
b11 A
1G
1<
#3520000000000
0G
0<
#3530000000000
1e
1l
b0 B"
b0 *#
b1100000 v
1C"
0p$
0#"
0n$
b0 /#
0j$
0""
0f$
0W$
0\$
0H$
b0 (#
b0 .#
0o#
0h$
0c$
0T$
0g$
0X$
0D$
0k#
b10000000000000000111111110100 2"
b10000011000001100110011 J
b10000011000001100110011 Y
b10000011000001100110011 \
b10000011000001100110011 $"
b0 )#
b0 ,#
b0 {"
b0 ##
b0 +#
0}
b1111111100 V
b10011 o
b10011 s
b10011 u
b0 |"
b0 %#
b0 ~"
b0 }"
b0 H
b0 Q
b0 h
b0 F"
b0 >"
b0 3"
b0 O
b11111111111111111111111110011100 "#
b11111111111111111111111110011100 r$
b10000000000000000111111110100 1"
b10000000000000000111111110000 K
b10000000000000000111111110000 ^
b10000000000000000111111110000 !#
b10011 b
b10011 %"
b10011 p"
b0 q"
0^"
b0 g"
b0 j"
b0 h"
b0 `"
b0 o"
b0 l"
b0 n"
b0 m"
b0 k"
b0 i"
b0 ?"
b0 f"
0R"
0M"
1="
0:"
b0 T"
b0 X"
b0 &"
b0 S"
b0 Y"
b0 M
b0 i
b0 x
b0 Q"
b0 W"
0t"
b10001 y"
b10001 q$
b10000000000000000000000000100 x"
b11111111111111111111111110011100 u"
b100 A
1G
1<
#3540000000000
0G
0<
#3550000000000
0l
b1000000 v
b10000000000000000111111111000 2"
b0 J
b0 Y
b0 \
b0 $"
b100101100 ."
b100101100 7%
b110010000 ,"
b110010000 8%
b0 "#
b0 r$
b11 /"
b11 s$
b100 -"
b100 t$
b110 0"
b11000000000000100 ("
b1100000000000010 4"
b110 +"
b11 @"
b100 *"
b110 )"
b10000011000000000000000 A"
b110011 o
b110011 s
b110011 u
b1111111101 V
b0 y"
b0 q$
b0 x"
b0 u"
1P"
b100 W"
1Z"
1^"
b10000011000001100110011 b
b10000011000001100110011 %"
b10000011000001100110011 p"
b10000000000000000111111110000 q"
b10000000000000000111111111000 1"
b10000000000000000111111110100 K
b10000000000000000111111110100 ^
b10000000000000000111111110100 !#
b101 A
1G
1<
#3560000000000
0G
0<
#3570000000000
0e
b1010111100 B"
b1010111100 *#
b0 v
1p$
1n$
b100000000 /#
1j$
1f$
1W$
1\$
1H$
0C"
b1010111100 (#
b1010111100 .#
1o#
b10000000000000000111111111100 2"
1h$
1c$
1T$
1g$
1X$
1D$
1k#
b0 ."
b0 7%
b0 ,"
b0 8%
b110010000 )#
b110010000 ,#
b100101100 {"
b100101100 ##
b100101100 +#
b1111111110 V
b0 /"
b0 s$
b0 -"
b0 t$
b0 0"
b0 ("
b0 4"
b0 +"
b0 @"
b0 *"
b0 )"
b0 A"
b0 o
b0 s
b0 u
b110010000 |"
b110010000 %#
b110010000 ~"
b100101100 }"
b10000000000000000111111111100 1"
b10000000000000000111111111000 K
b10000000000000000111111111000 ^
b10000000000000000111111111000 !#
b0 b
b0 %"
b0 p"
b10000000000000000111111110100 q"
0Z"
b110 g"
b100 j"
b11 h"
b10000011000000000000000 `"
b11000000000000100 o"
b110 l"
b110 n"
b100 m"
b110010000 k"
b100101100 i"
b10000000000000000111111110110 ?"
b10000000000000000111111110000 f"
1N"
b100 x"
b110 A
1G
1<
#3580000000000
0G
0<
#3590000000000
b0 B"
b0 *#
1C"
0p$
0n$
b0 /#
0j$
0f$
0W$
0\$
0H$
b0 (#
b0 .#
0o#
0h$
0c$
0T$
0g$
0X$
0D$
0k#
b10000000000000001000000000000 2"
b0 )#
b0 ,#
b0 {"
b0 ##
b0 +#
b110010000 H
b110010000 Q
b110010000 h
b110010000 F"
b1010111100 >"
b1010111100 3"
b10101111 O
b0 |"
b0 %#
b0 ~"
b0 }"
b1111111111 V
1t"
0P"
b110 X"
b10000000000000000111111110110 &"
b10000000000000000111111110110 S"
b110010000 Y"
b1010111100 M
b1010111100 i
b1010111100 x
b1010111100 Q"
b10000000000000000111111110100 W"
0^"
b0 g"
b0 j"
b0 h"
b0 `"
b0 o"
b0 l"
b0 n"
b0 m"
b0 k"
b0 i"
b10000000000000000111111110100 ?"
b10000000000000000111111110100 f"
b10000000000000000111111111000 q"
b10000000000000001000000000000 1"
b10000000000000000111111111100 K
b10000000000000000111111111100 ^
b10000000000000000111111111100 !#
b111 A
1G
1<
#3600000000000
0G
0<
#3610000000000
b10000000000000001000000000100 2"
b0 7"
b0 6"
b10000000000 V
b0 H
b0 Q
b0 h
b0 F"
b0 >"
b0 3"
b0 O
b1010111100 "#
b1010111100 r$
b10000000000000001000000000100 1"
b10000000000000001000000000000 K
b10000000000000001000000000000 ^
b10000000000000001000000000000 !#
b10000000000000000111111111100 q"
b10000000000000000111111111000 ?"
b10000000000000000111111111000 f"
0N"
1P"
b0 X"
b10000000000000000111111110100 &"
b10000000000000000111111110100 S"
b0 Y"
b0 M
b0 i
b0 x
b0 Q"
b10000000000000000111111111000 W"
b110 y"
b110 q$
b10000000000000000111111110100 x"
b1010111100 u"
b1000 A
1G
1<
#3620000000000
0G
0<
#3630000000000
b0 7"
b0 6"
b10000000000000001000000001000 2"
b0 "#
b0 r$
b10000000001 V
0t"
b0 y"
b0 q$
b10000000000000000111111111000 x"
b0 u"
b10000000000000000111111111000 &"
b10000000000000000111111111000 S"
b10000000000000000111111111100 W"
b10000000000000000111111111100 ?"
b10000000000000000111111111100 f"
b10000000000000001000000000000 q"
b10000000000000001000000001000 1"
b10000000000000001000000000100 K
b10000000000000001000000000100 ^
b10000000000000001000000000100 !#
b1010111100 2%
b1001 A
1G
1<
#3640000000000
0G
0<
#3650000000000
b10000000000000001000000001100 2"
b10000000010 V
b10000000000000001000000001100 1"
b10000000000000001000000001000 K
b10000000000000001000000001000 ^
b10000000000000001000000001000 !#
b10000000000000001000000000100 q"
b10000000000000001000000000000 ?"
b10000000000000001000000000000 f"
b10000000000000000111111111100 &"
b10000000000000000111111111100 S"
b10000000000000001000000000000 W"
b10000000000000000111111111100 x"
b0 2%
b110010000 0%
b100101100 -%
b1100100 "%
b11001000 u$
b100000000000000 A%
1B
b1010 A
1G
1<
#3660000000000
1]
0E
0G
0<
#3670000000000
1e
1l
b1100000 v
b10000000000000000000000000100 2"
b1111110001000001100100011100011 J
b1111110001000001100100011100011 Y
b1111110001000001100100011100011 \
b1111110001000001100100011100011 $"
b10011 o
b10011 s
b10011 u
b0 V
b0 x"
0P"
b0 &"
b0 S"
b0 W"
b0 ?"
b0 f"
b10011 b
b10011 %"
b10011 p"
b0 q"
b10000000000000000000000000100 1"
b10000000000000000000000000000 K
b10000000000000000000000000000 ^
b10000000000000000000000000000 !#
b0 A
1G
1<
#3680000000000
0G
0<
#3690000000000
1G
1<
#3700000000000
0G
0<
#3710000000000
1G
1<
#3720000000000
0]
b100001000101101010101000111100101110000011001010010000001000010010011000101010000100000010011100110111101110100001000000101010001100001011010110110010101101110 @
b111000 ?
0B
b100001000101101010101000111100101110000011001010010000001000010010011000101010000100000010011100110111101110100001000000101010001100001011010110110010101101110 ?%
b101 >%
1E
0G
0<
#3730000000000
0e
0l
1c
b10000 k
b10000 p
b10000 t
b10000 w
b100 v
b10000000000000000000000001000 2"
b10000011000001010110011 J
b10000011000001010110011 Y
b10000011000001010110011 \
b10000011000001010110011 $"
b11001000 ."
b11001000 7%
b1100100 ,"
b1100100 8%
b1 V
b1 /"
b1 s$
b10 -"
b10 t$
b10001 0"
b100 5"
b1100011111100010 ("
b110001111110001 4"
b111111110000 +"
b11111111000 @"
b11111100010 *"
b11111110001 )"
b1111110001000001100000000000000 A"
b100 m
b100 q
b111111 n
b111111 r
b1100011 o
b1100011 s
b1100011 u
b10000000000000000000000001000 1"
b10000000000000000000000000100 K
b10000000000000000000000000100 ^
b10000000000000000000000000100 !#
b1111110001000001100100011100011 b
b1111110001000001100100011100011 %"
b1111110001000001100100011100011 p"
b10000000000000000000000000000 q"
1Z"
1^"
1P"
b100 W"
b1 A
1G
1<
#3740000000000
0G
0<
#3750000000000
1e
0c
b1100100 B"
b1100100 *#
b0 k
b0 p
b0 t
b0 w
b1000000 v
0'#
1G"
1Q$
0D"
1P$
1L$
1K$
1B$
1A$
1=$
1<$
18$
17$
13$
12$
1.$
1-$
1)$
1($
1$$
1#$
1}#
1|#
1x#
1w#
1s#
1r#
1i#
1h#
1d#
1c#
1_#
1^#
1Z#
1Y#
1U#
1T#
1P#
1O#
1K#
1J#
1F#
1E#
1A#
1@#
1<#
1;#
1o$
1n$
1Z$
1m#
1j$
1V$
17#
0f$
0&#
1i$
0d$
1U$
1a$
0E"
16#
1e$
0`$
1G$
0R$
0M$
0C$
0>$
09$
04$
0/$
0*$
0%$
0~#
0y#
0t#
0j#
0e#
0`#
0[#
0V#
0Q#
0L#
0G#
0B#
0=#
0p$
0k$
1\$
0W$
1o#
08#
b11111111111111111111111110011011 /#
12#
1O$
1J$
1@$
1;$
16$
11$
1,$
1'$
1"$
1{#
1v#
1q#
1g#
1b#
1]#
1X#
1S#
1N#
1I#
1D#
1?#
1:#
1m$
1h$
1c$
0^$
0Y$
1T$
1E$
0l#
15#
11#
1b$
1]$
1D$
b10000000000000000000000001100 2"
0C"
b1100100 (#
b1100100 .#
03#
b11111111111111111111111110011011 )#
b11111111111111111111111110011011 ,#
b11001000 {"
b11001000 ##
b11001000 +#
b100101100 ."
b100101100 7%
b110010000 ,"
b110010000 8%
b0 J
b0 Y
b0 \
b0 $"
1-#
b1100100 |"
b1100100 %#
b1100100 ~"
b11001000 }"
b11 /"
b11 s$
b100 -"
b100 t$
b101 0"
b0 5"
b11000000000000100 ("
b1100000000000010 4"
b100000000100 +"
b10000000010 @"
b100 *"
b101 )"
b10000011000000000000000 A"
b0 m
b0 q
b0 n
b0 r
b110011 o
b110011 s
b110011 u
b10 V
b100 x"
1N"
1a"
b10000 ["
b10000 $#
0Z"
0^"
b100 b"
b10001 g"
b10 j"
b1 h"
b1111110001000001100000000000000 `"
b1100011111100010 o"
b111111110000 l"
b11111110001 n"
b11111100010 m"
b1100100 k"
b11001000 i"
b10000000000000000111111110000 ?"
b10000000000000000000000000000 f"
b10000011000001010110011 b
b10000011000001010110011 %"
b10000011000001010110011 p"
b10000000000000000000000000100 q"
b10000000000000000000000001100 1"
b10000000000000000000000001000 K
b10000000000000000000000001000 ^
b10000000000000000000000001000 !#
b10 A
1G
1<
#3760000000000
0G
0<
#3770000000000
0e
b1010111100 B"
b1010111100 *#
b0 v
0Z$
0V$
1W$
0&#
1'#
0U$
0i$
0_$
0F$
0E"
0G"
0P$
0K$
0A$
0<$
07$
02$
0-$
0($
0#$
0|#
0w#
0r#
0h#
0c#
0^#
0Y#
0T#
0O#
0J#
0E#
0@#
0;#
0G$
0m#
0e$
0[$
0n#
0R$
0Q$
0M$
0L$
0C$
0B$
0>$
0=$
09$
08$
04$
03$
0/$
0.$
0*$
0)$
0%$
0$$
0~#
0}#
0y#
0x#
0t#
0s#
0j#
0i#
0e#
0d#
0`#
0_#
0[#
0Z#
0V#
0U#
0Q#
0P#
0L#
0K#
0G#
0F#
0B#
0A#
0=#
0<#
1p$
0o$
1H$
07#
0k$
1f$
0a$
1\$
1o#
06#
b10000000000000000000000010000 2"
0O$
0J$
0@$
0;$
06$
01$
0,$
0'$
0"$
0{#
0v#
0q#
0g#
0b#
0]#
0X#
0S#
0N#
0I#
0D#
0?#
0:#
0m$
0E$
05#
01#
b100000000 /#
02#
1g$
0b$
0]$
1X$
1k#
b0 ."
b0 7%
b0 ,"
b0 8%
b110010000 )#
b110010000 ,#
b1010111100 (#
b1010111100 .#
03#
b100101100 {"
b100101100 ##
b100101100 +#
b11 V
b0 /"
b0 s$
b0 -"
b0 t$
b0 0"
b0 ("
b0 4"
b0 +"
b0 @"
b0 *"
b0 )"
b0 A"
b0 o
b0 s
b0 u
0-#
b110010000 |"
b110010000 %#
b110010000 ~"
b100101100 }"
b1100100 H
b1100100 Q
b1100100 h
b1100100 F"
b1100100 >"
b1100100 3"
b11001 O
b10000000000000000000000010000 1"
b10000000000000000000000001100 K
b10000000000000000000000001100 ^
b10000000000000000000000001100 !#
b0 b
b0 %"
b0 p"
b10000000000000000000000001000 q"
0a"
b0 ["
b0 $#
1^"
b0 b"
b101 g"
b100 j"
b11 h"
b10000011000000000000000 `"
b11000000000000100 o"
b100000000100 l"
b101 n"
b100 m"
b110010000 k"
b100101100 i"
b10000000000000000100000001000 ?"
b10000000000000000000000000100 f"
1R"
0N"
1J"
0P"
0="
1:"
b100 T"
b10001 X"
b10000000000000000111111110000 &"
b10000000000000000111111110000 S"
b1100100 Y"
b1100100 M
b1100100 i
b1100100 x
b1100100 Q"
b10000000000000000000000000100 W"
1t"
b11 A
1G
1<
#3780000000000
0G
0<
#3790000000000
b0 B"
b0 *#
1C"
0p$
0n$
b0 /#
0j$
0f$
0W$
0\$
0H$
b0 (#
b0 .#
0o#
0h$
0c$
0T$
0g$
0X$
0D$
0k#
b10000000000000000000000010100 2"
b0 )#
b0 ,#
b0 {"
b0 ##
b0 +#
b1100100 "#
b1100100 r$
b110010000 H
b110010000 Q
b110010000 h
b110010000 F"
b1010111100 >"
b1010111100 3"
b10101111 O
b0 |"
b0 %#
b0 ~"
b0 }"
b100 V
0t"
b10001 y"
b10001 q$
b10000000000000000000000000100 x"
b1100100 u"
0R"
1N"
0J"
1="
0:"
b0 T"
b101 X"
b10000000000000000100000001000 &"
b10000000000000000100000001000 S"
b110010000 Y"
b1010111100 M
b1010111100 i
b1010111100 x
b1010111100 Q"
b10000000000000000000000001000 W"
0^"
b0 g"
b0 j"
b0 h"
b0 `"
b0 o"
b0 l"
b0 n"
b0 m"
b0 k"
b0 i"
b10000000000000000000000001000 ?"
b10000000000000000000000001000 f"
b10000000000000000000000001100 q"
b10000000000000000000000010100 1"
b10000000000000000000000010000 K
b10000000000000000000000010000 ^
b10000000000000000000000010000 !#
b100 A
1G
1<
#3800000000000
0G
0<
#3810000000000
b10000000000000000000000011000 2"
b0 7"
b0 6"
b101 V
b0 H
b0 Q
b0 h
b0 F"
b0 >"
b0 3"
b0 O
b1010111100 "#
b1010111100 r$
b10000000000000000000000011000 1"
b10000000000000000000000010100 K
b10000000000000000000000010100 ^
b10000000000000000000000010100 !#
b10000000000000000000000010000 q"
b10000000000000000000000001100 ?"
b10000000000000000000000001100 f"
0N"
1P"
b0 X"
b10000000000000000000000001000 &"
b10000000000000000000000001000 S"
b0 Y"
b0 M
b0 i
b0 x
b0 Q"
b10000000000000000000000001100 W"
1t"
b101 y"
b101 q$
b10000000000000000000000001000 x"
b1010111100 u"
b101 A
1G
1<
#3820000000000
0G
0<
#3830000000000
b0 7"
b0 6"
b10000000000000000000000011100 2"
b0 "#
b0 r$
b110 V
0t"
b0 y"
b0 q$
b10000000000000000000000001100 x"
b0 u"
b10000000000000000000000001100 &"
b10000000000000000000000001100 S"
b10000000000000000000000010000 W"
b10000000000000000000000010000 ?"
b10000000000000000000000010000 f"
b10000000000000000000000010100 q"
b10000000000000000000000011100 1"
b10000000000000000000000011000 K
b10000000000000000000000011000 ^
b10000000000000000000000011000 !#
b1010111100 1%
b110 A
1G
1<
#3840000000000
0G
0<
#3850000000000
b10000000000000000000000100000 2"
b111 V
b10000000000000000000000100000 1"
b10000000000000000000000011100 K
b10000000000000000000000011100 ^
b10000000000000000000000011100 !#
b10000000000000000000000011000 q"
b10000000000000000000000010100 ?"
b10000000000000000000000010100 f"
b10000000000000000000000010000 &"
b10000000000000000000000010000 S"
b10000000000000000000000010100 W"
b10000000000000000000000010000 x"
b0 1%
b110010000 0%
b100101100 -%
b11001000 "%
b100101100 u$
b100000000000000 A%
b11 F
1B
b0 A
1G
1<
#3860000000000
1]
0E
0G
0<
#3870000000000
1e
1l
b1100000 v
b10000000000000000000000000100 2"
b1111110001000001101100011100011 J
b1111110001000001101100011100011 Y
b1111110001000001101100011100011 \
b1111110001000001101100011100011 $"
b10011 o
b10011 s
b10011 u
b0 V
b0 x"
0P"
b0 &"
b0 S"
b0 W"
b0 ?"
b0 f"
b10011 b
b10011 %"
b10011 p"
b0 q"
b10000000000000000000000000100 1"
b10000000000000000000000000000 K
b10000000000000000000000000000 ^
b10000000000000000000000000000 !#
1G
1<
#3880000000000
0G
0<
#3890000000000
1G
1<
#3900000000000
0G
0<
#3910000000000
1G
1<
#3920000000000
0]
b110 >%
b1010111100 >
b10000100010110101010100011110010111000001100101001000000100001001000111010001010010000001010100011000010110101101100101011011100010000000110010 @
b111010 ?
0B
b10000100010110101010100011110010111000001100101001000000100001001000111010001010010000001010100011000010110101101100101011011100010000000110010 ?%
b1010111100 =%
1E
0G
0<
#3930000000000
0e
0l
1c
b10000 k
b10000 p
b10000 t
b10000 w
b100 v
b10000000000000000000000001000 2"
b10000011000001010110011 J
b10000011000001010110011 Y
b10000011000001010110011 \
b10000011000001010110011 $"
b100101100 ."
b100101100 7%
b11001000 ,"
b11001000 8%
b1 V
b1 /"
b1 s$
b10 -"
b10 t$
b10001 0"
b101 5"
b1101011111100010 ("
b110101111110001 4"
b111111110000 +"
b11111111000 @"
b11111100010 *"
b11111110001 )"
b1111110001000001101000000000000 A"
b101 m
b101 q
b111111 n
b111111 r
b1100011 o
b1100011 s
b1100011 u
b10000000000000000000000001000 1"
b10000000000000000000000000100 K
b10000000000000000000000000100 ^
b10000000000000000000000000100 !#
b1111110001000001101100011100011 b
b1111110001000001101100011100011 %"
b1111110001000001101100011100011 p"
b10000000000000000000000000000 q"
1Z"
1^"
1P"
b100 W"
b1 A
1G
1<
#3940000000000
0G
0<
#3950000000000
1e
0c
b1100100 B"
b1100100 *#
b0 k
b0 p
b0 t
b0 w
b1000000 v
0'#
1G"
1Q$
0D"
1P$
1L$
1K$
1B$
1A$
1=$
1<$
18$
17$
13$
12$
1.$
1-$
1)$
1($
1$$
1#$
1}#
1|#
1x#
1w#
1s#
1r#
1i#
1h#
1d#
1c#
1_#
1^#
1Z#
1Y#
1U#
1T#
1P#
1O#
1K#
1J#
1F#
1E#
1A#
1@#
1<#
1\$
1o#
1;#
1Z$
1m#
1o$
1V$
17#
0&#
1n$
1_$
1U$
1F$
0H$
0E"
16#
1j$
1[$
1G$
1n#
0R$
0M$
0C$
0>$
09$
04$
0/$
0*$
0%$
0~#
0y#
0t#
0j#
0e#
0`#
0[#
0V#
0Q#
0L#
0G#
0B#
0=#
0p$
0f$
1a$
0W$
08#
b11111111111111111111111100111111 /#
12#
1O$
1J$
1@$
1;$
16$
11$
1,$
1'$
1"$
1{#
1v#
1q#
1g#
1b#
1]#
1X#
1S#
1N#
1I#
1D#
1?#
1:#
1m$
1h$
0c$
0^$
1Y$
1T$
0E$
1l#
15#
11#
1g$
1X$
1D$
1k#
b10000000000000000000000001100 2"
0C"
b1100100 (#
b1100100 .#
03#
b11111111111111111111111100110111 )#
b11111111111111111111111100110111 ,#
b100101100 {"
b100101100 ##
b100101100 +#
b110010000 ,"
b110010000 8%
b0 J
b0 Y
b0 \
b0 $"
1-#
b11001000 |"
b11001000 %#
b11001000 ~"
b100101100 }"
b11 /"
b11 s$
b100 -"
b100 t$
b101 0"
b0 5"
b11000000000000100 ("
b1100000000000010 4"
b100000000100 +"
b10000000010 @"
b100 *"
b101 )"
b10000011000000000000000 A"
b0 m
b0 q
b0 n
b0 r
b110011 o
b110011 s
b110011 u
b10 V
b100 x"
1N"
1a"
b10000 ["
b10000 $#
0Z"
0^"
b101 b"
b10001 g"
b10 j"
b1 h"
b1111110001000001101000000000000 `"
b1101011111100010 o"
b111111110000 l"
b11111110001 n"
b11111100010 m"
b11001000 k"
b100101100 i"
b10000000000000000111111110000 ?"
b10000000000000000000000000000 f"
b10000011000001010110011 b
b10000011000001010110011 %"
b10000011000001010110011 p"
b10000000000000000000000000100 q"
b10000000000000000000000001100 1"
b10000000000000000000000001000 K
b10000000000000000000000001000 ^
b10000000000000000000000001000 !#
b10 A
1G
1<
#3960000000000
0G
0<
#3970000000000
0e
b1010111100 B"
b1010111100 *#
b0 v
b11 N
b11 R
b11 j
b11 I"
0a$
0_$
0[$
0Z$
0V$
1W$
0U$
0G$
1H$
0F$
0n#
0&#
1'#
1#"
0E"
0G"
0P$
0K$
0A$
0<$
07$
02$
0-$
0($
0#$
0|#
0w#
0r#
0h#
0c#
0^#
0Y#
0T#
0O#
0J#
0E#
0@#
0;#
0m#
0R$
0Q$
0M$
0L$
0C$
0B$
0>$
0=$
09$
08$
04$
03$
0/$
0.$
0*$
0)$
0%$
0$$
0~#
0}#
0y#
0x#
0t#
0s#
0j#
0i#
0e#
0d#
0`#
0_#
0[#
0Z#
0V#
0U#
0Q#
0P#
0L#
0K#
0G#
0F#
0B#
0A#
0=#
0<#
1p$
0o$
1f$
1\$
1o#
07#
1""
06#
b10000000000000000111111110000 2"
0O$
0J$
0@$
0;$
06$
01$
0,$
0'$
0"$
0{#
0v#
0q#
0g#
0b#
0]#
0X#
0S#
0N#
0I#
0D#
0?#
0:#
0m$
1c$
0Y$
0l#
05#
01#
b100000000 /#
02#
b0 ."
b0 7%
b0 ,"
b0 8%
b110010000 )#
b110010000 ,#
b1010111100 (#
b1010111100 .#
03#
1{
b11 V
b0 /"
b0 s$
b0 -"
b0 t$
b0 0"
b0 ("
b0 4"
b0 +"
b0 @"
b0 *"
b0 )"
b0 A"
b0 o
b0 s
b0 u
0-#
b110010000 |"
b110010000 %#
b110010000 ~"
b11001000 H
b11001000 Q
b11001000 h
b11001000 F"
b1100100 >"
b1100100 3"
b11001 O
b10000000000000000000000010000 1"
b10000000000000000000000001100 K
b10000000000000000000000001100 ^
b10000000000000000000000001100 !#
b0 b
b0 %"
b0 p"
b10000000000000000000000001000 q"
0a"
b0 ["
b0 $#
1^"
b0 b"
b101 g"
b100 j"
b11 h"
b10000011000000000000000 `"
b11000000000000100 o"
b100000000100 l"
b101 n"
b100 m"
b110010000 k"
b10000000000000000100000001000 ?"
b10000000000000000000000000100 f"
1R"
0N"
1J"
0P"
0="
1<"
b101 T"
b10001 X"
b10000000000000000111111110000 &"
b10000000000000000111111110000 S"
b11001000 Y"
b1100100 M
b1100100 i
b1100100 x
b1100100 Q"
b10000000000000000000000000100 W"
1t"
b11 A
1G
1<
#3980000000000
0G
0<
#3990000000000
1e
1l
b0 B"
b0 *#
b1100000 v
b1 N
b1 R
b1 j
b1 I"
1C"
0p$
0#"
0n$
b0 /#
0j$
0""
0f$
0W$
0\$
0H$
b0 (#
b0 .#
0o#
b10000000000000000111111110100 2"
0h$
0c$
0T$
0g$
0X$
0D$
0k#
0{
b0 )#
b0 ,#
b0 {"
b0 ##
b0 +#
b10000011000001100110011 J
b10000011000001100110011 Y
b10000011000001100110011 \
b10000011000001100110011 $"
b1100100 "#
b1100100 r$
b0 H
b0 Q
b0 h
b0 F"
b0 >"
b0 3"
b0 O
b0 |"
b0 %#
b0 ~"
b0 }"
b10011 o
b10011 s
b10011 u
b1111111100 V
0t"
b10001 y"
b10001 q$
b10000000000000000000000000100 x"
b1100100 u"
0R"
0J"
1="
0<"
b0 T"
b0 X"
b0 &"
b0 S"
b0 Y"
b0 M
b0 i
b0 x
b0 Q"
b0 W"
0^"
b0 g"
b0 j"
b0 h"
b0 `"
b0 o"
b0 l"
b0 n"
b0 m"
b0 k"
b0 i"
b0 ?"
b0 f"
b10011 b
b10011 %"
b10011 p"
b0 q"
b10000000000000000111111110100 1"
b10000000000000000111111110000 K
b10000000000000000111111110000 ^
b10000000000000000111111110000 !#
b100 A
1G
1<
#4000000000000
0G
0<
#4010000000000
0l
b1000000 v
b10000000000000000111111111000 2"
b0 J
b0 Y
b0 \
b0 $"
b100101100 ."
b100101100 7%
b110010000 ,"
b110010000 8%
b1111111101 V
b11 /"
b11 s$
b100 -"
b100 t$
b110 0"
b11000000000000100 ("
b1100000000000010 4"
b110 +"
b11 @"
b100 *"
b110 )"
b10000011000000000000000 A"
b110011 o
b110011 s
b110011 u
b0 "#
b0 r$
b10000000000000000111111111000 1"
b10000000000000000111111110100 K
b10000000000000000111111110100 ^
b10000000000000000111111110100 !#
b10000011000001100110011 b
b10000011000001100110011 %"
b10000011000001100110011 p"
b10000000000000000111111110000 q"
1Z"
1^"
1P"
b100 W"
b0 y"
b0 q$
b0 x"
b0 u"
b101 A
1G
1<
#4020000000000
0G
0<
#4030000000000
0e
b1010111100 B"
b1010111100 *#
b0 v
1p$
1n$
b100000000 /#
1j$
1f$
1W$
1\$
1H$
0C"
b1010111100 (#
b1010111100 .#
1o#
1h$
1c$
1T$
1g$
1X$
1D$
1k#
b10000000000000000111111111100 2"
b110010000 )#
b110010000 ,#
b100101100 {"
b100101100 ##
b100101100 +#
b0 ."
b0 7%
b0 ,"
b0 8%
b110010000 |"
b110010000 %#
b110010000 ~"
b100101100 }"
b0 /"
b0 s$
b0 -"
b0 t$
b0 0"
b0 ("
b0 4"
b0 +"
b0 @"
b0 *"
b0 )"
b0 A"
b0 o
b0 s
b0 u
b1111111110 V
b100 x"
1N"
0Z"
b110 g"
b100 j"
b11 h"
b10000011000000000000000 `"
b11000000000000100 o"
b110 l"
b110 n"
b100 m"
b110010000 k"
b100101100 i"
b10000000000000000111111110110 ?"
b10000000000000000111111110000 f"
b0 b
b0 %"
b0 p"
b10000000000000000111111110100 q"
b10000000000000000111111111100 1"
b10000000000000000111111111000 K
b10000000000000000111111111000 ^
b10000000000000000111111111000 !#
b110 A
1G
1<
#4040000000000
0G
0<
#4050000000000
b0 B"
b0 *#
1C"
0p$
0n$
b0 /#
0j$
0f$
0W$
0\$
0H$
b0 (#
b0 .#
0o#
b10000000000000001000000000000 2"
0h$
0c$
0T$
0g$
0X$
0D$
0k#
b0 )#
b0 ,#
b0 {"
b0 ##
b0 +#
b1111111111 V
b0 |"
b0 %#
b0 ~"
b0 }"
b110010000 H
b110010000 Q
b110010000 h
b110010000 F"
b1010111100 >"
b1010111100 3"
b10101111 O
b10000000000000001000000000000 1"
b10000000000000000111111111100 K
b10000000000000000111111111100 ^
b10000000000000000111111111100 !#
b10000000000000000111111111000 q"
0^"
b0 g"
b0 j"
b0 h"
b0 `"
b0 o"
b0 l"
b0 n"
b0 m"
b0 k"
b0 i"
b10000000000000000111111110100 ?"
b10000000000000000111111110100 f"
0P"
b110 X"
b10000000000000000111111110110 &"
b10000000000000000111111110110 S"
b110010000 Y"
b1010111100 M
b1010111100 i
b1010111100 x
b1010111100 Q"
b10000000000000000111111110100 W"
1t"
b111 A
1G
1<
#4060000000000
0G
0<
#4070000000000
b10000000000000001000000000100 2"
b0 7"
b0 6"
b1010111100 "#
b1010111100 r$
b0 H
b0 Q
b0 h
b0 F"
b0 >"
b0 3"
b0 O
b10000000000 V
b110 y"
b110 q$
b10000000000000000111111110100 x"
b1010111100 u"
0N"
1P"
b0 X"
b10000000000000000111111110100 &"
b10000000000000000111111110100 S"
b0 Y"
b0 M
b0 i
b0 x
b0 Q"
b10000000000000000111111111000 W"
b10000000000000000111111111000 ?"
b10000000000000000111111111000 f"
b10000000000000000111111111100 q"
b10000000000000001000000000100 1"
b10000000000000001000000000000 K
b10000000000000001000000000000 ^
b10000000000000001000000000000 !#
b1000 A
1G
1<
#4080000000000
0G
0<
#4090000000000
b10000000000000001000000001000 2"
b0 7"
b0 6"
b10000000001 V
b0 "#
b0 r$
b1010111100 2%
b10000000000000001000000001000 1"
b10000000000000001000000000100 K
b10000000000000001000000000100 ^
b10000000000000001000000000100 !#
b10000000000000001000000000000 q"
b10000000000000000111111111100 ?"
b10000000000000000111111111100 f"
b10000000000000000111111111000 &"
b10000000000000000111111111000 S"
b10000000000000000111111111100 W"
0t"
b0 y"
b0 q$
b10000000000000000111111111000 x"
b0 u"
b1001 A
1G
1<
#4100000000000
0G
0<
#4110000000000
b10000000000000001000000001100 2"
b10000000010 V
b10000000000000000111111111100 x"
b10000000000000000111111111100 &"
b10000000000000000111111111100 S"
b10000000000000001000000000000 W"
b10000000000000001000000000000 ?"
b10000000000000001000000000000 f"
b10000000000000001000000000100 q"
b10000000000000001000000001100 1"
b10000000000000001000000001000 K
b10000000000000001000000001000 ^
b10000000000000001000000001000 !#
b0 2%
b110010000 0%
b100101100 -%
b11001000 "%
b1100100 u$
b100000000000000 A%
1B
b1010 A
1G
1<
#4120000000000
1]
0E
0G
0<
#4130000000000
1e
1l
b1100000 v
b10000000000000000000000000100 2"
b1111110001000001101100011100011 J
b1111110001000001101100011100011 Y
b1111110001000001101100011100011 \
b1111110001000001101100011100011 $"
b0 V
b10011 o
b10011 s
b10011 u
b10000000000000000000000000100 1"
b10000000000000000000000000000 K
b10000000000000000000000000000 ^
b10000000000000000000000000000 !#
b10011 b
b10011 %"
b10011 p"
b0 q"
b0 ?"
b0 f"
0P"
b0 &"
b0 S"
b0 W"
b0 x"
b0 A
1G
1<
#4140000000000
0G
0<
#4150000000000
1G
1<
#4160000000000
0G
0<
#4170000000000
1G
1<
#4180000000000
0]
b100001000101101010101000111100101110000011001010010000001000010010001110100010100100000010011100110111101110100001000000101010001100001011010110110010101101110 @
b111011 ?
0B
b100001000101101010101000111100101110000011001010010000001000010010001110100010100100000010011100110111101110100001000000101010001100001011010110110010101101110 ?%
b101 >%
1E
0G
0<
#4190000000000
0e
0l
1c
b10000 k
b10000 p
b10000 t
b10000 w
b100 v
b10000000000000000000000001000 2"
b1100100 ."
b1100100 7%
b11001000 ,"
b11001000 8%
b10000011000001010110011 J
b10000011000001010110011 Y
b10000011000001010110011 \
b10000011000001010110011 $"
b1 /"
b1 s$
b10 -"
b10 t$
b10001 0"
b101 5"
b1101011111100010 ("
b110101111110001 4"
b111111110000 +"
b11111111000 @"
b11111100010 *"
b11111110001 )"
b1111110001000001101000000000000 A"
b101 m
b101 q
b111111 n
b111111 r
b1100011 o
b1100011 s
b1100011 u
b1 V
1P"
b100 W"
1Z"
1^"
b1111110001000001101100011100011 b
b1111110001000001101100011100011 %"
b1111110001000001101100011100011 p"
b10000000000000000000000000000 q"
b10000000000000000000000001000 1"
b10000000000000000000000000100 K
b10000000000000000000000000100 ^
b10000000000000000000000000100 !#
b1 A
1G
1<
#4200000000000
0G
0<
#4210000000000
1e
0c
b11111111111111111111111110011100 B"
b11111111111111111111111110011100 *#
b0 k
b0 p
b0 t
b0 w
b1000000 v
1o#
1m#
17#
1&#
1d$
1_$
1F$
0a$
1E"
16#
1`$
1[$
1n#
1R$
1M$
1C$
1>$
19$
14$
1/$
1*$
1%$
1~#
1y#
1t#
1j#
1e#
1`#
1[#
1V#
1Q#
1L#
1G#
1B#
1=#
1p$
1k$
1f$
1W$
1H$
08#
b1100111 /#
12#
b10000000000000000000000001100 2"
1O$
1J$
1@$
1;$
16$
11$
1,$
1'$
1"$
1{#
1v#
1q#
1g#
1b#
1]#
1X#
1S#
1N#
1I#
1D#
1?#
1:#
1m$
1h$
0c$
0^$
1Y$
1T$
0E$
1l#
15#
11#
1]$
1X$
1k#
b0 J
b0 Y
b0 \
b0 $"
b100101100 ."
b100101100 7%
b110010000 ,"
b110010000 8%
0C"
b11111111111111111111111110011100 (#
b11111111111111111111111110011100 .#
03#
b11111111111111111111111100110111 )#
b11111111111111111111111100110111 ,#
b1100100 {"
b1100100 ##
b1100100 +#
b10 V
b11 /"
b11 s$
b100 -"
b100 t$
b101 0"
b0 5"
b11000000000000100 ("
b1100000000000010 4"
b100000000100 +"
b10000000010 @"
b100 *"
b101 )"
b10000011000000000000000 A"
b0 m
b0 q
b0 n
b0 r
b110011 o
b110011 s
b110011 u
1-#
b11001000 |"
b11001000 %#
b11001000 ~"
b1100100 }"
b10000000000000000000000001100 1"
b10000000000000000000000001000 K
b10000000000000000000000001000 ^
b10000000000000000000000001000 !#
b10000011000001010110011 b
b10000011000001010110011 %"
b10000011000001010110011 p"
b10000000000000000000000000100 q"
1a"
b10000 ["
b10000 $#
0Z"
0^"
b101 b"
b10001 g"
b10 j"
b1 h"
b1111110001000001101000000000000 `"
b1101011111100010 o"
b111111110000 l"
b11111110001 n"
b11111100010 m"
b11001000 k"
b1100100 i"
b10000000000000000111111110000 ?"
b10000000000000000000000000000 f"
1N"
b100 x"
b10 A
1G
1<
#4220000000000
0G
0<
#4230000000000
0e
b1010111100 B"
b1010111100 *#
b0 v
b11 N
b11 R
b11 j
b11 I"
0F$
0Z$
0n#
0V$
1W$
0&#
0_$
1n$
0d$
0U$
0E"
0i$
0[$
0m#
1j$
0`$
0G$
0R$
0M$
0C$
0>$
09$
04$
0/$
0*$
0%$
0~#
0y#
0t#
0j#
0e#
0`#
0[#
0V#
0Q#
0L#
0G#
0B#
0=#
1p$
1f$
0e$
1\$
1o#
07#
0k$
0a$
1H$
06#
0O$
0J$
0@$
0;$
06$
01$
0,$
0'$
0"$
0{#
0v#
0q#
0g#
0b#
0]#
0X#
0S#
0N#
0I#
0D#
0?#
0:#
0m$
1c$
0Y$
0l#
05#
01#
b100000000 /#
02#
1g$
0]$
1D$
b10000000000000000000000010000 2"
b110010000 )#
b110010000 ,#
b1010111100 (#
b1010111100 .#
03#
b100101100 {"
b100101100 ##
b100101100 +#
b0 ."
b0 7%
b0 ,"
b0 8%
b11001000 H
b11001000 Q
b11001000 h
b11001000 F"
b11111111111111111111111110011100 >"
b11111111111111111111111110011100 3"
b11111111100111 O
0-#
b110010000 |"
b110010000 %#
b110010000 ~"
b100101100 }"
b0 /"
b0 s$
b0 -"
b0 t$
b0 0"
b0 ("
b0 4"
b0 +"
b0 @"
b0 *"
b0 )"
b0 A"
b0 o
b0 s
b0 u
b11 V
1t"
1R"
0N"
1M"
0P"
0="
1<"
b101 T"
b10001 X"
b10000000000000000111111110000 &"
b10000000000000000111111110000 S"
b11001000 Y"
b11111111111111111111111110011100 M
b11111111111111111111111110011100 i
b11111111111111111111111110011100 x
b11111111111111111111111110011100 Q"
b10000000000000000000000000100 W"
0a"
b0 ["
b0 $#
1^"
b0 b"
b101 g"
b100 j"
b11 h"
b10000011000000000000000 `"
b11000000000000100 o"
b100000000100 l"
b101 n"
b100 m"
b110010000 k"
b100101100 i"
b10000000000000000100000001000 ?"
b10000000000000000000000000100 f"
b0 b
b0 %"
b0 p"
b10000000000000000000000001000 q"
b10000000000000000000000010000 1"
b10000000000000000000000001100 K
b10000000000000000000000001100 ^
b10000000000000000000000001100 !#
b11 A
1G
1<
#4240000000000
0G
0<
#4250000000000
b0 B"
b0 *#
b1 N
b1 R
b1 j
b1 I"
1C"
0p$
0n$
b0 /#
0j$
0f$
0W$
0\$
0H$
b0 (#
b0 .#
0o#
b10000000000000000000000010100 2"
0h$
0c$
0T$
0g$
0X$
0D$
0k#
b0 )#
b0 ,#
b0 {"
b0 ##
b0 +#
b100 V
b0 |"
b0 %#
b0 ~"
b0 }"
b110010000 H
b110010000 Q
b110010000 h
b110010000 F"
b1010111100 >"
b1010111100 3"
b10101111 O
b11111111111111111111111110011100 "#
b11111111111111111111111110011100 r$
b10000000000000000000000010100 1"
b10000000000000000000000010000 K
b10000000000000000000000010000 ^
b10000000000000000000000010000 !#
b10000000000000000000000001100 q"
0^"
b0 g"
b0 j"
b0 h"
b0 `"
b0 o"
b0 l"
b0 n"
b0 m"
b0 k"
b0 i"
b10000000000000000000000001000 ?"
b10000000000000000000000001000 f"
0R"
1N"
0M"
1="
0<"
b0 T"
b101 X"
b10000000000000000100000001000 &"
b10000000000000000100000001000 S"
b110010000 Y"
b1010111100 M
b1010111100 i
b1010111100 x
b1010111100 Q"
b10000000000000000000000001000 W"
0t"
b10001 y"
b10001 q$
b10000000000000000000000000100 x"
b11111111111111111111111110011100 u"
b100 A
1G
1<
#4260000000000
0G
0<
#4270000000000
b10000000000000000000000011000 2"
b0 7"
b0 6"
b1010111100 "#
b1010111100 r$
b0 H
b0 Q
b0 h
b0 F"
b0 >"
b0 3"
b0 O
b101 V
1t"
b101 y"
b101 q$
b10000000000000000000000001000 x"
b1010111100 u"
0N"
1P"
b0 X"
b10000000000000000000000001000 &"
b10000000000000000000000001000 S"
b0 Y"
b0 M
b0 i
b0 x
b0 Q"
b10000000000000000000000001100 W"
b10000000000000000000000001100 ?"
b10000000000000000000000001100 f"
b10000000000000000000000010000 q"
b10000000000000000000000011000 1"
b10000000000000000000000010100 K
b10000000000000000000000010100 ^
b10000000000000000000000010100 !#
b101 A
1G
1<
#4280000000000
0G
0<
#4290000000000
b10000000000000000000000011100 2"
b0 7"
b0 6"
b110 V
b0 "#
b0 r$
b1010111100 1%
b10000000000000000000000011100 1"
b10000000000000000000000011000 K
b10000000000000000000000011000 ^
b10000000000000000000000011000 !#
b10000000000000000000000010100 q"
b10000000000000000000000010000 ?"
b10000000000000000000000010000 f"
b10000000000000000000000001100 &"
b10000000000000000000000001100 S"
b10000000000000000000000010000 W"
0t"
b0 y"
b0 q$
b10000000000000000000000001100 x"
b0 u"
b110 A
1G
1<
#4300000000000
0G
0<
#4310000000000
b10000000000000000000000100000 2"
b111 V
b10000000000000000000000010000 x"
b10000000000000000000000010000 &"
b10000000000000000000000010000 S"
b10000000000000000000000010100 W"
b10000000000000000000000010100 ?"
b10000000000000000000000010100 f"
b10000000000000000000000011000 q"
b10000000000000000000000100000 1"
b10000000000000000000000011100 K
b10000000000000000000000011100 ^
b10000000000000000000000011100 !#
b0 1%
b110010000 0%
b100101100 -%
b11111111111111110000000000000000 "%
b1 u$
b100000000000000 A%
b100 F
1B
b0 A
1G
1<
#4320000000000
1]
0E
0G
0<
#4330000000000
1e
1l
b1100000 v
b10000000000000000000000000100 2"
b1111110001000001110100011100011 J
b1111110001000001110100011100011 Y
b1111110001000001110100011100011 \
b1111110001000001110100011100011 $"
b0 V
b10011 o
b10011 s
b10011 u
b10000000000000000000000000100 1"
b10000000000000000000000000000 K
b10000000000000000000000000000 ^
b10000000000000000000000000000 !#
b10011 b
b10011 %"
b10011 p"
b0 q"
b0 ?"
b0 f"
0P"
b0 &"
b0 S"
b0 W"
b0 x"
1G
1<
#4340000000000
0G
0<
#4350000000000
1G
1<
#4360000000000
0G
0<
#4370000000000
1G
1<
#4380000000000
0]
b110 >%
b1010111100 >
b1000010001011010101010001111001011100000110010100100000010000100100110001010100010101010010000001010100011000010110101101100101011011100010000000110010 @
b111101 ?
0B
b1000010001011010101010001111001011100000110010100100000010000100100110001010100010101010010000001010100011000010110101101100101011011100010000000110010 ?%
b1010111100 =%
1E
0G
0<
#4390000000000
0e
0l
1c
b10000 k
b10000 p
b10000 t
b10000 w
b100 v
b10000000000000000000000001000 2"
b1 ."
b1 7%
b11111111111111110000000000000000 ,"
b11111111111111110000000000000000 8%
b10000011000001010110011 J
b10000011000001010110011 Y
b10000011000001010110011 \
b10000011000001010110011 $"
b1 /"
b1 s$
b10 -"
b10 t$
b10001 0"
b110 5"
b1110011111100010 ("
b111001111110001 4"
b111111110000 +"
b11111111000 @"
b11111100010 *"
b11111110001 )"
b1111110001000001110000000000000 A"
b110 m
b110 q
b111111 n
b111111 r
b1100011 o
b1100011 s
b1100011 u
b1 V
1P"
b100 W"
1Z"
1^"
b1111110001000001110100011100011 b
b1111110001000001110100011100011 %"
b1111110001000001110100011100011 p"
b10000000000000000000000000000 q"
b10000000000000000000000001000 1"
b10000000000000000000000000100 K
b10000000000000000000000000100 ^
b10000000000000000000000000100 !#
b1 A
1G
1<
#4400000000000
0G
0<
#4410000000000
1e
0c
b10000000000000001 B"
b10000000000000001 *#
b0 k
b0 p
b0 t
b0 w
b1000000 v
1Y#
1U#
1T#
1P#
1O#
1K#
1J#
1F#
1E#
1A#
1@#
1<#
1;#
1o$
1n$
1j$
1i$
1e$
1d$
1`$
1_$
1[$
1Z$
1V$
1U$
1G$
1F$
1n#
1m#
17#
0&#
0E"
16#
0R$
0M$
0C$
0>$
09$
04$
0/$
0*$
0%$
0~#
0y#
0t#
0j#
0e#
0`#
1[#
0V#
0Q#
0L#
0G#
0B#
0=#
0p$
0k$
0f$
0a$
0\$
0W$
0H$
0o#
08#
b1111111111111111 /#
12#
b10000000000000000000000001100 2"
0O$
0J$
0@$
0;$
06$
01$
0,$
0'$
0"$
0{#
0v#
0q#
0g#
0b#
0]#
0X#
1S#
1N#
1I#
1D#
1?#
1:#
1m$
1h$
1c$
1^$
1Y$
1T$
1E$
1l#
15#
11#
10#
b0 J
b0 Y
b0 \
b0 $"
b100101100 ."
b100101100 7%
b110010000 ,"
b110010000 8%
0C"
b10000000000000001 (#
b10000000000000001 .#
13#
b1111111111111111 )#
b1111111111111111 ,#
b1 {"
b1 ##
b1 +#
b10 V
b11 /"
b11 s$
b100 -"
b100 t$
b101 0"
b0 5"
b11000000000000100 ("
b1100000000000010 4"
b100000000100 +"
b10000000010 @"
b100 *"
b101 )"
b10000011000000000000000 A"
b0 m
b0 q
b0 n
b0 r
b110011 o
b110011 s
b110011 u
1-#
b11111111111111110000000000000000 |"
b11111111111111110000000000000000 %#
b11111111111111110000000000000000 ~"
b1 }"
b10000000000000000000000001100 1"
b10000000000000000000000001000 K
b10000000000000000000000001000 ^
b10000000000000000000000001000 !#
b10000011000001010110011 b
b10000011000001010110011 %"
b10000011000001010110011 p"
b10000000000000000000000000100 q"
1a"
b10000 ["
b10000 $#
0Z"
0^"
b110 b"
b10001 g"
b10 j"
b1 h"
b1111110001000001110000000000000 `"
b1110011111100010 o"
b111111110000 l"
b11111110001 n"
b11111100010 m"
b11111111111111110000000000000000 k"
b1 i"
b10000000000000000111111110000 ?"
b10000000000000000000000000000 f"
1N"
b100 x"
b10 A
1G
1<
#4420000000000
0G
0<
#4430000000000
0e
b1010111100 B"
b1010111100 *#
b0 v
b0 N
b0 R
b0 j
b0 I"
0_$
0[$
1\$
0Z$
0V$
1W$
0U$
0G$
1H$
0F$
0i$
0n#
0e$
0[#
1f$
1o#
06#
1#"
0Y#
0T#
0O#
0J#
0E#
0@#
0;#
0d$
0m#
02#
0V#
0U#
0Q#
0P#
0L#
0K#
0G#
0F#
0B#
0A#
0=#
0<#
1p$
0o$
0a$
0`$
08#
b100000000 /#
07#
0k$
1""
0S#
0N#
0I#
0D#
0?#
0:#
0m$
0^$
0Y$
0E$
0l#
05#
01#
1g$
1X$
1D$
1k#
00#
b10000000000000000111111110000 2"
1~
b110010000 )#
b110010000 ,#
b1010111100 (#
b1010111100 .#
03#
b100101100 {"
b100101100 ##
b100101100 +#
b0 ."
b0 7%
b0 ,"
b0 8%
b11111111111111110000000000000000 H
b11111111111111110000000000000000 Q
b11111111111111110000000000000000 h
b11111111111111110000000000000000 F"
b10000000000000001 >"
b10000000000000000 3"
b1 H"
0-#
b110010000 |"
b110010000 %#
b110010000 ~"
b100101100 }"
b0 /"
b0 s$
b0 -"
b0 t$
b0 0"
b0 ("
b0 4"
b0 +"
b0 @"
b0 *"
b0 )"
b0 A"
b0 o
b0 s
b0 u
b11 V
1t"
1R"
0N"
0P"
0="
19"
b110 T"
b10001 X"
b10000000000000000111111110000 &"
b10000000000000000111111110000 S"
b11111111111111110000000000000000 Y"
b10000000000000001 M
b10000000000000001 i
b10000000000000001 x
b10000000000000001 Q"
b10000000000000000000000000100 W"
0a"
b0 ["
b0 $#
1^"
b0 b"
b101 g"
b100 j"
b11 h"
b10000011000000000000000 `"
b11000000000000100 o"
b100000000100 l"
b101 n"
b100 m"
b110010000 k"
b100101100 i"
b10000000000000000100000001000 ?"
b10000000000000000000000000100 f"
b0 b
b0 %"
b0 p"
b10000000000000000000000001000 q"
b10000000000000000000000010000 1"
b10000000000000000000000001100 K
b10000000000000000000000001100 ^
b10000000000000000000000001100 !#
b11 A
1G
1<
#4440000000000
0G
0<
#4450000000000
1e
1l
b0 B"
b0 *#
b1100000 v
b1 N
b1 R
b1 j
b1 I"
1C"
0p$
0n$
b0 /#
0j$
0#"
0f$
0W$
0\$
0H$
b0 (#
b0 .#
0o#
0""
0h$
0c$
0T$
0g$
0X$
0D$
0k#
b10000000000000000111111110100 2"
b10000011000001100110011 J
b10000011000001100110011 Y
b10000011000001100110011 \
b10000011000001100110011 $"
b0 )#
b0 ,#
b0 {"
b0 ##
b0 +#
0~
b1111111100 V
b10011 o
b10011 s
b10011 u
b0 |"
b0 %#
b0 ~"
b0 }"
b0 H
b0 Q
b0 h
b0 F"
b0 >"
b0 3"
b0 H"
b10000000000000001 "#
b10000000000000001 r$
b10000000000000000111111110100 1"
b10000000000000000111111110000 K
b10000000000000000111111110000 ^
b10000000000000000111111110000 !#
b10011 b
b10011 %"
b10011 p"
b0 q"
0^"
b0 g"
b0 j"
b0 h"
b0 `"
b0 o"
b0 l"
b0 n"
b0 m"
b0 k"
b0 i"
b0 ?"
b0 f"
0R"
1="
09"
b0 T"
b0 X"
b0 &"
b0 S"
b0 Y"
b0 M
b0 i
b0 x
b0 Q"
b0 W"
0t"
b10001 y"
b10001 q$
b10000000000000000000000000100 x"
b10000000000000001 u"
b100 A
1G
1<
#4460000000000
0G
0<
#4470000000000
0l
b1000000 v
b10000000000000000111111111000 2"
b0 J
b0 Y
b0 \
b0 $"
b100101100 ."
b100101100 7%
b110010000 ,"
b110010000 8%
b0 "#
b0 r$
b11 /"
b11 s$
b100 -"
b100 t$
b110 0"
b11000000000000100 ("
b1100000000000010 4"
b110 +"
b11 @"
b100 *"
b110 )"
b10000011000000000000000 A"
b110011 o
b110011 s
b110011 u
b1111111101 V
b0 y"
b0 q$
b0 x"
b0 u"
1P"
b100 W"
1Z"
1^"
b10000011000001100110011 b
b10000011000001100110011 %"
b10000011000001100110011 p"
b10000000000000000111111110000 q"
b10000000000000000111111111000 1"
b10000000000000000111111110100 K
b10000000000000000111111110100 ^
b10000000000000000111111110100 !#
b101 A
1G
1<
#4480000000000
0G
0<
#4490000000000
0e
b1010111100 B"
b1010111100 *#
b0 v
1p$
1n$
b100000000 /#
1j$
1f$
1W$
1\$
1H$
0C"
b1010111100 (#
b1010111100 .#
1o#
b10000000000000000111111111100 2"
1h$
1c$
1T$
1g$
1X$
1D$
1k#
b0 ."
b0 7%
b0 ,"
b0 8%
b110010000 )#
b110010000 ,#
b100101100 {"
b100101100 ##
b100101100 +#
b1111111110 V
b0 /"
b0 s$
b0 -"
b0 t$
b0 0"
b0 ("
b0 4"
b0 +"
b0 @"
b0 *"
b0 )"
b0 A"
b0 o
b0 s
b0 u
b110010000 |"
b110010000 %#
b110010000 ~"
b100101100 }"
b10000000000000000111111111100 1"
b10000000000000000111111111000 K
b10000000000000000111111111000 ^
b10000000000000000111111111000 !#
b0 b
b0 %"
b0 p"
b10000000000000000111111110100 q"
0Z"
b110 g"
b100 j"
b11 h"
b10000011000000000000000 `"
b11000000000000100 o"
b110 l"
b110 n"
b100 m"
b110010000 k"
b100101100 i"
b10000000000000000111111110110 ?"
b10000000000000000111111110000 f"
1N"
b100 x"
b110 A
1G
1<
#4500000000000
0G
0<
#4510000000000
b0 B"
b0 *#
1C"
0p$
0n$
b0 /#
0j$
0f$
0W$
0\$
0H$
b0 (#
b0 .#
0o#
0h$
0c$
0T$
0g$
0X$
0D$
0k#
b10000000000000001000000000000 2"
b0 )#
b0 ,#
b0 {"
b0 ##
b0 +#
b110010000 H
b110010000 Q
b110010000 h
b110010000 F"
b1010111100 >"
b1010111100 3"
b10101111 O
b0 |"
b0 %#
b0 ~"
b0 }"
b1111111111 V
1t"
0P"
b110 X"
b10000000000000000111111110110 &"
b10000000000000000111111110110 S"
b110010000 Y"
b1010111100 M
b1010111100 i
b1010111100 x
b1010111100 Q"
b10000000000000000111111110100 W"
0^"
b0 g"
b0 j"
b0 h"
b0 `"
b0 o"
b0 l"
b0 n"
b0 m"
b0 k"
b0 i"
b10000000000000000111111110100 ?"
b10000000000000000111111110100 f"
b10000000000000000111111111000 q"
b10000000000000001000000000000 1"
b10000000000000000111111111100 K
b10000000000000000111111111100 ^
b10000000000000000111111111100 !#
b111 A
1G
1<
#4520000000000
0G
0<
#4530000000000
b10000000000000001000000000100 2"
b0 7"
b0 6"
b10000000000 V
b0 H
b0 Q
b0 h
b0 F"
b0 >"
b0 3"
b0 O
b1010111100 "#
b1010111100 r$
b10000000000000001000000000100 1"
b10000000000000001000000000000 K
b10000000000000001000000000000 ^
b10000000000000001000000000000 !#
b10000000000000000111111111100 q"
b10000000000000000111111111000 ?"
b10000000000000000111111111000 f"
0N"
1P"
b0 X"
b10000000000000000111111110100 &"
b10000000000000000111111110100 S"
b0 Y"
b0 M
b0 i
b0 x
b0 Q"
b10000000000000000111111111000 W"
b110 y"
b110 q$
b10000000000000000111111110100 x"
b1010111100 u"
b1000 A
1G
1<
#4540000000000
0G
0<
#4550000000000
b0 7"
b0 6"
b10000000000000001000000001000 2"
b0 "#
b0 r$
b10000000001 V
0t"
b0 y"
b0 q$
b10000000000000000111111111000 x"
b0 u"
b10000000000000000111111111000 &"
b10000000000000000111111111000 S"
b10000000000000000111111111100 W"
b10000000000000000111111111100 ?"
b10000000000000000111111111100 f"
b10000000000000001000000000000 q"
b10000000000000001000000001000 1"
b10000000000000001000000000100 K
b10000000000000001000000000100 ^
b10000000000000001000000000100 !#
b1010111100 2%
b1001 A
1G
1<
#4560000000000
0G
0<
#4570000000000
b10000000000000001000000001100 2"
b10000000010 V
b10000000000000001000000001100 1"
b10000000000000001000000001000 K
b10000000000000001000000001000 ^
b10000000000000001000000001000 !#
b10000000000000001000000000100 q"
b10000000000000001000000000000 ?"
b10000000000000001000000000000 f"
b10000000000000000111111111100 &"
b10000000000000000111111111100 S"
b10000000000000001000000000000 W"
b10000000000000000111111111100 x"
b0 2%
b110010000 0%
b100101100 -%
b1 "%
b11111111111111110000000000000000 u$
b100000000000000 A%
1B
b1010 A
1G
1<
#4580000000000
1]
0E
0G
0<
#4590000000000
1e
1l
b1100000 v
b10000000000000000000000000100 2"
b1111110001000001110100011100011 J
b1111110001000001110100011100011 Y
b1111110001000001110100011100011 \
b1111110001000001110100011100011 $"
b10011 o
b10011 s
b10011 u
b0 V
b0 x"
0P"
b0 &"
b0 S"
b0 W"
b0 ?"
b0 f"
b10011 b
b10011 %"
b10011 p"
b0 q"
b10000000000000000000000000100 1"
b10000000000000000000000000000 K
b10000000000000000000000000000 ^
b10000000000000000000000000000 !#
b0 A
1G
1<
#4600000000000
0G
0<
#4610000000000
1G
1<
#4620000000000
0G
0<
#4630000000000
1G
1<
#4640000000000
0]
b10000100010110101010100011110010111000001100101001000000100001001001100010101000101010100100000010011100110111101110100001000000101010001100001011010110110010101101110 @
b111110 ?
0B
b10000100010110101010100011110010111000001100101001000000100001001001100010101000101010100100000010011100110111101110100001000000101010001100001011010110110010101101110 ?%
b101 >%
1E
0G
0<
#4650000000000
0e
0l
1c
b10000 k
b10000 p
b10000 t
b10000 w
b100 v
b10000000000000000000000001000 2"
b10000011000001010110011 J
b10000011000001010110011 Y
b10000011000001010110011 \
b10000011000001010110011 $"
b11111111111111110000000000000000 ."
b11111111111111110000000000000000 7%
b1 ,"
b1 8%
b1 V
b1 /"
b1 s$
b10 -"
b10 t$
b10001 0"
b110 5"
b1110011111100010 ("
b111001111110001 4"
b111111110000 +"
b11111111000 @"
b11111100010 *"
b11111110001 )"
b1111110001000001110000000000000 A"
b110 m
b110 q
b111111 n
b111111 r
b1100011 o
b1100011 s
b1100011 u
b10000000000000000000000001000 1"
b10000000000000000000000000100 K
b10000000000000000000000000100 ^
b10000000000000000000000000100 !#
b1111110001000001110100011100011 b
b1111110001000001110100011100011 %"
b1111110001000001110100011100011 p"
b10000000000000000000000000000 q"
1Z"
1^"
1P"
b100 W"
b1 A
1G
1<
#4660000000000
0G
0<
#4670000000000
1e
0c
b11111111111111101111111111111111 B"
b11111111111111101111111111111111 *#
b0 k
b0 p
b0 t
b0 w
b1000000 v
0[#
0Y#
0U#
0T#
0P#
0O#
0K#
0J#
0F#
0E#
0A#
0@#
0<#
0;#
0o$
0n$
0j$
0i$
0e$
0d$
0`$
0_$
0[$
0Z$
0V$
0U$
0G$
0F$
0n#
1&#
0m#
1E"
07#
0'#
1R$
1M$
1C$
1>$
19$
14$
1/$
1*$
1%$
1~#
1y#
1t#
1j#
1e#
1`#
1G"
1P$
1K$
1A$
1<$
17$
12$
1-$
1($
1#$
1|#
1w#
1r#
1h#
1c#
1^#
06#
1Q$
1L$
1B$
1=$
18$
13$
1.$
1)$
1$$
1}#
1x#
1s#
1i#
1d#
1_#
1Z#
1V#
1Q#
1L#
1G#
1B#
1=#
1p$
1k$
1f$
1a$
1\$
1W$
1H$
1o#
18#
b11111111111111110000000000000000 /#
02#
1O$
1J$
1@$
1;$
16$
11$
1,$
1'$
1"$
1{#
1v#
1q#
1g#
1b#
1]#
1X#
1S#
1N#
1I#
1D#
1?#
1:#
1m$
1h$
1c$
1^$
1Y$
1T$
1E$
1l#
15#
01#
1N$
1I$
1?$
1:$
15$
10$
1+$
1&$
1!$
1z#
1u#
1p#
1f#
1a#
1\#
1W#
b10000000000000000000000001100 2"
0C"
b11111111111111101111111111111111 (#
b11111111111111101111111111111111 .#
13#
b11111111111111111111111111111110 )#
b11111111111111111111111111111110 ,#
b11111111111111110000000000000000 {"
b11111111111111110000000000000000 ##
b11111111111111110000000000000000 +#
b100101100 ."
b100101100 7%
b110010000 ,"
b110010000 8%
b0 J
b0 Y
b0 \
b0 $"
1-#
b1 |"
b1 %#
b1 ~"
b11111111111111110000000000000000 }"
b11 /"
b11 s$
b100 -"
b100 t$
b101 0"
b0 5"
b11000000000000100 ("
b1100000000000010 4"
b100000000100 +"
b10000000010 @"
b100 *"
b101 )"
b10000011000000000000000 A"
b0 m
b0 q
b0 n
b0 r
b110011 o
b110011 s
b110011 u
b10 V
b100 x"
1N"
1a"
b10000 ["
b10000 $#
0Z"
0^"
b110 b"
b10001 g"
b10 j"
b1 h"
b1111110001000001110000000000000 `"
b1110011111100010 o"
b111111110000 l"
b11111110001 n"
b11111100010 m"
b1 k"
b11111111111111110000000000000000 i"
b10000000000000000111111110000 ?"
b10000000000000000000000000000 f"
b10000011000001010110011 b
b10000011000001010110011 %"
b10000011000001010110011 p"
b10000000000000000000000000100 q"
b10000000000000000000000001100 1"
b10000000000000000000000001000 K
b10000000000000000000000001000 ^
b10000000000000000000000001000 !#
b10 A
1G
1<
#4680000000000
0G
0<
#4690000000000
0e
b1010111100 B"
b1010111100 *#
b0 v
b0 N
b0 R
b0 j
b0 I"
0&#
0E"
0`#
1'#
0R$
0M$
0C$
0>$
09$
04$
0/$
0*$
0%$
0~#
0y#
0t#
0j#
0e#
0^#
1n$
0G"
0P$
0K$
0A$
0<$
07$
02$
0-$
0($
0#$
0|#
0w#
0r#
0h#
0c#
0Z#
1j$
0Q$
0L$
0B$
0=$
08$
03$
0.$
0)$
0$$
0}#
0x#
0s#
0i#
0d#
b100000000 /#
0_#
0V#
0Q#
0L#
0G#
0B#
0=#
1p$
0a$
08#
0k$
b10000000000000000000000010000 2"
0O$
0J$
0@$
0;$
06$
01$
0,$
0'$
0"$
0{#
0v#
0q#
0g#
0b#
0]#
0X#
0S#
0N#
0I#
0D#
0?#
0:#
0m$
0^$
0Y$
0E$
0l#
05#
0N$
0I$
0?$
0:$
05$
00$
0+$
0&$
0!$
0z#
0u#
0p#
0f#
0a#
0\#
0W#
1g$
1X$
1D$
1k#
b0 ."
b0 7%
b0 ,"
b0 8%
b110010000 )#
b110010000 ,#
b1010111100 (#
b1010111100 .#
03#
b100101100 {"
b100101100 ##
b100101100 +#
b11 V
b0 /"
b0 s$
b0 -"
b0 t$
b0 0"
b0 ("
b0 4"
b0 +"
b0 @"
b0 *"
b0 )"
b0 A"
b0 o
b0 s
b0 u
0-#
b110010000 |"
b110010000 %#
b110010000 ~"
b100101100 }"
b1 H
b1 Q
b1 h
b1 F"
b11111111111111101111111111111111 >"
b11111111111111101111111111111110 3"
b11 H"
b11111111111111 O
b10000000000000000000000010000 1"
b10000000000000000000000001100 K
b10000000000000000000000001100 ^
b10000000000000000000000001100 !#
b0 b
b0 %"
b0 p"
b10000000000000000000000001000 q"
0a"
b0 ["
b0 $#
1^"
b0 b"
b101 g"
b100 j"
b11 h"
b10000011000000000000000 `"
b11000000000000100 o"
b100000000100 l"
b101 n"
b100 m"
b110010000 k"
b100101100 i"
b10000000000000000100000001000 ?"
b10000000000000000000000000100 f"
1R"
0N"
1J"
1M"
0P"
0="
19"
b110 T"
b10001 X"
b10000000000000000111111110000 &"
b10000000000000000111111110000 S"
b1 Y"
b11111111111111101111111111111111 M
b11111111111111101111111111111111 i
b11111111111111101111111111111111 x
b11111111111111101111111111111111 Q"
b10000000000000000000000000100 W"
1t"
b11 A
1G
1<
#4700000000000
0G
0<
#4710000000000
b0 B"
b0 *#
b1 N
b1 R
b1 j
b1 I"
1C"
0p$
0n$
b0 /#
0j$
0f$
0W$
0\$
0H$
b0 (#
b0 .#
0o#
0h$
0c$
0T$
0g$
0X$
0D$
0k#
b10000000000000000000000010100 2"
b0 )#
b0 ,#
b0 {"
b0 ##
b0 +#
b11111111111111101111111111111111 "#
b11111111111111101111111111111111 r$
b110010000 H
b110010000 Q
b110010000 h
b110010000 F"
b1010111100 >"
b1010111100 3"
b0 H"
b10101111 O
b0 |"
b0 %#
b0 ~"
b0 }"
b100 V
0t"
b10001 y"
b10001 q$
b10000000000000000000000000100 x"
b11111111111111101111111111111111 u"
0R"
1N"
0J"
0M"
1="
09"
b0 T"
b101 X"
b10000000000000000100000001000 &"
b10000000000000000100000001000 S"
b110010000 Y"
b1010111100 M
b1010111100 i
b1010111100 x
b1010111100 Q"
b10000000000000000000000001000 W"
0^"
b0 g"
b0 j"
b0 h"
b0 `"
b0 o"
b0 l"
b0 n"
b0 m"
b0 k"
b0 i"
b10000000000000000000000001000 ?"
b10000000000000000000000001000 f"
b10000000000000000000000001100 q"
b10000000000000000000000010100 1"
b10000000000000000000000010000 K
b10000000000000000000000010000 ^
b10000000000000000000000010000 !#
b100 A
1G
1<
#4720000000000
0G
0<
#4730000000000
b10000000000000000000000011000 2"
b0 7"
b0 6"
b101 V
b0 H
b0 Q
b0 h
b0 F"
b0 >"
b0 3"
b0 O
b1010111100 "#
b1010111100 r$
b10000000000000000000000011000 1"
b10000000000000000000000010100 K
b10000000000000000000000010100 ^
b10000000000000000000000010100 !#
b10000000000000000000000010000 q"
b10000000000000000000000001100 ?"
b10000000000000000000000001100 f"
0N"
1P"
b0 X"
b10000000000000000000000001000 &"
b10000000000000000000000001000 S"
b0 Y"
b0 M
b0 i
b0 x
b0 Q"
b10000000000000000000000001100 W"
1t"
b101 y"
b101 q$
b10000000000000000000000001000 x"
b1010111100 u"
b101 A
1G
1<
#4740000000000
0G
0<
#4750000000000
b0 7"
b0 6"
b10000000000000000000000011100 2"
b0 "#
b0 r$
b110 V
0t"
b0 y"
b0 q$
b10000000000000000000000001100 x"
b0 u"
b10000000000000000000000001100 &"
b10000000000000000000000001100 S"
b10000000000000000000000010000 W"
b10000000000000000000000010000 ?"
b10000000000000000000000010000 f"
b10000000000000000000000010100 q"
b10000000000000000000000011100 1"
b10000000000000000000000011000 K
b10000000000000000000000011000 ^
b10000000000000000000000011000 !#
b1010111100 1%
b110 A
1G
1<
#4760000000000
0G
0<
#4770000000000
b10000000000000000000000100000 2"
b111 V
b10000000000000000000000100000 1"
b10000000000000000000000011100 K
b10000000000000000000000011100 ^
b10000000000000000000000011100 !#
b10000000000000000000000011000 q"
b10000000000000000000000010100 ?"
b10000000000000000000000010100 f"
b10000000000000000000000010000 &"
b10000000000000000000000010000 S"
b10000000000000000000000010100 W"
b10000000000000000000000010000 x"
b0 1%
b110010000 0%
b100101100 -%
b1 "%
b11111111111111110000000000000000 u$
b100000000000000 A%
b101 F
1B
b0 A
1G
1<
#4780000000000
1]
0E
0G
0<
#4790000000000
1e
1l
b1100000 v
b10000000000000000000000000100 2"
b1111110001000001111100011100011 J
b1111110001000001111100011100011 Y
b1111110001000001111100011100011 \
b1111110001000001111100011100011 $"
b10011 o
b10011 s
b10011 u
b0 V
b0 x"
0P"
b0 &"
b0 S"
b0 W"
b0 ?"
b0 f"
b10011 b
b10011 %"
b10011 p"
b0 q"
b10000000000000000000000000100 1"
b10000000000000000000000000000 K
b10000000000000000000000000000 ^
b10000000000000000000000000000 !#
1G
1<
#4800000000000
0G
0<
#4810000000000
1G
1<
#4820000000000
0G
0<
#4830000000000
1G
1<
#4840000000000
0]
b110 >%
b1010111100 >
b1000010001011010101010001111001011100000110010100100000010000100100011101000101010101010010000001010100011000010110101101100101011011100010000000110010 @
b1000000 ?
0B
b1000010001011010101010001111001011100000110010100100000010000100100011101000101010101010010000001010100011000010110101101100101011011100010000000110010 ?%
b1010111100 =%
1E
0G
0<
#4850000000000
0e
0l
1c
b10000 k
b10000 p
b10000 t
b10000 w
b100 v
b10000000000000000000000001000 2"
b10000011000001010110011 J
b10000011000001010110011 Y
b10000011000001010110011 \
b10000011000001010110011 $"
b11111111111111110000000000000000 ."
b11111111111111110000000000000000 7%
b1 ,"
b1 8%
b1 V
b1 /"
b1 s$
b10 -"
b10 t$
b10001 0"
b111 5"
b1111011111100010 ("
b111101111110001 4"
b111111110000 +"
b11111111000 @"
b11111100010 *"
b11111110001 )"
b1111110001000001111000000000000 A"
b111 m
b111 q
b111111 n
b111111 r
b1100011 o
b1100011 s
b1100011 u
b10000000000000000000000001000 1"
b10000000000000000000000000100 K
b10000000000000000000000000100 ^
b10000000000000000000000000100 !#
b1111110001000001111100011100011 b
b1111110001000001111100011100011 %"
b1111110001000001111100011100011 p"
b10000000000000000000000000000 q"
1Z"
1^"
1P"
b100 W"
b1 A
1G
1<
#4860000000000
0G
0<
#4870000000000
1e
0c
b11111111111111101111111111111111 B"
b11111111111111101111111111111111 *#
b0 k
b0 p
b0 t
b0 w
b1000000 v
0[#
0Y#
0U#
0T#
0P#
0O#
0K#
0J#
0F#
0E#
0A#
0@#
0<#
0;#
0o$
0n$
0j$
0i$
0e$
0d$
0`$
0_$
0[$
0Z$
0V$
0U$
0G$
0F$
0n#
1&#
0m#
1E"
07#
0'#
1R$
1M$
1C$
1>$
19$
14$
1/$
1*$
1%$
1~#
1y#
1t#
1j#
1e#
1`#
1G"
1P$
1K$
1A$
1<$
17$
12$
1-$
1($
1#$
1|#
1w#
1r#
1h#
1c#
1^#
06#
1Q$
1L$
1B$
1=$
18$
13$
1.$
1)$
1$$
1}#
1x#
1s#
1i#
1d#
1_#
1Z#
1V#
1Q#
1L#
1G#
1B#
1=#
1p$
1k$
1f$
1a$
1\$
1W$
1H$
1o#
18#
b11111111111111110000000000000000 /#
02#
1O$
1J$
1@$
1;$
16$
11$
1,$
1'$
1"$
1{#
1v#
1q#
1g#
1b#
1]#
1X#
1S#
1N#
1I#
1D#
1?#
1:#
1m$
1h$
1c$
1^$
1Y$
1T$
1E$
1l#
15#
01#
1N$
1I$
1?$
1:$
15$
10$
1+$
1&$
1!$
1z#
1u#
1p#
1f#
1a#
1\#
1W#
b10000000000000000000000001100 2"
0C"
b11111111111111101111111111111111 (#
b11111111111111101111111111111111 .#
13#
b11111111111111111111111111111110 )#
b11111111111111111111111111111110 ,#
b11111111111111110000000000000000 {"
b11111111111111110000000000000000 ##
b11111111111111110000000000000000 +#
b100101100 ."
b100101100 7%
b110010000 ,"
b110010000 8%
b0 J
b0 Y
b0 \
b0 $"
1-#
b1 |"
b1 %#
b1 ~"
b11111111111111110000000000000000 }"
b11 /"
b11 s$
b100 -"
b100 t$
b101 0"
b0 5"
b11000000000000100 ("
b1100000000000010 4"
b100000000100 +"
b10000000010 @"
b100 *"
b101 )"
b10000011000000000000000 A"
b0 m
b0 q
b0 n
b0 r
b110011 o
b110011 s
b110011 u
b10 V
b100 x"
1N"
1a"
b10000 ["
b10000 $#
0Z"
0^"
b111 b"
b10001 g"
b10 j"
b1 h"
b1111110001000001111000000000000 `"
b1111011111100010 o"
b111111110000 l"
b11111110001 n"
b11111100010 m"
b1 k"
b11111111111111110000000000000000 i"
b10000000000000000111111110000 ?"
b10000000000000000000000000000 f"
b10000011000001010110011 b
b10000011000001010110011 %"
b10000011000001010110011 p"
b10000000000000000000000000100 q"
b10000000000000000000000001100 1"
b10000000000000000000000001000 K
b10000000000000000000000001000 ^
b10000000000000000000000001000 !#
b10 A
1G
1<
#4880000000000
0G
0<
#4890000000000
0e
b1010111100 B"
b1010111100 *#
b0 v
b0 N
b0 R
b0 j
b0 I"
0&#
0E"
0`#
1'#
0R$
0M$
0C$
0>$
09$
04$
0/$
0*$
0%$
0~#
0y#
0t#
0j#
0e#
0^#
1n$
0G"
0P$
0K$
0A$
0<$
07$
02$
0-$
0($
0#$
0|#
0w#
0r#
0h#
0c#
0Z#
1j$
0Q$
0L$
0B$
0=$
08$
03$
0.$
0)$
0$$
0}#
0x#
0s#
0i#
0d#
b100000000 /#
0_#
0V#
0Q#
0L#
0G#
0B#
0=#
1p$
0a$
08#
0k$
1#"
b10000000000000000111111110000 2"
0O$
0J$
0@$
0;$
06$
01$
0,$
0'$
0"$
0{#
0v#
0q#
0g#
0b#
0]#
0X#
0S#
0N#
0I#
0D#
0?#
0:#
0m$
0^$
0Y$
0E$
0l#
05#
0N$
0I$
0?$
0:$
05$
00$
0+$
0&$
0!$
0z#
0u#
0p#
0f#
0a#
0\#
0W#
1g$
1X$
1D$
1k#
b0 ."
b0 7%
b0 ,"
b0 8%
b110010000 )#
b110010000 ,#
b1010111100 (#
b1010111100 .#
03#
b100101100 {"
b100101100 ##
b100101100 +#
1""
b11 V
b0 /"
b0 s$
b0 -"
b0 t$
b0 0"
b0 ("
b0 4"
b0 +"
b0 @"
b0 *"
b0 )"
b0 A"
b0 o
b0 s
b0 u
0-#
b110010000 |"
b110010000 %#
b110010000 ~"
b100101100 }"
1|
b1 H
b1 Q
b1 h
b1 F"
b11111111111111101111111111111111 >"
b11111111111111101111111111111110 3"
b11 H"
b11111111111111 O
b10000000000000000000000010000 1"
b10000000000000000000000001100 K
b10000000000000000000000001100 ^
b10000000000000000000000001100 !#
b0 b
b0 %"
b0 p"
b10000000000000000000000001000 q"
0a"
b0 ["
b0 $#
1^"
b0 b"
b101 g"
b100 j"
b11 h"
b10000011000000000000000 `"
b11000000000000100 o"
b100000000100 l"
b101 n"
b100 m"
b110010000 k"
b100101100 i"
b10000000000000000100000001000 ?"
b10000000000000000000000000100 f"
1R"
0N"
1J"
1M"
0P"
0="
1;"
b111 T"
b10001 X"
b10000000000000000111111110000 &"
b10000000000000000111111110000 S"
b1 Y"
b11111111111111101111111111111111 M
b11111111111111101111111111111111 i
b11111111111111101111111111111111 x
b11111111111111101111111111111111 Q"
b10000000000000000000000000100 W"
1t"
b11 A
1G
1<
#4900000000000
0G
0<
#4910000000000
1e
1l
b0 B"
b0 *#
b1100000 v
b1 N
b1 R
b1 j
b1 I"
1C"
0p$
0n$
b0 /#
0j$
0f$
0W$
0\$
0H$
b0 (#
b0 .#
0o#
0#"
b10000000000000000111111110100 2"
0h$
0c$
0T$
0g$
0X$
0D$
0k#
0""
b0 )#
b0 ,#
b0 {"
b0 ##
b0 +#
b10000011000001100110011 J
b10000011000001100110011 Y
b10000011000001100110011 \
b10000011000001100110011 $"
b11111111111111101111111111111111 "#
b11111111111111101111111111111111 r$
0|
b0 H
b0 Q
b0 h
b0 F"
b0 >"
b0 3"
b0 H"
b0 O
b0 |"
b0 %#
b0 ~"
b0 }"
b10011 o
b10011 s
b10011 u
b1111111100 V
0t"
b10001 y"
b10001 q$
b10000000000000000000000000100 x"
b11111111111111101111111111111111 u"
0R"
0J"
0M"
1="
0;"
b0 T"
b0 X"
b0 &"
b0 S"
b0 Y"
b0 M
b0 i
b0 x
b0 Q"
b0 W"
0^"
b0 g"
b0 j"
b0 h"
b0 `"
b0 o"
b0 l"
b0 n"
b0 m"
b0 k"
b0 i"
b0 ?"
b0 f"
b10011 b
b10011 %"
b10011 p"
b0 q"
b10000000000000000111111110100 1"
b10000000000000000111111110000 K
b10000000000000000111111110000 ^
b10000000000000000111111110000 !#
b100 A
1G
1<
#4920000000000
0G
0<
#4930000000000
0l
b1000000 v
b10000000000000000111111111000 2"
b0 J
b0 Y
b0 \
b0 $"
b100101100 ."
b100101100 7%
b110010000 ,"
b110010000 8%
b1111111101 V
b11 /"
b11 s$
b100 -"
b100 t$
b110 0"
b11000000000000100 ("
b1100000000000010 4"
b110 +"
b11 @"
b100 *"
b110 )"
b10000011000000000000000 A"
b110011 o
b110011 s
b110011 u
b0 "#
b0 r$
b10000000000000000111111111000 1"
b10000000000000000111111110100 K
b10000000000000000111111110100 ^
b10000000000000000111111110100 !#
b10000011000001100110011 b
b10000011000001100110011 %"
b10000011000001100110011 p"
b10000000000000000111111110000 q"
1Z"
1^"
1P"
b100 W"
b0 y"
b0 q$
b0 x"
b0 u"
b101 A
1G
1<
#4940000000000
0G
0<
#4950000000000
0e
b1010111100 B"
b1010111100 *#
b0 v
1p$
1n$
b100000000 /#
1j$
1f$
1W$
1\$
1H$
0C"
b1010111100 (#
b1010111100 .#
1o#
1h$
1c$
1T$
1g$
1X$
1D$
1k#
b10000000000000000111111111100 2"
b110010000 )#
b110010000 ,#
b100101100 {"
b100101100 ##
b100101100 +#
b0 ."
b0 7%
b0 ,"
b0 8%
b110010000 |"
b110010000 %#
b110010000 ~"
b100101100 }"
b0 /"
b0 s$
b0 -"
b0 t$
b0 0"
b0 ("
b0 4"
b0 +"
b0 @"
b0 *"
b0 )"
b0 A"
b0 o
b0 s
b0 u
b1111111110 V
b100 x"
1N"
0Z"
b110 g"
b100 j"
b11 h"
b10000011000000000000000 `"
b11000000000000100 o"
b110 l"
b110 n"
b100 m"
b110010000 k"
b100101100 i"
b10000000000000000111111110110 ?"
b10000000000000000111111110000 f"
b0 b
b0 %"
b0 p"
b10000000000000000111111110100 q"
b10000000000000000111111111100 1"
b10000000000000000111111111000 K
b10000000000000000111111111000 ^
b10000000000000000111111111000 !#
b110 A
1G
1<
#4960000000000
0G
0<
#4970000000000
b0 B"
b0 *#
1C"
0p$
0n$
b0 /#
0j$
0f$
0W$
0\$
0H$
b0 (#
b0 .#
0o#
b10000000000000001000000000000 2"
0h$
0c$
0T$
0g$
0X$
0D$
0k#
b0 )#
b0 ,#
b0 {"
b0 ##
b0 +#
b1111111111 V
b0 |"
b0 %#
b0 ~"
b0 }"
b110010000 H
b110010000 Q
b110010000 h
b110010000 F"
b1010111100 >"
b1010111100 3"
b10101111 O
b10000000000000001000000000000 1"
b10000000000000000111111111100 K
b10000000000000000111111111100 ^
b10000000000000000111111111100 !#
b10000000000000000111111111000 q"
0^"
b0 g"
b0 j"
b0 h"
b0 `"
b0 o"
b0 l"
b0 n"
b0 m"
b0 k"
b0 i"
b10000000000000000111111110100 ?"
b10000000000000000111111110100 f"
0P"
b110 X"
b10000000000000000111111110110 &"
b10000000000000000111111110110 S"
b110010000 Y"
b1010111100 M
b1010111100 i
b1010111100 x
b1010111100 Q"
b10000000000000000111111110100 W"
1t"
b111 A
1G
1<
#4980000000000
0G
0<
#4990000000000
b10000000000000001000000000100 2"
b0 7"
b0 6"
b1010111100 "#
b1010111100 r$
b0 H
b0 Q
b0 h
b0 F"
b0 >"
b0 3"
b0 O
b10000000000 V
b110 y"
b110 q$
b10000000000000000111111110100 x"
b1010111100 u"
0N"
1P"
b0 X"
b10000000000000000111111110100 &"
b10000000000000000111111110100 S"
b0 Y"
b0 M
b0 i
b0 x
b0 Q"
b10000000000000000111111111000 W"
b10000000000000000111111111000 ?"
b10000000000000000111111111000 f"
b10000000000000000111111111100 q"
b10000000000000001000000000100 1"
b10000000000000001000000000000 K
b10000000000000001000000000000 ^
b10000000000000001000000000000 !#
b1000 A
1G
1<
#5000000000000
0G
0<
#5010000000000
b10000000000000001000000001000 2"
b0 7"
b0 6"
b10000000001 V
b0 "#
b0 r$
b1010111100 2%
b10000000000000001000000001000 1"
b10000000000000001000000000100 K
b10000000000000001000000000100 ^
b10000000000000001000000000100 !#
b10000000000000001000000000000 q"
b10000000000000000111111111100 ?"
b10000000000000000111111111100 f"
b10000000000000000111111111000 &"
b10000000000000000111111111000 S"
b10000000000000000111111111100 W"
0t"
b0 y"
b0 q$
b10000000000000000111111111000 x"
b0 u"
b1001 A
1G
1<
#5020000000000
0G
0<
#5030000000000
b10000000000000001000000001100 2"
b10000000010 V
b10000000000000000111111111100 x"
b10000000000000000111111111100 &"
b10000000000000000111111111100 S"
b10000000000000001000000000000 W"
b10000000000000001000000000000 ?"
b10000000000000001000000000000 f"
b10000000000000001000000000100 q"
b10000000000000001000000001100 1"
b10000000000000001000000001000 K
b10000000000000001000000001000 ^
b10000000000000001000000001000 !#
b0 2%
b110010000 0%
b100101100 -%
b11111111111111110000000000000000 "%
b1 u$
b100000000000000 A%
1B
b1010 A
1G
1<
#5040000000000
1]
0E
0G
0<
#5050000000000
1e
1l
b1100000 v
b10000000000000000000000000100 2"
b1111110001000001111100011100011 J
b1111110001000001111100011100011 Y
b1111110001000001111100011100011 \
b1111110001000001111100011100011 $"
b0 V
b10011 o
b10011 s
b10011 u
b10000000000000000000000000100 1"
b10000000000000000000000000000 K
b10000000000000000000000000000 ^
b10000000000000000000000000000 !#
b10011 b
b10011 %"
b10011 p"
b0 q"
b0 ?"
b0 f"
0P"
b0 &"
b0 S"
b0 W"
b0 x"
b0 A
1G
1<
#5060000000000
0G
0<
#5070000000000
1G
1<
#5080000000000
0G
0<
#5090000000000
1G
1<
#5100000000000
0]
b10000100010110101010100011110010111000001100101001000000100001001000111010001010101010100100000010011100110111101110100001000000101010001100001011010110110010101101110 @
b1000001 ?
0B
b10000100010110101010100011110010111000001100101001000000100001001000111010001010101010100100000010011100110111101110100001000000101010001100001011010110110010101101110 ?%
b101 >%
1E
0G
0<
#5110000000000
0e
0l
1c
b10000 k
b10000 p
b10000 t
b10000 w
b100 v
b10000000000000000000000001000 2"
b1 ."
b1 7%
b11111111111111110000000000000000 ,"
b11111111111111110000000000000000 8%
b10000011000001010110011 J
b10000011000001010110011 Y
b10000011000001010110011 \
b10000011000001010110011 $"
b1 /"
b1 s$
b10 -"
b10 t$
b10001 0"
b111 5"
b1111011111100010 ("
b111101111110001 4"
b111111110000 +"
b11111111000 @"
b11111100010 *"
b11111110001 )"
b1111110001000001111000000000000 A"
b111 m
b111 q
b111111 n
b111111 r
b1100011 o
b1100011 s
b1100011 u
b1 V
1P"
b100 W"
1Z"
1^"
b1111110001000001111100011100011 b
b1111110001000001111100011100011 %"
b1111110001000001111100011100011 p"
b10000000000000000000000000000 q"
b10000000000000000000000001000 1"
b10000000000000000000000000100 K
b10000000000000000000000000100 ^
b10000000000000000000000000100 !#
b1 A
1G
1<
#5120000000000
0G
0<
#5130000000000
1e
0c
b10000000000000001 B"
b10000000000000001 *#
b0 k
b0 p
b0 t
b0 w
b1000000 v
1Y#
1U#
1T#
1P#
1O#
1K#
1J#
1F#
1E#
1A#
1@#
1<#
1;#
1o$
1n$
1j$
1i$
1e$
1d$
1`$
1_$
1[$
1Z$
1V$
1U$
1G$
1F$
1n#
1m#
17#
0&#
0E"
16#
0R$
0M$
0C$
0>$
09$
04$
0/$
0*$
0%$
0~#
0y#
0t#
0j#
0e#
0`#
1[#
0V#
0Q#
0L#
0G#
0B#
0=#
0p$
0k$
0f$
0a$
0\$
0W$
0H$
0o#
08#
b1111111111111111 /#
12#
b10000000000000000000000001100 2"
0O$
0J$
0@$
0;$
06$
01$
0,$
0'$
0"$
0{#
0v#
0q#
0g#
0b#
0]#
0X#
1S#
1N#
1I#
1D#
1?#
1:#
1m$
1h$
1c$
1^$
1Y$
1T$
1E$
1l#
15#
11#
10#
b0 J
b0 Y
b0 \
b0 $"
b100101100 ."
b100101100 7%
b110010000 ,"
b110010000 8%
0C"
b10000000000000001 (#
b10000000000000001 .#
13#
b1111111111111111 )#
b1111111111111111 ,#
b1 {"
b1 ##
b1 +#
b10 V
b11 /"
b11 s$
b100 -"
b100 t$
b101 0"
b0 5"
b11000000000000100 ("
b1100000000000010 4"
b100000000100 +"
b10000000010 @"
b100 *"
b101 )"
b10000011000000000000000 A"
b0 m
b0 q
b0 n
b0 r
b110011 o
b110011 s
b110011 u
1-#
b11111111111111110000000000000000 |"
b11111111111111110000000000000000 %#
b11111111111111110000000000000000 ~"
b1 }"
b10000000000000000000000001100 1"
b10000000000000000000000001000 K
b10000000000000000000000001000 ^
b10000000000000000000000001000 !#
b10000011000001010110011 b
b10000011000001010110011 %"
b10000011000001010110011 p"
b10000000000000000000000000100 q"
1a"
b10000 ["
b10000 $#
0Z"
0^"
b111 b"
b10001 g"
b10 j"
b1 h"
b1111110001000001111000000000000 `"
b1111011111100010 o"
b111111110000 l"
b11111110001 n"
b11111100010 m"
b11111111111111110000000000000000 k"
b1 i"
b10000000000000000111111110000 ?"
b10000000000000000000000000000 f"
1N"
b100 x"
b10 A
1G
1<
#5140000000000
0G
0<
#5150000000000
0e
b1010111100 B"
b1010111100 *#
b0 v
b0 N
b0 R
b0 j
b0 I"
0_$
0[$
1\$
0Z$
0V$
1W$
0U$
0G$
1H$
0F$
0i$
0n#
0e$
0[#
1f$
1o#
06#
0Y#
0T#
0O#
0J#
0E#
0@#
0;#
0d$
0m#
02#
0V#
0U#
0Q#
0P#
0L#
0K#
0G#
0F#
0B#
0A#
0=#
0<#
1p$
0o$
0a$
0`$
08#
b100000000 /#
07#
0k$
0S#
0N#
0I#
0D#
0?#
0:#
0m$
0^$
0Y$
0E$
0l#
05#
01#
1g$
1X$
1D$
1k#
00#
b10000000000000000000000010000 2"
b110010000 )#
b110010000 ,#
b1010111100 (#
b1010111100 .#
03#
b100101100 {"
b100101100 ##
b100101100 +#
b0 ."
b0 7%
b0 ,"
b0 8%
b11111111111111110000000000000000 H
b11111111111111110000000000000000 Q
b11111111111111110000000000000000 h
b11111111111111110000000000000000 F"
b10000000000000001 >"
b10000000000000000 3"
b1 H"
0-#
b110010000 |"
b110010000 %#
b110010000 ~"
b100101100 }"
b0 /"
b0 s$
b0 -"
b0 t$
b0 0"
b0 ("
b0 4"
b0 +"
b0 @"
b0 *"
b0 )"
b0 A"
b0 o
b0 s
b0 u
b11 V
1t"
1R"
0N"
0P"
0="
1;"
b111 T"
b10001 X"
b10000000000000000111111110000 &"
b10000000000000000111111110000 S"
b11111111111111110000000000000000 Y"
b10000000000000001 M
b10000000000000001 i
b10000000000000001 x
b10000000000000001 Q"
b10000000000000000000000000100 W"
0a"
b0 ["
b0 $#
1^"
b0 b"
b101 g"
b100 j"
b11 h"
b10000011000000000000000 `"
b11000000000000100 o"
b100000000100 l"
b101 n"
b100 m"
b110010000 k"
b100101100 i"
b10000000000000000100000001000 ?"
b10000000000000000000000000100 f"
b0 b
b0 %"
b0 p"
b10000000000000000000000001000 q"
b10000000000000000000000010000 1"
b10000000000000000000000001100 K
b10000000000000000000000001100 ^
b10000000000000000000000001100 !#
b11 A
1G
1<
#5160000000000
0G
0<
#5170000000000
b0 B"
b0 *#
b1 N
b1 R
b1 j
b1 I"
1C"
0p$
0n$
b0 /#
0j$
0f$
0W$
0\$
0H$
b0 (#
b0 .#
0o#
b10000000000000000000000010100 2"
0h$
0c$
0T$
0g$
0X$
0D$
0k#
b0 )#
b0 ,#
b0 {"
b0 ##
b0 +#
b100 V
b0 |"
b0 %#
b0 ~"
b0 }"
b110010000 H
b110010000 Q
b110010000 h
b110010000 F"
b1010111100 >"
b1010111100 3"
b0 H"
b10101111 O
b10000000000000001 "#
b10000000000000001 r$
b10000000000000000000000010100 1"
b10000000000000000000000010000 K
b10000000000000000000000010000 ^
b10000000000000000000000010000 !#
b10000000000000000000000001100 q"
0^"
b0 g"
b0 j"
b0 h"
b0 `"
b0 o"
b0 l"
b0 n"
b0 m"
b0 k"
b0 i"
b10000000000000000000000001000 ?"
b10000000000000000000000001000 f"
0R"
1N"
1="
0;"
b0 T"
b101 X"
b10000000000000000100000001000 &"
b10000000000000000100000001000 S"
b110010000 Y"
b1010111100 M
b1010111100 i
b1010111100 x
b1010111100 Q"
b10000000000000000000000001000 W"
0t"
b10001 y"
b10001 q$
b10000000000000000000000000100 x"
b10000000000000001 u"
b100 A
1G
1<
#5180000000000
0G
0<
#5190000000000
b10000000000000000000000011000 2"
b0 7"
b0 6"
b1010111100 "#
b1010111100 r$
b0 H
b0 Q
b0 h
b0 F"
b0 >"
b0 3"
b0 O
b101 V
1t"
b101 y"
b101 q$
b10000000000000000000000001000 x"
b1010111100 u"
0N"
1P"
b0 X"
b10000000000000000000000001000 &"
b10000000000000000000000001000 S"
b0 Y"
b0 M
b0 i
b0 x
b0 Q"
b10000000000000000000000001100 W"
b10000000000000000000000001100 ?"
b10000000000000000000000001100 f"
b10000000000000000000000010000 q"
b10000000000000000000000011000 1"
b10000000000000000000000010100 K
b10000000000000000000000010100 ^
b10000000000000000000000010100 !#
b101 A
1G
1<
#5200000000000
0G
0<
#5210000000000
b10000000000000000000000011100 2"
b0 7"
b0 6"
b110 V
b0 "#
b0 r$
b1010111100 1%
b10000000000000000000000011100 1"
b10000000000000000000000011000 K
b10000000000000000000000011000 ^
b10000000000000000000000011000 !#
b10000000000000000000000010100 q"
b10000000000000000000000010000 ?"
b10000000000000000000000010000 f"
b10000000000000000000000001100 &"
b10000000000000000000000001100 S"
b10000000000000000000000010000 W"
0t"
b0 y"
b0 q$
b10000000000000000000000001100 x"
b0 u"
b110 A
1G
1<
#5220000000000
0G
0<
#5230000000000
b10000000000000000000000100000 2"
b111 V
b10000000000000000000000010000 x"
b10000000000000000000000010000 &"
b10000000000000000000000010000 S"
b10000000000000000000000010100 W"
b10000000000000000000000010100 ?"
b10000000000000000000000010100 f"
b10000000000000000000000011000 q"
b10000000000000000000000100000 1"
b10000000000000000000000011100 K
b10000000000000000000000011100 ^
b10000000000000000000000011100 !#
b110000011101 /%
b101110111001 .%
b101101010101 ,%
b101011110001 +%
b101010001101 *%
b101000101001 )%
b100111000101 (%
b100101100001 '%
b100011111101 &%
b100010011001 %%
b100000110101 $%
b11111010001 #%
b11101101101 !%
b11100001001 ~$
b11010100101 }$
b11001000001 |$
b10111011101 {$
b10101111001 z$
b10100010101 y$
b10010110001 x$
b10001001101 w$
b1111101001 v$
b1110000101 5%
b1100100001 4%
b1010111101 3%
b1001011001 2%
b100000 @%
b111110101 1%
b110010001 0%
b100101101 -%
b11001001 "%
b1100101 u$
b100000000000000 A%
b110 F
1B
b0 A
1G
1<
#5240000000000
1]
0E
0G
0<
#5250000000000
1e
1l
b1100000 v
b10000000000000000000000000100 2"
b100010000000110110011 J
b100010000000110110011 Y
b100010000000110110011 \
b100010000000110110011 $"
b0 V
b10011 o
b10011 s
b10011 u
b10000000000000000000000000100 1"
b10000000000000000000000000000 K
b10000000000000000000000000000 ^
b10000000000000000000000000000 !#
b10011 b
b10011 %"
b10011 p"
b0 q"
b0 ?"
b0 f"
0P"
b0 &"
b0 S"
b0 W"
b0 x"
1G
1<
#5260000000000
0G
0<
#5270000000000
1G
1<
#5280000000000
0G
0<
#5290000000000
1G
1<
#5300000000000
0]
b111110101 =
b1010111111 >
b100100001100001011110100110000101110010011001000010000000110001 @
b1000010 ?
0B
b100100001100001011110100110000101110010011001000010000000110001 ?%
b1010111111 =%
1E
0G
0<
#5310000000000
0l
b1000000 v
b10000000000000000000000001000 2"
b11001001 ."
b11001001 7%
b1100101 ,"
b1100101 8%
b1100100000001010110011 J
b1100100000001010110011 Y
b1100100000001010110011 \
b1100100000001010110011 $"
b10 /"
b10 s$
b1 -"
b1 t$
b11 0"
b10000100000000000 ("
b1000010000000000 4"
b100000000010 +"
b10000000001 @"
b1 *"
b11 )"
b100010000000000000000 A"
b110011 o
b110011 s
b110011 u
b1 V
1P"
b100 W"
1Z"
1^"
b100010000000110110011 b
b100010000000110110011 %"
b100010000000110110011 p"
b10000000000000000000000000000 q"
b10000000000000000000000001000 1"
b10000000000000000000000000100 K
b10000000000000000000000000100 ^
b10000000000000000000000000100 !#
b1 A
1G
1<
#5320000000000
0G
0<
#5330000000000
b100101110 B"
b100101110 *#
1k$
1i$
1e$
18#
1d$
16#
1`$
b11000001 /#
12#
1\$
1o#
0f$
0C"
b100101110 (#
b100101110 .#
1H$
b10000000000000000000000001100 2"
1^$
1Y$
1l#
11#
1b$
1]$
1D$
10#
b0 J
b0 Y
b0 \
b0 $"
b110010001 ."
b110010001 7%
b100101101 ,"
b100101101 8%
b1100101 )#
b1100101 ,#
b11001001 {"
b11001001 ##
b11001001 +#
b10 V
b100 /"
b100 s$
b11 -"
b11 t$
b101 0"
b100000100000000010 ("
b10000010000000001 4"
b100000000100 +"
b10000000010 @"
b11 *"
b101 )"
b1100100000000000000000 A"
b1100101 |"
b1100101 %#
b1100101 ~"
b11001001 }"
b10000000000000000000000001100 1"
b10000000000000000000000001000 K
b10000000000000000000000001000 ^
b10000000000000000000000001000 !#
b1100100000001010110011 b
b1100100000001010110011 %"
b1100100000001010110011 p"
b10000000000000000000000000100 q"
0Z"
b11 g"
b1 j"
b10 h"
b100010000000000000000 `"
b10000100000000000 o"
b100000000010 l"
b11 n"
b1 m"
b1100101 k"
b11001001 i"
b10000000000000000100000000010 ?"
b10000000000000000000000000000 f"
1N"
b100 x"
b10 A
1G
1<
#5340000000000
0G
0<
#5350000000000
0e
b1010111111 B"
b1010111111 *#
b100 N
b100 R
b100 j
b100 I"
b0 v
0a$
0_$
0[$
1\$
0Z$
0V$
0U$
0G$
1H$
0F$
0n#
0k$
1o#
06#
0i$
0m#
02#
0e$
18#
07#
13#
1f$
15#
01#
1p$
0d$
1n$
0`$
b100000000 /#
1j$
b1010111111 (#
b1010111111 .#
1W$
b10 6"
1h$
0^$
1E$
1g$
0]$
1S$
0D$
b10000000000000000000000010000 2"
b100101110 )#
b100101110 ,#
b110010001 {"
b110010001 ##
b110010001 +#
b0 ."
b0 7%
b0 ,"
b0 8%
b11001010000000000000000 H
b11001010000000000000000 Q
b11001010000000000000000 h
b11001010000000000000000 F"
b100101110 >"
b100101110 3"
b10 H"
b1001011 O
b100101110 |"
b100101110 %#
b100101110 ~"
b110010001 }"
b0 /"
b0 s$
b0 -"
b0 t$
b0 0"
b0 ("
b0 4"
b0 +"
b0 @"
b0 *"
b0 )"
b0 A"
b0 o
b0 s
b0 u
b11 V
1t"
0P"
b11 X"
b10000000000000000100000000010 &"
b10000000000000000100000000010 S"
b1100101 Y"
b100101110 M
b100101110 i
b100101110 x
b100101110 Q"
b10000000000000000000000000100 W"
b101 g"
b11 j"
b100 h"
b1100100000000000000000 `"
b100000100000000010 o"
b100000000100 l"
b101 n"
b11 m"
b100101101 k"
b110010001 i"
b10000000000000000100000001000 ?"
b10000000000000000000000000100 f"
b0 b
b0 %"
b0 p"
b10000000000000000000000001000 q"
b10000000000000000000000010000 1"
b10000000000000000000000001100 K
b10000000000000000000000001100 ^
b10000000000000000000000001100 !#
b11 A
1G
1<
#5360000000000
0G
0<
#5370000000000
b0 B"
b0 *#
b1000 N
b1000 R
b1000 j
b1000 I"
1C"
0f$
0\$
0W$
0H$
0o#
08#
03#
0=#
0n$
0;#
0j$
0Y$
0E$
0l#
05#
b0 (#
b0 .#
0p$
b0 /#
0o$
b10000000000000000000000010100 2"
0m$
0h$
0c$
0T$
01#
0g$
0b$
0S$
00#
b0 )#
b0 ,#
b0 {"
b0 ##
b0 +#
b0 6"
b100 V
b0 |"
b0 %#
b0 ~"
b0 }"
b101110000000000000000000000000 H
b101110000000000000000000000000 Q
b101110000000000000000000000000 h
b101110000000000000000000000000 F"
b1010111111 >"
b1010111110 3"
b11 H"
b10101111 O
b100101110 "#
b100101110 r$
b10000000000000000000000010100 1"
b10000000000000000000000010000 K
b10000000000000000000000010000 ^
b10000000000000000000000010000 !#
b10000000000000000000000001100 q"
0^"
b0 g"
b0 j"
b0 h"
b0 `"
b0 o"
b0 l"
b0 n"
b0 m"
b0 k"
b0 i"
b10000000000000000000000001000 ?"
b10000000000000000000000001000 f"
b101 X"
b10000000000000000100000001000 &"
b10000000000000000100000001000 S"
b100101110 Y"
b1010111111 M
b1010111111 i
b1010111111 x
b1010111111 Q"
b10000000000000000000000001000 W"
b11 y"
b11 q$
b10000000000000000000000000100 x"
b100101110 u"
b100 A
1G
1<
#5380000000000
0G
0<
#5390000000000
b1 N
b1 R
b1 j
b1 I"
b10000000000000000000000011000 2"
b0 7"
b0 6"
b1010111111 "#
b1010111111 r$
b0 H
b0 Q
b0 h
b0 F"
b0 >"
b0 3"
b0 H"
b0 O
b101 V
b101 y"
b101 q$
b10000000000000000000000001000 x"
b1010111111 u"
0N"
1P"
b0 X"
b10000000000000000000000001000 &"
b10000000000000000000000001000 S"
b0 Y"
b0 M
b0 i
b0 x
b0 Q"
b10000000000000000000000001100 W"
b10000000000000000000000001100 ?"
b10000000000000000000000001100 f"
b10000000000000000000000010000 q"
b10000000000000000000000011000 1"
b10000000000000000000000010100 K
b10000000000000000000000010100 ^
b10000000000000000000000010100 !#
b100101110 -%
b101 A
1G
1<
#5400000000000
0G
0<
#5410000000000
b10000000000000000000000011100 2"
b0 7"
b0 6"
b110 V
b0 "#
b0 r$
b1010111111 1%
b10000000000000000000000011100 1"
b10000000000000000000000011000 K
b10000000000000000000000011000 ^
b10000000000000000000000011000 !#
b10000000000000000000000010100 q"
b10000000000000000000000010000 ?"
b10000000000000000000000010000 f"
b10000000000000000000000001100 &"
b10000000000000000000000001100 S"
b10000000000000000000000010000 W"
0t"
b0 y"
b0 q$
b10000000000000000000000001100 x"
b0 u"
b110 A
1G
1<
#5420000000000
0G
0<
#5430000000000
b10000000000000000000000100000 2"
b111 V
b10000000000000000000000010000 x"
b10000000000000000000000010000 &"
b10000000000000000000000010000 S"
b10000000000000000000000010100 W"
b10000000000000000000000010100 ?"
b10000000000000000000000010100 f"
b10000000000000000000000011000 q"
b10000000000000000000000100000 1"
b10000000000000000000000011100 K
b10000000000000000000000011100 ^
b10000000000000000000000011100 !#
b100000 @%
b110000011101 /%
b101110111001 .%
b101101010101 ,%
b101011110001 +%
b101010001101 *%
b101000101001 )%
b100111000101 (%
b100101100001 '%
b100011111101 &%
b100010011001 %%
b100000110101 $%
b11111010001 #%
b11101101101 !%
b11100001001 ~$
b11010100101 }$
b11001000001 |$
b10111011101 {$
b10101111001 z$
b10100010101 y$
b10010110001 x$
b10001001101 w$
b1111101001 v$
b1110000101 5%
b1100100001 4%
b1010111101 3%
b1001011001 2%
b111110101 1%
b110010001 0%
b100101101 -%
b11001001 "%
b1100101 u$
b100000000000000 A%
1B
b0 A
1G
1<
#5440000000000
1]
0E
0G
0<
#5450000000000
1e
1l
b1100000 v
b10000000000000000000000000100 2"
b100010000000110110011 J
b100010000000110110011 Y
b100010000000110110011 \
b100010000000110110011 $"
b0 V
b10011 o
b10011 s
b10011 u
b10000000000000000000000000100 1"
b10000000000000000000000000000 K
b10000000000000000000000000000 ^
b10000000000000000000000000000 !#
b10011 b
b10011 %"
b10011 p"
b0 q"
b0 ?"
b0 f"
0P"
b0 &"
b0 S"
b0 W"
b0 x"
1G
1<
#5460000000000
0G
0<
#5470000000000
1G
1<
#5480000000000
0G
0<
#5490000000000
1G
1<
#5500000000000
0]
b100100001100001011110100110000101110010011001000010000000110010 @
b1000011 ?
0B
b100100001100001011110100110000101110010011001000010000000110010 ?%
1E
0G
0<
#5510000000000
0l
b1000000 v
b10000000000000000000000001000 2"
b11001001 ."
b11001001 7%
b1100101 ,"
b1100101 8%
b10000011000001010110011 J
b10000011000001010110011 Y
b10000011000001010110011 \
b10000011000001010110011 $"
b10 /"
b10 s$
b1 -"
b1 t$
b11 0"
b10000100000000000 ("
b1000010000000000 4"
b100000000010 +"
b10000000001 @"
b1 *"
b11 )"
b100010000000000000000 A"
b110011 o
b110011 s
b110011 u
b1 V
1P"
b100 W"
1Z"
1^"
b100010000000110110011 b
b100010000000110110011 %"
b100010000000110110011 p"
b10000000000000000000000000000 q"
b10000000000000000000000001000 1"
b10000000000000000000000000100 K
b10000000000000000000000000100 ^
b10000000000000000000000000100 !#
b1 A
1G
1<
#5520000000000
0G
0<
#5530000000000
b100101110 B"
b100101110 *#
1k$
1i$
1e$
18#
1d$
16#
1`$
b11000001 /#
12#
1\$
1o#
0f$
0C"
b100101110 (#
b100101110 .#
1H$
b10000000000000000000000001100 2"
1^$
1Y$
1l#
11#
1b$
1]$
1D$
10#
b0 J
b0 Y
b0 \
b0 $"
b100101101 ."
b100101101 7%
b110010001 ,"
b110010001 8%
b1100101 )#
b1100101 ,#
b11001001 {"
b11001001 ##
b11001001 +#
b10 V
b11 /"
b11 s$
b100 -"
b100 t$
b101 0"
b11000000000000100 ("
b1100000000000010 4"
b100000000100 +"
b10000000010 @"
b100 *"
b101 )"
b10000011000000000000000 A"
b1100101 |"
b1100101 %#
b1100101 ~"
b11001001 }"
b10000000000000000000000001100 1"
b10000000000000000000000001000 K
b10000000000000000000000001000 ^
b10000000000000000000000001000 !#
b10000011000001010110011 b
b10000011000001010110011 %"
b10000011000001010110011 p"
b10000000000000000000000000100 q"
0Z"
b11 g"
b1 j"
b10 h"
b100010000000000000000 `"
b10000100000000000 o"
b100000000010 l"
b11 n"
b1 m"
b1100101 k"
b11001001 i"
b10000000000000000100000000010 ?"
b10000000000000000000000000000 f"
1N"
b100 x"
b10 A
1G
1<
#5540000000000
0G
0<
#5550000000000
0e
b1010111111 B"
b1010111111 *#
b100 N
b100 R
b100 j
b100 I"
b0 v
0a$
0_$
0[$
1\$
0Z$
0V$
0U$
0G$
1H$
0F$
0n#
1o#
0k$
0m#
06#
0i$
07#
02#
0e$
18#
13#
1f$
1p$
0d$
14#
00#
1n$
0`$
b100000000 /#
1j$
b1010111111 (#
b1010111111 .#
1W$
b10 7"
1h$
1c$
0^$
0Y$
1T$
0l#
1g$
0b$
0]$
1X$
1k#
b10000000000000000000000010000 2"
b110010001 )#
b110010001 ,#
b100101110 {"
b100101110 ##
b100101110 +#
b0 ."
b0 7%
b0 ,"
b0 8%
b11001010000000000000000 H
b11001010000000000000000 Q
b11001010000000000000000 h
b11001010000000000000000 F"
b100101110 >"
b100101110 3"
b10 H"
b1001011 O
b110010001 |"
b110010001 %#
b110010001 ~"
b100101110 }"
b0 /"
b0 s$
b0 -"
b0 t$
b0 0"
b0 ("
b0 4"
b0 +"
b0 @"
b0 *"
b0 )"
b0 A"
b0 o
b0 s
b0 u
b11 V
1t"
0P"
b11 X"
b10000000000000000100000000010 &"
b10000000000000000100000000010 S"
b1100101 Y"
b100101110 M
b100101110 i
b100101110 x
b100101110 Q"
b10000000000000000000000000100 W"
b101 g"
b100 j"
b11 h"
b10000011000000000000000 `"
b11000000000000100 o"
b100000000100 l"
b101 n"
b100 m"
b110010001 k"
b100101101 i"
b10000000000000000100000001000 ?"
b10000000000000000000000000100 f"
b0 b
b0 %"
b0 p"
b10000000000000000000000001000 q"
b10000000000000000000000010000 1"
b10000000000000000000000001100 K
b10000000000000000000000001100 ^
b10000000000000000000000001100 !#
b11 A
1G
1<
#5560000000000
0G
0<
#5570000000000
b0 B"
b0 *#
b1000 N
b1000 R
b1000 j
b1000 I"
0=#
0;#
0n$
1C"
0f$
0\$
0W$
0H$
0o#
08#
03#
0o$
b0 /#
0j$
b0 (#
b0 .#
0p$
0X$
0D$
0k#
04#
b10000000000000000000000010100 2"
0h$
0c$
0T$
01#
0l$
0g$
0b$
0S$
00#
b0 )#
b0 ,#
b0 {"
b0 ##
b0 +#
b0 7"
b100 V
b0 |"
b0 %#
b0 ~"
b0 }"
b10010001000000000000000000000000 H
b10010001000000000000000000000000 Q
b10010001000000000000000000000000 h
b10010001000000000000000000000000 F"
b1010111111 >"
b1010111110 3"
b11 H"
b10101111 O
b100101110 "#
b100101110 r$
b10000000000000000000000010100 1"
b10000000000000000000000010000 K
b10000000000000000000000010000 ^
b10000000000000000000000010000 !#
b10000000000000000000000001100 q"
0^"
b0 g"
b0 j"
b0 h"
b0 `"
b0 o"
b0 l"
b0 n"
b0 m"
b0 k"
b0 i"
b10000000000000000000000001000 ?"
b10000000000000000000000001000 f"
b101 X"
b10000000000000000100000001000 &"
b10000000000000000100000001000 S"
b110010001 Y"
b1010111111 M
b1010111111 i
b1010111111 x
b1010111111 Q"
b10000000000000000000000001000 W"
b11 y"
b11 q$
b10000000000000000000000000100 x"
b100101110 u"
b100 A
1G
1<
#5580000000000
0G
0<
#5590000000000
b1 N
b1 R
b1 j
b1 I"
b10000000000000000000000011000 2"
b0 7"
b0 6"
b1010111111 "#
b1010111111 r$
b0 H
b0 Q
b0 h
b0 F"
b0 >"
b0 3"
b0 H"
b0 O
b101 V
b101 y"
b101 q$
b10000000000000000000000001000 x"
b1010111111 u"
0N"
1P"
b0 X"
b10000000000000000000000001000 &"
b10000000000000000000000001000 S"
b0 Y"
b0 M
b0 i
b0 x
b0 Q"
b10000000000000000000000001100 W"
b10000000000000000000000001100 ?"
b10000000000000000000000001100 f"
b10000000000000000000000010000 q"
b10000000000000000000000011000 1"
b10000000000000000000000010100 K
b10000000000000000000000010100 ^
b10000000000000000000000010100 !#
b100101110 -%
b101 A
1G
1<
#5600000000000
0G
0<
#5610000000000
b10000000000000000000000011100 2"
b0 7"
b0 6"
b110 V
b0 "#
b0 r$
b1010111111 1%
b10000000000000000000000011100 1"
b10000000000000000000000011000 K
b10000000000000000000000011000 ^
b10000000000000000000000011000 !#
b10000000000000000000000010100 q"
b10000000000000000000000010000 ?"
b10000000000000000000000010000 f"
b10000000000000000000000001100 &"
b10000000000000000000000001100 S"
b10000000000000000000000010000 W"
0t"
b0 y"
b0 q$
b10000000000000000000000001100 x"
b0 u"
b110 A
1G
1<
#5620000000000
0G
0<
#5630000000000
b10000000000000000000000100000 2"
b111 V
b10000000000000000000000010000 x"
b10000000000000000000000010000 &"
b10000000000000000000000010000 S"
b10000000000000000000000010100 W"
b10000000000000000000000010100 ?"
b10000000000000000000000010100 f"
b10000000000000000000000011000 q"
b10000000000000000000000100000 1"
b10000000000000000000000011100 K
b10000000000000000000000011100 ^
b10000000000000000000000011100 !#
b100000 @%
b110000011101 /%
b101110111001 .%
b101101010101 ,%
b101011110001 +%
b101010001101 *%
b101000101001 )%
b100111000101 (%
b100101100001 '%
b100011111101 &%
b100010011001 %%
b100000110101 $%
b11111010001 #%
b11101101101 !%
b11100001001 ~$
b11010100101 }$
b11001000001 |$
b10111011101 {$
b10101111001 z$
b10100010101 y$
b10010110001 x$
b10001001101 w$
b1111101001 v$
b1110000101 5%
b1100100001 4%
b1010111101 3%
b1001011001 2%
b111110101 1%
b110010001 0%
b100101101 -%
b11001001 "%
b1100101 u$
b100000000000000 A%
1B
b0 A
1G
1<
#5640000000000
1]
0E
0G
0<
#5650000000000
1e
1l
b1100000 v
b10000000000000000000000000100 2"
b100010000000110110011 J
b100010000000110110011 Y
b100010000000110110011 \
b100010000000110110011 $"
b0 V
b10011 o
b10011 s
b10011 u
b10000000000000000000000000100 1"
b10000000000000000000000000000 K
b10000000000000000000000000000 ^
b10000000000000000000000000000 !#
b10011 b
b10011 %"
b10011 p"
b0 q"
b0 ?"
b0 f"
0P"
b0 &"
b0 S"
b0 W"
b0 x"
1G
1<
#5660000000000
0G
0<
#5670000000000
1G
1<
#5680000000000
0G
0<
#5690000000000
1G
1<
#5700000000000
0]
b1100100001 =
b1111101011 >
b100100001100001011110100110000101110010011001000010000000110011 @
b1000100 ?
0B
b100100001100001011110100110000101110010011001000010000000110011 ?%
b1111101011 =%
b1000 >%
1E
0G
0<
#5710000000000
0l
b1000000 v
b10000000000000000000000001000 2"
b11001001 ."
b11001001 7%
b1100101 ,"
b1100101 8%
b10000101000001100110011 J
b10000101000001100110011 Y
b10000101000001100110011 \
b10000101000001100110011 $"
b10 /"
b10 s$
b1 -"
b1 t$
b11 0"
b10000100000000000 ("
b1000010000000000 4"
b100000000010 +"
b10000000001 @"
b1 *"
b11 )"
b100010000000000000000 A"
b110011 o
b110011 s
b110011 u
b1 V
1P"
b100 W"
1Z"
1^"
b100010000000110110011 b
b100010000000110110011 %"
b100010000000110110011 p"
b10000000000000000000000000000 q"
b10000000000000000000000001000 1"
b10000000000000000000000000100 K
b10000000000000000000000000100 ^
b10000000000000000000000000100 !#
b1 A
1G
1<
#5720000000000
0G
0<
#5730000000000
b100101110 B"
b100101110 *#
1k$
1i$
1e$
18#
1d$
16#
1`$
b11000001 /#
12#
1\$
1o#
0f$
0C"
b100101110 (#
b100101110 .#
1H$
b10000000000000000000000001100 2"
1^$
1Y$
1l#
11#
1b$
1]$
1D$
10#
b1100111000010000110011 J
b1100111000010000110011 Y
b1100111000010000110011 \
b1100111000010000110011 $"
b111110101 ."
b111110101 7%
b110010001 ,"
b110010001 8%
b1100101 )#
b1100101 ,#
b11001001 {"
b11001001 ##
b11001001 +#
b10 V
b101 /"
b101 s$
b100 -"
b100 t$
b110 0"
b101000000000000100 ("
b10100000000000010 4"
b110 +"
b11 @"
b100 *"
b110 )"
b10000101000000000000000 A"
b1100101 |"
b1100101 %#
b1100101 ~"
b11001001 }"
b10000000000000000000000001100 1"
b10000000000000000000000001000 K
b10000000000000000000000001000 ^
b10000000000000000000000001000 !#
b10000101000001100110011 b
b10000101000001100110011 %"
b10000101000001100110011 p"
b10000000000000000000000000100 q"
0Z"
b11 g"
b1 j"
b10 h"
b100010000000000000000 `"
b10000100000000000 o"
b100000000010 l"
b11 n"
b1 m"
b1100101 k"
b11001001 i"
b10000000000000000100000000010 ?"
b10000000000000000000000000000 f"
1N"
b100 x"
b10 A
1G
1<
#5740000000000
0G
0<
#5750000000000
b1110000110 B"
b1110000110 *#
b100 N
b100 R
b100 j
b100 I"
1_$
1[$
0\$
1p$
1d$
1Z$
1n$
1`$
1V$
b111110001 /#
1j$
1f$
0a$
b1110000110 (#
b1110000110 .#
0H$
1h$
1c$
0^$
0Y$
1T$
0l#
1g$
1X$
1S$
0D$
1k#
b10000000000000000000000010000 2"
b110010001 )#
b110010001 ,#
b111110101 {"
b111110101 ##
b111110101 +#
b0 J
b0 Y
b0 \
b0 $"
b1010111101 ."
b1010111101 7%
b100101101 ,"
b100101101 8%
b11001010000000000000000 H
b11001010000000000000000 Q
b11001010000000000000000 h
b11001010000000000000000 F"
b100101110 >"
b100101110 3"
b10 H"
b1001011 O
b110010001 |"
b110010001 %#
b110010001 ~"
b111110101 }"
b111 /"
b111 s$
b11 -"
b11 t$
b1000 0"
b111000100000000010 ("
b11100010000000001 4"
b1000 +"
b100 @"
b11 *"
b1000 )"
b1100111000000000000000 A"
b11 V
1t"
0P"
b11 X"
b10000000000000000100000000010 &"
b10000000000000000100000000010 S"
b1100101 Y"
b100101110 M
b100101110 i
b100101110 x
b100101110 Q"
b10000000000000000000000000100 W"
b110 g"
b100 j"
b101 h"
b10000101000000000000000 `"
b101000000000000100 o"
b110 l"
b110 n"
b100 m"
b110010001 k"
b111110101 i"
b10000000000000000000000001010 ?"
b10000000000000000000000000100 f"
b1100111000010000110011 b
b1100111000010000110011 %"
b1100111000010000110011 p"
b10000000000000000000000001000 q"
b10000000000000000000000010000 1"
b10000000000000000000000001100 K
b10000000000000000000000001100 ^
b10000000000000000000000001100 !#
b11 A
1G
1<
#5760000000000
0G
0<
#5770000000000
0e
b1111101011 B"
b1111101011 *#
b0 v
0n$
0j$
06#
0i$
0m#
02#
0e$
18#
07#
13#
1H$
0=#
15#
01#
1Z$
1F$
0;#
0d$
1U$
1V$
1n#
0o$
0`$
b111100 /#
1G$
1f$
1\$
0W$
0o#
1p$
1k$
b1111101011 (#
b1111101011 .#
1a$
b10000000000000000000000010100 2"
b1 6"
0c$
1Y$
0T$
1E$
1l#
1l$
0g$
0]$
1D$
b0 ."
b0 7%
b100101110 )#
b100101110 ,#
b1010111101 {"
b1010111101 ##
b1010111101 +#
b100 V
b0 /"
b0 s$
b0 -"
b0 t$
b0 0"
b0 ("
b0 4"
b0 +"
b0 @"
b0 *"
b0 )"
b0 A"
b0 o
b0 s
b0 u
b100101110 |"
b100101110 %#
b100101110 ~"
b1010111101 }"
b1100100010000000000000000 H
b1100100010000000000000000 Q
b1100100010000000000000000 h
b1100100010000000000000000 F"
b1110000110 >"
b1110000110 3"
b11100001 O
b0 ,"
b0 8%
b100101110 "#
b100101110 r$
b10000000000000000000000010100 1"
b10000000000000000000000010000 K
b10000000000000000000000010000 ^
b10000000000000000000000010000 !#
b0 b
b0 %"
b0 p"
b10000000000000000000000001100 q"
b1000 g"
b11 j"
b111 h"
b1100111000000000000000 `"
b111000100000000010 o"
b1000 l"
b1000 n"
b11 m"
b100101101 k"
b1010111101 i"
b10000000000000000000000010000 ?"
b10000000000000000000000001000 f"
b110 X"
b10000000000000000000000001010 &"
b10000000000000000000000001010 S"
b110010001 Y"
b1110000110 M
b1110000110 i
b1110000110 x
b1110000110 Q"
b10000000000000000000000001000 W"
b11 y"
b11 q$
b10000000000000000000000000100 x"
b100101110 u"
b100 A
1G
1<
#5780000000000
0G
0<
#5790000000000
b0 B"
b0 *#
b1000 N
b1000 R
b1000 j
b1000 I"
1C"
0a$
0k$
08#
0_$
0U$
0[$
0G$
0h$
0l#
05#
0Z$
0F$
0V$
b0 /#
0n#
0m$
0c$
0Y$
0E$
0p$
0f$
0\$
0W$
0H$
0o#
b0 (#
b0 .#
03#
b0 )#
b0 ,#
b0 |"
b0 %#
b0 6"
0l$
0b$
0X$
0S$
0D$
0k#
00#
b10000000000000000000000011000 2"
b0 ~"
b0 {"
b0 ##
b0 +#
b1110000110 "#
b1110000110 r$
b101110000000000000000000000000 H
b101110000000000000000000000000 Q
b101110000000000000000000000000 h
b101110000000000000000000000000 F"
b1111101011 >"
b1111101010 3"
b11 H"
b11111010 O
b0 }"
b101 V
b110 y"
b110 q$
b10000000000000000000000001000 x"
b1110000110 u"
b1000 X"
b10000000000000000000000010000 &"
b10000000000000000000000010000 S"
b100101110 Y"
b1111101011 M
b1111101011 i
b1111101011 x
b1111101011 Q"
b10000000000000000000000001100 W"
0^"
b0 g"
b0 j"
b0 h"
b0 `"
b0 o"
b0 l"
b0 n"
b0 m"
b0 k"
b0 i"
b10000000000000000000000001100 ?"
b10000000000000000000000001100 f"
b10000000000000000000000010000 q"
b10000000000000000000000011000 1"
b10000000000000000000000010100 K
b10000000000000000000000010100 ^
b10000000000000000000000010100 !#
b100101110 -%
b101 A
1G
1<
#5800000000000
0G
0<
#5810000000000
b1 N
b1 R
b1 j
b1 I"
b10000000000000000000000011100 2"
b0 7"
b0 6"
b110 V
b0 H
b0 Q
b0 h
b0 F"
b0 >"
b0 3"
b0 H"
b0 O
b1111101011 "#
b1111101011 r$
b1110000110 2%
b10000000000000000000000011100 1"
b10000000000000000000000011000 K
b10000000000000000000000011000 ^
b10000000000000000000000011000 !#
b10000000000000000000000010100 q"
b10000000000000000000000010000 ?"
b10000000000000000000000010000 f"
0N"
1P"
b0 X"
b10000000000000000000000001100 &"
b10000000000000000000000001100 S"
b0 Y"
b0 M
b0 i
b0 x
b0 Q"
b10000000000000000000000010000 W"
b1000 y"
b1000 q$
b10000000000000000000000001100 x"
b1111101011 u"
b110 A
1G
1<
#5820000000000
0G
0<
#5830000000000
b0 7"
b0 6"
b10000000000000000000000100000 2"
b0 "#
b0 r$
b111 V
0t"
b0 y"
b0 q$
b10000000000000000000000010000 x"
b0 u"
b10000000000000000000000010000 &"
b10000000000000000000000010000 S"
b10000000000000000000000010100 W"
b10000000000000000000000010100 ?"
b10000000000000000000000010100 f"
b10000000000000000000000011000 q"
b10000000000000000000000100000 1"
b10000000000000000000000011100 K
b10000000000000000000000011100 ^
b10000000000000000000000011100 !#
b1111101011 4%
b111 A
1G
1<
#5840000000000
0G
0<
#5850000000000
b10000000000000000000000100100 2"
b1000 V
b10000000000000000000000100100 1"
b10000000000000000000000100000 K
b10000000000000000000000100000 ^
b10000000000000000000000100000 !#
b10000000000000000000000011100 q"
b10000000000000000000000011000 ?"
b10000000000000000000000011000 f"
b10000000000000000000000010100 &"
b10000000000000000000000010100 S"
b10000000000000000000000011000 W"
b10000000000000000000000010100 x"
b100000 @%
b110000011101 /%
b101110111001 .%
b101101010101 ,%
b101011110001 +%
b101010001101 *%
b101000101001 )%
b100111000101 (%
b100101100001 '%
b100011111101 &%
b100010011001 %%
b100000110101 $%
b11111010001 #%
b11101101101 !%
b11100001001 ~$
b11010100101 }$
b11001000001 |$
b10111011101 {$
b10101111001 z$
b10100010101 y$
b10010110001 x$
b10001001101 w$
b1111101001 v$
b1110000101 5%
b1100100001 4%
b1010111101 3%
b1001011001 2%
b111110101 1%
b110010001 0%
b100101101 -%
b11001001 "%
b1100101 u$
b100000000000000 A%
1B
b1000 A
1G
1<
#5860000000000
1]
0E
0G
0<
#5870000000000
1e
1l
b1100000 v
b10000000000000000000000000100 2"
b100010000000110110011 J
b100010000000110110011 Y
b100010000000110110011 \
b100010000000110110011 $"
b10011 o
b10011 s
b10011 u
b0 V
b0 x"
0P"
b0 &"
b0 S"
b0 W"
b0 ?"
b0 f"
b10011 b
b10011 %"
b10011 p"
b0 q"
b10000000000000000000000000100 1"
b10000000000000000000000000000 K
b10000000000000000000000000000 ^
b10000000000000000000000000000 !#
b0 A
1G
1<
#5880000000000
0G
0<
#5890000000000
1G
1<
#5900000000000
0G
0<
#5910000000000
1G
1<
#5920000000000
0]
b100100001100001011110100110000101110010011001000010000000110100 @
b1000101 ?
0B
b100100001100001011110100110000101110010011001000010000000110100 ?%
1E
0G
0<
#5930000000000
0l
b1000000 v
b10000000000000000000000001000 2"
b10000101000001100110011 J
b10000101000001100110011 Y
b10000101000001100110011 \
b10000101000001100110011 $"
b11001001 ."
b11001001 7%
b1100101 ,"
b1100101 8%
b1 V
b10 /"
b10 s$
b1 -"
b1 t$
b11 0"
b10000100000000000 ("
b1000010000000000 4"
b100000000010 +"
b10000000001 @"
b1 *"
b11 )"
b100010000000000000000 A"
b110011 o
b110011 s
b110011 u
b10000000000000000000000001000 1"
b10000000000000000000000000100 K
b10000000000000000000000000100 ^
b10000000000000000000000000100 !#
b100010000000110110011 b
b100010000000110110011 %"
b100010000000110110011 p"
b10000000000000000000000000000 q"
1Z"
1^"
1P"
b100 W"
b1 A
1G
1<
#5940000000000
0G
0<
#5950000000000
b100101110 B"
b100101110 *#
1k$
1i$
1e$
18#
1d$
16#
1`$
b11000001 /#
12#
1\$
1o#
0f$
0C"
b100101110 (#
b100101110 .#
1H$
1^$
1Y$
1l#
11#
1b$
1]$
1D$
10#
b10000000000000000000000001100 2"
b1100101 )#
b1100101 ,#
b11001001 {"
b11001001 ##
b11001001 +#
b111110101 ."
b111110101 7%
b110010001 ,"
b110010001 8%
b11100011000010000110011 J
b11100011000010000110011 Y
b11100011000010000110011 \
b11100011000010000110011 $"
b1100101 |"
b1100101 %#
b1100101 ~"
b11001001 }"
b101 /"
b101 s$
b100 -"
b100 t$
b110 0"
b101000000000000100 ("
b10100000000000010 4"
b110 +"
b11 @"
b100 *"
b110 )"
b10000101000000000000000 A"
b10 V
b100 x"
1N"
0Z"
b11 g"
b1 j"
b10 h"
b100010000000000000000 `"
b10000100000000000 o"
b100000000010 l"
b11 n"
b1 m"
b1100101 k"
b11001001 i"
b10000000000000000100000000010 ?"
b10000000000000000000000000000 f"
b10000101000001100110011 b
b10000101000001100110011 %"
b10000101000001100110011 p"
b10000000000000000000000000100 q"
b10000000000000000000000001100 1"
b10000000000000000000000001000 K
b10000000000000000000000001000 ^
b10000000000000000000000001000 !#
b10 A
1G
1<
#5960000000000
0G
0<
#5970000000000
b1110000110 B"
b1110000110 *#
b100 N
b100 R
b100 j
b100 I"
1_$
1[$
0\$
1p$
1d$
1Z$
1n$
1`$
1V$
b111110001 /#
1j$
1f$
0a$
b1110000110 (#
b1110000110 .#
0H$
b10000000000000000000000010000 2"
1h$
1c$
0^$
0Y$
1T$
0l#
1g$
1X$
1S$
0D$
1k#
b0 J
b0 Y
b0 \
b0 $"
b100101101 ."
b100101101 7%
b1010111101 ,"
b1010111101 8%
b110010001 )#
b110010001 ,#
b111110101 {"
b111110101 ##
b111110101 +#
b11 V
b11 /"
b11 s$
b111 -"
b111 t$
b1000 0"
b11000100000000110 ("
b1100010000000011 4"
b1000 +"
b100 @"
b111 *"
b1000 )"
b11100011000000000000000 A"
b110010001 |"
b110010001 %#
b110010001 ~"
b111110101 }"
b11001010000000000000000 H
b11001010000000000000000 Q
b11001010000000000000000 h
b11001010000000000000000 F"
b100101110 >"
b100101110 3"
b10 H"
b1001011 O
b10000000000000000000000010000 1"
b10000000000000000000000001100 K
b10000000000000000000000001100 ^
b10000000000000000000000001100 !#
b11100011000010000110011 b
b11100011000010000110011 %"
b11100011000010000110011 p"
b10000000000000000000000001000 q"
b110 g"
b100 j"
b101 h"
b10000101000000000000000 `"
b101000000000000100 o"
b110 l"
b110 n"
b100 m"
b110010001 k"
b111110101 i"
b10000000000000000000000001010 ?"
b10000000000000000000000000100 f"
0P"
b11 X"
b10000000000000000100000000010 &"
b10000000000000000100000000010 S"
b1100101 Y"
b100101110 M
b100101110 i
b100101110 x
b100101110 Q"
b10000000000000000000000000100 W"
1t"
b11 A
1G
1<
#5980000000000
0G
0<
#5990000000000
0e
b1111101011 B"
b1111101011 *#
b0 v
0n$
0j$
0m#
06#
07#
02#
0i$
18#
13#
0e$
1H$
14#
00#
0=#
1F$
0d$
1Z$
1U$
0;#
1n#
0`$
1V$
1G$
1p$
b111100 /#
0o$
1k$
1\$
0o#
1f$
1a$
b1111101011 (#
b1111101011 .#
0W$
b1 7"
1m$
0h$
1Y$
1E$
1l#
0b$
0]$
0S$
1D$
b10000000000000000000000010100 2"
b1010111101 )#
b1010111101 ,#
b100101110 {"
b100101110 ##
b100101110 +#
b0 ."
b0 7%
b0 ,"
b0 8%
b100101110 "#
b100101110 r$
b1100100010000000000000000 H
b1100100010000000000000000 Q
b1100100010000000000000000 h
b1100100010000000000000000 F"
b1110000110 >"
b1110000110 3"
b11100001 O
b1010111101 |"
b1010111101 %#
b1010111101 ~"
b100101110 }"
b0 /"
b0 s$
b0 -"
b0 t$
b0 0"
b0 ("
b0 4"
b0 +"
b0 @"
b0 *"
b0 )"
b0 A"
b0 o
b0 s
b0 u
b100 V
b11 y"
b11 q$
b10000000000000000000000000100 x"
b100101110 u"
b110 X"
b10000000000000000000000001010 &"
b10000000000000000000000001010 S"
b110010001 Y"
b1110000110 M
b1110000110 i
b1110000110 x
b1110000110 Q"
b10000000000000000000000001000 W"
b1000 g"
b111 j"
b11 h"
b11100011000000000000000 `"
b11000100000000110 o"
b1000 l"
b1000 n"
b111 m"
b1010111101 k"
b100101101 i"
b10000000000000000000000010000 ?"
b10000000000000000000000001000 f"
b0 b
b0 %"
b0 p"
b10000000000000000000000001100 q"
b10000000000000000000000010100 1"
b10000000000000000000000010000 K
b10000000000000000000000010000 ^
b10000000000000000000000010000 !#
b100 A
1G
1<
#6000000000000
0G
0<
#6010000000000
b0 B"
b0 *#
b1000 N
b1000 R
b1000 j
b1000 I"
1C"
0H$
0p$
0k$
0f$
08#
0a$
0\$
0F$
0_$
0Z$
0U$
0n#
0g$
0k#
04#
0[$
0W$
0V$
b0 /#
0G$
0o#
b0 (#
b0 .#
03#
b10000000000000000000000011000 2"
0m$
0c$
0Y$
0T$
0E$
0l#
01#
0l$
0b$
0X$
0D$
b0 7"
b0 )#
b0 ,#
b0 {"
b0 ##
b0 +#
b101 V
b0 |"
b0 %#
b0 ~"
b0 }"
b10111101000000000000000000000000 H
b10111101000000000000000000000000 Q
b10111101000000000000000000000000 h
b10111101000000000000000000000000 F"
b1111101011 >"
b1111101010 3"
b11 H"
b11111010 O
b1110000110 "#
b1110000110 r$
b100101110 -%
b10000000000000000000000011000 1"
b10000000000000000000000010100 K
b10000000000000000000000010100 ^
b10000000000000000000000010100 !#
b10000000000000000000000010000 q"
0^"
b0 g"
b0 j"
b0 h"
b0 `"
b0 o"
b0 l"
b0 n"
b0 m"
b0 k"
b0 i"
b10000000000000000000000001100 ?"
b10000000000000000000000001100 f"
b1000 X"
b10000000000000000000000010000 &"
b10000000000000000000000010000 S"
b1010111101 Y"
b1111101011 M
b1111101011 i
b1111101011 x
b1111101011 Q"
b10000000000000000000000001100 W"
b110 y"
b110 q$
b10000000000000000000000001000 x"
b1110000110 u"
b101 A
1G
1<
#6020000000000
0G
0<
#6030000000000
b1 N
b1 R
b1 j
b1 I"
b10000000000000000000000011100 2"
b0 7"
b0 6"
b1111101011 "#
b1111101011 r$
b0 H
b0 Q
b0 h
b0 F"
b0 >"
b0 3"
b0 H"
b0 O
b110 V
b1000 y"
b1000 q$
b10000000000000000000000001100 x"
b1111101011 u"
0N"
1P"
b0 X"
b10000000000000000000000001100 &"
b10000000000000000000000001100 S"
b0 Y"
b0 M
b0 i
b0 x
b0 Q"
b10000000000000000000000010000 W"
b10000000000000000000000010000 ?"
b10000000000000000000000010000 f"
b10000000000000000000000010100 q"
b10000000000000000000000011100 1"
b10000000000000000000000011000 K
b10000000000000000000000011000 ^
b10000000000000000000000011000 !#
b1110000110 2%
b110 A
1G
1<
#6040000000000
0G
0<
#6050000000000
b10000000000000000000000100000 2"
b0 7"
b0 6"
b111 V
b0 "#
b0 r$
b1111101011 4%
b10000000000000000000000100000 1"
b10000000000000000000000011100 K
b10000000000000000000000011100 ^
b10000000000000000000000011100 !#
b10000000000000000000000011000 q"
b10000000000000000000000010100 ?"
b10000000000000000000000010100 f"
b10000000000000000000000010000 &"
b10000000000000000000000010000 S"
b10000000000000000000000010100 W"
0t"
b0 y"
b0 q$
b10000000000000000000000010000 x"
b0 u"
b111 A
1G
1<
#6060000000000
0G
0<
#6070000000000
b10000000000000000000000100100 2"
b1000 V
b10000000000000000000000010100 x"
b10000000000000000000000010100 &"
b10000000000000000000000010100 S"
b10000000000000000000000011000 W"
b10000000000000000000000011000 ?"
b10000000000000000000000011000 f"
b10000000000000000000000011100 q"
b10000000000000000000000100100 1"
b10000000000000000000000100000 K
b10000000000000000000000100000 ^
b10000000000000000000000100000 !#
b100000 @%
b110000011101 /%
b101110111001 .%
b101101010101 ,%
b101011110001 +%
b101010001101 *%
b101000101001 )%
b100111000101 (%
b100101100001 '%
b100011111101 &%
b100010011001 %%
b100000110101 $%
b11111010001 #%
b11101101101 !%
b11100001001 ~$
b11010100101 }$
b11001000001 |$
b10111011101 {$
b10101111001 z$
b10100010101 y$
b10010110001 x$
b10001001101 w$
b1111101001 v$
b1110000101 5%
b1100100001 4%
b1010111101 3%
b1001011001 2%
b111110101 1%
b110010001 0%
b100101101 -%
b11001001 "%
b1100101 u$
b100000000000000 A%
1B
b1000 A
1G
1<
#6080000000000
1]
0E
0G
0<
#6090000000000
1e
1l
b1100000 v
b10000000000000000000000000100 2"
b100010000000110110011 J
b100010000000110110011 Y
b100010000000110110011 \
b100010000000110110011 $"
b0 V
b10011 o
b10011 s
b10011 u
b10000000000000000000000000100 1"
b10000000000000000000000000000 K
b10000000000000000000000000000 ^
b10000000000000000000000000000 !#
b10011 b
b10011 %"
b10011 p"
b0 q"
b0 ?"
b0 f"
0P"
b0 &"
b0 S"
b0 W"
b0 x"
b0 A
1G
1<
#6100000000000
0G
0<
#6110000000000
1G
1<
#6120000000000
0G
0<
#6130000000000
1G
1<
#6140000000000
0]
b1010111101 =
b10100011000 >
b100100001100001011110100110000101110010011001000010000000110101 @
b1000110 ?
0B
b100100001100001011110100110000101110010011001000010000000110101 ?%
b10100011000 =%
b111 >%
1E
0G
0<
#6150000000000
0l
b1000000 v
b10000000000000000000000001000 2"
b11001001 ."
b11001001 7%
b1100101 ,"
b1100101 8%
b10000011000001010110011 J
b10000011000001010110011 Y
b10000011000001010110011 \
b10000011000001010110011 $"
b10 /"
b10 s$
b1 -"
b1 t$
b11 0"
b10000100000000000 ("
b1000010000000000 4"
b100000000010 +"
b10000000001 @"
b1 *"
b11 )"
b100010000000000000000 A"
b110011 o
b110011 s
b110011 u
b1 V
1P"
b100 W"
1Z"
1^"
b100010000000110110011 b
b100010000000110110011 %"
b100010000000110110011 p"
b10000000000000000000000000000 q"
b10000000000000000000000001000 1"
b10000000000000000000000000100 K
b10000000000000000000000000100 ^
b10000000000000000000000000100 !#
b1 A
1G
1<
#6160000000000
0G
0<
#6170000000000
b100101110 B"
b100101110 *#
1k$
1i$
1e$
18#
1d$
16#
1`$
b11000001 /#
12#
1\$
1o#
0f$
0C"
b100101110 (#
b100101110 .#
1H$
b10000000000000000000000001100 2"
1^$
1Y$
1l#
11#
1b$
1]$
1D$
10#
b10100110000001110110011 J
b10100110000001110110011 Y
b10100110000001110110011 \
b10100110000001110110011 $"
b100101101 ."
b100101101 7%
b110010001 ,"
b110010001 8%
b1100101 )#
b1100101 ,#
b11001001 {"
b11001001 ##
b11001001 +#
b10 V
b11 /"
b11 s$
b100 -"
b100 t$
b101 0"
b11000000000000100 ("
b1100000000000010 4"
b100000000100 +"
b10000000010 @"
b100 *"
b101 )"
b10000011000000000000000 A"
b1100101 |"
b1100101 %#
b1100101 ~"
b11001001 }"
b10000000000000000000000001100 1"
b10000000000000000000000001000 K
b10000000000000000000000001000 ^
b10000000000000000000000001000 !#
b10000011000001010110011 b
b10000011000001010110011 %"
b10000011000001010110011 p"
b10000000000000000000000000100 q"
0Z"
b11 g"
b1 j"
b10 h"
b100010000000000000000 `"
b10000100000000000 o"
b100000000010 l"
b11 n"
b1 m"
b1100101 k"
b11001001 i"
b10000000000000000100000000010 ?"
b10000000000000000000000000000 f"
1N"
b100 x"
b10 A
1G
1<
#6180000000000
0G
0<
#6190000000000
b1010111111 B"
b1010111111 *#
b100 N
b100 R
b100 j
b100 I"
0a$
0_$
0[$
1\$
0Z$
0V$
0U$
0G$
1H$
0F$
0n#
1o#
0k$
0m#
06#
0i$
07#
02#
0e$
18#
13#
1f$
1p$
0d$
14#
00#
1n$
0`$
b100000000 /#
1j$
b1010111111 (#
b1010111111 .#
1W$
b10 7"
1h$
1c$
0^$
0Y$
1T$
0l#
1g$
0b$
0]$
1X$
1k#
b10000000000000000000000010000 2"
b110010001 )#
b110010001 ,#
b100101110 {"
b100101110 ##
b100101110 +#
b0 J
b0 Y
b0 \
b0 $"
b1001011001 ."
b1001011001 7%
b111110101 ,"
b111110101 8%
b11001010000000000000000 H
b11001010000000000000000 Q
b11001010000000000000000 h
b11001010000000000000000 F"
b100101110 >"
b100101110 3"
b10 H"
b1001011 O
b110010001 |"
b110010001 %#
b110010001 ~"
b100101110 }"
b110 /"
b110 s$
b101 -"
b101 t$
b111 0"
b110000100000000100 ("
b11000010000000010 4"
b100000000110 +"
b10000000011 @"
b101 *"
b111 )"
b10100110000000000000000 A"
b11 V
1t"
0P"
b11 X"
b10000000000000000100000000010 &"
b10000000000000000100000000010 S"
b1100101 Y"
b100101110 M
b100101110 i
b100101110 x
b100101110 Q"
b10000000000000000000000000100 W"
b101 g"
b100 j"
b11 h"
b10000011000000000000000 `"
b11000000000000100 o"
b100000000100 l"
b101 n"
b100 m"
b110010001 k"
b100101101 i"
b10000000000000000100000001000 ?"
b10000000000000000000000000100 f"
b10100110000001110110011 b
b10100110000001110110011 %"
b10100110000001110110011 p"
b10000000000000000000000001000 q"
b10000000000000000000000010000 1"
b10000000000000000000000001100 K
b10000000000000000000000001100 ^
b10000000000000000000000001100 !#
b11 A
1G
1<
#6200000000000
0G
0<
#6210000000000
0e
b10100011000 B"
b10100011000 *#
b0 v
b1000 N
b1000 R
b1000 j
b1000 I"
1H$
1U$
1m#
1d$
1G$
17#
1=#
1`$
1_$
1F$
1;#
0n$
1i$
1Z$
16#
08#
1m$
0h$
1E$
15#
1[$
1n#
1o$
0j$
1e$
1V$
b1011111111 /#
12#
0a$
0\$
0o#
0p$
1k$
0f$
1W$
b10100011000 (#
b10100011000 .#
03#
1]$
0X$
0k#
04#
b10000000000000000000000010100 2"
0^$
1Y$
1l#
1l$
0g$
0b$
1S$
10#
b0 ."
b0 7%
b0 ,"
b0 8%
b10 6"
b1010111111 )#
b1010111111 ,#
b1001011001 {"
b1001011001 ##
b1001011001 +#
b0 7"
b100 V
b0 /"
b0 s$
b0 -"
b0 t$
b0 0"
b0 ("
b0 4"
b0 +"
b0 @"
b0 *"
b0 )"
b0 A"
b0 o
b0 s
b0 u
b1010111111 |"
b1010111111 %#
b1010111111 ~"
b1001011001 }"
b10010001000000000000000000000000 H
b10010001000000000000000000000000 Q
b10010001000000000000000000000000 h
b10010001000000000000000000000000 F"
b1010111111 >"
b1010111110 3"
b11 H"
b10101111 O
b100101110 "#
b100101110 r$
b10000000000000000000000010100 1"
b10000000000000000000000010000 K
b10000000000000000000000010000 ^
b10000000000000000000000010000 !#
b0 b
b0 %"
b0 p"
b10000000000000000000000001100 q"
b111 g"
b101 j"
b110 h"
b10100110000000000000000 `"
b110000100000000100 o"
b100000000110 l"
b111 n"
b101 m"
b111110101 k"
b1001011001 i"
b10000000000000000100000001110 ?"
b10000000000000000000000001000 f"
b101 X"
b10000000000000000100000001000 &"
b10000000000000000100000001000 S"
b110010001 Y"
b1010111111 M
b1010111111 i
b1010111111 x
b1010111111 Q"
b10000000000000000000000001000 W"
b11 y"
b11 q$
b10000000000000000000000000100 x"
b100101110 u"
b100 A
1G
1<
#6220000000000
0G
0<
#6230000000000
b0 B"
b0 *#
b1 N
b1 R
b1 j
b1 I"
1C"
0k$
0i$
0_$
0Z$
0U$
0F$
0m#
0=#
0e$
0\$
0[$
0V$
0G$
0o#
0n#
07#
0;#
0d$
06#
0o$
0`$
b0 /#
02#
0m$
0c$
0Y$
0T$
0E$
0l#
05#
01#
0p$
0a$
0W$
0H$
b0 (#
b0 .#
03#
b0 )#
b0 ,#
b0 |"
b0 %#
0l$
0]$
0S$
0D$
00#
b10000000000000000000000011000 2"
b0 ~"
b0 6"
b0 {"
b0 ##
b0 +#
b1010111111 "#
b1010111111 r$
b1010111111 H
b1010111111 Q
b1010111111 h
b1010111111 F"
b10100011000 >"
b10100011000 3"
b0 H"
b101000110 O
b0 }"
b101 V
b101 y"
b101 q$
b10000000000000000000000001000 x"
b1010111111 u"
b111 X"
b10000000000000000100000001110 &"
b10000000000000000100000001110 S"
b1010111111 Y"
b10100011000 M
b10100011000 i
b10100011000 x
b10100011000 Q"
b10000000000000000000000001100 W"
0^"
b0 g"
b0 j"
b0 h"
b0 `"
b0 o"
b0 l"
b0 n"
b0 m"
b0 k"
b0 i"
b10000000000000000000000001100 ?"
b10000000000000000000000001100 f"
b10000000000000000000000010000 q"
b10000000000000000000000011000 1"
b10000000000000000000000010100 K
b10000000000000000000000010100 ^
b10000000000000000000000010100 !#
b100101110 -%
b101 A
1G
1<
#6240000000000
0G
0<
#6250000000000
b10000000000000000000000011100 2"
b0 7"
b0 6"
b110 V
b0 H
b0 Q
b0 h
b0 F"
b0 >"
b0 3"
b0 O
b10100011000 "#
b10100011000 r$
b1010111111 1%
b10000000000000000000000011100 1"
b10000000000000000000000011000 K
b10000000000000000000000011000 ^
b10000000000000000000000011000 !#
b10000000000000000000000010100 q"
b10000000000000000000000010000 ?"
b10000000000000000000000010000 f"
0N"
1P"
b0 X"
b10000000000000000000000001100 &"
b10000000000000000000000001100 S"
b0 Y"
b0 M
b0 i
b0 x
b0 Q"
b10000000000000000000000010000 W"
b111 y"
b111 q$
b10000000000000000000000001100 x"
b10100011000 u"
b110 A
1G
1<
#6260000000000
0G
0<
#6270000000000
b0 7"
b0 6"
b10000000000000000000000100000 2"
b0 "#
b0 r$
b111 V
0t"
b0 y"
b0 q$
b10000000000000000000000010000 x"
b0 u"
b10000000000000000000000010000 &"
b10000000000000000000000010000 S"
b10000000000000000000000010100 W"
b10000000000000000000000010100 ?"
b10000000000000000000000010100 f"
b10000000000000000000000011000 q"
b10000000000000000000000100000 1"
b10000000000000000000000011100 K
b10000000000000000000000011100 ^
b10000000000000000000000011100 !#
b10100011000 3%
b111 A
1G
1<
#6280000000000
0G
0<
#6290000000000
b10000000000000000000000100100 2"
b1000 V
b10000000000000000000000100100 1"
b10000000000000000000000100000 K
b10000000000000000000000100000 ^
b10000000000000000000000100000 !#
b10000000000000000000000011100 q"
b10000000000000000000000011000 ?"
b10000000000000000000000011000 f"
b10000000000000000000000010100 &"
b10000000000000000000000010100 S"
b10000000000000000000000011000 W"
b10000000000000000000000010100 x"
b0 .
b100000 @%
b110000011101 /%
b101110111001 .%
b101101010101 ,%
b101011110001 +%
b101010001101 *%
b101000101001 )%
b100111000101 (%
b100101100001 '%
b100011111101 &%
b100010011001 %%
b100000110101 $%
b11111010001 #%
b11101101101 !%
b11100001001 ~$
b11010100101 }$
b11001000001 |$
b10111011101 {$
b10101111001 z$
b10100010101 y$
b10010110001 x$
b10001001101 w$
b1111101001 v$
b1110000101 5%
b1100100001 4%
b1010111101 3%
b1001011001 2%
b111110101 1%
b110000000000000000000100000000 0%
b100101101 -%
b11001001 "%
b1100101 u$
b100000000000000 A%
1B
b1000 A
1G
1<
#6300000000000
1]
0E
0G
0<
#6310000000000
1e
1l
b1100000 v
b10000000000000000000000000100 2"
b100010000000110110011 J
b100010000000110110011 Y
b100010000000110110011 \
b100010000000110110011 $"
b10011 o
b10011 s
b10011 u
b0 V
b0 x"
0P"
b0 &"
b0 S"
b0 W"
b0 ?"
b0 f"
b10011 b
b10011 %"
b10011 p"
b0 q"
b10000000000000000000000000100 1"
b10000000000000000000000000000 K
b10000000000000000000000000000 ^
b10000000000000000000000000000 !#
b0 A
1G
1<
#6320000000000
0G
0<
#6330000000000
1G
1<
#6340000000000
0G
0<
#6350000000000
1G
1<
#6360000000000
0]
b0 =
b100101110 >
b100100001100001011110100110000101110010011001000010000000110110 @
b1000111 ?
0B
b100100001100001011110100110000101110010011001000010000000110110 <%
b100101110 ;%
b1000000 :%
1E
0G
0<
#6370000000000
0l
b1000000 v
b10000000000000000000000001000 2"
b1100100010000000100011 J
b1100100010000000100011 Y
b1100100010000000100011 \
b1100100010000000100011 $"
b11001001 ."
b11001001 7%
b1100101 ,"
b1100101 8%
b1 V
b10 /"
b10 s$
b1 -"
b1 t$
b11 0"
b10000100000000000 ("
b1000010000000000 4"
b100000000010 +"
b10000000001 @"
b1 *"
b11 )"
b100010000000000000000 A"
b110011 o
b110011 s
b110011 u
b10000000000000000000000001000 1"
b10000000000000000000000000100 K
b10000000000000000000000000100 ^
b10000000000000000000000000100 !#
b100010000000110110011 b
b100010000000110110011 %"
b100010000000110110011 p"
b10000000000000000000000000000 q"
1Z"
1^"
1P"
b100 W"
b1 A
1G
1<
#6380000000000
0G
0<
#6390000000000
0e
1l
1g
b100101110 B"
b100101110 *#
b101000 v
1k$
1i$
1e$
18#
1d$
16#
1`$
b11000001 /#
12#
1\$
1o#
0f$
0C"
b100101110 (#
b100101110 .#
1H$
1^$
1Y$
1l#
11#
1b$
1]$
1D$
10#
b10000000000000000000000001100 2"
b1100101 )#
b1100101 ,#
b11001001 {"
b11001001 ##
b11001001 +#
b110000000000000000000100000000 ."
b110000000000000000000100000000 7%
b100101101 ,"
b100101101 8%
b0 J
b0 Y
b0 \
b0 $"
b1100101 |"
b1100101 %#
b1100101 ~"
b11001001 }"
b100 /"
b100 s$
b11 -"
b11 t$
b0 0"
b10 5"
b100010100000000010 ("
b10001010000000001 4"
b0 +"
b0 @"
b11 *"
b0 )"
b1100100010000000000000 A"
b10 m
b10 q
b100011 o
b100011 s
b100011 u
b10 V
b100 x"
1N"
0Z"
b11 g"
b1 j"
b10 h"
b100010000000000000000 `"
b10000100000000000 o"
b100000000010 l"
b11 n"
b1 m"
b1100101 k"
b11001001 i"
b10000000000000000100000000010 ?"
b10000000000000000000000000000 f"
b1100100010000000100011 b
b1100100010000000100011 %"
b1100100010000000100011 p"
b10000000000000000000000000100 q"
b10000000000000000000000001100 1"
b10000000000000000000000001000 K
b10000000000000000000000001000 ^
b10000000000000000000000001000 !#
b10 A
1G
1<
#6400000000000
0G
0<
#6410000000000
0l
0g
b110000000000000000000100000000 B"
b110000000000000000000100000000 *#
b0 v
b100 N
b100 R
b100 j
b100 I"
0p$
08#
0n$
0i$
0d$
06#
0j$
0e$
0`$
b0 /#
02#
0\$
0o#
1C$
1>$
1k$
0f$
b110000000000000000000100000000 (#
b110000000000000000000100000000 .#
0H$
b10000000000000000000000010000 2"
0^$
0Y$
0l#
01#
1?$
1:$
1g$
0b$
0]$
0D$
00#
b0 ."
b0 7%
b0 ,"
b0 8%
b10 6"
b0 )#
b0 ,#
b110000000000000000000100000000 {"
b110000000000000000000100000000 ##
b110000000000000000000100000000 +#
b11 V
b0 /"
b0 s$
b0 -"
b0 t$
b0 5"
b0 ("
b0 4"
b0 *"
b0 A"
b0 m
b0 q
b0 o
b0 s
b0 u
b0 |"
b0 %#
b100101110 ~"
b110000000000000000000100000000 }"
b11001010000000000000000 H
b11001010000000000000000 Q
b11001010000000000000000 h
b11001010000000000000000 F"
b100101110 >"
b100101110 3"
b10 H"
b1001011 O
b10000000000000000000000010000 1"
b10000000000000000000000001100 K
b10000000000000000000000001100 ^
b10000000000000000000000001100 !#
b0 b
b0 %"
b0 p"
b10000000000000000000000001000 q"
1Z"
1\"
0^"
b10 b"
b0 g"
b11 j"
b100 h"
b1100100010000000000000 `"
b100010100000000010 o"
b0 l"
b0 n"
b11 m"
b100101101 k"
b110000000000000000000100000000 i"
b10000000000000000000000000100 ?"
b10000000000000000000000000100 f"
0P"
b11 X"
b10000000000000000100000000010 &"
b10000000000000000100000000010 S"
b1100101 Y"
b100101110 M
b100101110 i
b100101110 x
b100101110 Q"
b10000000000000000000000000100 W"
1t"
b11 A
1G
1<
#6420000000000
0G
0<
#6430000000000
b0 B"
b0 *#
b1111 N
b1111 R
b1111 j
b1111 I"
0p$
0M$
0n$
0K$
0A$
0j$
0B$
b0 /#
0=$
1C"
0k$
0@$
0;$
0\$
0H$
0o#
08#
0C$
b0 (#
b0 .#
0>$
b0 6"
0h$
0Y$
0E$
0l#
05#
0?$
0:$
0g$
b10000000000000000000000010100 2"
b0 7"
b0 ~"
b0 )#
b0 ,#
b0 {"
b0 ##
b0 +#
b100101110 "#
b100101110 r$
b100101110 H
b100101110 Q
b100101110 h
b100101110 F"
b110000000000000000000100000000 >"
b110000000000000000000100000000 3"
b0 H"
b1000000 O
b0 |"
b0 %#
b0 }"
b100 V
b11 y"
b11 q$
b10000000000000000000000000100 x"
b100101110 u"
1L
1K"
0N"
0="
b10 T"
b0 X"
b10000000000000000000000000100 &"
b10000000000000000000000000100 S"
b100101110 Y"
b110000000000000000000100000000 M
b110000000000000000000100000000 i
b110000000000000000000100000000 x
b110000000000000000000100000000 Q"
b10000000000000000000000001000 W"
0Z"
0\"
b0 b"
b0 j"
b0 h"
b0 `"
b0 o"
b0 m"
b0 k"
b0 i"
b10000000000000000000000001000 ?"
b10000000000000000000000001000 f"
b10000000000000000000000001100 q"
b10000000000000000000000010100 1"
b10000000000000000000000010000 K
b10000000000000000000000010000 ^
b10000000000000000000000010000 !#
b100 A
1G
1<
#6440000000000
0G
0<
#6450000000000
b0 B"
b0 *#
b0 z"
b1 N
b1 R
b1 j
b1 I"
0M$
0C$
1C"
b0 (#
b0 .#
0p$
0K$
0A$
0n$
0B$
0=$
b0 /#
0j$
0@$
0;$
0h$
0?$
0:$
0g$
b0 )#
b0 ,#
b0 {"
b0 ##
b0 +#
b0 |"
b0 %#
b0 }"
b0 ~"
b10000000000000000000000011000 2"
b0 7"
b0 6"
b101 V
b0 H
b0 Q
b0 h
b0 F"
b0 >"
b0 3"
b0 O
b110000000000000000000100000000 "#
b110000000000000000000100000000 r$
b0 I
b0 T
b0 [
b0 y
b100101110 -%
b10000000000000000000000011000 1"
b10000000000000000000000010100 K
b10000000000000000000000010100 ^
b10000000000000000000000010100 !#
b10000000000000000000000010000 q"
b10000000000000000000000001100 ?"
b10000000000000000000000001100 f"
0L
0K"
1P"
1="
b0 T"
b10000000000000000000000001000 &"
b10000000000000000000000001000 S"
b0 Y"
b0 M
b0 i
b0 x
b0 Q"
b10000000000000000000000001100 W"
0t"
b0 y"
b0 q$
b10000000000000000000000001000 x"
b110000000000000000000100000000 u"
b101 A
1G
1<
#6460000000000
0G
0<
#6470000000000
b10000000000000000000000011100 2"
b0 "#
b0 r$
b110 V
b10000000000000000000000001100 x"
b0 u"
b10000000000000000000000001100 &"
b10000000000000000000000001100 S"
b10000000000000000000000010000 W"
b10000000000000000000000010000 ?"
b10000000000000000000000010000 f"
b10000000000000000000000010100 q"
b10000000000000000000000011100 1"
b10000000000000000000000011000 K
b10000000000000000000000011000 ^
b10000000000000000000000011000 !#
b100000 @%
b110000011101 /%
b101110111001 .%
b101101010101 ,%
b101011110001 +%
b101010001101 *%
b101000101001 )%
b100111000101 (%
b100101100001 '%
b100011111101 &%
b100010011001 %%
b100000110101 $%
b11111010001 #%
b11101101101 !%
b11100001001 ~$
b11010100101 }$
b11001000001 |$
b10111011101 {$
b10101111001 z$
b10100010101 y$
b10010110001 x$
b10001001101 w$
b1111101001 v$
b1110000101 5%
b1100100001 4%
b1010111101 3%
b1001011001 2%
b111110101 1%
b110010001 0%
b100101101 -%
b11001001 "%
b110000000000000000000100000000 u$
b100000000000000 A%
1B
b110 A
1G
1<
#6480000000000
1]
0E
0G
0<
#6490000000000
1e
1l
b1100000 v
b10000000000000000000000000100 2"
b1010000100000011 J
b1010000100000011 Y
b1010000100000011 \
b1010000100000011 $"
b0 V
b10011 o
b10011 s
b10011 u
b10000000000000000000000000100 1"
b10000000000000000000000000000 K
b10000000000000000000000000000 ^
b10000000000000000000000000000 !#
b10011 b
b10011 %"
b10011 p"
b0 q"
b0 ?"
b0 f"
0P"
b0 &"
b0 S"
b0 W"
b0 x"
b0 A
1G
1<
#6500000000000
0G
0<
#6510000000000
1G
1<
#6520000000000
0G
0<
#6530000000000
1G
1<
#6540000000000
0]
b110010001 =
b10010001101000101011110100101 >
b100100001100001011110100110000101110010011001000010000000110111 @
b1001000 ?
0B
b100100001100001011110100110000101110010011001000010000000110111 ?%
b10010001101000101011110100101 =%
b100 >%
1E
0G
0<
#6550000000000
1f
b1110000 v
b10000000000000000000000001000 2"
b110000000000000000000100000000 ."
b110000000000000000000100000000 7%
b1000011000001000110011 J
b1000011000001000110011 Y
b1000011000001000110011 \
b1000011000001000110011 $"
b1 /"
b1 s$
b10 0"
b10 5"
b1010000000000000 ("
b101000000000000 4"
b10 +"
b1 @"
b10 )"
b1010000000000000 A"
b10 m
b10 q
b11 o
b11 s
b11 u
b1 V
1P"
b100 W"
1Z"
1^"
b1010000100000011 b
b1010000100000011 %"
b1010000100000011 p"
b10000000000000000000000000000 q"
b10000000000000000000000001000 1"
b10000000000000000000000000100 K
b10000000000000000000000000100 ^
b10000000000000000000000000100 !#
b1 A
1G
1<
#6560000000000
0G
0<
#6570000000000
0l
0f
b110000000000000000000100000000 B"
b110000000000000000000100000000 *#
b1000000 v
1C$
1>$
0C"
b110000000000000000000100000000 (#
b110000000000000000000100000000 .#
1k$
1'"
b10000000000000000000000001100 2"
1?$
1:$
1g$
b0 J
b0 Y
b0 \
b0 $"
b100101101 ."
b100101101 7%
b11001001 ,"
b11001001 8%
b110000000000000000000100000000 {"
b110000000000000000000100000000 ##
b110000000000000000000100000000 +#
b10 V
b11 /"
b11 s$
b10 -"
b10 t$
b100 0"
b0 5"
b11000000000000010 ("
b1100000000000001 4"
b100 +"
b10 @"
b10 *"
b100 )"
b1000011000000000000000 A"
b0 m
b0 q
b110011 o
b110011 s
b110011 u
b110000000000000000000100000000 }"
b10000000000000000000000001100 1"
b10000000000000000000000001000 K
b10000000000000000000000001000 ^
b10000000000000000000000001000 !#
b1000011000001000110011 b
b1000011000001000110011 %"
b1000011000001000110011 p"
b10000000000000000000000000100 q"
1]"
b10 b"
b10 g"
b1 h"
b1010000000000000 `"
b1010000000000000 o"
b10 l"
b10 n"
b110000000000000000000100000000 i"
b10000000000000000000000000010 ?"
b10000000000000000000000000000 f"
1N"
b100 x"
b10 A
1G
1<
#6580000000000
0G
0<
#6590000000000
b10010001101000101011001111000 z"
b1111 N
b1111 R
b1111 j
b1111 I"
b10010001101000101011001111000 I
b10010001101000101011001111000 T
b10010001101000101011001111000 [
b10010001101000101011001111000 y
0'"
b110000000000000000000100000000 >"
b110000000000000000000100000000 3"
b1000000 O
1t"
1L"
0P"
0="
b10 T"
b10 X"
b10000000000000000000000000010 &"
b10000000000000000000000000010 S"
b110000000000000000000100000000 M
b110000000000000000000100000000 i
b110000000000000000000100000000 x
b110000000000000000000100000000 Q"
b10000000000000000000000000100 W"
0]"
0^"
b11 A
1G
1<
#6600000000000
0G
0<
#6610000000000
0e
b10010001101000101011110100101 B"
b10010001101000101011110100101 *#
b0 v
1d$
1`$
1_$
1[$
1Z$
1/$
1y#
1t#
1e#
1Q#
1G#
1=#
1p$
13#
1V$
0W$
08#
1;$
1,$
1v#
1q#
1b#
1N#
1D#
1:#
1m$
1Y$
1T$
1U$
06#
1G$
b1111000 /#
02#
1f$
0a$
0C$
1>$
1\$
b10010001101000101011110100101 (#
b10010001101000101011110100101 .#
1o#
b1 6"
b10000000000000000000000010000 2"
0c$
1^$
1E$
01#
0?$
0:$
1X$
1D$
1k#
10#
b0 ."
b0 7%
b10010001101000101011001111000 )#
b10010001101000101011001111000 ,#
b100101101 {"
b100101101 ##
b100101101 +#
b11 V
b0 /"
b0 s$
b0 -"
b0 t$
b0 0"
b0 ("
b0 4"
b0 +"
b0 @"
b0 *"
b0 )"
b0 A"
b0 o
b0 s
b0 u
b10010001101000101011001111000 |"
b10010001101000101011001111000 %#
b10010001101000101011001111000 ~"
b100101101 }"
b0 ,"
b0 8%
b10010001101000101011001111000 "#
b10010001101000101011001111000 r$
b10000000000000000000000010000 1"
b10000000000000000000000001100 K
b10000000000000000000000001100 ^
b10000000000000000000000001100 !#
b0 b
b0 %"
b0 p"
b10000000000000000000000001000 q"
0Z"
1^"
b0 b"
b100 g"
b10 j"
b11 h"
b1000011000000000000000 `"
b11000000000000010 o"
b100 l"
b100 n"
b10 m"
b11001001 k"
b100101101 i"
b10000000000000000000000001000 ?"
b10000000000000000000000000100 f"
0L"
0N"
1s"
b10 y"
b10 q$
b10000000000000000000000000100 x"
b10010001101000101011001111000 r"
b110000000000000000000100000000 u"
b100 A
1G
1<
#6620000000000
0G
0<
#6630000000000
b0 B"
b0 *#
b0 z"
b10 N
b10 R
b10 j
b10 I"
1C"
0f$
0>$
0d$
0_$
0Z$
0C$
0/$
0y#
0t#
0e#
0Q#
0G#
0=#
0p$
0a$
0`$
0[$
0V$
0;$
0U$
b0 /#
0G$
0@$
0,$
0v#
0q#
0b#
0N#
0D#
0:#
0m$
0h$
0^$
0Y$
0T$
0E$
0k$
0\$
0H$
0o#
b0 (#
b0 .#
03#
b0 )#
b0 ,#
b0 |"
b0 %#
b0 6"
0g$
0X$
0D$
0k#
00#
b10000000000000000000000010100 2"
b0 ~"
b0 I
b0 T
b0 [
b0 y
b0 {"
b0 ##
b0 +#
b110000000000000000000100000000 "#
b110000000000000000000100000000 r$
b110100010101100111100000000000 H
b110100010101100111100000000000 Q
b110100010101100111100000000000 h
b110100010101100111100000000000 F"
b10010001101000101011110100101 >"
b10010001101000101011110100100 3"
b1 H"
b1010111101001 O
b0 }"
b100 V
0s"
0t"
1N"
1="
b0 T"
b100 X"
b10000000000000000000000001000 &"
b10000000000000000000000001000 S"
b10010001101000101011001111000 Y"
b10010001101000101011110100101 M
b10010001101000101011110100101 i
b10010001101000101011110100101 x
b10010001101000101011110100101 Q"
b10000000000000000000000001000 W"
0^"
b0 g"
b0 j"
b0 h"
b0 `"
b0 o"
b0 l"
b0 n"
b0 m"
b0 k"
b0 i"
b10000000000000000000000001000 ?"
b10000000000000000000000001000 f"
b10000000000000000000000001100 q"
b10000000000000000000000010100 1"
b10000000000000000000000010000 K
b10000000000000000000000010000 ^
b10000000000000000000000010000 !#
b10010001101000101011001111000 "%
b101 A
1G
1<
#6640000000000
0G
0<
#6650000000000
b1 N
b1 R
b1 j
b1 I"
b10000000000000000000000011000 2"
b0 7"
b0 6"
b101 V
b0 H
b0 Q
b0 h
b0 F"
b0 >"
b0 3"
b0 H"
b0 O
b10010001101000101011110100101 "#
b10010001101000101011110100101 r$
b10000000000000000000000011000 1"
b10000000000000000000000010100 K
b10000000000000000000000010100 ^
b10000000000000000000000010100 !#
b10000000000000000000000010000 q"
b10000000000000000000000001100 ?"
b10000000000000000000000001100 f"
0N"
1P"
b0 X"
b0 Y"
b0 M
b0 i
b0 x
b0 Q"
b10000000000000000000000001100 W"
1t"
b100 y"
b100 q$
b10000000000000000000000001000 x"
b0 r"
b10010001101000101011110100101 u"
b110 A
1G
1<
#6660000000000
0G
0<
#6670000000000
b0 7"
b0 6"
b10000000000000000000000011100 2"
b0 "#
b0 r$
b110 V
0t"
b0 y"
b0 q$
b10000000000000000000000001100 x"
b0 u"
b10000000000000000000000001100 &"
b10000000000000000000000001100 S"
b10000000000000000000000010000 W"
b10000000000000000000000010000 ?"
b10000000000000000000000010000 f"
b10000000000000000000000010100 q"
b10000000000000000000000011100 1"
b10000000000000000000000011000 K
b10000000000000000000000011000 ^
b10000000000000000000000011000 !#
b10010001101000101011110100101 0%
b111 A
1G
1<
#6680000000000
0G
0<
#6690000000000
b10000000000000000000000100000 2"
b111 V
b10000000000000000000000100000 1"
b10000000000000000000000011100 K
b10000000000000000000000011100 ^
b10000000000000000000000011100 !#
b10000000000000000000000011000 q"
b10000000000000000000000010100 ?"
b10000000000000000000000010100 f"
b10000000000000000000000010000 &"
b10000000000000000000000010000 S"
b10000000000000000000000010100 W"
b10000000000000000000000010000 x"
b10000000 &
b1000000 %
b100000 @%
b110000011101 /%
b101110111001 .%
b101101010101 ,%
b101011110001 +%
b101010001101 *%
b101000101001 )%
b100111000101 (%
b100101100001 '%
b100011111101 &%
b100010011001 %%
b100000110101 $%
b11111010001 #%
b11101101101 !%
b11100001001 ~$
b11010100101 }$
b11001000001 |$
b10111011101 {$
b10101111001 z$
b10100010101 y$
b10010110001 x$
b10001001101 w$
b1111101001 v$
b1110000101 5%
b1100100001 4%
b1010111101 3%
b1001011001 2%
b111110101 1%
b110000000000000000001000000000 0%
b100101101 -%
b11001001 "%
b110000000000000000000100000000 u$
b100000000000000 A%
1B
b1000 A
1G
1<
#6700000000000
1]
0E
0G
0<
#6710000000000
1e
1l
b1100000 v
b10000000000000000000000000100 2"
b1010000100000011 J
b1010000100000011 Y
b1010000100000011 \
b1010000100000011 $"
b10011 o
b10011 s
b10011 u
b0 V
b0 x"
0P"
b0 &"
b0 S"
b0 W"
b0 ?"
b0 f"
b10011 b
b10011 %"
b10011 p"
b0 q"
b10000000000000000000000000100 1"
b10000000000000000000000000000 K
b10000000000000000000000000000 ^
b10000000000000000000000000000 !#
b0 A
1G
1<
#6720000000000
0G
0<
#6730000000000
1G
1<
#6740000000000
0G
0<
#6750000000000
1G
1<
#6760000000000
0]
b0 =
b10010001101000101011001111000 >
b100100001100001011110100110000101110010011001000010000000111000 @
b1001001 ?
0B
b100100001100001011110100110000101110010011001000010000000111000 <%
b10010001101000101011001111000 ;%
b10000000 :%
1E
0G
0<
#6770000000000
1f
b1110000 v
b10000000000000000000000001000 2"
b1000100010000000100011 J
b1000100010000000100011 Y
b1000100010000000100011 \
b1000100010000000100011 $"
b110000000000000000000100000000 ."
b110000000000000000000100000000 7%
b1 V
b1 /"
b1 s$
b10 0"
b10 5"
b1010000000000000 ("
b101000000000000 4"
b10 +"
b1 @"
b10 )"
b1010000000000000 A"
b10 m
b10 q
b11 o
b11 s
b11 u
b10000000000000000000000001000 1"
b10000000000000000000000000100 K
b10000000000000000000000000100 ^
b10000000000000000000000000100 !#
b1010000100000011 b
b1010000100000011 %"
b1010000100000011 p"
b10000000000000000000000000000 q"
1Z"
1^"
1P"
b100 W"
b1 A
1G
1<
#6780000000000
0G
0<
#6790000000000
0e
0f
1g
b110000000000000000000100000000 B"
b110000000000000000000100000000 *#
b101000 v
1C$
1>$
0C"
b110000000000000000000100000000 (#
b110000000000000000000100000000 .#
1k$
1?$
1:$
1g$
b10000000000000000000000001100 2"
1'"
b110000000000000000000100000000 {"
b110000000000000000000100000000 ##
b110000000000000000000100000000 +#
b110000000000000000001000000000 ."
b110000000000000000001000000000 7%
b11001001 ,"
b11001001 8%
b0 J
b0 Y
b0 \
b0 $"
b110000000000000000000100000000 }"
b100 /"
b100 s$
b10 -"
b10 t$
b0 0"
b100010000000000010 ("
b10001000000000001 4"
b0 +"
b0 @"
b10 *"
b0 )"
b1000100010000000000000 A"
b100011 o
b100011 s
b100011 u
b10 V
b100 x"
1N"
1]"
b10 b"
b10 g"
b1 h"
b1010000000000000 `"
b1010000000000000 o"
b10 l"
b10 n"
b110000000000000000000100000000 i"
b10000000000000000000000000010 ?"
b10000000000000000000000000000 f"
b1000100010000000100011 b
b1000100010000000100011 %"
b1000100010000000100011 p"
b10000000000000000000000000100 q"
b10000000000000000000000001100 1"
b10000000000000000000000001000 K
b10000000000000000000000001000 ^
b10000000000000000000000001000 !#
b10 A
1G
1<
#6800000000000
0G
0<
#6810000000000
b10010001101000101011001111000 z"
b1111 N
b1111 R
b1111 j
b1111 I"
0'"
b10010001101000101011001111000 I
b10010001101000101011001111000 T
b10010001101000101011001111000 [
b10010001101000101011001111000 y
b110000000000000000000100000000 >"
b110000000000000000000100000000 3"
b1000000 O
0]"
0^"
1L"
0P"
0="
b10 T"
b10 X"
b10000000000000000000000000010 &"
b10000000000000000000000000010 S"
b110000000000000000000100000000 M
b110000000000000000000100000000 i
b110000000000000000000100000000 x
b110000000000000000000100000000 Q"
b10000000000000000000000000100 W"
1t"
b11 A
1G
1<
#6820000000000
0G
0<
#6830000000000
0l
0g
b110000000000000000001000000000 B"
b110000000000000000001000000000 *#
b0 v
1p$
b110000000000000000001000000000 (#
b110000000000000000001000000000 .#
0k$
1l$
0g$
b10000000000000000000000010000 2"
b1 6"
b110000000000000000001000000000 {"
b110000000000000000001000000000 ##
b110000000000000000001000000000 +#
b0 ."
b0 7%
b0 ,"
b0 8%
b10010001101000101011001111000 "#
b10010001101000101011001111000 r$
b10010001101000101011001111000 ~"
b110000000000000000001000000000 }"
b0 /"
b0 s$
b0 -"
b0 t$
b0 5"
b0 ("
b0 4"
b0 *"
b0 A"
b0 m
b0 q
b0 o
b0 s
b0 u
b11 V
1s"
b10 y"
b10 q$
b10000000000000000000000000100 x"
b10010001101000101011001111000 r"
b110000000000000000000100000000 u"
0L"
0N"
1\"
b0 g"
b10 j"
b100 h"
b1000100010000000000000 `"
b100010000000000010 o"
b0 l"
b0 n"
b10 m"
b11001001 k"
b110000000000000000001000000000 i"
b10000000000000000000000000100 ?"
b10000000000000000000000000100 f"
b0 b
b0 %"
b0 p"
b10000000000000000000000001000 q"
b10000000000000000000000010000 1"
b10000000000000000000000001100 K
b10000000000000000000000001100 ^
b10000000000000000000000001100 !#
b100 A
1G
1<
#6840000000000
0G
0<
#6850000000000
b0 B"
b0 *#
b0 z"
1C"
0C$
0>$
0k$
b0 (#
b0 .#
0p$
b10000000000000000000000010100 2"
b0 6"
0@$
0;$
0h$
0?$
0:$
0l$
b0 )#
b0 ,#
b0 {"
b0 ##
b0 +#
b10010001101000101011001111000 H
b10010001101000101011001111000 Q
b10010001101000101011001111000 h
b10010001101000101011001111000 F"
b0 I
b0 T
b0 [
b0 y
b100 V
b0 |"
b0 %#
b0 ~"
b0 }"
b110000000000000000001000000000 >"
b110000000000000000001000000000 3"
b10000000 O
b110000000000000000000100000000 "#
b110000000000000000000100000000 r$
b10010001101000101011001111000 "%
b10000000000000000000000010100 1"
b10000000000000000000000010000 K
b10000000000000000000000010000 ^
b10000000000000000000000010000 !#
b10000000000000000000000001100 q"
0Z"
0\"
b0 b"
b0 j"
b0 h"
b0 `"
b0 o"
b0 m"
b0 k"
b0 i"
b10000000000000000000000001000 ?"
b10000000000000000000000001000 f"
1L
1K"
b0 X"
b10000000000000000000000000100 &"
b10000000000000000000000000100 S"
b10010001101000101011001111000 Y"
b110000000000000000001000000000 M
b110000000000000000001000000000 i
b110000000000000000001000000000 x
b110000000000000000001000000000 Q"
b10000000000000000000000001000 W"
0s"
0t"
b101 A
1G
1<
#6860000000000
0G
0<
#6870000000000
b1 N
b1 R
b1 j
b1 I"
b10000000000000000000000011000 2"
b110000000000000000001000000000 "#
b110000000000000000001000000000 r$
b0 H
b0 Q
b0 h
b0 F"
b0 >"
b0 3"
b0 O
b101 V
b0 y"
b0 q$
b10000000000000000000000001000 x"
b0 r"
b110000000000000000001000000000 u"
0L
0K"
1P"
1="
b0 T"
b10000000000000000000000001000 &"
b10000000000000000000000001000 S"
b0 Y"
b0 M
b0 i
b0 x
b0 Q"
b10000000000000000000000001100 W"
b10000000000000000000000001100 ?"
b10000000000000000000000001100 f"
b10000000000000000000000010000 q"
b10000000000000000000000011000 1"
b10000000000000000000000010100 K
b10000000000000000000000010100 ^
b10000000000000000000000010100 !#
b110 A
1G
1<
#6880000000000
0G
0<
#6890000000000
b10000000000000000000000011100 2"
b110 V
b0 "#
b0 r$
b10000000000000000000000011100 1"
b10000000000000000000000011000 K
b10000000000000000000000011000 ^
b10000000000000000000000011000 !#
b10000000000000000000000010100 q"
b10000000000000000000000010000 ?"
b10000000000000000000000010000 f"
b10000000000000000000000001100 &"
b10000000000000000000000001100 S"
b10000000000000000000000010000 W"
b10000000000000000000000001100 x"
b0 u"
b100000 @%
b110000011101 /%
b101110111001 .%
b101101010101 ,%
b101011110001 +%
b101010001101 *%
b101000101001 )%
b100111000101 (%
b100101100001 '%
b100011111101 &%
b100010011001 %%
b100000110101 $%
b11111010001 #%
b11101101101 !%
b11100001001 ~$
b11010100101 }$
b11001000001 |$
b10111011101 {$
b10101111001 z$
b10100010101 y$
b10010110001 x$
b10001001101 w$
b1111101001 v$
b1110000101 5%
b1100100001 4%
b1010111101 3%
b1001011001 2%
b111110101 1%
b110010001 0%
b100101101 -%
b11001001 "%
b110000000000000000000100000000 u$
b100000000000000 A%
1B
b0 A
1G
1<
#6900000000000
1]
0E
0G
0<
#6910000000000
1e
1l
b1100000 v
b10000000000000000000000000100 2"
b1010000100000011 J
b1010000100000011 Y
b1010000100000011 \
b1010000100000011 $"
b10011 o
b10011 s
b10011 u
b0 V
b0 x"
0P"
b0 &"
b0 S"
b0 W"
b0 ?"
b0 f"
b10011 b
b10011 %"
b10011 p"
b0 q"
b10000000000000000000000000100 1"
b10000000000000000000000000000 K
b10000000000000000000000000000 ^
b10000000000000000000000000000 !#
1G
1<
#6920000000000
0G
0<
#6930000000000
1G
1<
#6940000000000
0G
0<
#6950000000000
1G
1<
#6960000000000
0]
b110010001 >
b100100001100001011110100110000101110010011001000010000000111001 @
b1001010 ?
0B
b100100001100001011110100110000101110010011001000010000000111001 <%
b110010001 ;%
1E
0G
0<
#6970000000000
1f
b1110000 v
b10000000000000000000000001000 2"
b10000010010000000100011 J
b10000010010000000100011 Y
b10000010010000000100011 \
b10000010010000000100011 $"
b110000000000000000000100000000 ."
b110000000000000000000100000000 7%
b1 V
b1 /"
b1 s$
b10 0"
b10 5"
b1010000000000000 ("
b101000000000000 4"
b10 +"
b1 @"
b10 )"
b1010000000000000 A"
b10 m
b10 q
b11 o
b11 s
b11 u
b10000000000000000000000001000 1"
b10000000000000000000000000100 K
b10000000000000000000000000100 ^
b10000000000000000000000000100 !#
b1010000100000011 b
b1010000100000011 %"
b1010000100000011 p"
b10000000000000000000000000000 q"
1Z"
1^"
1P"
b100 W"
b1 A
1G
1<
#6980000000000
0G
0<
#6990000000000
0e
0f
1g
b110000000000000000000100000000 B"
b110000000000000000000100000000 *#
b101000 v
1C$
1>$
0C"
b110000000000000000000100000000 (#
b110000000000000000000100000000 .#
1k$
1?$
1:$
1g$
b10000000000000000000000001100 2"
1'"
b110000000000000000000100000000 {"
b110000000000000000000100000000 ##
b110000000000000000000100000000 +#
b11001001 ."
b11001001 7%
b110010001 ,"
b110010001 8%
b0 J
b0 Y
b0 \
b0 $"
b110000000000000000000100000000 }"
b10 /"
b10 s$
b100 -"
b100 t$
b0 0"
b10010000000000100 ("
b1001000000000010 4"
b0 +"
b0 @"
b100 *"
b0 )"
b10000010010000000000000 A"
b100011 o
b100011 s
b100011 u
b10 V
b100 x"
1N"
1]"
b10 b"
b10 g"
b1 h"
b1010000000000000 `"
b1010000000000000 o"
b10 l"
b10 n"
b110000000000000000000100000000 i"
b10000000000000000000000000010 ?"
b10000000000000000000000000000 f"
b10000010010000000100011 b
b10000010010000000100011 %"
b10000010010000000100011 p"
b10000000000000000000000000100 q"
b10000000000000000000000001100 1"
b10000000000000000000000001000 K
b10000000000000000000000001000 ^
b10000000000000000000000001000 !#
b10 A
1G
1<
#7000000000000
0G
0<
#7010000000000
b110000000000000000001000000000 z"
b1111 N
b1111 R
b1111 j
b1111 I"
0'"
b110000000000000000001000000000 I
b110000000000000000001000000000 T
b110000000000000000001000000000 [
b110000000000000000001000000000 y
b110000000000000000000100000000 >"
b110000000000000000000100000000 3"
b1000000 O
0]"
0^"
1L"
0P"
0="
b10 T"
b10 X"
b10000000000000000000000000010 &"
b10000000000000000000000000010 S"
b110000000000000000000100000000 M
b110000000000000000000100000000 i
b110000000000000000000100000000 x
b110000000000000000000100000000 Q"
b10000000000000000000000000100 W"
1t"
b11 A
1G
1<
#7020000000000
0G
0<
#7030000000000
0l
0g
b110000000000000000001000000000 B"
b110000000000000000001000000000 *#
b0 v
1p$
1l$
0C"
1C$
1>$
0k$
0f$
0a$
0H$
b110000000000000000001000000000 (#
b110000000000000000001000000000 .#
03#
1?$
1:$
0g$
0b$
0]$
0D$
00#
b10000000000000000000000010000 2"
b1 7"
b110000000000000000001000000000 {"
b110000000000000000001000000000 ##
b110000000000000000001000000000 +#
b0 ."
b0 7%
b0 ,"
b0 8%
b110000000000000000001000000000 "#
b110000000000000000001000000000 r$
b110010001 ~"
b110000000000000000001000000000 }"
b0 /"
b0 s$
b0 -"
b0 t$
b0 5"
b0 ("
b0 4"
b0 *"
b0 A"
b0 m
b0 q
b0 o
b0 s
b0 u
b11 V
1s"
b10 y"
b10 q$
b10000000000000000000000000100 x"
b110000000000000000001000000000 r"
b110000000000000000000100000000 u"
0L"
0N"
1\"
b0 g"
b100 j"
b10 h"
b10000010010000000000000 `"
b10010000000000100 o"
b0 l"
b0 n"
b100 m"
b110010001 k"
b11001001 i"
b10000000000000000000000000100 ?"
b10000000000000000000000000100 f"
b0 b
b0 %"
b0 p"
b10000000000000000000000001000 q"
b10000000000000000000000010000 1"
b10000000000000000000000001100 K
b10000000000000000000000001100 ^
b10000000000000000000000001100 !#
b100 A
1G
1<
#7040000000000
0G
0<
#7050000000000
b0 B"
b0 *#
b0 z"
1C"
0C$
0>$
0?$
0:$
0p$
b0 (#
b0 .#
0k$
b10000000000000000000000010100 2"
b0 7"
0l$
0g$
b0 {"
b0 ##
b0 +#
b110010001 H
b110010001 Q
b110010001 h
b110010001 F"
b0 I
b0 T
b0 [
b0 y
b100 V
b0 ~"
b0 }"
b110000000000000000001000000000 >"
b110000000000000000001000000000 3"
b10000000 O
b110000000000000000000100000000 "#
b110000000000000000000100000000 r$
b110000000000000000001000000000 "%
b10000000000000000000000010100 1"
b10000000000000000000000010000 K
b10000000000000000000000010000 ^
b10000000000000000000000010000 !#
b10000000000000000000000001100 q"
0Z"
0\"
b0 b"
b0 j"
b0 h"
b0 `"
b0 o"
b0 m"
b0 k"
b0 i"
b10000000000000000000000001000 ?"
b10000000000000000000000001000 f"
1L
1K"
b0 X"
b10000000000000000000000000100 &"
b10000000000000000000000000100 S"
b110010001 Y"
b110000000000000000001000000000 M
b110000000000000000001000000000 i
b110000000000000000001000000000 x
b110000000000000000001000000000 Q"
b10000000000000000000000001000 W"
0s"
0t"
b101 A
1G
1<
#7060000000000
0G
0<
#7070000000000
b1 N
b1 R
b1 j
b1 I"
b10000000000000000000000011000 2"
b110000000000000000001000000000 "#
b110000000000000000001000000000 r$
b0 H
b0 Q
b0 h
b0 F"
b0 >"
b0 3"
b0 O
b101 V
b0 y"
b0 q$
b10000000000000000000000001000 x"
b0 r"
b110000000000000000001000000000 u"
0L
0K"
1P"
1="
b0 T"
b10000000000000000000000001000 &"
b10000000000000000000000001000 S"
b0 Y"
b0 M
b0 i
b0 x
b0 Q"
b10000000000000000000000001100 W"
b10000000000000000000000001100 ?"
b10000000000000000000000001100 f"
b10000000000000000000000010000 q"
b10000000000000000000000011000 1"
b10000000000000000000000010100 K
b10000000000000000000000010100 ^
b10000000000000000000000010100 !#
b110 A
1G
1<
#7080000000000
0G
0<
#7090000000000
b10000000000000000000000011100 2"
b110 V
b0 "#
b0 r$
b10000000000000000000000011100 1"
b10000000000000000000000011000 K
b10000000000000000000000011000 ^
b10000000000000000000000011000 !#
b10000000000000000000000010100 q"
b10000000000000000000000010000 ?"
b10000000000000000000000010000 f"
b10000000000000000000000001100 &"
b10000000000000000000000001100 S"
b10000000000000000000000010000 W"
b10000000000000000000000001100 x"
b0 u"
b100000000000000001111111110 4
b111111110000 .
b100000 @%
b110000011101 /%
b101110111001 .%
b101101010101 ,%
b101011110001 +%
b101010001101 *%
b101000101001 )%
b100111000101 (%
b100101100001 '%
b100011111101 &%
b100010011001 %%
b100000110101 $%
b11111010001 #%
b11101101101 !%
b11100001001 ~$
b11010100101 }$
b11001000001 |$
b10111011101 {$
b10101111001 z$
b10100010101 y$
b10010110001 x$
b10001001101 w$
b1111101001 v$
b1110000101 5%
b1100100001 4%
b1010111101 3%
b1001011001 2%
b111110101 1%
b110010001 0%
b100101101 -%
b11001001 "%
b1100101 u$
b100000000000000 A%
1B
b0 A
1G
1<
#7100000000000
1]
0E
0G
0<
#7110000000000
1e
1l
b1100000 v
b10000000000000000000000000100 2"
b100100000001100110011 J
b100100000001100110011 Y
b100100000001100110011 \
b100100000001100110011 $"
b10011 o
b10011 s
b10011 u
b0 V
b0 x"
0P"
b0 &"
b0 S"
b0 W"
b0 ?"
b0 f"
b10011 b
b10011 %"
b10011 p"
b0 q"
b10000000000000000000000000100 1"
b10000000000000000000000000000 K
b10000000000000000000000000000 ^
b10000000000000000000000000000 !#
1G
1<
#7120000000000
0G
0<
#7130000000000
1G
1<
#7140000000000
0G
0<
#7150000000000
1G
1<
#7160000000000
0]
b10001001101 =
b1100100 >
b100100001100001011110100110000101110010011001000010000000110001001100000010000000110010 @
b1001100 ?
0B
b100100001100001011110100110000101110010011001000010000000110001001100000010000000110010 ?%
b1100100 =%
b1011 >%
1E
0G
0<
#7170000000000
0l
b1000000 v
b10000000000000000000000001000 2"
b1000011000001110110011 J
b1000011000001110110011 Y
b1000011000001110110011 \
b1000011000001110110011 $"
b110010001 ."
b110010001 7%
b1100101 ,"
b1100101 8%
b1 V
b100 /"
b100 s$
b1 -"
b1 t$
b110 0"
b100000100000000000 ("
b10000010000000000 4"
b110 +"
b11 @"
b1 *"
b110 )"
b100100000000000000000 A"
b110011 o
b110011 s
b110011 u
b10000000000000000000000001000 1"
b10000000000000000000000000100 K
b10000000000000000000000000100 ^
b10000000000000000000000000100 !#
b100100000001100110011 b
b100100000001100110011 %"
b100100000001100110011 p"
b10000000000000000000000000000 q"
1Z"
1^"
1P"
b100 W"
b1 A
1G
1<
#7180000000000
0G
0<
#7190000000000
b111110110 B"
b111110110 *#
18#
16#
b1 /#
12#
1a$
1\$
1o#
1k$
1f$
0C"
b111110110 (#
b111110110 .#
1W$
1^$
1Y$
1l#
11#
1g$
1b$
1S$
10#
b10000000000000000000000001100 2"
b1100101 )#
b1100101 ,#
b110010001 {"
b110010001 ##
b110010001 +#
b100101101 ."
b100101101 7%
b11001001 ,"
b11001001 8%
b1111110011000111000100011100011 J
b1111110011000111000100011100011 Y
b1111110011000111000100011100011 \
b1111110011000111000100011100011 $"
b1100101 |"
b1100101 %#
b1100101 ~"
b110010001 }"
b11 /"
b11 s$
b10 -"
b10 t$
b111 0"
b11000000000000010 ("
b1100000000000001 4"
b100000000110 +"
b10000000011 @"
b10 *"
b111 )"
b1000011000000000000000 A"
b10 V
b100 x"
1N"
0Z"
b110 g"
b1 j"
b100 h"
b100100000000000000000 `"
b100000100000000000 o"
b110 l"
b110 n"
b1 m"
b1100101 k"
b110010001 i"
b10000000000000000000000000110 ?"
b10000000000000000000000000000 f"
b1000011000001110110011 b
b1000011000001110110011 %"
b1000011000001110110011 p"
b10000000000000000000000000100 q"
b10000000000000000000000001100 1"
b10000000000000000000000001000 K
b10000000000000000000000001000 ^
b10000000000000000000000001000 !#
b10 A
1G
1<
#7200000000000
0G
0<
#7210000000000
0e
1c
b111110110 B"
b111110110 *#
b10000 k
b10000 p
b10000 t
b10000 w
b100 v
b100 N
b100 R
b100 j
b100 I"
1U$
b1001 /#
1G$
b111110110 (#
b111110110 .#
1W$
b10000000000000000000000010000 2"
1c$
0Y$
1E$
0l#
0b$
1X$
0S$
1D$
1k#
b100001001000010100110011 J
b100001001000010100110011 Y
b100001001000010100110011 \
b100001001000010100110011 $"
b1010111101 ."
b1010111101 7%
b1001011001 ,"
b1001011001 8%
b11001001 )#
b11001001 ,#
b100101101 {"
b100101101 ##
b100101101 +#
b11 V
b111 /"
b111 s$
b110 -"
b110 t$
b10001 0"
b111000011111100110 ("
b11100001111110011 4"
b111111110000 +"
b11111111000 @"
b11111100110 *"
b11111110001 )"
b1111110011000111000000000000000 A"
b111111 n
b111111 r
b1100011 o
b1100011 s
b1100011 u
b11001001 |"
b11001001 %#
b11001001 ~"
b100101101 }"
b11001010000000000000000 H
b11001010000000000000000 Q
b11001010000000000000000 h
b11001010000000000000000 F"
b111110110 >"
b111110110 3"
b10 H"
b1111101 O
b10000000000000000000000010000 1"
b10000000000000000000000001100 K
b10000000000000000000000001100 ^
b10000000000000000000000001100 !#
b1111110011000111000100011100011 b
b1111110011000111000100011100011 %"
b1111110011000111000100011100011 p"
b10000000000000000000000001000 q"
b111 g"
b10 j"
b11 h"
b1000011000000000000000 `"
b11000000000000010 o"
b100000000110 l"
b111 n"
b10 m"
b11001001 k"
b100101101 i"
b10000000000000000100000001010 ?"
b10000000000000000000000000100 f"
0P"
b110 X"
b10000000000000000000000000110 &"
b10000000000000000000000000110 S"
b1100101 Y"
b111110110 M
b111110110 i
b111110110 x
b111110110 Q"
b10000000000000000000000000100 W"
1t"
b11 A
1G
1<
#7220000000000
0G
0<
#7230000000000
1e
0c
b0 B"
b0 *#
b0 k
b0 p
b0 t
b0 w
b1000000 v
1C"
0'#
1G"
1Q$
0D"
1P$
1L$
1K$
1B$
1A$
1=$
1<$
18$
17$
13$
12$
1.$
1-$
1)$
1($
1$$
1#$
1}#
1|#
1x#
1w#
1s#
1r#
1i#
1h#
1d#
1c#
1_#
1^#
1Z#
1Y#
1U#
1T#
1P#
1O#
1K#
1J#
1F#
1E#
1A#
1d$
1`$
1@#
0p$
1<#
1n$
16#
1i$
1j$
12#
1e$
0&#
1_$
1U$
1F$
1;#
0k$
0f$
0W$
0E"
1[$
1Z$
1G$
1n#
1m#
1o$
0R$
0M$
0C$
0>$
09$
04$
0/$
0*$
0%$
0~#
0y#
0t#
0j#
0e#
0`#
0[#
0V#
0Q#
0L#
0G#
0B#
0=#
0a$
0\$
1V$
0H$
0o#
08#
b11111111111111111111111111111111 /#
17#
b1 6"
1]$
0D$
14#
00#
1O$
1J$
1@$
1;$
16$
11$
1,$
1'$
1"$
1{#
1v#
1q#
1g#
1b#
1]#
1X#
1S#
1N#
1I#
1D#
1?#
1:#
1m$
0h$
0c$
0^$
0Y$
0T$
1E$
0l#
05#
11#
0l$
1g$
1b$
1S$
b10000000000000000000000010100 2"
b10 7"
b0 (#
b0 .#
03#
b11111111111111111111111000001001 )#
b11111111111111111111111000001001 ,#
b111110110 {"
b111110110 ##
b111110110 +#
b0 J
b0 Y
b0 \
b0 $"
b1110000101 ."
b1110000101 7%
b1100100001 ,"
b1100100001 8%
b111110110 "#
b111110110 r$
b110010010000000000000000 H
b110010010000000000000000 Q
b110010010000000000000000 h
b110010010000000000000000 F"
1-#
b111110110 |"
b111110110 %#
b111110110 ~"
b111110110 }"
b1001 /"
b1001 s$
b1000 -"
b1000 t$
b1010 0"
b1001000000000001000 ("
b100100000000000100 4"
b1010 +"
b101 @"
b1000 *"
b1010 )"
b100001001000000000000000 A"
b0 n
b0 r
b110011 o
b110011 s
b110011 u
b100 V
b110 y"
b110 q$
b10000000000000000000000000100 x"
b111110110 u"
b111 X"
b10000000000000000100000001010 &"
b10000000000000000100000001010 S"
b11001001 Y"
b10000000000000000000000001000 W"
1a"
b10000 ["
b10000 $#
0^"
b10001 g"
b110 j"
b111 h"
b1111110011000111000000000000000 `"
b111000011111100110 o"
b111111110000 l"
b11111110001 n"
b11111100110 m"
b1001011001 k"
b1010111101 i"
b10000000000000000111111111000 ?"
b10000000000000000000000001000 f"
b100001001000010100110011 b
b100001001000010100110011 %"
b100001001000010100110011 p"
b10000000000000000000000001100 q"
b10000000000000000000000010100 1"
b10000000000000000000000010000 K
b10000000000000000000000010000 ^
b10000000000000000000000010000 !#
b100 A
1G
1<
#7240000000000
0G
0<
#7250000000000
0e
b11010100110 B"
b11010100110 *#
b0 v
b1 N
b1 R
b1 j
b1 I"
0i$
0e$
0_$
0[$
0F$
1\$
0d$
0n#
0Z$
1#"
0a$
0`$
0V$
0&#
1'#
0W$
0m#
1""
0k$
1f$
1o#
0E"
0G"
0P$
0K$
0A$
0<$
07$
02$
0-$
0($
0#$
0|#
0w#
0r#
0h#
0c#
0^#
0Y#
0T#
0O#
0J#
0E#
0@#
1;#
0U$
07#
0R$
0Q$
0M$
0L$
0C$
0B$
0>$
0=$
09$
08$
04$
03$
0/$
0.$
0*$
0)$
0%$
0$$
0~#
0}#
0y#
0x#
0t#
0s#
0j#
0i#
0e#
0d#
0`#
0_#
0[#
0Z#
0V#
0U#
0Q#
0P#
0L#
0K#
0G#
0F#
0B#
0A#
1=#
0<#
1p$
1o$
0H$
0G$
18#
1l$
10#
b1100100001 |"
b1100100001 %#
16#
b1100100001 ~"
b10000000000000000111111111000 2"
0O$
0J$
0@$
0;$
06$
01$
0,$
0'$
0"$
0{#
0v#
0q#
0g#
0b#
0]#
0X#
0S#
0N#
0I#
0D#
0?#
0:#
1m$
1h$
0c$
0^$
1Y$
0T$
0E$
0l#
05#
11#
b1100000001 /#
12#
1g$
1b$
0]$
0X$
0S$
1k#
04#
b0 6"
b0 ."
b0 7%
b0 ,"
b0 8%
b1100100001 )#
b1100100001 ,#
0C"
b11010100110 (#
b11010100110 .#
03#
b1110000101 {"
b1110000101 ##
b1110000101 +#
1z
b0 7"
b101 V
b0 /"
b0 s$
b0 -"
b0 t$
b0 0"
b0 ("
b0 4"
b0 +"
b0 @"
b0 *"
b0 )"
b0 A"
b0 o
b0 s
b0 u
0-#
b1110000101 }"
b111110110 H
b111110110 Q
b111110110 h
b111110110 F"
b0 >"
b0 3"
b0 H"
b0 O
b111110110 2%
b10000000000000000000000011000 1"
b10000000000000000000000010100 K
b10000000000000000000000010100 ^
b10000000000000000000000010100 !#
b0 b
b0 %"
b0 p"
b10000000000000000000000010000 q"
0a"
b0 ["
b0 $#
1^"
b1010 g"
b1000 j"
b1001 h"
b100001001000000000000000 `"
b1001000000000001000 o"
b1010 l"
b1010 n"
b1000 m"
b1100100001 k"
b1110000101 i"
b10000000000000000000000010110 ?"
b10000000000000000000000001100 f"
1R"
0N"
1J"
1P"
b10001 X"
b10000000000000000111111111000 &"
b10000000000000000111111111000 S"
b111110110 Y"
b0 M
b0 i
b0 x
b0 Q"
b10000000000000000000000001100 W"
b111 y"
b111 q$
b10000000000000000000000001000 x"
b101 A
1G
1<
#7260000000000
0G
0<
#7270000000000
1e
1l
b0 B"
b0 *#
b1100000 v
0#"
1C"
0p$
08#
0=#
0n$
06#
0""
0;#
0j$
02#
b0 /#
0o$
0\$
0f$
b0 (#
b0 .#
0o#
b10000000000000000111111111100 2"
0m$
0h$
0Y$
01#
0l$
0g$
0b$
0k#
00#
b0 )#
b0 ,#
b0 {"
b0 ##
b0 +#
b1000000100001001000010110110011 J
b1000000100001001000010110110011 Y
b1000000100001001000010110110011 \
b1000000100001001000010110110011 $"
b0 "#
b0 r$
0z
b0 H
b0 Q
b0 h
b0 F"
b0 |"
b0 %#
b0 ~"
b0 }"
b10011 o
b10011 s
b10011 u
b1111111110 V
0t"
b10001 y"
b10001 q$
b10000000000000000000000001100 x"
b0 u"
0R"
0J"
0P"
b0 X"
b0 &"
b0 S"
b0 Y"
b0 W"
0^"
b0 g"
b0 j"
b0 h"
b0 `"
b0 o"
b0 l"
b0 n"
b0 m"
b0 k"
b0 i"
b0 ?"
b0 f"
b10011 b
b10011 %"
b10011 p"
b0 q"
b10000000000000000111111111100 1"
b10000000000000000111111111000 K
b10000000000000000111111111000 ^
b10000000000000000111111111000 !#
b111110110 3%
b110 A
1G
1<
#7280000000000
0G
0<
#7290000000000
0l
b10000 k
b10000 p
b10000 t
b10000 w
b1000000 v
b10000000000000001000000000000 2"
b0 J
b0 Y
b0 \
b0 $"
b1110000101 ."
b1110000101 7%
b1100100001 ,"
b1100100001 8%
b1111111111 V
b1001 /"
b1001 s$
b1000 -"
b1000 t$
b1011 0"
b1001000010000001000 ("
b100100001000000100 4"
b110000001010 +"
b11000000101 @"
b10000001000 *"
b10000001011 )"
b1000000100001001000000000000000 A"
b100000 n
b100000 r
b110011 o
b110011 s
b110011 u
b10000000000000001000000000000 1"
b10000000000000000111111111100 K
b10000000000000000111111111100 ^
b10000000000000000111111111100 !#
b1000000100001001000010110110011 b
b1000000100001001000010110110011 %"
b1000000100001001000010110110011 p"
b10000000000000000111111111000 q"
1Z"
1^"
1P"
b100 W"
b0 y"
b0 q$
b0 x"
b111 A
1G
1<
#7300000000000
0G
0<
#7310000000000
0e
b1100100 B"
b1100100 *#
b0 k
b0 p
b0 t
b0 w
b0 v
0'#
1G"
1Q$
0D"
1P$
1L$
1K$
1B$
1A$
1=$
1<$
18$
17$
13$
12$
1.$
1-$
1)$
1($
1$$
1#$
1}#
1|#
1x#
1w#
1s#
1r#
1i#
1h#
1d#
1c#
1_#
1^#
1Z#
1Y#
1U#
1T#
1P#
1O#
1K#
1J#
1F#
1E#
1Z$
1A#
1V$
1o#
1@#
1U$
1m#
1<#
1G$
17#
0&#
1;#
1n$
1i$
1F$
0p$
0k$
0E"
16#
1o$
1j$
1e$
1n#
0R$
0M$
0C$
0>$
09$
04$
0/$
0*$
0%$
0~#
0y#
0t#
0j#
0e#
0`#
0[#
0V#
0Q#
0L#
0G#
0B#
0=#
1a$
1\$
0W$
0H$
08#
b11111111111111111111111110011111 /#
12#
1O$
1J$
1@$
1;$
16$
11$
1,$
1'$
1"$
1{#
1v#
1q#
1g#
1b#
1]#
1X#
1S#
1N#
1I#
1D#
1?#
1:#
0m$
0h$
1c$
1^$
0Y$
1T$
1E$
1l#
15#
01#
1l$
1g$
1b$
1k#
10#
b10000000000000001000000000100 2"
0C"
b1100100 (#
b1100100 .#
03#
b11111111111111111111110011011110 )#
b11111111111111111111110011011110 ,#
b1110000101 {"
b1110000101 ##
b1110000101 +#
b0 ."
b0 7%
b0 ,"
b0 8%
1-#
b1100100001 |"
b1100100001 %#
b1100100001 ~"
b1110000101 }"
b0 /"
b0 s$
b0 -"
b0 t$
b0 0"
b0 ("
b0 4"
b0 +"
b0 @"
b0 *"
b0 )"
b0 A"
b0 n
b0 r
b0 o
b0 s
b0 u
b10000000000 V
b100 x"
1N"
b10000 ["
b10000 $#
0Z"
b1011 g"
b1000 j"
b1001 h"
b1000000100001001000000000000000 `"
b1001000010000001000 o"
b110000001010 l"
b10000001011 n"
b10000001000 m"
b1100100001 k"
b1110000101 i"
b10000000000000001110000000010 ?"
b10000000000000000111111111000 f"
b0 b
b0 %"
b0 p"
b10000000000000000111111111100 q"
b10000000000000001000000000100 1"
b10000000000000001000000000000 K
b10000000000000001000000000000 ^
b10000000000000001000000000000 !#
b1000 A
1G
1<
#7320000000000
0G
0<
#7330000000000
b0 B"
b0 *#
1C"
0&#
1'#
0\$
0o#
0;#
0n$
0i$
0E"
0G"
0P$
0K$
0A$
0<$
07$
02$
0-$
0($
0#$
0|#
0w#
0r#
0h#
0c#
0^#
0Y#
0T#
0O#
0J#
0E#
0@#
0Z$
0U$
0F$
0m#
0o$
0j$
0e$
0R$
0Q$
0M$
0L$
0C$
0B$
0>$
0=$
09$
08$
04$
03$
0/$
0.$
0*$
0)$
0%$
0$$
0~#
0}#
0y#
0x#
0t#
0s#
0j#
0i#
0e#
0d#
0`#
0_#
0[#
0Z#
0V#
0U#
0Q#
0P#
0L#
0K#
0G#
0F#
0B#
0A#
0=#
0<#
0a$
0W$
0V$
0H$
0G$
0n#
07#
06#
0p$
0k$
b0 /#
02#
b10000000000000001000000001000 2"
0O$
0J$
0@$
0;$
06$
01$
0,$
0'$
0"$
0{#
0v#
0q#
0g#
0b#
0]#
0X#
0S#
0N#
0I#
0D#
0?#
0:#
0c$
0^$
0T$
0E$
0l#
05#
0l$
0g$
0b$
0k#
00#
b0 )#
b0 ,#
b0 (#
b0 .#
03#
b0 {"
b0 ##
b0 +#
b10000000001 V
0-#
b0 |"
b0 %#
b0 ~"
b0 }"
b1100100001 H
b1100100001 Q
b1100100001 h
b1100100001 F"
b1100100 >"
b1100100 3"
b11001 O
b10000000000000001000000001000 1"
b10000000000000001000000000100 K
b10000000000000001000000000100 ^
b10000000000000001000000000100 !#
b10000000000000001000000000000 q"
b0 ["
b0 $#
0^"
b0 g"
b0 j"
b0 h"
b0 `"
b0 o"
b0 l"
b0 n"
b0 m"
b0 k"
b0 i"
b10000000000000000111111111100 ?"
b10000000000000000111111111100 f"
1J"
0P"
b1011 X"
b10000000000000001110000000010 &"
b10000000000000001110000000010 S"
b1100100001 Y"
b1100100 M
b1100100 i
b1100100 x
b1100100 Q"
b10000000000000000111111111100 W"
1t"
b1001 A
1G
1<
#7340000000000
0G
0<
#7350000000000
b10000000000000001000000001100 2"
b0 7"
b0 6"
b1100100 "#
b1100100 r$
b0 H
b0 Q
b0 h
b0 F"
b0 >"
b0 3"
b0 O
b10000000010 V
b1011 y"
b1011 q$
b10000000000000000111111111100 x"
b1100100 u"
0N"
0J"
1P"
b0 X"
b10000000000000000111111111100 &"
b10000000000000000111111111100 S"
b0 Y"
b0 M
b0 i
b0 x
b0 Q"
b10000000000000001000000000000 W"
b10000000000000001000000000000 ?"
b10000000000000001000000000000 f"
b10000000000000001000000000100 q"
b10000000000000001000000001100 1"
b10000000000000001000000001000 K
b10000000000000001000000001000 ^
b10000000000000001000000001000 !#
b1010 A
1G
1<
#7360000000000
0G
0<
#7370000000000
b10000000000000001000000010000 2"
b0 7"
b0 6"
b10000000011 V
b0 "#
b0 r$
b1100100 w$
b10000000000000001000000010000 1"
b10000000000000001000000001100 K
b10000000000000001000000001100 ^
b10000000000000001000000001100 !#
b10000000000000001000000001000 q"
b10000000000000001000000000100 ?"
b10000000000000001000000000100 f"
b10000000000000001000000000000 &"
b10000000000000001000000000000 S"
b10000000000000001000000000100 W"
0t"
b0 y"
b0 q$
b10000000000000001000000000000 x"
b0 u"
b1011 A
1G
1<
#7380000000000
0G
0<
#7390000000000
b10000000000000001000000010100 2"
b10000000100 V
b10000000000000001000000000100 x"
b10000000000000001000000000100 &"
b10000000000000001000000000100 S"
b10000000000000001000000001000 W"
b10000000000000001000000001000 ?"
b10000000000000001000000001000 f"
b10000000000000001000000001100 q"
b10000000000000001000000010100 1"
b10000000000000001000000010000 K
b10000000000000001000000010000 ^
b10000000000000001000000010000 !#
b100000000000000000000000001 4
b100 .
b100000 @%
b110000011101 /%
b101110111001 .%
b101101010101 ,%
b101011110001 +%
b101010001101 *%
b101000101001 )%
b100111000101 (%
b100101100001 '%
b100011111101 &%
b100010011001 %%
b100000110101 $%
b11111010001 #%
b11101101101 !%
b11100001001 ~$
b11010100101 }$
b11001000001 |$
b10111011101 {$
b10101111001 z$
b10100010101 y$
b10010110001 x$
b10001001101 w$
b1111101001 v$
b1110000101 5%
b1100100001 4%
b1010111101 3%
b1001011001 2%
b111110101 1%
b110010001 0%
b100101101 -%
b11001001 "%
b1100101 u$
b100000000000000 A%
1B
b1100 A
1G
1<
#7400000000000
1]
0E
0G
0<
#7410000000000
1e
1l
b1100000 v
b10000000000000000000000000100 2"
b10000000000000011101111 J
b10000000000000011101111 Y
b10000000000000011101111 \
b10000000000000011101111 $"
b0 V
b10011 o
b10011 s
b10011 u
b10000000000000000000000000100 1"
b10000000000000000000000000000 K
b10000000000000000000000000000 ^
b10000000000000000000000000000 !#
b10011 b
b10011 %"
b10011 p"
b0 q"
b0 ?"
b0 f"
0P"
b0 &"
b0 S"
b0 W"
b0 x"
b0 A
1G
1<
#7420000000000
0G
0<
#7430000000000
1G
1<
#7440000000000
0G
0<
#7450000000000
1G
1<
#7460000000000
0]
b100101101 =
b10000000000000000000011001101 >
b10010000110000101111010011000010111001001100100001000000011000100110001 @
b1001101 ?
0B
b10010000110000101111010011000010111001001100100001000000011000100110001 ?%
b10000000000000000000011001101 =%
b11 >%
1E
0G
0<
#7470000000000
1a
b1100010 v
b10000000000000000000000001000 2"
b110010001 ,"
b110010001 8%
b1000001000000110110011 J
b1000001000000110110011 Y
b1000001000000110110011 \
b1000001000000110110011 $"
b100 -"
b100 t$
b1 0"
b100 ("
b10 4"
b100000000000 +"
b10000000000 @"
b100 *"
b1 )"
b10000000000000000000000 A"
b1101111 o
b1101111 s
b1101111 u
b1 V
1P"
b100 W"
1Z"
1^"
b10000000000000011101111 b
b10000000000000011101111 %"
b10000000000000011101111 p"
b10000000000000000000000000000 q"
b10000000000000000000000001000 1"
b10000000000000000000000000100 K
b10000000000000000000000000100 ^
b10000000000000000000000000100 !#
b1 A
1G
1<
#7480000000000
0G
0<
#7490000000000
0l
0a
b100 B"
b100 *#
b1000000 v
0C"
b100 (#
b100 .#
1o#
b10000000000000000000000001100 2"
1l#
b0 J
b0 Y
b0 \
b0 $"
b1100101 ."
b1100101 7%
b11001001 ,"
b11001001 8%
b100 )#
b100 ,#
b10 V
b1 /"
b1 s$
b10 -"
b10 t$
b11 0"
b1000000000000010 ("
b100000000000001 4"
b100000000010 +"
b10000000001 @"
b10 *"
b11 )"
b1000001000000000000000 A"
b110011 o
b110011 s
b110011 u
b100 |"
b100 %#
b110010001 ~"
b10000000000000000000000001100 1"
b10000000000000000000000001000 K
b10000000000000000000000001000 ^
b10000000000000000000000001000 !#
b1000001000000110110011 b
b1000001000000110110011 %"
b1000001000000110110011 p"
b10000000000000000000000000100 q"
1c"
b1 g"
b100 j"
b10000000000000000000000 `"
b100 o"
b100000000000 l"
b1 n"
b100 m"
b110010001 k"
b10000000000000000000000000100 ?"
b10000000000000000000000000000 f"
1N"
b100 x"
b10 A
1G
1<
#7500000000000
0G
0<
#7510000000000
0e
b10000000000000000000011001101 B"
b10000000000000000000011001101 *#
b0 v
0k$
0i$
0e$
08#
1>$
1a$
13#
0d$
06#
0`$
b0 /#
02#
1:$
1f$
1H$
b10000000000000000000011001101 (#
b10000000000000000000011001101 .#
0\$
b10 7"
1c$
1^$
1E$
0l#
11#
0]$
0X$
1k#
00#
1#"
b11001001 )#
b11001001 ,#
b10000000000000000000000000100 {"
b10000000000000000000000000100 ##
b10000000000000000000000000100 +#
b0 ."
b0 7%
b0 ,"
b0 8%
b10000000000000000000000000100 2"
b110010001 H
b110010001 Q
b110010001 h
b110010001 F"
b10000000000000000000000000100 >"
b100 3"
b1 O
b11001001 |"
b11001001 %#
b11001001 ~"
b10000000000000000000000000100 }"
b0 /"
b0 s$
b0 -"
b0 t$
b0 0"
b0 ("
b0 4"
b0 +"
b0 @"
b0 *"
b0 )"
b0 A"
b0 o
b0 s
b0 u
b11 V
1t"
1U"
0P"
b1 X"
b10000000000000000000000000100 &"
b10000000000000000000000000100 S"
b110010001 Y"
b100 M
b100 i
b100 x
b100 Q"
b10000000000000000000000000100 W"
0c"
0Z"
b11 g"
b10 j"
b1 h"
b1000001000000000000000 `"
b1000000000000010 o"
b100000000010 l"
b11 n"
b10 m"
b11001001 k"
b1100101 i"
b10000000000000000100000000110 ?"
b10000000000000000000000000100 f"
b0 b
b0 %"
b0 p"
b10000000000000000000000001000 q"
b10000000000000000000000010000 1"
b10000000000000000000000001100 K
b10000000000000000000000001100 ^
b10000000000000000000000001100 !#
b11 A
1G
1<
#7520000000000
0G
0<
#7530000000000
1e
1l
b0 B"
b0 *#
b1100000 v
1C"
0f$
0a$
0H$
03#
0>$
b0 (#
b0 .#
0o#
0c$
0^$
0E$
01#
0:$
0k#
b0 7"
b1000001000000110110011 J
b1000001000000110110011 Y
b1000001000000110110011 \
b1000001000000110110011 $"
b0 )#
b0 ,#
b0 {"
b0 ##
b0 +#
0#"
b1 V
b10011 o
b10011 s
b10011 u
b0 |"
b0 %#
b0 ~"
b0 }"
b10000000000000000000000001000 2"
b0 H
b0 Q
b0 h
b0 F"
b0 3"
b0 O
b0 >"
b10000000000000000000000000100 "#
b10000000000000000000000000100 r$
b10000000000000000000000001000 1"
b10000000000000000000000000100 K
b10000000000000000000000000100 ^
b10000000000000000000000000100 !#
b10011 b
b10011 %"
b10011 p"
b0 q"
0^"
b0 g"
b0 j"
b0 h"
b0 `"
b0 o"
b0 l"
b0 n"
b0 m"
b0 k"
b0 i"
b0 ?"
b0 f"
0U"
0N"
b0 X"
b0 &"
b0 S"
b0 Y"
b0 M
b0 i
b0 x
b0 Q"
b0 W"
1v"
b1 y"
b1 q$
b10000000000000000000000000100 x"
b100 u"
b100 A
1G
1<
#7540000000000
0G
0<
#7550000000000
0l
b1000000 v
b0 7"
b0 6"
b10000000000000000000000001100 2"
b10000000000000000000000000100 ."
b10000000000000000000000000100 7%
b11001001 ,"
b11001001 8%
b0 J
b0 Y
b0 \
b0 $"
b0 "#
b0 r$
b1 /"
b1 s$
b10 -"
b10 t$
b11 0"
b1000000000000010 ("
b100000000000001 4"
b100000000010 +"
b10000000001 @"
b10 *"
b11 )"
b1000001000000000000000 A"
b110011 o
b110011 s
b110011 u
b10 V
0v"
0t"
b0 y"
b0 q$
b0 x"
b0 u"
1P"
b100 W"
1Z"
1^"
b1000001000000110110011 b
b1000001000000110110011 %"
b1000001000000110110011 p"
b10000000000000000000000000100 q"
b10000000000000000000000001100 1"
b10000000000000000000000001000 K
b10000000000000000000000001000 ^
b10000000000000000000000001000 !#
b10000000000000000000000000100 u$
b101 A
1G
1<
#7560000000000
0G
0<
#7570000000000
0e
b10000000000000000000011001101 B"
b10000000000000000000011001101 *#
b0 v
1f$
1a$
1H$
13#
1>$
0C"
b10000000000000000000011001101 (#
b10000000000000000000011001101 .#
1o#
b10000000000000000000000010000 2"
1c$
1^$
1E$
11#
1:$
1k#
b0 ."
b0 7%
b0 ,"
b0 8%
b11001001 )#
b11001001 ,#
b10000000000000000000000000100 {"
b10000000000000000000000000100 ##
b10000000000000000000000000100 +#
b11 V
b0 /"
b0 s$
b0 -"
b0 t$
b0 0"
b0 ("
b0 4"
b0 +"
b0 @"
b0 *"
b0 )"
b0 A"
b0 o
b0 s
b0 u
b11001001 |"
b11001001 %#
b11001001 ~"
b10000000000000000000000000100 }"
b10000000000000000000000010000 1"
b10000000000000000000000001100 K
b10000000000000000000000001100 ^
b10000000000000000000000001100 !#
b0 b
b0 %"
b0 p"
b10000000000000000000000001000 q"
0Z"
b11 g"
b10 j"
b1 h"
b1000001000000000000000 `"
b1000000000000010 o"
b100000000010 l"
b11 n"
b10 m"
b11001001 k"
b10000000000000000000000000100 i"
b10000000000000000100000000110 ?"
b10000000000000000000000000100 f"
1N"
b100 x"
b110 A
1G
1<
#7580000000000
0G
0<
#7590000000000
b0 B"
b0 *#
b10 N
b10 R
b10 j
b10 I"
1C"
0f$
0a$
0H$
03#
0>$
b0 (#
b0 .#
0o#
0c$
0^$
0E$
01#
0:$
0k#
b10000000000000000000000010100 2"
b0 )#
b0 ,#
b0 {"
b0 ##
b0 +#
b1100100100000000 H
b1100100100000000 Q
b1100100100000000 h
b1100100100000000 F"
b10000000000000000000011001101 >"
b10000000000000000000011001100 3"
b1 H"
b110011 O
b0 |"
b0 %#
b0 ~"
b0 }"
b100 V
1t"
0P"
b11 X"
b10000000000000000100000000110 &"
b10000000000000000100000000110 S"
b11001001 Y"
b10000000000000000000011001101 M
b10000000000000000000011001101 i
b10000000000000000000011001101 x
b10000000000000000000011001101 Q"
b10000000000000000000000001000 W"
0^"
b0 g"
b0 j"
b0 h"
b0 `"
b0 o"
b0 l"
b0 n"
b0 m"
b0 k"
b0 i"
b10000000000000000000000001000 ?"
b10000000000000000000000001000 f"
b10000000000000000000000001100 q"
b10000000000000000000000010100 1"
b10000000000000000000000010000 K
b10000000000000000000000010000 ^
b10000000000000000000000010000 !#
b111 A
1G
1<
#7600000000000
0G
0<
#7610000000000
b1 N
b1 R
b1 j
b1 I"
b10000000000000000000000011000 2"
b0 7"
b0 6"
b101 V
b0 H
b0 Q
b0 h
b0 F"
b0 >"
b0 3"
b0 H"
b0 O
b10000000000000000000011001101 "#
b10000000000000000000011001101 r$
b10000000000000000000000011000 1"
b10000000000000000000000010100 K
b10000000000000000000000010100 ^
b10000000000000000000000010100 !#
b10000000000000000000000010000 q"
b10000000000000000000000001100 ?"
b10000000000000000000000001100 f"
0N"
1P"
b0 X"
b10000000000000000000000001000 &"
b10000000000000000000000001000 S"
b0 Y"
b0 M
b0 i
b0 x
b0 Q"
b10000000000000000000000001100 W"
b11 y"
b11 q$
b10000000000000000000000001000 x"
b10000000000000000000011001101 u"
b1000 A
1G
1<
#7620000000000
0G
0<
#7630000000000
b0 7"
b0 6"
b10000000000000000000000011100 2"
b0 "#
b0 r$
b110 V
0t"
b0 y"
b0 q$
b10000000000000000000000001100 x"
b0 u"
b10000000000000000000000001100 &"
b10000000000000000000000001100 S"
b10000000000000000000000010000 W"
b10000000000000000000000010000 ?"
b10000000000000000000000010000 f"
b10000000000000000000000010100 q"
b10000000000000000000000011100 1"
b10000000000000000000000011000 K
b10000000000000000000000011000 ^
b10000000000000000000000011000 !#
b10000000000000000000011001101 -%
b1001 A
1G
1<
#7640000000000
0G
0<
#7650000000000
b10000000000000000000000100000 2"
b111 V
b10000000000000000000000100000 1"
b10000000000000000000000011100 K
b10000000000000000000000011100 ^
b10000000000000000000000011100 !#
b10000000000000000000000011000 q"
b10000000000000000000000010100 ?"
b10000000000000000000000010100 f"
b10000000000000000000000010000 &"
b10000000000000000000000010000 S"
b10000000000000000000000010100 W"
b10000000000000000000000010000 x"
b11010 4
b100000 @%
b110000011101 /%
b101110111001 .%
b101101010101 ,%
b101011110001 +%
b101010001101 *%
b101000101001 )%
b100111000101 (%
b100101100001 '%
b100011111101 &%
b100010011001 %%
b100000110101 $%
b11111010001 #%
b11101101101 !%
b11100001001 ~$
b11010100101 }$
b11001000001 |$
b10111011101 {$
b10101111001 z$
b10100010101 y$
b10010110001 x$
b10001001101 w$
b1111101001 v$
b1110000101 5%
b1100100001 4%
b1010111101 3%
b1001011001 2%
b111110101 1%
b10000000000000000000000000000 0%
b100101101 -%
b11001001 "%
b1100101 u$
b100000000000000 A%
1B
b1010 A
1G
1<
#7660000000000
1]
0E
0G
0<
#7670000000000
1e
1l
b1100000 v
b10000000000000000000000000100 2"
b10000100000000011100111 J
b10000100000000011100111 Y
b10000100000000011100111 \
b10000100000000011100111 $"
b10011 o
b10011 s
b10011 u
b0 V
b0 x"
0P"
b0 &"
b0 S"
b0 W"
b0 ?"
b0 f"
b10011 b
b10011 %"
b10011 p"
b0 q"
b10000000000000000000000000100 1"
b10000000000000000000000000000 K
b10000000000000000000000000000 ^
b10000000000000000000000000000 !#
b0 A
1G
1<
#7680000000000
0G
0<
#7690000000000
1G
1<
#7700000000000
0G
0<
#7710000000000
1G
1<
#7720000000000
0]
b10010000110000101111010011000010111001001100100001000000011000100110010 @
b1001110 ?
0B
b10010000110000101111010011000010111001001100100001000000011000100110010 ?%
1E
0G
0<
#7730000000000
1`
b1100001 v
b10000000000000000000000001000 2"
b1000001000000110110011 J
b1000001000000110110011 Y
b1000001000000110110011 \
b1000001000000110110011 $"
b10000000000000000000000000000 ."
b10000000000000000000000000000 7%
b10000000000000000000000000000 ,"
b10000000000000000000000000000 8%
b1 V
b100 /"
b100 s$
b100 -"
b100 t$
b1 0"
b100000000000000100 ("
b10000000000000010 4"
b100000000000 +"
b10000000000 @"
b100 *"
b1 )"
b10000100000000000000000 A"
b1100111 o
b1100111 s
b1100111 u
b10000000000000000000000001000 1"
b10000000000000000000000000100 K
b10000000000000000000000000100 ^
b10000000000000000000000000100 !#
b10000100000000011100111 b
b10000100000000011100111 %"
b10000100000000011100111 p"
b10000000000000000000000000000 q"
1Z"
1^"
1P"
b100 W"
b1 A
1G
1<
#7740000000000
0G
0<
#7750000000000
0l
0`
b10000000000000000000000000100 B"
b10000000000000000000000000100 *#
b1000000 v
1o#
0C"
b10000000000000000000000000100 (#
b10000000000000000000000000100 .#
1>$
1l#
1:$
b10000000000000000000000001100 2"
b100 )#
b100 ,#
b10000000000000000000000000000 {"
b10000000000000000000000000000 ##
b10000000000000000000000000000 +#
b1100101 ."
b1100101 7%
b11001001 ,"
b11001001 8%
b0 J
b0 Y
b0 \
b0 $"
b100 |"
b100 %#
b10000000000000000000000000000 ~"
b10000000000000000000000000000 }"
b1 /"
b1 s$
b10 -"
b10 t$
b11 0"
b1000000000000010 ("
b100000000000001 4"
b100000000010 +"
b10000000001 @"
b10 *"
b11 )"
b1000001000000000000000 A"
b110011 o
b110011 s
b110011 u
b10 V
b100 x"
1N"
1d"
b1 g"
b100 j"
b100 h"
b10000100000000000000000 `"
b100000000000000100 o"
b100000000000 l"
b1 n"
b100 m"
b10000000000000000000000000000 k"
b10000000000000000000000000000 i"
b10000000000000000100000000000 ?"
b10000000000000000000000000000 f"
b1000001000000110110011 b
b1000001000000110110011 %"
b1000001000000110110011 p"
b10000000000000000000000000100 q"
b10000000000000000000000001100 1"
b10000000000000000000000001000 K
b10000000000000000000000001000 ^
b10000000000000000000000001000 !#
b10 A
1G
1<
#7760000000000
0G
0<
#7770000000000
0e
b10000000000000000000011001101 B"
b10000000000000000000011001101 *#
b0 v
0k$
0i$
0e$
08#
1a$
13#
0d$
06#
0`$
b0 /#
02#
1f$
1H$
1>$
b10000000000000000000011001101 (#
b10000000000000000000011001101 .#
0\$
1c$
1^$
1E$
0l#
11#
1:$
0]$
0X$
1k#
00#
b0 ."
b0 7%
b0 ,"
b0 8%
b10 7"
b11001001 )#
b11001001 ,#
b10000000000000000000000000100 {"
b10000000000000000000000000100 ##
b10000000000000000000000000100 +#
b10000000000000000000000000100 2"
b11 V
b0 /"
b0 s$
b0 -"
b0 t$
b0 0"
b0 ("
b0 4"
b0 +"
b0 @"
b0 *"
b0 )"
b0 A"
b0 o
b0 s
b0 u
b11001001 |"
b11001001 %#
b11001001 ~"
b10000000000000000000000000100 }"
1#"
b10000000000000000000000000000 H
b10000000000000000000000000000 Q
b10000000000000000000000000000 h
b10000000000000000000000000000 F"
b10000000000000000000000000100 >"
b10000000000000000000000000100 3"
b1 O
b10000000000000000000000010000 1"
b10000000000000000000000001100 K
b10000000000000000000000001100 ^
b10000000000000000000000001100 !#
b0 b
b0 %"
b0 p"
b10000000000000000000000001000 q"
0d"
0Z"
b11 g"
b10 j"
b1 h"
b1000001000000000000000 `"
b1000000000000010 o"
b100000000010 l"
b11 n"
b10 m"
b11001001 k"
b1100101 i"
b10000000000000000100000000110 ?"
b10000000000000000000000000100 f"
1V"
0P"
b1 X"
b10000000000000000100000000000 &"
b10000000000000000100000000000 S"
b10000000000000000000000000000 Y"
b10000000000000000000000000100 M
b10000000000000000000000000100 i
b10000000000000000000000000100 x
b10000000000000000000000000100 Q"
b10000000000000000000000000100 W"
1t"
b11 A
1G
1<
#7780000000000
0G
0<
#7790000000000
1e
1l
b0 B"
b0 *#
b1100000 v
1C"
0>$
0o#
0f$
0a$
0H$
b0 (#
b0 .#
03#
0:$
0k#
b0 7"
b0 {"
b0 ##
b0 +#
0c$
0^$
0E$
01#
b10000000000000000000000001000 2"
b0 6"
b0 }"
b0 )#
b0 ,#
b1000001000000110110011 J
b1000001000000110110011 Y
b1000001000000110110011 \
b1000001000000110110011 $"
b10000000000000000000000000100 "#
b10000000000000000000000000100 r$
0#"
b0 H
b0 Q
b0 h
b0 F"
b0 3"
b0 O
b0 >"
b0 |"
b0 %#
b0 ~"
b10011 o
b10011 s
b10011 u
b1 V
1w"
b1 y"
b1 q$
b10000000000000000000000000100 x"
b10000000000000000000000000100 u"
0V"
0N"
b0 X"
b0 &"
b0 S"
b0 Y"
b0 M
b0 i
b0 x
b0 Q"
b0 W"
0^"
b0 g"
b0 j"
b0 h"
b0 `"
b0 o"
b0 l"
b0 n"
b0 m"
b0 k"
b0 i"
b0 ?"
b0 f"
b10011 b
b10011 %"
b10011 p"
b0 q"
b10000000000000000000000001000 1"
b10000000000000000000000000100 K
b10000000000000000000000000100 ^
b10000000000000000000000000100 !#
b100 A
1G
1<
#7800000000000
0G
0<
#7810000000000
0l
b1000000 v
b10000000000000000000000001100 2"
b0 7"
b0 6"
b0 J
b0 Y
b0 \
b0 $"
b10000000000000000000000000100 ."
b10000000000000000000000000100 7%
b11001001 ,"
b11001001 8%
b10 V
b1 /"
b1 s$
b10 -"
b10 t$
b11 0"
b1000000000000010 ("
b100000000000001 4"
b100000000010 +"
b10000000001 @"
b10 *"
b11 )"
b1000001000000000000000 A"
b110011 o
b110011 s
b110011 u
b0 "#
b0 r$
b10000000000000000000000000100 u$
b10000000000000000000000001100 1"
b10000000000000000000000001000 K
b10000000000000000000000001000 ^
b10000000000000000000000001000 !#
b1000001000000110110011 b
b1000001000000110110011 %"
b1000001000000110110011 p"
b10000000000000000000000000100 q"
1Z"
1^"
1P"
b100 W"
0w"
0t"
b0 y"
b0 q$
b0 x"
b0 u"
b101 A
1G
1<
#7820000000000
0G
0<
#7830000000000
0e
b10000000000000000000011001101 B"
b10000000000000000000011001101 *#
b0 v
1f$
1a$
1H$
13#
1>$
0C"
b10000000000000000000011001101 (#
b10000000000000000000011001101 .#
1o#
1c$
1^$
1E$
11#
1:$
1k#
b10000000000000000000000010000 2"
b11001001 )#
b11001001 ,#
b10000000000000000000000000100 {"
b10000000000000000000000000100 ##
b10000000000000000000000000100 +#
b0 ."
b0 7%
b0 ,"
b0 8%
b11001001 |"
b11001001 %#
b11001001 ~"
b10000000000000000000000000100 }"
b0 /"
b0 s$
b0 -"
b0 t$
b0 0"
b0 ("
b0 4"
b0 +"
b0 @"
b0 *"
b0 )"
b0 A"
b0 o
b0 s
b0 u
b11 V
b100 x"
1N"
0Z"
b11 g"
b10 j"
b1 h"
b1000001000000000000000 `"
b1000000000000010 o"
b100000000010 l"
b11 n"
b10 m"
b11001001 k"
b10000000000000000000000000100 i"
b10000000000000000100000000110 ?"
b10000000000000000000000000100 f"
b0 b
b0 %"
b0 p"
b10000000000000000000000001000 q"
b10000000000000000000000010000 1"
b10000000000000000000000001100 K
b10000000000000000000000001100 ^
b10000000000000000000000001100 !#
b110 A
1G
1<
#7840000000000
0G
0<
#7850000000000
b0 B"
b0 *#
b10 N
b10 R
b10 j
b10 I"
1C"
0f$
0a$
0H$
03#
0>$
b0 (#
b0 .#
0o#
b10000000000000000000000010100 2"
0c$
0^$
0E$
01#
0:$
0k#
b0 )#
b0 ,#
b0 {"
b0 ##
b0 +#
b100 V
b0 |"
b0 %#
b0 ~"
b0 }"
b1100100100000000 H
b1100100100000000 Q
b1100100100000000 h
b1100100100000000 F"
b10000000000000000000011001101 >"
b10000000000000000000011001100 3"
b1 H"
b110011 O
b10000000000000000000000010100 1"
b10000000000000000000000010000 K
b10000000000000000000000010000 ^
b10000000000000000000000010000 !#
b10000000000000000000000001100 q"
0^"
b0 g"
b0 j"
b0 h"
b0 `"
b0 o"
b0 l"
b0 n"
b0 m"
b0 k"
b0 i"
b10000000000000000000000001000 ?"
b10000000000000000000000001000 f"
0P"
b11 X"
b10000000000000000100000000110 &"
b10000000000000000100000000110 S"
b11001001 Y"
b10000000000000000000011001101 M
b10000000000000000000011001101 i
b10000000000000000000011001101 x
b10000000000000000000011001101 Q"
b10000000000000000000000001000 W"
1t"
b111 A
1G
1<
#7860000000000
0G
0<
#7870000000000
b1 N
b1 R
b1 j
b1 I"
b10000000000000000000000011000 2"
b0 7"
b0 6"
b10000000000000000000011001101 "#
b10000000000000000000011001101 r$
b0 H
b0 Q
b0 h
b0 F"
b0 >"
b0 3"
b0 H"
b0 O
b101 V
b11 y"
b11 q$
b10000000000000000000000001000 x"
b10000000000000000000011001101 u"
0N"
1P"
b0 X"
b10000000000000000000000001000 &"
b10000000000000000000000001000 S"
b0 Y"
b0 M
b0 i
b0 x
b0 Q"
b10000000000000000000000001100 W"
b10000000000000000000000001100 ?"
b10000000000000000000000001100 f"
b10000000000000000000000010000 q"
b10000000000000000000000011000 1"
b10000000000000000000000010100 K
b10000000000000000000000010100 ^
b10000000000000000000000010100 !#
b1000 A
1G
1<
#7880000000000
0G
0<
#7890000000000
b10000000000000000000000011100 2"
b0 7"
b0 6"
b110 V
b0 "#
b0 r$
b10000000000000000000011001101 -%
b10000000000000000000000011100 1"
b10000000000000000000000011000 K
b10000000000000000000000011000 ^
b10000000000000000000000011000 !#
b10000000000000000000000010100 q"
b10000000000000000000000010000 ?"
b10000000000000000000000010000 f"
b10000000000000000000000001100 &"
b10000000000000000000000001100 S"
b10000000000000000000000010000 W"
0t"
b0 y"
b0 q$
b10000000000000000000000001100 x"
b0 u"
b1001 A
1G
1<
#7900000000000
0G
0<
#7910000000000
b10000000000000000000000100000 2"
b111 V
b10000000000000000000000010000 x"
b10000000000000000000000010000 &"
b10000000000000000000000010000 S"
b10000000000000000000000010100 W"
b10000000000000000000000010100 ?"
b10000000000000000000000010100 f"
b10000000000000000000000011000 q"
b10000000000000000000000100000 1"
b10000000000000000000000011100 K
b10000000000000000000000011100 ^
b10000000000000000000000011100 !#
1;
1B
b1010 A
1G
1<
#7920000000000
0G
0<
#7930000000000
b10000000000000000000000100100 2"
b1000 V
b10000000000000000000000100100 1"
b10000000000000000000000100000 K
b10000000000000000000000100000 ^
b10000000000000000000000100000 !#
b10000000000000000000000011100 q"
b10000000000000000000000011000 ?"
b10000000000000000000000011000 f"
b10000000000000000000000010100 &"
b10000000000000000000000010100 S"
b10000000000000000000000011000 W"
b10000000000000000000000010100 x"
b0 A
1G
1<
#7940000000000
0G
0<
#7950000000000
b10000000000000000000000101000 2"
b1001 V
b10000000000000000000000011000 x"
b10000000000000000000000011000 &"
b10000000000000000000000011000 S"
b10000000000000000000000011100 W"
b10000000000000000000000011100 ?"
b10000000000000000000000011100 f"
b10000000000000000000000100000 q"
b10000000000000000000000101000 1"
b10000000000000000000000100100 K
b10000000000000000000000100100 ^
b10000000000000000000000100100 !#
1G
1<
#7960000000000
0G
0<
#7970000000000
b10000000000000000000000101100 2"
b1010 V
b10000000000000000000000101100 1"
b10000000000000000000000101000 K
b10000000000000000000000101000 ^
b10000000000000000000000101000 !#
b10000000000000000000000100100 q"
b10000000000000000000000100000 ?"
b10000000000000000000000100000 f"
b10000000000000000000000011100 &"
b10000000000000000000000011100 S"
b10000000000000000000000100000 W"
b10000000000000000000000011100 x"
1G
1<
#7980000000000
0G
0<
#7990000000000
b10000000000000000000000110000 2"
b1011 V
b10000000000000000000000100000 x"
b10000000000000000000000100000 &"
b10000000000000000000000100000 S"
b10000000000000000000000100100 W"
b10000000000000000000000100100 ?"
b10000000000000000000000100100 f"
b10000000000000000000000101000 q"
b10000000000000000000000110000 1"
b10000000000000000000000101100 K
b10000000000000000000000101100 ^
b10000000000000000000000101100 !#
1G
1<
#8000000000000
0G
0<
#8010000000000
b10000000000000000000000110100 2"
b1100 V
b10000000000000000000000110100 1"
b10000000000000000000000110000 K
b10000000000000000000000110000 ^
b10000000000000000000000110000 !#
b10000000000000000000000101100 q"
b10000000000000000000000101000 ?"
b10000000000000000000000101000 f"
b10000000000000000000000100100 &"
b10000000000000000000000100100 S"
b10000000000000000000000101000 W"
b10000000000000000000000100100 x"
1G
1<
#8020000000000
0G
0<
#8030000000000
b10000000000000000000000111000 2"
b1101 V
b10000000000000000000000101000 x"
b10000000000000000000000101000 &"
b10000000000000000000000101000 S"
b10000000000000000000000101100 W"
b10000000000000000000000101100 ?"
b10000000000000000000000101100 f"
b10000000000000000000000110000 q"
b10000000000000000000000111000 1"
b10000000000000000000000110100 K
b10000000000000000000000110100 ^
b10000000000000000000000110100 !#
1G
1<
#8040000000000
0G
0<
#8050000000000
b10000000000000000000000111100 2"
b1110 V
b10000000000000000000000111100 1"
b10000000000000000000000111000 K
b10000000000000000000000111000 ^
b10000000000000000000000111000 !#
b10000000000000000000000110100 q"
b10000000000000000000000110000 ?"
b10000000000000000000000110000 f"
b10000000000000000000000101100 &"
b10000000000000000000000101100 S"
b10000000000000000000000110000 W"
b10000000000000000000000101100 x"
1G
1<
#8060000000000
0G
0<
#8070000000000
b10000000000000000000001000000 2"
b1111 V
b10000000000000000000000110000 x"
b10000000000000000000000110000 &"
b10000000000000000000000110000 S"
b10000000000000000000000110100 W"
b10000000000000000000000110100 ?"
b10000000000000000000000110100 f"
b10000000000000000000000111000 q"
b10000000000000000000001000000 1"
b10000000000000000000000111100 K
b10000000000000000000000111100 ^
b10000000000000000000000111100 !#
1G
1<
#8080000000000
0G
0<
#8090000000000
b10000000000000000000001000100 2"
b10000 V
b10000000000000000000001000100 1"
b10000000000000000000001000000 K
b10000000000000000000001000000 ^
b10000000000000000000001000000 !#
b10000000000000000000000111100 q"
b10000000000000000000000111000 ?"
b10000000000000000000000111000 f"
b10000000000000000000000110100 &"
b10000000000000000000000110100 S"
b10000000000000000000000111000 W"
b10000000000000000000000110100 x"
1G
1<
#8100000000000
0G
0<
#8110000000000
b10000000000000000000001001000 2"
b10001 V
b10000000000000000000000111000 x"
b10000000000000000000000111000 &"
b10000000000000000000000111000 S"
b10000000000000000000000111100 W"
b10000000000000000000000111100 ?"
b10000000000000000000000111100 f"
b10000000000000000000001000000 q"
b10000000000000000000001001000 1"
b10000000000000000000001000100 K
b10000000000000000000001000100 ^
b10000000000000000000001000100 !#
1G
1<
#8120000000000
0G
0<
#8130000000000
b10000000000000000000001001100 2"
b10010 V
b10000000000000000000001001100 1"
b10000000000000000000001001000 K
b10000000000000000000001001000 ^
b10000000000000000000001001000 !#
b10000000000000000000001000100 q"
b10000000000000000000001000000 ?"
b10000000000000000000001000000 f"
b10000000000000000000000111100 &"
b10000000000000000000000111100 S"
b10000000000000000000001000000 W"
b10000000000000000000000111100 x"
1G
1<
#8140000000000
0G
0<
#8150000000000
b10000000000000000000001010000 2"
b10011 V
b10000000000000000000001000000 x"
b10000000000000000000001000000 &"
b10000000000000000000001000000 S"
b10000000000000000000001000100 W"
b10000000000000000000001000100 ?"
b10000000000000000000001000100 f"
b10000000000000000000001001000 q"
b10000000000000000000001010000 1"
b10000000000000000000001001100 K
b10000000000000000000001001100 ^
b10000000000000000000001001100 !#
1G
1<
#8160000000000
0G
0<
#8170000000000
b10000000000000000000001010100 2"
b10100 V
b10000000000000000000001010100 1"
b10000000000000000000001010000 K
b10000000000000000000001010000 ^
b10000000000000000000001010000 !#
b10000000000000000000001001100 q"
b10000000000000000000001001000 ?"
b10000000000000000000001001000 f"
b10000000000000000000001000100 &"
b10000000000000000000001000100 S"
b10000000000000000000001001000 W"
b10000000000000000000001000100 x"
1G
1<
#8180000000000
0G
0<
#8190000000000
b10000000000000000000001011000 2"
b10101 V
b10000000000000000000001001000 x"
b10000000000000000000001001000 &"
b10000000000000000000001001000 S"
b10000000000000000000001001100 W"
b10000000000000000000001001100 ?"
b10000000000000000000001001100 f"
b10000000000000000000001010000 q"
b10000000000000000000001011000 1"
b10000000000000000000001010100 K
b10000000000000000000001010100 ^
b10000000000000000000001010100 !#
1G
1<
#8200000000000
0G
0<
#8210000000000
b10000000000000000000001011100 2"
b10110 V
b10000000000000000000001011100 1"
b10000000000000000000001011000 K
b10000000000000000000001011000 ^
b10000000000000000000001011000 !#
b10000000000000000000001010100 q"
b10000000000000000000001010000 ?"
b10000000000000000000001010000 f"
b10000000000000000000001001100 &"
b10000000000000000000001001100 S"
b10000000000000000000001010000 W"
b10000000000000000000001001100 x"
1G
1<
#8220000000000
0G
0<
#8230000000000
b10000000000000000000001100000 2"
b10111 V
b10000000000000000000001010000 x"
b10000000000000000000001010000 &"
b10000000000000000000001010000 S"
b10000000000000000000001010100 W"
b10000000000000000000001010100 ?"
b10000000000000000000001010100 f"
b10000000000000000000001011000 q"
b10000000000000000000001100000 1"
b10000000000000000000001011100 K
b10000000000000000000001011100 ^
b10000000000000000000001011100 !#
1G
1<
#8240000000000
0G
0<
#8250000000000
b10000000000000000000001100100 2"
b11000 V
b10000000000000000000001100100 1"
b10000000000000000000001100000 K
b10000000000000000000001100000 ^
b10000000000000000000001100000 !#
b10000000000000000000001011100 q"
b10000000000000000000001011000 ?"
b10000000000000000000001011000 f"
b10000000000000000000001010100 &"
b10000000000000000000001010100 S"
b10000000000000000000001011000 W"
b10000000000000000000001010100 x"
1G
1<
#8260000000000
0G
0<
#8270000000000
b10000000000000000000001101000 2"
b11001 V
b10000000000000000000001011000 x"
b10000000000000000000001011000 &"
b10000000000000000000001011000 S"
b10000000000000000000001011100 W"
b10000000000000000000001011100 ?"
b10000000000000000000001011100 f"
b10000000000000000000001100000 q"
b10000000000000000000001101000 1"
b10000000000000000000001100100 K
b10000000000000000000001100100 ^
b10000000000000000000001100100 !#
1G
1<
#8280000000000
0G
0<
#8290000000000
b10000000000000000000001101100 2"
b11010 V
b10000000000000000000001101100 1"
b10000000000000000000001101000 K
b10000000000000000000001101000 ^
b10000000000000000000001101000 !#
b10000000000000000000001100100 q"
b10000000000000000000001100000 ?"
b10000000000000000000001100000 f"
b10000000000000000000001011100 &"
b10000000000000000000001011100 S"
b10000000000000000000001100000 W"
b10000000000000000000001011100 x"
1G
1<
#8300000000000
0G
0<
#8310000000000
b10000000000000000000001110000 2"
b11011 V
b10000000000000000000001100000 x"
b10000000000000000000001100000 &"
b10000000000000000000001100000 S"
b10000000000000000000001100100 W"
b10000000000000000000001100100 ?"
b10000000000000000000001100100 f"
b10000000000000000000001101000 q"
b10000000000000000000001110000 1"
b10000000000000000000001101100 K
b10000000000000000000001101100 ^
b10000000000000000000001101100 !#
1G
1<
#8320000000000
0G
0<
#8330000000000
b10000000000000000000001110100 2"
b11100 V
b10000000000000000000001110100 1"
b10000000000000000000001110000 K
b10000000000000000000001110000 ^
b10000000000000000000001110000 !#
b10000000000000000000001101100 q"
b10000000000000000000001101000 ?"
b10000000000000000000001101000 f"
b10000000000000000000001100100 &"
b10000000000000000000001100100 S"
b10000000000000000000001101000 W"
b10000000000000000000001100100 x"
1G
1<
#8340000000000
0G
0<
#8350000000000
b10000000000000000000001111000 2"
b11101 V
b10000000000000000000001101000 x"
b10000000000000000000001101000 &"
b10000000000000000000001101000 S"
b10000000000000000000001101100 W"
b10000000000000000000001101100 ?"
b10000000000000000000001101100 f"
b10000000000000000000001110000 q"
b10000000000000000000001111000 1"
b10000000000000000000001110100 K
b10000000000000000000001110100 ^
b10000000000000000000001110100 !#
1G
1<
#8360000000000
0G
0<
#8370000000000
b10000000000000000000001111100 2"
b11110 V
b10000000000000000000001111100 1"
b10000000000000000000001111000 K
b10000000000000000000001111000 ^
b10000000000000000000001111000 !#
b10000000000000000000001110100 q"
b10000000000000000000001110000 ?"
b10000000000000000000001110000 f"
b10000000000000000000001101100 &"
b10000000000000000000001101100 S"
b10000000000000000000001110000 W"
b10000000000000000000001101100 x"
1G
1<
#8380000000000
0G
0<
#8390000000000
b10000000000000000000010000000 2"
b11111 V
b10000000000000000000001110000 x"
b10000000000000000000001110000 &"
b10000000000000000000001110000 S"
b10000000000000000000001110100 W"
b10000000000000000000001110100 ?"
b10000000000000000000001110100 f"
b10000000000000000000001111000 q"
b10000000000000000000010000000 1"
b10000000000000000000001111100 K
b10000000000000000000001111100 ^
b10000000000000000000001111100 !#
1G
1<
#8400000000000
0G
0<
#8410000000000
b10000000000000000000010000100 2"
b100000 V
b10000000000000000000010000100 1"
b10000000000000000000010000000 K
b10000000000000000000010000000 ^
b10000000000000000000010000000 !#
b10000000000000000000001111100 q"
b10000000000000000000001111000 ?"
b10000000000000000000001111000 f"
b10000000000000000000001110100 &"
b10000000000000000000001110100 S"
b10000000000000000000001111000 W"
b10000000000000000000001110100 x"
1G
1<
#8420000000000
0G
0<
#8430000000000
b10000000000000000000010001000 2"
b100001 V
b10000000000000000000001111000 x"
b10000000000000000000001111000 &"
b10000000000000000000001111000 S"
b10000000000000000000001111100 W"
b10000000000000000000001111100 ?"
b10000000000000000000001111100 f"
b10000000000000000000010000000 q"
b10000000000000000000010001000 1"
b10000000000000000000010000100 K
b10000000000000000000010000100 ^
b10000000000000000000010000100 !#
1G
1<
#8440000000000
0G
0<
#8450000000000
b10000000000000000000010001100 2"
b100010 V
b10000000000000000000010001100 1"
b10000000000000000000010001000 K
b10000000000000000000010001000 ^
b10000000000000000000010001000 !#
b10000000000000000000010000100 q"
b10000000000000000000010000000 ?"
b10000000000000000000010000000 f"
b10000000000000000000001111100 &"
b10000000000000000000001111100 S"
b10000000000000000000010000000 W"
b10000000000000000000001111100 x"
1G
1<
#8460000000000
0G
0<
#8470000000000
b10000000000000000000010010000 2"
b100011 V
b10000000000000000000010000000 x"
b10000000000000000000010000000 &"
b10000000000000000000010000000 S"
b10000000000000000000010000100 W"
b10000000000000000000010000100 ?"
b10000000000000000000010000100 f"
b10000000000000000000010001000 q"
b10000000000000000000010010000 1"
b10000000000000000000010001100 K
b10000000000000000000010001100 ^
b10000000000000000000010001100 !#
1G
1<
#8480000000000
0G
0<
#8490000000000
b10000000000000000000010010100 2"
b100100 V
b10000000000000000000010010100 1"
b10000000000000000000010010000 K
b10000000000000000000010010000 ^
b10000000000000000000010010000 !#
b10000000000000000000010001100 q"
b10000000000000000000010001000 ?"
b10000000000000000000010001000 f"
b10000000000000000000010000100 &"
b10000000000000000000010000100 S"
b10000000000000000000010001000 W"
b10000000000000000000010000100 x"
1G
1<
#8500000000000
0G
0<
#8510000000000
b10000000000000000000010011000 2"
b100101 V
b10000000000000000000010001000 x"
b10000000000000000000010001000 &"
b10000000000000000000010001000 S"
b10000000000000000000010001100 W"
b10000000000000000000010001100 ?"
b10000000000000000000010001100 f"
b10000000000000000000010010000 q"
b10000000000000000000010011000 1"
b10000000000000000000010010100 K
b10000000000000000000010010100 ^
b10000000000000000000010010100 !#
1G
1<
#8520000000000
0G
0<
#8530000000000
b10000000000000000000010011100 2"
b100110 V
b10000000000000000000010011100 1"
b10000000000000000000010011000 K
b10000000000000000000010011000 ^
b10000000000000000000010011000 !#
b10000000000000000000010010100 q"
b10000000000000000000010010000 ?"
b10000000000000000000010010000 f"
b10000000000000000000010001100 &"
b10000000000000000000010001100 S"
b10000000000000000000010010000 W"
b10000000000000000000010001100 x"
1G
1<
#8540000000000
0G
0<
#8550000000000
b10000000000000000000010100000 2"
b100111 V
b10000000000000000000010010000 x"
b10000000000000000000010010000 &"
b10000000000000000000010010000 S"
b10000000000000000000010010100 W"
b10000000000000000000010010100 ?"
b10000000000000000000010010100 f"
b10000000000000000000010011000 q"
b10000000000000000000010100000 1"
b10000000000000000000010011100 K
b10000000000000000000010011100 ^
b10000000000000000000010011100 !#
1G
1<
#8560000000000
0G
0<
#8570000000000
b10000000000000000000010100100 2"
b101000 V
b10000000000000000000010100100 1"
b10000000000000000000010100000 K
b10000000000000000000010100000 ^
b10000000000000000000010100000 !#
b10000000000000000000010011100 q"
b10000000000000000000010011000 ?"
b10000000000000000000010011000 f"
b10000000000000000000010010100 &"
b10000000000000000000010010100 S"
b10000000000000000000010011000 W"
b10000000000000000000010010100 x"
1G
1<
#8580000000000
0G
0<
#8590000000000
b10000000000000000000010101000 2"
b101001 V
b10000000000000000000010011000 x"
b10000000000000000000010011000 &"
b10000000000000000000010011000 S"
b10000000000000000000010011100 W"
b10000000000000000000010011100 ?"
b10000000000000000000010011100 f"
b10000000000000000000010100000 q"
b10000000000000000000010101000 1"
b10000000000000000000010100100 K
b10000000000000000000010100100 ^
b10000000000000000000010100100 !#
1G
1<
#8600000000000
0G
0<
#8610000000000
b10000000000000000000010101100 2"
b101010 V
b10000000000000000000010101100 1"
b10000000000000000000010101000 K
b10000000000000000000010101000 ^
b10000000000000000000010101000 !#
b10000000000000000000010100100 q"
b10000000000000000000010100000 ?"
b10000000000000000000010100000 f"
b10000000000000000000010011100 &"
b10000000000000000000010011100 S"
b10000000000000000000010100000 W"
b10000000000000000000010011100 x"
1G
1<
#8620000000000
0G
0<
#8630000000000
b10000000000000000000010110000 2"
b101011 V
b10000000000000000000010100000 x"
b10000000000000000000010100000 &"
b10000000000000000000010100000 S"
b10000000000000000000010100100 W"
b10000000000000000000010100100 ?"
b10000000000000000000010100100 f"
b10000000000000000000010101000 q"
b10000000000000000000010110000 1"
b10000000000000000000010101100 K
b10000000000000000000010101100 ^
b10000000000000000000010101100 !#
1G
1<
#8640000000000
0G
0<
#8650000000000
b10000000000000000000010110100 2"
b101100 V
b10000000000000000000010110100 1"
b10000000000000000000010110000 K
b10000000000000000000010110000 ^
b10000000000000000000010110000 !#
b10000000000000000000010101100 q"
b10000000000000000000010101000 ?"
b10000000000000000000010101000 f"
b10000000000000000000010100100 &"
b10000000000000000000010100100 S"
b10000000000000000000010101000 W"
b10000000000000000000010100100 x"
1G
1<
#8660000000000
0G
0<
#8670000000000
b10000000000000000000010111000 2"
b101101 V
b10000000000000000000010101000 x"
b10000000000000000000010101000 &"
b10000000000000000000010101000 S"
b10000000000000000000010101100 W"
b10000000000000000000010101100 ?"
b10000000000000000000010101100 f"
b10000000000000000000010110000 q"
b10000000000000000000010111000 1"
b10000000000000000000010110100 K
b10000000000000000000010110100 ^
b10000000000000000000010110100 !#
1G
1<
#8680000000000
0G
0<
#8690000000000
b10000000000000000000010111100 2"
b101110 V
b10000000000000000000010111100 1"
b10000000000000000000010111000 K
b10000000000000000000010111000 ^
b10000000000000000000010111000 !#
b10000000000000000000010110100 q"
b10000000000000000000010110000 ?"
b10000000000000000000010110000 f"
b10000000000000000000010101100 &"
b10000000000000000000010101100 S"
b10000000000000000000010110000 W"
b10000000000000000000010101100 x"
1G
1<
#8700000000000
0G
0<
#8710000000000
b10000000000000000000011000000 2"
b101111 V
b10000000000000000000010110000 x"
b10000000000000000000010110000 &"
b10000000000000000000010110000 S"
b10000000000000000000010110100 W"
b10000000000000000000010110100 ?"
b10000000000000000000010110100 f"
b10000000000000000000010111000 q"
b10000000000000000000011000000 1"
b10000000000000000000010111100 K
b10000000000000000000010111100 ^
b10000000000000000000010111100 !#
1G
1<
#8720000000000
0G
0<
#8730000000000
b10000000000000000000011000100 2"
b110000 V
b10000000000000000000011000100 1"
b10000000000000000000011000000 K
b10000000000000000000011000000 ^
b10000000000000000000011000000 !#
b10000000000000000000010111100 q"
b10000000000000000000010111000 ?"
b10000000000000000000010111000 f"
b10000000000000000000010110100 &"
b10000000000000000000010110100 S"
b10000000000000000000010111000 W"
b10000000000000000000010110100 x"
1G
1<
#8740000000000
0G
0<
#8750000000000
b10000000000000000000011001000 2"
b110001 V
b10000000000000000000010111000 x"
b10000000000000000000010111000 &"
b10000000000000000000010111000 S"
b10000000000000000000010111100 W"
b10000000000000000000010111100 ?"
b10000000000000000000010111100 f"
b10000000000000000000011000000 q"
b10000000000000000000011001000 1"
b10000000000000000000011000100 K
b10000000000000000000011000100 ^
b10000000000000000000011000100 !#
1G
1<
#8760000000000
0G
0<
#8770000000000
b10000000000000000000011001100 2"
b110010 V
b10000000000000000000011001100 1"
b10000000000000000000011001000 K
b10000000000000000000011001000 ^
b10000000000000000000011001000 !#
b10000000000000000000011000100 q"
b10000000000000000000011000000 ?"
b10000000000000000000011000000 f"
b10000000000000000000010111100 &"
b10000000000000000000010111100 S"
b10000000000000000000011000000 W"
b10000000000000000000010111100 x"
1G
1<
#8780000000000
0G
0<
#8790000000000
b10000000000000000000011010000 2"
b110011 V
b10000000000000000000011000000 x"
b10000000000000000000011000000 &"
b10000000000000000000011000000 S"
b10000000000000000000011000100 W"
b10000000000000000000011000100 ?"
b10000000000000000000011000100 f"
b10000000000000000000011001000 q"
b10000000000000000000011010000 1"
b10000000000000000000011001100 K
b10000000000000000000011001100 ^
b10000000000000000000011001100 !#
1G
1<
#8800000000000
0G
0<
#8810000000000
b10000000000000000000011010100 2"
b110100 V
b10000000000000000000011010100 1"
b10000000000000000000011010000 K
b10000000000000000000011010000 ^
b10000000000000000000011010000 !#
b10000000000000000000011001100 q"
b10000000000000000000011001000 ?"
b10000000000000000000011001000 f"
b10000000000000000000011000100 &"
b10000000000000000000011000100 S"
b10000000000000000000011001000 W"
b10000000000000000000011000100 x"
1G
1<
#8820000000000
0G
0<
#8830000000000
b10000000000000000000011011000 2"
b110101 V
b10000000000000000000011001000 x"
b10000000000000000000011001000 &"
b10000000000000000000011001000 S"
b10000000000000000000011001100 W"
b10000000000000000000011001100 ?"
b10000000000000000000011001100 f"
b10000000000000000000011010000 q"
b10000000000000000000011011000 1"
b10000000000000000000011010100 K
b10000000000000000000011010100 ^
b10000000000000000000011010100 !#
1G
1<
#8840000000000
0G
0<
#8850000000000
b10000000000000000000011011100 2"
b110110 V
b10000000000000000000011011100 1"
b10000000000000000000011011000 K
b10000000000000000000011011000 ^
b10000000000000000000011011000 !#
b10000000000000000000011010100 q"
b10000000000000000000011010000 ?"
b10000000000000000000011010000 f"
b10000000000000000000011001100 &"
b10000000000000000000011001100 S"
b10000000000000000000011010000 W"
b10000000000000000000011001100 x"
1G
1<
#8860000000000
0G
0<
#8870000000000
b10000000000000000000011100000 2"
b110111 V
b10000000000000000000011010000 x"
b10000000000000000000011010000 &"
b10000000000000000000011010000 S"
b10000000000000000000011010100 W"
b10000000000000000000011010100 ?"
b10000000000000000000011010100 f"
b10000000000000000000011011000 q"
b10000000000000000000011100000 1"
b10000000000000000000011011100 K
b10000000000000000000011011100 ^
b10000000000000000000011011100 !#
1G
1<
#8880000000000
0G
0<
#8890000000000
b10000000000000000000011100100 2"
b111000 V
b10000000000000000000011100100 1"
b10000000000000000000011100000 K
b10000000000000000000011100000 ^
b10000000000000000000011100000 !#
b10000000000000000000011011100 q"
b10000000000000000000011011000 ?"
b10000000000000000000011011000 f"
b10000000000000000000011010100 &"
b10000000000000000000011010100 S"
b10000000000000000000011011000 W"
b10000000000000000000011010100 x"
1G
1<
#8900000000000
0G
0<
#8910000000000
b10000000000000000000011101000 2"
b111001 V
b10000000000000000000011011000 x"
b10000000000000000000011011000 &"
b10000000000000000000011011000 S"
b10000000000000000000011011100 W"
b10000000000000000000011011100 ?"
b10000000000000000000011011100 f"
b10000000000000000000011100000 q"
b10000000000000000000011101000 1"
b10000000000000000000011100100 K
b10000000000000000000011100100 ^
b10000000000000000000011100100 !#
1G
1<
#8920000000000
0G
0<
#8930000000000
b10000000000000000000011101100 2"
b111010 V
b10000000000000000000011101100 1"
b10000000000000000000011101000 K
b10000000000000000000011101000 ^
b10000000000000000000011101000 !#
b10000000000000000000011100100 q"
b10000000000000000000011100000 ?"
b10000000000000000000011100000 f"
b10000000000000000000011011100 &"
b10000000000000000000011011100 S"
b10000000000000000000011100000 W"
b10000000000000000000011011100 x"
1G
1<
#8940000000000
0G
0<
#8950000000000
b10000000000000000000011110000 2"
b111011 V
b10000000000000000000011100000 x"
b10000000000000000000011100000 &"
b10000000000000000000011100000 S"
b10000000000000000000011100100 W"
b10000000000000000000011100100 ?"
b10000000000000000000011100100 f"
b10000000000000000000011101000 q"
b10000000000000000000011110000 1"
b10000000000000000000011101100 K
b10000000000000000000011101100 ^
b10000000000000000000011101100 !#
1G
1<
#8960000000000
0G
0<
#8970000000000
b10000000000000000000011110100 2"
b111100 V
b10000000000000000000011110100 1"
b10000000000000000000011110000 K
b10000000000000000000011110000 ^
b10000000000000000000011110000 !#
b10000000000000000000011101100 q"
b10000000000000000000011101000 ?"
b10000000000000000000011101000 f"
b10000000000000000000011100100 &"
b10000000000000000000011100100 S"
b10000000000000000000011101000 W"
b10000000000000000000011100100 x"
1G
1<
#8980000000000
0G
0<
#8990000000000
b10000000000000000000011111000 2"
b111101 V
b10000000000000000000011101000 x"
b10000000000000000000011101000 &"
b10000000000000000000011101000 S"
b10000000000000000000011101100 W"
b10000000000000000000011101100 ?"
b10000000000000000000011101100 f"
b10000000000000000000011110000 q"
b10000000000000000000011111000 1"
b10000000000000000000011110100 K
b10000000000000000000011110100 ^
b10000000000000000000011110100 !#
1G
1<
#9000000000000
0G
0<
#9010000000000
b10000000000000000000011111100 2"
b111110 V
b10000000000000000000011111100 1"
b10000000000000000000011111000 K
b10000000000000000000011111000 ^
b10000000000000000000011111000 !#
b10000000000000000000011110100 q"
b10000000000000000000011110000 ?"
b10000000000000000000011110000 f"
b10000000000000000000011101100 &"
b10000000000000000000011101100 S"
b10000000000000000000011110000 W"
b10000000000000000000011101100 x"
1G
1<
#9020000000000
0G
0<
#9030000000000
b10000000000000000000100000000 2"
b111111 V
b10000000000000000000011110000 x"
b10000000000000000000011110000 &"
b10000000000000000000011110000 S"
b10000000000000000000011110100 W"
b10000000000000000000011110100 ?"
b10000000000000000000011110100 f"
b10000000000000000000011111000 q"
b10000000000000000000100000000 1"
b10000000000000000000011111100 K
b10000000000000000000011111100 ^
b10000000000000000000011111100 !#
1G
1<
#9040000000000
0G
0<
#9050000000000
b10000000000000000000100000100 2"
b1000000 V
b10000000000000000000100000100 1"
b10000000000000000000100000000 K
b10000000000000000000100000000 ^
b10000000000000000000100000000 !#
b10000000000000000000011111100 q"
b10000000000000000000011111000 ?"
b10000000000000000000011111000 f"
b10000000000000000000011110100 &"
b10000000000000000000011110100 S"
b10000000000000000000011111000 W"
b10000000000000000000011110100 x"
1G
1<
#9060000000000
0G
0<
#9070000000000
b10000000000000000000100001000 2"
b1000001 V
b10000000000000000000011111000 x"
b10000000000000000000011111000 &"
b10000000000000000000011111000 S"
b10000000000000000000011111100 W"
b10000000000000000000011111100 ?"
b10000000000000000000011111100 f"
b10000000000000000000100000000 q"
b10000000000000000000100001000 1"
b10000000000000000000100000100 K
b10000000000000000000100000100 ^
b10000000000000000000100000100 !#
1G
1<
#9080000000000
0G
0<
#9090000000000
b10000000000000000000100001100 2"
b1000010 V
b10000000000000000000100001100 1"
b10000000000000000000100001000 K
b10000000000000000000100001000 ^
b10000000000000000000100001000 !#
b10000000000000000000100000100 q"
b10000000000000000000100000000 ?"
b10000000000000000000100000000 f"
b10000000000000000000011111100 &"
b10000000000000000000011111100 S"
b10000000000000000000100000000 W"
b10000000000000000000011111100 x"
1G
1<
#9100000000000
0G
0<
#9110000000000
b10000000000000000000100010000 2"
b1000011 V
b10000000000000000000100000000 x"
b10000000000000000000100000000 &"
b10000000000000000000100000000 S"
b10000000000000000000100000100 W"
b10000000000000000000100000100 ?"
b10000000000000000000100000100 f"
b10000000000000000000100001000 q"
b10000000000000000000100010000 1"
b10000000000000000000100001100 K
b10000000000000000000100001100 ^
b10000000000000000000100001100 !#
1G
1<
#9120000000000
0G
0<
#9130000000000
b10000000000000000000100010100 2"
b1000100 V
b10000000000000000000100010100 1"
b10000000000000000000100010000 K
b10000000000000000000100010000 ^
b10000000000000000000100010000 !#
b10000000000000000000100001100 q"
b10000000000000000000100001000 ?"
b10000000000000000000100001000 f"
b10000000000000000000100000100 &"
b10000000000000000000100000100 S"
b10000000000000000000100001000 W"
b10000000000000000000100000100 x"
1G
1<
#9140000000000
0G
0<
#9150000000000
b10000000000000000000100011000 2"
b1000101 V
b10000000000000000000100001000 x"
b10000000000000000000100001000 &"
b10000000000000000000100001000 S"
b10000000000000000000100001100 W"
b10000000000000000000100001100 ?"
b10000000000000000000100001100 f"
b10000000000000000000100010000 q"
b10000000000000000000100011000 1"
b10000000000000000000100010100 K
b10000000000000000000100010100 ^
b10000000000000000000100010100 !#
1G
1<
#9160000000000
0G
0<
#9170000000000
b10000000000000000000100011100 2"
b1000110 V
b10000000000000000000100011100 1"
b10000000000000000000100011000 K
b10000000000000000000100011000 ^
b10000000000000000000100011000 !#
b10000000000000000000100010100 q"
b10000000000000000000100010000 ?"
b10000000000000000000100010000 f"
b10000000000000000000100001100 &"
b10000000000000000000100001100 S"
b10000000000000000000100010000 W"
b10000000000000000000100001100 x"
1G
1<
#9180000000000
0G
0<
#9190000000000
b10000000000000000000100100000 2"
b1000111 V
b10000000000000000000100010000 x"
b10000000000000000000100010000 &"
b10000000000000000000100010000 S"
b10000000000000000000100010100 W"
b10000000000000000000100010100 ?"
b10000000000000000000100010100 f"
b10000000000000000000100011000 q"
b10000000000000000000100100000 1"
b10000000000000000000100011100 K
b10000000000000000000100011100 ^
b10000000000000000000100011100 !#
1G
1<
#9200000000000
0G
0<
#9210000000000
b10000000000000000000100100100 2"
b1001000 V
b10000000000000000000100100100 1"
b10000000000000000000100100000 K
b10000000000000000000100100000 ^
b10000000000000000000100100000 !#
b10000000000000000000100011100 q"
b10000000000000000000100011000 ?"
b10000000000000000000100011000 f"
b10000000000000000000100010100 &"
b10000000000000000000100010100 S"
b10000000000000000000100011000 W"
b10000000000000000000100010100 x"
1G
1<
#9220000000000
0G
0<
#9230000000000
b10000000000000000000100101000 2"
b1001001 V
b10000000000000000000100011000 x"
b10000000000000000000100011000 &"
b10000000000000000000100011000 S"
b10000000000000000000100011100 W"
b10000000000000000000100011100 ?"
b10000000000000000000100011100 f"
b10000000000000000000100100000 q"
b10000000000000000000100101000 1"
b10000000000000000000100100100 K
b10000000000000000000100100100 ^
b10000000000000000000100100100 !#
1G
1<
#9240000000000
0G
0<
#9250000000000
b10000000000000000000100101100 2"
b1001010 V
b10000000000000000000100101100 1"
b10000000000000000000100101000 K
b10000000000000000000100101000 ^
b10000000000000000000100101000 !#
b10000000000000000000100100100 q"
b10000000000000000000100100000 ?"
b10000000000000000000100100000 f"
b10000000000000000000100011100 &"
b10000000000000000000100011100 S"
b10000000000000000000100100000 W"
b10000000000000000000100011100 x"
1G
1<
#9260000000000
0G
0<
#9270000000000
b10000000000000000000100110000 2"
b1001011 V
b10000000000000000000100100000 x"
b10000000000000000000100100000 &"
b10000000000000000000100100000 S"
b10000000000000000000100100100 W"
b10000000000000000000100100100 ?"
b10000000000000000000100100100 f"
b10000000000000000000100101000 q"
b10000000000000000000100110000 1"
b10000000000000000000100101100 K
b10000000000000000000100101100 ^
b10000000000000000000100101100 !#
1G
1<
#9280000000000
0G
0<
#9290000000000
b10000000000000000000100110100 2"
b1001100 V
b10000000000000000000100110100 1"
b10000000000000000000100110000 K
b10000000000000000000100110000 ^
b10000000000000000000100110000 !#
b10000000000000000000100101100 q"
b10000000000000000000100101000 ?"
b10000000000000000000100101000 f"
b10000000000000000000100100100 &"
b10000000000000000000100100100 S"
b10000000000000000000100101000 W"
b10000000000000000000100100100 x"
1G
1<
#9300000000000
0G
0<
#9310000000000
b10000000000000000000100111000 2"
b1001101 V
b10000000000000000000100101000 x"
b10000000000000000000100101000 &"
b10000000000000000000100101000 S"
b10000000000000000000100101100 W"
b10000000000000000000100101100 ?"
b10000000000000000000100101100 f"
b10000000000000000000100110000 q"
b10000000000000000000100111000 1"
b10000000000000000000100110100 K
b10000000000000000000100110100 ^
b10000000000000000000100110100 !#
1G
1<
#9320000000000
0G
0<
#9330000000000
b10000000000000000000100111100 2"
b1001110 V
b10000000000000000000100111100 1"
b10000000000000000000100111000 K
b10000000000000000000100111000 ^
b10000000000000000000100111000 !#
b10000000000000000000100110100 q"
b10000000000000000000100110000 ?"
b10000000000000000000100110000 f"
b10000000000000000000100101100 &"
b10000000000000000000100101100 S"
b10000000000000000000100110000 W"
b10000000000000000000100101100 x"
1G
1<
#9340000000000
0G
0<
#9350000000000
b10000000000000000000101000000 2"
b1001111 V
b10000000000000000000100110000 x"
b10000000000000000000100110000 &"
b10000000000000000000100110000 S"
b10000000000000000000100110100 W"
b10000000000000000000100110100 ?"
b10000000000000000000100110100 f"
b10000000000000000000100111000 q"
b10000000000000000000101000000 1"
b10000000000000000000100111100 K
b10000000000000000000100111100 ^
b10000000000000000000100111100 !#
1G
1<
#9360000000000
0G
0<
#9370000000000
b10000000000000000000101000100 2"
b1010000 V
b10000000000000000000101000100 1"
b10000000000000000000101000000 K
b10000000000000000000101000000 ^
b10000000000000000000101000000 !#
b10000000000000000000100111100 q"
b10000000000000000000100111000 ?"
b10000000000000000000100111000 f"
b10000000000000000000100110100 &"
b10000000000000000000100110100 S"
b10000000000000000000100111000 W"
b10000000000000000000100110100 x"
1G
1<
#9380000000000
0G
0<
#9390000000000
b10000000000000000000101001000 2"
b1010001 V
b10000000000000000000100111000 x"
b10000000000000000000100111000 &"
b10000000000000000000100111000 S"
b10000000000000000000100111100 W"
b10000000000000000000100111100 ?"
b10000000000000000000100111100 f"
b10000000000000000000101000000 q"
b10000000000000000000101001000 1"
b10000000000000000000101000100 K
b10000000000000000000101000100 ^
b10000000000000000000101000100 !#
1G
1<
#9400000000000
0G
0<
#9410000000000
b10000000000000000000101001100 2"
b1010010 V
b10000000000000000000101001100 1"
b10000000000000000000101001000 K
b10000000000000000000101001000 ^
b10000000000000000000101001000 !#
b10000000000000000000101000100 q"
b10000000000000000000101000000 ?"
b10000000000000000000101000000 f"
b10000000000000000000100111100 &"
b10000000000000000000100111100 S"
b10000000000000000000101000000 W"
b10000000000000000000100111100 x"
1G
1<
#9420000000000
0G
0<
#9430000000000
b10000000000000000000101010000 2"
b1010011 V
b10000000000000000000101000000 x"
b10000000000000000000101000000 &"
b10000000000000000000101000000 S"
b10000000000000000000101000100 W"
b10000000000000000000101000100 ?"
b10000000000000000000101000100 f"
b10000000000000000000101001000 q"
b10000000000000000000101010000 1"
b10000000000000000000101001100 K
b10000000000000000000101001100 ^
b10000000000000000000101001100 !#
1G
1<
#9440000000000
0G
0<
#9450000000000
b10000000000000000000101010100 2"
b1010100 V
b10000000000000000000101010100 1"
b10000000000000000000101010000 K
b10000000000000000000101010000 ^
b10000000000000000000101010000 !#
b10000000000000000000101001100 q"
b10000000000000000000101001000 ?"
b10000000000000000000101001000 f"
b10000000000000000000101000100 &"
b10000000000000000000101000100 S"
b10000000000000000000101001000 W"
b10000000000000000000101000100 x"
1G
1<
#9460000000000
0G
0<
#9470000000000
b10000000000000000000101011000 2"
b1010101 V
b10000000000000000000101001000 x"
b10000000000000000000101001000 &"
b10000000000000000000101001000 S"
b10000000000000000000101001100 W"
b10000000000000000000101001100 ?"
b10000000000000000000101001100 f"
b10000000000000000000101010000 q"
b10000000000000000000101011000 1"
b10000000000000000000101010100 K
b10000000000000000000101010100 ^
b10000000000000000000101010100 !#
1G
1<
#9480000000000
0G
0<
#9490000000000
b10000000000000000000101011100 2"
b1010110 V
b10000000000000000000101011100 1"
b10000000000000000000101011000 K
b10000000000000000000101011000 ^
b10000000000000000000101011000 !#
b10000000000000000000101010100 q"
b10000000000000000000101010000 ?"
b10000000000000000000101010000 f"
b10000000000000000000101001100 &"
b10000000000000000000101001100 S"
b10000000000000000000101010000 W"
b10000000000000000000101001100 x"
1G
1<
#9500000000000
0G
0<
#9510000000000
b10000000000000000000101100000 2"
b1010111 V
b10000000000000000000101010000 x"
b10000000000000000000101010000 &"
b10000000000000000000101010000 S"
b10000000000000000000101010100 W"
b10000000000000000000101010100 ?"
b10000000000000000000101010100 f"
b10000000000000000000101011000 q"
b10000000000000000000101100000 1"
b10000000000000000000101011100 K
b10000000000000000000101011100 ^
b10000000000000000000101011100 !#
1G
1<
#9520000000000
0G
0<
#9530000000000
b10000000000000000000101100100 2"
b1011000 V
b10000000000000000000101100100 1"
b10000000000000000000101100000 K
b10000000000000000000101100000 ^
b10000000000000000000101100000 !#
b10000000000000000000101011100 q"
b10000000000000000000101011000 ?"
b10000000000000000000101011000 f"
b10000000000000000000101010100 &"
b10000000000000000000101010100 S"
b10000000000000000000101011000 W"
b10000000000000000000101010100 x"
1G
1<
#9540000000000
0G
0<
#9550000000000
b10000000000000000000101101000 2"
b1011001 V
b10000000000000000000101011000 x"
b10000000000000000000101011000 &"
b10000000000000000000101011000 S"
b10000000000000000000101011100 W"
b10000000000000000000101011100 ?"
b10000000000000000000101011100 f"
b10000000000000000000101100000 q"
b10000000000000000000101101000 1"
b10000000000000000000101100100 K
b10000000000000000000101100100 ^
b10000000000000000000101100100 !#
1G
1<
#9560000000000
0G
0<
#9570000000000
b10000000000000000000101101100 2"
b1011010 V
b10000000000000000000101101100 1"
b10000000000000000000101101000 K
b10000000000000000000101101000 ^
b10000000000000000000101101000 !#
b10000000000000000000101100100 q"
b10000000000000000000101100000 ?"
b10000000000000000000101100000 f"
b10000000000000000000101011100 &"
b10000000000000000000101011100 S"
b10000000000000000000101100000 W"
b10000000000000000000101011100 x"
1G
1<
#9580000000000
0G
0<
#9590000000000
b10000000000000000000101110000 2"
b1011011 V
b10000000000000000000101100000 x"
b10000000000000000000101100000 &"
b10000000000000000000101100000 S"
b10000000000000000000101100100 W"
b10000000000000000000101100100 ?"
b10000000000000000000101100100 f"
b10000000000000000000101101000 q"
b10000000000000000000101110000 1"
b10000000000000000000101101100 K
b10000000000000000000101101100 ^
b10000000000000000000101101100 !#
1G
1<
#9600000000000
0G
0<
#9610000000000
b10000000000000000000101110100 2"
b1011100 V
b10000000000000000000101110100 1"
b10000000000000000000101110000 K
b10000000000000000000101110000 ^
b10000000000000000000101110000 !#
b10000000000000000000101101100 q"
b10000000000000000000101101000 ?"
b10000000000000000000101101000 f"
b10000000000000000000101100100 &"
b10000000000000000000101100100 S"
b10000000000000000000101101000 W"
b10000000000000000000101100100 x"
1G
1<
#9620000000000
0G
0<
#9630000000000
b10000000000000000000101111000 2"
b1011101 V
b10000000000000000000101101000 x"
b10000000000000000000101101000 &"
b10000000000000000000101101000 S"
b10000000000000000000101101100 W"
b10000000000000000000101101100 ?"
b10000000000000000000101101100 f"
b10000000000000000000101110000 q"
b10000000000000000000101111000 1"
b10000000000000000000101110100 K
b10000000000000000000101110100 ^
b10000000000000000000101110100 !#
1G
1<
#9640000000000
0G
0<
#9650000000000
b10000000000000000000101111100 2"
b1011110 V
b10000000000000000000101111100 1"
b10000000000000000000101111000 K
b10000000000000000000101111000 ^
b10000000000000000000101111000 !#
b10000000000000000000101110100 q"
b10000000000000000000101110000 ?"
b10000000000000000000101110000 f"
b10000000000000000000101101100 &"
b10000000000000000000101101100 S"
b10000000000000000000101110000 W"
b10000000000000000000101101100 x"
1G
1<
#9660000000000
0G
0<
#9670000000000
b10000000000000000000110000000 2"
b1011111 V
b10000000000000000000101110000 x"
b10000000000000000000101110000 &"
b10000000000000000000101110000 S"
b10000000000000000000101110100 W"
b10000000000000000000101110100 ?"
b10000000000000000000101110100 f"
b10000000000000000000101111000 q"
b10000000000000000000110000000 1"
b10000000000000000000101111100 K
b10000000000000000000101111100 ^
b10000000000000000000101111100 !#
1G
1<
#9680000000000
0G
0<
#9690000000000
b10000000000000000000110000100 2"
b1100000 V
b10000000000000000000110000100 1"
b10000000000000000000110000000 K
b10000000000000000000110000000 ^
b10000000000000000000110000000 !#
b10000000000000000000101111100 q"
b10000000000000000000101111000 ?"
b10000000000000000000101111000 f"
b10000000000000000000101110100 &"
b10000000000000000000101110100 S"
b10000000000000000000101111000 W"
b10000000000000000000101110100 x"
1G
1<
#9700000000000
0G
0<
#9710000000000
b10000000000000000000110001000 2"
b1100001 V
b10000000000000000000101111000 x"
b10000000000000000000101111000 &"
b10000000000000000000101111000 S"
b10000000000000000000101111100 W"
b10000000000000000000101111100 ?"
b10000000000000000000101111100 f"
b10000000000000000000110000000 q"
b10000000000000000000110001000 1"
b10000000000000000000110000100 K
b10000000000000000000110000100 ^
b10000000000000000000110000100 !#
1G
1<
#9720000000000
0G
0<
#9730000000000
b10000000000000000000110001100 2"
b1100010 V
b10000000000000000000110001100 1"
b10000000000000000000110001000 K
b10000000000000000000110001000 ^
b10000000000000000000110001000 !#
b10000000000000000000110000100 q"
b10000000000000000000110000000 ?"
b10000000000000000000110000000 f"
b10000000000000000000101111100 &"
b10000000000000000000101111100 S"
b10000000000000000000110000000 W"
b10000000000000000000101111100 x"
1G
1<
#9740000000000
0G
0<
#9750000000000
b10000000000000000000110010000 2"
b1100011 V
b10000000000000000000110000000 x"
b10000000000000000000110000000 &"
b10000000000000000000110000000 S"
b10000000000000000000110000100 W"
b10000000000000000000110000100 ?"
b10000000000000000000110000100 f"
b10000000000000000000110001000 q"
b10000000000000000000110010000 1"
b10000000000000000000110001100 K
b10000000000000000000110001100 ^
b10000000000000000000110001100 !#
1G
1<
#9760000000000
0G
0<
#9770000000000
b10000000000000000000110010100 2"
b1100100 V
b10000000000000000000110010100 1"
b10000000000000000000110010000 K
b10000000000000000000110010000 ^
b10000000000000000000110010000 !#
b10000000000000000000110001100 q"
b10000000000000000000110001000 ?"
b10000000000000000000110001000 f"
b10000000000000000000110000100 &"
b10000000000000000000110000100 S"
b10000000000000000000110001000 W"
b10000000000000000000110000100 x"
1G
1<
#9780000000000
0G
0<
#9790000000000
b10000000000000000000110011000 2"
b1100101 V
b10000000000000000000110001000 x"
b10000000000000000000110001000 &"
b10000000000000000000110001000 S"
b10000000000000000000110001100 W"
b10000000000000000000110001100 ?"
b10000000000000000000110001100 f"
b10000000000000000000110010000 q"
b10000000000000000000110011000 1"
b10000000000000000000110010100 K
b10000000000000000000110010100 ^
b10000000000000000000110010100 !#
1G
1<
#9800000000000
0G
0<
#9810000000000
b10000000000000000000110011100 2"
b1100110 V
b10000000000000000000110011100 1"
b10000000000000000000110011000 K
b10000000000000000000110011000 ^
b10000000000000000000110011000 !#
b10000000000000000000110010100 q"
b10000000000000000000110010000 ?"
b10000000000000000000110010000 f"
b10000000000000000000110001100 &"
b10000000000000000000110001100 S"
b10000000000000000000110010000 W"
b10000000000000000000110001100 x"
1G
1<
#9820000000000
0G
0<
#9830000000000
b10000000000000000000110100000 2"
b1100111 V
b10000000000000000000110010000 x"
b10000000000000000000110010000 &"
b10000000000000000000110010000 S"
b10000000000000000000110010100 W"
b10000000000000000000110010100 ?"
b10000000000000000000110010100 f"
b10000000000000000000110011000 q"
b10000000000000000000110100000 1"
b10000000000000000000110011100 K
b10000000000000000000110011100 ^
b10000000000000000000110011100 !#
1G
1<
#9840000000000
0G
0<
#9850000000000
b10000000000000000000110100100 2"
b1101000 V
b10000000000000000000110100100 1"
b10000000000000000000110100000 K
b10000000000000000000110100000 ^
b10000000000000000000110100000 !#
b10000000000000000000110011100 q"
b10000000000000000000110011000 ?"
b10000000000000000000110011000 f"
b10000000000000000000110010100 &"
b10000000000000000000110010100 S"
b10000000000000000000110011000 W"
b10000000000000000000110010100 x"
1G
1<
#9860000000000
0G
0<
#9870000000000
b10000000000000000000110101000 2"
b1101001 V
b10000000000000000000110011000 x"
b10000000000000000000110011000 &"
b10000000000000000000110011000 S"
b10000000000000000000110011100 W"
b10000000000000000000110011100 ?"
b10000000000000000000110011100 f"
b10000000000000000000110100000 q"
b10000000000000000000110101000 1"
b10000000000000000000110100100 K
b10000000000000000000110100100 ^
b10000000000000000000110100100 !#
1G
1<
#9880000000000
0G
0<
#9890000000000
b10000000000000000000110101100 2"
b1101010 V
b10000000000000000000110101100 1"
b10000000000000000000110101000 K
b10000000000000000000110101000 ^
b10000000000000000000110101000 !#
b10000000000000000000110100100 q"
b10000000000000000000110100000 ?"
b10000000000000000000110100000 f"
b10000000000000000000110011100 &"
b10000000000000000000110011100 S"
b10000000000000000000110100000 W"
b10000000000000000000110011100 x"
1G
1<
#9900000000000
0G
0<
#9910000000000
b10000000000000000000110110000 2"
b1101011 V
b10000000000000000000110100000 x"
b10000000000000000000110100000 &"
b10000000000000000000110100000 S"
b10000000000000000000110100100 W"
b10000000000000000000110100100 ?"
b10000000000000000000110100100 f"
b10000000000000000000110101000 q"
b10000000000000000000110110000 1"
b10000000000000000000110101100 K
b10000000000000000000110101100 ^
b10000000000000000000110101100 !#
1G
1<
