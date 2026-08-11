`timescale 1ns/1ps

module shift_register_tb;

reg clk;
reg reset;
reg serial_in;

wire [3:0] q;

shift_register uut (
    .clk(clk),
    .reset(reset),
    .serial_in(serial_in),
    .q(q)
);

// Clock generation
always #5 clk = ~clk;

initial
begin

    clk = 0;
    reset = 1;
    serial_in = 0;

    #10;
    reset = 0;

    // Input 1
    serial_in = 1;
    #10;

    // Input 0
    serial_in = 0;
    #10;

    // Input 1
    serial_in = 1;
    #10;

    // Input 1
    serial_in = 1;
    #10;

    // Input 0
    serial_in = 0;
    #10;

    $finish;

end

initial
begin
    $monitor("Time=%0t | Serial_In=%b | Q=%b",
             $time, serial_in, q);
end

endmodule