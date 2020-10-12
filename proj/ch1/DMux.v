module DMux(in, sel, out0, out1);
input in, sel;
output out0, out1;

and an0(s, in, sel);
not no0(t, s);
and an1(a, in, t);
or  or0(b, s, s);

endmodule