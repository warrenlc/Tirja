/*
 *  Lexical Analysis for Tirja
 * */

#include <regex.h>

#include "tokens.h"

#ifndef LEXER_H
#define LEXER_H

#define MAX_TOKEN_LENGTH 16

/******************************************
 *              Structures
 ******************************************/

/*
 *  A Token has a type, a string literal of what this token is
 *  and the line number in the string where it was found.
 * */
// typedef struct Token
// {
//     Token_Type type;
//     const char *lexeme;
// }Token;

// /*
//  *  An array of tokens holds found tokens in an array
//  *  which will be dynamic, i.e. resized on the fly.
//  * */
// typedef struct Token_Array
// {
//     Token *tokens;
//     int size;
//     int capacity;
// }Token_Array;



/******************************************
 *       Functions
 *****************************************/

Token* token_create(Token_Type type, char *string_token);
void token_array_init(Token_Array *t_array);
int token_array_add(Token_Array *t_array, Token *t);
void token_array_free(Token_Array *ta);
void token_print(Token *t);

#endif /* LEXER_H */
