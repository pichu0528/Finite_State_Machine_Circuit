`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:43:48 07/21/2015
// Design Name:   TwoBitCounter
// Module Name:   C:/Users/pichu/Desktop/CSE140 LAB3/Lab3/hjj.v
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

module hjj;

	// Inputs
	reg clock;
	reg Reset;
	reg En;
	reg [1:0] select;
	reg [1:0] Counter_Out;

	// Outputs
	wire out1;

	// Instantiate the Unit Under Test (UUT)
	TwoBitCounter uut (
		.clock(clock), 
		.Reset(Reset), 
		.En(En), 
		.select(select), 
		.Counter_Out(Counter_Out), 
		.out1(out1)
	);

	initial begin
		// Initialize Inputs
		clock = 0;
		Reset = 0;
		En = 0;
		select = 0;
		Counter_Out = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

