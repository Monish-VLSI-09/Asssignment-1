/* 2. Write code for 2:1 multiplexer using
    a) Gate level modeling
      i. Create 4:1 mux using 2:1 designed above.
    b) Ternary Operator
      i. Extend the concept to build 4:1 mux using Ternary operation only

2.a)
 i]
module mux(D,S,Y);             //2a[i]) 4:1 mux using 2:1 mux in gate level
 input [3:0] D;
 input S;
 output Y;
 wire [1:0] t;
 
 mux2_1 m1 (D[3:2],S,t[1]);
 mux2_1 m2 (D[1:0],S,t[0]);
 mux2_1 m3 (t[1:0],S,Y);
endmodule
 
 
2.a)
module mux2_1(D,S,Y);    //2:1 mux using gate level modeling
 input [1:0] D;
 input S;
 output Y;
 wire t1,t2,Sbar;
 
 assign Sbar = ~S;
 and a1(t1,D[1],Sbar);
 and a2(t2,D[0],S);
 or o1(Y,t1,t2);
endmodule
 

2b[i]) 
module mux(D,S1,S0,Y);        //4:1 using ternary
 input [3:0] D;
 input S1,S0;
 output Y;
 
 assign Y= S1 ? (S0 ? D[3] : D[2]) : (S0 ? D[1] : D[0]);
endmodule

2b)
 module mux2_1(D,S,Y);     //2:1 mux using ternary
 input [1:0] D;
 input S;
 output Y;
 
 assign Y= S ? D[1] : D[0];
endmodule
