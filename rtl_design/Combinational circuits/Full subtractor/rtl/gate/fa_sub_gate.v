`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.09.2026 14:12:15
// Design Name: 
// Module Name: fa_sub_gate
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


module fa_sub_gate(
input A, B, C,
  output Diff, Borrow
    );
        wire not_A;
  wire w1, w2, w3;
  xor x1 (Diff, A, B, C);
  not n1 (not_A, A);
  and a1 (w1, not_A, B);  
  and a2 (w2, not_A, C);  
  and a3 (w3, B, C);
  or o1 (Borrow, w1, w2, w3);
endmodule
