/*
 *  Lexical Analysis for Tirja
 * */

#ifndef LEXER_H
#define LEXER_H

#include "tokens.h"

/******************************************
 *              Structures
 ******************************************/

/*
 *  A Token has a type, a string literal of what this token is
 *  and the line number in the string where it was found.
 * */
typedef struct token
{
    token_type type;
    char *token_literal;
    int line_number;
}token;

/*
 *  An array of tokens holds found tokens in an array
 *  which will be dynamic, i.e. resized on the fly.
 * */
typedef struct token_array
{
    token *tokens;
    int size;
    int capacity;
}token_array;

/******************************************
 *       Functions
 *****************************************/

token *token_create(token_type type, char *string_token, int line_number);
void token_array_init(token_array *t_array);
int token_array_add(token_array *ta, token t);
void token_array_free(token_array *ta);

#endif /* LEXER_H */
