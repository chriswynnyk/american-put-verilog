//---------------------------------------------------------------------//
// Name:    value_buffer.v
// Author:  Chris Wynnyk
// Date:    2/3/2008
// Purpose: Buffers stock values by a single cycle.
//---------------------------------------------------------------------//

module value_buffer(
	clk,
	c0_in,
	c1_in,
	c2_in,
	c3_in,
	c4_in,
	c5_in,
	c6_in,
	c7_in,
	c8_in,
	c9_in,
	c10_in,
	c11_in,
	c12_in,
	c13_in,
	c14_in,
	c15_in,
	c16_in,
	c17_in,
	c18_in,
	c19_in,
	c20_in,
	c21_in,
	c22_in,
	c23_in,
	c24_in,
	c25_in,
	c26_in,
	c27_in,
	c28_in,
	c29_in,
	c30_in,
	c31_in,
	c0_up,
	c1_up,
	c2_up,
	c3_up,
	c4_up,
	c5_up,
	c6_up,
	c7_up,
	c8_up,
	c9_up,
	c10_up,
	c11_up,
	c12_up,
	c13_up,
	c14_up,
	c15_up,
	c16_up,
	c17_up,
	c18_up,
	c19_up,
	c20_up,
	c21_up,
	c22_up,
	c23_up,
	c24_up,
	c25_up,
	c26_up,
	c27_up,
	c28_up,
	c29_up,
	c30_up,
	c31_up,
	c0_down,
	c1_down,
	c2_down,
	c3_down,
	c4_down,
	c5_down,
	c6_down,
	c7_down,
	c8_down,
	c9_down,
	c10_down,
	c11_down,
	c12_down,
	c13_down,
	c14_down,
	c15_down,
	c16_down,
	c17_down,
	c18_down,
	c19_down,
	c20_down,
	c21_down,
	c22_down,
	c23_down,
	c24_down,
	c25_down,
	c26_down,
	c27_down,
	c28_down,
	c29_down,
	c30_down,
	c31_down
);
	
input  clk;

input  [63:0] c0_in;
input  [63:0] c1_in;
input  [63:0] c2_in;
input  [63:0] c3_in;
input  [63:0] c4_in;
input  [63:0] c5_in;
input  [63:0] c6_in;
input  [63:0] c7_in;
input  [63:0] c8_in;
input  [63:0] c9_in;
input  [63:0] c10_in;
input  [63:0] c11_in;
input  [63:0] c12_in;
input  [63:0] c13_in;
input  [63:0] c14_in;
input  [63:0] c15_in;
input  [63:0] c16_in;
input  [63:0] c17_in;
input  [63:0] c18_in;
input  [63:0] c19_in;
input  [63:0] c20_in;
input  [63:0] c21_in;
input  [63:0] c22_in;
input  [63:0] c23_in;
input  [63:0] c24_in;
input  [63:0] c25_in;
input  [63:0] c26_in;
input  [63:0] c27_in;
input  [63:0] c28_in;
input  [63:0] c29_in;
input  [63:0] c30_in;
input  [63:0] c31_in;


output  [63:0] c0_up;
output  [63:0] c1_up;
output  [63:0] c2_up;
output  [63:0] c3_up;
output  [63:0] c4_up;
output  [63:0] c5_up;
output  [63:0] c6_up;
output  [63:0] c7_up;
output  [63:0] c8_up;
output  [63:0] c9_up;
output  [63:0] c10_up;
output  [63:0] c11_up;
output  [63:0] c12_up;
output  [63:0] c13_up;
output  [63:0] c14_up;
output  [63:0] c15_up;
output  [63:0] c16_up;
output  [63:0] c17_up;
output  [63:0] c18_up;
output  [63:0] c19_up;
output  [63:0] c20_up;
output  [63:0] c21_up;
output  [63:0] c22_up;
output  [63:0] c23_up;
output  [63:0] c24_up;
output  [63:0] c25_up;
output  [63:0] c26_up;
output  [63:0] c27_up;
output  [63:0] c28_up;
output  [63:0] c29_up;
output  [63:0] c30_up;
output  [63:0] c31_up;

output  [63:0] c0_down;
output  [63:0] c1_down;
output  [63:0] c2_down;
output  [63:0] c3_down;
output  [63:0] c4_down;
output  [63:0] c5_down;
output  [63:0] c6_down;
output  [63:0] c7_down;
output  [63:0] c8_down;
output  [63:0] c9_down;
output  [63:0] c10_down;
output  [63:0] c11_down;
output  [63:0] c12_down;
output  [63:0] c13_down;
output  [63:0] c14_down;
output  [63:0] c15_down;
output  [63:0] c16_down;
output  [63:0] c17_down;
output  [63:0] c18_down;
output  [63:0] c19_down;
output  [63:0] c20_down;
output  [63:0] c21_down;
output  [63:0] c22_down;
output  [63:0] c23_down;
output  [63:0] c24_down;
output  [63:0] c25_down;
output  [63:0] c26_down;
output  [63:0] c27_down;
output  [63:0] c28_down;
output  [63:0] c29_down;
output  [63:0] c30_down;
output  [63:0] c31_down;

reg [63:0] buffer0;
reg [63:0] buffer1;
reg [63:0] buffer2;
reg [63:0] buffer3;
reg [63:0] buffer4;
reg [63:0] buffer5;
reg [63:0] buffer6;
reg [63:0] buffer7;
reg [63:0] buffer8;
reg [63:0] buffer9;
reg [63:0] buffer10;
reg [63:0] buffer11;
reg [63:0] buffer12;
reg [63:0] buffer13;
reg [63:0] buffer14;
reg [63:0] buffer15;
reg [63:0] buffer16;
reg [63:0] buffer17;
reg [63:0] buffer18;
reg [63:0] buffer19;
reg [63:0] buffer20;
reg [63:0] buffer21;
reg [63:0] buffer22;
reg [63:0] buffer23;
reg [63:0] buffer24;
reg [63:0] buffer25;
reg [63:0] buffer26;
reg [63:0] buffer27;
reg [63:0] buffer28;
reg [63:0] buffer29;
reg [63:0] buffer30;
reg [63:0] buffer31;

// Buffer inputs by a single cycle.
always@(posedge clk) begin
  buffer0 <= c0_in;
  buffer1 <= c1_in;
  buffer2 <= c2_in;
  buffer3 <= c3_in; 
  buffer4 <= c4_in; 
  buffer5 <= c5_in; 
  buffer6 <= c6_in; 
  buffer7 <= c7_in; 
  buffer8 <= c8_in; 
  buffer9 <= c9_in; 
  buffer10 <= c10_in;
  buffer11 <= c11_in;
  buffer12 <= c12_in;
  buffer13 <= c13_in; 
  buffer14 <= c14_in; 
  buffer15 <= c15_in; 
  buffer16 <= c16_in; 
  buffer17 <= c17_in; 
  buffer18 <= c18_in; 
  buffer19 <= c19_in;
  buffer20 <= c20_in;
  buffer21 <= c21_in;
  buffer22 <= c22_in;
  buffer23 <= c23_in; 
  buffer24 <= c24_in; 
  buffer25 <= c25_in; 
  buffer26 <= c26_in; 
  buffer27 <= c27_in; 
  buffer28 <= c28_in; 
  buffer29 <= c29_in;
  buffer30 <= c30_in;
  buffer31 <= c31_in;
end

// Assign outputs.
assign c0_down = buffer0;
assign c1_down = buffer1;
assign c2_down = buffer2;
assign c3_down = buffer3;
assign c4_down = buffer4;
assign c5_down = buffer5;
assign c6_down = buffer6;
assign c7_down = buffer7;
assign c8_down = buffer8;
assign c9_down = buffer9;
assign c10_down = buffer10;
assign c11_down = buffer11;
assign c12_down = buffer12;
assign c13_down = buffer13;
assign c14_down = buffer14;
assign c15_down = buffer15;
assign c16_down = buffer16;
assign c17_down = buffer17;
assign c18_down = buffer18;
assign c19_down = buffer19;
assign c20_down = buffer20;
assign c21_down = buffer21;
assign c22_down = buffer22;
assign c23_down = buffer23;
assign c24_down = buffer24;
assign c25_down = buffer25;
assign c26_down = buffer26;
assign c27_down = buffer27;
assign c28_down = buffer28;
assign c29_down = buffer29;
assign c30_down = buffer30;
assign c31_down = buffer31;

assign c0_up = buffer1;
assign c1_up = buffer2;
assign c2_up = buffer3;
assign c3_up = buffer4;
assign c4_up = buffer5;
assign c5_up = buffer6;
assign c6_up = buffer7;
assign c7_up = buffer8;
assign c8_up = buffer9;
assign c9_up = buffer10;
assign c10_up = buffer11;
assign c11_up = buffer12;
assign c12_up = buffer13;
assign c13_up = buffer14;
assign c14_up = buffer15;
assign c15_up = buffer16;
assign c16_up = buffer17;
assign c17_up = buffer18;
assign c18_up = buffer19;
assign c19_up = buffer20;
assign c20_up = buffer21;
assign c21_up = buffer22;
assign c22_up = buffer23;
assign c23_up = buffer24;
assign c24_up = buffer25;
assign c25_up = buffer26;
assign c26_up = buffer27;
assign c27_up = buffer28;
assign c28_up = buffer29;
assign c29_up = buffer30;
assign c30_up = buffer31;
assign c31_up = c0_in;
  
endmodule
