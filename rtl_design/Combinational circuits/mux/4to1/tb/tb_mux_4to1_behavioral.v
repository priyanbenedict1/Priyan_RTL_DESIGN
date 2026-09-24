`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.09.2026 09:24:35
// Design Name: 
// Module Name: tb_mux_4to1_behavioral
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


 module tb_mux_4to1_behavioral;

    reg in0;
    reg in1;
    reg in2;
    reg in3;
    reg s1;
    reg s0;
    wire out;

    mux_4to1_behavioral uut (
        .in0(in0), 
        .in1(in1), 
        .in2(in2), 
        .in3(in3), 
        .s1(s1), 
        .s0(s0), 
        .out(out)
    );

    initial begin
        $monitor("Time = %0t | s1 = %b, s0 = %b | out = %b", $time, s1, s0, out);

        in0 = 1'b0;
        in1 = 1'b1;
        in2 = 1'b0;
        in3 = 1'b1;
        
        s1 = 0; s0 = 0; #10; 
        s1 = 0; s0 = 1; #10; 
        s1 = 1; s0 = 0; #10; 
        s1 = 1; s0 = 1; #10; 

        $finish;
    end

endmodule  