module adder_ripple(a, b, q);

input [3:0] a, b;
output [3:0] q;

wire [3:0] cout;

fulladder add0(a[0], b[0], 1'b0, q[0], cout[0]);
fulladder add1(a[1], b[1], cout[0], q[1], cout[1]);
fulladder add2(a[2], b[2], cout[1], q[2], cout[2]);
fulladder add3(a[3], b[3], cout[2], q[3], cout[3]);

endmodule
