module select_mensage(aceito, comprometido, rejeitado, counter_caracter, caracter, len_string);

  input aceito, comprometido, rejeitado;
  input [3:0] counter_caracter;
  
  output [3:0] caracter, len_string;
  
  wire [1:0] coder_mensage_out;
  wire [3:0] aceito_caracter_out, aceito_len_string_out, comprometido_caracter_out, comprometido_len_string_out, rejeitado_caracter_out, rejeitado_len_string_out;

  Multiplexer4 Multiplexer_1(len_string, aceito_len_string_out, comprometido_len_string_out, rejeitado_len_string_out, coder_mensage_out);
  Multiplexer4 Multiplexer_0(caracter, aceito_caracter_out, comprometido_caracter_out, rejeitado_caracter_out, coder_mensage_out);
 
  
  aceito aceito_modulo(aceito_caracter_out, aceito_len_string_out, counter_caracter);
  comprometido comprometido_modulo(comprometido_caracter_out, comprometido_len_string_out, counter_caracter);
  rejeitado rejeitado_modulo(rejeitado_caracter_out, rejeitado_len_string_out, counter_caracter);
  
  coder_mensage coder_mensage(aceito, comprometido, rejeitado, coder_mensage_out);
  
endmodule