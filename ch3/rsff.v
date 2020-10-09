module rsff(sb, rb, q);
input sb, rb;
output q;
wire temp;

nand na1(q, sb, temp);
nand na2(temp, q, rb);

endmodule