module Not(in, out);
input in;
output out;

nand nd(out, in, in);

endmodule