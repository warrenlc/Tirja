//
// Created by Warren Crutcher on 2023-06-10.
//
#include<string>
#ifndef TIRJA_TOKENIZER_H
#define TIRJA_TOKENIZER_H

enum class Token_Type {
    SEMICOLON,
    LPAREN,
    RPAREN,
    INCREMENT,
    DECREMENT,
    MINUS,
    BWNOT,
    POWER,
    TIMES,
    DIVIDE,
    MOD,
    PLUS,
    BWLEFT,
    BWRIGHT,
    BWAND,
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
    NUMBER,
    NAME,
    EQUALS,
    IF,
    DO,
    FOR,
    ELSE,
    THEN,
    WHILE,
    NOTHING
};

class Token {
    public:
        Token(std::string lexeme, Token_Type type)
        : lexeme{lexeme}
        , type{type} {}
    
    protected:
        std::string lexeme;
        Token_Type  type;
};


class Tokenizer {
    protected:
        Tokenizer(std::string string_input)
        : string_input{string_input} {}

        static Tokenizer* tokenizer;

        std::string string_input;
    
    public:
        Tokenizer(Tokenizer &other_tokenizer) = delete;
        void operator=(const Tokenizer &)     = delete;

        static Tokenizer *get_instance(const std::string &input_string);

        Token get_token(const std::string &);
        

        std::string to_string() const;
};


#endif //TIRJA_TOKENIZER_H
