`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:02:24 07/12/2018
// Design Name:   LEDs
// Module Name:   /home/tharushi/Programs/HDL/Traffic_Light_Controller/LEDs_test.v
// Project Name:  Traffic_Light_Controller
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: LEDs
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module LEDs_test;

	// Inputs
	reg [6:0] lights;

	// Outputs
	wire Rm;
	wire Ym;
	wire Gm;
	wire Rs;
	wire Ys;
	wire Gs;
	wire W;

	// Instantiate the Unit Under Test (UUT)
	LEDs uut (
		.lights(lights), 
		.Rm(Rm), 
		.Ym(Ym), 
		.Gm(Gm), 
		.Rs(Rs), 
		.Ys(Ys), 
		.Gs(Gs), 
		.W(W)
	);

	initial begin
		// Initialize Inputs
		lights = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		#50;
		lights = 7'b1000000;
		#50;
		lights = 7'b0100000;
		#50;
		lights = 7'b0010000;
		#50;
		lights = 7'b0001000;
		#50;
		lights = 7'b0000100;
		#50;
		lights = 7'b0000010;
		#50;
		lights = 7'b0000001;
		
	end
      
endmodule

