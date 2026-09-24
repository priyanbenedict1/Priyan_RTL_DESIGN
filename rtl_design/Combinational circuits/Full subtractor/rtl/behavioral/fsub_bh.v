`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.09.2026 09:55:01
// Design Name: 
// Module Name: fsub_bh
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


module fsub_bh(
         input A, B, C,
  output reg Diff, Borrow

    );
    always @(*) begin
    Diff = A ^ B ^ C;
    Borrow = (~A & B) | (~A & C) | (B & C);
  end
endmodule
