/*Write the code for single bit full adder using
   b) Gate level modeling
     i. Create 4-bit full adder using single bit full adders (designed at gate level).
    ii. Create 8-bit full adder using 4-bit full adders (designed above).



module full_adder ();
 input [7:0] a,b,c;
 output [7:0] sum,carry;
 
 fulladder fa1 (a[7:4],b[7:4],c[7:4],sum[7:4],carry[7:4]);
 fulladder fa2 (a[3:0],b[3:0],c[3:0],sum[3:0],carry[3:0]);
endmodule
 
module fulladder(a,b,c,sum,carry);
 input a,b,c;
 output sum,carry;
 wire t1,t2,t3;
 
 xor x1 (sum,a,b,c);
 and a1 (t1,a,b);
 and a2 (t2,b,c);
 and a3 (t3,a,c);
 or o1 (carry,t1,t2,t3);
 
 
