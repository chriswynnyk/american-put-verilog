//---------------------------------------------------------------------//
// Name:    addrgen.v
// Author:  Chris Wynnyk
// Date:    2/3/2008
// Purpose: Generates addresses.
//---------------------------------------------------------------------//

module addrdecode(
	clk,
	addr_in,
	bank0_addr,
	bank1_addr,
	bank2_addr,
	bank3_addr,
	bank4_addr,
	bank5_addr,
	bank6_addr,
	bank7_addr,
	bank8_addr,
	bank9_addr,
	bank10_addr,
	bank11_addr,
	bank12_addr,
	bank13_addr,
	bank14_addr,
	bank15_addr,
	bank16_addr,
	bank17_addr,
	bank18_addr,
	bank19_addr,
	bank20_addr,
	bank21_addr,
	bank22_addr,
	bank23_addr,
	bank24_addr,
	bank25_addr,
	bank26_addr,
	bank27_addr,
	bank28_addr,
	bank29_addr,
	bank30_addr,
	bank31_addr,
	sel,
	odd
);
	
input  clk;
input  [13:0]addr_in;
output [10:0]bank0_addr;
output [10:0]bank1_addr;
output [10:0]bank2_addr;
output [10:0]bank3_addr;
output [10:0]bank4_addr;
output [10:0]bank5_addr;
output [10:0]bank6_addr;
output [10:0]bank7_addr;
output [10:0]bank8_addr;
output [10:0]bank9_addr;
output [10:0]bank10_addr;
output [10:0]bank11_addr;
output [10:0]bank12_addr;
output [10:0]bank13_addr;
output [10:0]bank14_addr;
output [10:0]bank15_addr;
output [10:0]bank16_addr;
output [10:0]bank17_addr;
output [10:0]bank18_addr;
output [10:0]bank19_addr;
output [10:0]bank20_addr;
output [10:0]bank21_addr;
output [10:0]bank22_addr;
output [10:0]bank23_addr;
output [10:0]bank24_addr;
output [10:0]bank25_addr;
output [10:0]bank26_addr;
output [10:0]bank27_addr;
output [10:0]bank28_addr;
output [10:0]bank29_addr;
output [10:0]bank30_addr;
output [10:0]bank31_addr;


output [1:0]sel;
output odd;

reg [10:0] bank0_addr;
reg [10:0] bank1_addr;
reg [10:0] bank2_addr;
reg [10:0] bank3_addr;
reg [10:0] bank4_addr;
reg [10:0] bank5_addr;
reg [10:0] bank6_addr;
reg [10:0] bank7_addr;
reg [10:0] bank8_addr;
reg [10:0] bank9_addr;
reg [10:0] bank10_addr;
reg [10:0] bank11_addr;
reg [10:0] bank12_addr;
reg [10:0] bank13_addr;
reg [10:0] bank14_addr;
reg [10:0] bank15_addr;
reg [10:0] bank16_addr;
reg [10:0] bank17_addr;
reg [10:0] bank18_addr;
reg [10:0] bank19_addr;
reg [10:0] bank20_addr;
reg [10:0] bank21_addr;
reg [10:0] bank22_addr;
reg [10:0] bank23_addr;
reg [10:0] bank24_addr;
reg [10:0] bank25_addr;
reg [10:0] bank26_addr;
reg [10:0] bank27_addr;
reg [10:0] bank28_addr;
reg [10:0] bank29_addr;
reg [10:0] bank30_addr;
reg [10:0] bank31_addr;

reg [1:0] sel_dlya;
reg [1:0] sel_dlyb;
reg [1:0] sel;
reg odd_dlya;
reg odd_dlyb;
reg odd;

wire [10:0] addr = addr_in[13:3];
wire [10:0] addr_pone = addr_in[13:3] + 1;

// We delay odd and sel by 2 cycle to account for:
//   (1) cycle of address decode time.
//   (1) cycle of memory access time.
always@(posedge clk) begin
  odd_dlya <= addr_in[0];
  sel_dlya <= addr_in[2:1];
  end

always@(posedge clk) begin
  odd_dlyb <= odd_dlya;
  sel_dlyb <= sel_dlya;
  end
  
always@(posedge clk) begin
  odd <= odd_dlyb;
  sel <= sel_dlyb;
  end

 
// Decode the address.
always@(posedge clk) begin
  case(addr_in[2:1])
    2'b00: begin
      bank0_addr <= addr;
      bank1_addr <= addr;
      bank2_addr <= addr;
      bank3_addr <= addr;
      bank4_addr <= addr;
      bank5_addr <= addr;
      bank6_addr <= addr;
      bank7_addr <= addr;
      bank8_addr <= addr;
      bank9_addr <= addr;
      bank10_addr <= addr;
      bank11_addr <= addr;
      bank12_addr <= addr;
      bank13_addr <= addr;
      bank14_addr <= addr;
      bank15_addr <= addr;
      bank16_addr <= addr;
      bank17_addr <= addr;
      bank18_addr <= addr;
      bank19_addr <= addr;
      bank20_addr <= addr;
      bank21_addr <= addr;
      bank22_addr <= addr;
      bank23_addr <= addr;
      bank24_addr <= addr;
      bank25_addr <= addr;
      bank26_addr <= addr;
      bank27_addr <= addr;
      bank28_addr <= addr;
      bank29_addr <= addr;
      bank30_addr <= addr;
      bank31_addr <= addr;
      
      end
    2'b01: begin
      bank0_addr <= addr_pone;
      bank1_addr <= addr;
      bank2_addr <= addr;
      bank3_addr <= addr;
      bank4_addr <= addr;
      bank5_addr <= addr;
      bank6_addr <= addr;
      bank7_addr <= addr;
      bank8_addr <= addr;
      bank9_addr <= addr;
      bank10_addr <= addr;
      bank11_addr <= addr;
      bank12_addr <= addr;
      bank13_addr <= addr;
      bank14_addr <= addr;
      bank15_addr <= addr;
      bank16_addr <= addr;
      bank17_addr <= addr;
      bank18_addr <= addr;
      bank19_addr <= addr;
      bank20_addr <= addr;
      bank21_addr <= addr;
      bank22_addr <= addr;
      bank23_addr <= addr;
      bank24_addr <= addr;
      bank25_addr <= addr;
      bank26_addr <= addr;
      bank27_addr <= addr;
      bank28_addr <= addr;
      bank29_addr <= addr;
      bank30_addr <= addr;
      bank31_addr <= addr;
      
      end
    2'b10: begin
      bank0_addr <= addr_pone;
      bank1_addr <= addr_pone;
      bank2_addr <= addr;
      bank3_addr <= addr;
      bank4_addr <= addr;
      bank5_addr <= addr;
      bank6_addr <= addr;
      bank7_addr <= addr;
      bank8_addr <= addr;
      bank9_addr <= addr;
      bank10_addr <= addr;
      bank11_addr <= addr;
      bank12_addr <= addr;
      bank13_addr <= addr;
      bank14_addr <= addr;
      bank15_addr <= addr;
      bank16_addr <= addr;
      bank17_addr <= addr;
      bank18_addr <= addr;
      bank19_addr <= addr;
      bank20_addr <= addr;
      bank21_addr <= addr;
      bank22_addr <= addr;
      bank23_addr <= addr;
      bank24_addr <= addr;
      bank25_addr <= addr;
      bank26_addr <= addr;
      bank27_addr <= addr;
      bank28_addr <= addr;
      bank29_addr <= addr;
      bank30_addr <= addr;
      bank31_addr <= addr;
      
      end
    2'b11: begin
      bank0_addr <= addr_pone;
      bank1_addr <= addr_pone;
      bank2_addr <= addr_pone;
      bank3_addr <= addr;
      bank4_addr <= addr;
      bank5_addr <= addr;
      bank6_addr <= addr;
      bank7_addr <= addr;
      bank8_addr <= addr;
      bank9_addr <= addr;
      bank10_addr <= addr;
      bank11_addr <= addr;
      bank12_addr <= addr;
      bank13_addr <= addr;
      bank14_addr <= addr;
      bank15_addr <= addr;
      bank16_addr <= addr;
      bank17_addr <= addr;
      bank18_addr <= addr;
      bank19_addr <= addr;
      bank20_addr <= addr;
      bank21_addr <= addr;
      bank22_addr <= addr;
      bank23_addr <= addr;
      bank24_addr <= addr;
      bank25_addr <= addr;
      bank26_addr <= addr;
      bank27_addr <= addr;
      bank28_addr <= addr;
      bank29_addr <= addr;
      bank30_addr <= addr;
      bank31_addr <= addr;
      end
    endcase
  end
  
endmodule
