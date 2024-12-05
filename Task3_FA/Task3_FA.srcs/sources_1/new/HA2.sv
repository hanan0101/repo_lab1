`timescale 1ns / 1ps
module FA(
  input a,
  input b,
  input cin, //carry
  output sum,
  output carry);
  logic sum1 , carry1, carry2; 
  HA H1( 
         .a(a),
         .b(b),
         .sum(sum1),
         .carry(carry1)
         );                
  HA H2(
         .a(cin),
         .b(sum1),
         .sum(sum),
         .carry(carry2));
         
  //or or_gate( carry ,c1,c2 );
   assign  carry = carry1 | carry2;
endmodule
