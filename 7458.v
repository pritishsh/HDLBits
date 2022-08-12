module top_module ( 
    input p1a, p1b, p1c, p1d, p1e, p1f,
    output p1y,
    input p2a, p2b, p2c, p2d,
    output p2y );
    wire x[3:0];
    and and1 (x[0],p1a,p1b,p1c);
    and and2 (x[1],p1d,p1e,p1f);
    or or1 (p1y,x[1],x[0]);
    and and3 (x[2], p2a, p2b);
    and and4 (x[3], p2c, p2d);
    or or2 (p2y,x[2],x[3]);
    
endmodule
