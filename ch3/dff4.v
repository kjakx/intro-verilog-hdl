module dff4(ck, d, q);
input ck;
input [3:0] d;
output [3:0] q;

// port connection by sequence
DFF dff0(ck, d[0], q[0]);
DFF dff1(ck, d[1], q[1]);

// port connection by name
DFF dff2(.ck(ck), .d(d[2]), .q(q[2]));
DFF dff3(.ck(ck), .d(d[3]), .q(q[3]));

endmodule