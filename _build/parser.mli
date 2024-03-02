type token =
  | IDENTIFIER of (string)
  | CONSTANT of (string)

val main :
  (Lexing.lexbuf  -> token) -> Lexing.lexbuf -> string list
