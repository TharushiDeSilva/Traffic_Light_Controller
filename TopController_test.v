`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   21:26:25 07/12/2018
// Design Name:   TopController
// Module Name:   /home/tharushi/Programs/HDL/Traffic_Light_Controller/TopController_test.v
// Project Name:  Traffic_Light_Controller
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: TopController
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module TopController_test;

	// Inputs
	reg clock;
	reg reset;
	reg sensor;
	reg walk_request;
	reg reprogram;
	reg [1:0] time_param_selector;
	reg [3:0] time_value;
	reg time_val;

	// Outputs
	wire Rm;
	wire Ym;
	wire Gm;
	wire Rs;
	wire Ys;
	wire Gs;
	wire W;
	wire st_state;
	wire expired_state;
	wire enable_state;

	// Instantiate the Unit Under Test (UUT)
	TopController uut (
		.clock(clock), 
		.reset(reset), 
		.sensor(sensor), 
		.walk_request(walk_request), 
		.reprogram(reprogram), 
		.time_param_selector(time_param_selector), 
		.time_value(time_value), 
		.Rm(Rm), 
		.Ym(Ym), 
		.Gm(Gm), 
		.Rs(Rs), 
		.Ys(Ys), 
		.Gs(Gs), 
		.W(W), 
		.st_state(st_state), 
		.expired_state(expired_state), 
		.enable_state(enable_state), 
		.time_val(time_val)
	);
	initial begin
		forever #10 clock = ~clock;
	end
	initial begin
		// Initialize Inputs
		clock = 0;
		reset = 1;
		sensor = 0;
		walk_request = 0;
		reprogram = 0;
		time_param_selector = 0;
		time_value = 0;
		time_val = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		reset = 0;
		
		#2100
		sensor = 1;
		
		#1200
		sensor = 0;
		
		#100 walk_request = 1;
		#100 walk_request = 0;
		
		#500;
		time_param_selector = 0;
		time_param_selector = 4'd6;
		
		#1000 reprogram = 1;
		#20 reprogram = 0;
		
	end
      
endmodule

