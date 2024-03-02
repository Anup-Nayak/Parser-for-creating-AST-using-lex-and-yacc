type token =
  | IDENTIFIER of (string)
  | CONSTANT of (string)

open Parsing;;
let _ = parse_error;;
let yytransl_const = [|
    0|]

let yytransl_block = [|
  257 (* IDENTIFIER *);
  258 (* CONSTANT *);
    0|]

let yylhs = "\255\255\
\001\000\001\000\000\000"

let yylen = "\002\000\
\000\000\002\000\002\000"

let yydefred = "\000\000\
\000\000\000\000\000\000\003\000\002\000"

let yydgoto = "\002\000\
\004\000"

let yysindex = "\255\255\
\000\255\000\000\001\255\000\000\000\000"

let yyrindex = "\000\000\
\002\000\000\000\000\000\000\000\000\000"

let yygindex = "\000\000\
\000\000"

let yytablesize = 3
let yytable = "\001\000\
\003\000\001\000\005\000"

let yycheck = "\001\000\
\001\001\000\000\002\001"

let yynames_const = "\
  "

let yynames_block = "\
  IDENTIFIER\000\
  CONSTANT\000\
  "

let yyact = [|
  (fun _ -> failwith "parser")
; (fun __caml_parser_env ->
    Obj.repr(
# 13 "parser.mly"
    ([""])
# 58 "parser.ml"
               : string list))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : string) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 15 "parser.mly"
    ( ["IDENTIFIER : "^_1]@["CONSTANT : "^_2] )
# 66 "parser.ml"
               : string list))
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
