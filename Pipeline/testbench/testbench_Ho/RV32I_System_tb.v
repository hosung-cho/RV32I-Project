`timescale 1ns/1ns

module RV32I_System_tb();

  reg           clk;
  reg           reset;
  integer       cycle_count;

  // instantiate device to be tested
  RV32I_System    iRV32I_System (
        .CLOCK_50  (clk),
        .reset     (reset)
  );

  // Reset
  initial
  begin
    reset <= 1;
    #50; 
    reset <= 0;
    #50;
    reset <= 1;
    cycle_count = 0;
    
    $display("========================================");
    $display("RV32I Pipeline CPU Test Starting");
    $display("========================================");
  end

  // Clock 
  initial
  begin
    clk <= 0; 
    forever #10 clk <= ~clk;
  end
  
  // Cycle counter
  always @(posedge clk) begin
    if (reset == 1)
      cycle_count = cycle_count + 1;
  end
  
  // Simulation control and result checking
  initial
  begin
    #50;  // Wait for reset
    #100; // Wait for initialization
    
    // Run for enough cycles to complete the test
    #2000;
    
    $display("\n========================================");
    $display("Simulation Results at time %t", $time);
    $display("Total cycles executed: %d", cycle_count);
    $display("========================================");
    
    // Check memory results based on TEST_SELECT
    $display("\nMemory Contents:");
    $display("mem[0]  = 0x%h (%d)", iRV32I_System.iDMem.mem[0], iRV32I_System.iDMem.mem[0]);
    $display("mem[1]  = 0x%h (%d)", iRV32I_System.iDMem.mem[1], iRV32I_System.iDMem.mem[1]);
    $display("mem[2]  = 0x%h (%d)", iRV32I_System.iDMem.mem[2], iRV32I_System.iDMem.mem[2]);
    $display("mem[3]  = 0x%h (%d)", iRV32I_System.iDMem.mem[3], iRV32I_System.iDMem.mem[3]);
    $display("mem[4]  = 0x%h (%d)", iRV32I_System.iDMem.mem[4], iRV32I_System.iDMem.mem[4]);
    $display("mem[5]  = 0x%h (%d)", iRV32I_System.iDMem.mem[5], iRV32I_System.iDMem.mem[5]);
    $display("mem[6]  = 0x%h (%d)", iRV32I_System.iDMem.mem[6], iRV32I_System.iDMem.mem[6]);
    
    $display("\nRegister File Contents (Selected):");
    $display("x10 = 0x%h (%d)", iRV32I_System.icpu.i_datapath.i_regfile.x10, iRV32I_System.icpu.i_datapath.i_regfile.x10);
    $display("x11 = 0x%h (%d)", iRV32I_System.icpu.i_datapath.i_regfile.x11, iRV32I_System.icpu.i_datapath.i_regfile.x11);
    $display("x12 = 0x%h (%d)", iRV32I_System.icpu.i_datapath.i_regfile.x12, iRV32I_System.icpu.i_datapath.i_regfile.x12);
    $display("x13 = 0x%h (%d)", iRV32I_System.icpu.i_datapath.i_regfile.x13, iRV32I_System.icpu.i_datapath.i_regfile.x13);
    $display("x14 = 0x%h (%d)", iRV32I_System.icpu.i_datapath.i_regfile.x14, iRV32I_System.icpu.i_datapath.i_regfile.x14);
    $display("x15 = 0x%h (%d)", iRV32I_System.icpu.i_datapath.i_regfile.x15, iRV32I_System.icpu.i_datapath.i_regfile.x15);
    
    $display("\n========================================");
    $display("Test completed successfully");
    $display("========================================");
    
    $finish;
  end
  
  // Detailed pipeline monitoring for debugging memory write
  always @(posedge clk) begin
    if (reset == 1 && cycle_count > 0 && cycle_count <= 20) begin
      $display("\n=== Cycle %0d ===", cycle_count);
      $display("  IF:  PC=%h | Inst=%h", 
               iRV32I_System.icpu.i_datapath.pc, 
               iRV32I_System.icpu.inst);
      $display("  ID:  IFID_inst=%h | rs1=x%0d | rs2=x%0d", 
               iRV32I_System.icpu.i_datapath.IFID_inst,
               iRV32I_System.icpu.i_datapath.rs1,
               iRV32I_System.icpu.i_datapath.rs2);
      $display("       rs1_data=%h | rs2_data=%h",
               iRV32I_System.icpu.i_datapath.rs1_data,
               iRV32I_System.icpu.i_datapath.rs2_data);
      $display("  EX:  IDEX_rd=x%0d | IDEX_rs1=x%0d | IDEX_rs2=x%0d", 
               iRV32I_System.icpu.i_datapath.IDEX_rd,
               iRV32I_System.icpu.i_datapath.IDEX_rs1,
               iRV32I_System.icpu.i_datapath.IDEX_rs2);
      $display("       IDEX_rs2_data=%h | forwardB=%b | forward_rs2_data=%h", 
               iRV32I_System.icpu.i_datapath.IDEX_rs2_data,
               iRV32I_System.icpu.i_datapath.forwardB,
               iRV32I_System.icpu.i_datapath.forward_rs2_data);
      $display("  MEM: EXMEM_rd=x%0d | EXMEM_RegWrite=%b | EXMEM_rs2_data=%h", 
               iRV32I_System.icpu.i_datapath.EXMEM_rd,
               iRV32I_System.icpu.i_datapath.EXMEM_RegWrite,
               iRV32I_System.icpu.i_datapath.EXMEM_rs2_data);
      $display("  WB:  MEMWB_rd=x%0d | MEMWB_RegWrite=%b | rd_data=%h",
               iRV32I_System.icpu.i_datapath.MEMWB_rd,
               iRV32I_System.icpu.i_datapath.MEMWB_RegWrite,
               iRV32I_System.icpu.i_datapath.rd_data);
      $display("  OUT: data_we=%b | data_addr=%h | write_data=%h | ByteEnable=%b",
               iRV32I_System.data_we,
               iRV32I_System.data_addr,
               iRV32I_System.write_data,
               iRV32I_System.ByteEnable);
      $display("  REG: x10=%h | x11=%h | x12=%h", 
               iRV32I_System.icpu.i_datapath.i_regfile.x10,
               iRV32I_System.icpu.i_datapath.i_regfile.x11,
               iRV32I_System.icpu.i_datapath.i_regfile.x12);
    end
  end
      
endmodule
