`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:56:04 07/12/2018 
// Design Name: 
// Module Name:    Synchronize_input 
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
//this module is the pulse synchronizer per each input. 
module Synchronize_input(clock, in, out);
	parameter NSYNC = 2; //number of sync flops, should be >=2
	input clock, in;
	output out;
	
	reg [NSYNC-2:0] sync;
	reg out;
		
	always @ (posedge clock)
	begin
		{out,sync} <= {sync[NSYNC-2:0],in};
	end		
endmodule

