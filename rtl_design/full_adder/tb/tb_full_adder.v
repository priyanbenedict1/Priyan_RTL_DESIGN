`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.09.2026 14:45:40
// Design Name: 
// Module Name: tb_full_adder
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


module tb_full_adder;

    // Testbench signals
    reg a;
    reg b;
    reg cin;
    wire sum;
    wire cout;

    // Instantiate the Full Adder
    full_adder dut (
        .a(a), 
        .b(b), 
        .cin(cin),
        .sum(sum),
        .cout(cout)
    );

    // Stimulus block
    initial begin
        // Waveform configuration
        $dumpfile("full_adder_waves.vcd");
        $dumpvars(0, tb_full_adder); 

        // Console output monitor
        $display("Time | a b cin | sum cout");
        $display("-------------------------");
        $monitor("%4t | %b %b  %b  |  %b   %b", $time, a, b, cin, sum, cout);

        // Apply all 8 truth table combinations
        a = 0; b = 0; cin = 0; #10; 
        a = 0; b = 0; cin = 1; #10; 
        a = 0; b = 1; cin = 0; #10; 
        a = 0; b = 1; cin = 1; #10; 
        a = 1; b = 0; cin = 0; #10; 
        a = 1; b = 0; cin = 1; #10; 
        a = 1; b = 1; cin = 0; #10; 
        a = 1; b = 1; cin = 1; #10; 

        // Terminate simulation
        $finish;
    end 

endmodule