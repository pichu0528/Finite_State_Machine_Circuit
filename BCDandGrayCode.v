`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:10:09 07/20/2015 
// Design Name: 
// Module Name:    BCDandGrayCode 
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
module BCDandGrayCode(
    input control,
    output reg out_flag,
    output reg[2:0]counter,
    input clk,
    input reset
    );
	 
	// counter encoding
	parameter S0=3'b000, S1=3'b001, S2=3'b010, S3=2'b011, S4=3'b100, S5=3'b101, S6=3'b110, S7=3'b111;
	
	
	always @(posedge clk or posedge reset)
	begin
	if (reset == 1'b1)
		counter <= S0;
	else
		if(control == 1'b0)
			case (counter)
			S0: counter <= S1;
			S1: counter <= S2;
			S2: counter <= S3;
			S3: counter <= S4;
			S4: counter <= S5;
			S5: counter <= S6;
			S6: counter <= S7;
			S7: counter <= S0;
			default: counter <= S0;
			endcase
		// Gray code count	
		else
			case (counter)
			S0: counter <= S1;
			S1: counter <= S3;
			S2: counter <= S6;
			S3: counter <= S2;
			S4: counter <= S0;
			S5: counter <= S4;
			S6: counter <= S7;
			S7: counter <= S5;
			default: counter <= S0;
			endcase
	
	end
	
	// check for even counts of control, else set out_flag to 1
	always @(*) begin
	if(counter == S0 || counter == S3 || counter == S5 || counter == S6)
		out_flag = 1'b0;
	else
		out_flag = 1'b1;
	end
	
endmodule
