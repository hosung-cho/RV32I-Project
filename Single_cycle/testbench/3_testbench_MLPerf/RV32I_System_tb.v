`timescale 1ns/1ns

module RV32I_System_tb();

  reg clk;
  reg reset;
  integer cycle_count;
  integer last_status;

  parameter integer RESET_CYCLES = 8;
  parameter integer TIMEOUT_CYCLES = 20000000;
  parameter integer PROGRESS_CYCLES = 1000000;
  parameter IMEM_HEX = "imem.hex";
  parameter DMEM_HEX = "dmem.hex";

  RV32I_System iRV32I_System (
    .CLOCK_50(clk),
    .reset(reset)
  );

  initial begin
    clk = 1'b0;
    forever #10 clk = ~clk;
  end

  task dump_mailbox;
    integer i;
    begin
      $display("[TB][MAILBOX] status=0x%08h pred=%0d raw=%0d",
               iRV32I_System.iDMem.mem[0],
               iRV32I_System.iDMem.mem[1],
               iRV32I_System.iDMem.mem[2]);
      for (i = 0; i < 12; i = i + 1) begin
        $display("[TB][MAILBOX] output[%0d]=%0d (0x%08h)",
                 i, $signed(iRV32I_System.iDMem.mem[3 + i][7:0]),
                 iRV32I_System.iDMem.mem[3 + i]);
      end
    end
  endtask

  initial begin
    reset = 1'b0;
    cycle_count = 0;
    last_status = 32'hx;

    repeat (RESET_CYCLES) @(posedge clk);
    @(negedge clk);
    reset = 1'b1;
    $display("[TB] Reset released at %t", $time);
  end

  always @(posedge clk) begin
    if (reset)
      cycle_count <= cycle_count + 1;
  end

  always @(posedge clk) begin
    if (reset && iRV32I_System.iDMem.mem[0] !== last_status) begin
      last_status = iRV32I_System.iDMem.mem[0];
      $display("[TB] status change: cycle=%0d status=0x%08h PC=0x%08h INST=0x%08h",
               cycle_count, iRV32I_System.iDMem.mem[0],
               iRV32I_System.icpu.pc, iRV32I_System.icpu.inst);
    end
  end

  always @(posedge clk) begin
    if (reset && PROGRESS_CYCLES > 0 && cycle_count > 0 &&
        (cycle_count % PROGRESS_CYCLES) == 0) begin
      $display("[TB] progress: cycles=%0d PC=0x%08h INST=0x%08h status=0x%08h",
               cycle_count, iRV32I_System.icpu.pc, iRV32I_System.icpu.inst,
               iRV32I_System.iDMem.mem[0]);
    end
  end

  always @(posedge clk) begin
    if (reset && iRV32I_System.iDMem.mem[0] == 32'h00000001) begin
      $display("\n==============================================");
      $display(" MLPerf KWS inference finished");
      $display(" Cycles: %0d", cycle_count);
      $display(" PC=0x%08h INST=0x%08h", iRV32I_System.icpu.pc, iRV32I_System.icpu.inst);
      dump_mailbox();
      $display("==============================================\n");
      $finish;
    end

    if (reset && iRV32I_System.iDMem.mem[0][31] == 1'b1) begin
      $display("\n[TB][ERROR] MLPerf KWS returned failure status=0x%08h",
               iRV32I_System.iDMem.mem[0]);
      $display(" Cycles: %0d PC=0x%08h INST=0x%08h", cycle_count,
               iRV32I_System.icpu.pc, iRV32I_System.icpu.inst);
      dump_mailbox();
      $finish;
    end

    if (reset && TIMEOUT_CYCLES > 0 && cycle_count >= TIMEOUT_CYCLES) begin
      $display("\n[TB][ERROR] Timeout after %0d cycles", TIMEOUT_CYCLES);
      $display(" PC=0x%08h INST=0x%08h status=0x%08h",
               iRV32I_System.icpu.pc, iRV32I_System.icpu.inst,
               iRV32I_System.iDMem.mem[0]);
      dump_mailbox();
      $finish;
    end
  end

endmodule
