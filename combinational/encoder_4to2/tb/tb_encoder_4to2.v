module tb_encoder_4to2;

reg [3:0] in;
wire [1:0] code;
wire valid;

encoder_4to2 uut (.in(in), .code(code), .valid(valid));

initial begin
    $dumpfile("waves/dump.vcd");
    $dumpvars(0, tb_encoder_4to2);
end

initial begin
    in = 4'b0001; #10;
    in = 4'b0010; #10;
    in = 4'b0100; #10;
    in = 4'b1000; #10;
    $finish;
end

initial $monitor("Time=%0t | In=%b | Code=%b Valid=%b", $time, in, code, valid);

endmodule