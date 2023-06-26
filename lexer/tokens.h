#ifndef TOKENS_H
#define TOKENS_H

#define MAX_TOKEN_LENGTH 16

/******************************
 *      Structures / Enums
 ******************************/

/* The types a token can be. */
typedef enum Token_Type{
    T_SEMICOLON,
    T_LPAREN,
    T_RPAREN,
    T_INCREMENT,
    T_DECREMENT,
    T_MINUS,
    T_BWNOT,
    T_POWER,
    T_TIMES,
    T_DIVIDE,
    T_MOD,
    T_PLUS,
    T_BWLEFT,
    T_BWRIGHT,
    T_BWAND,
    T_XOR,
    T_BWOR,
    T_NOT,
    T_AND,
    T_OR,
    T_LESS_T,
    T_GREATER_T,
    T_EQUIVALENT,
    T_NOT_EQUIVALENT,
    T_LESS_T_EQ,
    T_GREATER_T_EQ,
    T_TRUE,
    T_FALSE,
    T_NUMBER,
    T_NAME, 
    T_EQUALS,
    T_IF,
    T_DO,
    T_FOR,
    T_ELSE,
    T_THEN,
    T_WHILE
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
