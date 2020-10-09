module Xor(in0, in1, out);
input in0, in1;
output out;

And an0(in0, in1, temp0);
Not no0(temp0, temp1);
Or or0(in0, in1, temp2);
And an1(temp1, temp2, out);

endmodule