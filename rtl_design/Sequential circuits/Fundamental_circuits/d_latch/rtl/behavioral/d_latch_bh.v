`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.09.2026 10:52:57
// Design Name: 
// Module Name: d_latch_bh
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


module d_latch_bh (
    input d,
    input en,
    output reg q,
    output qn
);

    always @(d or en) begin
        if (en)
            q <= d;
    end

    assign qn = ~q;

endmodule