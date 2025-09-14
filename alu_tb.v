`timescale 1ns/1ps

module alu8_tb;

    reg [7:0] a, b;
    reg [3:0] operation;
    wire [7:0] result;

    // Instantiate your exact ALU module
    alu8 uut (
        .a(a),
        .b(b),
        .operation(operation),
        .result(result)
    );

    initial begin
        $display("==== 8-bit ALU TEST START ====");
        $monitor("T=%0t | A=%d B=%d | OP=%b | RESULT=%d (0x%0h)", 
                 $time, a, b, operation, result, result);

        // First set of inputs
        a = 8'd5; 
        b = 8'd5;

        operation = 4'b0000; #5;  // ADD
        operation = 4'b0001; #10;  // SUB
        operation = 4'b0010; #10;  // MUL
        operation = 4'b0011; #10;  // DIV
        operation = 4'b0100; #10;  // AND
        operation = 4'b0101; #10;  // OR
        operation = 4'b0110; #10;  // ~B (your code will take ~b)
        operation = 4'b0111; #10;  // XOR
        operation = 4'b1000; #10;  // SHIFT LEFT
        operation = 4'b1001; #10;  // SHIFT RIGHT
        operation = 4'b1010; #10;  // COMPARE

        // Change inputs and re-test
        a = 8'd2; 
        b = 8'd7;

        operation = 4'b0000; #5;  // ADD
        operation = 4'b0001; #10;  // SUB
        operation = 4'b0010; #10;  // MUL
        operation = 4'b0011; #10;  // DIV
        operation = 4'b0100; #10;  // AND
        operation = 4'b0101; #10;  // OR
        operation = 4'b0110; #10;  // ~B
        operation = 4'b0111; #10;  // XOR
        operation = 4'b1000; #10;  // SHIFT LEFT
        operation = 4'b1001; #10;  // SHIFT RIGHT
        operation = 4'b1010; #10;  // COMPARE

        $display("==== TEST COMPLETE ====");
        $stop;
    end

endmodule
