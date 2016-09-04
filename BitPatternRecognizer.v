`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:30:32 07/20/2015 
// Design Name: 
// Module Name:    BitPatternRecognizer 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module BitPatternRecognizer(
    input clk,
    input in,
	 output reg[2:0] state,
    output reg out
    );
	 
	parameter S0=3'b000, S1=3'b001, S2=3'b010, S3=2'b011, S4=3'b100, S5=3'b101, S6=3'b110;
	
	
	always @(posedge clk)
	begin
		case (state)
		default: state <= S0;
		S0:
			if( in == 1'b0 )
				state <= S1;
			else
				state <= S4;				
		S1: 
			if( in == 1'b0 )
				state <= S1;
			else
				state <= S2;	
		S2: 
			if( in == 1'b0 )
				state <= S3;
			else
				state <= S4;	
		S3: 
			if( in == 1'b0 )
				state <= S6;
			else
				state <= S2;	
		S4: 
			if( in == 1'b0 )
				state <= S5;
			else
				state <= S4;	
		S5: 
			if( in == 1'b0 )
				state <= S6;
			else
				state <= S2;
		S6: 
			if( in == 1'b0 )
				state <= S6;
			else
				state <= S6;
		endcase
	end

	always @(*) begin
	if(state == S3)
		out = 1'b1;
	else
		out = 1'b0;
	end
	
endmodule
