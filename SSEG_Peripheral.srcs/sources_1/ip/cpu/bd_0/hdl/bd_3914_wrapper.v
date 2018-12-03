//Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2017.2 (win64) Build 1909853 Thu Jun 15 18:39:09 MDT 2017
//Date        : Wed Nov 14 14:50:05 2018
//Host        : USER1231 running 64-bit major release  (build 9200)
//Command     : generate_target bd_3914_wrapper.bd
//Design      : bd_3914_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module bd_3914_wrapper
   (Clk,
    IO_addr_strobe,
    IO_address,
    IO_byte_enable,
    IO_read_data,
    IO_read_strobe,
    IO_ready,
    IO_write_data,
    IO_write_strobe,
    Reset);
  input Clk;
  output IO_addr_strobe;
  output [31:0]IO_address;
  output [3:0]IO_byte_enable;
  input [31:0]IO_read_data;
  output IO_read_strobe;
  input IO_ready;
  output [31:0]IO_write_data;
  output IO_write_strobe;
  input Reset;

  wire Clk;
  wire IO_addr_strobe;
  wire [31:0]IO_address;
  wire [3:0]IO_byte_enable;
  wire [31:0]IO_read_data;
  wire IO_read_strobe;
  wire IO_ready;
  wire [31:0]IO_write_data;
  wire IO_write_strobe;
  wire Reset;

  bd_3914 bd_3914_i
       (.Clk(Clk),
        .IO_addr_strobe(IO_addr_strobe),
        .IO_address(IO_address),
        .IO_byte_enable(IO_byte_enable),
        .IO_read_data(IO_read_data),
        .IO_read_strobe(IO_read_strobe),
        .IO_ready(IO_ready),
        .IO_write_data(IO_write_data),
        .IO_write_strobe(IO_write_strobe),
        .Reset(Reset));
endmodule