module mux8tb;

reg [7:0]d;
reg [2:0]s;
wire y;

integer i=0;

mux8_1 dut (d[7:0],s[2:0],y);

task initialize();
{d,s}=0;
endtask

task inputs(input [7:0]a,[2:0]b);
begin
#10;
d=a;
s=b;
end
endtask

initial begin
initialize;
inputs(8'b00011100,3'b001);
inputs(8'b00110011,3'b010);
inputs(8'b10101010,3'b011);
inputs(8'b00011101,3'b111);
end


initial $monitor("d=%0d s=%0d ==> Y=%b",d,s,y);

initial #100 $finish;
endmodule
