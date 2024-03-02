type token =
  | IDENTIFIER of (string)
  | CONSTANT of (string)
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

val main :
  (Lexing.lexbuf  -> token) -> Lexing.lexbuf -> string list
