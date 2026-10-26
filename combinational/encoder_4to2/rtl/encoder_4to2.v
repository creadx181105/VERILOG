module encoder_4to2 (
    input [3:0] in,
    output reg [1:0] code,
    output reg valid
);

always @(*) begin
    code = 2'b00;
    valid = 1'b1;
    case (in)
        4'b0001: code = 2'b00;
        4'b0010: code = 2'b01;
        4'b0100: code = 2'b10;
        4'b1000: code = 2'b11;
        default: valid = 1'b0;
    endcase
end

endmodule