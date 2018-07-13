`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:13:17 07/12/2018
// Design Name:   Divider
// Module Name:   /home/tharushi/Programs/HDL/Traffic_Light_Controller/Divider_test.v
// Project Name:  Traffic_Light_Controller
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Divider
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Divider_test;

	// Inputs
	reg clock;
	reg timer_reset;

	// Outputs
	wire enable;

	// Instantiate the Unit Under Test (UUT)
	Divider uut (
		.clock(clock), 
		.timer_reset(timer_reset), 
		.enable(enable)
	);
	initial begin
		forever #10 clock = ~clock;
	end
	initial begin
		// Initialize Inputs
		clock = 0;
		timer_reset = 1;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		#330;
		timer_reset = 0;
	end
      
endmodule

