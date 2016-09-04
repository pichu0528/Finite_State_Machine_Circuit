`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:01:56 07/21/2015
// Design Name:   TwoBitCounter
// Module Name:   C:/Users/pichu/Desktop/CSE140 LAB3/Lab3/part3take4.v
// Project Name:  Lab3
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: TwoBitCounter
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module part3take4;

	// Inputs
	reg clock;
	reg Reset;
	reg En;
	reg [1:0] select;

	// Instantiate the Unit Under Test (UUT)
	TwoBitCounter uut (
		.clock(clock), 
		.Reset(Reset), 
		.En(En), 
		.select(select)
	);

	initial begin
		// Initialize Inputs
		clock = 0;
		Reset = 0;
		En = 0;
		select = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

