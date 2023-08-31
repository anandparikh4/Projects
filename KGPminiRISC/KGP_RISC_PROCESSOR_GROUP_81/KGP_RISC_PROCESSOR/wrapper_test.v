`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   12:27:48 11/09/2022
// Design Name:   wrapper
// Module Name:   C:/Users/Student/Desktop/KGP_RISC_PROCESSOR/KGP_RISC_PROCESSOR/wrapper_test.v
// Project Name:  KGP_RISC_PROCESSOR
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: wrapper
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module wrapper_test;

	// Inputs
	reg clk;
	reg rst;
	reg hld;
	reg [13:0] addr;

	// Outputs
	wire [15:0] out;

	// Instantiate the Unit Under Test (UUT)
	wrapper uut (
		.clk(clk), 
		.rst(rst), 
		.hld(hld), 
		.addr(addr), 
		.out(out)
	);
	
	initial begin
		forever #30 clk = ~clk;
	end

	initial begin
		// Initialize Inputs
		clk = 0;
		rst = 1;
		hld = 0;
		addr = 0;

		// Wait 100 ns for global reset to finish
		#50 rst = 0;
		#5000000 hld = 1; addr = 1;
		
        
		// Add stimulus here

	end
      
endmodule

