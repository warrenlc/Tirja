#pragma once

#ifndef LEXER_HPP
#define LEXER_HPP

#include <iostream>
#include <string_view>
#include <array>
#include <ctype.h>
#include <unordered_map>

#include "../Tokens/tokens.hpp"

#define KEYWORD_COUNT 19
#define MAX_TOKEN_LENGTH 10
#define MAX_STRING_LENGTH 1024


constexpr std::array<std::string_view, KEYWORD_COUNT> keywords = 
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
    "return",
    "in"
};

static int is_keyword(const char *lexeme)
{
    int i{0};
    for (; i < KEYWORD_COUNT; i++)
    {
        if (lexeme == keywords[i])
            return i;
    }
    return -1;
}


/** Scanner */

class Scanner 
{
    std::array<char, MAX_STRING_LENGTH + 1> stringReaderBuffer;
    std::array<char, MAX_TOKEN_LENGTH + 1> valueBuffer;
    unsigned int state; 
    bool haveBuffered;
    char bufferedChar;
    unsigned long position;

public:
    Scanner() { haveBuffered = false; reset(); }

    void 
    reset() 
    {
        state = 0;
        position = 0;
        valueBuffer.fill('\0');
        stringReaderBuffer.fill('\0');
    }

    inline char 
    get_char(FILE *file) 
    {
        char c;
        if (haveBuffered) 
        {
            haveBuffered = false;
            return bufferedChar;
        }
        
        c = getc(file);
        if (c == EOF)
            return -1;
        return c;
    }

    inline void 
    unget_char(char c) 
    {
        haveBuffered = true;
        bufferedChar = c;
    }

    inline void 
    accumulate(char c) 
    {
        if (position < MAX_TOKEN_LENGTH) 
        {
            valueBuffer[position] = c;
            ++position;
        } 
        else 
        {
            valueBuffer[MAX_TOKEN_LENGTH - 1] = 0;
            std::cerr << "Token too long: " << valueBuffer.data() << "\n";
        }
    }

    inline void 
    accumulate_string(char c) 
    {
        if (position < MAX_STRING_LENGTH - 1) 
        {
            stringReaderBuffer[position] = c;
            ++position;
        } 
        else 
        {
            stringReaderBuffer[MAX_STRING_LENGTH - 1] = '\0';
            std:: cerr << "String is too long: " << stringReaderBuffer.data() << "\n";
        }
    }

    inline Token 
    scan(FILE *file) 
    {
        reset();
        int c = 0;
        
        while (true) 
        {
            c = get_char(file);
            
            switch (state) 
            {
            case 0: // Initial State
                if (isdigit(c)) 
                {
                    accumulate(c);
                    state = 1; //NUMBER; //1;
                } 
                else if (isalpha(c)) 
                {
                    accumulate(c);
                    state = 7;// ALPHA; // 7;
                } 
                else switch (c) 
                {
                case -1: return Token(TOKEN_END, "");
                case ';': return Token(TOKEN_SEMICOLON, "");
                case '.': return Token(TOKEN_DOT, "");
                case ' ': 
                case ',': 
                case '\t': 
                case '\r': break;
                case '\n': return Token(Token_type::TOKEN_END_OF_LINE, "");
                case '*': return Token(Token_type::TOKEN_TIMES, "");
                case '/': state = 11; break;
                case '%': return Token(Token_type::TOKEN_MOD, "");
                case '+': return Token(Token_type::TOKEN_PLUS, "");
                case '-': state = 15; break;
                case '!': state = 10; break;
                case '~': return Token(Token_type::TOKEN_BW_NOT, "");
                case '^': return Token(Token_type::TOKEN_XOR, "");
                case '(': return Token(Token_type::TOKEN_LPAREN, "");
                case ')': return Token(Token_type::TOKEN_RPAREN, "");
                case '{': return Token(Token_type::TOKEN_LBRACE, "");
                case '}': return Token(Token_type::TOKEN_RBRACE, "");
                case '[': return Token(Token_type::TOKEN_LBRACKET, "");
                case ']': return Token(Token_type::TOKEN_RBRACKET, "");
                case '<': state = 3; break;
                case '>': state = 4; break;
                case '&': state = 5; break;
                case '|': state = 6; break;
                case '=': state = 8; break;
                case '"': state = 9; break;
                case ':': return Token(Token_type::TOKEN_COLON, "");
                default: std::cerr << "Unrecognized character: " << c << "\n";
                    return Token(Token_type::TOKEN_ERROR, "");
                }
                break;
            case 1: // Number
                if (isdigit(c)) 
                {
                    accumulate(c);
                    state = 1;
                } 
                else if (c == '.') 
                {
                    accumulate(c);
                    state = 2;
                }
                else 
                {
                    unget_char(c);
                    return Token(TOKEN_INT, valueBuffer.data());
                }
                break;

            case 2: // Real number
                if (isdigit(c)) {
                    accumulate(c);
                    state = 2;
                } else {
                    unget_char(c);
                    return Token(TOKEN_REAL, valueBuffer.data());
                }
                break;
            
            case 3: // '<' consumed
                if (c == '=') 
                    return Token(TOKEN_LTEQ, "");
                else if (c == '<') 
                    return Token(TOKEN_LSHIFT, "");
                else {
                    unget_char(c);
                    return Token(TOKEN_LT, "");
                }
            
            case 4: // '>' consumed
                if (c == '=') 
                    return Token(TOKEN_GTEQ, "");
                else if (c == '>') 
                    return Token(TOKEN_RSHIFT, "");
                else {
                    unget_char(c);
                    return Token(TOKEN_GT, "");
                }

            case 5: // '&' consumed
                if (c == '&') 
                    return Token(TOKEN_LOGIC_AND, "");
                else {
                    unget_char(c);
                    return Token(TOKEN_BW_AND, "");
                }


            case 6: // '|' consumed
                if (c == '|') 
                    return Token(TOKEN_LOGIC_OR, "");
                else {
                    unget_char(c);
                    return Token(TOKEN_BW_OR, "");
                }

            case 7: // Identifier
                if (isalnum(c) || c == '_') 
                {
                    accumulate(c);
                    state = 7;
                } 
                else 
                {
                    unget_char(c);
                    //auto result = keywords.find(valueBuffer.data());
                    int result = is_keyword(valueBuffer.data()); 
                    if (result != -1)
                        return Token((Token_type)(result), ""); 
                    else 
                        return Token(Token_type::TOKEN_ID, valueBuffer.data());
                }
                break;

            case 8: // '=' consumed
                if (c == '=')
                    return Token(Token_type::TOKEN_EQEQ, "");
                else 
                {
                    unget_char(c);
                    return Token(Token_type::TOKEN_EQ, "");
                }

            case 9: // '"' consumed String state.
            {
                while (c != '"') 
                {  
                    accumulate_string(c);  
                    c = get_char(file);  
                }
                
                return Token(Token_type::TOKEN_STRING, stringReaderBuffer.data());
            }

            case 10: // '!' consumed
                if (c == '=')
                    return Token(Token_type::TOKEN_NOTEQ, "");
                else 
                {
                    unget_char(c);
                    return Token(Token_type::TOKEN_LOGIC_NOT, "");
                }

            case 11: // '/' consumed
                if (c == '/')
                    state = 12;
                else if (c == '*')
                    state = 13;
                else 
                {
                    unget_char(c);
                    return Token(Token_type::TOKEN_DIVIDE, "");
                }
                break;

            case 12: // Comment
                if (c == '\n')
                    state = 0;
                else if (c == -1)
                    return Token(Token_type::TOKEN_END, "");
                break;

            case 13: // Multiline comment
                if (c == '*')
                    state = 14;
                break;

            case 14: // Multiline comment
                if (c == '/')
                    state = 0;
                break;

            case 15: // '-' consumed
                if (c == '>')
                    return Token(Token_type::TOKEN_ARROW, "");
                else 
                {
                    unget_char(c);
                    return Token(Token_type::TOKEN_MINUS, "");
                }
                break;
                
            default:
                std::cerr << "Unknown state: " << state << "\n";
                return Token(Token_type::TOKEN_ERROR, "");
            
            }
        }
    }

};

#endif // LEXER_H
