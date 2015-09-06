//---------------------------------------------------------------------//
// Name:    vex.v
// Author:  Chris Wynnyk
// Date:    2/21/2008
// Purpose: This module creates and retrieves the exercise price, Vex.
//---------------------------------------------------------------------//

module vex(
    clk_slow,
    clk_fast,
    nrst,
	start_s1,
	start_s2,
	log_lambda_up,
	log_lambda_down,
	K_over_S,
	chan0,
	chan1,
	chan2,
	chan3,
	done_s1,
 	vexaddr
);
	
input  clk_slow;
input  clk_fast;
input  nrst; 
input  start_s1;
input  start_s2;
input  [12:0] vexaddr;
input  [63:0] log_lambda_up;
input  [63:0] log_lambda_down;
input  [63:0] K_over_S;
output [63:0] chan0;
output [63:0] chan1;
output [63:0] chan2;
output [63:0] chan3;
output done_s1;

//---------------------------------------------------------------------//
// Wires
//---------------------------------------------------------------------//
wire  [63:0] v_ex;
wire  [9:0] wraddr;
wire  [7:0] wren;

wire  [63:0] m0_out;
wire  [63:0] m1_out;
wire  [63:0] m2_out;
wire  [63:0] m3_out;
wire  [63:0] m4_out;
wire  [63:0] m5_out;
wire  [63:0] m6_out;
wire  [63:0] m7_out;

wire [63:0] bank0_out;
wire [63:0] bank1_out;
wire [63:0] bank2_out;
wire [63:0] bank3_out;

wire [63:0] chan0;
wire [63:0] chan1;
wire [63:0] chan2;
wire [63:0] chan3;

wire [9:0] bank0_addr;
wire [9:0] bank1_addr;
wire [9:0] bank2_addr;
wire [9:0] bank3_addr;

wire odd;
wire [1:0]sel;


//---------------------------------------------------------------------//
// Instantiations
//---------------------------------------------------------------------//
addrdecode addrdecode_inst(
  .clk(clk_fast),
  .addr_in(vexaddr),
  .bank0_addr(bank0_addr),
  .bank1_addr(bank1_addr),
  .bank2_addr(bank2_addr),
  .bank3_addr(bank3_addr),
  .sel(sel),
  .odd(odd)
);

compute_vex compute_vex_inst(
  .clk(clk_slow),
  .nrst(nrst),
  .start(start_s1),
  .log_lambda_up(log_lambda_up),
  .log_lambda_down(log_lambda_down),
  .K_over_S(K_over_S),
  .v_ex(v_ex),
  .wraddr(wraddr),
  .wren(wren),
  .done(done_s1)
);

mem_1k	m0 (
  .data(v_ex),
  .rdaddress(bank0_addr),
  .rdclock(clk_fast),
  .wraddress(wraddr),
  .wrclock(clk_slow),
  .wren(wren[0]),
  .q(m0_out)
);


mem_1k	m1 (
  .data(v_ex),
  .rdaddress(bank0_addr),
  .rdclock(clk_fast),
  .wraddress(wraddr),
  .wrclock(clk_slow),
  .wren(wren[1]),
  .q(m1_out)
);

mem_1k	m2 (
  .data(v_ex),
  .rdaddress(bank1_addr),
  .rdclock(clk_fast),
  .wraddress(wraddr),
  .wrclock(clk_slow),
  .wren(wren[2]),
  .q(m2_out)
);

mem_1k	m3 (
  .data(v_ex),
  .rdaddress(bank1_addr),
  .rdclock(clk_fast),
  .wraddress(wraddr),
  .wrclock(clk_slow),
  .wren(wren[3]),
  .q(m3_out)
);

mem_1k	m4 (
  .data(v_ex),
  .rdaddress(bank2_addr),
  .rdclock(clk_fast),
  .wraddress(wraddr),
  .wrclock(clk_slow),
  .wren(wren[4]),
  .q(m4_out)
);

mem_1k	m5 (
  .data(v_ex),
  .rdaddress(bank2_addr),
  .rdclock(clk_fast),
  .wraddress(wraddr),
  .wrclock(clk_slow),
  .wren(wren[5]),
  .q(m5_out)
);

mem_1k	m6 (
  .data(v_ex),
  .rdaddress(bank3_addr),
  .rdclock(clk_fast),
  .wraddress(wraddr),
  .wrclock(clk_slow),
  .wren(wren[6]),
  .q(m6_out)
);

mem_1k	m7 (
  .data(v_ex),
  .rdaddress(bank3_addr),
  .rdclock(clk_fast),
  .wraddress(wraddr),
  .wrclock(clk_slow),
  .wren(wren[7]),
  .q(m7_out)
);

//---------------------------------------------------------------------//
// Control Logic
//---------------------------------------------------------------------//

// Mux for even vs. odd memory bank.
assign bank0_out = odd ? m1_out : m0_out;
assign bank1_out = odd ? m3_out : m2_out;
assign bank2_out = odd ? m5_out : m4_out;
assign bank3_out = odd ? m7_out : m6_out;

// Mux for bank shifting based on select state.
assign chan0 = sel[1]?(sel[0]?bank3_out:bank2_out):(sel[0]?bank1_out:bank0_out);
assign chan1 = sel[1]?(sel[0]?bank0_out:bank3_out):(sel[0]?bank2_out:bank1_out);
assign chan2 = sel[1]?(sel[0]?bank1_out:bank0_out):(sel[0]?bank3_out:bank2_out);
assign chan3 = sel[1]?(sel[0]?bank2_out:bank1_out):(sel[0]?bank0_out:bank3_out);
   
  

endmodule