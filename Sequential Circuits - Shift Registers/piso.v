module piso(input [3:0]pi, input clk, input clr,input sel, output reg so);

reg [3:0]data;

always @(posedge clk)
begin

if(clr==1)
begin
data<=4'b0000;
end

else if(sel==0)
begin
data<=pi;
end

else
begin
so<=data[0];
data<=data>>1;
end
end
endmodule


