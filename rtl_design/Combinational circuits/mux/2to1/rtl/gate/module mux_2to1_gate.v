`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.09.2026 11:58:25
// Design Name: 
// Module Name: module mux_2to1_gate
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


module  mux_2to1_gate(
input i0,i1,s,
output out 

    );
    wire s_not;
    wire w0,w1;
    not n1(s_not,s);
    and a0 (w0,i0,s_not);
    and a1(w1,i1,s);
    or o1(out,w0,w1);
    
endmodule
