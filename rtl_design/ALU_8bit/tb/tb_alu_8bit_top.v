`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.09.2026 14:24:39
// Design Name: 
// Module Name: tb_alu_8bit_top
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


`timescale 1ns / 1ps

module tb_alu_8bit_top;

    reg [7:0] a;
    reg [7:0] b;
    reg [3:0] sel;
    wire [15:0] y;

    integer i;

    alu_8bit_top uut (
        .a(a),
        .b(b),
        .sel(sel),
        .y(y)
    );

    initial begin
        $monitor("Time=%0t | sel=%b | a=%d | b=%d | y=%d (hex: %h)", $time, sel, a, b, y, y);

        a = 8'd0;
        b = 8'd0;
        sel = 4'b0000;
        #10;

        a = 8'd25;  
        b = 8'd10;  

        for (i = 0; i < 16; i = i + 1) begin
            sel = i;
            #10; 
        end

        a = 8'hFF; 
        b = 8'hFF; 
        
        sel = 4'b0000; 
        #10;
        
        sel = 4'b0010; 
        #10;

        $finish;
    end

endmodule


