`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   19:58:25 07/12/2018
// Design Name:   TimeParameters
// Module Name:   /home/tharushi/Programs/HDL/Traffic_Light_Controller/TimeParameters_test.v
// Project Name:  Traffic_Light_Controller
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: TimeParameters
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module TimeParameters_test;

	// Inputs
	reg clock;
	reg reset_sync;
	reg prog_sync;
	reg [1:0] interval;
	reg [1:0] time_param_selector;
	reg [3:0] time_value;

	// Outputs
	wire [3:0] value;

	// Instantiate the Unit Under Test (UUT)
	TimeParameters uut (
		.clock(clock), 
		.reset_sync(reset_sync), 
		.prog_sync(prog_sync), 
		.interval(interval), 
		.time_param_selector(time_param_selector), 
		.time_value(time_value), 
		.value(value)
	);
	initial begin
		forever #10 clock = ~clock;
	end
	initial begin
		// Initialize Inputs
		clock = 0;
		reset_sync = 0;
		prog_sync = 0;
		interval = 0;
		time_param_selector = 0;
		time_value = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		reset_sync = 1;
		interval = 2'b00;
		
		#60
		reset_sync = 0;
		
		#60
		interval = 2'b01;
		
		#60
		interval = 2'b10;
		
		#60
		time_param_selector = 2'b01;
		prog_sync = 4'b1010;
		
		#60
		prog_sync = 1;
		
		#20
		prog_sync = 0;
		
		#60
		interval = 2'b01;
		
		#60
		reset_sync = 1;
		interval = 2'b00;
		
		#60
		reset_sync = 0;
		
		#60
		interval = 2'b01;
	end
      
endmodule

