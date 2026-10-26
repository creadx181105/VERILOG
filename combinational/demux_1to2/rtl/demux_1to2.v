module demux_1to2 (
    input data,
    input sel,
    output y0,
    output y1
);

assign y0 = data & ~sel;
assign y1 = data & sel;
endmodule