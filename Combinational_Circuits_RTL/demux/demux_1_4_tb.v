module demux_1_4_tb;


reg din;
reg [1:0]sel;
wire [3:0]y;

integer i=0;

demux_1_4 DEMUX(din,sel,y);

initial begin
{din,sel}=0;
end

initial begin
for(i=0;i<8;i=i+1)
begin

{din,sel}=i;
#10;

end
end

initial $monitor("din: %0b sel: %0b , y:%0b",din,sel,y);

initial #100 $finish;


endmodule
