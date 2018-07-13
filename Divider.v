`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:55:06 07/12/2018 
// Design Name: 
// Module Name:    Divider 
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
// this module is used to divide the 2.7 MHz system clock into 1Hz pulses

module Divider(clock, timer_reset, enable);
	input clock;
	input timer_reset;
	output enable;
	reg enable;
	
	reg[3:0] internal_counter = 4'd0;	//a counter used to count upto clock speed
	//parameter system_max = 25'd26_999_999;//the clock speed of the system = 2.7MHz
	parameter system_max = 4'd3;//for tests consider 8Hz clock
	

	always @(posedge clock)
		begin
			enable = 0;
			if(internal_counter==system_max /*|| timer_reset*/)
				begin
					internal_counter <= 4'd0; //set the counter to zero as first incrementing step
					enable = 1;
				end
			else
				internal_counter <= internal_counter+1;
			/*if(internal_counter == system_max)
				enable = 1;*/
		end
endmodule
