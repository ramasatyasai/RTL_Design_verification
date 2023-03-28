module priority_ckt_4_2(input [3:0]i,output[3:0]h,output idle);

assign h[0] = ~i[3]&~i[2]&~i[1]&i[0];
assign h[1] = ~i[3]&~i[2]&i[1];
assign h[2] = ~i[3]&i[2];
assign h[3] = i[3];
assign idle = ~i[3]&~i[2]&~i[1]&~i[0];

endmodule
