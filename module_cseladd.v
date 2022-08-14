module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
    wire cint;
    wire [15:0]temp[1:0];
    add16 top   (.a(a[15:0]), .b(b[15:0]),  .cin(1'b0), .cout(cint),	.sum(sum[15:0])   	);
    add16 bot0  (.a(a[31:16]),.b(b[31:16]), .cin(1'b0),				.sum(temp[0])	);
    add16 bot1  (.a(a[31:16]),.b(b[31:16]), .cin(1'b1),				.sum(temp[1])	);
    
    assign sum[31:16] = (cint)? temp[1] : temp[0] ;

endmodule
