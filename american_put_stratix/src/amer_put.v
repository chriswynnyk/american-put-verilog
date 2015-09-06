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
wire  [63:0] c4_memout;
wire  [63:0] c5_memout;
wire  [63:0] c6_memout;
wire  [63:0] c7_memout;
wire  [63:0] c8_memout;
wire  [63:0] c9_memout;
wire  [63:0] c10_memout;
wire  [63:0] c11_memout;
wire  [63:0] c12_memout;
wire  [63:0] c13_memout;
wire  [63:0] c14_memout;
wire  [63:0] c15_memout;
wire  [63:0] c16_memout;
wire  [63:0] c17_memout;
wire  [63:0] c18_memout;
wire  [63:0] c19_memout;
wire  [63:0] c20_memout;
wire  [63:0] c21_memout;
wire  [63:0] c22_memout;
wire  [63:0] c23_memout;
wire  [63:0] c24_memout;
wire  [63:0] c25_memout;
wire  [63:0] c26_memout;
wire  [63:0] c27_memout;
wire  [63:0] c28_memout;
wire  [63:0] c29_memout;
wire  [63:0] c30_memout;
wire  [63:0] c31_memout;

wire  [63:0] c0_up;
wire  [63:0] c1_up;
wire  [63:0] c2_up;
wire  [63:0] c3_up;
wire  [63:0] c4_up;
wire  [63:0] c5_up;
wire  [63:0] c6_up;
wire  [63:0] c7_up;
wire  [63:0] c8_up;
wire  [63:0] c9_up;
wire  [63:0] c10_up;
wire  [63:0] c11_up;
wire  [63:0] c12_up;
wire  [63:0] c13_up;
wire  [63:0] c14_up;
wire  [63:0] c15_up;
wire  [63:0] c16_up;
wire  [63:0] c17_up;
wire  [63:0] c18_up;
wire  [63:0] c19_up;
wire  [63:0] c20_up;
wire  [63:0] c21_up;
wire  [63:0] c22_up;
wire  [63:0] c23_up;
wire  [63:0] c24_up;
wire  [63:0] c25_up;
wire  [63:0] c26_up;
wire  [63:0] c27_up;
wire  [63:0] c28_up;
wire  [63:0] c29_up;
wire  [63:0] c30_up;
wire  [63:0] c31_up;

wire  [63:0] c0_down;
wire  [63:0] c1_down;
wire  [63:0] c2_down;
wire  [63:0] c3_down;
wire  [63:0] c4_down;
wire  [63:0] c5_down;
wire  [63:0] c6_down;
wire  [63:0] c7_down;
wire  [63:0] c8_down;
wire  [63:0] c9_down;
wire  [63:0] c10_down;
wire  [63:0] c11_down;
wire  [63:0] c12_down;
wire  [63:0] c13_down;
wire  [63:0] c14_down;
wire  [63:0] c15_down;
wire  [63:0] c16_down;
wire  [63:0] c17_down;
wire  [63:0] c18_down;
wire  [63:0] c19_down;
wire  [63:0] c20_down;
wire  [63:0] c21_down;
wire  [63:0] c22_down;
wire  [63:0] c23_down;
wire  [63:0] c24_down;
wire  [63:0] c25_down;
wire  [63:0] c26_down;
wire  [63:0] c27_down;
wire  [63:0] c28_down;
wire  [63:0] c29_down;
wire  [63:0] c30_down;
wire  [63:0] c31_down;

wire  [63:0] c0_vex;
wire  [63:0] c1_vex;
wire  [63:0] c2_vex;
wire  [63:0] c3_vex;
wire  [63:0] c4_vex;
wire  [63:0] c5_vex;
wire  [63:0] c6_vex;
wire  [63:0] c7_vex;
wire  [63:0] c8_vex;
wire  [63:0] c9_vex;
wire  [63:0] c10_vex;
wire  [63:0] c11_vex;
wire  [63:0] c12_vex;
wire  [63:0] c13_vex;
wire  [63:0] c14_vex;
wire  [63:0] c15_vex;
wire  [63:0] c16_vex;
wire  [63:0] c17_vex;
wire  [63:0] c18_vex;
wire  [63:0] c19_vex;
wire  [63:0] c20_vex;
wire  [63:0] c21_vex;
wire  [63:0] c22_vex;
wire  [63:0] c23_vex;
wire  [63:0] c24_vex;
wire  [63:0] c25_vex;
wire  [63:0] c26_vex;
wire  [63:0] c27_vex;
wire  [63:0] c28_vex;
wire  [63:0] c29_vex;
wire  [63:0] c30_vex;
wire  [63:0] c31_vex;

wire  [63:0] c0_result;
wire  [63:0] c1_result;
wire  [63:0] c2_result;
wire  [63:0] c3_result;
wire  [63:0] c4_result;
wire  [63:0] c5_result;
wire  [63:0] c6_result;
wire  [63:0] c7_result;
wire  [63:0] c8_result;
wire  [63:0] c9_result;
wire  [63:0] c10_result;
wire  [63:0] c11_result;
wire  [63:0] c12_result;
wire  [63:0] c13_result;
wire  [63:0] c14_result;
wire  [63:0] c15_result;
wire  [63:0] c16_result;
wire  [63:0] c17_result;
wire  [63:0] c18_result;
wire  [63:0] c19_result;
wire  [63:0] c20_result;
wire  [63:0] c21_result;
wire  [63:0] c22_result;
wire  [63:0] c23_result;
wire  [63:0] c24_result;
wire  [63:0] c25_result;
wire  [63:0] c26_result;
wire  [63:0] c27_result;
wire  [63:0] c28_result;
wire  [63:0] c29_result;
wire  [63:0] c30_result;
wire  [63:0] c31_result;


wire [10:0] rdaddr;
wire [10:0] wraddr;
wire [13:0] vexaddr;

wire done_init;
wire wren;
wire done_s1;


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
  .c4_in(c4_result),
  .c5_in(c5_result),
  .c6_in(c6_result),
  .c7_in(c7_result),
  .c8_in(c8_result),
  .c9_in(c9_result),
  .c10_in(c10_result),
  .c11_in(c11_result),
  .c12_in(c12_result),
  .c13_in(c13_result),
  .c14_in(c14_result),
  .c15_in(c15_result),
  .c16_in(c16_result),
  .c17_in(c17_result),
  .c18_in(c18_result),
  .c19_in(c19_result),
  .c20_in(c20_result),
  .c21_in(c21_result),
  .c22_in(c22_result),
  .c23_in(c23_result),
  .c24_in(c24_result),
  .c25_in(c25_result),
  .c26_in(c26_result),
  .c27_in(c27_result),
  .c28_in(c28_result),
  .c29_in(c29_result),
  .c30_in(c30_result),
  .c31_in(c31_result),
  
  .c0_out(c0_memout),
  .c1_out(c1_memout),
  .c2_out(c2_memout),
  .c3_out(c3_memout),
  .c4_out(c4_memout),
  .c5_out(c5_memout),
  .c6_out(c6_memout),
  .c7_out(c7_memout),
  .c8_out(c8_memout),
  .c9_out(c9_memout),
  .c10_out(c10_memout),
  .c11_out(c11_memout),
  .c12_out(c12_memout),
  .c13_out(c13_memout),
  .c14_out(c14_memout),
  .c15_out(c15_memout),
  .c16_out(c16_memout),
  .c17_out(c17_memout),
  .c18_out(c18_memout),
  .c19_out(c19_memout),
  .c20_out(c20_memout),
  .c21_out(c21_memout),
  .c22_out(c22_memout),
  .c23_out(c23_memout),
  .c24_out(c24_memout),
  .c25_out(c25_memout),
  .c26_out(c26_memout),
  .c27_out(c27_memout),
  .c28_out(c28_memout),
  .c29_out(c29_memout),
  .c30_out(c30_memout),
  .c31_out(c31_memout)
  );

value_buffer value_buffer_inst(
  .clk(clk_fast),
  .c0_in(c0_memout),
  .c1_in(c1_memout),
  .c2_in(c2_memout),
  .c3_in(c3_memout),
  .c4_in(c4_memout),
  .c5_in(c5_memout),
  .c6_in(c6_memout),
  .c7_in(c7_memout),
  .c8_in(c8_memout),
  .c9_in(c9_memout),
  .c10_in(c10_memout),
  .c11_in(c11_memout),
  .c12_in(c12_memout),
  .c13_in(c13_memout),
  .c14_in(c14_memout),
  .c15_in(c15_memout),
  .c16_in(c16_memout),
  .c17_in(c17_memout),
  .c18_in(c18_memout),
  .c19_in(c19_memout),
  .c20_in(c20_memout),
  .c21_in(c21_memout),
  .c22_in(c22_memout),
  .c23_in(c23_memout),
  .c24_in(c24_memout),
  .c25_in(c25_memout),
  .c26_in(c26_memout),
  .c27_in(c27_memout),
  .c28_in(c28_memout),
  .c29_in(c29_memout),
  .c30_in(c30_memout),
  .c31_in(c31_memout),
  .c0_up(c0_up),
  .c1_up(c1_up),
  .c2_up(c2_up),
  .c3_up(c3_up),
  .c4_up(c4_up),
  .c5_up(c5_up),
  .c6_up(c6_up),
  .c7_up(c7_up),
  .c8_up(c8_up),
  .c9_up(c9_up),
  .c10_up(c10_up),
  .c11_up(c11_up),
  .c12_up(c12_up),
  .c13_up(c13_up),
  .c14_up(c14_up),
  .c15_up(c15_up),
  .c16_up(c16_up),
  .c17_up(c17_up),
  .c18_up(c18_up),
  .c19_up(c19_up),
  .c20_up(c20_up),
  .c21_up(c21_up),
  .c22_up(c22_up),
  .c23_up(c23_up),
  .c24_up(c24_up),
  .c25_up(c25_up),
  .c26_up(c26_up),
  .c27_up(c27_up),
  .c28_up(c28_up),
  .c29_up(c29_up),
  .c30_up(c30_up),
  .c31_up(c31_up),
  .c0_down(c0_down),
  .c1_down(c1_down),
  .c2_down(c2_down),
  .c3_down(c3_down),
  .c4_down(c4_down),
  .c5_down(c5_down),
  .c6_down(c6_down),
  .c7_down(c7_down),
  .c8_down(c8_down),
  .c9_down(c9_down),
  .c10_down(c10_down),
  .c11_down(c11_down),
  .c12_down(c12_down),
  .c13_down(c13_down),
  .c14_down(c14_down),
  .c15_down(c15_down),
  .c16_down(c16_down),
  .c17_down(c17_down),
  .c18_down(c18_down),
  .c19_down(c19_down),
  .c20_down(c20_down),
  .c21_down(c21_down),
  .c22_down(c22_down),
  .c23_down(c23_down),
  .c24_down(c24_down),
  .c25_down(c25_down),
  .c26_down(c26_down),
  .c27_down(c27_down),
  .c28_down(c28_down),
  .c29_down(c29_down),
  .c30_down(c30_down),
  .c31_down(c31_down)
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


eval_node c4_eval_node(
  .clk(clk_fast),
  .nrst(nrst),
  .p_up(p_up),
  .p_down(p_down),
  .v_up(c4_up),
  .v_down(c4_down),
  .v_ex(c4_vex),
  .result(c4_result)
);


eval_node c5_eval_node(
  .clk(clk_fast),
  .nrst(nrst),
  .p_up(p_up),
  .p_down(p_down),
  .v_up(c5_up),
  .v_down(c5_down),
  .v_ex(c5_vex),
  .result(c5_result)
);


eval_node c6_eval_node(
  .clk(clk_fast),
  .nrst(nrst),
  .p_up(p_up),
  .p_down(p_down),
  .v_up(c6_up),
  .v_down(c6_down),
  .v_ex(c6_vex),
  .result(c6_result)
);


eval_node c7_eval_node(
  .clk(clk_fast),
  .nrst(nrst),
  .p_up(p_up),
  .p_down(p_down),
  .v_up(c7_up),
  .v_down(c7_down),
  .v_ex(c7_vex),
  .result(c7_result)
);


eval_node c8_eval_node(
  .clk(clk_fast),
  .nrst(nrst),
  .p_up(p_up),
  .p_down(p_down),
  .v_up(c8_up),
  .v_down(c8_down),
  .v_ex(c8_vex),
  .result(c8_result)
);

eval_node c9_eval_node(
  .clk(clk_fast),
  .nrst(nrst),
  .p_up(p_up),
  .p_down(p_down),
  .v_up(c9_up),
  .v_down(c9_down),
  .v_ex(c9_vex),
  .result(c9_result)
);


eval_node c10_eval_node(
  .clk(clk_fast),
  .nrst(nrst),
  .p_up(p_up),
  .p_down(p_down),
  .v_up(c10_up),
  .v_down(c10_down),
  .v_ex(c10_vex),
  .result(c10_result)
);


eval_node c11_eval_node(
  .clk(clk_fast),
  .nrst(nrst),
  .p_up(p_up),
  .p_down(p_down),
  .v_up(c11_up),
  .v_down(c11_down),
  .v_ex(c11_vex),
  .result(c11_result)
);


eval_node c12_eval_node(
  .clk(clk_fast),
  .nrst(nrst),
  .p_up(p_up),
  .p_down(p_down),
  .v_up(c12_up),
  .v_down(c12_down),
  .v_ex(c12_vex),
  .result(c12_result)
);

eval_node c13_eval_node(
  .clk(clk_fast),
  .nrst(nrst),
  .p_up(p_up),
  .p_down(p_down),
  .v_up(c13_up),
  .v_down(c13_down),
  .v_ex(c13_vex),
  .result(c13_result)
);

eval_node c14_eval_node(
  .clk(clk_fast),
  .nrst(nrst),
  .p_up(p_up),
  .p_down(p_down),
  .v_up(c14_up),
  .v_down(c14_down),
  .v_ex(c14_vex),
  .result(c14_result)
);

eval_node c15_eval_node(
  .clk(clk_fast),
  .nrst(nrst),
  .p_up(p_up),
  .p_down(p_down),
  .v_up(c15_up),
  .v_down(c15_down),
  .v_ex(c15_vex),
  .result(c15_result)
);

eval_node c16_eval_node(
  .clk(clk_fast),
  .nrst(nrst),
  .p_up(p_up),
  .p_down(p_down),
  .v_up(c16_up),
  .v_down(c16_down),
  .v_ex(c16_vex),
  .result(c16_result)
);

eval_node c17_eval_node(
  .clk(clk_fast),
  .nrst(nrst),
  .p_up(p_up),
  .p_down(p_down),
  .v_up(c17_up),
  .v_down(c17_down),
  .v_ex(c17_vex),
  .result(c17_result)
);

eval_node c18_eval_node(
  .clk(clk_fast),
  .nrst(nrst),
  .p_up(p_up),
  .p_down(p_down),
  .v_up(c18_up),
  .v_down(c18_down),
  .v_ex(c18_vex),
  .result(c18_result)
);

eval_node c19_eval_node(
  .clk(clk_fast),
  .nrst(nrst),
  .p_up(p_up),
  .p_down(p_down),
  .v_up(c19_up),
  .v_down(c19_down),
  .v_ex(c19_vex),
  .result(c19_result)
);

eval_node c20_eval_node(
  .clk(clk_fast),
  .nrst(nrst),
  .p_up(p_up),
  .p_down(p_down),
  .v_up(c20_up),
  .v_down(c20_down),
  .v_ex(c20_vex),
  .result(c20_result)
);

eval_node c21_eval_node(
  .clk(clk_fast),
  .nrst(nrst),
  .p_up(p_up),
  .p_down(p_down),
  .v_up(c21_up),
  .v_down(c21_down),
  .v_ex(c21_vex),
  .result(c21_result)
);

eval_node c22_eval_node(
  .clk(clk_fast),
  .nrst(nrst),
  .p_up(p_up),
  .p_down(p_down),
  .v_up(c22_up),
  .v_down(c22_down),
  .v_ex(c22_vex),
  .result(c22_result)
);

eval_node c23_eval_node(
  .clk(clk_fast),
  .nrst(nrst),
  .p_up(p_up),
  .p_down(p_down),
  .v_up(c23_up),
  .v_down(c23_down),
  .v_ex(c23_vex),
  .result(c23_result)
);

eval_node c24_eval_node(
  .clk(clk_fast),
  .nrst(nrst),
  .p_up(p_up),
  .p_down(p_down),
  .v_up(c24_up),
  .v_down(c24_down),
  .v_ex(c24_vex),
  .result(c24_result)
);

eval_node c25_eval_node(
  .clk(clk_fast),
  .nrst(nrst),
  .p_up(p_up),
  .p_down(p_down),
  .v_up(c25_up),
  .v_down(c25_down),
  .v_ex(c25_vex),
  .result(c25_result)
);

eval_node c26_eval_node(
  .clk(clk_fast),
  .nrst(nrst),
  .p_up(p_up),
  .p_down(p_down),
  .v_up(c26_up),
  .v_down(c26_down),
  .v_ex(c26_vex),
  .result(c26_result)
);

eval_node c27_eval_node(
  .clk(clk_fast),
  .nrst(nrst),
  .p_up(p_up),
  .p_down(p_down),
  .v_up(c27_up),
  .v_down(c27_down),
  .v_ex(c27_vex),
  .result(c27_result)
);

eval_node c28_eval_node(
  .clk(clk_fast),
  .nrst(nrst),
  .p_up(p_up),
  .p_down(p_down),
  .v_up(c28_up),
  .v_down(c28_down),
  .v_ex(c28_vex),
  .result(c28_result)
);

eval_node c29_eval_node(
  .clk(clk_fast),
  .nrst(nrst),
  .p_up(p_up),
  .p_down(p_down),
  .v_up(c29_up),
  .v_down(c29_down),
  .v_ex(c29_vex),
  .result(c29_result)
);

eval_node c30_eval_node(
  .clk(clk_fast),
  .nrst(nrst),
  .p_up(p_up),
  .p_down(p_down),
  .v_up(c30_up),
  .v_down(c30_down),
  .v_ex(c30_vex),
  .result(c30_result)
);

eval_node c31_eval_node(
  .clk(clk_fast),
  .nrst(nrst),
  .p_up(p_up),
  .p_down(p_down),
  .v_up(c31_up),
  .v_down(c31_down),
  .v_ex(c31_vex),
  .result(c31_result)
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
  .chan4(c4_vex),
  .chan5(c5_vex),
  .chan6(c6_vex),
  .chan7(c7_vex),
  .chan8(c8_vex),
  .chan9(c9_vex),
  .chan10(c10_vex),
  .chan11(c11_vex),
  .chan12(c12_vex),
  .chan13(c13_vex),
  .chan14(c14_vex),
  .chan15(c15_vex),
  .chan16(c16_vex),
  .chan17(c17_vex),
  .chan18(c18_vex),
  .chan19(c19_vex),
  .chan20(c20_vex),
  .chan21(c21_vex),
  .chan22(c22_vex),
  .chan23(c23_vex),
  .chan24(c24_vex),
  .chan25(c25_vex),
  .chan26(c26_vex),
  .chan27(c27_vex),
  .chan28(c28_vex),
  .chan29(c29_vex),
  .chan30(c30_vex),
  .chan31(c31_vex), 
  .done_s1(done_s1),
  .vexaddr(vexaddr)
);

endmodule