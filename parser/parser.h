#ifndef PARSER_H 
#define PARSER_H

#include "../lexer/tokens.h"
#include "../lexer/lexer.h"
/* This file is a naive first attempt to try and program grammar rules
 * I have absolutely NO idea what I am doing
 */

int token_array_parse(Token_Array *t_array);
int is_valid_rule(Token_Array *t_array, int index);
int is_program_match(Token_Array *t_array, int index);
int is_expression_list_match(Token_Array *t_array, int index);
int is_expression_match(Token_Array *t_array, int index);
int is_numeric_expression_match(Token_Array *t_array, int index);
int is_prefix_unary_operator(Token_Array *t, int i);
int is_postfix_unary_operator(Token_Array *t, int i);
int is_binary_operator(Token_Array *t, int i);
int numeric_expression_found(Token_Array *t, int i);
#endif /* PARSER_H */ 