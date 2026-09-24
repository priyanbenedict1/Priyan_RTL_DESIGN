`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.09.2026 10:25:27
// Design Name: 
// Module Name: ri_adder
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


module ri_adder(
input [3:0] A,
      [3:0] B,
      Cin,
      output[3:0]sum,cout
      

    );
    wire c1,c2,c3;
fa fa0 ( .A(A[0]), .B(B[0]), .Cin(Cin), .sum(sum[0]), .cout(c1) );
    fa fa1 ( .A(A[1]), .B(B[1]), .Cin(c1),  .sum(sum[1]), .cout(c2) );
    fa fa2 ( .A(A[2]), .B(B[2]), .Cin(c2),  .sum(sum[2]), .cout(c3) );
    fa fa3 ( .A(A[3]), .B(B[3]), .Cin(c3),  .sum(sum[3]), .cout(cout) );    
    
endmodule
