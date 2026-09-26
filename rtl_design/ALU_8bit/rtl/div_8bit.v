`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.09.2026 09:43:12
// Design Name: 
// Module Name: div_8bit
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


module div_8bit(
           input [7:0]a,[7:0]b,
           output [15:0]y

    );
    
        assign y = ( b != 8'b0) ? ( a / b ) : 8'b0 ; 

endmodule
