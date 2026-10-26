module tb_mux_8to1();
reg  [7:0]a;
reg  [2:0]b;
wire y;

 mux_8x1 dut(.i(a),.sel(b),.y(y));
 
initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0, tb_mux_8to1);
end

initial begin
    a = 8'b00000001; b = 3'b000; #10;
    a = 8'b00000010; b = 3'b001; #10;
    a = 8'b00000100; b = 3'b010; #10;
    a = 8'b00001000; b = 3'b011; #10;
    a = 8'b00010000; b = 3'b100; #10;
    a = 8'b00100000; b = 3'b101; #10;
    a = 8'b01000000; b = 3'b110; #10;
    a = 8'b10000000; b = 3'b111; #10;
    $finish;
end


endmodule
