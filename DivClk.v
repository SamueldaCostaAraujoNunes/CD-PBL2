module DivClk(clk6hz, clk191hz, clk50Mhz);
  output clk6hz,  clk191hz;
  input clk50Mhz;
  wire df0_out, df1_out, df2_out, df3_out, df4_out, df5_out, df6_out, df9_out, df7_out, df8_out, df10_out, df11_out, df12_out, df13_out, df14_out, df15_out, df16_out, df17_out, df18_out, df19_out, df20_out, df21_out, df22_out;
  DivFreq df0(clk50Mhz, df0_out); // 25 Mhz
  DivFreq df1(df0_out, df1_out);  // 12,5 Mhz
  DivFreq df2(df1_out, df2_out);  // 6,25 Mhz
  DivFreq df3(df2_out, df3_out);  // 3.125 kHz
  DivFreq df4(df3_out, df4_out);  // 1.562,5 kHz
  DivFreq df5(df4_out, df5_out);  // 781,25 kHz
  DivFreq df6(df5_out, df6_out);  // 390,63 kHz
  DivFreq df9(df6_out, df7_out);  // 195,31 khz
  DivFreq df7(df7_out, df8_out);  // 97,66 khz
  DivFreq df8(df8_out, df9_out);  // 48,83 khz
  DivFreq df10(df9_out, df10_out);  // 24,41 khz
  DivFreq df11(df10_out, df11_out);  // 12,2 khz
  DivFreq df12(df11_out, df12_out);  // 6.104 hz
  DivFreq df13(df12_out, df13_out);  // 3.052 hz
  DivFreq df14(df13_out, df14_out);  // 1.526 hz
  DivFreq df15(df14_out, df15_out);  // 763 hz
  DivFreq df16(df15_out, df16_out);  // 381 hz
  DivFreq df17(df16_out, df17_out);  // 190 hz
  assign clk191hz = df17_out;
  DivFreq df18(df17_out, df18_out);  // 95 hz
  DivFreq df19(df18_out, df19_out);  // 47 hz
  DivFreq df20(df19_out, df20_out);  // 24 hz
  DivFreq df21(df20_out, df21_out);  // 12 hz
  DivFreq df22(df21_out, df22_out);  // 6 hz
  assign clk6hz = df22_out;
endmodule