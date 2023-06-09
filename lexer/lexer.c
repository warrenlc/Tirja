#include <stdlib.h>
#include <stdio.h>

#include "lexer.h"


token*
token_create(token_type type, char *string_token, int line_number)
{
    token *token_new = malloc(sizeof (token));
    if (token_new == NULL)
    {
        fprintf(stderr, "Failure allocating memory for token\n");
        return NULL;
    }

    token_new->type          = type;
    token_new->token_literal = string_token;
    token_new->line_number   = line_number;

    return token_new;
}

void
token_array_init(token_array *t_array)
{
    t_array->tokens   = NULL;
    t_array->size     = 0;
    t_array->capacity = 0;
}

int
token_array_add(token_array *t_array, token t)
{
    if (t_array->size == t_array->capacity)
    {
       int capacity_new = (t_array->capacity == 0) ? 1 : t_array->capacity * 2;
       token *tokens_new = realloc(t_array->tokens, capacity_new * sizeof(t));
       if (tokens_new == NULL)
       {
           fprintf(stderr, "Failed to resize while adding token %s\n", t.token_literal);
           return -1;
       }
       t_array->tokens = tokens_new;
       t_array->capacity = capacity_new;
    }
    /* Add the token to the array and increase the size of the array */
    t_array->tokens[t_array->size++] = t;
    return 0;
}

void token_array_free(token_array* t_array) {
    free(t_array->tokens);
    t_array->tokens = NULL;
    t_array->size = 0;
    t_array->capacity = 0;
}
