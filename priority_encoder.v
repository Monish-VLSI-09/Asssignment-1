// Design 8:3 priority encoder using dataflow modeling.


module priority_encoder(D,F);
  input [7:0] D;    8 bit input D
  output [2:0] F;   3 bit output F 

//The input bits are 1 for following outputs
  assign F[2]= D[4] | D[5] | D[6] | D[7];       
 assign F[1]= D[2] | D[3] | D[6] | D[7];
 assign F[0]= D[1] | D[3] | D[5] | D[7];
endmodule
