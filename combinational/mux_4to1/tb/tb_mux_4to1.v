module tb_mux_4to1;

reg [3:0] data;
reg [1:0] sel;
wire y;

mux_4to1 uut (.data(data), .sel(sel), .y(y));

initial begin
    $dumpfile("waves/dump.vcd");
    $dumpvars(0, tb_mux_4to1);
end

initial begin
    data = 4'b0001; sel = 2'b00; #10;
    data = 4'b0010; sel = 2'b01; #10;
    data = 4'b0100; sel = 2'b10; #10;
    data = 4'b1000; sel = 2'b11; #10;
    data = 4'b1110; sel = 2'b00; #10;
    data = 4'b1101; sel = 2'b01; #10;
    data = 4'b1011; sel = 2'b10; #10;
    data = 4'b0111; sel = 2'b11; #10;
    $finish;
end

initial $monitor("Time=%0t | Data=%b Sel=%b | Y=%b", $time, data, sel, y);

endmodule