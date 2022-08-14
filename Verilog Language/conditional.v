module top_module (
    input [7:0] a, b, c, d,
    output [7:0] min);//
	
    wire[7:0]t[1:0];
    always@(*) begin
        t[0]=(a<b)?a:b;
        t[1]=(c<d)?c:d;
        min=(t[0]<t[1])?t[0]:t[1];

    end
    

endmodule
