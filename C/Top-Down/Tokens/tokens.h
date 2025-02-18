typedef enum {
    // Keywords
    TOKEN_SHOW,
    TOKEN_EMPTY,
    TOKEN_SIZE,
    TOKEN_SORT,
    TOKEN_FLIP,
    TOKEN_SET,
    TOKEN_MAP,
    TOKEN_FILTER,
    TOKEN_IF,
    TOKEN_THEN,
    TOKEN_ELSE,
    TOKEN_WHILE,
    TOKEN_DO,
    TOKEN_LET,
    TOKEN_FOR,
    TOKEN_IN,
    TOKEN_BREAK,
    TOKEN_CONTINUE,
    TOKEN_TRUE,
    TOKEN_FALSE,

    // Operators
    TOKEN_QUESTION,      // ?
    TOKEN_EXCLAMATION,   // !
    TOKEN_DOT,           // .
    TOKEN_EQUAL,         // =
    TOKEN_PLUS_EQUAL,    // +=
    TOKEN_MINUS_EQUAL,   // -=
    TOKEN_DIV_EQUAL,     // /=
    TOKEN_MUL_EQUAL,     // *=
    TOKEN_LEFT_SHIFT,    // <<
    TOKEN_RIGHT_SHIFT,   // >>
    TOKEN_AMPERSAND,     // &
    TOKEN_CARET,         // ^
    TOKEN_PIPE,          // |
    TOKEN_PLUS,          // +
    TOKEN_MINUS,         // -
    TOKEN_STAR,          // *
    TOKEN_SLASH,         // /
    TOKEN_PERCENT,       // %
    TOKEN_EXPONENT,      // @
    TOKEN_OR,            // ||
    TOKEN_AND,           // &&
    TOKEN_GREATER,       // >
    TOKEN_LESS,          // <
    TOKEN_GREATER_EQUAL, // >=
    TOKEN_LESS_EQUAL,    // <=
    TOKEN_EQUAL_EQUAL,   // ==
    TOKEN_NOT_EQUAL,     // !=
    TOKEN_TILDE,         // ~

    // Delimiters
    TOKEN_SEMICOLON,     // ;
    TOKEN_COMMA,         // ,
    TOKEN_LEFT_PAREN,    // (
    TOKEN_RIGHT_PAREN,   // )
    TOKEN_LEFT_BRACE,    // {
    TOKEN_RIGHT_BRACE,   // }
    TOKEN_LEFT_BRACKET,  // [
    TOKEN_RIGHT_BRACKET, // ]

    // General Categories
    TOKEN_IDENTIFIER,    // For variables, function names, etc.
    TOKEN_NUMBER,        // Numeric literals

    // Special Tokens
    TOKEN_EOF,           // End of file
    TOKEN_ERROR          // Error token (for reporting issues in the lexer)
} Token_type;

typedef struct {
    Token_type type;
    char *lexeme;
} Token;
