module demux_1_2(input din, input sel, output reg [1:0]y);

//Gate level modelling

/*
assign y[0]=~sel&din;
assign y[1]=sel&din;
*/

// Behavioural modelling - using if statement

/*
always @(*) 
begin
if(sel == 0)
begin
y[0]=din;
y[1]=1'b0;
end

if(sel == 1)
begin
y[0]=1'b0;
y[1]=din;
end
end
*/

// Behavioural modelling - case statement

always @(*)
begin
case(sel)
1'b0:begin
	y[0]=din;
	y[1]=1'b0;
	end

1'b0:begin
	y[0]=1'b0;
	y[1]=din;
	end
endcase

end

endmodule
