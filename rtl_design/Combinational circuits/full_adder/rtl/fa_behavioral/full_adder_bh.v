`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.09.2026 14:52:58
// Design Name: 
// Module Name: full_adder_bh
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


module full_adder_bh (
    input a, b, cin,
    output reg sum, carry
);

    always @(*) begin
        sum   = a ^ b ^ cin;
        carry = (a & b) | (b & cin) | (cin & a);
    end

endmodule

