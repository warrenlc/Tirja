#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <ctype.h>

#include "lexer.h"

int main(void) {
    const char *string_test = "result_1 = 66+(55 - 7.99) / (Test_Value * 11.71);";
    printf("Test string is: %s\n", string_test);
    
    int length_string_test = (int)strlen(string_test);
    
    char *new_string = (char *)calloc(MAX_TOKEN_LENGTH + 1, sizeof *new_string);
    Token_Array t_array;
    token_array_init(&t_array);
    
    #define char_current  string_test[i]
    #define char_next     string_test[i + 1]
    #define char_previous string_test[i - 1]

    for (int i = 0; i < length_string_test; ++i) { 
        printf("staring another run on the loop, where new_string has value: '%s'\n", new_string);        
        printf("The current character of the test string is: %c\n", char_current);
        /* IF the character is alphanumeric */

        if ((isalpha(char_current) || char_current == '_') || (isdigit(char_current) && (isalpha(char_previous) || char_previous == '_') )) { 
            strncat(new_string, &char_current, 1);
            printf("new_string: ");
            puts(new_string);

            /* Check what is ahead and see if we need to make the token yet. */
            if (!isalnum(char_next) && char_next != '_') {
                Token *t = token_create(T_NAME, new_string);
                token_array_add(&t_array, t);
                printf("token '%s' added\n", new_string);
                memset(new_string, '\0', MAX_TOKEN_LENGTH);
                free(t);
            }
        }

        /* IF the character is a digit */

        else if ((isdigit(char_current) ) ) { //|| char_current == '.') ){ //&& !isalpha(char_previous) && char_previous != '_') {
            strncat(new_string, &char_current, 1);
            printf("new string: ");
            puts(new_string);
            if (!isdigit(char_next) && char_next != '.') {
                printf("I got to where we should add the token.\n"
                "The current value of new_string is: %s\n", new_string);
                
                /* 
                    Check that only one '.' is in the new_string and that it does not occur as the last value,
                    otherwise raise an error
                */
                
                Token *t = token_create(T_NUMBER, new_string);
                token_array_add(&t_array, t);
                printf("token '%s' added\n", new_string);
                memset(new_string, '\0', MAX_TOKEN_LENGTH);
                free(t);
            }
        }

        else if (char_current == '.') {
            if (isdigit(char_previous) && isdigit(char_next))
                strncat(new_string, &char_current, 1);
            else
                continue; 
        }

        else if (char_current == '+') {
            strncat(new_string, &char_current, 1);
            printf("new string: ");
            puts(new_string);
            
            if (char_next == '+') {
                /**/
            }
            
            Token *t = token_create(T_PLUS, new_string);
            token_array_add(&t_array, t);
            printf("token '%s', added\n", new_string);
            memset(new_string, '\0', MAX_TOKEN_LENGTH);
            free(t); 
        }

        else if (char_current == '*') {
            strncat(new_string, &char_current, 1);
            printf("new_string: ");
            puts(new_string);
            Token *t = token_create(T_TIMES, new_string);
            token_array_add(&t_array, t);
            printf("token '%s' added\n", new_string);
            memset(new_string, '\0', MAX_TOKEN_LENGTH);
            free(t);
        }

        else if (char_current == '/') {
            strncat(new_string, &char_current, 1);
            printf("new_string: ");
            puts(new_string);
            Token *t = token_create(T_DIVIDE, new_string);
            token_array_add(&t_array, t);
            printf("token '%s' added\n", new_string);
            memset(new_string, '\0', MAX_TOKEN_LENGTH);
            free(t); 
        }
        else if (char_current == '(') {
            strncat(new_string, &char_current, 1);
            printf("new_string: ");
            puts(new_string);
            Token *t = token_create(T_LPAREN, new_string);
            token_array_add(&t_array, t);
            printf("token '%s', added\n", new_string);
            memset(new_string, '\0', MAX_TOKEN_LENGTH);
            free(t);    
        }

        else if (char_current == ')') {
            strncat(new_string, &char_current, 1);
            printf("new_string: ");
            puts(new_string);
            Token *t = token_create(T_RPAREN, new_string);
            token_array_add(&t_array, t);
            printf("token '%s' added\n", new_string);
            memset(new_string, '\0', MAX_TOKEN_LENGTH);
            free(t);
        }
        else if (char_current == '-') {
            strncat(new_string, &char_current, 1);
            printf("new_sring: ");
            puts(new_string);
            Token *t = token_create(T_MINUS, new_string);
            token_array_add(&t_array, t);
            printf("token '%s' added\n", new_string);
            memset(new_string, '\0', MAX_TOKEN_LENGTH);
            free(t);
        }

        else if (char_current == '=') {
            strncat(new_string, &char_current, 1);
            printf("new_string: ");
            puts(new_string);
            Token *t = token_create(T_EQUALS, new_string);
            token_array_add(&t_array, t);
            printf("token '%s' added\n", new_string);
            memset(new_string, '\0', MAX_TOKEN_LENGTH);
            free(t);
        }

        else if (char_current == ';') {
            strncat(new_string, &char_current, 1);
            printf("new_string: ");
            puts(new_string);
            Token *t = token_create(T_EQUALS, new_string);
            token_array_add(&t_array, t);
            printf("token '%s' added\n", new_string);
            memset(new_string, '\0', MAX_TOKEN_LENGTH);
            free(t);
        }
        else
            printf("Unrecognized character '%c'\n", char_current);
        printf("\n\n\n");
        
        printf("The next character of the test string is: %c\n\n\n", char_next);
    }
    
    printf("and the last non-null character was: %c\n", string_test[length_string_test - 1]);

    printf("the tokens:\n");
    for (int k = 0; k < t_array.size; k++) 
        token_print(&(t_array).tokens[k]);
    free(new_string); 
    token_array_free(&t_array);
    return 0;
}
