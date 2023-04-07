module tff_tb;

//Test bench global variables
reg t,clk,rst;
wire q,qb;

// Design  instantiation

t_flipflop TFF(t,clk,rst,q,qb);

//understanding the logic

always begin
clk=1'b0;
forever #10 clk=~clk;
end

//Reset task

task rst_dut();
begin
@(negedge clk) 
rst=1'b0; 
@(negedge clk) 
rst=1'b1;
end
endtask

//Data input task
task din(input i);
begin
@(negedge clk)
t=i;
end
endtask

//process that generates stimulus by call by value method
initial 
begin
rst_dut;
din(1'b0);
din(1'b1);
din(1'b0);
din(1'b1);
din(1'b1); 
rst_dut; 
din(1'b0);
din(1'b1); 
#10;
$finish;
end


initial $monitor("%0t:: t:%0b rst:%0b clk:%0b q:%0b qb:%00b",$time,t,rst,clk,q,qb);

endmodule
