`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.09.2026 15:12:52
// Design Name: 
// Module Name: tb_comparatora_3bit
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


module tb_comparator_3bit;

    reg [2:0] A;
    reg [2:0] B;
    wire Eq;
    wire Gt;
    wire Lt;

    comparator_3bit dut (
        .A(A),
        .B(B),
        .Eq(Eq),
        .Gt(Gt),
        .Lt(Lt)
    );

    initial begin
        $dumpfile("comparator_waves.vcd");
        $dumpvars(0, tb_comparator_3bit);

        $display("Time |  A    B  | Eq Gt Lt");
        $display("--------------------------");
        $monitor("%4t | %b  %b |  %b  %b  %b", $time, A, B, Eq, Gt, Lt);

        A = 3'b000; B = 3'b000; #10; // 0 == 0
        A = 3'b100; B = 3'b011; #10; // 4 > 3
        A = 3'b010; B = 3'b111; #10; // 2 < 7
        A = 3'b111; B = 3'b111; #10; // 7 == 7
        A = 3'b010; B = 3'b001; #10; // 2 > 1
        A = 3'b101; B = 3'b110; #10; // 5 < 6

        $finish;
    end

endmodule