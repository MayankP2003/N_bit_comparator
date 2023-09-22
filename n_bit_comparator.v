`timescale 1ns / 1ps

module Nbitcomparator(x,y,great,less,equal);
  parameter N=4;
  input [N-1:0]x,y;
  output great,less,equal;
  wire g1,g2,l1,l2,e1,e2;
  Nby2bitcomparator G1(x[N/2-1:0],y[N/2-1:0],g1,e1,l1);
  Nby2bitcomparator G2(x[N-1:N/2],y[N-1:N/2],g2,e2,l2);
  assign equal = e1&e2;
  assign great = (e2)?g1:g2;
  assign less = e2?l1:l2;
endmodule 


module Nby2bitcomparator(a,b,gr,eq,le);
  parameter N=4;
  input [N/2-1:0]a,b;
  output reg gr,le,eq;
  always @(*)
    begin
      if(a==b) begin eq=1; gr=0; le=0; end
      else if (a<b) begin eq=0; gr=0; le=1; end
      else if (a>b) begin eq=0; gr=1; le=0; end
    end 
endmodule
