#ifndef TOKENS_H
#define TOKENS_H

typedef enum token_type
{
    SEMICOLON,
    LPAREN,
    RPAREN,
    INCREMENT,
    DECREMENT,
    MINUS,
    BW_NOT,
    POUND,
    TIMES,
    DIV,
    MOD,
    PLUS,
    BW_LEFT,
    BW_RIGHT,
    BW_AND,
    XOR,
    BW_OR,
    NUMBER,
    VAR_NAME
}token_type;

#endif /* TOKENS_H */
