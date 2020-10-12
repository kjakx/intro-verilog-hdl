module decoder(din, dout);
input [1:0] din;
output [3:0] dout;

function [3:0] dec;
input [1:0] din;
    case (din)
        2'b00:  dec = 4'b0001;
        2'b01:  dec = 4'b0010;
        2'b10:  dec = 4'b0100;
        2'b11:  dec = 4'b1000;
        default:dec = 4'bxxxx;
    endcase
endfunction

assign dout = dec(din);

endmodule