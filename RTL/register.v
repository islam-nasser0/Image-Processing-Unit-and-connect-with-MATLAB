module register(
input [7:0] D,
input Load,
input clk,
output reg [7:0] Q
);

always @(posedge clk or Load)
begin
if (!Load)
Q <= 8'b00000000;
else
Q <= D;
end
endmodule