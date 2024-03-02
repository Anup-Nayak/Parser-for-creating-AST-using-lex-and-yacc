type token =
  | IDENTIFIER of (string)
  | CONSTANT of (string)
  | OP of (string)
  | NUMBER of (string)
  | LPAREN
  | RPAREN
  | NOT
  | OR
  | COMMA
  | ASSIGN
  | DASH
  | PERIOD
  | RSQ
  | LSQ
  | EOF
  | QUERY
  | OFCOURSE
  | TRUE
  | FALSE
  | FAIL
  | IS

val main :
  (Lexing.lexbuf  -> token) -> Lexing.lexbuf -> string list
