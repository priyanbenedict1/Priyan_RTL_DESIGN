`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.09.2026 09:08:55
// Design Name: 
// Module Name: fa_sub
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


module fa_sub(
      input A,B,C,
      output Diff,Borrow

    );
    
    assign Diff = A ^ B ^ C;
    assign Borrow = (~A&B)||(~A&C)||(B&C);
endmodule
