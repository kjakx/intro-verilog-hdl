module counter_unit(ck, res, q);

input ck, res;
output [3:0] q;
wire [3:0] ca;

cnt_unit cu0
