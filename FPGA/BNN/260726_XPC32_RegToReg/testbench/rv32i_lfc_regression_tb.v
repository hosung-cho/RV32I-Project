`timescale 1ns/1ns

module rv32i_lfc_regression_tb;

    parameter integer IMEM_WORDS = 32768;
    parameter integer DMEM_WORDS = 196608;
    parameter integer TIMEOUT_CYCLES = 3000000;

    reg clk;
    reg reset;
    reg [31:0] imem [0:IMEM_WORDS-1];
    reg [31:0] dmem [0:DMEM_WORDS-1];
    reg [31:0] inst;
    reg [31:0] mem_rdata;
    reg [1023:0] imem_file;
    reg [1023:0] dmem_file;
    integer expected_xpc_count;

    wire [31:0] pc;
    wire mem_write;
    wire [31:0] mem_addr;
    wire [31:0] mem_wdata;
    wire [3:0] byte_enable;

    integer i;
    integer cycle_count;
    integer xpc_count;
    integer stable_halt_count;
    reg [31:0] previous_pc;

    rv32i_cpu dut (
        .clk        (clk),
        .reset      (reset),
        .pc         (pc),
        .inst       (inst),
        .MemWrite   (mem_write),
        .MemAddr    (mem_addr),
        .MemWData   (mem_wdata),
        .ByteEnable (byte_enable),
        .MemRData   (mem_rdata)
    );

    always @(*) begin
        inst = imem[pc[16:2]];
        mem_rdata = dmem[mem_addr[19:2]];
    end

    always @(posedge clk) begin
        if (!reset && mem_write) begin
            if (byte_enable[0])
                dmem[mem_addr[19:2]][7:0] <= mem_wdata[7:0];
            if (byte_enable[1])
                dmem[mem_addr[19:2]][15:8] <= mem_wdata[15:8];
            if (byte_enable[2])
                dmem[mem_addr[19:2]][23:16] <= mem_wdata[23:16];
            if (byte_enable[3])
                dmem[mem_addr[19:2]][31:24] <= mem_wdata[31:24];
        end
    end

    task finish_and_check;
        begin
            $display(
                "LFC result cycles=%0d xpc=%0d status=%0d prediction=%0d expected=%0d correct=%0d",
                cycle_count, xpc_count, dmem[0], dmem[1], dmem[2], dmem[3]
            );
            $display(
                "LFC scores=%0d,%0d,%0d,%0d,%0d,%0d,%0d,%0d,%0d,%0d",
                $signed(dmem[16]), $signed(dmem[17]), $signed(dmem[18]),
                $signed(dmem[19]), $signed(dmem[20]), $signed(dmem[21]),
                $signed(dmem[22]), $signed(dmem[23]), $signed(dmem[24]),
                $signed(dmem[25])
            );

            if ((dmem[0] == 32'd1) &&
                (dmem[1] == 32'd5) &&
                (dmem[2] == 32'd5) &&
                (dmem[3] == 32'd1) &&
                ($signed(dmem[16]) == -182) &&
                ($signed(dmem[17]) == -94) &&
                ($signed(dmem[18]) == -34) &&
                ($signed(dmem[19]) == 326) &&
                ($signed(dmem[20]) == -162) &&
                ($signed(dmem[21]) == 556) &&
                ($signed(dmem[22]) == 54) &&
                ($signed(dmem[23]) == 6) &&
                ($signed(dmem[24]) == 216) &&
                ($signed(dmem[25]) == -96) &&
                (xpc_count == expected_xpc_count)) begin
                $display(
                    "TB PASS: rv32i_lfc_regression cycles=%0d xpc=%0d",
                    cycle_count, xpc_count
                );
                $finish;
            end else begin
                $display(
                    "TB FAIL: rv32i_lfc_regression mailbox or XPC count mismatch expected_xpc=%0d",
                    expected_xpc_count
                );
                $fatal(1);
            end
        end
    endtask

    always @(posedge clk) begin
        if (reset) begin
            cycle_count = 0;
            xpc_count = 0;
            stable_halt_count = 0;
            previous_pc = 32'hffffffff;
        end else begin
            cycle_count = cycle_count + 1;

            if ((inst[6:0] == 7'b0001011) &&
                (inst[14:12] == 3'b000) &&
                (inst[31:25] == 7'b0000000)) begin
                xpc_count = xpc_count + 1;
            end

            if ((inst == 32'h0000006f) && (pc == previous_pc))
                stable_halt_count = stable_halt_count + 1;
            else
                stable_halt_count = 0;

            previous_pc = pc;

            if (stable_halt_count >= 2)
                finish_and_check();

            if (cycle_count >= TIMEOUT_CYCLES) begin
                $display(
                    "TB FAIL: rv32i_lfc_regression timeout pc=%08x inst=%08x",
                    pc, inst
                );
                $fatal(1);
            end
        end
    end

    initial begin
        clk = 1'b0;
        reset = 1'b1;
        cycle_count = 0;
        xpc_count = 0;
        stable_halt_count = 0;
        previous_pc = 32'hffffffff;

        if (!$value$plusargs("IMEM=%s", imem_file))
            $fatal(1, "missing +IMEM=<path>");
        if (!$value$plusargs("DMEM=%s", dmem_file))
            $fatal(1, "missing +DMEM=<path>");
        if (!$value$plusargs("EXPECTED_XPC=%d", expected_xpc_count))
            $fatal(1, "missing +EXPECTED_XPC=<count>");

        for (i = 0; i < IMEM_WORDS; i = i + 1)
            imem[i] = 32'h00000013;
        for (i = 0; i < DMEM_WORDS; i = i + 1)
            dmem[i] = 32'h00000000;

        $readmemh(imem_file, imem);
        $readmemh(dmem_file, dmem);

        #12;
        reset = 1'b0;
    end

    always #5 clk = ~clk;

endmodule
