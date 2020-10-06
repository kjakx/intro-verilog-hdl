module fulladder(a, b, cin, q, cout);

input a, b, cin;
output q, cout;

assign q = a ^ b ^ cin;
assign cout = (a & b) | (b & cin) | (cin & a);

endmodule
