module bin_encoder_4_2(input [3:0]i,output y0,y1);

//Data flow abstraction

assign y0 = i[1]+i[3];
assign y1 = i[2]+i[3];

endmodule
