
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
    | ',' { COMMA }
    | [':']['-'] { ASSIGN }
    | '-' { DASH }
    | '.' { PERIOD }