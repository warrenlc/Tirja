#include <stdio.h>

#include "lexer.h"


int main (int argc, char *argv[])
{
    FILE *file = NULL;
    if (argc == 2)
    {
        file = fopen(argv[1], "r");
        if (!file)
        {
            fprintf(stderr, "Error opening file\n");
            return 1;
        }
    }
    else {
        file = stdin;
    }

    Scanner scanner;
    Token token;
    scanner_init(&scanner);
    while ((token = scanner_scan(&scanner, file)).type != TOKEN_END) {
        token_print(&token); 
    }
    return 0;
}
