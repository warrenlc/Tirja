#pragma once

#include "lexer.h"



//Token token_current;
//Scanner scanner;

typedef struct 
{
    Scanner scanner;
    Token token_current;
} Parser;

typedef struct
{
    unsigned indent;
    const char *name;
}Trace;

static void parser_init(Parser *parser)
{
    Scanner scanner;
    scanner_init(&scanner);
}


static double parser_parse_E(Parser *parser);
static double parser_parse_T(Parser *parser);
static double parser_parse_P(Parser *parser);
static double parser_parse_F(Parser *parser);

static double parser_parse(Parser *parser)
{
    //Trace trace = {.indent = 0, .name = "Parse" };
    double val = 0;

    parser->token_current = scanner_scan(&(parser->scanner)); //parser->token_current;

    if (parser->token_current.type == TOKEN_END)
    {
        fprintf(stderr, "REACHED END OF FILE\n");
        exit(EXIT_FAILURE);
    }

    val = parser_parse_E(parser);
    if (parser->token_current.type == TOKEN_END || parser->token_current.type == TOKEN_ENDOFLINE)
    {
        return val;
    }
}

static double parser_parse_E(Parser *parser)
{
    double value = parser_parse_T(parser);
    while (parser->token_current.type == TOKEN_PLUS || parser->token_current.type == TOKEN_MINUS)
    {
        Token op = parser->token_current;
        parser->token_current = scanner_scan(&parser->scanner);
        double value_next = parser_parse_T(parser);
        if (op.type == TOKEN_PLUS)
            value += value_next;
        else
            value -= value_next;
    }

    return value;
}

static double parser_parse_T(Parser *parser)
{
    double value = parser_parse_P(parser);
    while (parser->token_current.type == TOKEN_TIMES || parser->token_current.type == TOKEN_DIV)
    {
        Token op = parser->token_current; 
        parser->token_current = scanner_scan(&parser->scanner);
        double value_next = parser_parse_P(parser);
        if (op.type == TOKEN_TIMES)
            value *= value_next;
        else
            value /= value_next;
    }

    return value;
}

static double parser_parse_P(Parser *parser)
{

    if (parser->token_current.type == TOKEN_MINUS)
    {
        parser->token_current = scanner_scan(&parser->scanner);
        return - parser_parse_F(parser);
    }

    return parser_parse_F(parser);
}

static double parser_parse_F(Parser *parser)
{
    double value = 0;

    switch (parser->token_current.type)
    {
    case TOKEN_INT: case TOKEN_REAL:
        value = (double)atof(parser->token_current.lexeme);
        parser->token_current = scanner_scan(&parser->scanner);
        return value;
    case TOKEN_LPAREN:
        parser->token_current = scanner_scan(&parser->scanner);
        value = parser_parse_E(parser);
        if (parser->token_current.type != TOKEN_RPAREN)
        {
            exit(EXIT_FAILURE);
        }
        parser->token_current = scanner_scan(&parser->scanner);
        return value;
    
    default:
        break;
    }

    return value;
}

