`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:30:31 07/20/2015 
// Design Name: 
// Module Name:    TwoBitCounter 
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
module TwoBitCounter(
    input  clock, 
	 input Reset, 
	 input En, 
	 input [1:0] select, 
	 output reg [1:0] Counter_Out,
    output reg out1
    );
	//parameter S0=2'b00, S1=2'b10, S2=2'b01, S3=2'b11;

	always @ (posedge clock)
	begin : CounterBlock // Block Name
	
		if (Counter_Out == 2'b00 || Reset == 1'b1) 
      begin
			Counter_Out = 2'b11;
			out1 = 1'b1;
	   end
		
		else if (En == 1'b1) 
		begin
			//Counter_Out = Counter_Out - 1;
		//end
		
		if (select == 2'b00 && Counter_Out == 2'b01) 
		  begin
			out1 = 1'b0;
		  end

		else if (select == 2'b01 && Counter_Out == 2'b10) 
		  begin
			out1 = 1'b0;
		  end
		
		else if (select == 2'b10 && Counter_Out == 2'b11) 
		  begin
			out1 = 1'b0;
		  end
		  
		  Counter_Out <= #1 Counter_Out - 1;
		end
		
	

		


      //clock = ~clock;

	end
endmodule
