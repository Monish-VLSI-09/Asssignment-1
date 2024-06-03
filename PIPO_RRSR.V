//Design parallel in parallel out 8-bit rotational right shift register with a clock,synchronous load input using
a. Blocking
b. Non-Blocking.
//

//a. Blocking

module prayas(Din,CLK,LOAD,Dout);   
 input [7:0] Din;     // 8-bit input Din 
 input CLK,LOAD;      // 1-bit inputs CLK and LOAD
 output reg [7:0] Dout;   // 8 bit output Dout
 
 always @(posedge CLK)     // Always at positive edge of the clock
  if (LOAD)                // LOAD = 1
    Dout = Din;
   else 
	 Dout = {Din[0],Din[7:1]};      // Rotational  Right Shift (LSB will come in the place of MSB
	 

endmodule

//b. Non-Blocking

input [7:0] Din;     // 8-bit input Din 
 input CLK,LOAD;      // 1-bit inputs CLK and LOAD
 output reg [7:0] Dout;   // 8 bit output Dout
 
 always @(posedge CLK)     // Always at positive edge of the clock
  if (LOAD)                // LOAD = 1
    Dout <= Din;
   else 
	 Dout <= {Din[0],Din[7:1]};      // Rotational  Right Shift (LSB will come in the place of MSB
	 

endmodule
