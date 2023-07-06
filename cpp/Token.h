#include <string>

#ifndef TIRJA_TOKEN_H
#define TIRJA_TOKEN_H

enum class Type{
    SEMICOLON,
    LPAREN,
    RPAREN,
    INCREMENT,
    DECREMENT,
    MINUS,
    PLUS,
    BWNOT,
    TIMES,
    DIVIDE,
    MOD,
    BWLEFT,
    BWRIGHT,
    BWAND,
    BWOR,
    XOR,
    NOT,
    AND,
    OR,
    LESS_THAN,
    GREATER_THAN,
    EQUIVALENT,
    NOT_EQUIVALENT,
    LESS_THAN_EQ,
    GREATER_THAN_EQ,
    TRUE,
    FALSE,
    INTEGER,
    REAL,
    EQUALS,
    IF,
    DO,
    THEN,
    ELSE,
    FOR,
    WHILE,
    STRING,
    LBRACE,
    RBRACE,
    LSQUARE,
    RSQUARE,
    LET,
    NOTHING
};

std::string type_to_string(Type type);


class Token {

        Token(std::string lexeme, Type type)
        : lexeme{lexeme}
        , type{type}{}
    
    public:
        std::string to_string()const;

    private:
        Type        type;
        std::string lexeme;

};

#endif //TIRJA_TOKEN_H