//---------------------------------------------------------------------//
// Name:    am_put_fpga.v
// Author:  Chris Wynnyk
// Date:    2/3/2008
// Purpose: Top-level file for implementing the American Put in an FPGA.
//---------------------------------------------------------------------//

module amer_put(
    clk_fast,
    clk_slow,
    nrst,
	start_s1,
	start_s2,
	p_up,
	p_down,
	log_lambda_up,
	log_lambda_down,
	K_over_S,
	result
);

input  clk_fast;
input  clk_slow;
input  nrst; 
input  start_s1;
input  start_s2;
input  [63:0] p_up;
input  [63:0] p_down;
input  [63:0] log_lambda_up;
input  [63:0] log_lambda_down;
input  [63:0] K_over_S;
	
output [63:0] result;

//---------------------------------------------------------------------//
// Wires
//---------------------------------------------------------------------//
wire  [63:0] c0_memout;
wire  [63:0] c1_memout;
wire  [63:0] c2_memout;
wire  [63:0] c3_memout;

wire  [63:0] c0_up;
wire  [63:0] c1_up;
wire  [63:0] c2_up;
wire  [63:0] c3_up;

wire  [63:0] c0_down;
wire  [63:0] c1_down;
wire  [63:0] c2_down;
wire  [63:0] c3_down;

wire  [63:0] c0_vex;
wire  [63:0] c1_vex;
wire  [63:0] c2_vex;
wire  [63:0] c3_vex;

wire  [63:0] c0_result;
wire  [63:0] c1_result;
wire  [63:0] c2_result;
wire  [63:0] c3_result;

wire [9:0] rdaddr;
wire [9:0] wraddr;
wire [12:0] vexaddr;

wire done_init;
wire wren;


//---------------------------------------------------------------------//
// Assignments.
//---------------------------------------------------------------------//
assign result = c0_memout;

//---------------------------------------------------------------------//
// Instantiations
//---------------------------------------------------------------------//
addrgen addrgen_inst(
  .clk(clk_fast),
  .nrst(nrst),
  .start(done_s1),
  .readout(start_s2),
  .n(16'd4000),
  .wraddr(wraddr),
  .wren(wren),
  .rdaddr(rdaddr),
  .vexaddr(vexaddr)
);

value_membank value_membank_inst(
  .clk(clk_fast),
  .nrst(nrst),
  .wren(wren),
  .rdaddr(rdaddr),
  .wraddr(wraddr),
  .start_init(start_s1),
  .done_init(done_init),
  .c0_in(c0_result),
  .c1_in(c1_result),
  .c2_in(c2_result),
  .c3_in(c3_result),
  .c0_out(c0_memout),
  .c1_out(c1_memout),
  .c2_out(c2_memout),
  .c3_out(c3_memout)
);

value_buffer value_buffer_inst(
  .clk(clk_fast),
  .c0_in(c0_memout),
  .c1_in(c1_memout),
  .c2_in(c2_memout),
  .c3_in(c3_memout),
  .c0_up(c0_up),
  .c1_up(c1_up),
  .c2_up(c2_up),
  .c3_up(c3_up),
  .c0_down(c0_down),
  .c1_down(c1_down),
  .c2_down(c2_down),
  .c3_down(c3_down)
);

// Compute value at the current node.
eval_node c0_eval_node(
  .clk(clk_fast),
  .nrst(nrst),
  .p_up(p_up),
  .p_down(p_down),
  .v_up(c0_up),
  .v_down(c0_down),
  .v_ex(c0_vex),
  .result(c0_result)
);

eval_node c1_eval_node(
  .clk(clk_fast),
  .nrst(nrst),
  .p_up(p_up),
  .p_down(p_down),
  .v_up(c1_up),
  .v_down(c1_down),
  .v_ex(c1_vex),
  .result(c1_result)
);

eval_node c2_eval_node(
  .clk(clk_fast),
  .nrst(nrst),
  .p_up(p_up),
  .p_down(p_down),
  .v_up(c2_up),
  .v_down(c2_down),
  .v_ex(c2_vex),
  .result(c2_result)
);

eval_node c3_eval_node(
  .clk(clk_fast),
  .nrst(nrst),
  .p_up(p_up),
  .p_down(p_down),
  .v_up(c3_up),
  .v_down(c3_down),
  .v_ex(c3_vex),
  .result(c3_result)
);

// Vex Lookup.
vex vex_inst(
  .clk_slow(clk_slow),
  .clk_fast(clk_fast),
  .nrst(nrst),
  .start_s1(start_s1),
  .start_s2(done_s1),
  .log_lambda_up(log_lambda_up),
  .log_lambda_down(log_lambda_down),
  .K_over_S(K_over_S),
  .chan0(c0_vex),
  .chan1(c1_vex),
  .chan2(c2_vex),
  .chan3(c3_vex),
  .done_s1(done_s1),
  .vexaddr(vexaddr)
);

endmodule