module Not16(in, out);
input [15:0] in;
output [15:0] out;

not n00(out[0], in[0]);
not n01(out[1], in[1]);
not n02(out[2], in[2]);
not n03(out[3], in[3]);
not n04(out[4], in[4]);
not n05(out[5], in[5]);
not n06(out[6], in[6]);
not n07(out[7], in[7]);
not n08(out[8], in[8]);
not n09(out[9], in[9]);
not n10(out[10], in[10]);
not n11(out[11], in[11]);
not n12(out[12], in[12]);
not n13(out[13], in[13]);
not n14(out[14], in[14]);
not n15(out[15], in[15]);

endmodule