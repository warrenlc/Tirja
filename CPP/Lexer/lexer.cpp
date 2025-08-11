//#include <stdio.h>

#include "lexer.hpp"


int main (int argc, char *argv[])
{
    FILE *file = NULL;
    if (argc == 2)
    {
        file = fopen(argv[1], "r");
        if (!file)
        {
            std::cerr << "Could not open file\n";
            return 1;
        }
    }
    else {
        file = stdin;
    }

    Scanner scanner;
    Token token;
    
    while ((token = scanner.scan(file)).type != TOKEN_END)  
        token.print(); 
    
    return 0;
}
