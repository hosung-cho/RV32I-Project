`timescale 1ns/1ns

module rv32i_xpc32_tb;

    reg clk;
    reg reset;
    reg [31:0] inst;
    reg [31:0] mem_rdata;

    wire [31:0] pc;
    wire mem_write;
    wire [31:0] mem_addr;
    wire [31:0] mem_wdata;
    wire [3:0] byte_enable;

    integer cycle_count;
    integer store_count;
    integer error_count;
    integer halt_count;

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

    function [31:0] encode_addi;
        input [4:0] rd;
        input [4:0] rs1;
        input [11:0] imm;
        begin
            encode_addi = {imm, rs1, 3'b000, rd, 7'b0010011};
        end
    endfunction

    function [31:0] encode_lui;
        input [4:0] rd;
        input [19:0] imm;
        begin
            encode_lui = {imm, rd, 7'b0110111};
        end
    endfunction

    function [31:0] encode_sw;
        input [4:0] rs2;
        input [4:0] rs1;
        input [11:0] imm;
        begin
            encode_sw = {
                imm[11:5], rs2, rs1, 3'b010, imm[4:0], 7'b0100011
            };
        end
    endfunction

    function [31:0] encode_xpc32;
        input [4:0] rd;
        input [4:0] rs1;
        input [4:0] rs2;
        begin
            encode_xpc32 = {
                7'b0000000, rs2, rs1, 3'b000, rd, 7'b0001011
            };
        end
    endfunction

    function [31:0] encode_custom0_unsupported;
        input [4:0] rd;
        input [4:0] rs1;
        input [4:0] rs2;
        begin
            encode_custom0_unsupported = {
                7'b0000000, rs2, rs1, 3'b001, rd, 7'b0001011
            };
        end
    endfunction

    always @(*) begin
        case (pc[31:2])
            30'd0:  inst = encode_addi(5'd1, 5'd0, 12'h000);
            30'd1:  inst = encode_addi(5'd2, 5'd0, 12'hFFF);
            30'd2:  inst = encode_xpc32(5'd3, 5'd1, 5'd2);  // 0
            30'd3:  inst = encode_xpc32(5'd4, 5'd1, 5'd1);  // 32
            30'd4:  inst = encode_addi(5'd5, 5'd0, 12'h001);
            30'd5:  inst = encode_xpc32(5'd5, 5'd5, 5'd1);  // 31, rd=rs1
            30'd6:  inst = encode_xpc32(5'd0, 5'd1, 5'd1);  // x0 remains 0
            30'd7:  inst = encode_addi(5'd6, 5'd0, 12'h010);
            30'd8:  inst = encode_lui(5'd7, 20'hFFFF0);
            30'd9:  inst = encode_xpc32(5'd8, 5'd7, 5'd1);  // 16
            30'd10: inst = encode_addi(5'd9, 5'd0, 12'hFFE);
            30'd11: inst = encode_xpc32(5'd10, 5'd9, 5'd1); // 1
            30'd12: inst = encode_addi(5'd11, 5'd0, 12'h007);
            30'd13: inst = encode_custom0_unsupported(
                5'd11, 5'd1, 5'd1
            ); // must not write x11
            30'd14: inst = encode_sw(5'd3, 5'd0, 12'h000);
            30'd15: inst = encode_sw(5'd4, 5'd0, 12'h004);
            30'd16: inst = encode_sw(5'd5, 5'd0, 12'h008);
            30'd17: inst = encode_sw(5'd6, 5'd0, 12'h00C);
            30'd18: inst = encode_sw(5'd8, 5'd0, 12'h010);
            30'd19: inst = encode_sw(5'd10, 5'd0, 12'h014);
            30'd20: inst = encode_sw(5'd11, 5'd0, 12'h018);
            30'd21: inst = 32'h0000006F; // jal x0, 0
            default: inst = 32'h0000006F;
        endcase
    end

    task check_store;
        input [31:0] expected_addr;
        input [31:0] expected_data;
        begin
            if (mem_addr !== expected_addr) begin
                error_count = error_count + 1;
                $display(
                    "FAIL store=%0d address expected=%08x actual=%08x",
                    store_count, expected_addr, mem_addr
                );
            end

            if (mem_wdata !== expected_data) begin
                error_count = error_count + 1;
                $display(
                    "FAIL store=%0d data expected=%08x actual=%08x",
                    store_count, expected_data, mem_wdata
                );
            end

            if (byte_enable !== 4'b1111) begin
                error_count = error_count + 1;
                $display(
                    "FAIL store=%0d byte_enable expected=1111 actual=%b",
                    store_count, byte_enable
                );
            end
        end
    endtask

    always @(posedge clk) begin
        if (reset) begin
            cycle_count = 0;
            store_count = 0;
            error_count = 0;
            halt_count = 0;
        end else begin
            cycle_count = cycle_count + 1;

            if (mem_write) begin
                case (store_count)
                    0: check_store(32'h00000000, 32'd0);
                    1: check_store(32'h00000004, 32'd32);
                    2: check_store(32'h00000008, 32'd31);
                    3: check_store(32'h0000000C, 32'd16);
                    4: check_store(32'h00000010, 32'd16);
                    5: check_store(32'h00000014, 32'd1);
                    6: check_store(32'h00000018, 32'd7);
                    default: begin
                        error_count = error_count + 1;
                        $display("FAIL unexpected store address=%08x", mem_addr);
                    end
                endcase
                store_count = store_count + 1;
            end

            if (inst == 32'h0000006F)
                halt_count = halt_count + 1;
            else
                halt_count = 0;

            if (halt_count == 2) begin
                if ((store_count == 7) && (error_count == 0)) begin
                    $display(
                        "TB PASS: rv32i_xpc32 cycles=%0d stores=%0d errors=0",
                        cycle_count, store_count
                    );
                    $finish;
                end

                $display(
                    "TB FAIL: rv32i_xpc32 cycles=%0d stores=%0d errors=%0d",
                    cycle_count, store_count, error_count
                );
                $fatal(1);
            end

            if (cycle_count > 100) begin
                $display(
                    "TB FAIL: timeout pc=%08x stores=%0d errors=%0d",
                    pc, store_count, error_count
                );
                $fatal(1);
            end
        end
    end

    initial begin
        clk = 1'b0;
        reset = 1'b1;
        mem_rdata = 32'd0;
        #12;
        reset = 1'b0;
    end

    always #5 clk = ~clk;

endmodule
