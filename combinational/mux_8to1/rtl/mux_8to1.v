module mux_8x1(i,sel,y);

input [7:0] i;
input [2:0] sel;
output y;

assign y= i[0]& ~sel[0] & ~sel[1] & ~sel[2] | 
i[1] & sel[0] & ~sel[1] & ~sel[2] |
 i[2] & ~sel[0] & sel[1] & ~sel[2]
  | i[3] & sel[0] & sel[1] & ~sel[2] 
  | i[4] & ~sel[0] & ~sel[1] & sel[2] 
  | i[5] & sel[0] & ~sel[1] & sel[2] | i[6] & ~sel[0] & sel[1] & sel[2]
 | i[7] & sel[0] & sel[1] &  sel[2] ;


endmodule
