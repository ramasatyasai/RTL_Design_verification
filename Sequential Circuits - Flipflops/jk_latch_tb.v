module jk_latch_tb();

//Testbench global variables

reg j,k,en; 
wire q,qb;

//Instantiate the design
 
jk_latch JKL(j,k,en,q,qb);

//Data task

task din(input x,y,e); 
begin
j=x;
k=y;
en=e;
#10;
end 
endtask

//Process that generates stimulus by call by value method
initial
begin
din(1,0,1);
din(0,0,0);
din(0,1,1);
din(0,0,1);
din(1,1,1);
din(1,0,0);
din(0,1,1); 
#10;
$finish; 
end

//Step3 : Use $monitor to display the various inputs and outputs

initial $monitor("j:%b k:%b en:%b :: q:%b qb:%b",j,k,en,q,qb); 
endmodule
