module top_module ( 
    input clk, 
    input [7:0] d, 
    input [1:0] sel, 
    output [7:0] q 
);
    wire t1,u1,v1,w1;
    wire [7:0]t,u,v,w,t2,u2,v2,w2 ;

    assign t = d;
    my_dff8 a1(.clk(clk),.d(d),.q(u));
    my_dff8 a2(.clk(clk),.d(u),.q(v));
    my_dff8 a3(.clk(clk),.d(v),.q(w));
    
    assign t1= ~|(sel ^ 2'b00) ;
    assign u1= ~|(sel ^ 2'b01) ;
    assign v1= ~|(sel ^ 2'b10) ;
    assign w1= ~|(sel ^ 2'b11) ;
    
    assign t2= t & {8{t1}};
    assign u2= u & {8{u1}};
    assign v2= v & {8{v1}};
    assign w2= w & {8{w1}};
    
    assign q = t2|u2|v2|w2;


endmodule
