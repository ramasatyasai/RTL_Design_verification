module pri_enc_8_3_tb;

reg [7:0]i;
wire [3:0]y,idle;

priority_enc_8_3 PENC(i,y,idle);

initial begin
{i}=0;
end

task inputs(input [7:0]h);
begin
i[0]=h[0];
i[1]=h[1];
i[2]=h[2];
i[3]=h[3];
i[4]=h[4];
i[5]=h[5];
i[6]=h[6];
i[7]=h[7];
end
endtask

initial begin
inputs(8'b0011_0000);
#10;
inputs(8'b0101_1010);
#10;
inputs(8'b1100_0011);
#10;
inputs(8'b1010_0000);
#10;
inputs(8'b0000_0000);
#10;
inputs(8'b1111_0011);
#10;
inputs(8'b0001_0000);

end

initial begin
$monitor("i:%0b y:%0b idle:%0b",i,y,idle);
#100  $finish;
end

endmodule
