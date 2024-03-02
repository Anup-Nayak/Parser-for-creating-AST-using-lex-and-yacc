{
  open Parser
}

rule token = parse
     [' ' '\t' '\n']
       { token lexbuf }
    | "is" {IS}
    | "true" {TRUE}
    | "false" {FALSE}
    | "fail" {FAIL}
    | ['A'-'Z']+['a'-'z' 'A'-'Z' '0'-'9' '_']* as str
        { IDENTIFIER(str) }
    | ['a'-'z']+['a'-'z' 'A'-'Z' '0'-'9' '_']* as str
        { CONSTANT(str) }
    | '(' { LPAREN }
    | ')' { RPAREN }
    | ']' {RSQ}
    | '[' {LSQ}
    | '~' {OFCOURSE} (* DC: using ~ as ofcourse instead of ! since in stdin !. gets interpreted as last input stream*)
    | ['\\']['+'] {NOT}
    | '|' {OR}
    | ',' { COMMA }
    | [':']['-'] { ASSIGN }
    | ['?']['-'] { QUERY }
    | '.' { PERIOD }
    | eof {EOF}
    | ['+' '/' '*' '-' '>' '<' '=']+ as op { OP(op) }
    | ['0'-'9']+ as num { NUMBER(num) }