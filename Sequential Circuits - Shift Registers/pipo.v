module pipo(input [3:0]pi, input clk, input clr, output reg [3:0]po);


always @(posedge clk)
begin

if(clr==1)
begin
po<=4'b0000;
end


else
begin
po<=pi;
end
end
endmodule


