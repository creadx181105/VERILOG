module tb_full_adder;

reg [2:0] inputs;
wire sum, carry;

full_adder uut (
    .a(inputs[2]),
    .b(inputs[1]),
    .cin(inputs[0]),
    .sum(sum),
    .carry(carry)
);
initial begin
    $dumpfile("waves/dump.vcd");
    $dumpvars(0, tb_full_adder);
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

initial $monitor("Time=%0t | A=%b B=%b Cin=%b | Sum=%b Carry=%b",
                 $time, inputs[2], inputs[1], inputs[0], sum, carry);

endmodule