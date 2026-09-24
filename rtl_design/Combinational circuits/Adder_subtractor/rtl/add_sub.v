`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.09.2026 09:37:56
// Design Name: 
// Module Name: add_sub
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


module add_sub(
     input [3:0]A,
           [3:0]B,
           M,
       output[3:0]Y,cout
       

    );
    
    wire [3:0]B_xor;
    wire c1,c2,c3;
    assign B_xor[0] = B[0] ^ M;
    assign B_xor[1] = B[1] ^ M;
    assign B_xor[2] = B[2] ^ M;
    assign B_xor[3] = B[3] ^ M;
    
    
    fa fa0 (.a(A[0]), .b(B_xor[0]), .cin(M),  .sum(Y[0]), .cout(c1));
    fa fa1 (.a(A[1]), .b(B_xor[1]), .cin(c1), .sum(Y[1]), .cout(c2));
    fa fa2 (.a(A[2]), .b(B_xor[2]), .cin(c2), .sum(Y[2]), .cout(c3));
    fa fa3 (.a(A[3]), .b(B_xor[3]), .cin(c3), .sum(Y[3]), .cout(cout));    
endmodule
