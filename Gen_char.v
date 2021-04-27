module gen_char(next_col, finish, caracter_code, counter);
  output finish;
  output [6:0] next_col;
  input [3:0] caracter_code, counter;
  wire [6:0] multiplex_caracter_out, char_a_out, char_c_out, char_d_out, char_e_out, char_i_out, char_j_out, char_m_out, char_o_out, char_p_out, char_r_out, char_t_out;
  
  multiplex_caracter multiplex_caracter(multiplex_caracter_out, char_a_out, char_c_out, char_d_out, char_e_out, char_i_out, char_j_out, char_m_out, char_o_out, char_p_out, char_r_out, char_t_out, caracter_code);
  assign next_col = multiplex_caracter_out;
  
  char_a char_a(char_a_out, counter);
  char_c char_c(char_c_out, counter);
  char_d char_d(char_d_out, counter);
  char_e char_e(char_e_out, counter);
  char_i char_i(char_i_out, counter);
  char_j char_j(char_j_out, counter);
  char_m char_m(char_m_out, counter);
  char_o char_o(char_o_out, counter);
  char_p char_p(char_p_out, counter);
  char_r char_r(char_r_out, counter);
  char_t char_t(char_t_out, counter);
  
  assign finish = counter[0] & counter[2];
  
endmodule