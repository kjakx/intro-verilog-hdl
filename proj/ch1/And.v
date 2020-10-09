module And(in0, in1, out);
input in0, in1;
output out;
wire temp;

nand nd(temp, in0, in1);
assign out = ~temp;

endmodule