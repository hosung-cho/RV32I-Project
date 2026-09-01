`timescale 1ns/1ps

module pipeline_lfc_tb;
    localparam integer IMEM_WORDS = 32768;
    localparam integer DMEM_WORDS = 131072;
    localparam integer TIMEOUT_CYCLES = 5000000;
    localparam [31:0] DMEM_BASE = 32'h2000_0000;

    reg clk;
    reg reset;
    wire [31:0] pc;
    reg [31:0] inst;
    wire mem_write;
    wire [31:0] mem_addr;
    wire [31:0] mem_wdata;
    wire [3:0] byte_enable;
    reg [31:0] mem_rdata;

    reg [31:0] imem [0:IMEM_WORDS-1];
    reg [31:0] dmem [0:DMEM_WORDS-1];
    integer cycle_count;
    integer i;
    reg [1023:0] imem_file;
    reg [1023:0] dmem_file;

    rv32i_cpu #(.RESET_PC(32'h0000_0000)) cpu (
        .clk(clk), .reset(reset), .pc(pc), .inst(inst),
        .MemWrite(mem_write), .MemAddr(mem_addr), .MemWData(mem_wdata),
        .ByteEnable(byte_enable), .MemRData(mem_rdata)
    );

    always @(*) begin
        if (pc[31:17] == 0)
            inst = imem[pc[16:2]];
        else
            inst = 32'h0000_0013;

        if ((mem_addr >= DMEM_BASE) &&
            (mem_addr < DMEM_BASE + DMEM_WORDS * 4))
            mem_rdata = dmem[(mem_addr - DMEM_BASE) >> 2];
        else
            mem_rdata = 32'b0;
    end

    always @(posedge clk) begin
        if (!reset && mem_write && (mem_addr >= DMEM_BASE) &&
            (mem_addr < DMEM_BASE + DMEM_WORDS * 4)) begin
            if (byte_enable[0]) dmem[(mem_addr - DMEM_BASE) >> 2][7:0] <= mem_wdata[7:0];
            if (byte_enable[1]) dmem[(mem_addr - DMEM_BASE) >> 2][15:8] <= mem_wdata[15:8];
            if (byte_enable[2]) dmem[(mem_addr - DMEM_BASE) >> 2][23:16] <= mem_wdata[23:16];
            if (byte_enable[3]) dmem[(mem_addr - DMEM_BASE) >> 2][31:24] <= mem_wdata[31:24];
        end
    end

    task finish_and_check;
        begin
            $display("PIPELINE LFC cycles=%0d stalls=%0d flushes=%0d branch_flushes=%0d jump_flushes=%0d",
                cycle_count, cpu.i_datapath.dbg_stall_count,
                cpu.i_datapath.dbg_flush_count,
                cpu.i_datapath.dbg_flush_branch_count,
                cpu.i_datapath.dbg_flush_jump_count);
            $display("PIPELINE LFC status=%0d prediction=%0d expected=%0d correct=%0d",
                dmem[0], dmem[1], dmem[2], dmem[3]);
            $display("PIPELINE LFC scores=%0d,%0d,%0d,%0d,%0d,%0d,%0d,%0d,%0d,%0d",
                $signed(dmem[16]), $signed(dmem[17]), $signed(dmem[18]),
                $signed(dmem[19]), $signed(dmem[20]), $signed(dmem[21]),
                $signed(dmem[22]), $signed(dmem[23]), $signed(dmem[24]),
                $signed(dmem[25]));
            if ((dmem[0] != 1) || (dmem[1] != 5) || (dmem[2] != 5) ||
                (dmem[3] != 1) || ($signed(dmem[16]) != -182) ||
                ($signed(dmem[17]) != -94) || ($signed(dmem[18]) != -34) ||
                ($signed(dmem[19]) != 326) || ($signed(dmem[20]) != -162) ||
                ($signed(dmem[21]) != 556) || ($signed(dmem[22]) != 54) ||
                ($signed(dmem[23]) != 6) || ($signed(dmem[24]) != 216) ||
                ($signed(dmem[25]) != -96)) begin
                $display("TB FAIL: pipeline FINN LFC result mismatch");
                $fatal(1);
            end
            $display("TB PASS: pipeline FINN LFC");
            $finish;
        end
    endtask

    always @(posedge clk) begin
        if (reset)
            cycle_count <= 0;
        else begin
            cycle_count <= cycle_count + 1;
            if (dmem[0] == 1)
                finish_and_check();
            if (cycle_count >= TIMEOUT_CYCLES) begin
                $display("TB FAIL: timeout pc=%08x status=%08x", pc, dmem[0]);
                $fatal(1);
            end
        end
    end

    initial begin
        clk = 0;
        reset = 1;
        cycle_count = 0;
        if (!$value$plusargs("IMEM=%s", imem_file)) $fatal(1, "missing IMEM");
        if (!$value$plusargs("DMEM=%s", dmem_file)) $fatal(1, "missing DMEM");
        for (i = 0; i < IMEM_WORDS; i = i + 1) imem[i] = 32'h0000_0013;
        for (i = 0; i < DMEM_WORDS; i = i + 1) dmem[i] = 32'b0;
        $readmemh(imem_file, imem);
        $readmemh(dmem_file, dmem);
        repeat (8) @(posedge clk);
        reset = 0;
    end

    always #6.25 clk = ~clk;
endmodule
