#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <ctype.h>

#include "lexer.h"

int 
token_array_compare(const char *test_string, Token tokens_expected[]) //, size_t size_tokens_expected) 
{
    int pass = 1;
    
    printf("Test string_: %s\n", test_string);
    Token_Array t_array = token_array_get_from_string(test_string);
    
    for (int i = 0; i < t_array.size; i++) {
        size_t size_to_compare_token_type = strlen(token_type_to_string(t_array.tokens[i].type));
        size_t size_to_compare_lexeme     = strlen(t_array.tokens[i].lexeme);
        
        // printf("expected type / lexeme: %s / %s vs. actual type / lexeme: %s / %s\n", token_type_to_string(tokens_expected[i].type), tokens_expected[i].lexeme, 
        //     token_type_to_string(t_array.tokens[i].type), t_array.tokens[i].lexeme);
        
        if ((strncmp(tokens_expected[i].lexeme, t_array.tokens[i].lexeme, size_to_compare_lexeme) != 0) &&
            (strncmp(token_type_to_string(t_array.tokens[i].type), token_type_to_string(tokens_expected[i].type), size_to_compare_token_type) != 0)) 
        {
            fprintf(stderr, "Fail at: %s. Expected: %s\n", t_array.tokens[i].lexeme, tokens_expected[i].lexeme);
            pass = -1;
            break;
        }
    }
    /* Free t_array now that we are done with it */
    token_array_free(&t_array);
    return pass;
}

void test_tokenize_string_to_array(const char *string_test, Token token_array_expected[], int test_number, char *test_name) 
{
    if (token_array_compare(string_test, token_array_expected) == 1)
        fprintf(stdout, "PASS test %d: %s\n\n", test_number, test_name);
    else
        fprintf(stderr, "FAIL test %d: %s\n\n", test_number, test_name);    
}

int 
main(int argc, char* argv[]) 
{
        /**************************************************************************************************  
        TEST 0
            Testing the test. This should always be a fail.
        */
        const char *test_fail = "x + 9 = 24; x++;";
        Token incorrect_tokens_expected[] =
        {
            {T_NAME, "x"}, {T_PLUS, "+"}, {T_NUMBER, "9"}, {T_NUMBER, "24"}
        }; 
        test_tokenize_string_to_array(test_fail, incorrect_tokens_expected, 0, "should always fail");
        /*
        **************************************************************************************************/


        /**************************************************************************************************  
        TEST 1 
            Testing a string that has an extra decimal point. This should not produce a token.
        */
        const char *test_too_many_decimals = 
            "j = 0; j++; result_1 = 66+(55 - 7.9.9) / (Test_Value * 11.71); result_1++; j--; 6 % 3;";
        Token test_too_many_decimals_expected[] = 
        {
            {T_NAME,      "j" },  {T_EQUALS,    "="},  {T_NUMBER,    "0"       },  {T_SEMICOLON, ";"},  {T_NAME,   "j" },  
            {T_INCREMENT, "++"},  {T_SEMICOLON, ";"},  {T_NAME,      "result_1"},  {T_EQUALS,    "="},  {T_NUMBER, "66"}, 
            {T_PLUS,      "+" },  {T_LPAREN,    "("},  {T_NUMBER,    "55"      },  {T_MINUS,     "-"}
        };
        test_tokenize_string_to_array(test_too_many_decimals, test_too_many_decimals_expected, 1, "too many decimals");
        /*
        ***************************************************************************************************/


        /**************************************************************************************************  
        TEST 2 
            Testing a valid input string. 
        */
        const char *test_valid_decimals = 
            "j = 0; j++; result_1 = 66+(55 - 7.99) / (Test_Value * 11.71); result_1++; j--; 6 % 3;";
        Token test_valid_decimals_expected[] = 
        {
            {T_NAME,      "j"    },  {T_EQUALS,    "="},  {T_NUMBER,    "0"       },  {T_SEMICOLON, ";"         },  {T_NAME,      "j"   },  
            {T_INCREMENT, "++"   },  {T_SEMICOLON, ";"},  {T_NAME,      "result_1"},  {T_EQUALS,    "="         },  {T_NUMBER,    "66"  }, 
            {T_PLUS,      "+"    },  {T_LPAREN,    "("},  {T_NUMBER,    "55"      },  {T_MINUS,     "-"         },  {T_NUMBER,    "7.99"},  
            {T_RPAREN,    ")"    },  {T_DIVIDE,    "/"},  {T_LPAREN,    "("       },  {T_NAME,      "Test_Value"},  {T_TIMES,     "*"   },  
            {T_NUMBER,    "11.71"},  {T_RPAREN,    ")"},  {T_SEMICOLON, ";"       },  {T_NAME,      "result_1"  },  {T_INCREMENT, "++"  },  
            {T_SEMICOLON, ";"    },  {T_NAME,      "j"},  {T_DECREMENT, "--"      },  {T_SEMICOLON, ";"         },  {T_NUMBER,    "6"   },  
            {T_MOD,       "%"    },  {T_NUMBER,    "3"},  {T_SEMICOLON, ";"       }
        };
        test_tokenize_string_to_array(test_valid_decimals, test_valid_decimals_expected, 2, "valid decimals");
        /*
        ***************************************************************************************************/ 


        /**************************************************************************************************  
        TEST 3
            Testing invalid increment operator. This should tokenize but would fail later
            during syntactic analysis. We just want to test that tokens are produced as we expect.
        */
        const char *test_invalid_increment      = "j = 0; j+++;";
        Token test_invalid_increment_expected[] = 
        { 
            {T_NAME, "j"}, {T_EQUALS,    "=" }, {T_NUMBER, "0"}, {T_SEMICOLON, ";"}, 
            {T_NAME, "j"}, {T_INCREMENT, "++"}, {T_PLUS,   "+"}, {T_SEMICOLON, ";"} 
        };
        test_tokenize_string_to_array(test_invalid_increment, test_invalid_increment_expected, 3, "invalid increment");
        /*
        ***************************************************************************************************/  
      

        /***************************************************************************************************  
        TEST 4
            Testing variations of '<' char, including <, <=, <<
        */
        const char *test_lt_symbol      = "k=0;k<8;k<=0;k<<;";
        Token test_lt_symbol_expected[] = 
        {
            {T_NAME,   "k"},  {T_EQUALS,    "="},  {T_NUMBER,    "0"},  {T_SEMICOLON, ";" },  {T_NAME,      "k" }, 
            {T_LESS_T, "<"},  {T_NUMBER,    "8"},  {T_SEMICOLON, ";"},  {T_NAME,      "k" },  {T_LESS_T_EQ, "<="}, 
            {T_NUMBER, "0"},  {T_SEMICOLON, ";"},  {T_NAME,      "k"},  {T_BWLEFT,    "<<"},  {T_SEMICOLON, ";" }
        };
        test_tokenize_string_to_array(test_lt_symbol, test_lt_symbol_expected, 4, "lt_symbol");
        /*
        ***************************************************************************************************/ 


        /***************************************************************************************************  
        TEST 5
            Testing variations of '>' char, including >, >=, >>.
            Includes invalid syntax.
        */
        const char *test_gt_symbol      = "k = 0; k>8; k>=0; k>>;<>;";   
        Token test_gt_symbol_expected[] = 
        {
            {T_NAME,      "k"},  {T_EQUALS,    "="},  {T_NUMBER,    "0"},  {T_SEMICOLON, ";" },  {T_NAME,         "k" },  
            {T_GREATER_T, ">"},  {T_NUMBER,    "8"},  {T_SEMICOLON, ";"},  {T_NAME,      "k" },  {T_GREATER_T_EQ, ">="},  
            {T_NUMBER,    "0"},  {T_SEMICOLON, ";"},  {T_NAME,      "k"},  {T_BWRIGHT,   ">>"},  {T_SEMICOLON,    ";" },  
            {T_LESS_T,    "<"},  {T_GREATER_T, ">"},  {T_SEMICOLON, ";"}
        };
        test_tokenize_string_to_array(test_gt_symbol, test_gt_symbol_expected, 5, "gt_symbol");
        /*
        ***************************************************************************************************/ 


        /***************************************************************************************************  
        TEST 6
            Testing usage of '!' character
        */
        const char *test_not      =   "!k; k != 7;";
        Token test_not_expected[] = 
        { 
            {T_NOT,             "!"},  {T_NAME,   "k"},  
            {T_SEMICOLON,       ";"},  {T_NAME,   "k"},  
            {T_NOT_EQUIVALENT, "!="},  {T_NUMBER, "7"},  
            {T_SEMICOLON,       ";"} 
        };
        test_tokenize_string_to_array(test_not, test_not_expected, 6, "not operator");
        /*
        ***************************************************************************************************/  


        /***************************************************************************************************
        TEST 7
            Testing and and or : && , ||
        */
        const char *test_and_or       = "(k && j) || !(k||(g && !f));";
        Token test_and_or_exepected[] = 
        {
            {T_LPAREN, "(" },  {T_NAME,   "k"},  {T_AND,  "&&"},  {T_NAME,   "j" },  {T_RPAREN, ")"},  {T_OR,        "||"},  
            {T_NOT,    "!" },  {T_LPAREN, "("},  {T_NAME, "k" },  {T_OR,     "||"},  {T_LPAREN, "("},  {T_NAME,      "g" },
            {T_NAME,   "&&"},  {T_NOT,    "!"},  {T_NAME, "f" },  {T_RPAREN, ")" },  {T_RPAREN, ")"},  {T_SEMICOLON, ";" } 
        };
        test_tokenize_string_to_array(test_and_or, test_and_or_exepected, 7, "and / or");
        /*
        ***************************************************************************************************/  
        
        
        /**************************************************************************************************/ 
        /* TEST 8
            Testing matching of True and False 
        */
        const char *test_true_false      = "k = True; j = False;";
        Token test_true_false_expected[] = 
        { 
            {T_NAME, "k"},  {T_EQUALS, "="},  {T_TRUE,  "True" },  {T_SEMICOLON, ";"}, 
            {T_NAME, "j"},  {T_EQUALS, "="},  {T_FALSE, "False"},  {T_SEMICOLON, ";"} 
        };
        test_tokenize_string_to_array(test_true_false, test_true_false_expected, 8, "True / False");
        /*
        ***************************************************************************************************/  


        /**************************************************************************************************/
        /* TEST 9
            Testing bad variable names
        */
        const char *test_bad_names      = "14days = 14; 21jump_street = 9;";
        Token test_bad_names_expected[] = 
        { 
            {T_NUMBER, "14"},  {T_NAME, "days"       },  {T_EQUALS, "="},  {T_NUMBER, "14"}, {T_SEMICOLON, ";"}, 
            {T_NUMBER, "21"},  {T_NAME, "jump_street"},  {T_EQUALS, "="},  {T_NUMBER, "9" }, {T_SEMICOLON, ";"}
        };
        test_tokenize_string_to_array(test_bad_names, test_bad_names_expected, 9, "Bad names");
        /*
        ***************************************************************************************************/  

        
        /**************************************************************************************************/
        /* TEST 10
            Testing line number and column number
        */
        const char *test_line_column_number      = "j = 9:;\nj=9.9,\nx=10?;";
        Token test_line_column_number_expected[] = 
        { 
            {T_NAME,   "j"},  {T_EQUALS, "=" },  {T_NUMBER,    "9"  },  {T_SEMICOLON, ";"},  
            {T_NAME,   "j"},  {T_EQUALS, "=" },  {T_NUMBER,    "9.9"},  {T_NAME,      "x"},  
            {T_EQUALS, "="},  {T_NUMBER, "10"},  {T_SEMICOLON, ";"  } 
        };
        printf("Expecting 1st error at line 1 col 6.\nExpecting 2nd error at line 2 col 6\nExpecting 3rd error at line 3 col 5\n");
        test_tokenize_string_to_array(test_line_column_number, test_line_column_number_expected, 10, "test line and column numbers");
        /*
        ***************************************************************************************************/  


        /**************************************************************************************************/
        /* TEST 11
            Testing recognition of key words
        */
        const char *test_keywords_again         = "do j++ while (j < 30); if (j == 0) then j--; else if (j == 20) then j++; else j = j+4;\n";
        Token test_keywords_again_expected[]   = 
        {   {T_DO,       "do"   },  {T_NAME,   "j"   },  {T_INCREMENT, "++"  },  {T_WHILE,      "while"},  {T_LPAREN,     "(" }, 
            {T_NAME,      "j"   },  {T_LESS_T, "<"   },  {T_NUMBER,    "30"  },  {T_RPAREN,     ")"    },  {T_SEMICOLON,  ";" }, 
            {T_IF,        "if"  },  {T_LPAREN, "("   },  {T_NAME,      "j"   },  {T_EQUIVALENT, "=="   },  {T_NUMBER,     "0" }, 
            {T_RPAREN,    ")"   },  {T_THEN,   "then"},  {T_NAME,      "j"   },  {T_DECREMENT,  "--"   },  {T_SEMICOLON,  ";" },   
            {T_ELSE,      "else"},  {T_IF,     "if"  },  {T_LPAREN,    "("   },  {T_NAME,       "j"    },  {T_EQUIVALENT, "=="},
            {T_NUMBER,    "20"  },  {T_RPAREN, ")"   },  {T_THEN,      "then"},  {T_NAME,       "j"    },  {T_INCREMENT,  "++"},
            {T_SEMICOLON, ";"   },  {T_ELSE,   "else"},  {T_NAME,      "j"   },  {T_EQUALS,     "="    },  {T_NAME,        "j"},
            {T_PLUS,      "+"   },  {T_NUMBER, "4"   },  {T_SEMICOLON, ";"   }
        };  
        test_tokenize_string_to_array(test_keywords_again, test_keywords_again_expected, 11, "test keywords."); 
        /*
        ***************************************************************************************************/  



    /**************************** END TESTS ***************************************/
    printf("\n\n");
    return 0;
}
