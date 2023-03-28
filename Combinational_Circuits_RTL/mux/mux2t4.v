module mux2t4 (input [3:0]d, input [1:0]s, output reg y);

wire w1,w2;

mux2_1 dut1(d[0],d[1],s[0],w1);
mux2_1 dut2(d[2],d[3],s[0],w2);
mux2_1 dut3(w1,w2,s[1],y);

endmodule