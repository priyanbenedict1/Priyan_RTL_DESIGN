`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.09.2026 10:08:49
// Design Name: 
// Module Name: jk_ff
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


module jk_ff(
    input j , k , enable , 
    output q ,qn 
    );
    
    wire n1 , n2 , q1 , qn1 ; 
    
    assign n1 = ~( j & enable ) ; 
    
    assign n2 = ~( k & enable ) ; 
    
    assign q = ~ ( n1 & qn ) ; 
    
    assign qn = ~ ( n2 & q ) ; 
    
endmodule