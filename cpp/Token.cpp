#include <iostream>
#include <sstream>

#include "Token.h"

using namespace std;

string type_to_string(Type type) {
    switch(type) {
        case Type::SEMICOLON:       return "SEMICOLON";
        case Type::LPAREN:          return "LPAREN";
        case Type::RPAREN:          return "RP";
        case Type::INCREMENT:       return "INCREMENT";
        case Type::DECREMENT:       return "DECREMENT";
        case Type::MINUS:           return "MINUS";
        case Type::PLUS:            return "PLUS";
        case Type::BWNOT:           return "BWNOT";
        case Type::TIMES:           return "TIMES";
        case Type::DIVIDE:          return "DIVIDE";
        case Type::MOD:             return "MOD";
        case Type::BWLEFT:          return "BWLEFT";
        case Type::BWRIGHT:         return "BWRIGHT";
        case Type::BWAND:           return "BWAND";
        case Type::BWOR:            return "BWOR";
        case Type::XOR:             return "XOR";
        case Type::NOT:             return "NOT";
        case Type::AND:             return "AND";
        case Type::OR:              return "OR";
        case Type::LESS_THAN:       return "LESS_THAN";
        case Type::GREATER_THAN:    return "GREATER_THAN";
        case Type::EQUIVALENT:      return "EQUIVALENT";
        case Type::NOT_EQUIVALENT:  return "NOT_EQUIVALENT";
        case Type::LESS_THAN_EQ:    return "LESS_THAN_EQ";
        case Type::GREATER_THAN_EQ: return "GREATER_THAN_EQ";
        case Type::TRUE:            return "TRUE";
        case Type::FALSE:           return "FALSE";
        case Type::INTEGER:         return "INTEGER";
        case Type::REAL:            return "REAL";
        case Type::EQUALS:          return "EQUALS";
        case Type::IF:              return "IF";
        case Type::DO:              return "DO";
        case Type::THEN:            return "THEN";
        case Type::ELSE:            return "ELSE";
        case Type::FOR:             return "FOR";
        case Type::WHILE:           return "WHILE";
        case Type::STRING:          return "STRING";
        case Type::LBRACE:          return "LBRACE";
        case Type::RBRACE:          return "RBRACE";
        case Type::LSQUARE:         return "LSQUARE";
        case Type::RSQUARE:         return "RSQUARE";
        case Type::LET:             return "LET";
    
    default:
        return "NOTHING";
    }
}

string Token::to_string()const {
    ostringstream oss;
    oss << type_to_string(type) << ", " << lexeme << endl;
    return oss.str();
}