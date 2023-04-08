module siso_bm(input si, input clk, input clr,output reg so);

reg [3:0]data;

always @(posedge clk)
begin

if(clr==1)
begin
data<=4'b0000;
end

else
begin

data<=data>>1;
data[3]<=si;
so<=data[0];
end
end
endmodule

/*
module siso_bm(input si,input clk,input clear, output reg so);

reg [3:0] data;
wire q3,q2,q1;

always @(posedge clk )

begin

if (clear)

data <= 4'b0000;

else
begin
data[3]<=si;
data[2]<=data[3];
data[1]<=data[2];
data[0]<=data[1];
so<=data[0];
end
end
endmodule

*/


