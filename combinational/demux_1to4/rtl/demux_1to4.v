module demux_1to4 (
    input data,
    input [1:0] sel,
    output [3:0] y
);

assign y = data ? (4'b0001 << sel) : 4'b0000;

endmodule