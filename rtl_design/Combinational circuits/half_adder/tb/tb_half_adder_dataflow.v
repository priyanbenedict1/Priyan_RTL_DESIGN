`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.09.2026 14:19:11
// Design Name: 
// Module Name: tb_half_adder_dataflow
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


module tb_half_adder_dataflow;

    reg a;
    reg b;
    wire sum;
    wire carry;

    half_adder_dataflow dut (
        .a(a), 
        .b(b), 
        .sum(sum),
        .carry(carry)
    );

    initial begin
        $dumpfile("half_adder_waves.vcd");
        $dumpvars(0, tb_half_adder_dataflow); 

        $display("Time | a b | sum carry");
        $display("-----------------------");
        $monitor("%4t | %b %b |  %b    %b", $time, a, b, sum, carry);

        a = 0; b = 0; #10; 
        a = 0; b = 1; #10; 
        a = 1; b = 0; #10; 
        a = 1; b = 1; #10; 

        $finish;
    end 

endmodule