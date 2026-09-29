`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.09.2026 10:27:37
// Design Name: 
// Module Name: tb_jk_ff
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


module tb_jk_ff;

    reg j;
    reg k;
    reg enable;

    wire q;
    wire qn;

    jk_ff uut (
        .j(j),
        .k(k),
        .enable(enable),
        .q(q),
        .qn(qn)
    );

    initial begin
        $display("Time\t | EN J K | Q QN");
        $display("-----------------------");
        $monitor("%0t\t |  %b %b %b | %b  %b", $time, enable, j, k, q, qn);

        enable = 0; j = 0; k = 0;
        
        #10; enable = 1; j = 0; k = 1; 
        #10; enable = 1; j = 0; k = 0; 
        #10; enable = 1; j = 1; k = 0; 
        #10; enable = 1; j = 0; k = 0; 
        #10; enable = 0; j = 1; k = 1; 
        #10; enable = 1; j = 1; k = 1; 
        
        #20 $finish;
    end

endmodule