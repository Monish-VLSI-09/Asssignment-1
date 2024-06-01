//Design Decoders with following specifications
    a. 2:4 using gate level modeling. 
    b. 4:16 using shift operator.//

//a. 
module decoder(D, F);
  input [1:0] D;     // 2-bit input
  output [3:0] F;    // 4-bit output
  wire Dbar1, Dbar0; // Wires for inverted inputs

  // NOT gates to generate inverted inputs
  not n1 (Dbar1, D[1]);
  not n2 (Dbar0, D[0]);

  // AND gates to generate the outputs
  and a1 (F[0], Dbar0, Dbar1); // F[0] = ~D[1] & ~D[0]
  and a2 (F[1], D[0], Dbar1);  // F[1] = ~D[1] & D[0]
  and a3 (F[2], Dbar0, D[1]);  // F[2] = D[1] & ~D[0]
  and a4 (F[3], D[0], D[1]);   // F[3] = D[1] & D[0]

endmodule



//b.
module decoder(D,F);
  input [3:0] D;
  output reg [15:0] F;
 
  always @(D)
  begin
    F = (16'b0000000000000001 << D);  // Use the shift operator to set the appropriate bit in F
  end
endmodule
