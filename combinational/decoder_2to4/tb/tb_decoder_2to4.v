module tb_decoder_2to4;

reg [1:0] in;
wire [3:0] y;

decoder_2to4 uut (.in(in), .y(y));

initial begin
    $dumpfile("waves/dump.vcd");
    $dumpvars(0, tb_decoder_2to4);
end

initial begin
    in = 2'b00; #10;
    in = 2'b01; #10;
    in = 2'b10; #10;
    in = 2'b11; #10;
    $finish;
end

initial $monitor("Time=%0t | In=%b | Y=%b", $time, in, y);

endmodule