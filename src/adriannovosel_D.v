//light up the leds according to a counter to cycle through every one

module top(input a, b, output reg y);

assign y = a && b;
   
endmodule // top