module mux8t4 (input [7:0]d,input [2:0]s,output reg y);

wire w1,w2;

mux4_1 mux1(d[3:0],s[1:0],w1);
mux4_1 mux2(d[7:4],s[1:0],w2);
mux2_1 mux3(w1,w2,s[2],y);

endmodule
