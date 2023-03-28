module priority_enc_8_3(input [7:0]i,output [2:0]y,output idle);

wire [7:0] w;

priority_ckt_8_3 PCKT(i,w,idle);
bin_ckt_8_3 BCKT(w,y);


endmodule
