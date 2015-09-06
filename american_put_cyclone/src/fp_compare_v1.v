// megafunction wizard: %ALTFP_COMPARE%
// GENERATION: STANDARD
// VERSION: WM1.0
// MODULE: altfp_compare 

// ============================================================
// File Name: fp_compare_v1.v
// Megafunction Name(s):
// 			altfp_compare
//
// Simulation Library Files(s):
// 			lpm
// ============================================================
// ************************************************************
// THIS IS A WIZARD-GENERATED FILE. DO NOT EDIT THIS FILE!
//
// 8.1 Build 163 10/28/2008 SJ Full Version
// ************************************************************


//Copyright (C) 1991-2008 Altera Corporation
//Your use of Altera Corporation's design tools, logic functions 
//and other software and tools, and its AMPP partner logic 
//functions, and any output files from any of the foregoing 
//(including device programming or simulation files), and any 
//associated documentation or information are expressly subject 
//to the terms and conditions of the Altera Program License 
//Subscription Agreement, Altera MegaCore Function License 
//Agreement, or other applicable license agreement, including, 
//without limitation, that your use is for the sole purpose of 
//programming logic devices manufactured by Altera and sold by 
//Altera or its authorized distributors.  Please refer to the 
//applicable agreement for further details.


//altfp_compare CBX_AUTO_BLACKBOX="ALL" DEVICE_FAMILY="Cyclone II" PIPELINE=1 WIDTH_EXP=11 WIDTH_MAN=52 agb clock dataa datab
//VERSION_BEGIN 8.1 cbx_altfp_compare 2008:07:29:23:21:51:SJ cbx_cycloneii 2008:05:19:10:57:37:SJ cbx_lpm_add_sub 2008:05:19:10:49:01:SJ cbx_lpm_compare 2008:09:01:07:44:05:SJ cbx_mgl 2008:08:08:15:16:18:SJ cbx_stratix 2008:08:05:17:10:23:SJ cbx_stratixii 2008:08:07:13:54:47:SJ  VERSION_END
// synthesis VERILOG_INPUT_VERSION VERILOG_2001
// altera message_off 10463


//synthesis_resources = lpm_compare 8 reg 1 
//synopsys translate_off
`timescale 1 ps / 1 ps
//synopsys translate_on
module  fp_compare_v1_altfp_compare_t4b
	( 
	agb,
	clock,
	dataa,
	datab) ;
	output   agb;
	input   clock;
	input   [63:0]  dataa;
	input   [63:0]  datab;

	reg	out_agb_w_dffe3;
	wire  wire_cmpr1_aeb;
	wire  wire_cmpr1_agb;
	wire  wire_cmpr2_aeb;
	wire  wire_cmpr2_agb;
	wire  wire_cmpr3_aeb;
	wire  wire_cmpr3_agb;
	wire  wire_cmpr4_aeb;
	wire  wire_cmpr4_agb;
	wire  wire_cmpr5_aeb;
	wire  wire_cmpr5_agb;
	wire  wire_cmpr6_aeb;
	wire  wire_cmpr6_agb;
	wire  wire_cmpr7_aeb;
	wire  wire_cmpr7_agb;
	wire  wire_cmpr8_aeb;
	wire  wire_cmpr8_agb;
	wire aclr;
	wire  aligned_dataa_sign_adjusted_dffe2_wi;
	wire  aligned_dataa_sign_adjusted_dffe2_wo;
	wire  aligned_dataa_sign_adjusted_w;
	wire  aligned_dataa_sign_dffe1_wi;
	wire  aligned_dataa_sign_dffe1_wo;
	wire  aligned_dataa_sign_w;
	wire  [62:0]  aligned_dataa_w;
	wire  aligned_datab_sign_adjusted_dffe2_wi;
	wire  aligned_datab_sign_adjusted_dffe2_wo;
	wire  aligned_datab_sign_adjusted_w;
	wire  aligned_datab_sign_dffe1_wi;
	wire  aligned_datab_sign_dffe1_wo;
	wire  aligned_datab_sign_w;
	wire  [62:0]  aligned_datab_w;
	wire  both_inputs_zero;
	wire  both_inputs_zero_dffe2_wi;
	wire  both_inputs_zero_dffe2_wo;
	wire clk_en;
	wire  exp_a_all_one_dffe1_wi;
	wire  exp_a_all_one_dffe1_wo;
	wire  [10:0]  exp_a_all_one_w;
	wire  exp_a_not_zero_dffe1_wi;
	wire  exp_a_not_zero_dffe1_wo;
	wire  [10:0]  exp_a_not_zero_w;
	wire  [7:0]  exp_aeb;
	wire  [7:0]  exp_aeb_tmp_w;
	wire  exp_aeb_w;
	wire  exp_aeb_w_dffe2_wi;
	wire  exp_aeb_w_dffe2_wo;
	wire  [7:0]  exp_agb;
	wire  [7:0]  exp_agb_tmp_w;
	wire  exp_agb_w;
	wire  exp_agb_w_dffe2_wi;
	wire  exp_agb_w_dffe2_wo;
	wire  exp_b_all_one_dffe1_wi;
	wire  exp_b_all_one_dffe1_wo;
	wire  [10:0]  exp_b_all_one_w;
	wire  exp_b_not_zero_dffe1_wi;
	wire  exp_b_not_zero_dffe1_wo;
	wire  [10:0]  exp_b_not_zero_w;
	wire  [6:0]  exp_eq_grp;
	wire  [7:0]  exp_eq_gt_grp;
	wire  flip_outputs_dffe2_wi;
	wire  flip_outputs_dffe2_wo;
	wire  flip_outputs_w;
	wire  input_dataa_nan_dffe2_wi;
	wire  input_dataa_nan_dffe2_wo;
	wire  input_dataa_nan_w;
	wire  input_dataa_zero_w;
	wire  input_datab_nan_dffe2_wi;
	wire  input_datab_nan_dffe2_wo;
	wire  input_datab_nan_w;
	wire  input_datab_zero_w;
	wire  [4:0]  man_a_not_zero_dffe1_wi;
	wire  [4:0]  man_a_not_zero_dffe1_wo;
	wire  [4:0]  man_a_not_zero_merge_w;
	wire  [51:0]  man_a_not_zero_w;
	wire  [4:0]  man_b_not_zero_dffe1_wi;
	wire  [4:0]  man_b_not_zero_dffe1_wo;
	wire  [4:0]  man_b_not_zero_merge_w;
	wire  [51:0]  man_b_not_zero_w;
	wire  out_aeb_w;
	wire  out_agb_dffe3_wi;
	wire  out_agb_dffe3_wo;
	wire  out_agb_w;
	wire  out_unordered_w;

	// synopsys translate_off
	initial
		out_agb_w_dffe3 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) out_agb_w_dffe3 <= 1'b0;
		else if  (clk_en == 1'b1)   out_agb_w_dffe3 <= out_agb_dffe3_wi;
	lpm_compare   cmpr1
	( 
	.aeb(wire_cmpr1_aeb),
	.agb(wire_cmpr1_agb),
	.ageb(),
	.alb(),
	.aleb(),
	.aneb(),
	.dataa(aligned_dataa_w[62:55]),
	.datab(aligned_datab_w[62:55])
	`ifdef FORMAL_VERIFICATION
	`else
	// synopsys translate_off
	`endif
	,
	.aclr(1'b0),
	.clken(1'b1),
	.clock(1'b0)
	`ifdef FORMAL_VERIFICATION
	`else
	// synopsys translate_on
	`endif
	);
	defparam
		cmpr1.lpm_representation = "UNSIGNED",
		cmpr1.lpm_width = 8,
		cmpr1.lpm_type = "lpm_compare";
	lpm_compare   cmpr2
	( 
	.aeb(wire_cmpr2_aeb),
	.agb(wire_cmpr2_agb),
	.ageb(),
	.alb(),
	.aleb(),
	.aneb(),
	.dataa(aligned_dataa_w[54:47]),
	.datab(aligned_datab_w[54:47])
	`ifdef FORMAL_VERIFICATION
	`else
	// synopsys translate_off
	`endif
	,
	.aclr(1'b0),
	.clken(1'b1),
	.clock(1'b0)
	`ifdef FORMAL_VERIFICATION
	`else
	// synopsys translate_on
	`endif
	);
	defparam
		cmpr2.lpm_representation = "UNSIGNED",
		cmpr2.lpm_width = 8,
		cmpr2.lpm_type = "lpm_compare";
	lpm_compare   cmpr3
	( 
	.aeb(wire_cmpr3_aeb),
	.agb(wire_cmpr3_agb),
	.ageb(),
	.alb(),
	.aleb(),
	.aneb(),
	.dataa(aligned_dataa_w[46:39]),
	.datab(aligned_datab_w[46:39])
	`ifdef FORMAL_VERIFICATION
	`else
	// synopsys translate_off
	`endif
	,
	.aclr(1'b0),
	.clken(1'b1),
	.clock(1'b0)
	`ifdef FORMAL_VERIFICATION
	`else
	// synopsys translate_on
	`endif
	);
	defparam
		cmpr3.lpm_representation = "UNSIGNED",
		cmpr3.lpm_width = 8,
		cmpr3.lpm_type = "lpm_compare";
	lpm_compare   cmpr4
	( 
	.aeb(wire_cmpr4_aeb),
	.agb(wire_cmpr4_agb),
	.ageb(),
	.alb(),
	.aleb(),
	.aneb(),
	.dataa(aligned_dataa_w[38:31]),
	.datab(aligned_datab_w[38:31])
	`ifdef FORMAL_VERIFICATION
	`else
	// synopsys translate_off
	`endif
	,
	.aclr(1'b0),
	.clken(1'b1),
	.clock(1'b0)
	`ifdef FORMAL_VERIFICATION
	`else
	// synopsys translate_on
	`endif
	);
	defparam
		cmpr4.lpm_representation = "UNSIGNED",
		cmpr4.lpm_width = 8,
		cmpr4.lpm_type = "lpm_compare";
	lpm_compare   cmpr5
	( 
	.aeb(wire_cmpr5_aeb),
	.agb(wire_cmpr5_agb),
	.ageb(),
	.alb(),
	.aleb(),
	.aneb(),
	.dataa(aligned_dataa_w[30:23]),
	.datab(aligned_datab_w[30:23])
	`ifdef FORMAL_VERIFICATION
	`else
	// synopsys translate_off
	`endif
	,
	.aclr(1'b0),
	.clken(1'b1),
	.clock(1'b0)
	`ifdef FORMAL_VERIFICATION
	`else
	// synopsys translate_on
	`endif
	);
	defparam
		cmpr5.lpm_representation = "UNSIGNED",
		cmpr5.lpm_width = 8,
		cmpr5.lpm_type = "lpm_compare";
	lpm_compare   cmpr6
	( 
	.aeb(wire_cmpr6_aeb),
	.agb(wire_cmpr6_agb),
	.ageb(),
	.alb(),
	.aleb(),
	.aneb(),
	.dataa(aligned_dataa_w[22:15]),
	.datab(aligned_datab_w[22:15])
	`ifdef FORMAL_VERIFICATION
	`else
	// synopsys translate_off
	`endif
	,
	.aclr(1'b0),
	.clken(1'b1),
	.clock(1'b0)
	`ifdef FORMAL_VERIFICATION
	`else
	// synopsys translate_on
	`endif
	);
	defparam
		cmpr6.lpm_representation = "UNSIGNED",
		cmpr6.lpm_width = 8,
		cmpr6.lpm_type = "lpm_compare";
	lpm_compare   cmpr7
	( 
	.aeb(wire_cmpr7_aeb),
	.agb(wire_cmpr7_agb),
	.ageb(),
	.alb(),
	.aleb(),
	.aneb(),
	.dataa(aligned_dataa_w[14:7]),
	.datab(aligned_datab_w[14:7])
	`ifdef FORMAL_VERIFICATION
	`else
	// synopsys translate_off
	`endif
	,
	.aclr(1'b0),
	.clken(1'b1),
	.clock(1'b0)
	`ifdef FORMAL_VERIFICATION
	`else
	// synopsys translate_on
	`endif
	);
	defparam
		cmpr7.lpm_representation = "UNSIGNED",
		cmpr7.lpm_width = 8,
		cmpr7.lpm_type = "lpm_compare";
	lpm_compare   cmpr8
	( 
	.aeb(wire_cmpr8_aeb),
	.agb(wire_cmpr8_agb),
	.ageb(),
	.alb(),
	.aleb(),
	.aneb(),
	.dataa(aligned_dataa_w[6:0]),
	.datab(aligned_datab_w[6:0])
	`ifdef FORMAL_VERIFICATION
	`else
	// synopsys translate_off
	`endif
	,
	.aclr(1'b0),
	.clken(1'b1),
	.clock(1'b0)
	`ifdef FORMAL_VERIFICATION
	`else
	// synopsys translate_on
	`endif
	);
	defparam
		cmpr8.lpm_representation = "UNSIGNED",
		cmpr8.lpm_width = 7,
		cmpr8.lpm_type = "lpm_compare";
	assign
		aclr = 1'b0,
		agb = out_agb_dffe3_wo,
		aligned_dataa_sign_adjusted_dffe2_wi = aligned_dataa_sign_adjusted_w,
		aligned_dataa_sign_adjusted_dffe2_wo = aligned_dataa_sign_adjusted_dffe2_wi,
		aligned_dataa_sign_adjusted_w = (aligned_dataa_sign_dffe1_wo & (~ input_dataa_zero_w)),
		aligned_dataa_sign_dffe1_wi = aligned_dataa_sign_w,
		aligned_dataa_sign_dffe1_wo = aligned_dataa_sign_dffe1_wi,
		aligned_dataa_sign_w = dataa[63],
		aligned_dataa_w = {dataa[62:0]},
		aligned_datab_sign_adjusted_dffe2_wi = aligned_datab_sign_adjusted_w,
		aligned_datab_sign_adjusted_dffe2_wo = aligned_datab_sign_adjusted_dffe2_wi,
		aligned_datab_sign_adjusted_w = (aligned_datab_sign_dffe1_wo & (~ input_datab_zero_w)),
		aligned_datab_sign_dffe1_wi = aligned_datab_sign_w,
		aligned_datab_sign_dffe1_wo = aligned_datab_sign_dffe1_wi,
		aligned_datab_sign_w = datab[63],
		aligned_datab_w = {datab[62:0]},
		both_inputs_zero = (input_dataa_zero_w & input_datab_zero_w),
		both_inputs_zero_dffe2_wi = both_inputs_zero,
		both_inputs_zero_dffe2_wo = both_inputs_zero_dffe2_wi,
		clk_en = 1'b1,
		exp_a_all_one_dffe1_wi = exp_a_all_one_w[10],
		exp_a_all_one_dffe1_wo = exp_a_all_one_dffe1_wi,
		exp_a_all_one_w = {(dataa[62] & exp_a_all_one_w[9]), (dataa[61] & exp_a_all_one_w[8]), (dataa[60] & exp_a_all_one_w[7]), (dataa[59] & exp_a_all_one_w[6]), (dataa[58] & exp_a_all_one_w[5]), (dataa[57] & exp_a_all_one_w[4]), (dataa[56] & exp_a_all_one_w[3]), (dataa[55] & exp_a_all_one_w[2]), (dataa[54] & exp_a_all_one_w[1]), (dataa[53] & exp_a_all_one_w[0]), dataa[52]},
		exp_a_not_zero_dffe1_wi = exp_a_not_zero_w[10],
		exp_a_not_zero_dffe1_wo = exp_a_not_zero_dffe1_wi,
		exp_a_not_zero_w = {(dataa[62] | exp_a_not_zero_w[9]), (dataa[61] | exp_a_not_zero_w[8]), (dataa[60] | exp_a_not_zero_w[7]), (dataa[59] | exp_a_not_zero_w[6]), (dataa[58] | exp_a_not_zero_w[5]), (dataa[57] | exp_a_not_zero_w[4]), (dataa[56] | exp_a_not_zero_w[3]), (dataa[55] | exp_a_not_zero_w[2]), (dataa[54] | exp_a_not_zero_w[1]), (dataa[53] | exp_a_not_zero_w[0]), dataa[52]},
		exp_aeb = {wire_cmpr8_aeb, wire_cmpr7_aeb, wire_cmpr6_aeb, wire_cmpr5_aeb, wire_cmpr4_aeb, wire_cmpr3_aeb, wire_cmpr2_aeb, wire_cmpr1_aeb},
		exp_aeb_tmp_w = {(exp_aeb[7] & exp_aeb_tmp_w[6]), (exp_aeb[6] & exp_aeb_tmp_w[5]), (exp_aeb[5] & exp_aeb_tmp_w[4]), (exp_aeb[4] & exp_aeb_tmp_w[3]), (exp_aeb[3] & exp_aeb_tmp_w[2]), (exp_aeb[2] & exp_aeb_tmp_w[1]), (exp_aeb[1] & exp_aeb_tmp_w[0]), exp_aeb[0]},
		exp_aeb_w = exp_aeb_tmp_w[7],
		exp_aeb_w_dffe2_wi = exp_aeb_w,
		exp_aeb_w_dffe2_wo = exp_aeb_w_dffe2_wi,
		exp_agb = {wire_cmpr8_agb, wire_cmpr7_agb, wire_cmpr6_agb, wire_cmpr5_agb, wire_cmpr4_agb, wire_cmpr3_agb, wire_cmpr2_agb, wire_cmpr1_agb},
		exp_agb_tmp_w = {(exp_agb_tmp_w[6] | exp_eq_gt_grp[7]), (exp_agb_tmp_w[5] | exp_eq_gt_grp[6]), (exp_agb_tmp_w[4] | exp_eq_gt_grp[5]), (exp_agb_tmp_w[3] | exp_eq_gt_grp[4]), (exp_agb_tmp_w[2] | exp_eq_gt_grp[3]), (exp_agb_tmp_w[1] | exp_eq_gt_grp[2]), (exp_agb_tmp_w[0] | exp_eq_gt_grp[1]), exp_eq_gt_grp[0]},
		exp_agb_w = exp_agb_tmp_w[7],
		exp_agb_w_dffe2_wi = exp_agb_w,
		exp_agb_w_dffe2_wo = exp_agb_w_dffe2_wi,
		exp_b_all_one_dffe1_wi = exp_b_all_one_w[10],
		exp_b_all_one_dffe1_wo = exp_b_all_one_dffe1_wi,
		exp_b_all_one_w = {(datab[62] & exp_b_all_one_w[9]), (datab[61] & exp_b_all_one_w[8]), (datab[60] & exp_b_all_one_w[7]), (datab[59] & exp_b_all_one_w[6]), (datab[58] & exp_b_all_one_w[5]), (datab[57] & exp_b_all_one_w[4]), (datab[56] & exp_b_all_one_w[3]), (datab[55] & exp_b_all_one_w[2]), (datab[54] & exp_b_all_one_w[1]), (datab[53] & exp_b_all_one_w[0]), datab[52]},
		exp_b_not_zero_dffe1_wi = exp_b_not_zero_w[10],
		exp_b_not_zero_dffe1_wo = exp_b_not_zero_dffe1_wi,
		exp_b_not_zero_w = {(datab[62] | exp_b_not_zero_w[9]), (datab[61] | exp_b_not_zero_w[8]), (datab[60] | exp_b_not_zero_w[7]), (datab[59] | exp_b_not_zero_w[6]), (datab[58] | exp_b_not_zero_w[5]), (datab[57] | exp_b_not_zero_w[4]), (datab[56] | exp_b_not_zero_w[3]), (datab[55] | exp_b_not_zero_w[2]), (datab[54] | exp_b_not_zero_w[1]), (datab[53] | exp_b_not_zero_w[0]), datab[52]},
		exp_eq_grp = {(exp_eq_grp[5] & exp_aeb[6]), (exp_eq_grp[4] & exp_aeb[5]), (exp_eq_grp[3] & exp_aeb[4]), (exp_eq_grp[2] & exp_aeb[3]), (exp_eq_grp[1] & exp_aeb[2]), (exp_eq_grp[0] & exp_aeb[1]), exp_aeb[0]},
		exp_eq_gt_grp = {(exp_eq_grp[6] & exp_agb[7]), (exp_eq_grp[5] & exp_agb[6]), (exp_eq_grp[4] & exp_agb[5]), (exp_eq_grp[3] & exp_agb[4]), (exp_eq_grp[2] & exp_agb[3]), (exp_eq_grp[1] & exp_agb[2]), (exp_eq_grp[0] & exp_agb[1]), exp_agb[0]},
		flip_outputs_dffe2_wi = flip_outputs_w,
		flip_outputs_dffe2_wo = flip_outputs_dffe2_wi,
		flip_outputs_w = (aligned_dataa_sign_adjusted_w & aligned_datab_sign_adjusted_w),
		input_dataa_nan_dffe2_wi = input_dataa_nan_w,
		input_dataa_nan_dffe2_wo = input_dataa_nan_dffe2_wi,
		input_dataa_nan_w = (exp_a_all_one_dffe1_wo & man_a_not_zero_merge_w[4]),
		input_dataa_zero_w = (~ exp_a_not_zero_dffe1_wo),
		input_datab_nan_dffe2_wi = input_datab_nan_w,
		input_datab_nan_dffe2_wo = input_datab_nan_dffe2_wi,
		input_datab_nan_w = (exp_b_all_one_dffe1_wo & man_b_not_zero_merge_w[4]),
		input_datab_zero_w = (~ exp_b_not_zero_dffe1_wo),
		man_a_not_zero_dffe1_wi = {man_a_not_zero_w[51], man_a_not_zero_w[47], man_a_not_zero_w[35], man_a_not_zero_w[23], man_a_not_zero_w[11]},
		man_a_not_zero_dffe1_wo = man_a_not_zero_dffe1_wi,
		man_a_not_zero_merge_w = {(man_a_not_zero_dffe1_wo[4] | man_a_not_zero_merge_w[3]), (man_a_not_zero_dffe1_wo[3] | man_a_not_zero_merge_w[2]), (man_a_not_zero_dffe1_wo[2] | man_a_not_zero_merge_w[1]), (man_a_not_zero_dffe1_wo[1] | man_a_not_zero_merge_w[0]), man_a_not_zero_dffe1_wo[0]},
		man_a_not_zero_w = {(dataa[51] | man_a_not_zero_w[50]), (dataa[50] | man_a_not_zero_w[49]), (dataa[49] | man_a_not_zero_w[48]), dataa[48], (dataa[47] | man_a_not_zero_w[46]), (dataa[46] | man_a_not_zero_w[45]), (dataa[45] | man_a_not_zero_w[44]), (dataa[44] | man_a_not_zero_w[43]), (dataa[43] | man_a_not_zero_w[42]), (dataa[42] | man_a_not_zero_w[41]), (dataa[41] | man_a_not_zero_w[40]), (dataa[40] | man_a_not_zero_w[39]), (dataa[39] | man_a_not_zero_w[38]), (dataa[38] | man_a_not_zero_w[37]), (dataa[37] | man_a_not_zero_w[36]), dataa[36], (dataa[35] | man_a_not_zero_w[34]), (dataa[34] | man_a_not_zero_w[33]), (dataa[33] | man_a_not_zero_w[32]), (dataa[32] | man_a_not_zero_w[31]), (dataa[31] | man_a_not_zero_w[30]), (dataa[30] | man_a_not_zero_w[29]), (dataa[29] | man_a_not_zero_w[28]), (dataa[28] | man_a_not_zero_w[27]), (dataa[27] | man_a_not_zero_w[26]), (dataa[26] | man_a_not_zero_w[25]), (dataa[25] | man_a_not_zero_w[24]), dataa[24], (dataa[23] | man_a_not_zero_w[22]), (dataa[22] | man_a_not_zero_w[21]), (dataa[21] | man_a_not_zero_w[20]), (dataa[20] | man_a_not_zero_w[19]), (dataa[19] | man_a_not_zero_w[18]), (dataa[18] | man_a_not_zero_w[17]), (dataa[17] | man_a_not_zero_w[16]), (dataa[16] | man_a_not_zero_w[15]), (dataa[15] | man_a_not_zero_w[14]), (dataa[14] | man_a_not_zero_w[13]), (dataa[13] | man_a_not_zero_w[12]), dataa[12], (dataa[11] | man_a_not_zero_w[10]), (dataa[10] | man_a_not_zero_w[9]), (dataa[9] | man_a_not_zero_w[8]), (dataa[8] | man_a_not_zero_w[7]), (dataa[7] | man_a_not_zero_w[6]), (dataa[6] | man_a_not_zero_w[5]), (dataa[5] | man_a_not_zero_w[4]), (dataa[4] | man_a_not_zero_w[3]), (dataa[3] | man_a_not_zero_w[2]), (dataa[2] | man_a_not_zero_w[1]), (dataa[1] | man_a_not_zero_w[0]), dataa[0]},
		man_b_not_zero_dffe1_wi = {man_b_not_zero_w[51], man_b_not_zero_w[47], man_b_not_zero_w[35], man_b_not_zero_w[23], man_b_not_zero_w[11]},
		man_b_not_zero_dffe1_wo = man_b_not_zero_dffe1_wi,
		man_b_not_zero_merge_w = {(man_b_not_zero_dffe1_wo[4] | man_b_not_zero_merge_w[3]), (man_b_not_zero_dffe1_wo[3] | man_b_not_zero_merge_w[2]), (man_b_not_zero_dffe1_wo[2] | man_b_not_zero_merge_w[1]), (man_b_not_zero_dffe1_wo[1] | man_b_not_zero_merge_w[0]), man_b_not_zero_dffe1_wo[0]},
		man_b_not_zero_w = {(datab[51] | man_b_not_zero_w[50]), (datab[50] | man_b_not_zero_w[49]), (datab[49] | man_b_not_zero_w[48]), datab[48], (datab[47] | man_b_not_zero_w[46]), (datab[46] | man_b_not_zero_w[45]), (datab[45] | man_b_not_zero_w[44]), (datab[44] | man_b_not_zero_w[43]), (datab[43] | man_b_not_zero_w[42]), (datab[42] | man_b_not_zero_w[41]), (datab[41] | man_b_not_zero_w[40]), (datab[40] | man_b_not_zero_w[39]), (datab[39] | man_b_not_zero_w[38]), (datab[38] | man_b_not_zero_w[37]), (datab[37] | man_b_not_zero_w[36]), datab[36], (datab[35] | man_b_not_zero_w[34]), (datab[34] | man_b_not_zero_w[33]), (datab[33] | man_b_not_zero_w[32]), (datab[32] | man_b_not_zero_w[31]), (datab[31] | man_b_not_zero_w[30]), (datab[30] | man_b_not_zero_w[29]), (datab[29] | man_b_not_zero_w[28]), (datab[28] | man_b_not_zero_w[27]), (datab[27] | man_b_not_zero_w[26]), (datab[26] | man_b_not_zero_w[25]), (datab[25] | man_b_not_zero_w[24]), datab[24], (datab[23] | man_b_not_zero_w[22]), (datab[22] | man_b_not_zero_w[21]), (datab[21] | man_b_not_zero_w[20]), (datab[20] | man_b_not_zero_w[19]), (datab[19] | man_b_not_zero_w[18]), (datab[18] | man_b_not_zero_w[17]), (datab[17] | man_b_not_zero_w[16]), (datab[16] | man_b_not_zero_w[15]), (datab[15] | man_b_not_zero_w[14]), (datab[14] | man_b_not_zero_w[13]), (datab[13] | man_b_not_zero_w[12]), datab[12], (datab[11] | man_b_not_zero_w[10]), (datab[10] | man_b_not_zero_w[9]), (datab[9] | man_b_not_zero_w[8]), (datab[8] | man_b_not_zero_w[7]), (datab[7] | man_b_not_zero_w[6]), (datab[6] | man_b_not_zero_w[5]), (datab[5] | man_b_not_zero_w[4]), (datab[4] | man_b_not_zero_w[3]), (datab[3] | man_b_not_zero_w[2]), (datab[2] | man_b_not_zero_w[1]), (datab[1] | man_b_not_zero_w[0]), datab[0]},
		out_aeb_w = ((((~ (aligned_dataa_sign_adjusted_dffe2_wo ^ aligned_datab_sign_adjusted_dffe2_wo)) & exp_aeb_w_dffe2_wo) | both_inputs_zero_dffe2_wo) & (~ out_unordered_w)),
		out_agb_dffe3_wi = out_agb_w,
		out_agb_dffe3_wo = out_agb_w_dffe3,
		out_agb_w = (((((~ aligned_dataa_sign_adjusted_dffe2_wo) & aligned_datab_sign_adjusted_dffe2_wo) | ((exp_agb_w_dffe2_wo & (~ aligned_dataa_sign_adjusted_dffe2_wo)) & (~ both_inputs_zero_dffe2_wo))) | ((flip_outputs_dffe2_wo & (~ exp_agb_w_dffe2_wo)) & (~ out_aeb_w))) & (~ out_unordered_w)),
		out_unordered_w = (input_dataa_nan_dffe2_wo | input_datab_nan_dffe2_wo);
endmodule //fp_compare_v1_altfp_compare_t4b
//VALID FILE


// synopsys translate_off
`timescale 1 ps / 1 ps
// synopsys translate_on
module fp_compare_v1 (
	clock,
	dataa,
	datab,
	agb);

	input	  clock;
	input	[63:0]  dataa;
	input	[63:0]  datab;
	output	  agb;

	wire  sub_wire0;
	wire  agb = sub_wire0;

	fp_compare_v1_altfp_compare_t4b	fp_compare_v1_altfp_compare_t4b_component (
				.dataa (dataa),
				.datab (datab),
				.clock (clock),
				.agb (sub_wire0));

endmodule

// ============================================================
// CNX file retrieval info
// ============================================================
// Retrieval info: PRIVATE: FPM_FORMAT NUMERIC "1"
// Retrieval info: PRIVATE: INTENDED_DEVICE_FAMILY STRING "Cyclone II"
// Retrieval info: PRIVATE: SYNTH_WRAPPER_GEN_POSTFIX STRING "0"
// Retrieval info: LIBRARY: altera_mf altera_mf.altera_mf_components.all
// Retrieval info: CONSTANT: INTENDED_DEVICE_FAMILY STRING "Cyclone II"
// Retrieval info: CONSTANT: PIPELINE NUMERIC "1"
// Retrieval info: CONSTANT: WIDTH_EXP NUMERIC "11"
// Retrieval info: CONSTANT: WIDTH_MAN NUMERIC "52"
// Retrieval info: USED_PORT: agb 0 0 0 0 OUTPUT NODEFVAL "agb"
// Retrieval info: USED_PORT: clock 0 0 0 0 INPUT NODEFVAL "clock"
// Retrieval info: USED_PORT: dataa 0 0 64 0 INPUT NODEFVAL "dataa[63..0]"
// Retrieval info: USED_PORT: datab 0 0 64 0 INPUT NODEFVAL "datab[63..0]"
// Retrieval info: CONNECT: @dataa 0 0 64 0 dataa 0 0 64 0
// Retrieval info: CONNECT: @clock 0 0 0 0 clock 0 0 0 0
// Retrieval info: CONNECT: agb 0 0 0 0 @agb 0 0 0 0
// Retrieval info: CONNECT: @datab 0 0 64 0 datab 0 0 64 0
// Retrieval info: GEN_FILE: TYPE_NORMAL fp_compare_v1.v TRUE FALSE
// Retrieval info: GEN_FILE: TYPE_NORMAL fp_compare_v1.inc FALSE FALSE
// Retrieval info: GEN_FILE: TYPE_NORMAL fp_compare_v1.cmp FALSE FALSE
// Retrieval info: GEN_FILE: TYPE_NORMAL fp_compare_v1.bsf FALSE FALSE
// Retrieval info: GEN_FILE: TYPE_NORMAL fp_compare_v1_inst.v TRUE FALSE
// Retrieval info: GEN_FILE: TYPE_NORMAL fp_compare_v1_bb.v FALSE FALSE
// Retrieval info: LIB_FILE: lpm
