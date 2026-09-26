`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.09.2026 14:48:26
// Design Name: 
// Module Name: tb_parity_checker
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


module tb_parity_checker;

    reg [3:0] data;
    reg parity_bit;
    wire error_even;
    wire error_odd;
    integer i;

    parity_checker uut (
        .data(data),
        .parity_bit(parity_bit),
        .error_even(error_even),
        .error_odd(error_odd)
    );

    initial begin
        $monitor("Time=%0t | Data=%b | Parity Bit=%b || Even Error=%b | Odd Error=%b", 
                 $time, data, parity_bit, error_even, error_odd);

        for (i = 0; i < 32; i = i + 1) begin
            {data, parity_bit} = i;
            #10;
        end

        $finish;
    end

endmodule