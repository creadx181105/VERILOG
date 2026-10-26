module tb_decoder_3to8;

reg [2:0] in;
wire [7:0] y;

decoder_3to8 uut (.in(in), .y(y));

initial begin
    $dumpfile("waves/dump.vcd");
    $dumpvars(0, tb_decoder_3to8);
end

initial begin
    in = 3'b000; #10;
    in = 3'b001; #10;
    in = 3'b010; #10;
    in = 3'b011; #10;
    in = 3'b100; #10;
    in = 3'b101; #10;
    in = 3'b110; #10;
    in = 3'b111; #10;
    $finish;
end

initial $monitor("Time=%0t | In=%b | Y=%b", $time, in, y);

endmodule