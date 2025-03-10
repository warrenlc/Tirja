typedef enum {
    TOKEN_CONST,
    TOKEN_VAR,
    TOKEN_INT_TYPE,
    TOKEN_REAL_TYPE,
    TOKEN_BOOL_TYPE,
    TOKEN_STRING_TYPE,
    TOKEN_FUNC,
    TOKEN_STRUCT,
    TOKEN_INIT,
    TOKEN_SELF,
    TOKEN_IF,
    TOKEN_ELSE,
    TOKEN_ELSEIF,
    TOKEN_FOR,
    TOKEN_WHILE,
    TOKEN_TRUE,
    TOKEN_FALSE,
    TOKEN_RETURN,
    TOKEN_IN,
    
    TOKEN_DOT,
    TOKEN_COLON,
    TOKEN_EQ,
    TOKEN_SEMICOLON,
    TOKEN_LPAREN,
    TOKEN_RPAREN,
    TOKEN_ARROW,
    TOKEN_LBRACE,
    TOKEN_RBRACE,
    TOKEN_LBRACKET,
    TOKEN_RBRACKET,
    TOKEN_COMMA,
    TOKEN_LOGIC_AND,
    TOKEN_LOGIC_OR,
    TOKEN_LOGIC_NOT,
    TOKEN_GT,
    TOKEN_GTEQ,
    TOKEN_EQEQ,
    TOKEN_LT,
    TOKEN_LTEQ,
    TOKEN_NOTEQ,
    TOKEN_BW_OR,
    TOKEN_XOR,
    TOKEN_BW_AND,
    TOKEN_LSHIFT,
    TOKEN_RSHIFT,
    TOKEN_PLUS,
    TOKEN_MINUS,
    TOKEN_TIMES,
    TOKEN_DIVIDE,
    TOKEN_MOD,
    TOKEN_UMINUS,
    TOKEN_BW_NOT,
    TOKEN_QUOTE,
    TOKEN_REAL,
    TOKEN_INT,
    TOKEN_ARRAY,
    TOKEN_STRING,
    TOKEN_ID,
    TOKEN_END_OF_LINE,

    // Special Tokens
    TOKEN_EOF,           // End of file
    TOKEN_ERROR,          // Error token (for reporting issues in the lexer)
    TOKEN_END
} Token_type;


static const char *TokenTypeNames[] = 
{
    /** Take special care that these are in the same order as the enum above */
    "const",
    "var",
    "int_type",
    "real_type",
    "bool_type",
    "string_type",
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
    "in",
    
    "dot",
    "colon",
    "equal",
    "semicolon",
    "lparen",
    "rparen",
    "arrow",
    "lbrace",
    "rbrace",
    "lbracket",
    "rbracket",
    "comma",
    "and",
    "or",
    "not",
    "gt",
    "gteq",
    "eqeq",
    "lt",
    "lteq",
    "noteq",
    "bw_or",
    "xor",
    "bw_and",
    "lshift",
    "rshift",
    "plus",
    "minus",
    "times",
    "divide",
    "mod",
    "uminus",
    "bw_not",
    "quote",
    "real",
    "int",
    "array",
    "string",
    "id",
    "end of line",
    "eof",
    "error",
    "end"
};


typedef struct {
    Token_type type;
    char *lexeme;
} Token;

void token_init(Token *token, Token_type type, char *lexeme);
Token token_create(Token_type type, char *lexeme);
