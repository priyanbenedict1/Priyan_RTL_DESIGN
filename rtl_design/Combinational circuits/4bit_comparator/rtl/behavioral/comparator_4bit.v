`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.09.2026 11:56:49
// Design Name: 
// Module Name: comparator_4bit
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


module comparator_4bit (
    input [3:0] A,
    input [3:0] B,
    output reg A_less_B,
    output reg A_greater_B,
    output reg A_equal_B
);

    always @(*) begin
        A_greater_B = 1'b0;
        A_less_B    = 1'b0;
        A_equal_B   = 1'b0;

        if (A > B) begin
            A_greater_B = 1'b1;
        end
        else if (A < B) begin
            A_less_B = 1'b1;
        end
        else begin
            A_equal_B = 1'b1;
        end
    end

endmodule