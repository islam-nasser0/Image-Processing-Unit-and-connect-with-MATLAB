`timescale 1ns/1ps

module Testbench ();
//signals for testbench 

reg [7:0] A_t;
reg [7:0] B_t;
reg [1:0] opSel_t;
reg Load_t;
reg Clk_t;
wire [7:0] C_t;
/* wire overFlow_t; */

initial begin 
$dumpfile ("imageProcessingUnit.vtc");
$dumpvars;
//intial values\
Clk_t=1;
A_t=8'h01;
B_t=8'h02;
opSel_t=2'b00;
Load_t=1'b1;

#21
$display ("test case 1");

if (C_t == 8'h03 ) begin
    $display("test case 1 passed");
end else begin
    $display ("test case 1 failed");
end
$display ("*********************************");
 
$display ("test case 2");

opSel_t=2'b10;

#21
if (C_t == 8'hff ) begin
    $display("test case 2 passed");
end else begin
    $display ("test case 2 failed");
end
$display ("*********************************");

$display ("test case 3");

opSel_t=2'b01;

#21
if (C_t == 8'h02) begin
    $display("test case 3 passed");
end else begin
    $display ("test case 3 failed");
end 
/* $display ("*********************************");

$display ("test case 4");
A_t=2'b00;
B_t=2'b00;

#82
if (Sum_reg_t== 2'b00 & Carry_t ==0) begin
    $display("test case 4 passed");
end else begin
    $display ("test case 4 failed");
end  */
$display ("*********************************"); 
$stop;
end

//localparam CLK_PERIOD = 40;
always #5 Clk_t=~Clk_t;



imageProcessingUnit DUT
(

.Clk (Clk_t),
.A(A_t), 
.B(B_t),
.opSel(opSel_t),
.Load(Load_t),
.C(C_t)
); 

endmodule
