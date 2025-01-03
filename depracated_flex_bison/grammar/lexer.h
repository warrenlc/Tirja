#pragma once

#ifndef LEXER_H
#define LEXER_H

#include <stdio.h>
#include <string.h>
#include <ctype.h>
#include <stdlib.h>

#define KEYWORD_COUNT 12
const unsigned short MAX_TOKEN_LENGTH = 1024;

/** Tokens */
typedef enum
{
    /** Keyword tokens */
    TOKEN_FALSE,
    TOKEN_TRUE,
    TOKEN_INT_TYPE , 
    TOKEN_REAL_TYPE, 
    TOKEN_BOOL_TYPE, 
    TOKEN_PROCEDURE, 
    TOKEN_LET , 
    TOKEN_IF , 
    TOKEN_MUT , 
    TOKEN_THEN, 
    TOKEN_ELSE ,
    TOKEN_FUNCTION ,
    /** End Keyword tokens */ 
    TOKEN_SEMICOLON, 
    TOKEN_PLUS , 
    TOKEN_MINUS, 
    TOKEN_TIMES,
    TOKEN_DIV, 
    TOKEN_MOD, 
    TOKEN_BWLEFT, 
    TOKEN_BWRIGHT, 
    TOKEN_BWAND, 
    TOKEN_BWOR, 
    TOKEN_XOR, 
    TOKEN_NOT, 
    TOKEN_AND, 
    TOKEN_OR, 
    TOKEN_LESS_T, 
    TOKEN_GREATER_T, 
    TOKEN_EQUIVALENT, 
    TOKEN_LESS_T_EQ, 
    TOKEN_GREATER_T_EQ, 
    TOKEN_NOT_EQUIVALENT, 
    TOKEN_COLON, 
    TOKEN_EQUAL, 
    TOKEN_ARROW, 
    TOKEN_LAMBDA, 
    TOKEN_QUOTE, 
    TOKEN_CHAR, 
    TOKEN_ID,
    TOKEN_LBRACE,
    TOKEN_RBRACE, 
    TOKEN_LPAREN, 
    TOKEN_RPAREN, 
    TOKEN_LBRACKET, 
    TOKEN_RBRACKET,
    TOKEN_ENDOFLINE,
    TOKEN_ERROR,
    TOKEN_ASSIGN,
    TOKEN_END,
    TOKEN_INT,
    TOKEN_REAL,
} TokenType;

/** //! == implemented */
static const char *TokenTypeNames[] = 
{
     /** Keyword tokens */
    "false",       // 0
    "true",        // 1
    "int type",         // 0 
    "real type",        // 1
    "bool type",        // 2
    "proc",             // 3
    "let",              // 4
    "if",               // 5
    "mutable",          // 6
    "then",             // 7
    "else",             // 8
    "func",             // 9
    /** End Keyword tokens */ 
    "semicolon",        // 10
    "plus",             // 11
    "minus",            // 12
    "times",            // 13
    "div",              // 14
    "mod",              // 15
    "bwleft",           // 16
    "bwright",          // 17
    "bwand",            // 18
    "bwor",             // 19
    "xor",              // 20
    "not",              // 21
    "and",              // 22    
    "or",               // 23      
    "less_t",           // 24
    "greater_t",        // 25
    "equivalent",       // 26
    "less_t_eq",        // 27
    "greater_t_eq",     // 28
    "not_equivalent",   // 29
    "colon",            // 30
    "equal",            // 31
    "arrow",            // 32
    "lambda",           // 33
    "quote",            // 34
    "char",             // 35
    "id",               // 36
    "l_brace",          // 37
    "r_brace",          // 38
    "l_paren",          // 39
    "r_paren",          // 40
    "l_bracket",         // 41
    "r_bracket",         // 42
    "end of line",      // 43
    "error",            // 44
    "assign",           // 45
    "end",              // 46
    "int",              // 47   
    "real",             // 48
};

const char *keywords[] = 
{
    "false", // 0
    "true", // 1
    "int",  // 2
    "real", // 3 
    "bool", // 4
    "proc", // 5
    "let",  // 6
    "if",   // 7
    "mutable",  // 8
    "then", // 9
    "else", // 10
    "func", // 11
};

static int is_keyword(char *lexeme)
{
    for (int i = 0; i < KEYWORD_COUNT; i++)
    {
        if (strcmp(lexeme, keywords[i]) == 0)
            return i;
    }
    return -1;
}

typedef struct
{
    TokenType type;
    char *lexeme;
} Token;

static void token_init(Token *token, TokenType type, char *lexeme) 
{
    token->type = type;
    token->lexeme = lexeme;
}

static Token token_create(TokenType type, char *lexeme) 
{
    Token token;
    token_init(&token, type, lexeme);
    return token;
}

/** END Tokens */

/** Scanner */

typedef struct
{
    unsigned int state;
    unsigned int haveBuffered;
    unsigned char bufferedChar;
    char valueBuffer[MAX_TOKEN_LENGTH + 1];
    unsigned long position;
} Scanner;

static void scanner_init(Scanner *scanner) 
{
    scanner->state = 0;
    scanner->haveBuffered = 0;
    scanner->bufferedChar = 0;
    scanner->position = 0;
}

static void scanner_reset(Scanner *scanner) 
{
    scanner->state = 0;
    scanner->position = 0;
    memset(scanner->valueBuffer, 0, MAX_TOKEN_LENGTH + 1);
}

static char scanner_get_char(Scanner *scanner)
{
    char c;
    if (scanner->haveBuffered == 1)
    {
        scanner->haveBuffered = 0;
        return scanner->bufferedChar;
    }
    
    c = getc(stdin);
    if (c == EOF)
        return -1;

    return c;
}

static void scanner_unget_char(Scanner *scanner, char c)
{
    scanner->haveBuffered = 1;
    scanner->bufferedChar = c;
}

static void scanner_accumulate(Scanner *scanner, char c)
{
    if (scanner->position < MAX_TOKEN_LENGTH)
    {
        scanner->valueBuffer[scanner->position] = c;
        ++scanner->position;
    }
    else
    {
        scanner->valueBuffer[MAX_TOKEN_LENGTH -1] = 0;
        fprintf(stderr, "Token too long: %s\n", scanner->valueBuffer);
    }
}

static Token scanner_scan(Scanner *scanner)
{
    scanner_reset(scanner);
    int c;
    while(1)
    {
        c = scanner_get_char(scanner);

        switch (scanner->state)
        {
        case 0: // Initial State
            if (isdigit(c))
            {
                scanner_accumulate(scanner, c);
                scanner->state = 1;
            }
            else if (isalpha(c))
            {
                scanner_accumulate(scanner, c);
                scanner->state = 7;
            }
            else switch (c)
            {
            case -1   : return token_create(TOKEN_END, NULL);
            case ';'  : return token_create(TOKEN_SEMICOLON, NULL);
            case ' '  :
            case ','  : 
            case '\t' :
            case '\r' : break;
            case '\n' : return token_create(TOKEN_ENDOFLINE, NULL);
            case '*'  : return token_create(TOKEN_TIMES, NULL);
            case '/'  : scanner->state = 11; break; 
            case '%'  : return token_create(TOKEN_MOD, NULL);
            case '+'  : return token_create(TOKEN_PLUS, NULL);
            case '-'  : scanner->state = 15; break; 
            case '!'  : scanner->state = 10; break; 
            case '^'  : return token_create(TOKEN_XOR, NULL);
            case '('  : return token_create(TOKEN_LPAREN, NULL);
            case ')'  : return token_create(TOKEN_RPAREN, NULL);
            case '{'  : return token_create(TOKEN_LBRACE, NULL);
            case '}'  : return token_create(TOKEN_RBRACE, NULL);
            case '['  : return token_create(TOKEN_LBRACKET, NULL);
            case ']'  : return token_create(TOKEN_RBRACKET, NULL);
            case '<'  : scanner->state = 3; break;
            case '>'  : scanner->state = 4; break;
            case '&'  : scanner->state = 5; break;
            case '|'  : scanner->state = 6; break;
            case '='  : scanner->state = 8; break; 
            case ':'  : scanner->state = 9; break;
            default: fprintf(stderr, "Unrecognized character: %c\n", c);
                return token_create(TOKEN_ERROR, NULL);
            }
            break;

        case 1: // Number
            if (isdigit(c))
            {
                scanner_accumulate(scanner, c);
                scanner->state = 1;
            }
            else if (c == '.')
            {
                scanner_accumulate(scanner, c);
                scanner->state = 2;
            }
            else
            {
                scanner_unget_char(scanner, c);
                return token_create(TOKEN_INT, scanner->valueBuffer);
            }
            break;
        
        case 2: // Real number
            if (isdigit(c))
            {
                scanner_accumulate(scanner, c);
                scanner->state = 2;
                
            }
            else
            {
                scanner_unget_char(scanner, c);
                return token_create(TOKEN_REAL, scanner->valueBuffer);
            }
            break;
        
        case 3: // '<' consumed
            if (c == '=') 
                return token_create(TOKEN_LESS_T_EQ, NULL);
            else if (c == '<') 
                return token_create(TOKEN_BWLEFT, NULL);
            else
            {
                scanner_unget_char(scanner, c);
                return token_create(TOKEN_LESS_T, NULL);
            }
            //break;

        case 4: // '>' consumed
            if (c == '=') 
                return token_create(TOKEN_GREATER_T_EQ, NULL);
            else if (c == '>') 
                return token_create(TOKEN_BWRIGHT, NULL);
            else
            {
                scanner_unget_char(scanner, c);
                return token_create(TOKEN_GREATER_T, NULL);
            }
            //break;

        case 5: // '&' consumed
            if (c == '&') 
                return token_create(TOKEN_AND, NULL);
            else
            {
                scanner_unget_char(scanner, c);
                return token_create(TOKEN_BWAND, NULL);
            }
            //break;

        case 6: // '|' consumed
            if (c == '|') 
                return token_create(TOKEN_OR, NULL);
            else
            {
                scanner_unget_char(scanner, c);
                return token_create(TOKEN_BWOR, NULL);
            }
            //break;

        case 7: // Identifier
            if (isalnum(c) || c == '_')
            {
                scanner_accumulate(scanner, c);
                scanner->state = 7;
            }
            else
            {
                scanner_unget_char(scanner, c);
                int keywordIndex = is_keyword(scanner->valueBuffer);
                if (-1 == keywordIndex)
                    return token_create(TOKEN_ID, scanner->valueBuffer);
                else
                    return token_create((TokenType)keywordIndex, NULL);
            }
            break;

        case 8: // '=' consumed
            if (c == '=')
                return token_create(TOKEN_EQUIVALENT, NULL);
            else
            {
                scanner_unget_char(scanner, c);
                return token_create(TOKEN_EQUAL, NULL);
            }

        case 9: // ':' consumed
            if (c == '=')
                return token_create(TOKEN_ASSIGN, NULL);
            else
            {
                scanner_unget_char(scanner, c);
                return token_create(TOKEN_COLON, NULL);
            }
        case 10: // '!' consumed
            if (c == '=')
                return token_create(TOKEN_NOT_EQUIVALENT, NULL);
            else
            {
                scanner_unget_char(scanner, c);
                return token_create(TOKEN_NOT, NULL);
            }
        case 11: // '/' consumed
            if (c == '/')
                scanner->state = 12;
            else if (c == '*')
                scanner->state = 13;
            else
            {
                scanner_unget_char(scanner, c);
                return token_create(TOKEN_DIV, NULL);
            }
            break;
        case 12: // Comment
            if (c == '\n')
                scanner->state = 0;
            else if (c == -1)
                return token_create(TOKEN_END, NULL);
            break;
        case 13: // Multiline comment
            if (c == '*')
                scanner->state = 14;
            break;
        case 14: // Multiline comment
            if (c == '/')
                scanner->state = 0;
            break;
        case 15: // '-' consumed
            if (c == '>')
                return token_create(TOKEN_ARROW, NULL);
            else
            {
                scanner_unget_char(scanner, c);
                return token_create(TOKEN_MINUS, NULL);
            }
        default:
            fprintf(stderr, "Unknown state: %d\n", scanner->state);
            return token_create(TOKEN_ERROR, NULL);
        }
    }
}


static const char *token_type_name(TokenType type)
{
    return TokenTypeNames[type];
}

static void token_print(Token *token)
{
    printf("Token: %s", token_type_name(token->type));
    if (token->lexeme)
        printf("(%s)", token->lexeme);
    printf("\n");
}

/** END Scanner */


#endif // LEXER_H
