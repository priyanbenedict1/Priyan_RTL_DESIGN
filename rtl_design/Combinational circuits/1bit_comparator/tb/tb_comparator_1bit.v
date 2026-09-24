`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.09.2026 11:37:54
// Design Name: 
// Module Name: tb_comparator_1bit
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


module tb_comparator_1bit;

    reg A;
    reg B;

    wire Greater;
    wire Equal;
    wire Less;

    comparator_1bit uut (
        .A(A),
        .B(B),
        .Greater(Greater),
        .Equal(Equal),
        .Less(Less)
    );
    initial begin
        $monitor("Time=%0t | A=%b | B=%b || Greater=%b | Equal=%b | Less=%b", 
                 $time, A, B, Greater, Equal, Less);
        A = 0; B = 0; #10;
        A = 0; B = 1; #10;
        A = 1; B = 0; #10;
        A = 1; B = 1; #10;
        $finish;
    end
endmodule