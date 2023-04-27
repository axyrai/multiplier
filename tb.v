`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:03:50 04/26/2023
// Design Name:   source
// Module Name:   /home/axyrai/temp/challenge 1/supercounter/multiplier2x2/tb.v
// Project Name:  multiplier2x2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: source
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb;

	// Outputs
	wire [3:0] y;
	reg [1:0] a,b;

	// Instantiate the Unit Under Test (UUT)
	source uut (
		.a(a),.b(b),.y(y)
	);

	initial begin
		// Initialize Inputs
#50 a=2'b00;b=2'b00;
#50 a=2'b00;b=2'b01;
#50 a=2'b01;b=2'b00;
#50 a=2'b01;b=2'b01;
#50 a=2'b00;b=2'b10;
#50 a=2'b00;b=2'b11;
#50 a=2'b01;b=2'b10;
#50 a=2'b01;b=2'b11;
#50 a=2'b10;b=2'b00;
#50 a=2'b10;b=2'b01;
#50 a=2'b11;b=2'b00;
#50 a=2'b11;b=2'b01;
#50 a=2'b10;b=2'b10;
#50 a=2'b10;b=2'b11;
#50 a=2'b11;b=2'b10;
#50 a=2'b11;b=2'b11;
		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

