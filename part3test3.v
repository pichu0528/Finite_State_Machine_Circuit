`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:52:39 07/21/2015
// Design Name:   TwoBitCounter
// Module Name:   C:/Users/pichu/Desktop/CSE140 LAB3/Lab3/part3test3.v
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

module part3test3;

	// Inputs
	reg clock;
	reg Reset;
	reg En;
   reg [1:0] select;
  
	wire [1:0] Counter_Out;
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
	always #5 clock = ~clock;

	initial begin
		// Initialize Inputs
		clock = 0;
		Reset = 0;
		En = 0;
		select = 2'b00;
	



		// Wait 100 ns for global reset to finish
		#10;
		
		Reset = 1;
		En = 1;
      select = 2'b10;

      #10
      select = 2'b11;
      //En = 0;
      #10
      select = 2'b01;	
      
      end		
	   // Add stimulus here
	

	      
endmodule

