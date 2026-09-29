`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.09.2026 14:55:33
// Design Name: 
// Module Name: tb_sr_ff
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

module tb_sr_ff;

    reg s;
    reg r;
    reg clk;

    wire q;
    wire qb;

    sr_ff uut (
        .s(s),
        .r(r),
        .clk(clk),
        .q(q),
        .qb(qb)
    );

    always #5 clk = ~clk;

    initial begin
        $display("Time\t | CLK S R | Q QB");
        $display("-----------------------");
        $monitor("%0t\t |  %b  %b %b | %b  %b", $time, clk, s, r, q, qb);

        clk = 0; 
        s = 0; 
        r = 1; 
                #12; 
        s = 0; r = 0; #10;
        s = 1; r = 0; #10;
        s = 0; r = 0; #10;        
        s = 0; r = 1; #10;
        
        s = 1; r = 1; #10;
                #20 $finish;
    end

endmodule