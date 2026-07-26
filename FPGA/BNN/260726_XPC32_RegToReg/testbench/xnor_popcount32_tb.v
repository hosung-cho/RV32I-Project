`timescale 1ns/1ns

module xnor_popcount32_tb;

    reg  [31:0] operand_a;
    reg  [31:0] operand_b;
    wire [5:0]  count;

    integer test_count;
    integer error_count;
    integer random_index;
    integer bit_index;
    reg [5:0] expected;
    reg [31:0] random_a;
    reg [31:0] random_b;

    xnor_popcount32 dut (
        .operand_a (operand_a),
        .operand_b (operand_b),
        .count     (count)
    );

    function [5:0] reference_xnor_popcount;
        input [31:0] value_a;
        input [31:0] value_b;
        integer i;
        begin
            reference_xnor_popcount = 6'd0;
            for (i = 0; i < 32; i = i + 1)
                if (value_a[i] == value_b[i])
                    reference_xnor_popcount = reference_xnor_popcount + 6'd1;
        end
    endfunction

    task check_vector;
        input [31:0] value_a;
        input [31:0] value_b;
        begin
            operand_a = value_a;
            operand_b = value_b;
            #1;
            expected = reference_xnor_popcount(value_a, value_b);
            test_count = test_count + 1;

            if ((count !== expected) || (^count === 1'bx)) begin
                error_count = error_count + 1;
                $display(
                    "FAIL test=%0d a=%08x b=%08x expected=%0d actual=%0d",
                    test_count, value_a, value_b, expected, count
                );
            end
        end
    endtask

    initial begin
        test_count = 0;
        error_count = 0;
        operand_a = 32'd0;
        operand_b = 32'd0;

        // Directed boundary and structure tests.
        check_vector(32'h00000000, 32'h00000000); // 32 matches
        check_vector(32'h00000000, 32'hFFFFFFFF); // 0 matches
        check_vector(32'hAAAAAAAA, 32'h55555555); // 0 matches
        check_vector(32'hAAAAAAAA, 32'hAAAAAAAA); // 32 matches
        check_vector(32'hFFFF0000, 32'h00000000); // 16 matches
        check_vector(32'h00000001, 32'h00000000); // 31 matches
        check_vector(32'hFFFFFFFE, 32'h00000000); // 1 match
        check_vector(32'h01234567, 32'h89ABCDEF); // mixed pattern

        // Exercise each individual bit as the only mismatch.
        for (bit_index = 0; bit_index < 32; bit_index = bit_index + 1)
            check_vector(32'h00000000, 32'h00000001 << bit_index);

        // Deterministic pseudo-random regression. $random is seeded by the
        // simulator consistently for this single process.
        for (random_index = 0; random_index < 2000; random_index = random_index + 1) begin
            random_a = $random;
            random_b = $random;
            check_vector(random_a, random_b);
        end

        if (error_count == 0) begin
            $display("TB PASS: xnor_popcount32 vectors=%0d errors=0", test_count);
            $finish;
        end

        $display(
            "TB FAIL: xnor_popcount32 vectors=%0d errors=%0d",
            test_count, error_count
        );
        $fatal(1);
    end

endmodule
