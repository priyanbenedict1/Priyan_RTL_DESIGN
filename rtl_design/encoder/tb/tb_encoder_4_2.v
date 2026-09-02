`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.09.2026 10:09:24
// Design Name: 
// Module Name: tb_encoder_4_2
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



module tb_encoder_4_2;
    reg a, b, c, d;
    wire x, y;

    encoder_4_2 uut (
        .a(a),  
        .b(b),  
        .c(c), 
        .d(d), 
        .x(x), 
        .y(y)  
    );

    initial begin
        $monitor("Time = %0t | a=%b b=%b c=%b d=%b | x=%b y=%b", $time, a, b, c, d, x, y);
        
        a = 0; b = 0; c = 0; d = 1; #10;
        a = 0; b = 0; c = 1; d = 0; #10;
        a = 0; b = 1; c = 0; d = 0; #10;
        a = 1; b = 0; c = 0; d = 0; #10;
        
        $finish; 
    end 
    
endmodule