module priority_enc_4_2(input [3:0] i, output y0,y1,idle);

wire w0,w1,w2,w3;

priority_ckt_4_2 PCKT(i,{w0,w1,w2,w3},idle);
bin_encoder_4_2 BENC({w0,w1,w2,w3},y0,y1);



endmodule