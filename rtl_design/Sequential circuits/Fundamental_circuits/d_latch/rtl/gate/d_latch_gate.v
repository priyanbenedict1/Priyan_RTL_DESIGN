`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.09.2026 11:05:27
// Design Name: 
// Module Name: d_latch_gate
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


module d_latch_gate (
    input d,
    input en,
    output q,
    output qn
);

    wire not_d, w1, w2;

    not g1 (not_d, d);
    
    nand g2 (w1, d, en);
    nand g3 (w2, not_d, en);
    
    nand g4 (q, w1, qn);
    nand g5 (qn, w2, q);

endmodule