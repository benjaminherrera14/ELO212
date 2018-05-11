`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.05.2018 18:19:57
// Design Name: 
// Module Name: ledsrgb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module ledsrgb(
    input logic  [2:0]SW,
    input        CLK100MHZ,
    output logic [2:0]rgb
    );
    
    
logic clk_color  ; 
logic reset;

 
clock_divider dut(
        .clk_in(CLK100MHZ),
        .clk_out(clk_color),
        .reset(reset));    
always_comb begin
   if(clk_color) 
     
      case(SW[2:0])
     
      
           'b001: rgb[0]=1'b1; 
           'b010: rgb[1] = 1'b1;
           'b100: rgb[2] = 1'b1;
           
           default: rgb= 3'b000;
      endcase
     
   else rgb[2:0]=3'b000;
  
  end
                   
endmodule
