module top_module( 
    input [99:0] a, b,
    input cin,
    output [99:0] cout,
    output [99:0] sum );
  
    genvar i;
    generate
        for(i=0;i<100;i++) begin : generate_block_name
            
            if (i==0) fadd fa0 (.a(a[0]),
                                .b(b[0]),
                                .cin(cin),
                                .s(sum[0]),
                                .cout(cout[0]));
            else fadd fa1(.a(a[i]),
                          .b(b[i]),
                          .cin(cout[i-1]),
                          .s(sum[i]),
                           .cout(cout[i]));
            
        end
    endgenerate            
    
endmodule
               
module fadd (
    input a,b,cin,
    output s,cout );
    
    assign s=a^b^cin;
    assign cout =(a&b)|(cin & (a|b));
    
endmodule
