type token =
  | IDENTIFIER of (string)
  | CONSTANT of (string)
  | LPAREN
  | RPAREN
  | COMMA
  | ASSIGN
  | DASH
  | PERIOD

open Parsing;;
let _ = parse_error;;
let yytransl_const = [|
  259 (* LPAREN *);
  260 (* RPAREN *);
  261 (* COMMA *);
  262 (* ASSIGN *);
  263 (* DASH *);
  264 (* PERIOD *);
    0|]

let yytransl_block = [|
  257 (* IDENTIFIER *);
  258 (* CONSTANT *);
    0|]

let yylhs = "\255\255\
\001\000\001\000\001\000\001\000\002\000\002\000\003\000\004\000\
\006\000\006\000\006\000\005\000\005\000\000\000"

let yylen = "\002\000\
\000\000\001\000\001\000\001\000\005\000\003\000\000\000\000\000\
\000\000\001\000\003\000\001\000\001\000\002\000"

let yydefred = "\000\000\
\000\000\000\000\012\000\013\000\014\000\002\000\003\000\004\000\
\000\000\000\000\000\000\000\000\000\000\006\000\000\000\000\000\
\011\000\005\000"

let yydgoto = "\002\000\
\005\000\006\000\007\000\008\000\012\000\013\000"

let yysindex = "\004\000\
\001\255\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\254\254\001\255\001\255\002\255\004\255\000\000\001\255\003\255\
\000\000\000\000"

let yyrindex = "\000\000\
\006\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\005\255\000\000\008\255\000\000\000\000\005\255\000\000\
\000\000\000\000"

let yygindex = "\000\000\
\000\000\000\000\000\000\000\000\255\255\254\255"

let yytablesize = 13
let yytable = "\009\000\
\010\000\003\000\004\000\011\000\001\000\001\000\015\000\016\000\
\009\000\014\000\018\000\010\000\017\000"

let yycheck = "\001\000\
\003\001\001\001\002\001\006\001\001\000\000\000\005\001\004\001\
\004\001\011\000\008\001\004\001\015\000"

let yynames_const = "\
  LPAREN\000\
  RPAREN\000\
  COMMA\000\
  ASSIGN\000\
  DASH\000\
  PERIOD\000\
  "

let yynames_block = "\
  IDENTIFIER\000\
  CONSTANT\000\
  "

let yyact = [|
  (fun _ -> failwith "parser")
; (fun __caml_parser_env ->
    Obj.repr(
# 14 "parser.mly"
    ([""])
# 86 "parser.ml"
               : string list))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'fact) in
    Obj.repr(
# 15 "parser.mly"
         ( _1 )
# 93 "parser.ml"
               : string list))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'rule) in
    Obj.repr(
# 16 "parser.mly"
         ( _1 )
# 100 "parser.ml"
               : string list))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'query) in
    Obj.repr(
# 17 "parser.mly"
          ( _1 )
# 107 "parser.ml"
               : string list))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 4 : 'term) in
    let _3 = (Parsing.peek_val __caml_parser_env 2 : 'arguments) in
    Obj.repr(
# 20 "parser.mly"
                                        (["FACT :"]@["    "^_1]@["    "^"TERM(LPAREN)"]@ _3 @["    "^"TERM(RPAREN)"]@["    "^"TERM(PERIOD)"])
# 115 "parser.ml"
               : 'fact))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'term) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'term) in
    Obj.repr(
# 21 "parser.mly"
                     (["DUMMY :"]@["    "^_1]@["    "^"TERM(ASSIGN)"]@["    "^_3])
# 123 "parser.ml"
               : 'fact))
; (fun __caml_parser_env ->
    Obj.repr(
# 24 "parser.mly"
    ([""])
# 129 "parser.ml"
               : 'rule))
; (fun __caml_parser_env ->
    Obj.repr(
# 27 "parser.mly"
    ([""])
# 135 "parser.ml"
               : 'query))
; (fun __caml_parser_env ->
    Obj.repr(
# 30 "parser.mly"
    ([""])
# 141 "parser.ml"
               : 'arguments))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'term) in
    Obj.repr(
# 31 "parser.mly"
         ( ["    "^_1] )
# 148 "parser.ml"
               : 'arguments))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'term) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'arguments) in
    Obj.repr(
# 32 "parser.mly"
                         (["    "^_1]@ _3)
# 156 "parser.ml"
               : 'arguments))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 35 "parser.mly"
               ("TERM(VARIABLE) : "^_1)
# 163 "parser.ml"
               : 'term))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 36 "parser.mly"
             ("TERM(CONSTANT) : "^_1)
# 170 "parser.ml"
               : 'term))
(* Entry main *)
; (fun __caml_parser_env -> raise (Parsing.YYexit (Parsing.peek_val __caml_parser_env 0)))
|]
let yytables =
  { Parsing.actions=yyact;
    Parsing.transl_const=yytransl_const;
    Parsing.transl_block=yytransl_block;
    Parsing.lhs=yylhs;
    Parsing.len=yylen;
    Parsing.defred=yydefred;
    Parsing.dgoto=yydgoto;
    Parsing.sindex=yysindex;
    Parsing.rindex=yyrindex;
    Parsing.gindex=yygindex;
    Parsing.tablesize=yytablesize;
    Parsing.table=yytable;
    Parsing.check=yycheck;
    Parsing.error_function=parse_error;
    Parsing.names_const=yynames_const;
    Parsing.names_block=yynames_block }
let main (lexfun : Lexing.lexbuf -> token) (lexbuf : Lexing.lexbuf) =
   (Parsing.yyparse yytables 1 lexfun lexbuf : string list)
