module univ_sreg_tb;

// signals

reg [3:0]in;
reg clk,clr;
reg [1:0]sel;
wire [3:0]out;

// Enter the parameter value as required during instantiation

universal_sreg #(4) UNISREG(.in(in),.clk(clk),.clr(clr),.sel(sel),.out(out));

//declaring the time period
always #10 clk=~clk;

// Test inputs and initial conditions
initial begin
clk=0;
clr=1;
#20 clr=1'b0;
in=4'b1011;
sel=2'b01;
clr=1'b0;

#20;

in=4'b1011;
sel=2'b10;
clr=1'b0;

#20;

in=4'b1011;
sel=2'b11;
clr=1'b0;
#20;

$finish;

end


initial $monitor("%0t : clk:%b in:%0b sel:%0d out:%0b",$time,clk,in,sel,out);

endmodule

