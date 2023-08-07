//
// Created by Warren Crutcher on 2023-06-10.
//
#include <string>
#include <memory>
#include <vector>

#include "Token.h"

#ifndef TIRJA_TOKENIZER_H
#define TIRJA_TOKENIZER_H

class Tokenizer {
    private:
        Tokenizer() {}
        static Tokenizer tokenizer;
        // static std::unique_ptr<Tokenizer> tokenizer;

        std::string string_input;
        std::vector<Token> found_tokens;
    
    public:
        Tokenizer(Tokenizer &other_tokenizer) = delete;
        void operator=(const Tokenizer &)     = delete;

        static Tokenizer& get_instance();
        // static std::unique_ptr<Tokenizer> get_instance();
        // static std::shared_ptr<Tokenizer> get_instance();
        void init(const std::string &s);

        Token get_token(const std::string &);
        void add_token(Token &t);
        void print_tokens()const;
};


#endif //TIRJA_TOKENIZER_H
