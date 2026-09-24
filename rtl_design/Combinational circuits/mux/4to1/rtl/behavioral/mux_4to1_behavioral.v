`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.09.2026 09:10:29
// Design Name: 
// Module Name: mux_4to1_behavioral
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


module mux_4to1_behavioral (
    input in0, 
    input in1, 
    input in2, 
    input in3,
    input s1,  
    input s0,  
    output reg out
);

    always @(*) begin
       
        case ({s1, s0}) 
            2'b00: out = in0;
            2'b01: out = in1;
            2'b10: out = in2;
            2'b11: out = in3;
            default: out = 1'bx;
        endcase
    end

endmodule