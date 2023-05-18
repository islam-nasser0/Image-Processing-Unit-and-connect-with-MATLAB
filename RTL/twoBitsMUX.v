module twoBitsMUX(
input [15:0] Multiply, AddSub,
input sel,
output reg [15:0] out
);
always @(*) begin
case (sel)
1'b0:out<=AddSub;
1'b1:out<=Multiply;
endcase
end
endmodule