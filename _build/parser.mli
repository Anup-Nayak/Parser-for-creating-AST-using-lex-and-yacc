type token =
  | IDENTIFIER of (string)
  | CONSTANT of (string)
  | LPAREN
  | RPAREN
  | COMMA
  | ASSIGN
  | DASH
  | PERIOD

val main :
  (Lexing.lexbuf  -> token) -> Lexing.lexbuf -> string list
