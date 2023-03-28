module bin_onehot_tb;

reg [3:0] bin;
wire [7:0] onehot;

integer i=0;

bin_onehot BIN_OH (bin,onehot);

initial begin
for(i=0;i<8;i=i+1) begin

bin=i;
#10;
end
end

initial $monitor("@%0t: bin:%0b onehot:%0b",$time,bin,onehot);

initial #100 $finish;

endmodule
