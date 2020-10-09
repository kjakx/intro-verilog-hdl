module Or(in0, in1, out);
input in0, in1;
output out;
wire temp0, temp1, temp2;

nand nd0(temp0, in0, 1'b1);
nand nd1(temp1, in1, 1'b1);
And an0(temp0, temp1, temp2);
Not nt0(temp2, out);

endmodule