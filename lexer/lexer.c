#include <stdlib.h>
#include <stdio.h>
#include <ctype.h>
#include <string.h>

#include "lexer.h"

Token*
token_create(Token_Type type, char *string_token)
{
    /**
     * Allocate a new token and set lexeme and type to the given parameters 
     */
    Token *token_new = malloc(sizeof (Token));
    if (token_new == NULL)
    {
        fprintf(stderr, "Failure allocating memory for token\n");
        return NULL;
    }
    char *lexeme_new  = malloc(sizeof(char) * (strlen(string_token) + 1)); /* Free this in Token_Array_Free */
    token_new->lexeme = strcpy(lexeme_new, string_token); 
    token_new->type   = type;

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
    /* Returns 1 or -1 if successful at adding a Token to a Token_Array */

    /* Check capacity and resize the array */
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
    return 1;
}


void
token_array_free(Token_Array* t_array)
{
    /**
     * Free the memory for a token array
     */
    for (int i = 0; i < t_array->size; i++) {
        /* free the memory made with malloc/strcpy for the lexme during token_create */
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
    /**
     * Return a string literal representation of a given Token_Type enum
     */
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
        case T_IF:              return "T_IF";
        case T_DO:              return "T_DO";
        case T_FOR:             return "T_FOR";
        case T_ELSE:            return "T_ELSE";
        case T_THEN:            return "T_THEN";
        case T_WHILE:           return "T_WHILE";
        case T_STRING:          return "T_STRING";
        case T_NOTHING:         return "T_NOTHING";
        case T_LBRACE:          return "T_LBRACE";
        case T_RBRACE:          return "T_RBRACE";
        case T_FUNC_DEC:        return "T_FUNC_DEC";
        case T_DOLLAR:          return "T_DOLLAR";
        case T_LSQUARE:         return "T_LSQUARE";
        case T_RSQUARE:         return "T_RSQUARE";
        case T_LET:             return "T_LET";

        default:
        return "NOTHING";
    }
}

void 
token_print(Token *t)
{
    /**
     * Display a token's type and value to stdin. 
     */
    printf("Token:\n" 
            "\tType:  '%s'\n"
            "\tValue: '%s'\n\n", 
            token_type_to_string(t->type), t->lexeme); 
}

void 
token_to_array_from_string(char *lexeme, Token_Array *t_array, Token_Type type) 
{
    /**
     * Create and append a Token to a Token_Array given a lexeme, 
     * Token_Type and Token_Array
     */
    Token *t = token_create(type, lexeme);
    token_array_add(t_array, t);
    memset(lexeme, '\0', MAX_TOKEN_LENGTH);
    free(t);
}

Token_Type 
token_type_get_single_char(const char lexeme) 
{
    /**
     * Return the Token_Type associated with Tokens whos value is
     * a single character. 
     */
    switch (lexeme) {
        case '*':   return T_TIMES;
        case '/':   return T_DIVIDE;
        case '(':   return T_LPAREN;
        case ')':   return T_RPAREN;
        case ';':   return T_SEMICOLON;
        case '%':   return T_MOD;
        case '#':   return T_POWER;
        case '^':   return T_XOR;
        case '~':   return T_BWNOT;
    
    default:
        break;
    }
    return T_NOTHING;
}

void 
token_array_print(Token_Array *t_array)
{
    /**
     * Display the contents of a Token_Array to stdin. 
     */
    printf("\nTokens:\n");
    for (int k = 0; k < t_array->size; k++) 
        token_print(&(t_array)->tokens[k]);  
}

int
char_count(char c, char *lexeme)
{
    /**
     * Return the number of occurrences of a given character in a given lexeme string
     */
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
    /**
     * Return true or false (1 or -1) if a given character is at a given
     * position in a given lexeme.
     */
    if (lexeme[pos] == c) {
        return 1; /* True */
    }
    return -1;
}

Token_Array
token_array_get_from_string(const char *string_input) 
{
    /**
     * Return a Token_Array comprised of the tokens found in the given
     * input string.
     * */
    #define CHAR_CURRENT            string_input[i]      /* The current character while looping through the string */
    #define CHAR_NEXT               string_input[i + 1]  /* The next character */
    #define CHAR_PREVIOUS           string_input[i - 1]  /* The previous character */

    #define CONSUME_CURRENT         strncat(lexeme_new, &CHAR_CURRENT, 1) /* concatenate the current character to the new lexeme */
    #define CONSUME_NEXT            strncat(lexeme_new, &CHAR_NEXT, 1)    /* concatenate the next character to the new lexeme */

    /* Create a Token with given lexeme and Token_Type and add it to the Token_Array */
    #define TOKEN_TO_ARRAY(type)    token_to_array_from_string(lexeme_new, &t_array, type); 

    /**
     *  Keep track of where we are in the input string.
     */
    int line_number     = 1;
    int column_number   = 0;

    int length_string_input = (int)strlen(string_input);

    /**
     *  Declare and initialize a dynamic array to store found tokens.
     */
    Token_Array t_array;
    token_array_init(&t_array);

    /* Allocate memory (and initialize to '\0') a new string to represent the lexeme of a token */    
    char *lexeme_new = (char *)calloc(MAX_TOKEN_LENGTH + 1, sizeof *lexeme_new);
    if (lexeme_new == NULL) {
        fprintf(stderr, "Could not allocate for lexeme_new\n");
        exit(1);
    }

    /**
     *  Begin scanning
     */
    for (int i = 0; i < length_string_input; ++i) { 
        column_number++; 

        if (is_identifier(CHAR_CURRENT, CHAR_PREVIOUS) == 1) {
            i = token_identifier_get(lexeme_new, string_input, i, &t_array);
            continue;
        }

        /* If the character is a digit */
        else if ((isdigit(CHAR_CURRENT) ) ) { 
            CONSUME_CURRENT; 
            if (!isdigit(CHAR_NEXT) && CHAR_NEXT != '.')  
                TOKEN_TO_ARRAY(T_NUMBER);
                continue;
        }

        else if ('.' == CHAR_CURRENT) {
            /**
             * A valid decimal point is preceeded by a digit, followed by a digit and occurs only once
             * in a lexeme representing a number. 
             */
            int is_valid_decimal = isdigit(CHAR_PREVIOUS) && isdigit(CHAR_NEXT) && (char_count('.', lexeme_new) < 1);
            
            CONSUME_CURRENT;  
            /* Consume it regardless, so we can include the bad decimal (if it is bad) 
             * in the error message 
             */
            if (!is_valid_decimal) { 
                error_message_print(line_number, column_number, lexeme_new, &CHAR_CURRENT); 
                memset(lexeme_new, '\0', MAX_TOKEN_LENGTH);
                break; /* Stop scanning */ 
            }
            continue;
        }

        else if ('+' == CHAR_CURRENT) {
            CONSUME_CURRENT; 
            
            if ('+' == CHAR_NEXT) {
                /* If the next character is also '+', then we have matched the increment operator '++' 
                 * Consume the next character and add the token to the array.
                 */
                CONSUME_NEXT; 
                TOKEN_TO_ARRAY(T_INCREMENT); 
                i++;        /* Advance the character (we also consumed the next character) */ 
                column_number++; /* Column number increases also as we jump to the next character */
            }
            else {            
                /* Otherwise it is a simple '+' character */ 
                TOKEN_TO_ARRAY(T_PLUS);
            }
            continue; /* Start the next iteration */
        }

        else if ('-' == CHAR_CURRENT) {
            CONSUME_CURRENT; 

            if ('-' == CHAR_NEXT) {
                CONSUME_NEXT; 
                TOKEN_TO_ARRAY(T_DECREMENT); 
                i++;        /* Advance the character */
                column_number++;
            }
            else {                 
                TOKEN_TO_ARRAY(T_MINUS); 
            }
            continue; /* Start the next iteration */
        }

        else if ('<' == CHAR_CURRENT) {
            CONSUME_CURRENT; 

            /* If the next character is also '<' then we have the bitwise left shift operator */
            if ('<' == CHAR_NEXT) {
                CONSUME_NEXT; 
                TOKEN_TO_ARRAY(T_BWLEFT); 
                i++;        /* Advance the character */
                column_number++;
            }

            /* If the next character is '=' then we have the <= operator */
            else if ('=' == CHAR_NEXT) {
                CONSUME_NEXT;
                TOKEN_TO_ARRAY(T_LESS_T_EQ);
                i++;        /* Adveance the character */
                column_number++;
            }

            else {
                /* Otherwise we simply have the less than operator */
                TOKEN_TO_ARRAY(T_LESS_T); 
            }
            continue;
        } 

        else if ('>' == CHAR_CURRENT) {
            CONSUME_CURRENT;

            /* If the next character is '>' then we have the bitwise right shift operator */
            if ('>' == CHAR_NEXT) {
                CONSUME_NEXT;
                TOKEN_TO_ARRAY(T_BWRIGHT);
                i++;        /* Adveance the character */
                column_number++;
            }

            /* If the next character is '=' then we have the >= operator */
            else if ('=' == CHAR_NEXT) {
                CONSUME_NEXT;
                TOKEN_TO_ARRAY(T_GREATER_T_EQ);
                i++;        /* Advance the character */
                column_number++;
            }
            
            else {
                /* Otherwise we simply have the greater than operator */
                TOKEN_TO_ARRAY(T_GREATER_T);
            }
            continue;
        }

        else if ('*' == CHAR_CURRENT) {
            CONSUME_CURRENT;
            TOKEN_TO_ARRAY(T_TIMES);
            continue;
        }
        
        else if ('/' == CHAR_CURRENT) {
            CONSUME_CURRENT;
            TOKEN_TO_ARRAY(T_DIVIDE);
            continue;
        }

        else if ('(' == CHAR_CURRENT) {
            CONSUME_CURRENT;
            TOKEN_TO_ARRAY(T_LPAREN);
            continue;
        }

        else if (')' == CHAR_CURRENT) {
            CONSUME_CURRENT;
            TOKEN_TO_ARRAY(T_RPAREN);
            continue;
        }

        else if ('{' == CHAR_CURRENT) {
            CONSUME_CURRENT;
            TOKEN_TO_ARRAY(T_LBRACE);
            continue;
        }

        else if ('}' == CHAR_CURRENT) {
            CONSUME_CURRENT;
            TOKEN_TO_ARRAY(T_RBRACE);
            continue;
        }

        else if (':' == CHAR_CURRENT) {
            if (':' == CHAR_NEXT) {
                CONSUME_CURRENT;
                CONSUME_NEXT;
                TOKEN_TO_ARRAY(T_FUNC_DEC);
            }
            continue;
        }

        else if ('$' == CHAR_CURRENT) {
            CONSUME_CURRENT;
            TOKEN_TO_ARRAY(T_DOLLAR);
            continue;
        }

        else if ('[' == CHAR_CURRENT) {
            CONSUME_CURRENT;
            TOKEN_TO_ARRAY(T_LSQUARE);
            continue;
        }

        else if (']' == CHAR_CURRENT) {
            CONSUME_CURRENT;
            TOKEN_TO_ARRAY(T_RSQUARE);
            continue;
        }

        else if ('=' == CHAR_CURRENT) {
            CONSUME_CURRENT;
            /* If the next char is also '=' then we have the logical '==' operator */
            if ('=' == CHAR_NEXT) {
                CONSUME_NEXT;
                TOKEN_TO_ARRAY(T_EQUIVALENT);
                i++;        /* Advance to the next character */
                column_number++;
            }
            else {
                /* Otherwise we have the assignment operator '=' */
                TOKEN_TO_ARRAY(T_EQUALS);
            }
            continue;
        }

        else if (';' == CHAR_CURRENT) {
            CONSUME_CURRENT;
            TOKEN_TO_ARRAY(T_SEMICOLON);
            continue;
        }

        else if ('%' == CHAR_CURRENT) {
            CONSUME_CURRENT;
            TOKEN_TO_ARRAY(T_MOD);
            continue;
        }

        else if ('#' == CHAR_CURRENT) {
            CONSUME_CURRENT;
            TOKEN_TO_ARRAY(T_POWER);
            continue;
        }

        else if ('^' == CHAR_CURRENT) {
            CONSUME_CURRENT;
            TOKEN_TO_ARRAY(T_XOR);
            continue;
        }

        else if ('~' == CHAR_CURRENT) {
            CONSUME_CURRENT;
            TOKEN_TO_ARRAY(T_BWNOT);
            continue;
        }

        else if ('&' == CHAR_CURRENT) {
            CONSUME_CURRENT;
            
            /* If the next character is also '&' then we have the conjunction ('and') operator */ 
            if ('&' == CHAR_NEXT) {
                CONSUME_NEXT;
                TOKEN_TO_ARRAY(T_AND);
                i++;        /* Advance to the next character */
                column_number++;
            }
            /* Otherwise we have the bitwise and operator */ 
            else {
                TOKEN_TO_ARRAY(T_BWAND);
            }
            continue;
        }

        else if ('|' == CHAR_CURRENT) {
            CONSUME_CURRENT;

            /* If the next character is also '|' then we have the disjunction ('or') operator */
            if ('|' == CHAR_NEXT) {
                CONSUME_NEXT;
                TOKEN_TO_ARRAY(T_OR);
                i++;        /* Advance to the next character */
                column_number++;
            }
            /* Otherwise we have the bitwise or operator */
            else {
                TOKEN_TO_ARRAY(T_BWOR);
            }
            continue;
        }

        else if ('!' == CHAR_CURRENT) {
            CONSUME_CURRENT;
            /* If next character is '=' we have the logical non equivalence operator */
            if ('=' == CHAR_NEXT) {
                CONSUME_NEXT;
                TOKEN_TO_ARRAY(T_NOT_EQUIVALENT);
                i++;        /* Advance to the next character */ 
                column_number++;
            }
            /* Otherwise we have the unary logical 'not' operator */
            else {
                TOKEN_TO_ARRAY(T_NOT);
            }
            continue;
        }

        else if ('"' == CHAR_CURRENT) {
            i = token_string_get(lexeme_new, string_input, i, &t_array) + 1;
            continue;
        }

        else if (' ' == CHAR_CURRENT) {
            /* For spaces, simply continue to the next character */
            continue;
        }
        else if ('\n' == CHAR_CURRENT) {
            /* Advance the line number and continue */    
            line_number++;
            column_number = 0;
            continue;
        }
    
        else {
            /* If the current character is none of these, print a message and advance */
            printf("Unrecognized character '%c' at line: %d , column %d\n", CHAR_CURRENT, line_number, column_number);
        }
    
    }

    free(lexeme_new);
    
    #undef CHAR_CURRENT    
    #undef CHAR_PREVIOUS
    #undef CHAR_NEXT
    #undef TOKEN_TO_ARRAY
    
    return t_array;
}

Token_Type 
token_word_match(char *lexeme) 
{
    int size_lexeme = strlen(lexeme);
    switch(size_lexeme) {
        case 2:
            if (strncmp (lexeme, "if", 2) == 0)
                return T_IF;
            if (strncmp (lexeme, "do", 2) == 0)
                return T_DO;
            break;
        case 3:
            if (strncmp (lexeme, "for", 3) == 0)
                return T_FOR;
            if (strncmp (lexeme, "let", 3) == 0)
                return T_LET;
            break;
        case 4:
            if (strncmp(lexeme, "else", 4) == 0)
                return T_ELSE;
            if (strncmp(lexeme, "then", 4) == 0)
                return T_THEN;
            if (strncmp(lexeme, "True", 4) == 0)
                return T_TRUE;
            break;
        case 5:
            if (strncmp(lexeme, "while", 5) == 0)
                return T_WHILE;
            if (strncmp(lexeme, "False", 5) == 0)
                return T_FALSE;
            break;
        default:
            break; 
    }   
    return T_NAME;
}

int 
is_identifier(const char current, const char previous)
{
    if ((isalpha(current) || current == '_') ||
        (isdigit(current) && (isalpha(previous) || previous == '_')) )
        return 1;
    return -1;
}

int 
is_identifier_end(const char c)
{
    if (!isalnum(c) && '_' != c) 
    {
        return 1; /* true */
    }
    return -1; /* false */
}

int 
token_identifier_get(char *lexeme, const char *string_input, int index_current, Token_Array *t_array) 
{
    while (1) 
    {
        strncat(lexeme, &string_input[index_current], 1);
        if (is_identifier_end(string_input[index_current + 1]) == 1) 
        {
            token_to_array_from_string(lexeme, t_array, token_word_match(lexeme));
            break;
        }
        index_current++;
    }
    return index_current;
}

int
token_string_get(char *lexeme, const char *string_input, int index_current, Token_Array *t_array)
{
    while (1)
    {
        strncat(lexeme, &string_input[index_current], 1);
        if ('"' == string_input[index_current + 1]) {
            strncat(lexeme, &string_input[index_current + 1], 1);
            token_to_array_from_string(lexeme, t_array, T_STRING);
            break;
        }
        index_current++;
    }
    return index_current;
}

void error_message_print(int line_number, int column_number, char *lexeme, const char *current) 
{
    printf("*************** ERROR! **************\n"
        "Unexpected character '%c' at line: %d, column: %d.\n"
        "Cannot make token from '%s'.\n", 
        *current, line_number, column_number, lexeme);
}
