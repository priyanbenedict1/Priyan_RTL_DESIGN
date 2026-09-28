`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.09.2026 09:50:29
// Design Name: 
// Module Name: tb_sr_latch_nor
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



module tb_sr_latch_nor;

    reg S;
    reg R;

    wire Q;
    wire Qbar;

    sr_latch_nor uut (
        .S(S),
        .R(R),
        .Q(Q),
        .Qbar(Qbar)
    );

    initial begin
        $display("Time\t | S R | Q Qbar | State");
        $display("---------------------------------");
        $monitor("%0t\t | %b %b | %b  %b   |", $time, S, R, Q, Qbar);

        S = 0; R = 1; #10; 
        S = 0; R = 0; #10; 
        S = 1; R = 0; #10; 
        S = 0; R = 0; #10; 
        S = 1; R = 1; #10; 
        S = 0; R = 0; #10; 
        
        $finish;
    end
    
endmodule