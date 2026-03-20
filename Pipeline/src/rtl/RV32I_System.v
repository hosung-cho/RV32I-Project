`timescale 1ns/1ns

module RV32I_System(
  input         CLOCK_50,
  input         reset
);

  wire clk;
  wire [31:0] fetch_addr;
  wire [31:0] inst;
  wire [31:0] data_addr;
  wire [31:0] write_data;
  wire [31:0] read_data;
  wire [3:0]  ByteEnable;
  wire        data_we;

  assign clk = CLOCK_50;

  // CPU instantiation
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

  // Instruction Memory (separate, read-only)
  inst_memory iIMem (
    .clock       (clk),
    .enable      (1'b1),
    .address     (fetch_addr[12:2]),  // Word address
    .instruction (inst)
  );

  // Data Memory (separate, read/write)
  data_memory iDMem (
    .clock      (clk),
    .enable     (1'b1),
    .wren       (data_we),
    .address    (data_addr[12:2]),   // Word address
    .write_data (write_data),
    .byteena    (ByteEnable),
    .read_data  (read_data)
  );

endmodule
