`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.09.2026 10:37:48
// Design Name: 
// Module Name: decoder_2_4
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



  module decoder_2_4(
    input a,b,
    output p,q,r,s
);

    assign p = ~a&~b;
    assign q = ~a&b; 
    assign r =  a&~b; 
    assign s =  a&b; 

endmodule
