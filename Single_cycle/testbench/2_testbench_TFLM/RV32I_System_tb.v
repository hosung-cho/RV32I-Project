`timescale 1ns/1ns

module RV32I_System_tb();

  reg           clk;
  reg           reset;
  integer       cycle_count;
  reg [31:0]    prev_pc;
  integer       halt_stable_count;

  parameter integer RESET_CYCLES   = 8;
  // TFLM startup/data-copy loops can take much longer than simple unit tests.
  // Set to 0 to disable timeout.
  parameter integer TIMEOUT_CYCLES = 500000000;
  parameter integer PROGRESS_CYCLES = 1000000;
  parameter integer CLI_TIME_LOG_MS = 10;
  localparam integer NS_PER_MS = 1000000;
  parameter [31:0] STACK_INIT_SP = 32'h2001_0000;
  parameter integer DUMP_DMEM_AFTER_HALT = 1;
  parameter [31:0] DUMP_BASE_ADDR = 32'h2000_F000;
  parameter integer DUMP_BYTE_COUNT = 128;
  parameter IMEM_HEX = "imem.hex";
  parameter DMEM_HEX = "dmem.hex";

  task dump_dmem_window;
    integer word_base;
    integer word_count;
    integer i;
    integer b0;
    integer b1;
    integer b2;
    integer b3;
    reg [31:0] w;
    begin
      word_base = (DUMP_BASE_ADDR - 32'h2000_0000) >> 2;
      word_count = (DUMP_BYTE_COUNT + 3) >> 2;
      if (word_base < 0)
        word_base = 0;
      if (word_base >= 16384)
        word_base = 16383;
      if (word_count < 0)
        word_count = 0;
      if ((word_base + word_count) > 16384)
        word_count = 16384 - word_base;

      $display("[TB][DMEM] dump base=0x%08h bytes=%0d words=%0d", DUMP_BASE_ADDR, DUMP_BYTE_COUNT, word_count);
      for (i = 0; i < word_count; i = i + 1) begin
        w = iRV32I_System.iDMem.mem[word_base + i];
        b0 = w[7:0];
        b1 = w[15:8];
        b2 = w[23:16];
        b3 = w[31:24];
        if (b0 >= 128) b0 = b0 - 256;
        if (b1 >= 128) b1 = b1 - 256;
        if (b2 >= 128) b2 = b2 - 256;
        if (b3 >= 128) b3 = b3 - 256;
        $display("[TB][DMEM] 0x%08h : 0x%08h | s8={%0d,%0d,%0d,%0d}",
                 DUMP_BASE_ADDR + (i * 4), w, b0, b1, b2, b3);
      end
    end
  endtask

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
    prev_pc = 32'b0;
    halt_stable_count = 0;

    repeat (RESET_CYCLES) @(posedge clk);

    $display("[TB] Loading %0s into IMEM", IMEM_HEX);
    $readmemh(IMEM_HEX, iRV32I_System.iIMem.mem);
    $display("[TB] Loading %0s into DMEM", DMEM_HEX);
    $readmemh(DMEM_HEX, iRV32I_System.iDMem.mem);
    // Bootcode-less binary support: initialize x2(sp) before entering main.
    iRV32I_System.icpu.i_datapath.i_regfile.mem[2] = STACK_INIT_SP;
    $display("[TB] Initialized x2(sp) to 0x%08h", STACK_INIT_SP);

    @(negedge clk);
    reset = 1'b1;
    $display("[TB] Reset released at %t", $time);
  end

  // Cycle counter after reset release.
  always @(posedge clk) begin
    if (reset)
      cycle_count <= cycle_count + 1;
  end

  // Periodic wall-clock style heartbeat for CLI visibility.
  initial begin
    if (CLI_TIME_LOG_MS > 0) begin
      forever begin
        #(CLI_TIME_LOG_MS * NS_PER_MS);
        if (reset)
          $display("[TB][TIME] sim_time=%0t (%0d ms)", $time, $time / NS_PER_MS);
      end
    end
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
    if (reset && (iRV32I_System.icpu.inst == 32'h0000006f && iRV32I_System.icpu.pc == prev_pc))
      halt_stable_count <= halt_stable_count + 1;
    else if (!reset)
      halt_stable_count <= 0;

    prev_pc <= iRV32I_System.icpu.pc;

    if (reset && halt_stable_count >= 2) begin
      $display("\n==============================================");
      $display(" TFLM program finished (stable jal x0,0 detected)");
      $display(" Time: %t", $time);
      $display(" Cycles: %0d", cycle_count);
      $display(" PC=0x%08h INST=0x%08h", iRV32I_System.icpu.pc, iRV32I_System.icpu.inst);
      $display(" x10 (a0): %0d (0x%08h)", iRV32I_System.icpu.i_datapath.i_regfile.x10,
               iRV32I_System.icpu.i_datapath.i_regfile.x10);
      $display(" dmem[0]=0x%08h dmem[1]=0x%08h dmem[2]=0x%08h dmem[3]=0x%08h",
               iRV32I_System.iDMem.mem[0], iRV32I_System.iDMem.mem[1],
               iRV32I_System.iDMem.mem[2], iRV32I_System.iDMem.mem[3]);
      if (DUMP_DMEM_AFTER_HALT)
        dump_dmem_window();
      $display("==============================================\n");
      $finish;
    end

    if (reset && TIMEOUT_CYCLES > 0 && cycle_count >= TIMEOUT_CYCLES) begin
      $display("\n[TB][ERROR] Timeout after %0d cycles", TIMEOUT_CYCLES);
      $display(" PC=0x%08h INST=0x%08h", iRV32I_System.icpu.pc, iRV32I_System.icpu.inst);
      if (DUMP_DMEM_AFTER_HALT)
        dump_dmem_window();
      $finish;
    end
  end
      
endmodule
