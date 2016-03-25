`timescale 1ns / 1ps

module CLA (g0, p0, g1, p1, g2, p2, g3, p3, cin, c0, c1, c2, c3, c4, G, P);
input g0, p0, g1, p1, g2, p2, g3, p3, cin;
output c0, c1, c2, c3, c4, G, P;

assign c0 = cin;
assign c1 = g0 | (p0 & c0);
assign c2 = g1 | (p1 & g0) | (p1 & p0 & c0);
assign c3 = g2 | (p2 & g1) | (p2 & p1 & g0) | (p2 & p1 & p0 & c0);
assign c4 = g3 | (p3 & g2) | (p3 & p2 & g1) | (p3 & p2 & p1 & g0) | (p3 & p2 & p1 & p0 & c0);
assign G = g3 | (p3 & g2) | (p3 & p2 & g1) | (p3 & p2 & p1 & g0);
assign P = p3 & p2 & p1 & p0;

endmodule
