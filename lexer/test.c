#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <ctype.h>

#include "lexer.h"



int test(const char *test_string, char* lexemes_expected[], size_t size_lexemes_expected) {
    Token_Array t_array = token_array_from_string(test_string);

    for (int i = 0; i < t_array.size; i++) {
        if (strncmp(lexemes_expected[i], t_array.tokens[i].lexeme, size_lexemes_expected) != 0) {
            fprintf(stderr, "Fail at: %s", t_array.tokens[i].lexeme);
            token_array_free(&t_array);
            return -1;
        }
    }
    /* Free t_array now that we are done with it */
    token_array_free(&t_array);
    return 1;
}

int main(void) {

    /* TEST 1 
     *  a string that has an extra decimal point. This should not produce a token.
     */
    const char *test_too_many_decimals = "j = 0; j++; result_1 = 66+(55 - 7.9.9) / (Test_Value * 11.71); result_1++; j--; 6 % 3;";
    char* test_too_many_decimals_expected[] = {
        "j"         ,  "="  , "0"   ,  ";"  , "j"  , "++"  , ";", 
        "result_1"  ,  "="  , "66"  ,  "+"  , "("  , "55"  , "-"
    };
    size_t size_too_many_decimals_expected = sizeof test_too_many_decimals_expected / sizeof *test_too_many_decimals_expected;
    test(test_too_many_decimals, test_too_many_decimals_expected, size_too_many_decimals_expected) == 1 
    ? fprintf(stdout, "\nPASS test 1: too_many_decimals\n") : fprintf(stderr, "\nFAIL test 1: too_many_decimals\n");


    /* TEST 2 
     *  a valid input string. 
     */
    const char *test_valid_decimals = 
        "j = 0; j++; result_1 = 66+(55 - 7.99) / (Test_Value * 11.71); result_1++; j--; 6 % 3;";
    char* test_valid_decimals_expected[] = 
        {
            "j"  ,  "="  ,  "0"          ,  ";"   ,  "j"      ,  "++" ,  ";"     ,  "result_1" ,  
            "="  ,  "66" ,  "+"          ,  "("   ,  "55"     ,  "-"  ,  "7.99"  ,  ")"        ,  
            "/"  ,  "("  ,  "Test_Value" ,  "*"   ,  "11.71"  ,  ")"  ,  ";"     ,  "result_1" ,  
            "++" ,  ";"  ,  "j"          ,  "--"  ,  ";"      ,  "6"  ,  "%"     ,  "3"        ,  
            ";"
        };
    size_t size_valid_decimals_expected = sizeof test_valid_decimals_expected / sizeof *test_valid_decimals_expected;
    test(test_valid_decimals, test_valid_decimals_expected, size_valid_decimals_expected) == 1
        ? fprintf(stdout, "\nPASS test 2: valid decimals\n") : fprintf(stderr, "\nFAIL test 2: valid_decimals\n");


    /* TEST 3
    * Testing invalid increment operator. This should tokenize but would fail later
    * during syntactic analysis. We just want to test that tokens are produced as we expect.
    */
    const char *test_invalid_increment      = "j = 0; j+++;";
    char *test_invalid_increment_expected[] = { "j", "=", "0", ";", "j", "++", "+", ";" };
    size_t size_invalid_increment_expected  = sizeof test_invalid_increment_expected / sizeof *test_invalid_increment_expected;
    test(test_invalid_increment, test_invalid_increment_expected, size_invalid_increment_expected) == 1
        ? fprintf(stdout, "\nPASS test 3: invalid_increment\n") : fprintf(stderr, "\nFAIL test 3: invalid_increment\n");


    /* TEST 4
    * Testing variations of '<' char, including <, <=, <<
    */
    const char *test_lt_symbol      = "k=0;k<8;k<=0;k<<;";
    char *test_lt_symbol_expected[] = 
        {
            "k" , "=" , "0" , ";"  , "k"  , 
            "<" , "8" , ";" , "k"  , "<=" , 
            "0" , ";" , "k" , "<<" , ";"
        };
    size_t size_lt_symbol_expected = sizeof test_lt_symbol_expected / sizeof *test_lt_symbol_expected;
    test(test_lt_symbol, test_lt_symbol_expected, size_lt_symbol_expected) == 1
        ? fprintf(stdout, "\nPASS test 4: lt_symbol\n") : fprintf(stderr, "\nFAIL test 4: lt_sybmol\n");


    /* TEST 5
    * 
    */    
    
    
    
    printf("\n\n");
    return 0;
}
