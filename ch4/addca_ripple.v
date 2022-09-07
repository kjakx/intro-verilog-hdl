module addca_ripple(a, b, cin, q, cout);
input [3:0] a, b;
input cin;
output [3:0] q;
output cout;
wire [2:0] ca;

fulladd2 add0(a[0], b[0], cin, q[0], ca[0]);
fulladd2 add1(a[1], b[1], ca[0], q[1], ca[1]);
fulladd2 add2(a[2], b[2], ca[1], q[2], ca[2]);
fulladd2 add3(a[3], b[3], ca[2], q[3], cout);

endmodule
