`timescale 1 ns / 1 ns

module data_memory (
    input               clock,
    input               enable,
    input               wren,           // write enable
    input      [10:0]   address,        // 2048 words
    input      [31:0]   write_data,
    input      [3:0]    byteena,        // byte enable
    output reg [31:0]   read_data
);

    // Data memory array (2048 words x 32-bit)
    reg [31:0] dmem [2047:0];
    
    integer i;

    // Initialize data memory
    initial begin
        // Initialize all memory to 0
        for (i = 0; i < 2048; i = i + 1) begin
            dmem[i] = 32'h00000000;
        end
        
        // Optional: load data from file
        // $readmemh("data.hex", dmem);
        
        $display("Data Memory initialized at time %t", $time);
    end

    // Synchronous write, asynchronous read
    always @(posedge clock) begin
        if (enable && wren) begin
            $display("  [DATA_MEM] Writing to dmem[%0d]: data=%h, byteena=%b", 
                     address, write_data, byteena);
            // Byte-addressable write
            if (byteena[0]) dmem[address][7:0]   <= write_data[7:0];
            if (byteena[1]) dmem[address][15:8]  <= write_data[15:8];
            if (byteena[2]) dmem[address][23:16] <= write_data[23:16];
            if (byteena[3]) dmem[address][31:24] <= write_data[31:24];
        end
    end
    
    // Asynchronous read for better timing
    always @(*) begin
        if (enable)
            read_data = dmem[address];
        else
            read_data = 32'h00000000;
    end

endmodule