module top_module ( input clk, input d, output q );
    wire t[1:0];
    my_dff a1(.clk(clk),.d(d),.q(t[0]));
    my_dff a2(.clk(clk),.d(t[0]),.q(t[1]));
    my_dff a3(.clk(clk),.d(t[1]),.q(q));


endmodule
