#include <stdio.h>
#include "parser.h"

/* Functions */

int
token_array_parse(Token_Array *t_array)
{
   int index = 0;
   for (index; index < t_array->size; index++)
   {
        if (is_valid_rule(t_array, index) != 1) 
        {
            fprintf(stderr, "Syntax error, could not match rule at token %s\n", t_array->tokens[index].lexeme);
            return -1; /* Failure */
        }
   } 
   return 1;
}

int
is_valid_rule(Token_Array *t_array, int index)
{
   return is_program_match(t_array, index); 
}

int 
is_program_match(Token_Array *t_array, int index)
{
    return is_expression_list_match(t_array, index);
}

int 
is_expression_list_match(Token_Array *t_array, int index)
{
    return is_expression_match(t_array, index);
}

int
is_numeric_expression_match(Token_Array *t_array, int index)
{   
    switch(t_array->tokens[index].type)
    {
        case T_NAME:
            break;
        case T_NUMBER:
            if (is_postfix_unary_operator(t_array->tokens[index + 1].type) == 1 
                || (t_array->tokens[index + 1].type == T_SEMICOLON))
            {
                return 1; /* Matches */
            }

        case T_INCREMENT: 
        case T_DECREMENT:
            return is_numeric_expression_match(t_array, index + 1);
        case T_MINUS: 
        case T_BWNOT:
            return is_numeric_expression_match(t_array, index + 1);
        case T_LPAREN:
            return is_numeric_expression_match(t_array, index + 1);
        default:
            fprintf(stderr, "Numeric expression not matched.\n");
            return -1; /* Failed to match */
    }

}

int
is_prefix_unary_operator(Token_Type type)
{
    switch(type)
    {
        case T_INCREMENT:
        case T_DECREMENT:
        case T_MINUS:
        case T_BWNOT:
            return 1; /* Success */
        default:
            return -1; /* Failure */
    }
}

int is_postfix_unary_operator(Token_Type type)
{
    switch(type)
    {
        case T_INCREMENT:
        case T_DECREMENT:
            return 1; /* Success */
        default:
            return -1; /* Failure */
    }
}

int is_binary_operator(Token_Type type)
{
    switch(type)
    {
        case T_POWER:
        case T_TIMES:
        case T_DIVIDE:
        case T_MOD:
        case T_PLUS:
        case T_MINUS:
        case T_BWLEFT:
        case T_BWRIGHT:
        case T_BWAND:
        case T_XOR:
        case T_BWOR:
            return 1; /* Success */
        default:
            return -1; /* Failure */
    }
}
