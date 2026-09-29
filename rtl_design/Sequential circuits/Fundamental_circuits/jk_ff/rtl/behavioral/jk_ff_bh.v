`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.09.2026 10:55:29
// Design Name: 
// Module Name: jk_ff_bh
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


module jk_ff_bh (
    input clk,
    input j,
    input k,
    output reg q,
    output qb
);

    assign qb = ~q;

    always @(posedge clk) begin
        case ({j, k})
            2'b00: q <= q;       
            2'b01: q <= 1'b0;    
            2'b10: q <= 1'b1;    
            2'b11: q <= ~q;      
        endcase
    end

endmodule