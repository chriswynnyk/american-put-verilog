//---------------------------------------------------------------------//
// Name:    value_membank.v
// Author:  Chris Wynnyk
// Date:    2/3/2008
// Purpose: Memory bank for storing stock value.  On pulse to start_init,
//   the memory initializes to zero, sending a pulse on done_init when 
//   finished.
//---------------------------------------------------------------------//

module value_membank(
	clk,
	nrst,
	wren,
	rdaddr,
	wraddr,
	start_init,
	done_init,
	c0_in,
	c1_in,
	c2_in,
	c3_in,
	c0_out,
	c1_out,
	c2_out,
	c3_out
);
	
input  clk;
input  nrst;
input  wren;
input  start_init; // Pulse
input  [9:0] rdaddr;
input  [9:0] wraddr;
input  [63:0] c0_in;
input  [63:0] c1_in;
input  [63:0] c2_in;
input  [63:0] c3_in;

output [63:0] c0_out;
output [63:0] c1_out;
output [63:0] c2_out;
output [63:0] c3_out;
output done_init;  // Pulse

//---------------------------------------------------------------------//
// Wires and Regs
//---------------------------------------------------------------------//
reg [63:0] buffer0;
reg [63:0] buffer1;
reg [63:0] buffer2;
reg [63:0] buffer3;

reg [10:0] timer1;
reg [1:0] state;

wire t1_expire = timer1[10];
wire init = !t1_expire;
wire [9:0] mem_wraddr = init ? timer1[9:0] : wraddr;
wire mem_wren = init || wren;
wire done_init = state[1];

//---------------------------------------------------------------------//
// Instantiations
//---------------------------------------------------------------------//
mem_1k c0_mem_1k(
  .data(init ? 64'd0 : c0_in),
  .rdaddress(rdaddr),
  .rdclock(clk),
  .wraddress(mem_wraddr),
  .wren(mem_wren),
  .wrclock(clk),
  .q(c0_out)
);

mem_1k c1_mem_1k(
  .data(init ? 64'd0 : c1_in),
  .rdaddress(rdaddr),
  .rdclock(clk),
  .wraddress(mem_wraddr),
  .wren(mem_wren),
  .wrclock(clk),
  .q(c1_out)
);

mem_1k c2_mem_1k(
  .rdclock(clk),
  .data(init ? 64'd0 : c2_in),
  .rdaddress(rdaddr),
  .wraddress(mem_wraddr),
  .wren(mem_wren),
  .wrclock(clk),
  .q(c2_out)
);

mem_1k c3_mem_1k(
  .data(init ? 64'd0 : c3_in),
  .rdaddress(rdaddr),
  .rdclock(clk),
  .wraddress(mem_wraddr),
  .wren(mem_wren),
  .wrclock(clk),
  .q(c3_out)
);

//---------------------------------------------------------------------//
// Control Logic
//---------------------------------------------------------------------//

// Timer T1
//  - Count down from 1027 or other set value to -1.
//  - Timer value is used as initialization address.
//  - Loads on 'start_init' pulse.
//  - Stops when reaches -1.
always@(posedge clk)
  if(!nrst) timer1 <= -1;
  else if(start_init) timer1 <= 11'b01111111111;
  else if(!t1_expire) timer1 <= timer1 - 1;  

// State machine to pulse 'done_init' when finished.
always@(posedge clk)
  if(!nrst) state <= 2'b00;
  else if(start_init) state <= 2'b01;
  else if((state == 2'b01) && t1_expire) state <= 2'b10;
  else if(state == 2'b10) state <= 2'b00;
  
endmodule