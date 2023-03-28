module priority_ckt_8_3(input [7:0] i, output [7:0] h,output idle);

assign h[0]= ~i[7]&~i[6]&~i[5]&~i[4]&~i[3]&~i[2]&~i[1]&i[0];
assign h[1]= ~i[7]&~i[6]&~i[5]&~i[4]&~i[3]&~i[2]&i[1];
assign h[2]= ~i[7]&~i[6]&~i[5]&~i[4]&~i[3]&i[2];
assign h[3]= ~i[7]&~i[6]&~i[5]&~i[4]&i[3];
assign h[4]= ~i[7]&~i[6]&~i[5]&i[4];
assign h[5]= ~i[7]&~i[6]&i[5];
assign h[6]= ~i[7]&i[6];
assign h[7]= i[7];
assign idle= ~i[7]&~i[6]&~i[5]&~i[4]&~i[3]&~i[2]&~i[1]&~i[0];

endmodule
