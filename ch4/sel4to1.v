module sel4to1(din, sel, dout);
input [3:0] din;
input [1:0] sel;
output dout;

function select;
input [3:0] din;
input [1:0] sel;
    case (sel)
        2'h0:   select = din[0];
        2'h1:   select = din[1];
        2'h2:   select = din[2];
        2'h3:   select = din[3];
        default:select = 1'bx;
    endcase
endfunction

endmodule