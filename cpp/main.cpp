#include <iostream>

#include "Tokenizer.h"

using namespace std;

int main(void) {
    string input_string{"j = 9; j++;"};
    static shared_ptr<Tokenizer> tokenizer = Tokenizer::get_instance();
    tokenizer->init(input_string);

    Token t{"+", Type::PLUS};
    Token s{"-", Type::MINUS};
    tokenizer->add_token(t);
    tokenizer->add_token(s);
    tokenizer->print_tokens();
    return 0;
}