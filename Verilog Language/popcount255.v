module top_module( 
    input [254:0] in,
    output [7:0] out );
    
    always @(*) begin
        int i;
        out = 0;
        for (i=0;i<255;i++) begin
            if (in[i]) out++;
        end
        
    end
    

endmodule
