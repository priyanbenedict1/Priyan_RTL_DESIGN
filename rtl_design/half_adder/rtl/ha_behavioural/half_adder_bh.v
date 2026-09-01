`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.09.2026 14:33:48
// Design Name: 
// Module Name: half_adder_bh
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


module half_adder_bh (
    input a,      
    input b,      
    output reg s, 
    output reg c  
);

    always @(*) begin
        s = a ^ b; 
        c = a & b; 
    end

endmodule
