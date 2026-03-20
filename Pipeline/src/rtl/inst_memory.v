`timescale 1 ns / 1 ns

module inst_memory (
    input               clock,
    input               enable,
    input      [10:0]   address,      // 2048 words
    output reg [31:0]   instruction
);

    // Instruction memory array (2048 words x 32-bit)
    reg [31:0] imem [2047:0];
    
    integer i;

    // Initialize instruction memory
    initial begin
        // Initialize all memory to NOP (addi x0, x0, 0)
        for (i = 0; i < 2048; i = i + 1) begin
            imem[i] = 32'h00000013;  // NOP
        end
        
        // Load instructions from file (optional)
        // $readmemh("instructions.hex", imem);

        // ========================================
        // PIPELINE CPU TEST SELECTION
        // 1: Basic Pipeline Test - No Hazards (Simple Operations)
        // 2: Pipeline Efficiency Test - Independent Instructions
        // 3: Data Hazard - Forwarding Test (EX-EX, MEM-EX)
        // 4: Data Hazard - Load-Use Stall Test
        // 5: Control Hazard - Branch Test (Flush)
        // 6: Control Hazard - Jump Test (JAL/JALR Flush)
        // 7: Combined Test - All Hazard Types
        // 8: Complex Program - Fibonacci Sequence
        // ========================================
        
        `define TEST_SELECT 1
        
        `ifdef TEST_SELECT
            case (`TEST_SELECT)
                // ========================================
                // Test 1: Basic Pipeline Test - No Hazards
                // All operations use independent registers (no dependencies)
                // Tests basic pipeline functionality without any hazards
                // Expected Results:
                //   x10 = 10, x11 = 20, x12 = 30, x13 = 40, x14 = 50
                //   mem[0] = 10, mem[4] = 20, mem[8] = 30, mem[12] = 40, mem[16] = 50
                // ========================================
                1: begin
                    imem[0] = 32'h00a00513;  // addi  x10, x0, 10      ; x10 = 10
                    imem[1] = 32'h01400593;  // addi  x11, x0, 20      ; x11 = 20
                    imem[2] = 32'h01e00613;  // addi  x12, x0, 30      ; x12 = 30
                    imem[3] = 32'h02800693;  // addi  x13, x0, 40      ; x13 = 40
                    imem[4] = 32'h03200713;  // addi  x14, x0, 50      ; x14 = 50
                    imem[5] = 32'h00a02023;  // sw    x10, 0(x0)       ; mem[0] = 10
                    imem[6] = 32'h00b02223;  // sw    x11, 4(x0)       ; mem[4] = 20
                    imem[7] = 32'h00c02423;  // sw    x12, 8(x0)       ; mem[8] = 30
                    imem[8] = 32'h00d02623;  // sw    x13, 12(x0)      ; mem[12] = 40
                    imem[9] = 32'h00e02823;  // sw    x14, 16(x0)      ; mem[16] = 50
                    imem[10] = 32'h0000006f; // jal   x0, 0            ; halt
                    $display("Test 1: Basic Pipeline Test - No Hazards Loaded");
                    $display("Expected: mem[0]=10, mem[4]=20, mem[8]=30, mem[12]=40, mem[16]=50");
                end
                
                // ========================================
                // Test 2: Pipeline Efficiency Test - Independent Instructions
                // All operations are independent (no dependencies)
                // Tests maximum pipeline throughput without hazards
                // Expected Results:
                //   mem[0-36] = sequential values 1-10
                // ========================================
                2: begin
                    imem[0] = 32'h00100513;  // addi  x10, x0, 1       ; x10 = 1
                    imem[1] = 32'h00200593;  // addi  x11, x0, 2       ; x11 = 2
                    imem[2] = 32'h00300613;  // addi  x12, x0, 3       ; x12 = 3
                    imem[3] = 32'h00400693;  // addi  x13, x0, 4       ; x13 = 4
                    imem[4] = 32'h00500713;  // addi  x14, x0, 5       ; x14 = 5
                    imem[5] = 32'h00600793;  // addi  x15, x0, 6       ; x15 = 6
                    imem[6] = 32'h00700813;  // addi  x16, x0, 7       ; x16 = 7
                    imem[7] = 32'h00800893;  // addi  x17, x0, 8       ; x17 = 8
                    imem[8] = 32'h00900913;  // addi  x18, x0, 9       ; x18 = 9
                    imem[9] = 32'h00a00993;  // addi  x19, x0, 10      ; x19 = 10
                    imem[10] = 32'h00a02023; // sw    x10, 0(x0)       ; mem[0] = 1
                    imem[11] = 32'h00b02223; // sw    x11, 4(x0)       ; mem[4] = 2
                    imem[12] = 32'h00c02423; // sw    x12, 8(x0)       ; mem[8] = 3
                    imem[13] = 32'h00d02623; // sw    x13, 12(x0)      ; mem[12] = 4
                    imem[14] = 32'h00e02823; // sw    x14, 16(x0)      ; mem[16] = 5
                    imem[15] = 32'h00f02a23; // sw    x15, 20(x0)      ; mem[20] = 6
                    imem[16] = 32'h01002c23; // sw    x16, 24(x0)      ; mem[24] = 7
                    imem[17] = 32'h01102e23; // sw    x17, 28(x0)      ; mem[28] = 8
                    imem[18] = 32'h03202023; // sw    x18, 32(x0)      ; mem[32] = 9
                    imem[19] = 32'h03302223; // sw    x19, 36(x0)      ; mem[36] = 10
                    imem[20] = 32'h0000006f; // jal   x0, 0            ; halt
                    $display("Test 2: Pipeline Efficiency Test - Independent Instructions Loaded");
                    $display("Expected: mem[0]=1, mem[4]=2, ..., mem[36]=10");
                    $display("Should execute with maximum pipeline efficiency (CPI close to 1)");
                end
                
                // ========================================
                // Test 3: Data Hazard - Forwarding Test
                // Tests EX-EX forwarding and MEM-EX forwarding
                // Expected Results:
                //   x10 = 10, x11 = 20, x12 = 30, x13 = 40, x14 = 70, x15 = 100
                //   mem[0] = 70, mem[4] = 100
                // ========================================
                3: begin
                    imem[0] = 32'h00a00513;  // addi  x10, x0, 10      ; x10 = 10
                    imem[1] = 32'h00a50593;  // addi  x11, x10, 10     ; x11 = 20 (needs x10, EX-EX forward)
                    imem[2] = 32'h00a58613;  // addi  x12, x11, 10     ; x12 = 30 (needs x11, EX-EX forward)
                    imem[3] = 32'h00a60693;  // addi  x13, x12, 10     ; x13 = 40 (needs x12, EX-EX forward)
                    imem[4] = 32'h00b60733;  // add   x14, x12, x11    ; x14 = 30+20=50, but x12=30, x11=20 -> 50
                    imem[5] = 32'h01450713;  // addi  x14, x10, 20     ; x14 = 10+20=30, but needs MEM-EX forward for x10
                    imem[6] = 32'h02658733;  // add   x14, x11, x6     ; x14 = 20+0=20 (x6=0 by default)
                    imem[7] = 32'h00c58733;  // add   x14, x11, x12    ; x14 = 20+30=50 (MEM-EX forward)
                    imem[8] = 32'h00d60733;  // add   x14, x12, x13    ; x14 = 30+40=70 (MEM-EX forward)
                    imem[9] = 32'h00e02023;  // sw    x14, 0(x0)       ; mem[0] = 70
                    imem[10] = 32'h00b687b3; // add   x15, x13, x11    ; x15 = 40+20=60 (MEM-EX forward)
                    imem[11] = 32'h00a787b3; // add   x15, x15, x10    ; x15 = 60+10=70 (EX-EX forward)
                    imem[12] = 32'h01e78793; // addi  x15, x15, 30     ; x15 = 70+30=100 (EX-EX forward)
                    imem[13] = 32'h00f02223; // sw    x15, 4(x0)       ; mem[4] = 100
                    imem[14] = 32'h0000006f; // jal   x0, 0            ; halt
                    $display("Test 3: Data Hazard - Forwarding Test Loaded");
                    $display("Expected: mem[0]=70, mem[4]=100");
                end
                
                // ========================================
                // Test 4: Load-Use Hazard - Stall Test
                // Tests load-use hazard detection and stall insertion
                // Expected Results:
                //   mem[0] = 100, mem[4] = 150, mem[8] = 175
                // Pipeline should insert 1-cycle stall after load
                // ========================================
                4: begin
                    imem[0] = 32'h06400513;  // addi  x10, x0, 100     ; x10 = 100
                    imem[1] = 32'h00a02023;  // sw    x10, 0(x0)       ; mem[0] = 100
                    imem[2] = 32'h00002583;  // lw    x11, 0(x0)       ; x11 = 100 (load from mem[0])
                    imem[3] = 32'h03200613;  // addi  x12, x0, 50      ; x12 = 50 (should be inserted as NOP if stall)
                    imem[4] = 32'h00b60633;  // add   x12, x12, x11    ; x12 = 50+100=150 (load-use hazard, stall needed)
                    imem[5] = 32'h00c02223;  // sw    x12, 4(x0)       ; mem[4] = 150
                    imem[6] = 32'h00402683;  // lw    x13, 4(x0)       ; x13 = 150 (load from mem[4])
                    imem[7] = 32'h01900513;  // addi  x10, x0, 25      ; x10 = 25
                    imem[8] = 32'h00d506b3;  // add   x13, x10, x13    ; x13 = 25+150=175 (load-use hazard, stall needed)
                    imem[9] = 32'h00d02423;  // sw    x13, 8(x0)       ; mem[8] = 175
                    imem[10] = 32'h0000006f; // jal   x0, 0            ; halt
                    $display("Test 4: Load-Use Hazard - Stall Test Loaded");
                    $display("Expected: mem[0]=100, mem[4]=150, mem[8]=175");
                    $display("Pipeline should insert stalls after lw instructions");
                end
                
                // ========================================
                // Test 5: Branch Hazard - Flush Test
                // Tests load-use hazard detection and stall insertion
                // Expected Results:
                //   mem[0] = 100, mem[4] = 150, mem[8] = 175
                // Pipeline should insert 1-cycle stall after load
                // ========================================
                2: begin
                    imem[0] = 32'h06400513;  // addi  x10, x0, 100     ; x10 = 100
                    imem[1] = 32'h00a02023;  // sw    x10, 0(x0)       ; mem[0] = 100
                    imem[2] = 32'h00002583;  // lw    x11, 0(x0)       ; x11 = 100 (load from mem[0])
                    imem[3] = 32'h03200613;  // addi  x12, x0, 50      ; x12 = 50 (should be inserted as NOP if stall)
                    imem[4] = 32'h00b60633;  // add   x12, x12, x11    ; x12 = 50+100=150 (load-use hazard, stall needed)
                    imem[5] = 32'h00c02223;  // sw    x12, 4(x0)       ; mem[4] = 150
                    imem[6] = 32'h00402683;  // lw    x13, 4(x0)       ; x13 = 150 (load from mem[4])
                    imem[7] = 32'h01900513;  // addi  x10, x0, 25      ; x10 = 25
                    imem[8] = 32'h00d506b3;  // add   x13, x10, x13    ; x13 = 25+150=175 (load-use hazard, stall needed)
                    imem[9] = 32'h00d02423;  // sw    x13, 8(x0)       ; mem[8] = 175
                    imem[10] = 32'h0000006f; // jal   x0, 0            ; halt
                    $display("Test 4: Load-Use Hazard - Stall Test Loaded");
                    $display("Expected: mem[0]=100, mem[4]=150, mem[8]=175");
                    $display("Pipeline should insert stalls after lw instructions");
                end
                
                // ========================================
                // Test 5: Branch Hazard - Flush Test
                // Tests branch taken/not-taken and pipeline flush
                // Expected Results:
                //   x10 = 10, x11 = 20, x12 = 30 (branch taken)
                //   x13 = 0 (not executed), x14 = 50
                //   mem[0] = 10, mem[4] = 20, mem[8] = 30, mem[12] = 50
                // ========================================
                5: begin
                    imem[0] = 32'h00a00513;  // addi  x10, x0, 10      ; x10 = 10
                    imem[1] = 32'h01400593;  // addi  x11, x0, 20      ; x11 = 20
                    imem[2] = 32'h00b54463;  // blt   x10, x11, 8      ; 10 < 20, taken -> imem[4]
                    imem[3] = 32'h06400693;  // addi  x13, x0, 100     ; SHOULD BE FLUSHED
                    imem[4] = 32'h01e00613;  // addi  x12, x0, 30      ; x12 = 30 (executed)
                    imem[5] = 32'h00a02023;  // sw    x10, 0(x0)       ; mem[0] = 10
                    imem[6] = 32'h00b02223;  // sw    x11, 4(x0)       ; mem[4] = 20
                    imem[7] = 32'h00c02423;  // sw    x12, 8(x0)       ; mem[8] = 30
                    imem[8] = 32'h00b50663;  // beq   x10, x11, 12     ; 10 == 20? no, not taken
                    imem[9] = 32'h03200713;  // addi  x14, x0, 50      ; x14 = 50 (executed)
                    imem[10] = 32'h00e02623; // sw    x14, 12(x0)      ; mem[12] = 50
                    imem[11] = 32'h00d02823; // sw    x13, 16(x0)      ; mem[16] = 0 (x13 was never set)
                    imem[12] = 32'h0000006f; // jal   x0, 0            ; halt
                    $display("Test 5: Branch Hazard - Flush Test Loaded");
                    $display("Expected: mem[0]=10, mem[4]=20, mem[8]=30, mem[12]=50, mem[16]=0");
                    $display("Instructions after taken branch should be flushed");
                end
                
                // ========================================
                // Test 6: Jump Hazard - JAL/JALR Flush Test
                // Tests JAL and JALR with pipeline flush
                // Expected Results:
                //   x1 = 4 (return address from first jal)
                //   x10 = 100, x11 = 200
                //   mem[0] = 100, mem[4] = 200, mem[8] = 4
                // ========================================
                6: begin
                    imem[0] = 32'h00c000ef;  // jal   x1, 12           ; jump to imem[3], x1 = 4
                    imem[1] = 32'h00100513;  // addi  x10, x0, 1       ; SHOULD BE FLUSHED
                    imem[2] = 32'h00200513;  // addi  x10, x0, 2       ; SHOULD BE FLUSHED
                    imem[3] = 32'h06400513;  // addi  x10, x0, 100     ; x10 = 100 (executed)
                    imem[4] = 32'h00a02023;  // sw    x10, 0(x0)       ; mem[0] = 100
                    imem[5] = 32'h00800593;  // addi  x11, x0, 8       ; x11 = 8
                    imem[6] = 32'h02858593;  // addi  x11, x11, 40     ; x11 = 48
                    imem[7] = 32'h000580e7;  // jalr  x1, x11, 0       ; jump to address in x11 (48 = imem[12])
                    imem[8] = 32'h00300593;  // addi  x11, x0, 3       ; SHOULD BE FLUSHED
                    imem[9] = 32'h00400593;  // addi  x11, x0, 4       ; SHOULD BE FLUSHED
                    imem[10] = 32'h00500593; // addi  x11, x0, 5       ; SHOULD BE FLUSHED
                    imem[11] = 32'h00600593; // addi  x11, x0, 6       ; SHOULD BE FLUSHED
                    imem[12] = 32'h0c800593; // addi  x11, x0, 200     ; x11 = 200 (executed)
                    imem[13] = 32'h00b02223; // sw    x11, 4(x0)       ; mem[4] = 200
                    imem[14] = 32'h00102423; // sw    x1, 8(x0)        ; mem[8] = 4 (return address)
                    imem[15] = 32'h0000006f; // jal   x0, 0            ; halt
                    $display("Test 6: Jump Hazard - JAL/JALR Flush Test Loaded");
                    $display("Expected: mem[0]=100, mem[4]=200, mem[8]=4");
                    $display("Instructions after jump should be flushed");
                end
                
                // ========================================
                // Test 7: Combined Test - All Hazards
                // Tests combination of data, load-use, and control hazards
                // Expected Results:
                //   mem[0] = 30, mem[4] = 60, mem[8] = 90
                // ========================================
                7: begin
                    imem[0] = 32'h00a00513;  // addi  x10, x0, 10      ; x10 = 10
                    imem[1] = 32'h01400593;  // addi  x11, x0, 20      ; x11 = 20
                    imem[2] = 32'h00b50633;  // add   x12, x10, x11    ; x12 = 30 (data hazard)
                    imem[3] = 32'h00c02023;  // sw    x12, 0(x0)       ; mem[0] = 30 (data hazard)
                    imem[4] = 32'h00002683;  // lw    x13, 0(x0)       ; x13 = 30 (load)
                    imem[5] = 32'h00d606b3;  // add   x13, x12, x13    ; x13 = 30+30=60 (load-use hazard)
                    imem[6] = 32'h00d02223;  // sw    x13, 4(x0)       ; mem[4] = 60
                    imem[7] = 32'h00c6c463;  // blt   x13, x12, 8      ; 60 < 30? no, not taken
                    imem[8] = 32'h00d60733;  // add   x14, x12, x13    ; x14 = 30+60=90 (executed)
                    imem[9] = 32'h00e02423;  // sw    x14, 8(x0)       ; mem[8] = 90
                    imem[10] = 32'h0000006f; // jal   x0, 0            ; halt
                    $display("Test 7: Combined Test - All Hazards Loaded");
                    $display("Expected: mem[0]=30, mem[4]=60, mem[8]=90");
                end
                
                // ========================================
                // Test 8: Complex Program - Fibonacci Sequence
                // Computes first 5 Fibonacci numbers
                // Expected Results:
                //   mem[0]=1, mem[4]=1, mem[8]=2, mem[12]=3, mem[16]=5
                // ========================================
                8: begin
                    imem[0] = 32'h00100513;  // addi  x10, x0, 1       ; x10 = 1 (fib[0])
                    imem[1] = 32'h00100593;  // addi  x11, x0, 1       ; x11 = 1 (fib[1])
                    imem[2] = 32'h00a02023;  // sw    x10, 0(x0)       ; mem[0] = 1
                    imem[3] = 32'h00b02223;  // sw    x11, 4(x0)       ; mem[4] = 1
                    imem[4] = 32'h00b50633;  // add   x12, x10, x11    ; x12 = 1+1 = 2 (fib[2])
                    imem[5] = 32'h00c02423;  // sw    x12, 8(x0)       ; mem[8] = 2
                    imem[6] = 32'h00c586b3;  // add   x13, x11, x12    ; x13 = 1+2 = 3 (fib[3])
                    imem[7] = 32'h00d02623;  // sw    x13, 12(x0)      ; mem[12] = 3
                    imem[8] = 32'h00d60733;  // add   x14, x12, x13    ; x14 = 2+3 = 5 (fib[4])
                    imem[9] = 32'h00e02823;  // sw    x14, 16(x0)      ; mem[16] = 5
                    imem[10] = 32'h00e687b3; // add   x15, x13, x14    ; x15 = 3+5 = 8 (fib[5])
                    imem[11] = 32'h00f02a23; // sw    x15, 20(x0)      ; mem[20] = 8
                    imem[12] = 32'h00f70833; // add   x16, x14, x15    ; x16 = 5+8 = 13 (fib[6])
                    imem[13] = 32'h01002c23; // sw    x16, 24(x0)      ; mem[24] = 13
                    imem[14] = 32'h0000006f; // jal   x0, 0            ; halt
                    $display("Test 8: Complex Program - Fibonacci Sequence Loaded");
                    $display("Expected: mem[0]=1, mem[4]=1, mem[8]=2, mem[12]=3, mem[16]=5");
                    $display("         mem[20]=8, mem[24]=13");
                end
                
                default: begin
                    imem[0] = 32'h00000513;  // addi x10, x0, 0
                    imem[1] = 32'h0000006f;  // jal  x0, 0
                    $display("No test selected");
                end
            endcase
        `endif
        
        $display("========================================");
        $display("Instruction Memory initialized at time %t", $time);
        $display("RV32I Pipeline CPU Test Suite Loaded");
        $display("========================================");
    end

    // Asynchronous read for instruction fetch
    always @(*) begin
        if (enable)
            instruction = imem[address];
        else
            instruction = 32'h00000013;  // NOP when disabled
    end

endmodule