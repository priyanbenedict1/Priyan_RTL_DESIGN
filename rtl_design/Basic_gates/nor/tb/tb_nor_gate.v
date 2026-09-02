`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.09.2026 14:47:49
// Design Name: 
// Module Name: tb_nor_gate
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



module tb_nor_gate;
    reg a, b;
    wire y;

    nor_gate uut (.a(a), .b(b), .y(y));

    initial begin
        $monitor("Time = %0t | a=%b b=%b | NOR y=%b", $time, a, b, y);
        a = 0; b = 0; #10;
        a = 0; b = 1; #10;
        a = 1; b = 0; #10;
        a = 1; b = 1; #10;
        $finish;
    end 
endmodule