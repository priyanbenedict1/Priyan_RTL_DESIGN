`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.09.2026 14:11:23
// Design Name: 
// Module Name: parity_generator
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
///////////////////////////////////////////////////////////////////////////////module parity_generator_4bit (
module parity_generator(
    input [3:0] data,
    output even_parity,
    output odd_parity
);
    assign even_parity = data[3] ^ data[2] ^ data[1] ^ data[0];
    assign odd_parity = ~(data[3] ^ data[2] ^ data[1] ^ data[0]);
endmodule 