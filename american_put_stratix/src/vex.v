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
	chan4,
	chan5,
	chan6,
	chan7,
	chan8,
	chan9,
	chan10,
	chan11,
	chan12,
	chan13,
	chan14,
	chan15,
	chan16,
	chan17,
	chan18,
	chan19,
	chan20,
	chan21,
	chan22,
	chan23,
	chan24,
	chan25,
	chan26,
	chan27,
	chan28,
	chan29,
	chan30,
	chan31,
	done_s1,
 	vexaddr
);
	
input  clk_slow;
input  clk_fast;
input  nrst;
input  start_s1;
input  start_s2;
input  [13:0] vexaddr;
input  [63:0] log_lambda_up;
input  [63:0] log_lambda_down;
input  [63:0] K_over_S;
output [63:0] chan0;
output [63:0] chan1;
output [63:0] chan2;
output [63:0] chan3;
output [63:0] chan4;
output [63:0] chan5;
output [63:0] chan6;
output [63:0] chan7;
output [63:0] chan8;
output [63:0] chan9;
output [63:0] chan10;
output [63:0] chan11;
output [63:0] chan12;
output [63:0] chan13;
output [63:0] chan14;
output [63:0] chan15;
output [63:0] chan16;
output [63:0] chan17;
output [63:0] chan18;
output [63:0] chan19;
output [63:0] chan20;
output [63:0] chan21;
output [63:0] chan22;
output [63:0] chan23;
output [63:0] chan24;
output [63:0] chan25;
output [63:0] chan26;
output [63:0] chan27;
output [63:0] chan28;
output [63:0] chan29;
output [63:0] chan30;
output [63:0] chan31;
output done_s1;

//---------------------------------------------------------------------//
// Wires
//---------------------------------------------------------------------//
wire  [63:0] v_ex;
wire  [10:0] wraddr;
wire  [63:0] wren;

wire  [63:0] m0_out;
wire  [63:0] m1_out;
wire  [63:0] m2_out;
wire  [63:0] m3_out;
wire  [63:0] m4_out;
wire  [63:0] m5_out;
wire  [63:0] m6_out;
wire  [63:0] m7_out;
wire  [63:0] m8_out;
wire  [63:0] m9_out;
wire  [63:0] m10_out;
wire  [63:0] m11_out;
wire  [63:0] m12_out;
wire  [63:0] m13_out;
wire  [63:0] m14_out;
wire  [63:0] m15_out;
wire  [63:0] m16_out;
wire  [63:0] m17_out;
wire  [63:0] m18_out;
wire  [63:0] m19_out;
wire  [63:0] m20_out;
wire  [63:0] m21_out;
wire  [63:0] m22_out;
wire  [63:0] m23_out;
wire  [63:0] m24_out;
wire  [63:0] m25_out;
wire  [63:0] m26_out;
wire  [63:0] m27_out;
wire  [63:0] m28_out;
wire  [63:0] m29_out;
wire  [63:0] m30_out;
wire  [63:0] m31_out;
wire  [63:0] m32_out;
wire  [63:0] m33_out;
wire  [63:0] m34_out;
wire  [63:0] m35_out;
wire  [63:0] m36_out;
wire  [63:0] m37_out;
wire  [63:0] m38_out;
wire  [63:0] m39_out;
wire  [63:0] m40_out;
wire  [63:0] m41_out;
wire  [63:0] m42_out;
wire  [63:0] m43_out;
wire  [63:0] m44_out;
wire  [63:0] m45_out;
wire  [63:0] m46_out;
wire  [63:0] m47_out;
wire  [63:0] m48_out;
wire  [63:0] m49_out;
wire  [63:0] m50_out;
wire  [63:0] m51_out;
wire  [63:0] m52_out;
wire  [63:0] m53_out;
wire  [63:0] m54_out;
wire  [63:0] m55_out;
wire  [63:0] m56_out;
wire  [63:0] m57_out;
wire  [63:0] m58_out;
wire  [63:0] m59_out;
wire  [63:0] m60_out;
wire  [63:0] m61_out;
wire  [63:0] m62_out;
wire  [63:0] m63_out;

wire [63:0] bank0_out;
wire [63:0] bank1_out;
wire [63:0] bank2_out;
wire [63:0] bank3_out;
wire [63:0] bank4_out;
wire [63:0] bank5_out;
wire [63:0] bank6_out;
wire [63:0] bank7_out;
wire [63:0] bank8_out;
wire [63:0] bank9_out;
wire [63:0] bank10_out;
wire [63:0] bank11_out;
wire [63:0] bank12_out;
wire [63:0] bank13_out;
wire [63:0] bank14_out;
wire [63:0] bank15_out;
wire [63:0] bank16_out;
wire [63:0] bank17_out;
wire [63:0] bank18_out;
wire [63:0] bank19_out;
wire [63:0] bank20_out;
wire [63:0] bank21_out;
wire [63:0] bank22_out;
wire [63:0] bank23_out;
wire [63:0] bank24_out;
wire [63:0] bank25_out;
wire [63:0] bank26_out;
wire [63:0] bank27_out;
wire [63:0] bank28_out;
wire [63:0] bank29_out;
wire [63:0] bank30_out;
wire [63:0] bank31_out;

wire [63:0] chan0;
wire [63:0] chan1;
wire [63:0] chan2;
wire [63:0] chan3;
wire [63:0] chan4;
wire [63:0] chan5;
wire [63:0] chan6;
wire [63:0] chan7;
wire [63:0] chan8;
wire [63:0] chan9;
wire [63:0] chan10;
wire [63:0] chan11;
wire [63:0] chan12;
wire [63:0] chan13;
wire [63:0] chan14;
wire [63:0] chan15;
wire [63:0] chan16;
wire [63:0] chan17;
wire [63:0] chan18;
wire [63:0] chan19;
wire [63:0] chan20;
wire [63:0] chan21;
wire [63:0] chan22;
wire [63:0] chan23;
wire [63:0] chan24;
wire [63:0] chan25;
wire [63:0] chan26;
wire [63:0] chan27;
wire [63:0] chan28;
wire [63:0] chan29;
wire [63:0] chan30;
wire [63:0] chan31;

wire [10:0] bank0_addr;
wire [10:0] bank1_addr;
wire [10:0] bank2_addr;
wire [10:0] bank3_addr;
wire [10:0] bank4_addr;
wire [10:0] bank5_addr;
wire [10:0] bank6_addr;
wire [10:0] bank7_addr;
wire [10:0] bank8_addr;
wire [10:0] bank9_addr;
wire [10:0] bank10_addr;
wire [10:0] bank11_addr;
wire [10:0] bank12_addr;
wire [10:0] bank13_addr;
wire [10:0] bank14_addr;
wire [10:0] bank15_addr;
wire [10:0] bank16_addr;
wire [10:0] bank17_addr;
wire [10:0] bank18_addr;
wire [10:0] bank19_addr;
wire [10:0] bank20_addr;
wire [10:0] bank21_addr;
wire [10:0] bank22_addr;
wire [10:0] bank23_addr;
wire [10:0] bank24_addr;
wire [10:0] bank25_addr;
wire [10:0] bank26_addr;
wire [10:0] bank27_addr;
wire [10:0] bank28_addr;
wire [10:0] bank29_addr;
wire [10:0] bank30_addr;
wire [10:0] bank31_addr;

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
  .bank4_addr(bank4_addr),
  .bank5_addr(bank5_addr),
  .bank6_addr(bank6_addr),
  .bank7_addr(bank7_addr),
  .bank8_addr(bank8_addr),
  .bank9_addr(bank9_addr),
  .bank10_addr(bank10_addr),
  .bank11_addr(bank11_addr),
  .bank12_addr(bank12_addr),
  .bank13_addr(bank13_addr),
  .bank14_addr(bank14_addr),
  .bank15_addr(bank15_addr),
  .bank16_addr(bank16_addr),
  .bank17_addr(bank17_addr),
  .bank18_addr(bank18_addr),
  .bank19_addr(bank19_addr),
  .bank20_addr(bank20_addr),
  .bank21_addr(bank21_addr),
  .bank22_addr(bank22_addr),
  .bank23_addr(bank23_addr),
  .bank24_addr(bank24_addr),
  .bank25_addr(bank25_addr),
  .bank26_addr(bank26_addr),
  .bank27_addr(bank27_addr),
  .bank28_addr(bank28_addr),
  .bank29_addr(bank29_addr),
  .bank30_addr(bank30_addr),
  .bank31_addr(bank31_addr),
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

mem_1k	m8 (
  .data(v_ex),
  .rdaddress(bank4_addr),
  .rdclock(clk_fast),
  .wraddress(wraddr),
  .wrclock(clk_slow),
  .wren(wren[8]),
  .q(m8_out)
);

mem_1k	m9 (
  .data(v_ex),
  .rdaddress(bank3_addr),
  .rdclock(clk_fast),
  .wraddress(wraddr),
  .wrclock(clk_slow),
  .wren(wren[9]),
  .q(m9_out)
);


mem_1k	m10 (
  .data(v_ex),
  .rdaddress(bank0_addr),
  .rdclock(clk_fast),
  .wraddress(wraddr),
  .wrclock(clk_slow),
  .wren(wren[10]),
  .q(m10_out)
);


mem_1k	m11 (
  .data(v_ex),
  .rdaddress(bank0_addr),
  .rdclock(clk_fast),
  .wraddress(wraddr),
  .wrclock(clk_slow),
  .wren(wren[11]),
  .q(m11_out)
);

mem_1k	m12 (
  .data(v_ex),
  .rdaddress(bank1_addr),
  .rdclock(clk_fast),
  .wraddress(wraddr),
  .wrclock(clk_slow),
  .wren(wren[12]),
  .q(m12_out)
);

mem_1k	m13 (
  .data(v_ex),
  .rdaddress(bank1_addr),
  .rdclock(clk_fast),
  .wraddress(wraddr),
  .wrclock(clk_slow),
  .wren(wren[13]),
  .q(m13_out)
);

mem_1k	m14 (
  .data(v_ex),
  .rdaddress(bank2_addr),
  .rdclock(clk_fast),
  .wraddress(wraddr),
  .wrclock(clk_slow),
  .wren(wren[14]),
  .q(m14_out)
);

mem_1k	m15 (
  .data(v_ex),
  .rdaddress(bank2_addr),
  .rdclock(clk_fast),
  .wraddress(wraddr),
  .wrclock(clk_slow),
  .wren(wren[15]),
  .q(m15_out)
);

mem_1k	m16 (
  .data(v_ex),
  .rdaddress(bank3_addr),
  .rdclock(clk_fast),
  .wraddress(wraddr),
  .wrclock(clk_slow),
  .wren(wren[16]),
  .q(m16_out)
);

mem_1k	m17 (
  .data(v_ex),
  .rdaddress(bank3_addr),
  .rdclock(clk_fast),
  .wraddress(wraddr),
  .wrclock(clk_slow),
  .wren(wren[17]),
  .q(m17_out)
);

mem_1k	m18 (
  .data(v_ex),
  .rdaddress(bank4_addr),
  .rdclock(clk_fast),
  .wraddress(wraddr),
  .wrclock(clk_slow),
  .wren(wren[18]),
  .q(m18_out)
);

mem_1k	m19 (
  .data(v_ex),
  .rdaddress(bank3_addr),
  .rdclock(clk_fast),
  .wraddress(wraddr),
  .wrclock(clk_slow),
  .wren(wren[19]),
  .q(m19_out)
);


mem_1k	m20 (
  .data(v_ex),
  .rdaddress(bank0_addr),
  .rdclock(clk_fast),
  .wraddress(wraddr),
  .wrclock(clk_slow),
  .wren(wren[20]),
  .q(m20_out)
);


mem_1k	m21 (
  .data(v_ex),
  .rdaddress(bank0_addr),
  .rdclock(clk_fast),
  .wraddress(wraddr),
  .wrclock(clk_slow),
  .wren(wren[21]),
  .q(m21_out)
);

mem_1k	m22 (
  .data(v_ex),
  .rdaddress(bank1_addr),
  .rdclock(clk_fast),
  .wraddress(wraddr),
  .wrclock(clk_slow),
  .wren(wren[22]),
  .q(m22_out)
);

mem_1k	m23 (
  .data(v_ex),
  .rdaddress(bank1_addr),
  .rdclock(clk_fast),
  .wraddress(wraddr),
  .wrclock(clk_slow),
  .wren(wren[23]),
  .q(m23_out)
);

mem_1k	m24 (
  .data(v_ex),
  .rdaddress(bank2_addr),
  .rdclock(clk_fast),
  .wraddress(wraddr),
  .wrclock(clk_slow),
  .wren(wren[24]),
  .q(m24_out)
);

mem_1k	m25 (
  .data(v_ex),
  .rdaddress(bank2_addr),
  .rdclock(clk_fast),
  .wraddress(wraddr),
  .wrclock(clk_slow),
  .wren(wren[25]),
  .q(m25_out)
);

mem_1k	m26 (
  .data(v_ex),
  .rdaddress(bank3_addr),
  .rdclock(clk_fast),
  .wraddress(wraddr),
  .wrclock(clk_slow),
  .wren(wren[26]),
  .q(m26_out)
);

mem_1k	m27 (
  .data(v_ex),
  .rdaddress(bank3_addr),
  .rdclock(clk_fast),
  .wraddress(wraddr),
  .wrclock(clk_slow),
  .wren(wren[27]),
  .q(m27_out)
);

mem_1k	m28 (
  .data(v_ex),
  .rdaddress(bank4_addr),
  .rdclock(clk_fast),
  .wraddress(wraddr),
  .wrclock(clk_slow),
  .wren(wren[28]),
  .q(m28_out)
);

mem_1k	m29 (
  .data(v_ex),
  .rdaddress(bank3_addr),
  .rdclock(clk_fast),
  .wraddress(wraddr),
  .wrclock(clk_slow),
  .wren(wren[29]),
  .q(m29_out)
);


mem_1k	m30 (
  .data(v_ex),
  .rdaddress(bank0_addr),
  .rdclock(clk_fast),
  .wraddress(wraddr),
  .wrclock(clk_slow),
  .wren(wren[30]),
  .q(m30_out)
);


mem_1k	m31 (
  .data(v_ex),
  .rdaddress(bank0_addr),
  .rdclock(clk_fast),
  .wraddress(wraddr),
  .wrclock(clk_slow),
  .wren(wren[31]),
  .q(m31_out)
);

mem_1k	m32 (
  .data(v_ex),
  .rdaddress(bank1_addr),
  .rdclock(clk_fast),
  .wraddress(wraddr),
  .wrclock(clk_slow),
  .wren(wren[32]),
  .q(m32_out)
);

mem_1k	m33 (
  .data(v_ex),
  .rdaddress(bank1_addr),
  .rdclock(clk_fast),
  .wraddress(wraddr),
  .wrclock(clk_slow),
  .wren(wren[33]),
  .q(m33_out)
);

mem_1k	m34 (
  .data(v_ex),
  .rdaddress(bank2_addr),
  .rdclock(clk_fast),
  .wraddress(wraddr),
  .wrclock(clk_slow),
  .wren(wren[34]),
  .q(m34_out)
);

mem_1k	m35 (
  .data(v_ex),
  .rdaddress(bank2_addr),
  .rdclock(clk_fast),
  .wraddress(wraddr),
  .wrclock(clk_slow),
  .wren(wren[35]),
  .q(m35_out)
);

mem_1k	m36 (
  .data(v_ex),
  .rdaddress(bank3_addr),
  .rdclock(clk_fast),
  .wraddress(wraddr),
  .wrclock(clk_slow),
  .wren(wren[36]),
  .q(m36_out)
);

mem_1k	m37 (
  .data(v_ex),
  .rdaddress(bank3_addr),
  .rdclock(clk_fast),
  .wraddress(wraddr),
  .wrclock(clk_slow),
  .wren(wren[37]),
  .q(m37_out)
);

mem_1k	m38 (
  .data(v_ex),
  .rdaddress(bank4_addr),
  .rdclock(clk_fast),
  .wraddress(wraddr),
  .wrclock(clk_slow),
  .wren(wren[38]),
  .q(m38_out)
);

mem_1k	m39 (
  .data(v_ex),
  .rdaddress(bank3_addr),
  .rdclock(clk_fast),
  .wraddress(wraddr),
  .wrclock(clk_slow),
  .wren(wren[39]),
  .q(m39_out)
);


mem_1k	m40 (
  .data(v_ex),
  .rdaddress(bank0_addr),
  .rdclock(clk_fast),
  .wraddress(wraddr),
  .wrclock(clk_slow),
  .wren(wren[40]),
  .q(m40_out)
);


mem_1k	m41 (
  .data(v_ex),
  .rdaddress(bank0_addr),
  .rdclock(clk_fast),
  .wraddress(wraddr),
  .wrclock(clk_slow),
  .wren(wren[41]),
  .q(m41_out)
);

mem_1k	m42 (
  .data(v_ex),
  .rdaddress(bank1_addr),
  .rdclock(clk_fast),
  .wraddress(wraddr),
  .wrclock(clk_slow),
  .wren(wren[42]),
  .q(m42_out)
);

mem_1k	m43 (
  .data(v_ex),
  .rdaddress(bank1_addr),
  .rdclock(clk_fast),
  .wraddress(wraddr),
  .wrclock(clk_slow),
  .wren(wren[43]),
  .q(m43_out)
);

mem_1k	m44 (
  .data(v_ex),
  .rdaddress(bank2_addr),
  .rdclock(clk_fast),
  .wraddress(wraddr),
  .wrclock(clk_slow),
  .wren(wren[44]),
  .q(m44_out)
);

mem_1k	m45 (
  .data(v_ex),
  .rdaddress(bank2_addr),
  .rdclock(clk_fast),
  .wraddress(wraddr),
  .wrclock(clk_slow),
  .wren(wren[45]),
  .q(m45_out)
);

mem_1k	m46 (
  .data(v_ex),
  .rdaddress(bank3_addr),
  .rdclock(clk_fast),
  .wraddress(wraddr),
  .wrclock(clk_slow),
  .wren(wren[46]),
  .q(m46_out)
);

mem_1k	m47 (
  .data(v_ex),
  .rdaddress(bank3_addr),
  .rdclock(clk_fast),
  .wraddress(wraddr),
  .wrclock(clk_slow),
  .wren(wren[47]),
  .q(m47_out)
);

mem_1k	m48 (
  .data(v_ex),
  .rdaddress(bank4_addr),
  .rdclock(clk_fast),
  .wraddress(wraddr),
  .wrclock(clk_slow),
  .wren(wren[48]),
  .q(m48_out)
);

mem_1k	m49 (
  .data(v_ex),
  .rdaddress(bank3_addr),
  .rdclock(clk_fast),
  .wraddress(wraddr),
  .wrclock(clk_slow),
  .wren(wren[49]),
  .q(m49_out)
);


mem_1k	m50 (
  .data(v_ex),
  .rdaddress(bank0_addr),
  .rdclock(clk_fast),
  .wraddress(wraddr),
  .wrclock(clk_slow),
  .wren(wren[50]),
  .q(m50_out)
);


mem_1k	m51 (
  .data(v_ex),
  .rdaddress(bank0_addr),
  .rdclock(clk_fast),
  .wraddress(wraddr),
  .wrclock(clk_slow),
  .wren(wren[51]),
  .q(m51_out)
);

mem_1k	m52 (
  .data(v_ex),
  .rdaddress(bank1_addr),
  .rdclock(clk_fast),
  .wraddress(wraddr),
  .wrclock(clk_slow),
  .wren(wren[52]),
  .q(m52_out)
);

mem_1k	m53 (
  .data(v_ex),
  .rdaddress(bank1_addr),
  .rdclock(clk_fast),
  .wraddress(wraddr),
  .wrclock(clk_slow),
  .wren(wren[53]),
  .q(m53_out)
);

mem_1k	m54 (
  .data(v_ex),
  .rdaddress(bank2_addr),
  .rdclock(clk_fast),
  .wraddress(wraddr),
  .wrclock(clk_slow),
  .wren(wren[54]),
  .q(m54_out)
);

mem_1k	m55 (
  .data(v_ex),
  .rdaddress(bank2_addr),
  .rdclock(clk_fast),
  .wraddress(wraddr),
  .wrclock(clk_slow),
  .wren(wren[55]),
  .q(m55_out)
);

mem_1k	m56 (
  .data(v_ex),
  .rdaddress(bank3_addr),
  .rdclock(clk_fast),
  .wraddress(wraddr),
  .wrclock(clk_slow),
  .wren(wren[56]),
  .q(m56_out)
);

mem_1k	m57 (
  .data(v_ex),
  .rdaddress(bank3_addr),
  .rdclock(clk_fast),
  .wraddress(wraddr),
  .wrclock(clk_slow),
  .wren(wren[57]),
  .q(m57_out)
);

mem_1k	m58 (
  .data(v_ex),
  .rdaddress(bank4_addr),
  .rdclock(clk_fast),
  .wraddress(wraddr),
  .wrclock(clk_slow),
  .wren(wren[58]),
  .q(m58_out)
);

mem_1k	m59 (
  .data(v_ex),
  .rdaddress(bank3_addr),
  .rdclock(clk_fast),
  .wraddress(wraddr),
  .wrclock(clk_slow),
  .wren(wren[59]),
  .q(m59_out)
);


mem_1k	m60 (
  .data(v_ex),
  .rdaddress(bank0_addr),
  .rdclock(clk_fast),
  .wraddress(wraddr),
  .wrclock(clk_slow),
  .wren(wren[60]),
  .q(m60_out)
);


mem_1k	m61 (
  .data(v_ex),
  .rdaddress(bank0_addr),
  .rdclock(clk_fast),
  .wraddress(wraddr),
  .wrclock(clk_slow),
  .wren(wren[61]),
  .q(m61_out)
);

mem_1k	m62 (
  .data(v_ex),
  .rdaddress(bank1_addr),
  .rdclock(clk_fast),
  .wraddress(wraddr),
  .wrclock(clk_slow),
  .wren(wren[62]),
  .q(m62_out)
);

mem_1k	m63 (
  .data(v_ex),
  .rdaddress(bank1_addr),
  .rdclock(clk_fast),
  .wraddress(wraddr),
  .wrclock(clk_slow),
  .wren(wren[63]),
  .q(m63_out)
);



//---------------------------------------------------------------------//
// Control Logic
//---------------------------------------------------------------------//

// Mux for even vs. odd memory bank.
assign bank0_out = odd ? m1_out : m0_out;
assign bank1_out = odd ? m3_out : m2_out;
assign bank2_out = odd ? m5_out : m4_out;
assign bank3_out = odd ? m7_out : m6_out;
assign bank4_out = odd ? m9_out : m8_out;
assign bank5_out = odd ? m11_out : m10_out;
assign bank6_out = odd ? m13_out : m12_out;
assign bank7_out = odd ? m15_out : m14_out;
assign bank8_out = odd ? m17_out : m16_out;
assign bank9_out = odd ? m19_out : m18_out;
assign bank10_out = odd ? m21_out : m20_out;
assign bank11_out = odd ? m23_out : m22_out;
assign bank12_out = odd ? m25_out : m24_out;
assign bank13_out = odd ? m27_out : m26_out;
assign bank14_out = odd ? m29_out : m28_out;
assign bank15_out = odd ? m31_out : m30_out;
assign bank16_out = odd ? m33_out : m32_out;
assign bank17_out = odd ? m35_out : m34_out;
assign bank18_out = odd ? m37_out : m36_out;
assign bank19_out = odd ? m39_out : m38_out;
assign bank20_out = odd ? m41_out : m40_out;
assign bank21_out = odd ? m43_out : m42_out;
assign bank22_out = odd ? m45_out : m44_out;
assign bank23_out = odd ? m47_out : m46_out;
assign bank24_out = odd ? m49_out : m48_out;
assign bank25_out = odd ? m51_out : m50_out;
assign bank26_out = odd ? m53_out : m52_out;
assign bank27_out = odd ? m55_out : m54_out;
assign bank28_out = odd ? m57_out : m56_out;
assign bank29_out = odd ? m59_out : m58_out;
assign bank30_out = odd ? m61_out : m60_out;
assign bank31_out = odd ? m63_out : m62_out;

/// FROM HERE DOWN IS INCORRECT!!!

// Mux for bank shifting based on select state.
assign chan0 = sel[1]?(sel[0]?bank3_out:bank2_out):(sel[0]?bank1_out:bank0_out);
assign chan1 = sel[1]?(sel[0]?bank0_out:bank3_out):(sel[0]?bank2_out:bank1_out);
assign chan2 = sel[1]?(sel[0]?bank1_out:bank0_out):(sel[0]?bank3_out:bank2_out);
assign chan3 = sel[1]?(sel[0]?bank2_out:bank1_out):(sel[0]?bank0_out:bank3_out);
assign chan4 = sel[1]?(sel[0]?bank7_out:bank2_out):(sel[0]?bank9_out:bank0_out);
assign chan5 = sel[1]?(sel[0]?bank4_out:bank3_out):(sel[0]?bank10_out:bank1_out);
assign chan6 = sel[1]?(sel[0]?bank5_out:bank0_out):(sel[0]?bank11_out:bank2_out);
assign chan7 = sel[1]?(sel[0]?bank6_out:bank1_out):(sel[0]?bank12_out:bank3_out);
assign chan8 = sel[1]?(sel[0]?bank8_out:bank2_out):(sel[0]?bank1_out:bank0_out);
assign chan9 = sel[1]?(sel[0]?bank9_out:bank3_out):(sel[0]?bank2_out:bank1_out);
assign chan10 = sel[1]?(sel[0]?bank10_out:bank2_out):(sel[0]?bank1_out:bank0_out);
assign chan11 = sel[1]?(sel[0]?bank11_out:bank3_out):(sel[0]?bank2_out:bank1_out);
assign chan12 = sel[1]?(sel[0]?bank12_out:bank0_out):(sel[0]?bank3_out:bank2_out);
assign chan13 = sel[1]?(sel[0]?bank13_out:bank1_out):(sel[0]?bank0_out:bank3_out);
assign chan14 = sel[1]?(sel[0]?bank14_out:bank2_out):(sel[0]?bank9_out:bank0_out);
assign chan15 = sel[1]?(sel[0]?bank15_out:bank3_out):(sel[0]?bank10_out:bank1_out);
assign chan16 = sel[1]?(sel[0]?bank16_out:bank0_out):(sel[0]?bank11_out:bank2_out);
assign chan17 = sel[1]?(sel[0]?bank17_out:bank1_out):(sel[0]?bank12_out:bank3_out);
assign chan18 = sel[1]?(sel[0]?bank18_out:bank2_out):(sel[0]?bank1_out:bank0_out);
assign chan19 = sel[1]?(sel[0]?bank19_out:bank3_out):(sel[0]?bank2_out:bank1_out);
assign chan20 = sel[1]?(sel[0]?bank20_out:bank2_out):(sel[0]?bank1_out:bank0_out);
assign chan21 = sel[1]?(sel[0]?bank21_out:bank3_out):(sel[0]?bank2_out:bank1_out);
assign chan22 = sel[1]?(sel[0]?bank22_out:bank0_out):(sel[0]?bank3_out:bank2_out);
assign chan23 = sel[1]?(sel[0]?bank23_out:bank1_out):(sel[0]?bank0_out:bank3_out);
assign chan24 = sel[1]?(sel[0]?bank24_out:bank2_out):(sel[0]?bank9_out:bank0_out);
assign chan25 = sel[1]?(sel[0]?bank25_out:bank3_out):(sel[0]?bank10_out:bank1_out);
assign chan26 = sel[1]?(sel[0]?bank26_out:bank0_out):(sel[0]?bank11_out:bank2_out);
assign chan27 = sel[1]?(sel[0]?bank27_out:bank1_out):(sel[0]?bank12_out:bank3_out);
assign chan28 = sel[1]?(sel[0]?bank28_out:bank2_out):(sel[0]?bank1_out:bank0_out);
assign chan29 = sel[1]?(sel[0]?bank29_out:bank3_out):(sel[0]?bank2_out:bank1_out);
assign chan30 = sel[1]?(sel[0]?bank30_out:bank2_out):(sel[0]?bank1_out:bank0_out);
assign chan31 = sel[1]?(sel[0]?bank31_out:bank3_out):(sel[0]?bank2_out:bank1_out);

endmodule