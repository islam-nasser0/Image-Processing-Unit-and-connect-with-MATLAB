module register_out(
input [15:0] D,
input Load,
input clk,
output reg [15:0] Q
);

always @(posedge clk or Load)
begin
if (!Load)
Q <= 16'h0000;
else
Q <= D;
end
endmodule