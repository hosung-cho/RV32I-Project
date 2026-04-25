`timescale 1ns/1ns

module RV32I_System(
  input         CLOCK_50,
  input         reset
);

  wire clk;
  // 보고 싶은 신호에 mark_debug 속성 추가 (로직 삭제 방지 및 디버깅용)
  (* mark_debug = "true" *) wire [31:0] fetch_addr;
  (* mark_debug = "true" *) wire [31:0] inst;
  (* mark_debug = "true" *) wire [31:0] data_addr;
  (* mark_debug = "true" *) wire [31:0] write_data;
  (* mark_debug = "true" *) wire [31:0] read_data;
  (* mark_debug = "true" *) wire [3:0]  ByteEnable;
  (* mark_debug = "true" *) wire        data_we;

  assign clk = CLOCK_50;

  // CPU가 끝났는지 확인하기 위한 디버그 신호 (예: jal x0, 0 이면 halt)
  (* mark_debug = "true" *) wire        is_halted = (inst == 32'h0000006f);

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
    .address     (fetch_addr[15:2]),  // Word address (64KB)
    .instruction (inst)
  );

  // Data Memory (separate, read/write)
  data_memory iDMem (
    .clock      (clk),
    .enable     (1'b1),
    .wren       (data_we),
    .address    (data_addr[15:2]),   // Word address (64KB)
    .write_data (write_data),
    .byteena    (ByteEnable),
    .read_data  (read_data)
  );

endmodule
