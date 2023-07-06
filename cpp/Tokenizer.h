//
// Created by Warren Crutcher on 2023-06-10.
//
#include <string>
#include "Token.h"

#ifndef TIRJA_TOKENIZER_H
#define TIRJA_TOKENIZER_H

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
