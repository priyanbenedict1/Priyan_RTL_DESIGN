`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.09.2026 15:06:43
// Design Name: 
// Module Name: comparator_3bit
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


module comparator_3bit (
    input [2:0] A,
    input [2:0] B,
    output Eq,
    output Gt,
    output Lt
);
    
    assign Eq = (A == B);
    assign Gt = (A > B);
    assign Lt = (A < B);
endmodule
