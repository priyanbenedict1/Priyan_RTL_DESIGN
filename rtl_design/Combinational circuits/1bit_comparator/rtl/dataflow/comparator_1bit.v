`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.09.2026 11:32:40
// Design Name: 
// Module Name: comparator_1bit
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


module comparator_1bit (
    input A,
    input B,
    output Greater,
    output Equal,
    output Less
);

    assign Greater = A & ~B;
    assign Equal   = ~(A ^ B);
    assign Less    = ~A & B;

endmodule