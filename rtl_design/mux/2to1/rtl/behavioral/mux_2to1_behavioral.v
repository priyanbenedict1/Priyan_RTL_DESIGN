`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.09.2026 11:51:11
// Design Name: 
// Module Name: mux_2to1_behavioral
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


module mux_2to1_behavioral (
    input d0,  
    input d1,  
    input s,   
    output reg y
);

    
    always @(*) begin
        if (s == 1'b1) begin
            y = d1; 
        end else begin
            y = d0; 
        end
    end

endmodule