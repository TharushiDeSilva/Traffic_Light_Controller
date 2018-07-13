`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:53:35 07/12/2018 
// Design Name: 
// Module Name:    Synchronizer 
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
//this module takes input from the sensors and buttons and synchronize them with the system clock
module Synchronizer(clock, reset, sensor, walk_request, reprogram, reset_sync, sensor_sync, wr_sync, prog_sync);
	input clock;
	input reset;
	input sensor;
	input walk_request;
	input reprogram;
	output reset_sync;
	output sensor_sync;
	output wr_sync;
	output prog_sync;

	
	Synchronize_input synchronized_reset(.clock(clock), .in(reset), .out(reset_sync));
	Synchronize_input synchronized_sensor(.clock(clock), .in(sensor), .out(sensor_sync));
	Synchronize_input synchronized_walk_request(.clock(clock), .in(walk_request), .out(wr_sync));
	Synchronize_input synchronized_reprogram(.clock(clock), .in(reprogram), .out(prog_sync));
	
endmodule
