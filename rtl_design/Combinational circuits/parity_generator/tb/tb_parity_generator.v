`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.09.2026 14:22:27
// Design Name: 
// Module Name: tb_parity_generator
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


module tb_parity_generator;

    reg [3:0] data;
    wire even_parity;
    wire odd_parity;
    integer i;

    parity_generator uut (
        .data(data),
        .even_parity(even_parity),
        .odd_parity(odd_parity)
    );

    initial begin
        $monitor("Time=%0t | Data=%b || Even Parity=%b | Odd Parity=%b", 
                 $time, data, even_parity, odd_parity);

        for (i = 0; i < 16; i = i + 1) begin
            data = i;
            #10;
        end

        $finish;
    end

endmodule