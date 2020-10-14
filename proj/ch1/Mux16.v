module Mux16(in0, in1, sel, out);
input [15:0] in0, in1;
input sel;
output [15:0] out;

Mux m00(in0[0], in1[0], sel, out[0]);
Mux m01(in0[1], in1[1], sel, out[1]);
Mux m02(in0[2], in1[2], sel, out[2]);
Mux m03(in0[3], in1[3], sel, out[3]);
Mux m04(in0[4], in1[4], sel, out[4]);
Mux m05(in0[5], in1[5], sel, out[5]);
Mux m06(in0[6], in1[6], sel, out[6]);
Mux m07(in0[7], in1[7], sel, out[7]);
Mux m08(in0[8], in1[8], sel, out[8]);
Mux m09(in0[9], in1[9], sel, out[9]);
Mux m10(in0[10], in1[10], sel, out[10]);
Mux m11(in0[11], in1[11], sel, out[11]);
Mux m12(in0[12], in1[12], sel, out[12]);
Mux m13(in0[13], in1[13], sel, out[13]);
Mux m14(in0[14], in1[14], sel, out[14]);
Mux m15(in0[15], in1[15], sel, out[15]);

endmodule