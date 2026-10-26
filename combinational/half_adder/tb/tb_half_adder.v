
module tb_half_adder;
 
 
reg [1:0] inputs;
wire sum, carry;

half_adder uut (
    .a(inputs[1]),
    .b(inputs[0]),
    .sum(sum),
    .carry(carry)
);
initial begin
    $dumpfile("waves/dump.vcd");
    $dumpvars(0, tb_half_adder);
end

initial begin
    inputs = 2'b00; #10;
    inputs = 2'b01; #10;
    inputs = 2'b10; #10;
    inputs = 2'b11; #10;
    $finish;
end

initial $monitor("Time=%0t | A=%b B=%b | Sum=%b Carry=%b",
                 $time, inputs[1], inputs[0], sum, carry);

endmodule
