`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/28/2018 10:43:10 PM
// Design Name: 
// Module Name: Display_8Bit
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


module Display_8Bit_tb();

logic clk, reset; 
logic [3:0] hex7, hex6, hex5, hex4; 
logic [3:0] hex3, hex2, hex1, hex0;
logic [9:0] value;  //hex digits
logic [7:0] an;      //enable 
logic [7:0] sseg; 

 Display_8Bit dut (
.clk(clk),
.reset(reset),
.hex7(hex7), .hex6(hex6), .hex5(hex5), .hex4(hex4),
.hex3(hex3), .hex2(hex2), .hex1(hex1), .hex0(hex0),
.value(value),
.an(an),
.sseg(sseg)
);

always 
begin
    clk = 1'b1;
    #5 
    clk = 1'b0;
    #5;
end 

initial 
    begin 
        reset = 1'b1;
        value = 1;
        #30;
        reset = 1'b0;
        #10   
        hex7 = 4'h1;
        #5
        hex6 = 4'h2;
        hex5 = 4'h3;
        hex4 = 4'h4;
        hex3 = 4'ha;
        hex2 = 4'hb;
        hex1 = 4'hc;
        hex0 = 4'hd;
    end
endmodule
