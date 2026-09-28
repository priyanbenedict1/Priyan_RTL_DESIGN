`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.09.2026 10:12:25
// Design Name: 
// Module Name: tb_d_latch
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

module tb_d_latch;

    reg d;
    reg en;

    wire q;
    wire qn;

    d_latch uut (
        .d(d),
        .en(en),
        .q(q),
        .qn(qn)
    );

    initial begin
        $monitor("%0t\t | EN=%b D=%b | Q=%b QN=%b", $time, en, d, q, qn);

        en = 1; d = 0; #10;
        en = 1; d = 1; #10;
        en = 0; d = 1; #10;
        en = 0; d = 0; #10;
        en = 1; d = 0; #10;
        en = 1; d = 1; #10;
        
        $finish;
    end

endmodule