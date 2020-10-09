/* elelock simulation */

module elelock_tp;
reg ck, reset, close;
reg [9:0] tenkey;

// units of time per cycle
parameter STEP = 1000;

// clock
always begin
    ck = 0; #(STEP/2);
    ck = 1; #(STEP/2);
end

// module to be tested
elelock elelock(ck, reset, tenkey, close, lock);

// test input
initial begin
                reset = 0; tenkey = 0; close = 0;
    #STEP       reset = 1;
    #STEP       reset = 0;
    #(STEP*4)   close = 1;
    #STEP       close = 0;
    #(STEP*4)   tenkey[8] = 1;
    #(STEP*4)   tenkey[8] = 0;
    #(STEP*4)   tenkey[5] = 1;
    #(STEP*4)   tenkey[5] = 0;
    #(STEP*4)   tenkey[9] = 1;
    #(STEP*4)   tenkey[9] = 0;
    #(STEP*4)   tenkey[6] = 1;
    #(STEP*4)   tenkey[6] = 0;
    #(STEP*4)   tenkey[3] = 1;
    #(STEP*4)   tenkey[3] = 0;
    #(STEP*4)   tenkey[4] = 1;
    #(STEP*4)   tenkey[4] = 0;
    #(STEP*4)   close = 1;
    #STEP       close = 0;
    #(STEP*4)   $finish;
end

initial $monitor($stime, " reset=%b close=%b tenkey=%b key=%h%h%h%h lock=%b",
    reset, close, tenkey, elelock.key[3], elelock.key[2], elelock.key[1], elelock.key[0],
    lock);

endmodule