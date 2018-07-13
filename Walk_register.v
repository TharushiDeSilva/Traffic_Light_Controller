`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:57:20 07/12/2018 
// Design Name: 
// Module Name:    Walk_register 
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
//this module is responsible for handling requests sent by pedestrians. 
module Walk_register(clock, reset_sync, wr_sync, wr_reset, wr);
	input clock;
	input reset_sync;
	input wr_sync;
	input wr_reset;
	output wr;
	reg wr;
	
	always @(posedge clock)
	begin
		if(wr_reset || reset_sync)
				wr <= 0;		
		else
				if(wr)
					wr <= wr;			
				else
					wr <= wr_sync;			
	end
endmodule
