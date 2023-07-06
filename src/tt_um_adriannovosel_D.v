//light up the leds according to a counter to cycle through every one

module tt_um_adriannovosel_D(input a, b, output reg y);

   always@(a,b) begin
      y = a && b;
   end
   
endmodule // top
