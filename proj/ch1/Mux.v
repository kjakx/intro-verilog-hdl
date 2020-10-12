module Mux(in0, in1, sel, out);
input in0, in1, sel;
output out;

and an0(t, in0, sel);
xor xo0(ta, t, a);
and an1(tb, in0, sel);
or  or0(out, ta, tb);

endmodule