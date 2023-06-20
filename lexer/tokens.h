#ifndef TOKENS_H
#define TOKENS_H

/*
 * Token Types
 * */
typedef enum token_type
{
    SEMICOLON,   /*                      \;   */
    LPAREN,      /*                      \(   */
    RPAREN,      /*                      \)   */
    INCREMENT,   /*                 [\+]{2}   */
    DECREMENT,   /*                 [\-]{2}   */
    MINUS,       /*                      \-   */
    BW_NOT,      /*                      \~   */
    POUND,       /*                      \#   */
    TIMES,       /*                      \*   */
    DIV,         /*                      \/   */
    MOD,         /*                      \%   */
    PLUS,        /*                      \+   */
    BW_LEFT,     /*                 [\<]{2}   */
    BW_RIGHT,    /*                 [\>]{2}   */
    BW_AND,      /*                      \&   */
    XOR,         /*                      \^   */
    BW_OR,       /*                      \|   */
    NUMBER,      /*               \d+\.?\d*   */
    VAR_NAME     /*    [a-z\_]+[A-Za-z\_\d]   */
}Token_Type;

/*
 * States for our state machine
 * */
typedef enum State {
    STATE_START,
    STATE_SEMICOLON,
    STATE_LPAREN,
    STATE_RPAREN,
    STATE_PLUS,
    STATE_MINUS,
    STATE_BW_OPERATION,
    STATE_MULT_OPERATION,
    STATE_NUMBER,
    STATE_IDENTIFIER,
    STATE_NEWLINE,
    STATE_END
}State;

#endif /* TOKENS_H */
