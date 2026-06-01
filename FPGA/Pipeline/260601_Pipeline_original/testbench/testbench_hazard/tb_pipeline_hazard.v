`timescale 1ns/1ns

module tb_pipeline_hazard;
  reg         clk;
  reg         reset;
  wire [31:0] pc;
  reg  [31:0] inst;
  wire        MemWrite;
  wire [31:0] MemAddr;
  wire [31:0] MemWData;
  wire [3:0]  ByteEnable;
  reg  [31:0] MemRData;

  reg [31:0] imem [0:63];
  reg [31:0] dmem [0:63];
  integer i;
  integer errors;

  rv32i_cpu #(
    .RESET_PC(32'h0000_0000)
  ) dut (
    .clk(clk),
    .reset(reset),
    .pc(pc),
    .inst(inst),
    .MemWrite(MemWrite),
    .MemAddr(MemAddr),
    .MemWData(MemWData),
    .ByteEnable(ByteEnable),
    .MemRData(MemRData)
  );

  initial begin
    clk = 1'b0;
    forever #5 clk = ~clk;
  end

  always @(*) begin
    inst = imem[pc[31:2]];
    MemRData = dmem[MemAddr[31:2]];
  end

  always @(posedge clk) begin
    if (MemWrite) begin
      if (ByteEnable[0]) dmem[MemAddr[31:2]][7:0]   <= MemWData[7:0];
      if (ByteEnable[1]) dmem[MemAddr[31:2]][15:8]  <= MemWData[15:8];
      if (ByteEnable[2]) dmem[MemAddr[31:2]][23:16] <= MemWData[23:16];
      if (ByteEnable[3]) dmem[MemAddr[31:2]][31:24] <= MemWData[31:24];
    end
  end

  task clear_memories;
    begin
      for (i = 0; i < 64; i = i + 1) begin
        imem[i] = 32'h00000013; // nop
        dmem[i] = 32'h00000000;
      end
    end
  endtask

  task pulse_reset;
    begin
      reset = 1'b1;
      repeat (5) @(posedge clk);
      reset = 1'b0;
    end
  endtask

  task run_cycles;
    input integer count;
    begin
      repeat (count) @(posedge clk);
    end
  endtask

  task test_load_branch_rs2_stall;
    begin
      $display("[TB] Test 1: load-use hazard on branch rs2");
      clear_memories();
      dmem[0] = 32'd5;

      imem[0] = 32'h00002283; // lw   x5, 0(x0)
      imem[1] = 32'h00500863; // beq  x0, x5, fail
      imem[2] = 32'h02a00513; // addi x10, x0, 42
      imem[3] = 32'h00a02223; // sw   x10, 4(x0)
      imem[4] = 32'h00c0006f; // jal  x0, done
      imem[5] = 32'h06300513; // fail: addi x10, x0, 99
      imem[6] = 32'h00a02223; // sw   x10, 4(x0)
      imem[7] = 32'h0000006f; // done: jal x0, 0

      pulse_reset();
      run_cycles(80);

      if (dmem[1] !== 32'd42) begin
        $error("[TB] Test 1 failed: dmem[1]=0x%08h expected 0x0000002a", dmem[1]);
        errors = errors + 1;
      end else begin
        $display("[TB] Test 1 passed: dmem[1]=%0d", dmem[1]);
      end
    end
  endtask

  task test_flush_over_stall_priority;
    begin
      $display("[TB] Test 2: taken branch flush priority over load-use stall");
      clear_memories();
      dmem[0] = 32'd7;

      imem[0] = 32'h00000093; // addi x1, x0, 0
      imem[1] = 32'h00000a63; // beq  x0, x0, pass
      imem[2] = 32'h00002283; // wrong path: lw  x5, 0(x0)
      imem[3] = 32'h00028333; // wrong path: add x6, x5, x0
      imem[4] = 32'h06300513; // wrong path: addi x10, x0, 99
      imem[5] = 32'h0000006f; // wrong path halt
      imem[6] = 32'h03700513; // pass: addi x10, x0, 55
      imem[7] = 32'h00a02423; // sw   x10, 8(x0)
      imem[8] = 32'h0000006f; // done: jal x0, 0

      pulse_reset();
      run_cycles(80);

      if (dmem[2] !== 32'd55) begin
        $error("[TB] Test 2 failed: dmem[2]=0x%08h expected 0x00000037", dmem[2]);
        errors = errors + 1;
      end else begin
        $display("[TB] Test 2 passed: dmem[2]=%0d", dmem[2]);
      end
    end
  endtask

  initial begin
    errors = 0;
    reset = 1'b1;

    test_load_branch_rs2_stall();
    test_flush_over_stall_priority();

    $display("[TB] dbg_stall_count=%0d", dut.i_datapath.dbg_stall_count);
    $display("[TB] dbg_flush_count=%0d", dut.i_datapath.dbg_flush_count);

    if (errors == 0) begin
      $display("[TB] PASS: all pipeline hazard tests passed");
      $finish;
    end else begin
      $fatal(1, "[TB] FAIL: %0d test(s) failed", errors);
    end
  end
endmodule
