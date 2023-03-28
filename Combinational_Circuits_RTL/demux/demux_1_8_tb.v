module demux_1_8_tb;


reg din;
reg [2:0]sel;
wire [7:0]y;

integer i=0;

demux_1_8 DEMUX(din,sel,y);

initial begin
{din,sel}=0;
end

initial begin
for(i=0;i<16;i=i+1)
begin

{din,sel}=i;
#10;

end
end

initial $monitor("din: %0b sel: %0b , y:%0b",din,sel,y);

initial #200 $finish;


endmodule
