`timescale 1ns/1ps
module tb_2_in_mux;
    reg [2:0] inputs;
    wire out;

    mux_2in uut (
        .a(inputs[2]),
        .b(inputs[1]),
        .sel(inputs[0]),
        .out(out)
    );
    initial begin
        $dumpfile("dump.vcd");
        $dumpvars(0, tb_2_in_mux);
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

    initial $monitor("Time=%0t | A=%b B=%b Sel=%b | Out=%b",
                     $time, inputs[2], inputs[1], inputs[0], out);

endmodule