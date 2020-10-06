module cnt_unit(ck, res, en, q, ca);

input ck, res, en;
output q, ca;
reg q;

always @(posedge ck or posedge res) begin
    if (res == 1'b1)
        q <= 1'b0;
    else if (en == 1'b1)
        q <= ~q;
end

assign ca = en & q;

endmodule