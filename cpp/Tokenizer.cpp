//
// Created by Warren Crutcher on 2023-06-10.
//
#include <iostream>

#include "Tokenizer.h"

using namespace std;

// unique_ptr<Tokenizer> Tokenizer::tokenizer = nullptr;
//shared_ptr<Tokenizer> Tokenizer::tokenizer = nullptr;

// unique_ptr<Tokenizer> Tokenizer::get_instance() {
    // if (!tokenizer) {

Tokenizer& Tokenizer::get_instance() {
    //     if (!tokenizer) {
    //      tokenizer = unique_ptr<Tokenizer>(new Tokenizer());
    // // }
    //     }
    static Tokenizer tokenizer;
    return tokenizer;
}

void Tokenizer::init(const string &s) {
    // this->string_input = s;
    string_input = s;
}

void Tokenizer::add_token(Token &t) {
    found_tokens.push_back(t);
}

void Tokenizer::print_tokens()const {
    for (Token token : found_tokens)
        cout << token.to_string() << endl;
}