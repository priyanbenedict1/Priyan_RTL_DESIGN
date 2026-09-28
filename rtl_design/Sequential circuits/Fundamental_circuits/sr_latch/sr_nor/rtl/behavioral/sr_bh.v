`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.09.2026 09:57:59
// Design Name: 
// Module Name: sr_bh
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


module sr_bh (
    input S,
    input R,
    output reg Q,
    output reg Qbar
);

    always @(S or R) begin
        case ({S, R})
            2'b00: begin
                Q <= Q;
                Qbar <= Qbar;
            end
            2'b01: begin
                Q <= 1'b0;
                Qbar <= 1'b1;
            end
            2'b10: begin
                Q <= 1'b1;
                Qbar <= 1'b0;
            end
            2'b11: begin
                Q <= 1'b0;
                Qbar <= 1'b0;
            end
        endcase
    end

endmodule