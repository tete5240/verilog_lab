module full_adder_4bit (
    input wire [3:0] num_a,
    input wire [3:0] num_b,
    input wire carry_in,

    output reg [3:0] sum,
    output reg carry_out
);

    always @(*) begin
        {carry_out, sum} = num_a + num_b + carry_in;
    end

endmodule