module tb_demux_1to4;

reg [2:0] inputs;
wire [3:0] y;

demux_1to4 uut (.data(inputs[2]), .sel(inputs[1:0]), .y(y));

initial begin
    $dumpfile("waves/dump.vcd");
    $dumpvars(0, tb_demux_1to4);
end

initial begin
    inputs = 3'b000; #10;
    inputs = 3'b001; #10;
    inputs = 3'b010; #10;
    inputs = 3'b011; #10;
    inputs = 3'b100; #10;
    inputs = 3'b101; #10;
    inputs = 3'b110; #10;
    inputs = 3'b111; #10;
    $finish;
end

initial $monitor("Time=%0t | Data=%b Sel=%b | Y=%b",
                 $time, inputs[2], inputs[1:0], y);

endmodule