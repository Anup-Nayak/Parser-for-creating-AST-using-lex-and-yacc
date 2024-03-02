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

val main :
  (Lexing.lexbuf  -> token) -> Lexing.lexbuf -> string list
