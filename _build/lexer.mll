
{
  open Parser
}

rule token = parse
     [' ' '\t' '\n']
       { token lexbuf }
    | ['a'-'z']+ as str
        { IDENTIFIER(str) }
    | ['A'-'Z']+['a'-'z']* as str
        { CONSTANT(str) }
   