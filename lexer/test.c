#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <ctype.h>

#include "lexer.h"

int main(void) {
    const char *string_test = "j = 0; j++; result_1 = 66+(55 - 7.99) / (Test_Value * 11.71); result_1++; j--; 6 % 3;";
    printf("Test string is: %s\n\n", string_test);
    
    int length_string_test = (int)strlen(string_test);
    
    char *new_string = (char *)calloc(MAX_TOKEN_LENGTH + 1, sizeof *new_string);
    Token_Array t_array;
    token_array_init(&t_array);
    
    #define char_current  string_test[i]
    #define char_next     string_test[i + 1]
    #define char_previous string_test[i - 1]

    for (int i = 0; i < length_string_test; ++i) { 
        /* IF the character is alphanumeric */

        if ((isalpha(char_current) || char_current == '_') || (isdigit(char_current) && (isalpha(char_previous) || char_previous == '_') )) { 
            strncat(new_string, &char_current, 1);

            /* Check what is ahead and see if we need to make the token yet. */
            if (!isalnum(char_next) && char_next != '_') {
                token_to_array_from_string(new_string, &t_array, T_NAME);
            }
        }

        /* IF the character is a digit */

        else if ((isdigit(char_current) ) ) { 
            strncat(new_string, &char_current, 1);
            
            if (!isdigit(char_next) && char_next != '.') {
                
                /*  TODO:
                    Check that only one '.' is in the new_string and that it does not occur as the last value,
                    otherwise raise an error
                */
                token_to_array_from_string(new_string, &t_array, T_NUMBER);
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
            
            if (char_next == '+') {
                strncat(new_string, &char_next, 1);
                token_to_array_from_string(new_string, &t_array, T_INCREMENT);
                i++;
                continue;
            }
            else {            
                token_to_array_from_string(new_string, &t_array, T_PLUS);
            } 
        }

        else if (char_current == '-') {
            strncat(new_string, &char_current, 1);

            if (char_next == '-') {
                strncat(new_string, &char_next, 1);
                token_to_array_from_string(new_string, &t_array, T_DECREMENT);                
                i++;
                continue;
            }
            else {                 
                token_to_array_from_string(new_string, &t_array, T_MINUS);
            }
        }

        else if (char_current == '*') {
            strncat(new_string, &char_current, 1);
            token_to_array_from_string(new_string, &t_array, T_TIMES);
        }

        else if (char_current == '/') {
            strncat(new_string, &char_current, 1);
            token_to_array_from_string(new_string, &t_array, T_DIVIDE);
        }
        else if (char_current == '(') {
            strncat(new_string, &char_current, 1);
            token_to_array_from_string(new_string, &t_array, T_LPAREN);
        }

        else if (char_current == ')') {
            strncat(new_string, &char_current, 1);
            token_to_array_from_string(new_string, &t_array, T_RPAREN);
        }

        else if (char_current == '=') {
            strncat(new_string, &char_current, 1);
            token_to_array_from_string(new_string, &t_array, T_EQUALS);
        }

        else if (char_current == ';') {
            strncat(new_string, &char_current, 1);
            token_to_array_from_string(new_string, &t_array, T_SEMICOLON);
        }

        else if (char_current == '%') {
            strncat(new_string, &char_current, 1);
            token_to_array_from_string(new_string, &t_array, T_MOD); 
        }

        else if (char_current == '#') {
            strncat(new_string, &char_current, 1);
            token_to_array_from_string(new_string, &t_array, T_POWER);
        }

        else if (char_current == '^') {
            strncat(new_string, &char_current, 1);
            token_to_array_from_string(new_string, &t_array, T_XOR);
        }

        else if (char_current == '~') {
            strncat(new_string, &char_current, 1);
            token_to_array_from_string(new_string, &t_array, T_BWNOT);
        }

        else if (char_current == '&') {
            strncat(new_string, &char_current, 1);   
            token_to_array_from_string(new_string, &t_array, T_BWAND);
        }

        else if (char_current == '|') {
            strncat(new_string, &char_current, 1);
            token_to_array_from_string(new_string, &t_array, T_BWOR);
        }
    
        else if (char_current == ' ') {
            continue;
        }
    
        else
            printf("Unrecognized character '%c'\n", char_current);
    }

    printf("\nTokens:\n");
    for (int k = 0; k < t_array.size; k++) 
        token_print(&(t_array).tokens[k]);
    
    free(new_string); 
    token_array_free(&t_array);
    
    printf("\n\n");

    return 0;
}
