`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.09.2026 10:03:06
// Design Name: 
// Module Name: sr_latch_gate
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


module sr_latch_gate (
    input S,
    input R,
    output Q,
    output Qbar
);

    nor g1 (Q, R, Qbar);
    nor g2 (Qbar, S, Q);

endmodule