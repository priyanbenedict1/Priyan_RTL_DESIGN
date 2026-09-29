`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.09.2026 14:00:32
// Design Name: 
// Module Name: sr_ff
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


module sr_ff (
    input s,
    input r,
    input clk,
    output q,
    output qb
);

    wire mq;
    wire mqb;

    assign mq  = ~( ~(s & ~clk) & mqb );
    assign mqb = ~( ~(r & ~clk) & mq );

    assign q  = ~( ~(mq & clk) & qb );
    assign qb = ~( ~(mqb & clk) & q );

endmodule