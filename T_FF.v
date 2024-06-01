// Design T Flip Flop having asynchronous set and clear//


module t_ff (
  input T,
  input S,
  input C,
  input clk,
  output reg Q
);

  wire Qbar;
  wire D;

  assign D = T ^ Q;
  
  always @(posedge clk or posedge C or posedge S)
  begin
    if (C)
      Q <= 1'b0;
    else if (S)
      Q <= 1'b1;
    else
      Q <= D;
  end

  assign Qbar = ~Q;

endmodule
