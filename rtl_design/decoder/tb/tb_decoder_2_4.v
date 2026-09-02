`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.09.2026 11:16:32
// Design Name: 
// Module Name: tb_decoder_2_4
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
////////////////////////////////////////////////////////////////////////////////

module tb_decoder_2_4;
    reg a, b;
    wire p, q, r, s;
    decoder_2_4 uut (
        .a(a),
        .b(b),
        .p(p),
        .q(q),
        .r(r),
        .s(s)
    );
    initial begin
        $monitor("Time = %0t | a=%b b=%b | p=%b q=%b r=%b s=%b", $time, a, b, p, q, r, s);
        a = 0; b = 0; #10;
        a = 0; b = 1; #10;
        a = 1; b = 0; #10;
        a = 1; b = 1; #10;
        $finish;
    end 
endmodule