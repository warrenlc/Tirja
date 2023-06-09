#include <stdio.h>
#include <stdlib.h>
#include "lexer.h"

void token_print(token *t)
{
    printf("Token string literal is: '%s' on line number: %d\n",
           t->token_literal, t->line_number);
}

int main(void)
{
    token_array t_array;
    int i;


    token *token1 = token_create(PLUS, "+", 17);
    token *token2 = token_create(MINUS, "-", 19);
    token *token3 = token_create(NUMBER, "7", 11);
/*
    token_print(token1);
    token_print(token2);
    token_print(token3);
*/

    token_array_init(&t_array);
    token_array_add(&t_array, *token1);
    token_array_add(&t_array, *token2);
    token_array_add(&t_array, *token3);

    printf("\nPrinting the array\n");
    for (i = 0; i < t_array.size; i++)
    {
        token_print(&t_array.tokens[i]);
    }

    free(token1);
    free(token2);
    free(token3);

    token_array_free(&t_array);
    return 0;
}
