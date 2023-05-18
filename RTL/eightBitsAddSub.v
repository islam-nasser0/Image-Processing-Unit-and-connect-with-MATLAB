module eightBitsAddSub(
input [7:0] A,
input [7:0] B,
input Opsel,
output [7:0] S
/* output Overflow */
);
wire [7:0] Cout;
wire [7:0] outputXorB;
xor g0 (outputXorB[0],Opsel,B[0]);
xor g1 (outputXorB[1],Opsel,B[1]);
xor g2 (outputXorB[2],Opsel,B[2]);
xor g3 (outputXorB[3],Opsel,B[3]);
xor g4 (outputXorB[4],Opsel,B[4]);
xor g5 (outputXorB[5],Opsel,B[5]);
xor g6 (outputXorB[6],Opsel,B[6]);
xor g7 (outputXorB[7],Opsel,B[7]);

fullAdder F0 (A[0], outputXorB[0] ,Opsel,S[0], Cout[0] );
fullAdder F1 (A[1], outputXorB[1], Cout[0],S[1], Cout[1] );
fullAdder F2 (A[2], outputXorB[2] ,Cout[1],S[2], Cout[2] );
fullAdder F3 (A[3], outputXorB[3] ,Cout[2], S[3], Cout[3]);
fullAdder F4 (A[4], outputXorB[4] ,Cout[3], S[4], Cout[4]);
fullAdder F5 (A[5], outputXorB[5] ,Cout[4], S[5], Cout[5]);
fullAdder F6 (A[6], outputXorB[6] ,Cout[5], S[6], Cout[6]);
fullAdder F7 (A[7], outputXorB[7] ,Cout[6], S[7], Cout[7]);

/* xor overFlow (Overflow,Opsel,Cout[7]); */
endmodule