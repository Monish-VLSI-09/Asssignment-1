/*1) Write the code for single bit full adder using
   a) Data flow modeling
    i. Extend the above approach to create a 4-bit full adder.
   ii. Extend the above approach to create a 8-bit full adder

   b) Gate level modeling
     i. Create 4-bit full adder using single bit full adders (designed at gate level).
    ii. Create 8-bit full adder using 4-bit full adders (designed above).*/

1.a) Top module for full adder 
   module full_adder(a,b,c,sum,carry);     //Single bit full adder using Data flow modeling
     input a,b,c;
     output sum,carry;
 
    assign sum = a ^ b ^ c;
    assign carry = (a & b) | (b & c) | (a & c);
   endmodule
   
1.a)i] The above top module is instanstiated inside this design module
    module full_adder (a,b,c,sum,carry);
   input [3:0] a,b,c;
   output [3:0] sum,carry;
 
   fulladder fa1 (a[3],b[3],c[3],sum[3],carry[3]);
   fulladder fa2 (a[2],b[2],c[2],sum[2],carry[2]);
   fulladder fa3 (a[1],b[1],c[1],sum[1],carry[1]);
   fulladder fa4 (a[0],b[0],c[0],sum[0],carry[0]);
endmodule

1.a)ii]  The above top module is instanstiated inside this design module
  module full_adder (a,b,c,sum,carry);
   input [7:0] a,b,c;
   output [7:0] sum,carry;
 
   fulladder fa1 (a[7:4],b[7:4],c[7:4],sum[7:4],carry[7:4]);
   fulladder fa2 (a[3:0],b[3:0],c[3:0],sum[3:0],carry[3:0]);
  endmodule

1.b)
  module fulladder(a,b,c,sum,carry);     //Single bit full adder using gate level modeling
   input a,b,c;
   output sum,carry;
   wire t1,t2,t3;
 
   xor x1 (sum,a,b,c);
   and a1 (t1,a,b);
   and a2 (t2,b,c);
   and a3 (t3,a,c);
   or o1 (carry,t1,t2,t3);
  endmodule 

Same codes will be written for 4-bit and 8-bit full adder, The difference will be that the instantiation will be done either by
gate level modeling or data flow modeling
   
 
