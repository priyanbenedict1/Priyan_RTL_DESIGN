`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.09.2026 10:12:17
// Design Name: 
// Module Name: sr_ff_bh
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


module sr_ff_bh (
    input clk,
    input s,
    input r,
    output reg q,
    output qb
);

    assign qb = ~q;

    always @(posedge clk) begin
        case ({s, r})
            2'b00: q <= q;       
            2'b01: q <= 1'b0;    
            2'b10: q <= 1'b1;    
            2'b11: q <= 1'bx;    
        endcase
    end

endmodule