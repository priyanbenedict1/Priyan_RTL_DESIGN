`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.09.2026 14:40:02
// Design Name: 
// Module Name: al_or_8bit
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


module al_or_8bit(
          input [7:0]a,[7:0]b,
          output [15:0]y
    );
          assign y = a||b;
endmodule
