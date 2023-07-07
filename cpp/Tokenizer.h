//
// Created by Warren Crutcher on 2023-06-10.
//
#include <string>
#include <memory>
#include <queue>

#include "Token.h"

#ifndef TIRJA_TOKENIZER_H
#define TIRJA_TOKENIZER_H

class Tokenizer {
    private:
        Tokenizer(std::string string_input)
        : string_input{string_input} {}

        static std::shared_ptr<Tokenizer> tokenizer;

        const std::string string_input;
        std::queue<Token> found_tokens;
    
    public:
        Tokenizer(Tokenizer &other_tokenizer) = delete;
        void operator=(const Tokenizer &)     = delete;

        static std::shared_ptr<Tokenizer> get_instance(const std::string &input_string);

        Token get_token(const std::string &);
        void add_token(Token &t);
        std::string to_string() const;
};


#endif //TIRJA_TOKENIZER_H
