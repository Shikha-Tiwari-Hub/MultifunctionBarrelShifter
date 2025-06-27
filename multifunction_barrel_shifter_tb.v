`timescale 1ns / 1ps
module multifunction_barrel_shifter_tb;
 reg [7:0] a;
    reg [2:0] shift;
    reg direction;
    wire [7:0] y;
    
    // Instantiate the Unit Under Test (UUT)
    multifunction_barrel_shifter uut (
        .a(a),
        .shift(shift),
        .direction(direction),
        .y(y)
  );
    
    // Initialize inputs and monitor changes
    initial begin
    direction = 0;
    a = 8'b10110001;
    #10 shift = 0;
    #10 shift = 1;
    #10 shift = 2;
    #10 direction = 1; shift = 0;
    #10 shift = 1;
    #10 shift = 2;
    $finish;
end
endmodule 