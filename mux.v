module mux(D3,D2,D1,D0,S1,S0,Y);
 input D3,D2,D1,D0;
 input S1,S0;
 output Y;
 
 assign Y= S1 ? (S0 ? D0:D1) : (S0 ? D2:D3);
endmodule
 
 
 
 
 
 
 /*wire [1:0] t;
 
 mux2_1 m1 (D[3:2],S,t[1]);
 mux2_1 m2 (D[1:0],S,t[0]);
 mux2_1 m3 (t[1:0],S,Y);
endmodule


module mux2_1(D,S,Y);
 input [1:0] D;
 input S;
 output Y;
 assign Sbar=~S;
 assign Y= S ? D[1] :D[0];
endmodule 
*/
















/*module mux(D,S,Y);
 input [3:0] D;
 input S;
 output Y;
 wire [1:0] t;
 
 mux2_1 m1 (D[3:2],S,t[1]);
 mux2_1 m2 (D[1:0],S,t[0]);
 mux2_1 m3 (t[1:0],S,Y);
endmodule
 
 


 and a1(t1,D[1],Sbar);
 and a2(t2,D[0],S);
 or o1(Y,t1,t2);
endmodule*/
 