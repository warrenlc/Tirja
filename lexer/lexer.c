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
    char *lexeme_new  = malloc(sizeof(strlen(string_token) + 1));
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

void token_print(Token *t)
{
    printf("Token string literal is: '%s'\n",
           t->lexeme); 
}







// #define MAX_NUMBER_LENGTH 24
// #define MAX_IDENTIFIER_LENGTH 24

// Token*
// token_create(Token_Type type, char *string_token, int line_number)
// {
//     Token *token_new = malloc(sizeof (Token));
//     if (token_new == NULL)
//     {
//         fprintf(stderr, "Failure allocating memory for token\n");
//         return NULL;
//     }

//     token_new->type          = type;
//     token_new->lexeme = string_token;

//     return token_new;
// }

// void
// token_array_init(Token_Array *t_array)
// {
//     t_array->tokens   = NULL;
//     t_array->size     = 0;
//     t_array->capacity = 0;
// }

// int
// token_array_add(Token_Array *t_array, Token t)
// {
//     if (t_array->size == t_array->capacity)
//     {
//        int capacity_new = (t_array->capacity == 0) ? 1 : t_array->capacity * 2;
//        Token *tokens_new = realloc(t_array->tokens, capacity_new * sizeof(t));
//        if (tokens_new == NULL)
//        {
//            fprintf(stderr, "Failed to resize while adding token %s\n", t.lexeme);
//            return -1;
//        }
//        t_array->tokens = tokens_new;
//        t_array->capacity = capacity_new;
//     }
//     /* Add the token to the array and increase the size of the array */
//     t_array->tokens[t_array->size++] = t;
//     return 0;
// }

// void
// token_array_free(Token_Array* t_array)
// {
//     free(t_array->tokens);
//     t_array->tokens = NULL;
//     t_array->size = 0;
//     t_array->capacity = 0;
// }

