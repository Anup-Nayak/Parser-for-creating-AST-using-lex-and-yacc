
{
  open Parser
}

rule token = parse
     [' ' '\t' '\n']
       { token lexbuf }
    | ['A'-'Z']+['a'-'z']* as str
        { IDENTIFIER(str) }
    | ['a'-'z']+ as str
        { CONSTANT(str) }
    | '(' { LPAREN }
    | ')' { RPAREN }
    | ']' {RSQ}
    | '[' {LSQ}
    | "not" {NOT}
    | '|' {OR}
    | ',' { COMMA }
    | [':']['-'] { ASSIGN }
    | ['?']['-'] { QUERY }
    | '-' { DASH }
    | '.' { PERIOD }
    | eof {EOF}
