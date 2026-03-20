// File: behavioral_ram.v
`timescale 1 ns / 1 ns

module ram2port_inst_data (
    // Port A (Instruction Fetch - Read Only)
    input               clock_a,
    input               enable_a,
    input               wren_a,
    input      [10:0]   address_a,
    input      [31:0]   data_a,
    output reg [31:0]   q_a,

    // Port B (Data Access - Read/Write)
    input               clock_b,
    input               enable_b,
    input               wren_b,
    input      [10:0]   address_b,
    input      [31:0]   data_b,
    input      [3:0]    byteena_b,
    output reg [31:0]   q_b
);

    // 2048 words x 32-bit memory array
    reg [31:0] mem [2047:0];
    
    // integer 변수를 모듈 레벨에서 선언
    integer i;

    // Initialize memory from file
    // *** IMPORTANT: Create an "insts_data.hex" file with your machine code ***
    initial begin
        // 먼저 모든 메모리를 0으로 초기화
        for (i = 0; i < 2048; i = i + 1) begin
            mem[i] = 32'h00000000;
        end
        
        // 방법 1: 파일에서 로드 시도 (파일이 없으면 자동으로 0으로 초기화됨)
        $readmemh("insts_data.hex", mem);

        // 하드코딩으로 메모리 초기화 (더 간단한 주소 사용)
        mem[0] = 32'h00500513;  // addi x10, x0, 5     ; x10 = 5
        mem[1] = 32'h00300593;  // addi x11, x0, 3     ; x11 = 3  
        mem[2] = 32'h00b50533;  // add  x10, x10, x11  ; x10 = x10 + x11 = 8
        mem[3] = 32'h00a02423;  // sw   x10, 8(x0)     ; mem[2] = x10 (주소 8 사용)
        mem[4] = 32'h00802303;  // lw   x6, 8(x0)      ; x6 = mem[2] (주소 8에서 읽기)
        mem[5] = 32'h00630333;  // add  x6, x6, x6     ; x6 = x6 + x6 = 16
        mem[6] = 32'h00c02623;  // sw   x6, 12(x0)     ; mem[3] = x6 (주소 12에 저장)
        mem[7] = 32'hfe000ee3;  // beq  x0, x0, -4     ; 무한 루프
        
        // // 디버깅: 확인용 초기값 설정
        // mem[2] = 32'h12345678;  // 테스트용 값 (주소 8에 해당)
        // mem[3] = 32'h87654321;  // 테스트용 값 (주소 12에 해당)
        
        // 파일 로드 확인용 디스플레이
        $display("Memory initialization completed at time %t", $time);
        $display("mem[0] = %h", mem[0]);
        $display("mem[1] = %h", mem[1]);
        $display("mem[2] = %h", mem[2]);
        $display("mem[3] = %h", mem[3]);
    end

    // Port A - Instruction Read (asynchronous read for simplicity in simulation)
    always @(*) begin
        if (enable_a) begin
            q_a = mem[address_a];
        end else begin
            q_a = 32'h00000000;  // disabled 시 0 출력
        end
    end

    // Port B - Data Read/Write (synchronous)
    always @(posedge clock_b) begin
        if (enable_b) begin
            // Write operation
            if (wren_b) begin
                if (byteena_b[0]) mem[address_b][7:0]   <= data_b[7:0];
                if (byteena_b[1]) mem[address_b][15:8]  <= data_b[15:8];
                if (byteena_b[2]) mem[address_b][23:16] <= data_b[23:16];
                if (byteena_b[3]) mem[address_b][31:24] <= data_b[31:24];
            end
            // Read operation
            q_b <= mem[address_b];
        end
    end

endmodule