`default_nettype none
module top_module(
    input a,
    input b,
    input c,
    input d,
    output out,
    output out_n   ); 
    wire x[2:0];
    and and1 (x[0],a,b);
    and and2 (x[1],c,d);
    or or1 (x[2],x[1],x[0]);
    assign out = x[2];
    not not1(out_n,x[2]);
endmodule
