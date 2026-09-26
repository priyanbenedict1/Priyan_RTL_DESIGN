`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.09.2026 11:45:15
// Design Name: 
// Module Name: alu_8bit_top
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


module alu_8bit_top(
          input wire [7:0]a,
                wire [7:0]b,
                wire [3:0]sel,
          output reg [15:0] y

    );
         //arithematic operations
         wire [15:0] add_out;
         wire [15:0] sum_out;
         wire [15:0] mul_out;
         wire [15:0] div_out;
         wire [15:0] left_shift;
         wire [15:0] right_shift;
         wire [15:0] increment;
         wire [15:0] decrement;
         
         // logical operation 
         wire [15:0] and_out;
         wire [15:0] or_out;
         wire [15:0] not_out;
         wire [15:0] nand_out;
         wire [15:0] nor_out;
         wire [15:0] xor_out;
         wire [15:0] xnor_out;
         wire [15:0] pass_out;
         
         
         add_8bit adder(
         .a(a),
         .b(b),
         .cin(1'b1),
         .y(add_out)
         );
          
        sub_8bit subtractor(
                     .a(a),
                     .b(b),
                     .cin(1'b1),
                     .y(sub_out)
                     );
                     
        mul_8bit multiplier(
                   .a(a),
                   .b(b),
                   .y(mul_out)
                   );
                   
        div_8bit divider(
                   .a(a),
                   .b(b),
                   .y(div_out)
                   );
                   
        left_shift_8bit left_shifter(
                  .a(a),
                  .y(left_shift)
                  );
               
        right_shift_8bit right_shifter(
                      .a(a),
                      .y(right_shift)
                      );
                  
         increment_8bit incrementer(
                 .a(a),
                 .y(increment)
                 );
                 
            decrement_8bit decrementer(
                       .a(a),
                       .y(decrement)
                       );
                       
              al_and_8bit and_op( 
                             .a(a),
                             .b(b),
                             .y(and_out)
                             );
                             
              al_or_8bit or_op( 
                             .a(a),
                             .b(b),
                             .y(or_out)
                             );
                  
              l_not_8bit not_op( 
                             .a(a),
                             .y(not_out)
                             );  
                             
              xor_8bit xor_op(
                           .a(a),
                           .b(b),
                           .y(xor_out)
                           );
                           
              xnor_8bit xnor_op(
                                .a(a),
                                .b(b),
                                .y(xnor_out)
                                );
                                
              pass_8bit pass_op(                            
              .a(a),
              .y(pass_out)
              );
              
              
              
              
              
              always@(*)begin
              y = 16'b0000;
              
              
              case(sel)
               4'b0000 : begin
            y = add_out ; 
        end
        
        4'b0001 : begin 
            y = sub_out ; 
        end
        
        4'b0010 : begin 
            y = mul_out ; 
        end
        
        4'b0011 : begin
            y = div_out ; 
        end 
        
        4'b0100 : begin 
            y = left_shift ; 
        end 
        
        4'b0101 : begin 
            y = right_shift ; 
        end 
        
        4'b0110 : begin 
            y = increment ;
        end
        
        4'b0111 : begin 
            y = decrement ; 
        end 
        
        4'b1000 : begin 
            y = and_out ;
        end 
        
        4'b1001 : begin 
            y = nand_out ; 
        end 
        
        4'b1010 : begin 
            y = or_out ; 
        end 
        
        4'b1011 : begin 
            y = nor_out ; 
        end 
         
        4'b1100 : begin 
            y = xor_out ; 
        end 
        
        4'b1101 : begin 
            y = xnor_out ; 
        end 
        
        4'b1110 : begin 
            y = not_out ; 
        end 
        
        4'b1111 : begin 
            y = pass_out ; 
        end
   endcase 
   
   end
    
                                     
                  
    
    
    
endmodule
