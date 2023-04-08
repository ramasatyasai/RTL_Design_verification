module sipo(input si, input clk, input clr,output reg [3:0]po);

reg [3:0]data;

always @(posedge clk)
begin

if(clr==1)
begin
po=4'b0000;
end

else
begin

data=po>>1;
po={si,data[2:0]};
end
end

endmodule




