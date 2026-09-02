`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.09.2026 15:01:57
// Design Name: 
// Module Name: tb_xnor_gate
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

module tb_xnor_gate;
    reg a, b;
    wire y;

    xnor_gate uut (.a(a), .b(b), .y(y));

    initial begin
        $monitor("Time = %0t | a=%b b=%b | XNOR y=%b", $time, a, b, y);
        
        a = 0; b = 0; #10;
        a = 0; b = 1; #10;
        a = 1; b = 0; #10;
        a = 1; b = 1; #10;
        
        $finish;
    end 
endmodule