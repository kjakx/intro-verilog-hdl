module Or16(in0, in1, out);
input [0:15] in0, in1;
output [0:15] out;

or o00(out[0], in0[0], in1[0]);
or o01(out[1], in0[1], in1[1]);
or o02(out[2], in0[2], in1[2]);
or o03(out[3], in0[3], in1[3]);
or o04(out[4], in0[4], in1[4]);
or o05(out[5], in0[5], in1[5]);
or o06(out[6], in0[6], in1[6]);
or o07(out[7], in0[7], in1[7]);
or o08(out[8], in0[8], in1[8]);
or o09(out[9], in0[9], in1[9]);
or o10(out[10], in0[10], in1[10]);
or o11(out[11], in0[11], in1[11]);
or o12(out[12], in0[12], in1[12]);
or o13(out[13], in0[13], in1[13]);
or o14(out[14], in0[14], in1[14]);
or o15(out[15], in0[15], in1[15]);

endmodule