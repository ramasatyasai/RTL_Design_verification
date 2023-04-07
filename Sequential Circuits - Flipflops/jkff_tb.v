module jkff_tb;

//Test bench global variables
reg j,k,clk,rst;
wire q,qb;

// Design  instantiation

jk_flipflop JKFF(j,k,clk,rst,q,qb);

//understanding the logic

always begin
clk=1'b0;
forever #10 clk=~clk;
end

//Reset task

task rst_dut();
begin
@(negedge clk) 
rst=1'b1; 
@(negedge clk) 
rst=1'b0;
end
endtask

//Data input task
task jk_in(input jin,kin);
begin
@(negedge clk)
j=jin;
k=kin;
end
endtask

//process that generates stimulus by call by value method
initial 
begin
rst_dut;
jk_in(1,0);
jk_in(1,1);
jk_in(0,0);
jk_in(0,1);
jk_in(1,1);
rst_dut; 
jk_in(1,0);
jk_in(1,1);
#10;
$finish;
end


initial $monitor("%0t:: j:%0b k:%0b rst:%0b clk:%0b q:%0b qb:%00b",$time,j,k,rst,clk,q,qb);

endmodule
