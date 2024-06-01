module decoder(D,F);
  input [3:0] D;
  output reg [15:0] F;
 
  always @(D)
  begin
    F = (16'b0000000000000001 << D);
  end
endmodule
