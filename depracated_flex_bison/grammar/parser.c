#include <stdio.h>
#include "parser.h"

int main (void)
{
    Parser parser;
    parser_init(&parser);
    double val;
    
    while (1)
    {
        val = parser_parse(&parser);

        printf ("Result: %.2f\n", val);

    }

    return 0;
}