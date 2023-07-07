//
// Created by Warren Crutcher on 2023-06-10.
//

#include "Tokenizer.h"

using namespace std;

static shared_ptr<Tokenizer> tokenizer = nullptr;

static shared_ptr<Tokenizer> get_instance(const string& input) {
    if (!tokenizer) {
        static shared_ptr<Tokenizer>(input);
    }
    return tokenizer;
}
