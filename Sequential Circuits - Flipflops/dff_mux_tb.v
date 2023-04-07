module dff_mux_tb;

//Test bench global variables
reg d,clk;
wire q,qb;

// Design  instantiation

dff_mux DFF(d,clk,q,qb);

//understanding the logic

always begin
clk=1'b0;
forever #10 clk=~clk;
end


//Data input task
task din(input i);
begin
@(negedge clk)
d=i;
end
endtask

//process that generates stimulus by call by value method
initial 
begin
din(1'b0);
din(1'b1);
din(1'b0);
din(1'b1);
din(1'b1);  
din(1'b0);
din(1'b1); 
#10;
$finish;
end


initial $monitor("%0t:: d:%0b clk:%0b q:%0b qb:%00b",$time,d,clk,q,qb);

endmodule
