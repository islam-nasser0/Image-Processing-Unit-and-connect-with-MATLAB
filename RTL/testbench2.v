`timescale 1ns/1ps
module Testbench2 ();
//signals for testbench 

reg [7:0] A_t;
reg [7:0] B_t;
reg [1:0] opSel_t;
reg Load_t;
reg Clk_t;
wire [15:0] C_t;

  // Open input and output files
  integer infile, outfile;
  initial begin
    infile = $fopen("input_binary.txt", "r");
    outfile = $fopen("output_binary.txt", "w");
  end

  // Instantiate DUT (Device Under Test)

imageProcessingUnit DUT
(

.Clk (Clk_t),
.A(A_t), 
.B(B_t),
.opSel(opSel_t),
.Load(Load_t),
.C(C_t)
); 



  // Read input values from text file and apply to DUT
  integer i;
  initial begin
Clk_t=1;
B_t=8'h02;
opSel_t=2'b01;
Load_t=1'b1;
    for (i = 0; i < 196608; i = i + 1) begin
      $fscanf(infile, "%h", A_t);
      #3; // Wait for 1 time unit
      $fwrite(outfile, "%h\n", C_t);
      #1;
    end
    // Close input and output files
    $fclose(infile);
    $fclose(outfile);
    $finish;
  end
  // Clock generator

  always #0.5 Clk_t = ~Clk_t;

  
  // Instantiate DUT (Device Under Test)


endmodule
