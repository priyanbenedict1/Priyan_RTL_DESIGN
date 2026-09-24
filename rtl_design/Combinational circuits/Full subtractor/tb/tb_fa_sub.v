`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.09.2026 09:27:12
// Design Name: 
// Module Name: tb_fa_sub
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

module tb_fa_sub;
       reg A;
       reg B;
       reg C;
       wire Diff;
       wire Borrow;
       
       fa_sub dut(
                 .A(A),
                 .B(B),
                 .C(C),
                 .Diff(Diff),
                 .Borrow(Borrow)
                 );
                 initial begin 
                 $display("Time\tABC|Diff Borrow");
                 $display("---------------------------");
    $monitor("%0t\t%b %b %b |  %b     %b", $time, A, B, C, Diff, Borrow);
    
    A = 0; B = 0; C = 0; #10;
    A = 0; B = 0; C = 1; #10;
    A = 0; B = 1; C = 0; #10;
    A = 0; B = 1; C = 1; #10;   
    A = 1; B = 0; C = 0; #10;
    A = 1; B = 0; C = 1; #10;
    A = 1; B = 1; C = 0; #10;
    A = 1; B = 1; C = 1; #10;
                 $finish;
                 end
                 
                 
       
       endmodule