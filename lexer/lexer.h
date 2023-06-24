/*
 *  Lexical Analysis for Tirja
 * */

#include <regex.h>

#include "tokens.h"

#ifndef LEXER_H
#define LEXER_H

/******************************************
 *       Functions
 *****************************************/

Token* token_create(Token_Type type, char *string_token);
void token_array_init(Token_Array *t_array);
int token_array_add(Token_Array *t_array, Token *t);
void token_array_free(Token_Array *ta);
void token_print(Token *t);
void token_to_array_from_string(char *lexeme, Token_Array *t_array, Token_Type type);
int count_char(char c, char *lexeme);
int char_at_position(int pos, char c, char *lexeme);

#endif /* LEXER_H */
