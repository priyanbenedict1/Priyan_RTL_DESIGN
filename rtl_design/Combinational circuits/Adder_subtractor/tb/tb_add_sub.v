`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.09.2026 10:07:41
// Design Name: 
// Module Name: tb_add_sub
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


module tb_add_sub;

    reg [3:0] A;
    reg [3:0] B;
    reg M;

    wire [3:0] Y;
    wire cout;

    add_sub uut (
        .A(A), 
        .B(B), 
        .M(M), 
        .Y(Y), 
        .cout(cout)
    );

    initial begin
        $monitor("Time=%0t | M=%b | A=%b (%0d) | B=%b (%0d) || Y=%b (%0d) | cout=%b", 
                 $time, M, A, A, B, B, Y, Y, cout);

        M = 0; 
        A = 4'b0101; B = 4'b0011; 
        #10;
        
        A = 4'b1001; B = 4'b0110; 
        #10;

        M = 1;
        A = 4'b1000; B = 4'b0011; 
        #10;
        
        A = 4'b1111; B = 4'b0101; 
        #10;
        
        A = 4'b0011; B = 4'b0101; 
        #10;

        $finish;
    end

endmodule