#include <stdio.h>
#include <stdlib.h>
#include <string.h>

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


    char *pattern1;
    char *pattern2;
    int regex_compile_success;
    regmatch_t match;

    regex_t regex1; /*, regex2; */
    const char *test_string;
    char *test_string_copy;
    test_string = "6 +5";
    test_string_copy = malloc(strlen(test_string) + 1);
    strcpy(test_string_copy, test_string);
    pattern1 = "\\+";
    pattern2 = "\\d";


   /* test_string_copy = strdup(test_string); */

    token *token1 = token_create(PLUS, "+", 17);
    token *token2 = token_create(MINUS, "-", 19);
    token *token3 = token_create(NUMBER, "7", 11);
/*
    token_print(token1);
    token_print(token2);
    token_print(token3);
*/


    regex_compile_success = regcomp(&regex1, pattern1, REG_EXTENDED);
    printf("result of regex compile: %d\n", regex_compile_success);


    while (regexec(&regex1, test_string_copy, 1, &match, 0) == 0) {
        printf("Match found for pattern1: %.*s\n", (int)(match.rm_eo - match.rm_so), test_string_copy + match.rm_so);
        test_string_copy += match.rm_eo;
    }



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

    regfree(&regex1);

    free(test_string_copy);
/*
    regfree(&regex2);
*/
    return 0;
}
