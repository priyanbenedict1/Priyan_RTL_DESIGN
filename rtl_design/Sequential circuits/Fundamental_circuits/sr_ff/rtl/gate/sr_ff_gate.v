`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.09.2026 10:19:30
// Design Name: 
// Module Name: sr_ff_gate
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


module sr_ff_gate (
    input s,
    input r,
    input clk,
    output q,
    output qb
);

    wire clk_inv;
    wire m_s, m_r, m_q, m_qb;
    wire s_s, s_r;

    not g1 (clk_inv, clk);

    nand n1 (m_s, s, clk_inv);
    nand n2 (m_r, r, clk_inv);
    
    nand n3 (m_q, m_s, m_qb);
    nand n4 (m_qb, m_r, m_q);

    nand n5 (s_s, m_q, clk);
    nand n6 (s_r, m_qb, clk);
    
    nand n7 (q, s_s, qb);
    nand n8 (qb, s_r, q);

endmodule