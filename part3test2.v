`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:51:05 07/21/2015
// Design Name:   TwoBitCounter
// Module Name:   C:/Users/pichu/Desktop/CSE140 LAB3/Lab3/part3test2.v
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

module part3test2;

	// Inputs
	reg clock;
	reg Reset;
	reg En;

	// Instantiate the Unit Under Test (UUT)
	TwoBitCounter uut (
		.clock(clock), 
		.Reset(Reset), 
		.En(En)
	);

	initial begin
		// Initialize Inputs
		clock = 0;
		Reset = 0;
		En = 0;

		// Wait 100 ns for global reset to finish
		#100;
		
		Reset = 1;
		En = 1;
      select = 10;

      #100
      select = 11;

      #100
      select = 01;		
		// Add stimulus here

        
		// Add stimulus here

	end
      
endmodule

