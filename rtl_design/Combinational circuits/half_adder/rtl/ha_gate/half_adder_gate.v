`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.09.2026 14:24:37
// Design Name: 
// Module Name: half_adder_gate
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


module half_adder_gate_level (
    input a,
    input b,
    output sum,
    output carry
);

    xor (sum, a, b);     
    and (carry, a, b);   

endmodule