#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <ctype.h>

#include "lexer.h"

int 
token_array_compare(const char *test_string, char* lexemes_expected[], size_t size_lexemes_expected) 
{
    printf("Test string_: %s\n", test_string);
    Token_Array t_array = token_array_get_from_string(test_string);
    // token_array_print(&t_array);
    for (int i = 0; i < t_array.size; i++) {
        if (strncmp(lexemes_expected[i], t_array.tokens[i].lexeme, size_lexemes_expected) != 0) {
            fprintf(stderr, "Fail at: %s. Expected: %s\n", t_array.tokens[i].lexeme, lexemes_expected[i]);
            token_array_free(&t_array);
            return -1;
        }
    }
    /* Free t_array now that we are done with it */
    token_array_free(&t_array);
    return 1;
}

void test_tokenize_string_to_array(const char *string_test, char *lexeme_array_expected[], int test_number, char *test_name) 
{
    size_t size_lexeme_array_expected = sizeof &lexeme_array_expected / sizeof *lexeme_array_expected;

    if (token_array_compare(string_test, lexeme_array_expected, size_lexeme_array_expected) == 1)
        fprintf(stdout, "\nPASS test %d: %s\n", test_number, test_name);
    else
        fprintf(stderr, "\nFAIL test %d: %s\n", test_number, test_name);    
}

int 
main(void) 
{

    /* TEST 1 
     * a string that has an extra decimal point. This should not produce a token.
     */
    const char *test_too_many_decimals = "j = 0; j++; result_1 = 66+(55 - 7.9.9) / (Test_Value * 11.71); result_1++; j--; 6 % 3;";
    char* test_too_many_decimals_expected[] = {
        "j"         ,  "="  , "0"   ,  ";"  , "j"  , "++"  , ";", 
        "result_1"  ,  "="  , "66"  ,  "+"  , "("  , "55"  , "-"
    };
    test_tokenize_string_to_array(test_too_many_decimals, test_too_many_decimals_expected, 1, "too many decimals");


    /* TEST 2 
     * a valid input string. 
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
    test_tokenize_string_to_array(test_valid_decimals, test_valid_decimals_expected, 2, "valid decimals");


    /* TEST 3
     * Testing invalid increment operator. This should tokenize but would fail later
     * during syntactic analysis. We just want to test that tokens are produced as we expect.
     */
    const char *test_invalid_increment      = "j = 0; j+++;";
    char *test_invalid_increment_expected[] = { "j", "=", "0", ";", "j", "++", "+", ";" };
    test_tokenize_string_to_array(test_invalid_increment, test_invalid_increment_expected, 3, "invalid increment");


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
    test_tokenize_string_to_array(test_lt_symbol, test_lt_symbol_expected, 4, "lt_symbol");


    /* TEST 5
     * Testing variations of '>' char, including >, >=, >>.
     * Includes invalid syntax.
     */
    const char *test_gt_symbol      = "k = 0; k>8; k>=0; k>>;<>;";   
    char *test_gt_symbol_expected[] = 
        {
            "k"  ,  "="  ,  "0"  ,  ";"  ,  "k"  , ">" , 
            "8"  ,  ";"  ,  "k"  ,  ">=" ,  "0"  , ";" , 
            "k"  ,  ">>" ,  ";"  ,  "<"  ,  ">"  , ";"
        };
    test_tokenize_string_to_array(test_gt_symbol, test_gt_symbol_expected, 5, "gt_symbol");


    /* TEST 6
     * Testing usage of '!' character
     */
    const char *test_not      =   "!k; k != 7;";
    char *test_not_expected[] = { "!" , "k" , ";" , "k" , "!=" , "7" , ";" };
    test_tokenize_string_to_array(test_not, test_not_expected, 6, "not operator");


    /* TEST 7
     * Testing and and or : && , ||
     */
    const char *test_and_or       = "(k && j) || !(k||(g && !f));";
    char *test_and_or_exepected[] = 
        {
             "(",  "k",  "&&",   "j",  ")",  "||",  
             "!",  "(",   "k",  "||",  "(",   "g",
            "&&",  "!",   "f",   ")",  ")",   ";"
        };
    test_tokenize_string_to_array(test_and_or, test_and_or_exepected, 7, "and / or");

    /* TEST 8
     * Testing matching of True and False 
     */
    const char *test_true_false      = "k = True; j = False;";
    char *test_true_false_expected[] = { "k", "=", "True", ";", "j", "=", "False", ";" };
    test_tokenize_string_to_array(test_true_false, test_true_false_expected, 8, "True / False"); 
    printf("\n\n");
    return 0;
}
