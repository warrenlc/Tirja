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

void 
token_print(Token *t)
{
    printf("Token string literal is: '%s'\n",
           t->lexeme); 
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

int
count_char(char c, char *lexeme)
{
    int length_lexeme = strlen(lexeme);
    int count_char = 0;
    for (int i = 0; i < length_lexeme; i++) {
        if (lexeme[i] == c) {
            count_char++;
        }
    }
    return count_char;
}

int 
char_at_position(int pos, char c, char *lexeme) 
{
    if (lexeme[pos] == c) {
        return 1;
    }
    return -1;
}
