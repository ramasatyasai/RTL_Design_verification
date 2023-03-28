module pri_enc_4_2_tb;

reg [3:0]i;
wire y0,y1,idle;

priority_enc_4_2 PENC(i,y0,y1,idle);

initial begin
{i}=0;
end

task inputs(input [3:0]h);
begin
i[0]=h[0];
i[1]=h[1];
i[2]=h[2];
i[3]=h[3];
end
endtask

initial begin
inputs(4'b0110);
#10
inputs(4'b0000);
#10;
inputs(4'b1111);
#10;
inputs(4'b1000);
#10;
inputs(4'b0100);
end

initial begin
$monitor("i:%0b y0:%0b y1:%0b idle:%0b",i,y0,y1,idle);
#100  $finish;
end
endmodule