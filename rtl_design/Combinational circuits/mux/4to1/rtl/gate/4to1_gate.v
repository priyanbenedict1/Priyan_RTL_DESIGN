`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.09.2026 09:10:31
// Design Name: 
// Module Name: 4to1_gate
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


module mux4to1_gate(
input i0,i1,i2,i3,s0,s1,
output out

    );
    
    wire s0_not, s1_not;
    wire w0,w1,w2,w3;
     not n1(s0_not,s0);
     
     not n2 (s1_not,s1);
     
     and a0(w0,i0,s0_not,s1_not);
     and a1(w1,i1,s0_not,s1);
     and a2(w2,i2,s0,s1_not);
     and a3(w3,i3,s0,s1);
     or o1(out,w0,w1,w2,w3);
endmodule
