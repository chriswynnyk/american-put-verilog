`timescale 1ns / 1ps
//---------------------------------------------------------------------//
// Name:    compute_vex_tb.v
// Author:  Chris Wynnyk
// Date:    2/3/2008
// Purpose: Test structure for the compute_vex.v module.
//---------------------------------------------------------------------//

module amer_put_tb;

	// Inputs
	reg clk;
	reg nrst;
	reg start_s1;
	reg start_s2;
	reg [63:0] plus;
	reg [63:0] minus;
	reg [63:0] K_over_S;
	reg [63:0] p_up;
	reg [63:0] p_down;
	
	// Outputs
	wire [63:0] result;
	
	// Instantiate the Unit Under Test (UUT)
	amer_put uut (
		.clk(clk),
		.nrst(nrst),
		.start_s1(start_s1),
		.start_s2(start_s2),
		.p_up(p_up),
		.p_down(p_down),
		.log_lambda_up(plus),
		.log_lambda_down(minus),
		.K_over_S(K_over_S),
		.result(result)
	);
	
	initial begin
		// Initialize Inputs
		clk    = 0;
		nrst   = 0;
		start_s1  = 0;
		start_s2  = 0;

		K_over_S <= 64'h3ff0000000000000;  // 1
	    plus    <= 64'h3f8030dc4ea03a72;
	    minus   <= 64'hbf8030dc4ea03a72;
	    p_up    <= 64'h3fdfe9e61a77116f;
	    p_down  <= 64'h3fe00af7fa15cd9b;

	//	plus     <= 64'h3f40624dd2f1a9fc;  // 5e-4
	//	minus   <= 64'hbf40624dd2f1a9fc;  // -5e-4   
//		p_up     <= 64'h3fe0000000000000;  // 0.5
//	    p_down    <= 64'h3fe0000000000000;  // 0.5

		// Wait 100 ns for global reset to finish
		#100;
		nrst <= 1'b1;
		

	    repeat(5)@(posedge clk);
		start_s1 <= 1'b1;
	    repeat(1)@(posedge clk);
		start_s1 <= 1'b0;
	    
		repeat(8050)@(posedge clk);
		//start_s2 <= 1'b1;
	    //repeat(1)@(posedge clk);
		//start_s2 <= 1'b0;
	    
		repeat(500000)@(posedge clk);
//        repeat(70)@(posedge clk);
		
       
	end
	
	// Clocking
	initial begin
	#20
	forever clk = #20 ~clk; 		
	end

      
endmodule

