`timescale 1ns/1ns

module RV32I_System_tb();

  reg           clk;
  reg           reset;
  integer       cycle_count;

  parameter integer RESET_CYCLES   = 8;
  // TFLM startup/data-copy loops can take much longer than simple unit tests.
  // Set to 0 to disable timeout.
  parameter integer TIMEOUT_CYCLES = 500000000;
  parameter integer PROGRESS_CYCLES = 1000000;
  parameter IMEM_HEX = "imem.hex";
  parameter DMEM_HEX = "dmem.hex";

  // instantiate device to be tested
  RV32I_System iRV32I_System (
        .CLOCK_50  (clk),
        .reset     (reset)
  );

  // Clock
  initial begin
    clk = 1'b0;
    forever #10 clk = ~clk;
  end

  // Keep reset asserted, load memory images, then release reset.
  initial begin
    reset = 1'b0;
    cycle_count = 0;

    repeat (RESET_CYCLES) @(posedge clk);

    $display("[TB] Loading %0s into IMEM", IMEM_HEX);
    $readmemh(IMEM_HEX, iRV32I_System.iIMem.mem);
    $display("[TB] Loading %0s into DMEM", DMEM_HEX);
    $readmemh(DMEM_HEX, iRV32I_System.iDMem.mem);

    @(negedge clk);
    reset = 1'b1;
    $display("[TB] Reset released at %t", $time);
  end

  // Cycle counter after reset release.
  always @(posedge clk) begin
    if (reset)
      cycle_count <= cycle_count + 1;
  end

  // Progress log for long-running TFLM simulations.
  always @(posedge clk) begin
    if (reset && PROGRESS_CYCLES > 0 && cycle_count > 0 && (cycle_count % PROGRESS_CYCLES) == 0) begin
      $display("[TB] progress: cycles=%0d PC=0x%08h INST=0x%08h", cycle_count,
               iRV32I_System.icpu.pc, iRV32I_System.icpu.inst);
    end
  end

  // Halt/timeout monitor.
  always @(posedge clk) begin
    if (reset && iRV32I_System.icpu.inst == 32'h0000006f) begin
      $display("\n==============================================");
      $display(" TFLM program finished (jal x0, 0 detected)");
      $display(" Time: %t", $time);
      $display(" Cycles: %0d", cycle_count);
      $display(" x10 (a0): %0d (0x%08h)", iRV32I_System.icpu.i_datapath.i_regfile.x10,
               iRV32I_System.icpu.i_datapath.i_regfile.x10);
      $display(" dmem[0]=0x%08h dmem[1]=0x%08h dmem[2]=0x%08h dmem[3]=0x%08h",
               iRV32I_System.iDMem.mem[0], iRV32I_System.iDMem.mem[1],
               iRV32I_System.iDMem.mem[2], iRV32I_System.iDMem.mem[3]);
      $display("==============================================\n");
      $finish;
    end

    if (reset && TIMEOUT_CYCLES > 0 && cycle_count >= TIMEOUT_CYCLES) begin
      $display("\n[TB][ERROR] Timeout after %0d cycles", TIMEOUT_CYCLES);
      $display(" PC=0x%08h INST=0x%08h", iRV32I_System.icpu.pc, iRV32I_System.icpu.inst);
      $finish;
    end
  end
      
endmodule
