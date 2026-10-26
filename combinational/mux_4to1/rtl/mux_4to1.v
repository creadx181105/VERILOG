module mux_4to1 (
    input [3:0] data,
    input [1:0] sel,
    output y
);

assign y = data[sel];

endmodule