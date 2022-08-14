module top_module ( 
    input clk, 
    input [7:0] d, 
    input [1:0] sel, 
    output [7:0] q 
);
    
    wire [7:0]t,u[3:0];
    assign t[0] = d;
    my_dff8 a1(.clk(clk),.d(d),   .q(t[1]));
    my_dff8 a2(.clk(clk),.d(t[1]),.q(t[2]));
    my_dff8 a3(.clk(clk),.d(t[2]),.q(t[3]));
    
    always @(*) begin
        for ( int i=0; i<4; i++)
            if (sel == i)
                assign q = t[i];
    end
    

endmodule
