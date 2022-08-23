module top_module( 
    input [399:0] a, b,
    input cin,
    output cout,
    output [399:0] sum );
	
    wire[100:0] tmp;
    assign tmp[0]=cin;
    assign cout=tmp[100];
    generate 
        genvar i;
        for(i=0;i<100;i++) begin: dummy_name
            bcd_fadd xyz(
                .a(a[4*i+3:4*i]),
                .b(b[4*i+3:4*i]),
                .cin(tmp[i]),
                .cout(tmp[i+1]),
                .sum(sum[4*i+3:4*i])
                
            );
        end
    endgenerate
    
    
endmodule
