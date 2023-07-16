#include <stdio.h>
#include "parser.h"

/* Functions */

int
token_array_parse(Token_Array *t_array)
{
    int index = 0;
    if (is_valid_rule(t_array, index) != 1) 
    {
        fprintf(stderr, "Syntax error, could not match rule at token <%s %s>\n", token_type_to_string(t_array->tokens[index].type), t_array->tokens[index].lexeme);
        return 0; /* Failure */
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
is_expression_match(Token_Array *t_array, int index)
{
    if (is_numeric_expression_match(t_array, index) == 1)
    {
        return 1;
    }
    return 0;
}

int
is_numeric_expression_match(Token_Array *t_array, int index)
{  
    #define type_current    t_array->tokens[index].type
    #define type_next       t_array->tokens[index + 1].type
    switch(type_current)
    {
        case T_NUMBER:
            fprintf(stdout, "have a number...\n");
            if (is_postfix_unary_operator(t_array, index + 1)) { return 1; }
            if (is_binary_operator(t_array, index + 1)) { 
                fprintf(stdout, "checking for binary op\n");
                return is_numeric_expression_match(t_array, index + 2); }
            if (T_SEMICOLON == type_next) { return 1; }
            return 0;
        case T_NAME:
            fprintf(stdout, "performing lookup for %s\n", t_array->tokens[index].lexeme);
        case T_INCREMENT:
        case T_DECREMENT:
        case T_MINUS:
        case T_BWNOT:
            if (numeric_expression_found(t_array, index + 1)) { return 1; }
            return 0;
        default:
            break;
    }
    return 0;

    // fprintf(stdout, "checking rule 1\n"); 
    // if (is_postfix_unary_operator(t_array, index + 1) == 1 && numeric_expression_found(t_array, index) == 1)
    // {
    //     fprintf(stdout, "matched numeric expression with postfix unary operator\n");
    //     return 1;
    // }
    
    // fprintf(stdout, "checking rule 2\n");
    // if (is_prefix_unary_operator(t_array, index) && is_numeric_expression_match(t_array, index + 1))
    // {
    //     fprintf(stdout, "matched prefix unary operator and numeric expression\n"); 
    //     return 1;
    // }

    // fprintf(stdout, "checking rule 3\n"); 
    // if (numeric_expression_found(t_array, index) && is_binary_operator(t_array, index + 1) && is_binary_operator(t_array, index + 2))
    // {
    //     fprintf(stdout, "matched numeric expression and binary operator and numeric expression\n"); 
    //     return 1;
    // }

    // fprintf(stdout, "checking rule 4\n"); 
    // if (T_LPAREN == t_array->tokens[index].type)
    // {
    //     if (is_numeric_expression_match(t_array, index + 1) && T_RPAREN == t_array->tokens[index + 2].type)
    //     {
    //         fprintf(stdout, "matched numeric expression in parenthesis\n"); 
    //         return 1;
    //     }
    // }
    // return 0;
}

int
is_prefix_unary_operator(Token_Array *t_array, int index)
{
    switch(t_array->tokens[index].type)
    {
        case T_INCREMENT:
        case T_DECREMENT:
        case T_MINUS:
        case T_BWNOT:
            return 1;
        default:
            break;
    }
    return 0;
}

int is_postfix_unary_operator(Token_Array *t_array, int index)
{
    switch(t_array->tokens[index].type)
    {
        case T_INCREMENT:
        case T_DECREMENT:
            return 1;
        default:
            break;
    }
    return 0;
}

int is_binary_operator(Token_Array *t_array, int index)
{
    switch(t_array->tokens[index].type)
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
            return 1;
        default:
            break;
    }
    return 0;
}

int 
numeric_expression_found(Token_Array *t_array, int index)
{
    switch(t_array->tokens[index].type)
    {
        case T_NUMBER:
        case T_NAME:
            return 1;
        default:
            break;
    }
    return 0;
}