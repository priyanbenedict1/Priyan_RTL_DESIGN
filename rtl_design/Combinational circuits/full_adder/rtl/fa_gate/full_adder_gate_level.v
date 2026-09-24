`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.09.2026 14:57:15
// Design Name: 
// Module Name: full_adder_gate_level
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


module full_adder_gate_level (
    input a,
    input b,
    input cin,
    output sum,
    output cout
);

    wire x1, x2, x3;

    xor g1 (x1, a, b);
    xor g2 (sum, x1, cin);

    and g3 (x3, a, b);
    and g4 (x2, x1, cin);
    or  g5 (cout, x2, x3);

endmodule