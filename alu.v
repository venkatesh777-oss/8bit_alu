module alu8(
input [7:0]a,b,
input [3:0]operation,
output reg [7:0]result );
always @(*)begin
case(operation)
4'b0000 : result=a+b;
4'b0001:result=a-b;
4'b0010:result=a*b;
4'b0011:result=a/b;
4'b0100:result=a&b;
4'b0101: result=a|b;
4'b0110:result=~a; 
4'b0110:result=~b;
4'b0111:result=a^b;
4'b1000:result=a<<1;
4'b1001:result=a>>1;
4'b1010:result=(a==b);
default : result=8'hxx;
endcase
end
endmodule
