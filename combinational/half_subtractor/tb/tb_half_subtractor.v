module tb_half_subtractor;

reg [1:0] inputs;
wire difference, borrow;

half_subtractor uut (
    .a(inputs[1]), .b(inputs[0]),
    .difference(difference), .borrow(borrow)
);
initial begin
    $dumpfile("waves/dump.vcd");
    $dumpvars(0, tb_half_subtractor);
end

initial begin
    inputs = 2'b00; #10;
    inputs = 2'b01; #10;
    inputs = 2'b10; #10;
    inputs = 2'b11; #10;
    $finish;
end

initial $monitor("Time=%0t | A=%b B=%b | Difference=%b Borrow=%b",
                 $time, inputs[1], inputs[0], difference, borrow);

endmodule