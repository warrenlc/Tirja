#include <stdlib.h>
#include <stdio.h>
#include <ctype.h>

#include "lexer.h"
#define MAX_NUMBER_LENGTH 24
#define MAX_IDENTIFIER_LENGTH 24

Token*
token_create(Token_Type type, char *string_token, int line_number)
{
    Token *token_new = malloc(sizeof (Token));
    if (token_new == NULL)
    {
        fprintf(stderr, "Failure allocating memory for token\n");
        return NULL;
    }

    token_new->type          = type;
    token_new->lexeme = string_token;

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
token_array_add(Token_Array *t_array, Token t)
{
    if (t_array->size == t_array->capacity)
    {
       int capacity_new = (t_array->capacity == 0) ? 1 : t_array->capacity * 2;
       Token *tokens_new = realloc(t_array->tokens, capacity_new * sizeof(t));
       if (tokens_new == NULL)
       {
           fprintf(stderr, "Failed to resize while adding token %s\n", t.lexeme);
           return -1;
       }
       t_array->tokens = tokens_new;
       t_array->capacity = capacity_new;
    }
    /* Add the token to the array and increase the size of the array */
    t_array->tokens[t_array->size++] = t;
    return 0;
}

void
token_array_free(Token_Array* t_array)
{
    free(t_array->tokens);
    t_array->tokens = NULL;
    t_array->size = 0;
    t_array->capacity = 0;
}

Token_Array*
tokenize(const char *input)
{
    Token_Array *t_array = malloc(sizeof (Token_Array));
    token_array_init(t_array);

    State state_current = STATE_START;
    int line_number = 1;
    int column_number = 1;
    const char *char_current = input;

    while (state_current != STATE_END)
    {
        switch (state_current)
        {
            case STATE_START:
                if (*char_current == ';') {
                    state_current = STATE_SEMICOLON;
                    break;
                }
                else if (*char_current == '(') {
                    state_current = STATE_LPAREN;
                    break;
                }
                else if (*char_current == ')') {
                    state_current = STATE_RPAREN;
                    break;
                }
                else if (isalpha(*char_current)) {
                    state_current = STATE_IDENTIFIER;
                    break;
                }
                else if (isdigit(*char_current)) {
                    state_current = STATE_NUMBER;
                    break;
                }
                else if (*char_current == '\n') {
                    state_current = STATE_NEWLINE;
                    break;
                }
                else if (*char_current == '\0') {
                    state_current = STATE_END;
                    break;
                }
                else
                {
                    switch (*char_current)
                    {
                        case '+':
                            state_current = STATE_PLUS;
                            break;
                        case '-':
                            state_current = STATE_MINUS;
                            break;
                        case '~': case '<': case '>': case '&': case '|': case '^':
                            state_current = STATE_BW_OPERATION;
                            break;
                        case '#': case '*': case '/':
                            state_current = STATE_MULT_OPERATION;
                            break;
                        default:
                            fprintf(stderr, "Invalid character '%s'\n", char_current);
                            return t_array;

                    }
                    break;
                }
            case STATE_SEMICOLON:
            {
                Token token = { SEMICOLON, ";", line_number };
                token_array_add(t_array, token);
                state_current = STATE_START;
                break;
            }
            case STATE_LPAREN:
            {
                Token token = {LPAREN, "(", line_number};
                token_array_add(t_array, token);
                state_current = STATE_START;
                break;
            }
            case STATE_RPAREN:
            {
                Token token = {RPAREN, ")", line_number};
                token_array_add(t_array, token);
                state_current = STATE_START;
                break;
            }
            case STATE_PLUS:
                if (*char_current == '+')
                {
                    Token token = { INCREMENT, "++", line_number };
                    token_array_add(t_array, token);
                    state_current = STATE_START;
                }
                else
                {
                    Token token  = { PLUS, "+", line_number };
                    token_array_add(t_array, token);
                    state_current = STATE_START;
                }
                break;

            case STATE_MINUS:
                if (*char_current == '-')
                {
                    Token token = { DECREMENT, "--", line_number };
                    token_array_add(t_array, token);
                    state_current = STATE_START;
                }
                else
                {
                    Token token = { MINUS, "-", line_number };
                    token_array_add(t_array, token);
                    state_current = STATE_START;
                }
                break;

            case STATE_BW_OPERATION:
                if (*char_current == '<')
                {
                    Token token = { BW_LEFT, "<<", line_number };
                    token_array_add(t_array, token);
                    state_current = STATE_START;
                }
                else if (*char_current == '>')
                {
                    Token token = { BW_RIGHT, ">>", line_number };
                    token_array_add(t_array, token);
                    state_current = STATE_START;
                }
                else if (*char_current == '|')
                {
                    Token token = { BW_OR, "|", line_number };
                    token_array_add(t_array, token);
                    state_current = STATE_START;
                }
                else if (*char_current == '&')
                {
                    Token token = { BW_AND, "&", line_number };
                    token_array_add(t_array, token);
                    state_current = STATE_START;
                }
                else if (*char_current == '^')
                {
                    Token token = {XOR, "^", line_number };
                    token_array_add(t_array, token);
                    state_current = STATE_START;
                }
                else if (*char_current == '~')
                {
                    Token token = { BW_NOT, "~", line_number };
                    token_array_add(t_array, token);
                    state_current = STATE_START;
                }
                break;

            case STATE_MULT_OPERATION:
                if (*char_current == '*')
                {
                    Token token = { TIMES, "*", line_number };
                    token_array_add(t_array, token);
                    state_current = STATE_START;
                }
                else if (*char_current == '/')
                {
                    Token token = { DIV, "/", line_number };
                    token_array_add(t_array, token);
                    state_current = STATE_START;
                }
                else if (*char_current == '%')
                {
                    Token token = { MOD, "%", line_number };
                    token_array_add(t_array, token);
                    state_current = STATE_START;
                }
                break;

            case STATE_NUMBER:
                if (isdigit(*char_current))
                {
                    char number[MAX_NUMBER_LENGTH];
                    int number_length = 0;

                    while (isdigit(*char_current))
                    {
                        number[number_length++] = *char_current;
                        char_current++;
                        column_number++;
                    }
                    number[number_length] = '\0';

                    Token token = { NUMBER, number, line_number };
                    token_array_add(t_array, token);
                    state_current = STATE_START;
                }
                break;
            case STATE_IDENTIFIER:
                if (isalnum(*char_current) || *char_current == '_')
                {
                    char identifier[MAX_IDENTIFIER_LENGTH];
                    int identifier_length = 0;

                    Token token = { VAR_NAME, identifier, line_number };
                    token_array_add(t_array, token);
                    state_current = STATE_START;
                }
                break;
            case STATE_NEWLINE:
                line_number++;
                state_current = STATE_START;
                break;
            default:
                state_current = STATE_END;
        }
        char_current++;
        column_number++;
    }

    return t_array;
}
