import subprocess

EXECUTABLE = "./lex"

# List of test expressions to feed into the lexer
expressions = {
    "3.14 *3;": "Token: real(3.14)\nToken: times\nToken: int(3)\nToken: semicolon\nToken: end of line\n",
    "5 + 3": "Token: int(5)\nToken: plus\nToken: int(3)\nToken: end of line\n",
    "10 - 7": "Token: int(10)\nToken: minus\nToken: int(7)\nToken: end of line\n",
    "6 * 2": "Token: int(6)\nToken: times\nToken: int(2)\nToken: end of line\n",
    "15 / 3": "Token: int(15)\nToken: divide\nToken: int(3)\nToken: end of line\n",
    "9 % 4": "Token: int(9)\nToken: mod\nToken: int(4)\nToken: end of line\n",
    "3 + 5 * 2": "Token: int(3)\nToken: plus\nToken: int(5)\nToken: times\nToken: int(2)\nToken: end of line\n",
    "10 - 4 / 2": "Token: int(10)\nToken: minus\nToken: int(4)\nToken: divide\nToken: int(2)\nToken: end of line\n",
    "7 * (3 + 2)": "Token: int(7)\nToken: times\nToken: lparen\nToken: int(3)\nToken: plus\nToken: int(2)\nToken: rparen\nToken: end of line\n",
    "10 + (5 - 3)": "Token: int(10)\nToken: plus\nToken: lparen\nToken: int(5)\nToken: minus\nToken: int(3)\nToken: rparen\nToken: end of line\n",
    "8 / (4 - 2)": "Token: int(8)\nToken: divide\nToken: lparen\nToken: int(4)\nToken: minus\nToken: int(2)\nToken: rparen\nToken: end of line\n",
    "5 & 3": "Token: int(5)\nToken: bw_and\nToken: int(3)\nToken: end of line\n",
    "8 | 2": "Token: int(8)\nToken: bw_or\nToken: int(2)\nToken: end of line\n",
    "5 ^ 2": "Token: int(5)\nToken: xor\nToken: int(2)\nToken: end of line\n",
    "7 << 2": "Token: int(7)\nToken: lshift\nToken: int(2)\nToken: end of line\n",
    "16 >> 3": "Token: int(16)\nToken: rshift\nToken: int(3)\nToken: end of line\n",
    "5 & (3 | 2)": "Token: int(5)\nToken: bw_and\nToken: lparen\nToken: int(3)\nToken: bw_or\nToken: int(2)\nToken: rparen\nToken: end of line\n",
    "(8 >> 2) ^ 3": "Token: lparen\nToken: int(8)\nToken: rshift\nToken: int(2)\nToken: rparen\nToken: xor\nToken: int(3)\nToken: end of line\n",
    "5 < 10": "Token: int(5)\nToken: lt\nToken: int(10)\nToken: end of line\n",
    "10 > 5": "Token: int(10)\nToken: gt\nToken: int(5)\nToken: end of line\n",
    "5 == 5": "Token: int(5)\nToken: eqeq\nToken: int(5)\nToken: end of line\n",
    "7 != 8": "Token: int(7)\nToken: noteq\nToken: int(8)\nToken: end of line\n",
    "5 <= 5": "Token: int(5)\nToken: lteq\nToken: int(5)\nToken: end of line\n",
    "10 >= 5": "Token: int(10)\nToken: gteq\nToken: int(5)\nToken: end of line\n",
    "!(5 == 5)": "Token: not\nToken: lparen\nToken: int(5)\nToken: eqeq\nToken: int(5)\nToken: rparen\nToken: end of line\n",
    "(5 > 3) && (7 < 10)": "Token: lparen\nToken: int(5)\nToken: gt\nToken: int(3)\nToken: rparen\nToken: and\nToken: lparen\nToken: int(7)\nToken: lt\nToken: int(10)\nToken: rparen\nToken: end of line\n",
    "5 + 3 * 2 - 1": "Token: int(5)\nToken: plus\nToken: int(3)\nToken: times\nToken: int(2)\nToken: minus\nToken: int(1)\nToken: end of line\n",
    "(10 - 5) * 2 + 3": "Token: lparen\nToken: int(10)\nToken: minus\nToken: int(5)\nToken: rparen\nToken: times\nToken: int(2)\nToken: plus\nToken: int(3)\nToken: end of line\n",
    "7 * (4 + 2) - 3 / 3": "Token: int(7)\nToken: times\nToken: lparen\nToken: int(4)\nToken: plus\nToken: int(2)\nToken: rparen\nToken: minus\nToken: int(3)\nToken: divide\nToken: int(3)\nToken: end of line\n",
    "(8 >> 2) ^ 5 + 3": "Token: lparen\nToken: int(8)\nToken: rshift\nToken: int(2)\nToken: rparen\nToken: xor\nToken: int(5)\nToken: plus\nToken: int(3)\nToken: end of line\n",
    "10 + 5 * 2 <= 25": "Token: int(10)\nToken: plus\nToken: int(5)\nToken: times\nToken: int(2)\nToken: lteq\nToken: int(25)\nToken: end of line\n",
    "5+3": "Token: int(5)\nToken: plus\nToken: int(3)\nToken: end of line\n",
    "10-7": "Token: int(10)\nToken: minus\nToken: int(7)\nToken: end of line\n",
    "6*2": "Token: int(6)\nToken: times\nToken: int(2)\nToken: end of line\n",
    "15/3": "Token: int(15)\nToken: divide\nToken: int(3)\nToken: end of line\n",
    "9%4": "Token: int(9)\nToken: mod\nToken: int(4)\nToken: end of line\n",
    "3+5*2": "Token: int(3)\nToken: plus\nToken: int(5)\nToken: times\nToken: int(2)\nToken: end of line\n",
    "10-4/2": "Token: int(10)\nToken: minus\nToken: int(4)\nToken: divide\nToken: int(2)\nToken: end of line\n",
    "7*(3+2)": "Token: int(7)\nToken: times\nToken: lparen\nToken: int(3)\nToken: plus\nToken: int(2)\nToken: rparen\nToken: end of line\n",
    "10+(5-3)": "Token: int(10)\nToken: plus\nToken: lparen\nToken: int(5)\nToken: minus\nToken: int(3)\nToken: rparen\nToken: end of line\n",
    "8/(4-2)": "Token: int(8)\nToken: divide\nToken: lparen\nToken: int(4)\nToken: minus\nToken: int(2)\nToken: rparen\nToken: end of line\n",
    "5&3": "Token: int(5)\nToken: bw_and\nToken: int(3)\nToken: end of line\n",
    "8|2": "Token: int(8)\nToken: bw_or\nToken: int(2)\nToken: end of line\n",
    "5^2": "Token: int(5)\nToken: xor\nToken: int(2)\nToken: end of line\n",
    "7<<2": "Token: int(7)\nToken: lshift\nToken: int(2)\nToken: end of line\n",
    "16>>3": "Token: int(16)\nToken: rshift\nToken: int(3)\nToken: end of line\n",
    "5&(3|2)": "Token: int(5)\nToken: bw_and\nToken: lparen\nToken: int(3)\nToken: bw_or\nToken: int(2)\nToken: rparen\nToken: end of line\n",
    "(8>>2) ^ 3": "Token: lparen\nToken: int(8)\nToken: rshift\nToken: int(2)\nToken: rparen\nToken: xor\nToken: int(3)\nToken: end of line\n",
    "5<10": "Token: int(5)\nToken: lt\nToken: int(10)\nToken: end of line\n",
    "10>5": "Token: int(10)\nToken: gt\nToken: int(5)\nToken: end of line\n",
    "5==5": "Token: int(5)\nToken: eqeq\nToken: int(5)\nToken: end of line\n",
    "7!=8": "Token: int(7)\nToken: noteq\nToken: int(8)\nToken: end of line\n",
    "5<=5": "Token: int(5)\nToken: lteq\nToken: int(5)\nToken: end of line\n",
    "10>=5": "Token: int(10)\nToken: gteq\nToken: int(5)\nToken: end of line\n",
    "!(5==5)": "Token: not\nToken: lparen\nToken: int(5)\nToken: eqeq\nToken: int(5)\nToken: rparen\nToken: end of line\n",
    "(5>3)&&(7<10)": "Token: lparen\nToken: int(5)\nToken: gt\nToken: int(3)\nToken: rparen\nToken: and\nToken: lparen\nToken: int(7)\nToken: lt\nToken: int(10)\nToken: rparen\nToken: end of line\n",
    "5+ 3*2-1": "Token: int(5)\nToken: plus\nToken: int(3)\nToken: times\nToken: int(2)\nToken: minus\nToken: int(1)\nToken: end of line\n",
    "(10-5)*2+3": "Token: lparen\nToken: int(10)\nToken: minus\nToken: int(5)\nToken: rparen\nToken: times\nToken: int(2)\nToken: plus\nToken: int(3)\nToken: end of line\n",
    "7*(4 + 2)-3 / 3": "Token: int(7)\nToken: times\nToken: lparen\nToken: int(4)\nToken: plus\nToken: int(2)\nToken: rparen\nToken: minus\nToken: int(3)\nToken: divide\nToken: int(3)\nToken: end of line\n",
    "(8>> 2)^5+3": "Token: lparen\nToken: int(8)\nToken: rshift\nToken: int(2)\nToken: rparen\nToken: xor\nToken: int(5)\nToken: plus\nToken: int(3)\nToken: end of line\n",
    "10+5*2<=25": "Token: int(10)\nToken: plus\nToken: int(5)\nToken: times\nToken: int(2)\nToken: lteq\nToken: int(25)\nToken: end of line\n",
    "a * b + c": "Token: id(a)\nToken: times\nToken: id(b)\nToken: plus\nToken: id(c)\nToken: end of line\n",
    "x = 5 + 3": "Token: id(x)\nToken: equal\nToken: int(5)\nToken: plus\nToken: int(3)\nToken: end of line\n",
    "if x > y  { a = b; } else { c = d; }": "Token: if\nToken: id(x)\nToken: gt\nToken: id(y)\nToken: lbrace\nToken: id(a)\nToken: equal\nToken: id(b)\nToken: semicolon\nToken: rbrace\nToken: else\nToken: lbrace\nToken: id(c)\nToken: equal\nToken: id(d)\nToken: semicolon\nToken: rbrace\nToken: end of line\n",
    "if x == y  { a = b; } else if z != w  { e = f; }": "Token: if\nToken: id(x)\nToken: eqeq\nToken: id(y)\nToken: lbrace\nToken: id(a)\nToken: equal\nToken: id(b)\nToken: semicolon\nToken: rbrace\nToken: else\nToken: if\nToken: id(z)\nToken: noteq\nToken: id(w)\nToken: lbrace\nToken: id(e)\nToken: equal\nToken: id(f)\nToken: semicolon\nToken: rbrace\nToken: end of line\n",
    "// This is a comment": "",
    "// This is a comment\nx = 5;": "Token: id(x)\nToken: equal\nToken: int(5)\nToken: semicolon\nToken: end of line\n",
    "func add : int -> int -> int;\nadd x y = x + y;": "Token: func\nToken: id(add)\nToken: colon\nToken: int_type\nToken: arrow\nToken: int_type\nToken: arrow\nToken: int_type\nToken: semicolon\nToken: end of line\nToken: id(add)\nToken: id(x)\nToken: id(y)\nToken: equal\nToken: id(x)\nToken: plus\nToken: id(y)\nToken: semicolon\nToken: end of line\n",
    "func subtract : int -> int -> int;\n\tsubtract x y = x - y;": "Token: func\nToken: id(subtract)\nToken: colon\nToken: int_type\nToken: arrow\nToken: int_type\nToken: arrow\nToken: int_type\nToken: semicolon\nToken: end of line\nToken: id(subtract)\nToken: id(x)\nToken: id(y)\nToken: equal\nToken: id(x)\nToken: minus\nToken: id(y)\nToken: semicolon\nToken: end of line\n",
    "[]": "Token: lbracket\nToken: rbracket\nToken: end of line",
    "[1, 2, 3]": "Token: lbracket\nToken: int(1)\nToken: int(2)\nToken: int(3)\nToken: rbracket\nToken: end of line",
    "[a + b, c * d];": "Token: lbracket\nToken: id(a)\nToken: plus\nToken: id(b)\nToken: id(c)\nToken: times\nToken: id(d)\nToken: rbracket\nToken: semicolon\nToken: end of line",
    "const y: real = 3.14;": "Token: const\nToken: id(y)\nToken: colon\nToken: real_type\nToken: equal\nToken: real(3.14)\nToken: semicolon\nToken: end of line",
    "var z: bool = true;": "Token: var\nToken: id(z)\nToken: colon\nToken: bool_type\nToken: equal\nToken: true\nToken: semicolon\nToken: end of line",
    "x + 10;": "Token: id(x)\nToken: plus\nToken: int(10)\nToken: semicolon\nToken: end of line",
    "func nothing() -> () {}": "Token: func\nToken: id(nothing)\nToken: lparen\nToken: rparen\nToken: arrow\nToken: lparen\nToken: rparen\nToken: lbrace\nToken: rbrace\nToken: end of line",
    """func foo(bar : int, fizz : real) -> (real) {
            const buzz :int = 6
            var zoo :real = 3.2 
            zoo = fizz*bar
            
            return buzz / zoo
        }

        func main() {
            const a : int = 9
            var b : real = 3.14

            var x : int = 0
            var y : real = 1.5

            if (x < a) {
                // a bunch of stuff
            }
            elseif (x > a) {
                /* other stuff
                */
            }
            else {
                y = foo (a, b)
            }

            for x in [1, 2, 3, 4, 5] {
                print(x)
            }

            const g : int[] = [2, 3, 5, 7, 11, 13, 17, 19, 23]

            for x in g {
                print(x*2)
            }

            var i = 0
            while (i < g.length) {
                g = g + 1
            }

            func fac(n : int) -> (int) {
                if (n == 0 || n == 1) { return 1 }
                return n * fac(n-1)
            } 

            const numbers : int[] = [1, 2, 3]
            const my_name = "Joe"

            func rshift(val : int, places : int) -> int {
                return val >> places
            }
        }""": """Token: func
Token: id(foo)
Token: lparen
Token: id(bar)
Token: colon
Token: int_type
Token: id(fizz)
Token: colon
Token: real_type
Token: rparen
Token: arrow
Token: lparen
Token: real_type
Token: rparen
Token: lbrace
Token: end of line
Token: const
Token: id(buzz)
Token: colon
Token: int_type
Token: equal
Token: int(6)
Token: end of line
Token: var
Token: id(zoo)
Token: colon
Token: real_type
Token: equal
Token: real(3.2)
Token: end of line
Token: id(zoo)
Token: equal
Token: id(fizz)
Token: times
Token: id(bar)
Token: end of line
Token: end of line
Token: return
Token: id(buzz)
Token: divide
Token: id(zoo)
Token: end of line
Token: rbrace
Token: end of line
Token: end of line
Token: func
Token: id(main)
Token: lparen
Token: rparen
Token: lbrace
Token: end of line
Token: const
Token: id(a)
Token: colon
Token: int_type
Token: equal
Token: int(9)
Token: end of line
Token: var
Token: id(b)
Token: colon
Token: real_type
Token: equal
Token: real(3.14)
Token; end of line
Token: end of line
Token: var
Token: id(x)
Token: colon
Token: int_type
Token: equal
Token: int(0)
Token: end of line
Token: var
Token: id(y)
Token: colon
Token: real_type
Token: equal
Token: real(1.5)
Token: end of line
Token: end of line
Token: if
Token: lparen
Token: id(x)
Token: lt
Token: id(a)
Token: rparen
Token: lbrace
Token: end of line
Token: rbrace
Token: end of line
Token: elseif
Token: lparen
Token: id(x)
Token: gt
Token: id(a)
Token: rparen
Token: lbrace
Token: end of line
Token: end of line
Token: rbrace
Token: end of line
Token: else
Token: lbrace
Token: end of line
Token: id(y)
Token: equal
Token: id(foo)
Token: lparen
Token: id(a)
Token: id(b)
Token: rparen
Token: end of line
Token: rbrace
Token: end of line 
Token: end of line 
Token: for
Token: id(x)
Token: in
Token: lbracket
Token: int(1)
Token: int(2)
Token: int(3)
Token: int(4)
Token: int(5)
Token: rbracket
Token: lbrace
Token: end of line   
Token: id(print)
Token: lparen
Token: id(x)
Token: rparen
Token: end of line
Token: rbrace
Token: end of line
Token: end of line
Token: const
Token: id(g)
Token: colon
Token: int_type
Token: lbracket
Token: rbracket
Token: equal
Token: lbracket
Token: int(2)
Token: int(3)
Token: int(5)
Token: int(7)
Token: int(11)
Token: int(13)
Token: int(17)
Token: int(19)
Token: int(23)
Token: rbracket
Token: end of line
Token: end of line
Token: for
Token: id(x)
Token: in
Token: id(g)
Token: lbrace
Token: end of line
Token: id(print)
Token: lparen
Token: id(x)
Token: times
Token: int(2)
Token: rparen
Token: end of line
Token: rbrace
Token: end of line
Token: end of line
Token: var
Token: id(i)
Token: equal
Token: int(0)
Token: end of line
Token: while
Token: lparen
Token: id(i)
Token: lt
Token: id(g)
Token: dot
Token: id(length)
Token: rparen
Token: lbrace
Token: end of line
Token: id(g)
Token: equal
Token: id(g)
Token: plus
Token: int(1)
Token: end of line
Token: rbrace
Token: end of line
Token: end of line
Token: func
Token: id(fac)
Token: lparen
Token: id(n)
Token: colon
Token: int_type
Token: rparen
Token: arrow
Token: lparen
Token: int_type
Token: rparen
Token: lbrace
Token: end of line
Token: if
Token: lparen
Token: id(n)
Token: eqeq
Token: int(0)
Token: or
Token: id(n)
Token: eqeq
Token: int(1)
Token: rparen
Token: lbrace
Token: return
Token: int(1)
Token: rbrace
Token: end of line
Token: return
Token: id(n)
Token: times
Token: id(fac)
Token: lparen
Token: id(n)
Token: minus
Token: int(1)
Token: rparen
Token: end of line
Token: rbrace
Token: end of line
Token: end of line
Token: const
Token: id(numbers)
Token: colon
Token: int_type
Token: lbracket
Token: rbracket
Token: equal
Token: lbracket
Token: int(1)
Token: int(2)
Token: int(3)
Token: rbracket
Token: end of line
Token: const
Token: id(my_name)
Token: equal
Token: string(Joe)
Token: end of line
Token: end of line
Token: func
Token: id(rshift)
Token: lparen
Token: id(val)
Token: colon
Token: int_type
Token: id(places)
Token: colon
Token: int_type
Token: rparen
Token: arrow
Token: int_type
Token: lbrace
Token: end of line
Token: return
Token: id(val)
Token: rshift
Token: id(places)
Token: end of line
Token: rbrace
Token: end of line
Token: rbrace"""}





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

actual = []
# Loop through the test expressions and run the lexer
for expression, expected_output in expressions.items():
    actual_output = run_lexer(expression)
    
    # Normalize both expected and actual output before comparison
    normalized_expected = normalize_output(expected_output)
    normalized_actual = normalize_output(actual_output)
    actual.append(normalized_actual)
    # Compare the expected output with the actual output
    if normalized_actual == normalized_expected:
        print(f"\033[32mTest passed for: {expression}\033[0m")
    else:
        print(f"\033[31mTest failed for: {expression}\033[0m")
        print(f"Expected:\n{expected_output}")
        print(f"Actual:\n{actual_output}")
#        print(f"{repr(expected_output)}")
#        print(f"{repr(actual_output)}")

for dammit in actual:
    print(dammit)
    print()

print("""Token: func
Token: id(foo)
Token: lparen
Token: id(bar)
Token: colon
Token: int_type
Token: id(fizz)
Token: colon
Token: real_type
Token: rparen
Token: arrow
Token: lparen
Token: real_type
Token: rparen
Token: lbrace
Token: end of line
Token: const
Token: id(buzz)
Token: colon
Token: int_type
Token: equal
Token: int(6)
Token: end of line
Token: var
Token: id(zoo)
Token: colon
Token: real_type
Token: equal
Token: real(3.2)
Token: end of line
Token: id(zoo)
Token: equal
Token: id(fizz)
Token: times
Token: id(bar)
Token: end of line
Token: end of line
Token: return
Token: id(buzz)
Token: divide
Token: id(zoo)
Token: end of line
Token: rbrace
Token: end of line
Token: end of line
Token: func
Token: id(main)
Token: lparen
Token: rparen
Token: lbrace
Token: end of line
Token: const
Token: id(a)
Token: colon
Token: int_type
Token: equal
Token: int(9)
Token: end of line
Token: var
Token: id(b)
Token: colon
Token: real_type
Token: equal
Token: real(3.14)
Token; end of line
Token: end of line
Token: var
Token: id(x)
Token: colon
Token: int_type
Token: equal
Token: int(0)
Token: end of line
Token: var
Token: id(y)
Token: colon
Token: real_type
Token: equal
Token: real(1.5)
Token: end of line
Token: end of line
Token: if
Token: lparen
Token: id(x)
Token: lt
Token: id(a)
Token: rparen
Token: lbrace
Token: end of line
Token: rbrace
Token: end of line
Token: elseif
Token: lparen
Token: id(x)
Token: gt
Token: id(a)
Token: rparen
Token: lbrace
Token: end of line
Token: end of line
Token: rbrace
Token: end of line
Token: else
Token: lbrace
Token: end of line
Token: id(y)
Token: equal
Token: id(foo)
Token: lparen
Token: id(a)
Token: id(b)
Token: rparen
Token: end of line
Token: rbrace
Token: end of line 
Token: end of line 
Token: for
Token: id(x)
Token: in
Token: lbracket
Token: int(1)
Token: int(2)
Token: int(3)
Token: int(4)
Token: int(5)
Token: rbracket
Token: lbrace
Token: end of line   
Token: id(print)
Token: lparen
Token: id(x)
Token: rparen
Token: end of line
Token: rbrace
Token: end of line
Token: end of line
Token: const
Token: id(g)
Token: colon
Token: int_type
Token: lbracket
Token: rbracket
Token: equal
Token: lbracket
Token: int(2)
Token: int(3)
Token: int(5)
Token: int(7)
Token: int(11)
Token: int(13)
Token: int(17)
Token: int(19)
Token: int(23)
Token: rbracket
Token: end of line
Token: end of line
Token: for
Token: id(x)
Token: in
Token: id(g)
Token: lbrace
Token: end of line
Token: id(print)
Token: lparen
Token: id(x)
Token: times
Token: int(2)
Token: rparen
Token: end of line
Token: rbrace
Token: end of line
Token: end of line
Token: var
Token: id(i)
Token: equal
Token: int(0)
Token: end of line
Token: while
Token: lparen
Token: id(i)
Token: lt
Token: id(g)
Token: dot
Token: id(length)
Token: rparen
Token: lbrace
Token: end of line
Token: id(g)
Token: equal
Token: id(g)
Token: plus
Token: int(1)
Token: end of line
Token: rbrace
Token: end of line
Token: end of line
Token: func
Token: id(fac)
Token: lparen
Token: id(n)
Token: colon
Token: int_type
Token: rparen
Token: arrow
Token: lparen
Token: int_type
Token: rparen
Token: lbrace
Token: end of line
Token: if
Token: lparen
Token: id(n)
Token: eqeq
Token: int(0)
Token: or
Token: id(n)
Token: eqeq
Token: int(1)
Token: rparen
Token: lbrace
Token: return
Token: int(1)
Token: rbrace
Token: end of line
Token: return
Token: id(n)
Token: times
Token: id(fac)
Token: lparen
Token: id(n)
Token: minus
Token: int(1)
Token: rparen
Token: end of line
Token: rbrace
Token: end of line
Token: end of line
Token: const
Token: id(numbers)
Token: colon
Token: int_type
Token: lbracket
Token: rbracket
Token: equal
Token: lbracket
Token: int(1)
Token: int(2)
Token: int(3)
Token: rbracket
Token: end of line
Token: const
Token: id(my_name)
Token: equal
Token: string(Joe)
Token: end of line
Token: end of line
Token: func
Token: id(rshift)
Token: lparen
Token: id(val)
Token: colon
Token: int_type
Token: id(places)
Token: colon
Token: int_type
Token: rparen
Token: arrow
Token: int_type
Token: lbrace
Token: end of line
Token: return
Token: id(val)
Token: rshift
Token: id(places)
Token: end of line
Token: rbrace
Token: end of line
Token: rbrace
Token: end of line""")
