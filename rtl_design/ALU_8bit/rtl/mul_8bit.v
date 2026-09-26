`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.09.2026 09:46:56
// Design Name: 
// Module Name: mul_8bit
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


module mul_8bit(
               input [7:0]a,
                     [7:0]b,
               output [15:0]y
    );
    
          assign y = (a*b);    
endmodule
