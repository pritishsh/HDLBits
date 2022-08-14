module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
    wire cint;
    add16 top (.a(a[15:0]), .b(b[15:0]),  .cin(1'b0), .cout(cint),	.sum(sum[15:0])   	);
    add16 bot (.a(a[31:16]),.b(b[31:16]), .cin(cint),				.sum(sum[31:16])	);


endmodule
