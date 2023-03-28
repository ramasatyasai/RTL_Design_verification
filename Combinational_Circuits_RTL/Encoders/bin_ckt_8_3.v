module bin_ckt_8_3(input [7:0]i, output [2:0]y);

// Data flow abstraction

assign y[0] = i[1]+i[3]+i[5]+i[7];
assign y[1] = i[2]+i[3]+i[6]+i[7];
assign y[2] = i[4]+i[5]+i[6]+i[7];

endmodule
