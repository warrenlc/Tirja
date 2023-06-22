#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <ctype.h>

#include "lexer.h"

int main(void) {
    const char *string_test = "a = 66+55 - 7;";
    printf("Test string is: %s\n", string_test);
    
    int length_string_test = (int)strlen(string_test);
    
    char *new_string = (char *)calloc(MAX_TOKEN_LENGTH + 1, sizeof *new_string);
    Token_Array t_array;
    token_array_init(&t_array);

    for (int i = 0; i < length_string_test - 1; ++i) { 
        printf("staring another run on the loop, where new_string has value: '%s'\n", new_string);        
        printf("The current character of the test string is: %c\n", string_test[i]);
        if (isdigit(string_test[i])) {
            strncat(new_string, &string_test[i], 1);
            printf("new string: ");
            puts(new_string);
            if (!isdigit(string_test[i+1])) {
                printf("I got to where we should add the token.\n"
                "The current value of new_string is: %s\n", new_string);

                Token *t = token_create(T_NUMBER, new_string);
                token_array_add(&t_array, t);
                printf("token '%s' added\n", new_string);
                memset(new_string, '\0', MAX_TOKEN_LENGTH);
                free(t);
            }
            printf("\n\n\n");
        }
        
        printf("The next character of the test string is: %c\n\n\n", string_test[i + 1]);
    }
    
    printf("and the last non-null character was: %c\n", string_test[length_string_test - 1]);

    printf("the tokens:\n");
    for (int k = 0; k < t_array.size; k++) 
        token_print(&(t_array).tokens[k]);
    free(new_string); 
    token_array_free(&t_array);
    return 0;
}
