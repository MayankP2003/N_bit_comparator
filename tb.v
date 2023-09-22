`timescale 1ns / 1ps

module tb;
  parameter N=4;
  reg [N-1:0]X,Y;
  wire GR,LE,EQ;
  Nbitcomparator dut(.x(X),.y(Y),.great(GR),.less(LE),.equal(EQ));
  initial begin
    $monitor ("X=%b,Y=%b,GR=%b,LE=%b,EQ=%b",X,Y,GR,LE,EQ);
    $dumpfile("comp.vcd");
    $dumpvars(1);
    X=4'b1101;
    Y=4'b1101;
    #5;
    X=4'b1110;
    Y=4'b1100;
    #5;
    X=4'b0111;
    Y=4'b0111;
    #5;
    X=4'b1011;
    Y=4'b0011;
    #5;
    X=4'b1010;
    Y=4'b1010;
    #5;
    X=4'b0101;
    Y=4'b0111;
    #5;
    X=4'b1010;
    Y=4'b1010;
    #5;
    X=4'b1101;
    Y=4'b1111;
    #5;
    
    X=4'b1101;
    Y=4'b1101;
    #5;
    Y=4'b1110;
    X=4'b1100;
    #5;
    X=4'b0111;
    Y=4'b0111;
    #5;
    Y=4'b1011;
    X=4'b0011;
    #5;
    X=4'b1010;
    Y=4'b1010;
    #5;
    Y=4'b0101;
    X=4'b0111;
    #5;
    X=4'b1010;
    Y=4'b1010;
    #5;
    Y=4'b1101;
    X=4'b1111;
    #5;
    $finish;
  end
endmodule
