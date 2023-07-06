//light up the leds according to a counter to cycle through every one

module tt_um_adriannovosel_D(input  wire [7:0] ui_in,    // Dedicated inputs
    output wire [7:0] uo_out,   // Dedicated outputs
    input  wire [7:0] uio_in,   // IOs: Input path
    output wire [7:0] uio_out,  // IOs: Output path
    output wire [7:0] uio_oe,   // IOs: Enable path (active high: 0=input, 1=output)
    input  wire       ena,      // will go high when the design is enabled
    input  wire       clk,      // clock
    input  wire       rst_n
    );// reset_n - low to reset);

   always@(posedge clk) begin
      uo_out[0] <= uio_in[0] && uio_in[1];
   end
   
endmodule // top
