`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.09.2026 12:05:18
// Design Name: 
// Module Name: tb_d_ff
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




module tb_d_ff;

    reg clk;
    reg rst;
    reg d;

    wire q;
    wire qb;

    d_ff uut (
        .clk(clk),
        .rst(rst),
        .d(d),
        .q(q),
        .qb(qb)
    );

    always #5 clk = ~clk;

    initial begin
        $display("Time\t | CLK RST D | Q QB");
        $display("-----------------------");
        $monitor("%0t\t |  %b   %b  %b | %b  %b", $time, clk, rst, d, q, qb);

        clk = 0; rst = 1; d = 0; 
        
        #12 rst = 0; d = 1; 
        #10 d = 0;          
        #10 d = 1;          
        #10 d = 1;          
        #10 d = 0;          
        
        #20 $finish;
    end

endmodule