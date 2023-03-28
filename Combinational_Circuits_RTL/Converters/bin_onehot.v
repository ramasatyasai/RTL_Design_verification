module bin_onehot(input [3:0] bin,output [7:0]onehot);

assign onehot = 1'b1<< bin;

endmodule

