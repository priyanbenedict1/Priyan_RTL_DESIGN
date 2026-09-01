`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.08.2026 19:31:49
// Design Name: 
// Module Name: tb_and_gate
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
///////////////////////////////////////////////////////////////////////
// Testbench: tb_and_gate.v


module tb_and_gate;

    // 1. Declare testbench variables
    reg a;
    reg b;

    // Outputs are declared as 'wire' to connect to the module's output
    wire y;

    // 2. Instantiate the Unit Under Test (UUT)
    // ADDED "uut" HERE:
    and_gate uut (
        .a(a),
        .b(b),
        .y(y)
    );

    // 3. Apply the test stimulus
    initial begin
        // Monitor will automatically print whenever a, b, or y changes
        $monitor("Time = %0t | a = %b, b = %b | Output y = %b", $time, a, b, y);

        // Apply test vectors with a 10 nanosecond delay between each
        a = 0; b = 0; #10;  
        a = 0; b = 1; #10;  
        a = 1; b = 0; #10;  
        a = 1; b = 1; #10;  

        // 4. End the simulation
        $finish;
    end

endmodule

module and_gate(
    input a,b,
    output y
);
    and(y,a,b);
endmodule