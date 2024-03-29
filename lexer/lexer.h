/*
 *  Lexical Analysis for Tirja
 * */

#include <stdlib.h>
#include "tokens.h"

#ifndef LEXER_H
#define LEXER_H

/******************************************
 *       Functions
 *****************************************/

Token*      token_create(Token_Type type, char *string_token);
void        token_array_init(Token_Array *t_array);
void        token_array_add(Token_Array *t_array, Token *t);
void        token_array_free(Token_Array *ta);
char*       token_type_to_string(Token_Type type);
void        token_print(Token *t);
void        token_to_array_from_string(char *lexeme, Token_Array *t_array, Token_Type type);
Token_Type  token_type_get_single_char(const char lexeme);
void        token_array_print(Token_Array *t_array);
int         char_count(char c, char *lexeme);
int         char_at_position(int pos, char c, char *lexeme);
Token_Array token_array_get_from_string(const char *string_input);
Token_Array tokenize_string(const char *s);
Token_Type  token_word_match(char *lexeme);
int         is_identifier(const char current, const char previous);
int         is_identifier_end(const char c);
int         token_identifier_get(char *lexeme, const char *string_input, int index_current, Token_Array *t_array);
int         token_string_get(char **lexeme, const char *string_input, int index_current, Token_Array *t_array);
int         token_number_get(char *lexeme,  const char *string_input, int index_current, Token_Array *t_array);
int         is_valid_decimal(const char prev, const char next,  char *lexeme);
int         is_valid_single_character(char current);



void        error_message_print(int line_number, int column_number, char *lexeme, const char *current);
#endif /* LEXER_H */
