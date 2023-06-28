#include <stdlib.h>
#include <stdio.h>
#include <ctype.h>
#include <string.h>

#include "lexer.h"

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
    memset(lexeme, '\0', MAX_TOKEN_LENGTH);
    free(t);
}

Token_Type 
token_type_get_single_char(const char lexeme) 
{
    //char value = &lexeme;
    switch (lexeme) {
        case '*':   return T_PLUS;
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
    #define CHAR_CURRENT            string_input[i]
    #define CHAR_NEXT               string_input[i + 1]
    #define CHAR_PREVIOUS           string_input[i - 1]
    #define CONSUME_CURRENT         strncat(lexeme_new, &CHAR_CURRENT, 1)
    #define CONSUME_NEXT            strncat(lexeme_new, &CHAR_NEXT, 1)
    #define TOKEN_TO_ARRAY(type)    token_to_array_from_string(lexeme_new, &t_array, type);

    /**
     *  Keep track of where we are in the input string.
    */
    int line_number     = 1;
    int column_number   = 1;

    int length_string_input = (int)strlen(string_input);
    
    char *lexeme_new = (char *)calloc(MAX_TOKEN_LENGTH + 1, sizeof *lexeme_new);
    
    /**
     *  Declare and initialize a dynamic array to store found tokens.
    */
    Token_Array t_array;
    token_array_init(&t_array);

    /**
     *  Begin scanning
    */
    for (int i = 0; i < length_string_input; ++i) { 
        
        if (is_identifier(CHAR_CURRENT, CHAR_PREVIOUS) == 1) {
            //strncat(lexeme_new, &CHAR_CURRENT, 1);
            CONSUME_CURRENT;
            /* Check what is ahead and see if we need to make the token yet. */
            if (!isalnum(CHAR_NEXT) && CHAR_NEXT != '_') {
                /**
                 *  If the next character is not alphanumeric or '_' then we have reached the end 
                 *  of the lexeme and can make a token and add it to the array
                 *  token_word_match() will return the proper Token_Type based on the value
                 *  of lexeme_new.
                */
                TOKEN_TO_ARRAY(token_word_match(lexeme_new));
            }
        }

        /* IF the character is a digit */
        else if ((isdigit(CHAR_CURRENT) ) ) { 
            CONSUME_CURRENT; //strncat(lexeme_new, &CHAR_CURRENT, 1);
            if (!isdigit(CHAR_NEXT) && CHAR_NEXT != '.')  
                TOKEN_TO_ARRAY(T_NUMBER);//token_to_array_from_string(lexeme_new, &t_array, T_NUMBER);   
        }

        else if (CHAR_CURRENT == '.') {
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
                break; /* Stop scanning */ 
            }
        
        }

        else if (CHAR_CURRENT == '+') {
            CONSUME_CURRENT; //strncat(lexeme_new, &CHAR_CURRENT, 1);
            
            if (CHAR_NEXT == '+') {
                /* If the next character is also '+', then we have matched the increment operator '++' 
                 * Consume the next character and add the token to the array.
                 */
                CONSUME_NEXT; //strncat(lexeme_new, &CHAR_NEXT, 1);
                TOKEN_TO_ARRAY(T_INCREMENT); //token_to_array_from_string(lexeme_new, &t_array, T_INCREMENT);
                i++;        /* Advance the character (we also consumed the next character) */ 
                continue;   /* and start the next iteration */
            }
            else {            
                /* Otherwise it is a simple '+' character */ //token_to_array_from_string(lexeme_new, &t_array, T_PLUS);
                TOKEN_TO_ARRAY(T_PLUS);
            } 
        }

        else if (CHAR_CURRENT == '-') {
            CONSUME_CURRENT; //strncat(lexeme_new, &CHAR_CURRENT, 1);

            if (CHAR_NEXT == '-') {
                CONSUME_NEXT; //strncat(lexeme_new, &CHAR_NEXT, 1);
                TOKEN_TO_ARRAY(T_DECREMENT); //token_to_array_from_string(lexeme_new, &t_array, T_DECREMENT);                
                i++;        /* Advance the character */
                continue;   /* and start the next iteration */
            }
            else {                 
                TOKEN_TO_ARRAY(T_MINUS); //token_to_array_from_string(lexeme_new, &t_array, T_MINUS);
            }
        }

        else if (CHAR_CURRENT == '<') {
            CONSUME_CURRENT; //strncat(lexeme_new, &CHAR_CURRENT, 1);

            if (CHAR_NEXT == '<') {
                CONSUME_NEXT; //strncat(lexeme_new, &CHAR_NEXT, 1);
                TOKEN_TO_ARRAY(T_BWLEFT); //token_to_array_from_string(lexeme_new, &t_array, T_BWLEFT);
                i++;        /* Advance the character */
                continue;   /* and start the next iteration */
            }

            else if (CHAR_NEXT == '=') {
                strncat(lexeme_new, &CHAR_NEXT, 1);
                token_to_array_from_string(lexeme_new, &t_array, T_LESS_T_EQ);
                i++;
                continue;
            }

            else {
                token_to_array_from_string(lexeme_new, &t_array, T_LESS_T);
            }
        } 

        else if (CHAR_CURRENT == '>') {
            strncat(lexeme_new, &CHAR_CURRENT, 1);

            if (CHAR_NEXT == '>') {
                strncat(lexeme_new, &CHAR_NEXT, 1);
                token_to_array_from_string(lexeme_new, &t_array, T_BWRIGHT);
                i++;
                continue;
            }
            else if (CHAR_NEXT == '=') {
                strncat(lexeme_new, &CHAR_NEXT, 1);
                token_to_array_from_string(lexeme_new, &t_array, T_GREATER_T_EQ);
                i++;
                continue;
            }
            else {
                token_to_array_from_string(lexeme_new, &t_array, T_GREATER_T);
            }
        }

        else if (CHAR_CURRENT == '*') {
            strncat(lexeme_new, &CHAR_CURRENT, 1);
            token_to_array_from_string(lexeme_new, &t_array, T_TIMES);
        }

        else if (CHAR_CURRENT == '/') {
            strncat(lexeme_new, &CHAR_CURRENT, 1);
            token_to_array_from_string(lexeme_new, &t_array, T_DIVIDE);
        }
        else if (CHAR_CURRENT == '(') {
            strncat(lexeme_new, &CHAR_CURRENT, 1);
            token_to_array_from_string(lexeme_new, &t_array, T_LPAREN);
        }

        else if (CHAR_CURRENT == ')') {
            strncat(lexeme_new, &CHAR_CURRENT, 1);
            token_to_array_from_string(lexeme_new, &t_array, T_RPAREN);
        }

        else if (CHAR_CURRENT == '=') {
            strncat(lexeme_new, &CHAR_CURRENT, 1);
            if (CHAR_NEXT == '=') {
                strncat(lexeme_new, &CHAR_NEXT, 1);
                token_to_array_from_string(lexeme_new, &t_array, T_EQUIVALENT);
                i++;
                continue;
            }
            else {
                token_to_array_from_string(lexeme_new, &t_array, T_EQUALS);
            }
        }

        else if (CHAR_CURRENT == ';') {
            strncat(lexeme_new, &CHAR_CURRENT, 1);
            token_to_array_from_string(lexeme_new, &t_array, T_SEMICOLON);
        }

        else if (CHAR_CURRENT == '%') {
            strncat(lexeme_new, &CHAR_CURRENT, 1);
            token_to_array_from_string(lexeme_new, &t_array, T_MOD); 
        }

        else if (CHAR_CURRENT == '#') {
            strncat(lexeme_new, &CHAR_CURRENT, 1);
            token_to_array_from_string(lexeme_new, &t_array, T_POWER);
        }

        else if (CHAR_CURRENT == '^') {
            strncat(lexeme_new, &CHAR_CURRENT, 1);
            token_to_array_from_string(lexeme_new, &t_array, T_XOR);
        }

        else if (CHAR_CURRENT == '~') {
            strncat(lexeme_new, &CHAR_CURRENT, 1);
            token_to_array_from_string(lexeme_new, &t_array, T_BWNOT);
        }

        else if (CHAR_CURRENT == '&') {
            strncat(lexeme_new, &CHAR_CURRENT, 1);  
            
            if (CHAR_NEXT == '&') {
                strncat(lexeme_new, &CHAR_NEXT, 1);
                token_to_array_from_string(lexeme_new, &t_array, T_AND);
                i++;
                continue;
            } 
            else {
                token_to_array_from_string(lexeme_new, &t_array, T_BWAND);
            }
        }

        else if (CHAR_CURRENT == '|') {
            strncat(lexeme_new, &CHAR_CURRENT, 1);

            if (CHAR_NEXT == '|') {
                strncat(lexeme_new, &CHAR_NEXT, 1);
                token_to_array_from_string(lexeme_new, &t_array, T_OR);
                i++;
                continue;
            }
            else {
                token_to_array_from_string(lexeme_new, &t_array, T_BWOR);
            }
        }

        else if (CHAR_CURRENT == '!') {
            strncat(lexeme_new, &CHAR_CURRENT, 1);

            if (CHAR_NEXT == '=') {
                strncat(lexeme_new, &CHAR_NEXT, 1);
                token_to_array_from_string(lexeme_new, &t_array, T_NOT_EQUIVALENT);
                i++; 
                continue;
            }
            else {
                token_to_array_from_string(lexeme_new, &t_array, T_NOT);
            }
        }

        else if (CHAR_CURRENT == ' ') {
            column_number++;   
            continue;
        }
        else if (CHAR_CURRENT == '\n') {
            line_number++;
        }
    
        else {
            printf("Unrecognized character '%c'\n", CHAR_CURRENT);
        }
        column_number++;
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

void error_message_print(int line_number, int column_number, char *lexeme, const char *current) 
{
    printf("*************** ERROR! **************\n"
        "Unexpected character '%c' at line: %d, column: %d.\n"
        "Cannot make token from '%s'.\n", 
        *current, line_number, column_number, lexeme);
}

int 
is_valid_decimal(const char *previous, const char *next, char *lexeme) 
{
    return (isdigit(*previous) && isdigit(*next) && (char_count('.', lexeme)) < 1);
}

Token_Array
token_array_create_from_string(const char *string_input) 
{
    #define CHAR_CURRENT            string_input[i]
    #define CHAR_NEXT               string_input[i + 1]
    #define CHAR_PREVIOUS           string_input[i - 1]
    #define CONSUME_CURRENT         strncat(lexeme_new, &CHAR_CURRENT, 1)
    #define CONSUME_NEXT            strncat(lexeme_new, &CHAR_NEXT, 1)
    #define TOKEN_TO_ARRAY(type)    token_to_array_from_string(lexeme_new, &t_array, type);

    /**
     *  Keep track of where we are in the input string.
    */
    int line_number     = 1;
    int column_number   = 1;

    int length_string_input = (int)strlen(string_input);
    
    char *lexeme_new = (char *)calloc(MAX_TOKEN_LENGTH + 1, sizeof *lexeme_new);
    
    /**
     *  Declare and initialize a dynamic array to store found tokens.
    */
    Token_Array t_array;
    token_array_init(&t_array);

    /**
     *  Begin scanning
    */
    for (int i = 0; i < length_string_input; ++i) {  
        switch (CHAR_CURRENT)
        {
        case 'A':
        case 'B':
        case 'C':
        case 'D':
        case 'E':
        case 'F':
        case 'G':
        case 'H':
        case 'I':
        case 'J':
        case 'K':
        case 'L':
        case 'M':
        case 'N':
        case 'O':
        case 'P':
        case 'Q':
        case 'R':
        case 'S':
        case 'T':
        case 'U':
        case 'V':
        case 'W':
        case 'X':
        case 'Y':
        case 'Z':
        case 'a':
        case 'b':
        case 'c':
        case 'd':
        case 'e':
        case 'f':
        case 'g':
        case 'h':
        case 'i':
        case 'j':
        case 'k':
        case 'l':
        case 'm':
        case 'n':
        case 'o':
        case 'p':
        case 'q':
        case 'r':
        case 's':
        case 't':
        case 'u':
        case 'v':
        case 'w':
        case 'x':
        case 'y':
        case 'z':
        case '_': 
        case '0':
        case '1':
        case '2':
        case '3':
        case '4':
        case '5':
        case '6':
        case '7':
        case '8':
        case '9': {
            CONSUME_CURRENT;
            if (is_identifier(CHAR_CURRENT, CHAR_PREVIOUS) == 1 && !isalnum(CHAR_NEXT) && '_' != CHAR_NEXT) {
                if (!isalnum(CHAR_NEXT) && CHAR_NEXT != '_') {
                    TOKEN_TO_ARRAY(token_word_match(lexeme_new));
                }
            }
            else if (isdigit(CHAR_CURRENT) && (!isdigit(CHAR_NEXT) && '.' != '.')) {
                TOKEN_TO_ARRAY(T_NUMBER);
            }
            break;
        }
        case '.': {
            CONSUME_CURRENT;
            if (!(isdidigt(CHAR_PREVIOUS) && isdigit(CHAR_NEXT) && (char_count('.', lexeme_new) < 1))) {
                error_message_print(line_number, column_number, lexeme_new, &CHAR_CURRENT);
                exit;
            }
            break;
        }
        case '+': {
            CONSUME_CURRENT;
            if ('+' == CHAR_NEXT) {
                CONSUME_NEXT;
                TOKEN_TO_ARRAY(T_INCREMENT);
                i++;
                
            }
            else {
                TOKEN_TO_ARRAY(T_PLUS);
            }
            break;
        }
        case '-': {
            CONSUME_CURRENT;
            if ('-' == CHAR_NEXT) {
                CONSUME_NEXT;
                TOKEN_TO_ARRAY(T_DECREMENT);
                i++;
            }
            else {
                TOKEN_TO_ARRAY(T_MINUS);
            }
            break;
        }
        case '<': {
            CONSUME_CURRENT;
            if ('<' == CHAR_NEXT) {
                CONSUME_NEXT;
                TOKEN_TO_ARRAY(T_BWLEFT);
                i++;
            }
            else if ('=' == CHAR_NEXT) {
                CONSUME_NEXT;
                TOKEN_TO_ARRAY(T_LESS_T_EQ);
                i++;
            }
            else {
                TOKEN_TO_ARRAY(T_LESS_T);
            }
            break;
        }

        default:
            break;
        }
    }
}