module fulladd2(a, b, cin, q, cout);
input a, b, cin;
output q, cout;

assign {cout, q} = a + b + cin;

endmodule
