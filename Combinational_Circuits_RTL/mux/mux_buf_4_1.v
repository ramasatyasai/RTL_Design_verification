module mux_buf_4_1(d0,d1,d2,d3,a,b,y);

input d0,d1,d2,d3;
input a,b;
output y;

wire w0,w1,w2,w3;

dec_mux_2_4 MUX_DEC(a,b,w0,w1,w2,w3);

bufif1 BUF0(y,d0,w0);
bufif1 BUF1(y,d1,w1);
bufif1 BUF2(y,d2,w2);
bufif1 BUF3(y,d3,w3);

endmodule
