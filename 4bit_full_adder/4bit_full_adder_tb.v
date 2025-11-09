module full_adder_4bit_tb;

    reg [3:0] num_a, num_b;
    reg carry_in;
    wire [3:0] sum;
    wire carry_out;

    full_adder_4bit uut(
        .num_a(num_a),
        .num_b(num_b),
        .carry_in(carry_in), 
        .sum(sum),
        .carry_out(carry_out)
    );

    initial begin
        // VCD 파일 생성 (dumpfile과 dumpvars)
        $dumpfile("full_adder.vcd");
        $dumpvars(0, full_adder_4bit_tb); 

        $monitor("A=%b, B=%b, Cin=%b => Sum=%b, Cout=%b", num_a, num_b, carry_in, sum, carry_out);

        num_a = 4'b0001; num_b = 4'b0010; carry_in = 0; #10;
        num_a = 4'b1111; num_b = 4'b0001; carry_in = 0; #10;
        num_a = 4'b1010; num_b = 4'b0101; carry_in = 1; #10;
        num_a = 4'b1111; num_b = 4'b1111; carry_in = 1; #10;

        $finish;
    end
endmodule


