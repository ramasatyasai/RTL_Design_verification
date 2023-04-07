module tff_dff(t,clk,rst,q,qb);

input clk, rst, t; 
inout q;
output qb; 
wire d_in;

xor X1(d_in, t, q);
d_flipflop DFF(d_in,clk,rst, q, qb); 

endmodule
