`timescale 1ps/1ps

module addca_tp;
reg [3:0] a, b;
reg cin;
wire [3:0] q;
wire cout;

parameter STEP = 100000;

addca addca(a, b, cin, q, cout);

initial begin
            a = 4'h0; b = 4'h0; cin = 'h0;
    #STEP   a = 4'h5; b = 4'ha; cin = 'h0;
    #STEP   a = 4'h7; b = 4'ha; cin = 'h0;
    #STEP   a = 4'h1; b = 4'hf; cin = 'h0;
    #STEP   a = 4'h1; b = 4'hf; cin = 'h1;
    #STEP   a = 4'hf; b = 4'hf; cin = 'h0;
    #STEP   $finish;
end

initial $monitor( $stime, " a = %h, b = %h, cin = %h, q = %h, cout = %h", a, b, cin, q, cout);

endmodule
