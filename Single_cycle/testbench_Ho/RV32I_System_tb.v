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

  // [추가] 시뮬레이션 종료 감지 및 결과 출력 로직
  always @(posedge clk) begin
      // CPU가 읽어들인 명령어가 'jal x0, 0' (32'h0000006f) 이라면 (프로그램 종료)
      if (iRV32I_System.icpu.inst == 32'h0000006f) begin
          $display("\n==============================================");
          $display(" AI Pointwise Convolution Simulation Finished! ");
          $display(" Time: %t", $time);
          
          // x10 (a0) 레지스터 값 출력 (C++ main의 return 값)
          $display(" Result (x10 / a0): %d", iRV32I_System.icpu.i_datapath.i_regfile.x10);
          $display("==============================================\n");
          
          $finish; // 시뮬레이터 완전 종료
      end
  end
      
endmodule
