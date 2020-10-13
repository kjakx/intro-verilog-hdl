module And16(in0, in1, out);
input [15:0] in0, in1;
output [15:0] out;

and a00(out[0], in0[0], in1[0]);
and a01(out[1], in0[1], in1[1]);
and a02(out[2], in0[2], in1[2]);
and a03(out[3], in0[3], in1[3]);
and a04(out[4], in0[4], in1[4]);
and a05(out[5], in0[5], in1[5]);
and a06(out[6], in0[6], in1[6]);
and a07(out[7], in0[7], in1[7]);
and a08(out[8], in0[8], in1[8]);
and a09(out[9], in0[9], in1[9]);
and a10(out[10], in0[10], in1[10]);
and a11(out[11], in0[11], in1[11]);
and a12(out[12], in0[12], in1[12]);
and a13(out[13], in0[13], in1[13]);
and a14(out[14], in0[14], in1[14]);
and a15(out[15], in0[15], in1[15]);

endmodule