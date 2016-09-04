`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:44:33 07/20/2015
// Design Name:   BitPatternRecognizer
// Module Name:   C:/Users/Pin Chu/Desktop/laba/CSE 140/Lab3/BitPatternRecognizerTest.v
// Project Name:  Lab3
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: BitPatternRecognizer
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module BitPatternRecognizerTest;

	// Inputs
	reg clk;
	reg in;

	// Outputs
	wire [2:0] state;
	wire out;

	// Instantiate the Unit Under Test (UUT)
	BitPatternRecognizer uut (
		.clk(clk), 
		.in(in), 
		.state(state), 
		.out(out)
	);

	initial begin
		// Initialize Inputs
		clk = 1;
		in = 1;
		#10 in = 1;
		#10 in = 0;
		#10 in = 1;
		#10 in = 1;
		#10 in = 0;
		#10 in = 1;
		#10 in = 0;
		#10 in = 0;
		#10 in = 1;
		#10 in = 0;
		// Wait 100 ns for global reset to finish
		#10 $finish; 
        
		// Add stimulus here

	end
                  	
	always begin
		#5
		clk = ~clk; // Toggle clock every 5 ticks
	end
endmodule

