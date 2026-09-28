`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.09.2026 09:44:25
// Design Name: 
// Module Name: sr_latch_nor
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


module sr_latch_nor (
    input S,
    input R,
    output Q,
    output Qbar
);

    assign Q = ~(R | Qbar);
    assign Qbar = ~(S | Q);

endmodule