#pragma once

#ifndef LEXER_H
#define LEXER_H

#include <stdio.h>
#include <string.h>
#include <ctype.h>
#include <stdlib.h>

#include "../Tokens/tokens.h"

#define KEYWORD_COUNT 18
#define MAX_TOKEN_LENGTH 10
#define MAX_STRING_LENGTH 1024

const char *keywords[] = 
{
    "const",
    "var",
    "int",  
    "real", 
    "bool",
    "string",
    "func",
    "struct",
    "init", 
    "self", 
    "if",
    "else",
    "elseif",
    "for",
    "while",
    "true",
    "false",
    "return"
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


/** Scanner */

typedef struct
{
    char stringReaderBuffer[MAX_STRING_LENGTH + 1];
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

static void scanner_accumulate_string(Scanner *scanner, char c)
{
    if (scanner->position < MAX_STRING_LENGTH - 1)  // Leave space for the null terminator
    {
        scanner->stringReaderBuffer[scanner->position] = c;
        ++scanner->position;
    }
    else
    {
        // Prevent overflow, and null-terminate early
        scanner->stringReaderBuffer[MAX_STRING_LENGTH - 1] = '\0';
        fprintf(stderr, "String is too long: %s\n", scanner->stringReaderBuffer);
    }
}

static Token scanner_scan(Scanner *scanner)
{
    scanner_reset(scanner);
    int c = 0;
    
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
            case ' '  : case ',' :
            case '\t' :
            case '\r' : break;
            //case ','  : //return token_create(TOKEN_COMMA, NULL); 
            case '\n' : return token_create(TOKEN_END_OF_LINE, NULL);
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
            case '"'  : scanner->state = 9; break; 
            case ':'  : return token_create(TOKEN_COLON, NULL); //scanner->state = 9; break;
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
                return token_create(TOKEN_LTEQ, NULL);
            else if (c == '<') 
                return token_create(TOKEN_LSHIFT, NULL);
            else
            {
                scanner_unget_char(scanner, c);
                return token_create(TOKEN_LT, NULL);
            }
            //break;

        case 4: // '>' consumed
            if (c == '=') 
                return token_create(TOKEN_GTEQ, NULL);
            else if (c == '>') 
                return token_create(TOKEN_RSHIFT, NULL);
            else
            {
                scanner_unget_char(scanner, c);
                return token_create(TOKEN_GT, NULL);
            }
            //break;

        case 5: // '&' consumed
            if (c == '&') 
                return token_create(TOKEN_LOGIC_AND, NULL);
            else
            {
                scanner_unget_char(scanner, c);
                return token_create(TOKEN_BW_AND, NULL);
            }
            //break;

        case 6: // '|' consumed
            if (c == '|') 
                return token_create(TOKEN_LOGIC_OR, NULL);
            else
            {
                scanner_unget_char(scanner, c);
                return token_create(TOKEN_BW_OR, NULL);
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
                    return token_create((Token_type)keywordIndex, NULL);
            }
            break;

        case 8: // '=' consumed
            if (c == '=')
                return token_create(TOKEN_EQEQ, NULL);
            else
            {
                scanner_unget_char(scanner, c);
                return token_create(TOKEN_EQ, NULL);
            }

            case 9: // '"' consumed String state.
            {
                while (c != '"') // Stop when the closing quote is encountered 
                {  
                    scanner_accumulate_string(scanner, c);  
                    c = scanner_get_char(scanner);  
                }
        
                scanner->stringReaderBuffer[scanner->position] = '\0';
                return token_create(TOKEN_STRING, scanner->stringReaderBuffer);
            }

        case 10: // '!' consumed
            if (c == '=')
                return token_create(TOKEN_NOTEQ, NULL);
            else
            {
                scanner_unget_char(scanner, c);
                return token_create(TOKEN_LOGIC_NOT, NULL);
            }
        case 11: // '/' consumed
            if (c == '/')
                scanner->state = 12;
            else if (c == '*')
                scanner->state = 13;
            else
            {
                scanner_unget_char(scanner, c);
                return token_create(TOKEN_DIVIDE, NULL);
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


static const char *token_type_name(Token_type type)
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
