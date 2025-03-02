#include <stdlib.h>
#include <stdio.h>

typedef enum
{
    AST_BINARY_OP,
    AST_INTEGER,
    AST_REAL,  
} AST_TYPE;

typedef enum 
{
    PLUS,
    MINUS,
    TIMES,
    DIVIDE,
    MOD,
    UMINUS,
    BW_NOT,
    BW_AND,
    BW_OR,
    XOR,
    LSHIFT,
    RSHIFT,
} AST_OP_TYPE;

typedef struct
{
    AST_TYPE type;
} ASTNode;

typedef struct 
{
    AST_TYPE type;
    int value;
}ASTNode_integer;

typedef struct
{
    AST_TYPE type;
    double value;
}ASTNode_real;


typedef struct 
{
    AST_TYPE type;
    AST_OP_TYPE op;
    ASTNode *left;
    ASTNode *right;
}ASTNode_binary_op;


static ASTNode *
astnode_binaryop_create(AST_OP_TYPE op, ASTNode *left, ASTNode *right)
{
    ASTNode_binary_op *node = (ASTNode_binary_op *) malloc(sizeof(ASTNode_binary_op));
    if (!node)
        return NULL;

    node->type = AST_BINARY_OP;
    node->op = op;
    node->left = left;
    node->right = right;
    return (ASTNode *)node;
}

static ASTNode *
astnode_integer_create(int value)
{
    ASTNode_integer *node = (ASTNode_integer *) malloc(sizeof(ASTNode_integer));
    if (!node)
        return NULL;

    node->type = AST_INTEGER;
    node->value = value;
    return (ASTNode *)node;
}

static ASTNode *
astnode_real_create(double value)
{
    ASTNode_real *node = (ASTNode_real *) malloc(sizeof(ASTNode_real));
    if (!node)
        return NULL;

    node->type = AST_REAL;
    node->value = value;
    return (ASTNode *)node;
}

static inline void astNode_destroy(ASTNode *node)
{
    switch (node->type)
    {
    case AST_BINARY_OP:
        astNode_destroy(((ASTNode_binary_op *) node)->left);
        astNode_destroy(((ASTNode_binary_op *) node)->right);
        break;
    default:
        break;
    }
    free(node);
}

static
double astnode_eval(ASTNode *root)
{
    double result = 0;
    printf("root type = %d\n", root->type); 
    switch (root->type)
    {
    case AST_BINARY_OP:
        printf("op type = %d\n", ((ASTNode_binary_op *) root)->op);
        switch (((ASTNode_binary_op *) root)->op)
        {
        case PLUS:
            result = astnode_eval(((ASTNode_binary_op *) root)->left) + astnode_eval(((ASTNode_binary_op *) root)->right);
            printf("result = %f\n", result);
            break;
        case MINUS:
            result = astnode_eval(((ASTNode_binary_op *) root)->left) - astnode_eval(((ASTNode_binary_op *) root)->right);
            break;
        case TIMES:
            result = astnode_eval(((ASTNode_binary_op *) root)->left) * astnode_eval(((ASTNode_binary_op *) root)->right);
            break;
        case DIVIDE:
            result = astnode_eval(((ASTNode_binary_op *) root)->left) / astnode_eval(((ASTNode_binary_op *) root)->right);
            break;
        case MOD:
            result = (int)astnode_eval(((ASTNode_binary_op *) root)->left) % (int)astnode_eval(((ASTNode_binary_op *) root)->right);
            break;
        }
        break;
    case AST_INTEGER:
        printf ("%d\n", ((ASTNode_integer *) root)->value);
        result = ((ASTNode_integer *) root)->value;
        break;
    case AST_REAL:
        result = ((ASTNode_real *) root)->value;
        break;
    }
    
    printf("result at function end = %f\n", result);
    return result;
}
