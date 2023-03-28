module demux_1_4(input din, input [1:0]sel, output reg [3:0]y);

//Gate level modelling

/*
assign y[0]=~sel[1]&~sel[0]&din;
assign y[1]=~sel[1]&sel[0]&din;
assign y[2]= sel[1]&~sel[0]&din;
assign y[3]= sel[1]& sel[0]&din;
*/

// Behavioural modelling - using if statement

/*
always @(*) 
begin
if(sel == 2'b00)
begin
y[0]=din;
y[1]=1'b0;
y[2]=1'b0;
y[3]=1'b0;
end

if(sel == 2'b01)
begin
y[0]=1'b0;
y[1]=din;
y[2]=1'b0;
y[3]=1'b0;
end

if(sel == 2'b10)
begin
y[0]=1'b0;
y[1]=1'b0;
y[2]=din;
y[3]=1'b0;
end

if(sel == 2'b11)
begin
y[0]=1'b0;
y[1]=1'b0;
y[2]=1'b0;
y[3]=din;
end

end
*/

// Behavioural modelling - case statement

always @(*)
begin
case(sel)
2'b00:begin
	y[0]=din;
	y[1]=1'b0;
	y[2]=1'b0;
	y[3]=1'b0;
	end

2'b01:begin
	y[0]=1'b0;
	y[1]=din;
	y[2]=1'b0;
	y[3]=1'b0;
	end

2'b10:begin
	y[0]=1'b0;
	y[1]=1'b0;
	y[2]=din;
	y[3]=1'b0;
	end

2'b11:begin
	y[0]=1'b0;
	y[1]=1'b0;
	y[2]=1'b0;
	y[3]=din;
	end
endcase

end

endmodule
