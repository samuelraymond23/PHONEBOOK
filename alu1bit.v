`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// 
//////////////////////////////////////////////////////////////////////////////////
module Mux2to1(ln0,ln1,Sel,Out);
input ln0,ln1,Sel;
output Out;
endmodule 

module ALU1Bit(a,b,cin,Sel,op);
input a,b,c,d;
input [1:0] Sel;
output result;
wire mux2out1,mux2out2;

Mux2to1 mux2_1(a,b,Sel[0], mux2out1);
Mux2to1 mux2_2(c,d, Sel[0], mux2out2);
Mux2to1 mux2_end(mux2out1, mux2out2, Sel[1],result);
endmodule
