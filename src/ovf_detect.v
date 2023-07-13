module ovf_detect(input [11:0] data1, data2,data3,data4,
                       output reg ovf);

    
//-- Output is 26-bit bus, initialized at 0

  always @(*)
    if((data1 == 4095)||(data2 == 4095)||(data3 == 4095)||(data4 == 4095)) begin
    ovf = 1;
  end
  else begin
    ovf = 0;
  end
  
  
endmodule