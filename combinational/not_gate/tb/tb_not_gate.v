module tb_not_gate;

reg a;
wire y;

not_gate uut (.a(a), .y(y));

initial begin
    $dumpfile("waves/dump.vcd");
    $dumpvars(0, tb_not_gate);
end

initial begin
    a = 0; #10;
    a = 1; #10;
    $finish;
end

initial $monitor("Time=%0t | A=%b | Y=%b", $time, a, y);

endmodule