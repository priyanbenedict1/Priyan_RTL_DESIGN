`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.09.2026 11:31:22
// Design Name: 
// Module Name: tb_mux_2to1
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



module tb_mux_2to1;

    // Testbench signals
    reg d0;
    reg d1;
    reg s;
    
    wire y;

    // Instantiate the Unit Under Test (UUT)
    mux_2to1 uut (
        .d0(d0),
        .d1(d1),
        .s(s),
        .y(y)
    );

    initial begin
        // Monitor prints the inputs and output whenever a variable changes
        $monitor("Time=%0t | s=%b | d1=%b d0=%b | y=%b", $time, s, d1, d0, y);

        // Test cases where Select = 0 (Output should match d0)
        s = 0; d1 = 0; d0 = 0; #10; 
        s = 0; d1 = 0; d0 = 1; #10; 
        s = 0; d1 = 1; d0 = 0; #10; 
        s = 0; d1 = 1; d0 = 1; #10; 

        // Test cases where Select = 1 (Output should match d1)
        s = 1; d1 = 0; d0 = 0; #10; 
        s = 1; d1 = 0; d0 = 1; #10; 
        s = 1; d1 = 1; d0 = 0; #10; 
        s = 1; d1 = 1; d0 = 1; #10; 

        $finish; // End simulation
    end 
    
endmodule