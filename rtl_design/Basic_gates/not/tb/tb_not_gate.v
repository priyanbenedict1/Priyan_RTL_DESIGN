`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.09.2026 11:54:29
// Design Name: 
// Module Name: tb_not_gate
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


module tb_not_gate;

    reg a;
    wire y;

    not_gate dut (
        .a(a),
        .y(y)
    );

    initial begin
        $dumpfile("not_gate_waves.vcd");
        $dumpvars(0, tb_not_gate);

        $display("Time | a | y");
        $display("-------------");
        $monitor("%4t | %b | %b", $time, a, y);

        a = 0; #10; 
        a = 1; #10; 

        $finish;
    end

endmodule