`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.09.2026 10:59:52
// Design Name: 
// Module Name: jk_ff_gate
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


module jk_ff_gate (
    input j,
    input k,
    input clk,
    output q,
    output qb
);

    wire clk_inv;
    wire m_set, m_rst, m_q, m_qb;
    wire s_set, s_rst;
    not g1 (clk_inv, clk);
    nand n1 (m_set, j, clk, qb); 
    nand n2 (m_rst, k, clk, q);  
    nand n3 (m_q, m_set, m_qb);
    nand n4 (m_qb, m_rst, m_q);
    nand n5 (s_set, m_q, clk_inv);
    nand n6 (s_rst, m_qb, clk_inv);
    
    nand n7 (q, s_set, qb);
    nand n8 (qb, s_rst, q);

endmodule