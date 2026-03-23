`timescale 1ns/1ns

module RV32I_System_tb();

  reg           clk;
  reg           reset;
  integer       cycle_count;
  reg [31:0]    prev_pc;
  integer       halt_stable_count;
  reg [31:0]    prev_pc_rate;
  reg [1023:0]  pc_change_hist;
  integer       pc_change_sum;
  integer       pc_change_samples;
  integer       pc_change_rate_x100;
  integer       stuck_lowrate_streak;
  reg           pc_changed_now;
  reg           pc_hist_oldest;

  parameter integer RESET_CYCLES   = 8;
  // TFLM startup/data-copy loops can take much longer than simple unit tests.
  // Set to 0 to disable timeout.
  parameter integer TIMEOUT_CYCLES = 500000000;
  parameter integer PROGRESS_CYCLES = 1000000;
  parameter integer PC_RATE_WINDOW = 1024;
  parameter integer PC_STUCK_RATE_X100 = 500;  // 5.00%
  parameter integer STUCK_WARN_STREAK = 3;
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
    prev_pc = 32'b0;
    halt_stable_count = 0;
    prev_pc_rate = 32'b0;
    pc_change_hist = 1024'b0;
    pc_change_sum = 0;
    pc_change_samples = 0;
    pc_change_rate_x100 = 0;
    stuck_lowrate_streak = 0;
    pc_changed_now = 1'b0;
    pc_hist_oldest = 1'b0;

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
      if (pc_change_samples >= PC_RATE_WINDOW) begin
        $display("[TB] stats: pc_change_rate=%0d.%02d%% over last %0d cycles, stall=%0d, flush=%0d (branch=%0d, jump=%0d)",
                 pc_change_rate_x100 / 100, pc_change_rate_x100 % 100, PC_RATE_WINDOW,
                 iRV32I_System.icpu.i_datapath.dbg_stall_count,
                 iRV32I_System.icpu.i_datapath.dbg_flush_count,
                 iRV32I_System.icpu.i_datapath.dbg_flush_branch_count,
                 iRV32I_System.icpu.i_datapath.dbg_flush_jump_count);
      end
      if (stuck_lowrate_streak >= STUCK_WARN_STREAK) begin
        $display("[TB][WARN] Low PC-change rate persisted (%0d.%02d%%). Possible stuck/slow loop. PC=0x%08h INST=0x%08h",
                 pc_change_rate_x100 / 100, pc_change_rate_x100 % 100,
                 iRV32I_System.icpu.pc, iRV32I_System.icpu.inst);
      end
    end
  end

  // Halt/timeout monitor.
  always @(posedge clk) begin
    if (reset) begin
      pc_changed_now = (iRV32I_System.icpu.pc != prev_pc_rate);
      if (pc_change_samples < PC_RATE_WINDOW) begin
        pc_change_hist[pc_change_samples] <= pc_changed_now;
        if (pc_changed_now)
          pc_change_sum <= pc_change_sum + 1;
        pc_change_samples <= pc_change_samples + 1;
      end
      else begin
        pc_hist_oldest = pc_change_hist[PC_RATE_WINDOW-1];
        pc_change_hist <= {pc_change_hist[PC_RATE_WINDOW-2:0], pc_changed_now};
        pc_change_sum <= pc_change_sum + (pc_changed_now ? 1 : 0) - (pc_hist_oldest ? 1 : 0);
      end

      if (pc_change_samples >= PC_RATE_WINDOW) begin
        pc_change_rate_x100 <= (pc_change_sum * 10000) / PC_RATE_WINDOW;
        if (pc_change_rate_x100 <= PC_STUCK_RATE_X100)
          stuck_lowrate_streak <= stuck_lowrate_streak + 1;
        else
          stuck_lowrate_streak <= 0;
      end

      prev_pc_rate <= iRV32I_System.icpu.pc;
    end

    // In a pipeline, IF-stage instruction bus can briefly show wrong-path instructions.
    // Treat halt as valid only when jal x0,0 is observed repeatedly at a stable PC.
    if (reset && iRV32I_System.icpu.inst == 32'h0000006f && iRV32I_System.icpu.pc == prev_pc)
      halt_stable_count <= halt_stable_count + 1;
    else
      halt_stable_count <= 0;

    prev_pc <= iRV32I_System.icpu.pc;

    if (reset && halt_stable_count >= 2) begin
      $display("\n==============================================");
      $display(" TFLM program finished (stable jal x0,0 detected)");
      $display(" Time: %t", $time);
      $display(" Cycles: %0d", cycle_count);
      $display(" PC=0x%08h INST=0x%08h", iRV32I_System.icpu.pc, iRV32I_System.icpu.inst);
      if (pc_change_samples >= PC_RATE_WINDOW)
        $display(" PC change rate(last %0d): %0d.%02d%%", PC_RATE_WINDOW,
                 pc_change_rate_x100 / 100, pc_change_rate_x100 % 100);
      $display(" stall=%0d, flush=%0d (branch=%0d, jump=%0d)",
               iRV32I_System.icpu.i_datapath.dbg_stall_count,
               iRV32I_System.icpu.i_datapath.dbg_flush_count,
               iRV32I_System.icpu.i_datapath.dbg_flush_branch_count,
               iRV32I_System.icpu.i_datapath.dbg_flush_jump_count);
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
      if (pc_change_samples >= PC_RATE_WINDOW)
        $display(" PC change rate(last %0d): %0d.%02d%%", PC_RATE_WINDOW,
                 pc_change_rate_x100 / 100, pc_change_rate_x100 % 100);
      $display(" stall=%0d, flush=%0d (branch=%0d, jump=%0d)",
               iRV32I_System.icpu.i_datapath.dbg_stall_count,
               iRV32I_System.icpu.i_datapath.dbg_flush_count,
               iRV32I_System.icpu.i_datapath.dbg_flush_branch_count,
               iRV32I_System.icpu.i_datapath.dbg_flush_jump_count);
      $finish;
    end
  end

endmodule
