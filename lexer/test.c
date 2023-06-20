#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <ctype.h>

#define MAX_TOKEN_LENGTH 16

/* The types a token can be. */
typedef enum Type_Token{
    T_NUMBER,
    T_PLUS,
    T_SEMICOLON
}Type_Token;

/* A Token has a type and a string representation, aka 'lexeme' */
typedef struct Token {
    Type_Token type;
    char *lexeme; /* */
}Token;

/* dynamic array for holding matched tokens */
typedef struct Token_Array
{
    Token *tokens;
    int size;
    int capacity;
}Token_Array;


Token*
token_create(Type_Token type, char *string_token)
{
    Token *token_new = malloc(sizeof (Token));
    if (token_new == NULL)
    {
        fprintf(stderr, "Failure allocating memory for token\n");
        return NULL;
    }

    token_new->type          = type;
    token_new->lexeme = strdup(string_token);

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

void token_print(Token *t)
{
    printf("Token string literal is: '%s'\n",
           t->lexeme); 
}


int main(void) {
    const char *string_test = "a = 66+55 - 7;";
    printf("Test string is: %s\n", string_test);
    
    int length_string_test = (int)strlen(string_test);
    // int counter = 0;
    // while (c != NULL && *c != '\0') {
    //     printf("counter is at position: %d\n", counter);
    //     printf("%s\n", c);
    //     ++c;
    //     counter++;
    // }
    
    
    // for (char character = *string_test; character != '\0'; character = *++string_test) {
    //     printf("string test: %s\n", string_test);
    //     putchar(character);
    //     printf("\n"); // Do something with character.
    // }
    
    char new_string[MAX_TOKEN_LENGTH];
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
                memset(new_string, '\0', sizeof new_string);
                free(t);
            }
            printf("\n\n\n");
        }
        // else {
        //     Token *t = token_create(T_NUMBER, new_string); 
        //     token_array_add(&t_array, t);
        //     printf("token added\n");
        //     memset(new_string, '\0', sizeof new_string);
        // }
        
        
        printf("The next character of the test string is: %c\n\n\n", string_test[i + 1]);
    }
    
    printf("and the last non-null character was: %c\n", string_test[length_string_test - 1]);

    printf("the tokens:\n");
    for (int k = 0; k < t_array.size; k++) {
        token_print(&(t_array).tokens[k]);
        // free(&(t_array).tokens[k].lexeme);
        // free(&(t_array).tokens[k]);
    }
    
    token_array_free(&t_array);
    return 0;
}
