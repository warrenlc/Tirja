import subprocess

EXECUTABLE = "./lex"

# List of test expressions to feed into the lexer
expressions = {
    "3.14 *3;": "Token: real(3.14)\nToken: times\nToken: int(3)\nToken: semicolon\nToken: end of line\n",
    "5 + 3": "Token: int(5)\nToken: plus\nToken: int(3)\nToken: end of line\n",
    "10 - 7": "Token: int(10)\nToken: minus\nToken: int(7)\nToken: end of line\n",
    "6 * 2": "Token: int(6)\nToken: times\nToken: int(2)\nToken: end of line\n",
    "15 / 3": "Token: int(15)\nToken: div\nToken: int(3)\nToken: end of line\n",
    "9 % 4": "Token: int(9)\nToken: mod\nToken: int(4)\nToken: end of line\n",
    "3 + 5 * 2": "Token: int(3)\nToken: plus\nToken: int(5)\nToken: times\nToken: int(2)\nToken: end of line\n",
    "10 - 4 / 2": "Token: int(10)\nToken: minus\nToken: int(4)\nToken: div\nToken: int(2)\nToken: end of line\n",
    "7 * (3 + 2)": "Token: int(7)\nToken: times\nToken: l_paren\nToken: int(3)\nToken: plus\nToken: int(2)\nToken: r_paren\nToken: end of line\n",
    "10 + (5 - 3)": "Token: int(10)\nToken: plus\nToken: l_paren\nToken: int(5)\nToken: minus\nToken: int(3)\nToken: r_paren\nToken: end of line\n",
    "8 / (4 - 2)": "Token: int(8)\nToken: div\nToken: l_paren\nToken: int(4)\nToken: minus\nToken: int(2)\nToken: r_paren\nToken: end of line\n",
    "5 & 3": "Token: int(5)\nToken: bwand\nToken: int(3)\nToken: end of line\n",
    "8 | 2": "Token: int(8)\nToken: bwor\nToken: int(2)\nToken: end of line\n",
    "5 ^ 2": "Token: int(5)\nToken: xor\nToken: int(2)\nToken: end of line\n",
    "7 << 2": "Token: int(7)\nToken: bwleft\nToken: int(2)\nToken: end of line\n",
    "16 >> 3": "Token: int(16)\nToken: bwright\nToken: int(3)\nToken: end of line\n",
    "5 & (3 | 2)": "Token: int(5)\nToken: bwand\nToken: l_paren\nToken: int(3)\nToken: bwor\nToken: int(2)\nToken: r_paren\nToken: end of line\n",
    "(8 >> 2) ^ 3": "Token: l_paren\nToken: int(8)\nToken: bwright\nToken: int(2)\nToken: r_paren\nToken: xor\nToken: int(3)\nToken: end of line\n",
    "5 < 10": "Token: int(5)\nToken: less_t\nToken: int(10)\nToken: end of line\n",
    "10 > 5": "Token: int(10)\nToken: greater_t\nToken: int(5)\nToken: end of line\n",
    "5 == 5": "Token: int(5)\nToken: equivalent\nToken: int(5)\nToken: end of line\n",
    "7 != 8": "Token: int(7)\nToken: not_equivalent\nToken: int(8)\nToken: end of line\n",
    "5 <= 5": "Token: int(5)\nToken: less_t_eq\nToken: int(5)\nToken: end of line\n",
    "10 >= 5": "Token: int(10)\nToken: greater_t_eq\nToken: int(5)\nToken: end of line\n",
    "!(5 == 5)": "Token: not\nToken: l_paren\nToken: int(5)\nToken: equivalent\nToken: int(5)\nToken: r_paren\nToken: end of line\n",
    "(5 > 3) && (7 < 10)": "Token: l_paren\nToken: int(5)\nToken: greater_t\nToken: int(3)\nToken: r_paren\nToken: and\nToken: l_paren\nToken: int(7)\nToken: less_t\nToken: int(10)\nToken: r_paren\nToken: end of line\n",
    "5 + 3 * 2 - 1": "Token: int(5)\nToken: plus\nToken: int(3)\nToken: times\nToken: int(2)\nToken: minus\nToken: int(1)\nToken: end of line\n",
    "(10 - 5) * 2 + 3": "Token: l_paren\nToken: int(10)\nToken: minus\nToken: int(5)\nToken: r_paren\nToken: times\nToken: int(2)\nToken: plus\nToken: int(3)\nToken: end of line\n",
    "7 * (4 + 2) - 3 / 3": "Token: int(7)\nToken: times\nToken: l_paren\nToken: int(4)\nToken: plus\nToken: int(2)\nToken: r_paren\nToken: minus\nToken: int(3)\nToken: div\nToken: int(3)\nToken: end of line\n",
    "(8 >> 2) ^ 5 + 3": "Token: l_paren\nToken: int(8)\nToken: bwright\nToken: int(2)\nToken: r_paren\nToken: xor\nToken: int(5)\nToken: plus\nToken: int(3)\nToken: end of line\n",
    "10 + 5 * 2 <= 25": "Token: int(10)\nToken: plus\nToken: int(5)\nToken: times\nToken: int(2)\nToken: less_t_eq\nToken: int(25)\nToken: end of line\n",
    "5+3": "Token: int(5)\nToken: plus\nToken: int(3)\nToken: end of line\n",
    "10-7": "Token: int(10)\nToken: minus\nToken: int(7)\nToken: end of line\n",
    "6*2": "Token: int(6)\nToken: times\nToken: int(2)\nToken: end of line\n",
    "15/3": "Token: int(15)\nToken: div\nToken: int(3)\nToken: end of line\n",
    "9%4": "Token: int(9)\nToken: mod\nToken: int(4)\nToken: end of line\n",
    "3+5*2": "Token: int(3)\nToken: plus\nToken: int(5)\nToken: times\nToken: int(2)\nToken: end of line\n",
    "10-4/2": "Token: int(10)\nToken: minus\nToken: int(4)\nToken: div\nToken: int(2)\nToken: end of line\n",
    "7*(3+2)": "Token: int(7)\nToken: times\nToken: l_paren\nToken: int(3)\nToken: plus\nToken: int(2)\nToken: r_paren\nToken: end of line\n",
    "10+(5-3)": "Token: int(10)\nToken: plus\nToken: l_paren\nToken: int(5)\nToken: minus\nToken: int(3)\nToken: r_paren\nToken: end of line\n",
    "8/(4-2)": "Token: int(8)\nToken: div\nToken: l_paren\nToken: int(4)\nToken: minus\nToken: int(2)\nToken: r_paren\nToken: end of line\n",
    "5&3": "Token: int(5)\nToken: bwand\nToken: int(3)\nToken: end of line\n",
    "8|2": "Token: int(8)\nToken: bwor\nToken: int(2)\nToken: end of line\n",
    "5^2": "Token: int(5)\nToken: xor\nToken: int(2)\nToken: end of line\n",
    "7<<2": "Token: int(7)\nToken: bwleft\nToken: int(2)\nToken: end of line\n",
    "16>>3": "Token: int(16)\nToken: bwright\nToken: int(3)\nToken: end of line\n",
    "5&(3|2)": "Token: int(5)\nToken: bwand\nToken: l_paren\nToken: int(3)\nToken: bwor\nToken: int(2)\nToken: r_paren\nToken: end of line\n",
    "(8>>2) ^ 3": "Token: l_paren\nToken: int(8)\nToken: bwright\nToken: int(2)\nToken: r_paren\nToken: xor\nToken: int(3)\nToken: end of line\n",
    "5<10": "Token: int(5)\nToken: less_t\nToken: int(10)\nToken: end of line\n",
    "10>5": "Token: int(10)\nToken: greater_t\nToken: int(5)\nToken: end of line\n",
    "5==5": "Token: int(5)\nToken: equivalent\nToken: int(5)\nToken: end of line\n",
    "7!=8": "Token: int(7)\nToken: not_equivalent\nToken: int(8)\nToken: end of line\n",
    "5<=5": "Token: int(5)\nToken: less_t_eq\nToken: int(5)\nToken: end of line\n",
    "10>=5": "Token: int(10)\nToken: greater_t_eq\nToken: int(5)\nToken: end of line\n",
    "!(5==5)": "Token: not\nToken: l_paren\nToken: int(5)\nToken: equivalent\nToken: int(5)\nToken: r_paren\nToken: end of line\n",
    "(5>3)&&(7<10)": "Token: l_paren\nToken: int(5)\nToken: greater_t\nToken: int(3)\nToken: r_paren\nToken: and\nToken: l_paren\nToken: int(7)\nToken: less_t\nToken: int(10)\nToken: r_paren\nToken: end of line\n",
    "5+ 3*2-1": "Token: int(5)\nToken: plus\nToken: int(3)\nToken: times\nToken: int(2)\nToken: minus\nToken: int(1)\nToken: end of line\n",
    "(10-5)*2+3": "Token: l_paren\nToken: int(10)\nToken: minus\nToken: int(5)\nToken: r_paren\nToken: times\nToken: int(2)\nToken: plus\nToken: int(3)\nToken: end of line\n",
    "7*(4 + 2)-3 / 3": "Token: int(7)\nToken: times\nToken: l_paren\nToken: int(4)\nToken: plus\nToken: int(2)\nToken: r_paren\nToken: minus\nToken: int(3)\nToken: div\nToken: int(3)\nToken: end of line\n",
    "(8>> 2)^5+3": "Token: l_paren\nToken: int(8)\nToken: bwright\nToken: int(2)\nToken: r_paren\nToken: xor\nToken: int(5)\nToken: plus\nToken: int(3)\nToken: end of line\n",
    "10+5*2<=25": "Token: int(10)\nToken: plus\nToken: int(5)\nToken: times\nToken: int(2)\nToken: less_t_eq\nToken: int(25)\nToken: end of line\n",
    "a * b + c": "Token: id(a)\nToken: times\nToken: id(b)\nToken: plus\nToken: id(c)\nToken: end of line\n",
    "x = 5 + 3": "Token: id(x)\nToken: equal\nToken: int(5)\nToken: plus\nToken: int(3)\nToken: end of line\n",
    "if x > y then { a = b; } else { c = d; }": "Token: if\nToken: id(x)\nToken: greater_t\nToken: id(y)\nToken: then\nToken: l_brace\nToken: id(a)\nToken: equal\nToken: id(b)\nToken: semicolon\nToken: r_brace\nToken: else\nToken: l_brace\nToken: id(c)\nToken: equal\nToken: id(d)\nToken: semicolon\nToken: r_brace\nToken: end of line\n",
    "if x == y then { a = b; } else if z != w then { e = f; }": "Token: if\nToken: id(x)\nToken: equivalent\nToken: id(y)\nToken: then\nToken: l_brace\nToken: id(a)\nToken: equal\nToken: id(b)\nToken: semicolon\nToken: r_brace\nToken: else\nToken: if\nToken: id(z)\nToken: not_equivalent\nToken: id(w)\nToken: then\nToken: l_brace\nToken: id(e)\nToken: equal\nToken: id(f)\nToken: semicolon\nToken: r_brace\nToken: end of line\n",
    "// This is a comment": "",
    "// This is a comment\nx = 5;": "Token: id(x)\nToken: equal\nToken: int(5)\nToken: semicolon\nToken: end of line\n",
    "func add : int -> int -> int;\nadd x y = x + y;": "Token: func\nToken: id(add)\nToken: colon\nToken: int type\nToken: arrow\nToken: int type\nToken: arrow\nToken: int type\nToken: semicolon\nToken: end of line\nToken: id(add)\nToken: id(x)\nToken: id(y)\nToken: equal\nToken: id(x)\nToken: plus\nToken: id(y)\nToken: semicolon\nToken: end of line\n",
    "proc { x = y + z; }": "Token: proc\nToken: l_brace\nToken: id(x)\nToken: equal\nToken: id(y)\nToken: plus\nToken: id(z)\nToken: semicolon\nToken: r_brace\nToken: end of line",
    "func subtract : int -> int -> int;\n\tsubtract x y = x - y;": "Token: func\nToken: id(subtract)\nToken: colon\nToken: int type\nToken: arrow\nToken: int type\nToken: arrow\nToken: int type\nToken: semicolon\nToken: end of line\nToken: id(subtract)\nToken: id(x)\nToken: id(y)\nToken: equal\nToken: id(x)\nToken: minus\nToken: id(y)\nToken: semicolon\nToken: end of line\n",
    "[]": "Token: l_bracket\nToken: r_bracket\nToken: end of line",
    "[1, 2, 3]": "Token: l_bracket\nToken: int(1)\nToken: int(2)\nToken: int(3)\nToken: r_bracket\nToken: end of line",
    "[a + b, c * d];": "Token: l_bracket\nToken: id(a)\nToken: plus\nToken: id(b)\nToken: id(c)\nToken: times\nToken: id(d)\nToken: r_bracket\nToken: semicolon\nToken: end of line",
    "let mutable x: int = 5;": "Token: let\nToken: mutable\nToken: id(x)\nToken: colon\nToken: int type\nToken: equal\nToken: int(5)\nToken: semicolon\nToken: end of line",
    "let y: real = 3.14;": "Token: let\nToken: id(y)\nToken: colon\nToken: real type\nToken: equal\nToken: real(3.14)\nToken: semicolon\nToken: end of line",
    "let z: bool = true;": "Token: let\nToken: id(z)\nToken: colon\nToken: bool type\nToken: equal\nToken: true\nToken: semicolon\nToken: end of line",
    "x + 10;": "Token: id(x)\nToken: plus\nToken: int(10)\nToken: semicolon\nToken: end of line",

}





# Function to run the lexer with a given input expression
def run_lexer(expression):
    # Run the C program and pass the expression via stdin
    process = subprocess.Popen(
        [EXECUTABLE],  
        stdin=subprocess.PIPE,
        stdout=subprocess.PIPE,
        stderr=subprocess.PIPE,
        text=True
    )

    # Send the expression to the program and get the output
    stdout, stderr = process.communicate(input=expression + "\n")

    if process.returncode != 0:
        raise Exception(f"Error running lexer: {stderr}")
    
    return stdout

# Function to normalize and compare the outputs
def normalize_output(output):
    # Remove extra spaces and newlines
    return ' '.join(output.split())

# Loop through the test expressions and run the lexer
for expression, expected_output in expressions.items():
    actual_output = run_lexer(expression)
    
    # Normalize both expected and actual output before comparison
    normalized_expected = normalize_output(expected_output)
    normalized_actual = normalize_output(actual_output)
    
    # Compare the expected output with the actual output
    if normalized_actual == normalized_expected:
        print(f"\033[32mTest passed for: {expression}\033[0m")
    else:
        print(f"\033[31mTest failed for: {expression}\033[0m")
        print(f"Expected:\n{expected_output}")
        print(f"Actual:\n{actual_output}")
        print(f"{repr(expected_output)}")
        print(f"{repr(actual_output)}")
