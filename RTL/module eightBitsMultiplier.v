module eightBitsMultiplier(
    input [7:0] A,
    input [7:0] B,
    output [15:0] Z
);
    wire [62:0] W;
    wire [54:0] C;
    wire [41:0] S;

    
    and G0 (Z[0], A[0], B[0]);
    and G1 (W[0], A[1], B[0]);
    and G2 (W[1], A[2], B[0]);
    and G3 (W[2], A[3], B[0]);
    and G4 (W[3], A[4], B[0]);
    and G5 (W[4], A[5], B[0]);
    and G6 (W[5], A[6], B[0]);
    and G7 (W[6], A[7], B[0]);
    
    and G8  (W[7], A[0], B[1]);
    and G9  (W[8], A[1], B[1]);
    and G10 (W[9], A[2], B[1]);
    and G11 (W[10], A[3], B[1]);
    and G12 (W[11], A[4], B[1]);
    and G13 (W[12], A[5], B[1]);
    and G14 (W[13], A[6], B[1]);
    and G15 (W[14], A[7], B[1]);
    
    and G16 (W[15], A[0], B[2]);
    and G17 (W[16], A[1], B[2]);
    and G18 (W[17], A[2], B[2]);
    and G19 (W[18], A[3], B[2]);
    and G20 (W[19], A[4], B[2]);
    and G21 (W[20], A[5], B[2]);
    and G22 (W[21], A[6], B[2]);
    and G23 (W[22], A[7], B[2]);
    
    and G24 (W[23], A[0], B[3]);
    and G25 (W[24], A[1], B[3]);
    and G26 (W[25], A[2], B[3]);
    and G27 (W[26], A[3], B[3]);
    and G28 (W[27], A[4], B[3]);
    and G29 (W[28], A[5], B[3]);
    and G30 (W[29], A[6], B[3]);
    and G31 (W[30], A[7], B[3]);
    
    and G32 (W[31], A[0], B[4]);
    and G33 (W[32], A[1], B[4]);
    and G34 (W[33], A[2], B[4]);
    and G35 (W[34], A[3], B[4]);
    and G36 (W[35], A[4], B[4]);
    and G37 (W[36], A[5], B[4]);
    and G38 (W[37], A[6], B[4]);
    and G39 (W[38], A[7], B[4]);
    
    and G40 (W[39], A[0], B[5]);
    and G41 (W[40], A[1], B[5]);
    and G42 (W[41], A[2], B[5]);
    and G43 (W[42], A[3], B[5]);
    and G44 (W[43], A[4], B[5]);
    and G45 (W[44], A[5], B[5]);
    and G46 (W[45], A[6], B[5]);
    and G47 (W[46], A[7], B[5]);
    
    and G48 (W[47], A[0], B[6]);
    and G49 (W[48], A[1], B[6]);
    and G50 (W[49], A[2], B[6]);
    and G51 (W[50], A[3], B[6]);
    and G52 (W[51], A[4], B[6]);
    and G53 (W[52], A[5], B[6]);
    and G54 (W[53], A[6], B[6]);
    and G55 (W[54], A[7], B[6]);
    
    and G56 (W[55], A[0], B[7]);
    and G57 (W[56], A[1], B[7]);
    and G58 (W[57], A[2], B[7]);
    and G59 (W[58], A[3], B[7]);
    and G60 (W[59], A[4], B[7]);
    and G61 (W[60], A[5], B[7]);
    and G62 (W[61], A[6], B[7]);
    and G63 (W[62], A[7], B[7]);
    
    halfAdder UNIT0 (W[0], W[7], Z[1], C[0]);
    
    fullAdder UNIT1 (W[1], W[8], C[0], S[0], C[1]);
    halfAdder UNIT2 (W[15], S[0], Z[2], C[2]);
    
    fullAdder UNIT3 (W[2], W[9], C[1], S[1], C[3]);
    fullAdder UNIT4 (W[16], W[23], C[2], S[2], C[4]);
    halfAdder UNIT5 (S[1], S[2], Z[3], C[5]);
    
    fullAdder UNIT6 (W[3], W[10], C[3], S[3], C[6]);
    fullAdder UNIT7 (W[17], W[24], C[4], S[4], C[7]);
    fullAdder UNIT8 (W[31], S[3], C[5], S[5], C[8]);
    halfAdder UNIT9 (S[4], S[5], Z[4], C[9]);
    
    fullAdder UNIT10 (W[4], W[11], C[6], S[6], C[10]);
    fullAdder UNIT11 (W[18], W[25], C[7], S[7], C[11]);
    fullAdder UNIT12 (W[32], W[39], C[8], S[8], C[12]);
    fullAdder UNIT13 (S[6], S[7], C[9], S[9], C[13]);
    halfAdder UNIT14 (S[8], S[9], Z[5], C[14]);
    
    fullAdder UNIT15 (W[5], W[12], C[10], S[10], C[15]);
    fullAdder UNIT16 (W[19], W[26], C[11], S[11], C[16]);
    fullAdder UNIT17 (W[33], W[40], C[12], S[12], C[17]);
    fullAdder UNIT18 (W[47], S[10], C[13], S[13], C[18]);
    fullAdder UNIT19 (S[11], S[12], C[14], S[14], C[19]);
    halfAdder UNIT20 (S[13], S[14], Z[6], C[20]);
    
    fullAdder UNIT21 (W[6], W[13], C[15], S[15], C[21]);
    fullAdder UNIT22 (W[20], W[27], C[16], S[16], C[22]);
    fullAdder UNIT23 (W[34], W[41], C[17], S[17], C[23]);
    fullAdder UNIT24 (W[48], W[55], C[18], S[18], C[24]);
    fullAdder UNIT25 (S[15], S[16], C[19], S[19], C[25]);
    fullAdder UNIT26 (S[17], S[18], C[20], S[20], C[26]);
    halfAdder UNIT27 (S[19], S[20], Z[7], C[27]);
    
    fullAdder UNIT28 (C[21], W[14], C[22], S[21], C[28]);
    fullAdder UNIT29 (W[21], W[28], C[23], S[22], C[29]);
    fullAdder UNIT30 (W[35], W[42], C[24], S[23], C[30]);
    fullAdder UNIT31 (W[49], W[56], C[25], S[24], C[31]);
    fullAdder UNIT32 (S[21], S[22], C[26], S[25], C[32]);
    fullAdder UNIT33 (S[23], W[24], C[27], S[26], C[33]);
    halfAdder UNIT34 (S[25], S[26], Z[8], C[34]);
    
    fullAdder UNIT35 (C[28], W[22], C[29], S[27], C[35]);
    fullAdder UNIT36 (W[29], W[36], C[30], S[28], C[36]);
    fullAdder UNIT37 (W[43], W[50], C[31], S[29], C[37]);
    fullAdder UNIT38 (W[57], S[27], C[32], S[30], C[38]);
    fullAdder UNIT39 (S[28], S[29], C[33], S[31], C[39]);
    fullAdder UNIT40 (S[30], S[31], C[34], Z[9], C[40]);
    
    fullAdder UNIT41 (C[35], W[30], C[36], S[32], C[41]);
    fullAdder UNIT42 (W[37], W[44], C[37], S[33], C[42]);
    fullAdder UNIT43 (W[51], W[58], C[38], S[34], C[43]);
    fullAdder UNIT44 (S[32], S[33], C[39], S[35], C[44]);
    fullAdder UNIT45 (S[34], S[35], C[40], Z[10], C[45]);
    
    fullAdder UNIT46 (C[41], W[38], C[42], S[36], C[46]);
    fullAdder UNIT47 (W[45], W[52], C[43], S[37], C[47]);
    fullAdder UNIT48 (W[59], S[36], C[44], S[38], C[48]);
    fullAdder UNIT49 (S[37], S[38], C[45], Z[11], C[49]);
    
    fullAdder UNIT50 (C[46], W[46], C[47], S[39], C[50]);
    fullAdder UNIT51 (W[53], W[60], C[48], S[40], C[51]);
    fullAdder UNIT52 (S[39], S[40], C[49], Z[12], C[52]);
    
    fullAdder UNIT53 (C[50], W[54], C[51], S[41], C[53]);
    fullAdder UNIT54 (W[61], S[41], C[52], Z[13], C[54]);
    
    fullAdder UNIT55 (C[53], W[62], C[54], Z[14], Z[15]);
    
endmodule