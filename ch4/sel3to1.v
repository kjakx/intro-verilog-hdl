module sel3to1(din, sel, dout);
input [2:0] din;
input[1:0] sel;
output dout;

function select;
input [2:0] din;
input [1:0] sel;
    casex (sel)
        2'b00:  select = din[0];
        2'b01:  select = din[1];
        2'b1x:  select = din[2];
    endcase
endfunction

assign dout = select(din, sel);

endmodule