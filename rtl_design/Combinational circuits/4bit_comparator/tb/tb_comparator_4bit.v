`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.09.2026 12:05:21
// Design Name: 
// Module Name: tb_comparator_4bit
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


module tb_comparator_4bit;

    reg [3:0] A;
    reg [3:0] B;

    wire A_less_B;
    wire A_greater_B;
    wire A_equal_B;

    comparator_4bit uut (
        .A(A), 
        .B(B), 
        .A_less_B(A_less_B), 
        .A_greater_B(A_greater_B), 
        .A_equal_B(A_equal_B)
    );

    initial begin
        $monitor("Time=%0t | A=%b (%0d) | B=%b (%0d) || A>B: %b | A<B: %b | A=B: %b", 
                 $time, A, A, B, B, A_greater_B, A_less_B, A_equal_B);

        A = 4'b0000; B = 4'b0000; 
        #10;
        
        A = 4'b1010; B = 4'b1010; 
        #10;

        A = 4'b0111; B = 4'b0011; 
        #10;
        
        A = 4'b1111; B = 4'b1110; 
        #10;

        A = 4'b0010; B = 4'b1000; 
        #10;
        
        A = 4'b0101; B = 4'b1001; 
        #10;

        $finish;
    end

endmodule