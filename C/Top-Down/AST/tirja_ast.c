#include "tirja_ast.h"


int main (void)
{
    ASTNode *left = (ASTNode *) astnode_integer_create(4);
    ASTNode *right = (ASTNode *) astnode_integer_create(5);
    ASTNode *root = (ASTNode *) astnode_binaryop_create (PLUS, left, right);

    double value = astnode_eval(root);

    printf("result = %d\n", (int) value);
    return 0;
}