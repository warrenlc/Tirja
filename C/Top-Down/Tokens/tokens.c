#include "tokens.h"

void 
token_init(Token *token, Token_type type, char *lexeme) {
    token->type = type;
    token->lexeme = lexeme;
}


Token 
token_create(Token_type type, char *lexeme) {
    Token token;
    token_init(&token, type, lexeme);
    return token;
}
