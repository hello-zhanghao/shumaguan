`timescale 1ns / 1ps


module shumaguan(
   );
   reg CLK;
   wire [7:0] choose;
   wire [7:0] data;
   
initial begin
CLK<=0;
end
always #10 CLK<=~CLK;

scan_seg sx(
    .CLK(CLK),
    .choose(choose),
    .data(data)
    );   
endmodule
