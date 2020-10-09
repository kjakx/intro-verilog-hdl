module DFF(ck, d, q);
input ck, d;
output q;
reg q;

always (posedge ck) begin
    q <= d;
end

endmodule