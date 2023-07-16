#include <stdio.h>

#include "lexer/tokens.h"
#include "lexer/lexer.h"
#include "parser/parser.h"


int main(void)
{
    Token_Array t_array;
    token_array_init(&t_array);

    /* Create some tokens and add to the Token_Array */
    Token *t_seven = token_create(T_NUMBER, "7");
    token_array_add(&t_array, t_seven);

    Token *t_plus = token_create(T_PLUS, "+");
    token_array_add(&t_array, t_plus);

    Token *t_thirteen = token_create(T_NUMBER, "13");
    token_array_add(&t_array, t_thirteen);

    Token *t_semicolon = token_create(T_SEMICOLON, ";");
    token_array_add(&t_array, t_semicolon);

    if (token_array_parse(&t_array) != 1)
    {
        printf("Parse Failure.\n");
    }
    else 
    {
        printf("Parse Success.\n");
    }

    /* Free allocated memory */
    token_array_free(&t_array);
    free(t_semicolon);
    free(t_seven);
    free(t_thirteen);
    free(t_plus);


    /* Try a different one */
    char *sample_increment = "a++;";
    t_array = token_array_get_from_string(sample_increment);
    
    if (token_array_parse(&t_array) != 1)
    {
        printf("Parse Failure.\n");
    }
    else 
    {
        printf("Parse Success.\n");
    } 

    token_array_free(&t_array);

    return 0;
}