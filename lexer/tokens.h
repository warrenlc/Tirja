#ifndef TOKENS_H
#define TOKENS_H

#define MAX_TOKEN_LENGTH 16

/******************************
 *      Structures / Enums
 ******************************/

/* The types a token can be. */
typedef enum Token_Type{
    T_NUMBER,
    T_PLUS,
    T_SEMICOLON
}Token_Type;

/* A Token has a type and a string representation, aka 'lexeme' */
typedef struct Token {
    Token_Type type;
    char *lexeme; /* */
}Token;

/* dynamic array for holding matched tokens */
typedef struct Token_Array
{
    Token *tokens;
    int size;
    int capacity;
}Token_Array;

#endif /* TOKENS_H */
