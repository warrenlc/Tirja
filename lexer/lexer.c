#include <stdlib.h>
#include <stdio.h>
#include <ctype.h>
#include <string.h>
#include "lexer.h"

#define consume_current strncat(lexeme_new, &char_current, 1)
#define consume_next    strncat(lexeme_new, &char_next, 1)

Token*
token_create(Token_Type type, char *string_token)
{
    Token *token_new = malloc(sizeof (Token));
    if (token_new == NULL)
    {
        fprintf(stderr, "Failure allocating memory for token\n");
        return NULL;
    }
    char *lexeme_new  = malloc(sizeof(char) * (strlen(string_token) + 1));
    token_new->lexeme = strcpy(lexeme_new, string_token);
    token_new->type          = type;

    return token_new;
}

void
token_array_init(Token_Array *t_array)
{
    t_array->tokens   = NULL;
    t_array->size     = 0;
    t_array->capacity = 0;
}

int
token_array_add(Token_Array *t_array, Token *t)
{
    if (t_array->size == t_array->capacity)
    {
       int capacity_new = (t_array->capacity == 0) ? 1 : t_array->capacity * 2;
       Token *tokens_new = realloc(t_array->tokens, capacity_new * sizeof(Token));
       if (tokens_new == NULL)
       {
           fprintf(stderr, "Failed to resize while adding token %s\n", t->lexeme);
           return -1;
       }
       t_array->tokens = tokens_new;
       t_array->capacity = capacity_new;
    }
    /* Add the token to the array and increase the size of the array */
    t_array->tokens[t_array->size++] = *t;
    return 0;
}

void
token_array_free(Token_Array* t_array)
{
    for (int i = 0; i < t_array->size; i++) {
        /* free the memory made with strdup during token_create */
        free((t_array)->tokens[i].lexeme);
    }
    free(t_array->tokens);

    t_array->tokens = NULL;
    t_array->size = 0;
    t_array->capacity = 0;
}

char*
token_type_to_string(Token_Type type) 
{
    switch (type)
    {
        case T_SEMICOLON:       return "T_SEMICOLON";
        case T_LPAREN:          return "T_LPAREN";
        case T_RPAREN:          return "T_RPAREN";
        case T_INCREMENT:       return "T_INCREMENT";
        case T_DECREMENT:       return "T_DECREMENT";
        case T_MINUS:           return "T_MINUS";
        case T_BWNOT:           return "T_BWNOT";
        case T_POWER:           return "T_POWER";
        case T_TIMES:           return "T_TIMES";
        case T_DIVIDE:          return "T_DIVIDE";
        case T_MOD:             return "T_MOD";
        case T_PLUS:            return "T_PLUS";
        case T_BWLEFT:          return "T_BWLEFT";
        case T_BWRIGHT:         return "T_BWRIGHT";
        case T_BWAND:           return "T_BWAND";
        case T_XOR:             return "T_XOR";
        case T_BWOR:            return "T_BWOR";
        case T_NOT:             return "T_NOT";
        case T_AND:             return "T_AND";
        case T_OR:              return "T_OR";
        case T_LESS_T:          return "T_LESS_T";
        case T_GREATER_T:       return "T_GREATER_T";
        case T_EQUIVALENT:      return "T_EQUIVALENT";
        case T_NOT_EQUIVALENT:  return "T_NOT_EQUIVALENT";
        case T_LESS_T_EQ:       return "T_LESS_T_EQ";
        case T_GREATER_T_EQ:    return "T_GREATER_T_EQ";
        case T_TRUE:            return "T_TRUE";
        case T_FALSE:           return "T_FALSE";
        case T_NUMBER:          return "T_NUMBER";
        case T_NAME:            return "T_NAME";
        case T_EQUALS:          return "T_EQUALS";
        default:
        return "NOTHING";
    }
}

void 
token_print(Token *t)
{
    printf("Token:\n" 
            "\tType:  '%s'\n"
            "\tValue: '%s'\n\n", 
            token_type_to_string(t->type), t->lexeme); 
}

void 
token_to_array_from_string(char *lexeme, Token_Array *t_array, Token_Type type) 
{
    Token *t = token_create(type, lexeme);
    token_array_add(t_array, t);
    // printf("token '%s' added\n", lexeme);
    memset(lexeme, '\0', MAX_TOKEN_LENGTH);
    free(t);
}

void 
token_array_print(Token_Array *t_array)
{
    printf("\nTokens:\n");
    for (int k = 0; k < t_array->size; k++) 
        token_print(&(t_array)->tokens[k]);  
}

int
char_count(char c, char *lexeme)
{
    int length_lexeme = strlen(lexeme);
    int char_count = 0;
    for (int i = 0; i < length_lexeme; i++) {
        if (lexeme[i] == c) {
            char_count++;
        }
    }
    return char_count;
}

int 
char_at_position(int pos, char c, char *lexeme) 
{
    if (lexeme[pos] == c) {
        return 1;
    }
    return -1;
}

Token_Array
token_array_get_from_string(const char *string_input) 
{
    #define char_current  string_input[i]
    #define char_next     string_input[i + 1]
    #define char_previous string_input[i - 1]
    #define TOKEN_TO_ARRAY(type) token_to_array_from_string(lexeme_new, &t_array, type);

    int line_number = 1;
    int column_number = 1;
    //printf("Test string is: \n%s\n\n", string_input);
    
    int length_string_input = (int)strlen(string_input);
    
    char *lexeme_new = (char *)calloc(MAX_TOKEN_LENGTH + 1, sizeof *lexeme_new);
    Token_Array t_array;
    token_array_init(&t_array);
    


    for (int i = 0; i < length_string_input; ++i) { 
        // printf("staring another run on the loop, where lexeme_new has value: '%s'\n", lexeme_new);        
        // printf("The current character of the test string is: %c\n", char_current);

        /* IF the character is alphanumeric */

        if ((isalpha(char_current) || char_current == '_') || 
            (isdigit(char_current) && (isalpha(char_previous) || char_previous == '_') )) { 
            strncat(lexeme_new, &char_current, 1);
            
            /* Check what is ahead and see if we need to make the token yet. */
            if (!isalnum(char_next) && char_next != '_') {
                if (strncmp(lexeme_new, "True", 4) == 0) {
                    TOKEN_TO_ARRAY(T_TRUE);
                    //token_to_array_from_string(lexeme_new, &t_array, T_TRUE);
                }
                else if (strncmp(lexeme_new, "False", 5) == 0) {
                    token_to_array_from_string(lexeme_new, &t_array, T_FALSE);
                }
                else {
                    token_to_array_from_string(lexeme_new, &t_array, T_NAME);
                }
            }
        }

        /* IF the character is a digit */

        else if ((isdigit(char_current) ) ) { 
            strncat(lexeme_new, &char_current, 1);
            
            if (!isdigit(char_next) && char_next != '.') // && is_valid_number_lexeme(lexeme_new) == 1) 
                token_to_array_from_string(lexeme_new, &t_array, T_NUMBER);
            
        }

        else if (char_current == '.') {
            if (isdigit(char_previous) && isdigit(char_next) && char_count('.', lexeme_new) < 1)
                strncat(lexeme_new, &char_current, 1);
            else {
                char *token_bad = (char *)calloc(MAX_TOKEN_LENGTH + 1, sizeof *lexeme_new);
                strcpy(token_bad, lexeme_new);
                strncat(token_bad, &char_current, 1);
                printf("*************** ERROR! **************\n"
                       "Unexpected character '%c' at line: %d, column: %d.\n"
                       "Cannot make number token from '%s'.\n", 
                       char_current, line_number, column_number, token_bad);
                free(token_bad);
                break;
            }
        }

        else if (char_current == '+') {
            strncat(lexeme_new, &char_current, 1);
            
            if (char_next == '+') {
                strncat(lexeme_new, &char_next, 1);
                token_to_array_from_string(lexeme_new, &t_array, T_INCREMENT);
                i++;
                continue;
            }
            else {            
                token_to_array_from_string(lexeme_new, &t_array, T_PLUS);
            } 
        }

        else if (char_current == '-') {
            strncat(lexeme_new, &char_current, 1);

            if (char_next == '-') {
                strncat(lexeme_new, &char_next, 1);
                token_to_array_from_string(lexeme_new, &t_array, T_DECREMENT);                
                i++;
                continue;
            }
            else {                 
                token_to_array_from_string(lexeme_new, &t_array, T_MINUS);
            }
        }
        else if (char_current == '<') {
            strncat(lexeme_new, &char_current, 1);

            if (char_next == '<') {
                strncat(lexeme_new, &char_next, 1);
                token_to_array_from_string(lexeme_new, &t_array, T_BWLEFT);
                i++;
                continue;
            }
            else if (char_next == '=') {
                strncat(lexeme_new, &char_next, 1);
                token_to_array_from_string(lexeme_new, &t_array, T_LESS_T_EQ);
                i++;
                continue;
            }
            else {
                token_to_array_from_string(lexeme_new, &t_array, T_LESS_T);
            }
        } 

        else if (char_current == '>') {
            strncat(lexeme_new, &char_current, 1);

            if (char_next == '>') {
                strncat(lexeme_new, &char_next, 1);
                token_to_array_from_string(lexeme_new, &t_array, T_BWRIGHT);
                i++;
                continue;
            }
            else if (char_next == '=') {
                strncat(lexeme_new, &char_next, 1);
                token_to_array_from_string(lexeme_new, &t_array, T_GREATER_T_EQ);
                i++;
                continue;
            }
            else {
                token_to_array_from_string(lexeme_new, &t_array, T_GREATER_T);
            }
        }

        else if (char_current == '*') {
            strncat(lexeme_new, &char_current, 1);
            token_to_array_from_string(lexeme_new, &t_array, T_TIMES);
        }

        else if (char_current == '/') {
            strncat(lexeme_new, &char_current, 1);
            token_to_array_from_string(lexeme_new, &t_array, T_DIVIDE);
        }
        else if (char_current == '(') {
            strncat(lexeme_new, &char_current, 1);
            token_to_array_from_string(lexeme_new, &t_array, T_LPAREN);
        }

        else if (char_current == ')') {
            strncat(lexeme_new, &char_current, 1);
            token_to_array_from_string(lexeme_new, &t_array, T_RPAREN);
        }

        else if (char_current == '=') {
            strncat(lexeme_new, &char_current, 1);
            if (char_next == '=') {
                strncat(lexeme_new, &char_next, 1);
                token_to_array_from_string(lexeme_new, &t_array, T_EQUIVALENT);
                i++;
                continue;
            }
            else {
                token_to_array_from_string(lexeme_new, &t_array, T_EQUALS);
            }
        }

        else if (char_current == ';') {
            strncat(lexeme_new, &char_current, 1);
            token_to_array_from_string(lexeme_new, &t_array, T_SEMICOLON);
        }

        else if (char_current == '%') {
            strncat(lexeme_new, &char_current, 1);
            token_to_array_from_string(lexeme_new, &t_array, T_MOD); 
        }

        else if (char_current == '#') {
            strncat(lexeme_new, &char_current, 1);
            token_to_array_from_string(lexeme_new, &t_array, T_POWER);
        }

        else if (char_current == '^') {
            strncat(lexeme_new, &char_current, 1);
            token_to_array_from_string(lexeme_new, &t_array, T_XOR);
        }

        else if (char_current == '~') {
            strncat(lexeme_new, &char_current, 1);
            token_to_array_from_string(lexeme_new, &t_array, T_BWNOT);
        }

        else if (char_current == '&') {
            strncat(lexeme_new, &char_current, 1);  
            
            if (char_next == '&') {
                strncat(lexeme_new, &char_next, 1);
                token_to_array_from_string(lexeme_new, &t_array, T_AND);
                i++;
                continue;
            } 
            else {
                token_to_array_from_string(lexeme_new, &t_array, T_BWAND);
            }
        }

        else if (char_current == '|') {
            strncat(lexeme_new, &char_current, 1);

            if (char_next == '|') {
                strncat(lexeme_new, &char_next, 1);
                token_to_array_from_string(lexeme_new, &t_array, T_OR);
                i++;
                continue;
            }
            else {
                token_to_array_from_string(lexeme_new, &t_array, T_BWOR);
            }
        }

        else if (char_current == '!') {
            strncat(lexeme_new, &char_current, 1);

            if (char_next == '=') {
                strncat(lexeme_new, &char_next, 1);
                token_to_array_from_string(lexeme_new, &t_array, T_NOT_EQUIVALENT);
                i++; 
                continue;
            }
            else {
                token_to_array_from_string(lexeme_new, &t_array, T_NOT);
            }
        }

        else if (char_current == ' ') {
            column_number++;   
            continue;
        }
        else if (char_current == '\n') {
            line_number++;
        }
    
        else {
            printf("Unrecognized character '%c'\n", char_current);
            break;
        }
        column_number++;
    }
    free(lexeme_new);
    return t_array;
}

int 
token_match(size_t position, char *input_string, char *to_match) 
{
    size_t i;
    size_t end_to_match = strlen(to_match);
    for (i = 0; i < end_to_match; i++) {
    }
    return 11;
}

