/* simulation of electronic dice */

module saikoro_test;
reg ck, reset, enable;
wire [6:0] lamp;

// units of time per step
parameter STEP = 1000;

// clock
always begin
    ck = 0; #(STEP/2);
    ck = 1; #(STEP/2);
end

// module to be tested
saikoro sai(ck, reset, enable, lamp);

// test inputs
initial begin
            reset = 0; enable = 0;
    #STEP   reset = 1;
    #STEP   reset = 0;
    #STEP   enable = 1;
    #(STEP*5)
            enable = 0;
    #STEP   enable = 1;
    #(STEP*5)
            $finish;
end

initial $monitor($stime, " reset=%b enable=%b saikoro=%h lamp=%b", reset, enable, sai.cnt, lamp);

endmodule