module tb_demux_1to2;

reg data;
reg sel;
wire y0;
wire y1;

demux_1to2 uut (.data(data), .sel(sel), .y0(y0), .y1(y1));

initial begin
    $dumpfile("waves/dump.vcd");
    $dumpvars(0, tb_demux_1to2);

    data = 0; sel = 0; #10;
    data = 0; sel = 1; #10;
    data = 1; sel = 0; #10;
    data = 1; sel = 1; #10;
    $finish;
end

initial
    $monitor("Time=%0t | Data=%b Sel=%b | Y0=%b Y1=%b",
             $time, data, sel, y0, y1);

endmodule
