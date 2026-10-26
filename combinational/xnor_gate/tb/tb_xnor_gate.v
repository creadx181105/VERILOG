module tb_xnor_gate;

reg a, b;
wire y;

xnor_gate uut (.a(a), .b(b), .y(y));

initial begin
    $dumpfile("waves/dump.vcd");
    $dumpvars(0, tb_xnor_gate);
end

initial begin
    a = 0; b = 0; #10;
    a = 0; b = 1; #10;
    a = 1; b = 0; #10;
    a = 1; b = 1; #10;
    $finish;
end

initial $monitor("Time=%0t | A=%b B=%b | Y=%b", $time, a, b, y);

endmodule