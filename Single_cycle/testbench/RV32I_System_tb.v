`timescale 1ns/1ns

module RV32I_System_tb();

  reg           clk;
  reg           reset;

  // instantiate device to be tested
  RV32I_System    iRV32I_System (
        .CLOCK_50  (clk),
        .reset     (reset)
  );

  // Reset
  initial
  begin
    reset <= 0; 
		#530; 
		reset <= 1;
  end

  // Clock 
  initial
  begin
    clk <= 0; 
		forever #10 clk <= ~clk;
  end  
  
      
endmodule
