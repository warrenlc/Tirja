//
// Created by Warren Crutcher on 2023-06-10.
//
#include<string>
#ifndef TIRJA_TOKENIZER_H
#define TIRJA_TOKENIZER_H

enum class State {
    START,
    SEMICOLON,
    LPAREN,
    RPAREN,
    OPERATION,
    NUMBER,
    IDENTIFIER,
    NEWLINE,
    END
};

struct Token {
    State state;
    std::string lexeme;
};


class Tokenizer {
    public:
        Tokenizer(){};
};


#endif //TIRJA_TOKENIZER_H
