`timescale 1ns/1ns

module RV32I_System(
  input         CLOCK_50,
  input reset
);

  wire clk0;
  wire [31:0] fetch_addr;
  wire [31:0] inst;
  wire [31:0] data_addr;
  wire [31:0] write_data;
  wire [31:0] read_data_mem;
  wire [3:0]  ByteEnable;
  wire        cs_mem_n;
  wire        data_we;

  wire clk90;
  wire clk180;
  wire data_re;

  assign clk0 = CLOCK_50;
  assign clk90 = CLOCK_50;
  assign clk180 = CLOCK_50;


  // Direct connection to memory read data
  wire [31:0] read_data;
  assign read_data = read_data_mem;


	rv32i_cpu icpu (
		.clk			(clk0), 
		.reset		(~reset),
		.pc			(fetch_addr),
		.inst			(inst),
		.MemWrite	(data_we),  // data_we: active high
		.MemAddr		(data_addr), 
		.MemWData	(write_data),
		.ByteEnable	(ByteEnable),
		.MemRData	(read_data));

	assign data_re = ~data_we;

	// Port A: Instruction
	// Port B: Data
	ram2port_inst_data iMem (
		.address_a   (fetch_addr[12:2]),
		.address_b   (data_addr[12:2]),
		//.byteena_b   (4'b1111),
		.byteena_b   (ByteEnable),
		.clock_a     (clk90),
		.clock_b     (clk180),
		.data_a      (),
		.data_b      (write_data),
		.enable_a    (1'b1),
		.enable_b    (~cs_mem_n),
		.wren_a      (1'b0),
		.wren_b      (data_we),
		.q_a         (inst),
		.q_b         (read_data_mem));


  // Address decoding logic
  assign cs_mem_n = (data_addr[31:13] == 19'h0000) ? 1'b0 : 1'b1;     // Memory: 0x0000_0000 - 0x0000_1FFF




 
endmodule
