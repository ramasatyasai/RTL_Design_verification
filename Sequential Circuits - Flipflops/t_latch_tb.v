module t_latch_tb();

//Testbench global variables

reg t,en,rst; 
wire q,qb;

//Instantiate the design
 
t_latch TL(t,en,rst,q,qb);

//Data task


task din(input y,e,rs); 
begin
t=y;
en=e;
rst=rs;
#10;
end 
endtask

//Process that generates stimulus by call by value method
initial
begin
din(1,1,0);
din(1,1,0);
din(0,1,1);
din(0,1,0);
din(0,1,0);
din(1,0,0);
din(1,0,0); 
#10;
$finish; 
end

//Step3 : Use $monitor to display the various inputs and outputs

initial $monitor(" t:%b en:%b :: q:%b qb:%b",t,en,q,qb); 
endmodule
