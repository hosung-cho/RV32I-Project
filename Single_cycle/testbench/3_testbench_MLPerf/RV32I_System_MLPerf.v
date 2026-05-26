`timescale 1ns/1ns

module RV32I_System(
  input CLOCK_50,
  input reset
);

  wire clk = CLOCK_50;

  (* mark_debug = "true" *) wire [31:0] fetch_addr;
  (* mark_debug = "true" *) wire [31:0] inst;
  (* mark_debug = "true" *) wire [31:0] data_addr;
  (* mark_debug = "true" *) wire [31:0] write_data;
  (* mark_debug = "true" *) wire [31:0] read_data;
  (* mark_debug = "true" *) wire [3:0]  ByteEnable;
  (* mark_debug = "true" *) wire        data_we;
  (* mark_debug = "true" *) wire        is_halted = (inst == 32'h0000006f);

  rv32i_cpu icpu (
    .clk        (clk),
    .reset      (~reset),
    .pc         (fetch_addr),
    .inst       (inst),
    .MemWrite   (data_we),
    .MemAddr    (data_addr),
    .MemWData   (write_data),
    .ByteEnable (ByteEnable),
    .MemRData   (read_data)
  );

  mlperf_inst_memory #(
    .DEPTH(131072),
    .INIT_HEX("imem.hex")
  ) iIMem (
    .clock       (clk),
    .enable      (1'b1),
    .address     (fetch_addr[18:2]),
    .instruction (inst)
  );

  mlperf_data_memory #(
    .DEPTH(65536),
    .INIT_HEX("dmem.hex")
  ) iDMem (
    .clock      (clk),
    .enable     (1'b1),
    .wren       (data_we),
    .address    (data_addr[17:2]),
    .write_data (write_data),
    .byteena    (ByteEnable),
    .read_data  (read_data)
  );

endmodule

module mlperf_inst_memory #(
  parameter DEPTH = 131072,
  parameter INIT_HEX = "imem.hex"
) (
  input clock,
  input enable,
  input [16:0] address,
  output reg [31:0] instruction
);

  reg [31:0] mem [0:DEPTH-1];
  integer i;

  initial begin
    for (i = 0; i < DEPTH; i = i + 1) begin
      mem[i] = 32'h00000013;
    end
    $readmemh(INIT_HEX, mem);
    $display("[IMEM] depth=%0d words loaded from %0s", DEPTH, INIT_HEX);
  end

  always @(*) begin
    if (enable)
      instruction = mem[address];
    else
      instruction = 32'h00000013;
  end

endmodule

module mlperf_data_memory #(
  parameter DEPTH = 65536,
  parameter INIT_HEX = "dmem.hex"
) (
  input clock,
  input enable,
  input wren,
  input [15:0] address,
  input [31:0] write_data,
  input [3:0] byteena,
  output reg [31:0] read_data
);

  reg [31:0] mem [0:DEPTH-1];
  integer i;

  initial begin
    for (i = 0; i < DEPTH; i = i + 1) begin
      mem[i] = 32'h00000000;
    end
    $readmemh(INIT_HEX, mem);
    $display("[DMEM] depth=%0d words loaded from %0s", DEPTH, INIT_HEX);
  end

  always @(posedge clock) begin
    if (enable && wren) begin
      if (byteena[0]) mem[address][7:0]   <= write_data[7:0];
      if (byteena[1]) mem[address][15:8]  <= write_data[15:8];
      if (byteena[2]) mem[address][23:16] <= write_data[23:16];
      if (byteena[3]) mem[address][31:24] <= write_data[31:24];
    end
  end

  always @(*) begin
    if (enable)
      read_data = mem[address];
    else
      read_data = 32'h00000000;
  end

endmodule
