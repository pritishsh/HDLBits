module top_module(
    input [31:0] a,
    input [31:0] b,
    input sub,
    output [31:0] sum
);
    wire cint;
    wire [31:0] binp;
    assign  binp= b^{32{sub}};
    add16 top (.a(a[15:0]), .b(binp[15:0]),  .cin(sub), .cout(cint),	.sum(sum[15:0])   	);
    add16 bot (.a(a[31:16]),.b(binp[31:16]), .cin(cint),				.sum(sum[31:16])	);
endmodule
