//light up the leds according to a counter to cycle through every one

module tt_um_adriannovosel_D(input wire a, b, clk, ena, rst_n, ui_in, output reg y);

   always@(posedge clk) begin
      y <= a && b;
   end
   
endmodule // top
