module bidirection_buf_tb;

reg tempa,tempb,control;

wire a,b;

bidirection_buf TRI_BUF(a,b,control);

initial begin

tempa = 1'b0;
tempb = 1'b0; 
control = 1'b0;

end

always #10 tempa =~tempa;
always #20 tempb =~tempb;
always #50 control = ~control;

assign a = (control==1)?tempa:1'bz;
assign b = (control==0)?tempb:1'bz;

initial $monitor("@%0t: control: %0b a:%0b b:%0b",$time,control,a,b);

initial #1000 $finish;


endmodule
