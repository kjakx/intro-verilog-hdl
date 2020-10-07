`timescale 1ps/1ps

module adder_tp;
reg [3:0] a, b;
wire [3:0] q;

/* units of time per step */
parameter STEP = 100000;

/* call module to be tested */
adder adder(a, b, q);

initial begin
            a = 4'h0; b = 4'h0;
    #STEP   a = 4'h5; b = 4'ha;
    #STEP   a = 4'h7; b = 4'ha;
    #STEP   a = 4'h1; b = 4'hf;
    #STEP   a = 4'hf; b = 4'hf;
    #STEP   $finish;
end

// display
initial $monitor($stime, " a=%h b=%h q=%h", a, b, q);

endmodule