{
  open Parser
}

rule token = parse
     [' ' '\t' '\n']
       { token lexbuf }
    | ['A'-'Z']+['a'-'z' 'A'-'Z' '0'-'9']* as str
        { IDENTIFIER(str) }
    | ['a'-'z']+['a'-'z' 'A'-'Z' '0'-'9']* as str
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
    | '-' { DASH }
    | '.' { PERIOD }
    | eof {EOF}
