#include <iostream>


#ifndef AST_H
#define AST_H

namespace AST {

    class Node {};

    class Statement : public Node {};

    class Expression : public Node {};

    class Assignment : public Node {};

    class VariableDeclaration : public Node {};

    class ArrayLiteral : public Node {};

    class StringLiteral : public Node {};

    class BooleanExpression : public Node {};

    class LogicalExpression : public Node {};

    class ComparisonExpression : public Node {};

    class IntegerLiteral : public Node {}; 

    class RealLiteral : public Node {};

    class ArithmeticExpression : public Node {};

    class UnaryExpression : public Node {};

    class Num : public Node {};

    class Condition : public Node {};

    class While : public Node {};

    class For : public Node {};

    class FunctionDefinition : public Node {};

    class FunctionCall : public Node {};

    class StructDefinition : public Node {};

}


#endif //AST_H