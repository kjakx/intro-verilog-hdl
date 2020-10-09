module sel2to1(d0, d1, sel, dout);
input [7:0] d0, d1;
input sel;
output [7:0] dout;

function [7:0] select;
input [7:0] data1, data2;
input s;

if (s == 1'b0)
    select = data1;
else
    select = data2;

endfunction

assign dout = select(d0, d1, sel);

endmodule