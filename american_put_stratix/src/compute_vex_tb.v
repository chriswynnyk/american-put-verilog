`timescale 1ns / 1ps
//---------------------------------------------------------------------//
// Name:    compute_vex_tb.v
// Author:  Chris Wynnyk
// Date:    2/3/2008
// Purpose: Test structure for the compute_vex.v module.
//---------------------------------------------------------------------//

module compute_vex_tb;

	// Inputs
	reg clk;
	reg nrst;
	reg start;
	reg [63:0] plus;
	reg [63:0] minus;
	reg [63:0] K_over_S;
	
	// Outputs
	wire [63:0] v_ex;
	wire [12:0] wraddr;
	wire wren;
	
	// Instantiate the Unit Under Test (UUT)
	compute_vex uut (
		.clk(clk),
		.nrst(nrst),
		.start(start),
		.log_lambda_up(plus),
		.log_lambda_down(minus),
		.K_over_S(K_over_S),
		.v_ex(v_ex),
		.wraddr(wraddr),
		.wren(wren)
	);
	
	initial begin
		// Initialize Inputs
		clk    = 0;
		nrst   = 0;
		start  = 0;
		K_over_S <= 64'h4000000000000000;
//		plus     <= 64'h0000000000000000;
        plus     <= 64'h3f50624dd2f1a9fc;
	    minus    <= 64'h3f1a36e2eb1c432d;
	    	
		// Wait 100 ns for global reset to finish
		#100;
		nrst <= 1'b1;
		

	    repeat(5)@(posedge clk);
		start <= 1'b1;
	    repeat(1)@(posedge clk);
		start <= 1'b0;
	    
		repeat(8060)@(posedge clk);
		start <= 1'b1;
	    repeat(1)@(posedge clk);
		start <= 1'b0;
	    
		repeat(100)@(posedge clk);
		
        $stop;
	end
	
	// Clocking
	initial begin
	#20
	forever clk = #20 ~clk; 		
	end

      
endmodule

