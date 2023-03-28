module encoder8_3_tb;

reg [7:0]d;
wire [2:0]y;
integer i=0;

encoder8_3 ENC(.d(d),.y(y));

initial begin
d=0;
end

initial begin
#0  d=8'b0000_0010;
#10 d=8'b0010_0000;
#10 d=8'b0011_0000;
#10 d=8'b0000_1000;
#10 d=8'b0000_0001;
#10 d=8'b1000_0000;

end

initial begin

$monitor("@%0t: d:%0b y:%0b ",$time,d,y);
#100 $finish;
end


endmodule
