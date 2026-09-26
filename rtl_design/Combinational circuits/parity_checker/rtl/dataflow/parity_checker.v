`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.09.2026 14:43:36
// Design Name: 
// Module Name: parity_checker
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


module parity_checker (
    input [3:0] data,
    input parity_bit,
    output error_even,
    output error_odd
);

    assign error_even = data[3] ^ data[2] ^ data[1] ^ data[0] ^ parity_bit;
    
    assign error_odd  = ~(data[3] ^ data[2] ^ data[1] ^ data[0] ^ parity_bit);

endmodule
