#include <stdio.h>

#include "lexer.h"


int main (void)
{
    Scanner scanner;
    Token token;
    scanner_init(&scanner);
    while ((token = scanner_scan(&scanner)).type != TOKEN_END) {
        token_print(&token); 
    }
    return 0;
}
