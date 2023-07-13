
/*
A clock divider in Verilog, using the cascading
flip-flop method.
*/

module counter_4bit(input clk, input reset, output reg zero, one);

    
//-- Output is 26-bit bus, initialized at 0
  reg [3:0] register;
initial begin
  register = 4'b0;
end
  
  always @(*) begin
    if(register == 4'b0)
      zero = 1;
    else
      zero = 0;
    if(register == 4'b1)
      one = 1;
    else
      one = 0;
    
  end

  
//-- Sensitive to rising edge
  always @(posedge clk or posedge reset) begin
  //-- Incrementar el registro
    if(reset == 1)
      	register <= 4'b0;
    else if (reset == 0)
      register <= register + 1;
    if(register == 4'b1011) 
      register <= 4'b0;
  end
  
  
  
endmodule