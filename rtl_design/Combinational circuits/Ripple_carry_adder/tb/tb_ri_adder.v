`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.09.2026 11:49:47
// Design Name: 
// Module Name: tb_ri_adder
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


module tb_ri_adder;

         reg [3:0] A;
    reg [3:0] B;
    reg Cin;
    wire [3:0] sum;
    wire cout;
    ri_adder dut (
        .A(A), 
        .B(B), 
        .Cin(Cin), 
        .sum(sum), 
        .cout(cout)
    );
    initial begin
   
        $monitor("Time = %2t | A = %b (%2d) | B = %b (%2d) | Cin = %b || sum = %b (%2d) | cout = %b", 
                 $time, A, A, B, B, Cin, sum, sum, cout);

       
        A = 4'b0000; B = 4'b0000; Cin = 0;
        #10; 
        
                A = 4'b0101; B = 4'b0010; Cin = 0;
        #10;
        A = 4'b1111; B = 4'b0001; Cin = 0;
        #10;
        A = 4'b1010; B = 4'b0101; Cin = 1;
        #10;
        A = 4'b1111; B = 4'b1111; Cin = 1;
        #10;
        A = 4'b1000; B = 4'b0111; Cin = 0;
        #10;   
        $finish;
    end
    



endmodule
