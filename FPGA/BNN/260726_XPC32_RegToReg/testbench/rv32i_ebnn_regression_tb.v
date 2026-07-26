`timescale 1ns/1ns

module rv32i_ebnn_regression_tb;

    parameter integer IMEM_WORDS = 16384;
    parameter integer DMEM_WORDS = 16384;
    parameter integer TIMEOUT_CYCLES = 6000000;

    reg clk;
    reg reset;
    reg [31:0] imem [0:IMEM_WORDS-1];
    reg [31:0] dmem [0:DMEM_WORDS-1];
    reg [31:0] inst;
    reg [31:0] mem_rdata;

    wire [31:0] pc;
    wire mem_write;
    wire [31:0] mem_addr;
    wire [31:0] mem_wdata;
    wire [3:0] byte_enable;

    integer i;
    integer cycle_count;
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
        inst = imem[pc[15:2]];
        mem_rdata = dmem[mem_addr[15:2]];
    end

    always @(posedge clk) begin
        if (!reset && mem_write) begin
            if (byte_enable[0])
                dmem[mem_addr[15:2]][7:0] <= mem_wdata[7:0];
            if (byte_enable[1])
                dmem[mem_addr[15:2]][15:8] <= mem_wdata[15:8];
            if (byte_enable[2])
                dmem[mem_addr[15:2]][23:16] <= mem_wdata[23:16];
            if (byte_enable[3])
                dmem[mem_addr[15:2]][31:24] <= mem_wdata[31:24];
        end
    end

    task finish_and_check;
        begin
            $display(
                "eBNN result cycles=%0d status=%0d samples=%0d correct=%0d prediction=%0d expected=%0d",
                cycle_count, dmem[0], dmem[1], dmem[2], dmem[16], dmem[36]
            );

            if ((dmem[0] == 32'd1) &&
                (dmem[1] == 32'd1) &&
                (dmem[2] == 32'd1) &&
                (dmem[16] == 32'd5) &&
                (dmem[36] == 32'd5)) begin
                $display(
                    "TB PASS: rv32i_ebnn_regression cycles=%0d prediction=5 expected=5",
                    cycle_count
                );
                $finish;
            end else begin
                $display("TB FAIL: rv32i_ebnn_regression mailbox mismatch");
                $fatal(1);
            end
        end
    endtask

    always @(posedge clk) begin
        if (reset) begin
            cycle_count = 0;
            stable_halt_count = 0;
            previous_pc = 32'hFFFFFFFF;
        end else begin
            cycle_count = cycle_count + 1;

            if ((inst == 32'h0000006F) && (pc == previous_pc))
                stable_halt_count = stable_halt_count + 1;
            else
                stable_halt_count = 0;

            previous_pc = pc;

            if (stable_halt_count >= 2)
                finish_and_check();

            if (cycle_count >= TIMEOUT_CYCLES) begin
                $display(
                    "TB FAIL: rv32i_ebnn_regression timeout pc=%08x inst=%08x",
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
        stable_halt_count = 0;
        previous_pc = 32'hFFFFFFFF;

        for (i = 0; i < IMEM_WORDS; i = i + 1)
            imem[i] = 32'h00000013;
        for (i = 0; i < DMEM_WORDS; i = i + 1)
            dmem[i] = 32'h00000000;

        $readmemh("imem.hex", imem);
        $readmemh("dmem.hex", dmem);

        #12;
        reset = 1'b0;
    end

    always #5 clk = ~clk;

endmodule
