`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.09.2026 09:15:56
// Design Name: 
// Module Name: tb_or_gate
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


module tb_or_gate;

    reg a;
    reg b;

    wire y;

    or_gate dut (
        .a(a),
        .b(b),
        .y(y)
    );

    initial begin
        $monitor("Time = %0t | a = %b, b = %b | y = %b", $time, a, b, y);

        a = 0; b = 0; #10; // Apply 00, wait 10 time units
        a = 0; b = 1; #10; // Apply 01, wait 10 time units
        a = 1; b = 0; #10; // Apply 10, wait 10 time units
        a = 1; b = 1; #10; // Apply 11, wait 10 time units

        $finish;
    end

    
    initial begin
        $dumpfile("or_gate.vcd");
        $dumpvars(0, tb_or_gate);
    end

endmodule