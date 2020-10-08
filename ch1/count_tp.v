`timescale 1ps/1ps

module count_tp;
reg ck, res;
wire [3:0] q;

parameter STEP = 100000;

// module to be tested
counter counter(ck, res, q);

// clock
always begin
    ck = 0; #(STEP/2);
    ck = 1; #(STEP/2);
end

// test
initial begin
            res = 0;
    #STEP   res = 1;
    #STEP   res = 0;
    #(STEP*20)
    $finish;
end

// display
initial $monitor($stime, " ck=%b res=%b q=%h", ck, res, q);

endmodule