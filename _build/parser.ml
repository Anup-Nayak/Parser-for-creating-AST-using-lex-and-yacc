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

open Parsing;;
let _ = parse_error;;
let yytransl_const = [|
  259 (* LPAREN *);
  260 (* RPAREN *);
  261 (* NOT *);
  262 (* OR *);
  263 (* COMMA *);
  264 (* ASSIGN *);
  265 (* DASH *);
  266 (* PERIOD *);
  267 (* RSQ *);
  268 (* LSQ *);
    0 (* EOF *);
  269 (* QUERY *);
    0|]

let yytransl_block = [|
  257 (* IDENTIFIER *);
  258 (* CONSTANT *);
    0|]

let yylhs = "\255\255\
\001\000\001\000\001\000\001\000\002\000\002\000\003\000\003\000\
\003\000\003\000\004\000\004\000\006\000\006\000\005\000\008\000\
\008\000\008\000\007\000\007\000\000\000"

let yylen = "\002\000\
\000\000\001\000\001\000\001\000\002\000\000\000\004\000\005\000\
\003\000\000\000\000\000\003\000\001\000\003\000\004\000\000\000\
\001\000\003\000\001\000\001\000\002\000"

let yydefred = "\000\000\
\000\000\000\000\019\000\020\000\000\000\021\000\002\000\003\000\
\004\000\000\000\000\000\000\000\000\000\000\000\005\000\000\000\
\000\000\012\000\000\000\000\000\000\000\000\000\000\000\009\000\
\000\000\000\000\007\000\000\000\000\000\015\000\014\000\018\000\
\008\000"

let yydgoto = "\002\000\
\006\000\007\000\008\000\009\000\020\000\021\000\013\000\023\000"

let yysindex = "\007\000\
\000\255\000\000\000\000\000\000\018\255\000\000\000\000\000\000\
\000\000\253\254\001\255\004\255\008\255\018\255\000\000\018\255\
\018\255\000\000\018\255\010\255\011\255\015\255\019\255\000\000\
\020\255\018\255\000\000\018\255\016\255\000\000\000\000\000\000\
\000\000"

let yyrindex = "\000\000\
\025\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\024\255\
\000\000\000\000\024\255\021\255\000\000\025\255\000\000\000\000\
\000\000\000\000\000\000\024\255\022\255\000\000\000\000\000\000\
\000\000"

let yygindex = "\000\000\
\000\000\000\000\000\000\000\000\005\000\006\000\255\255\240\255"

let yytablesize = 32
let yytable = "\011\000\
\003\000\004\000\025\000\016\000\014\000\010\000\015\000\001\000\
\017\000\012\000\019\000\032\000\005\000\018\000\022\000\024\000\
\026\000\022\000\003\000\004\000\027\000\028\000\029\000\030\000\
\001\000\033\000\022\000\016\000\017\000\015\000\013\000\031\000"

let yycheck = "\001\000\
\001\001\002\001\019\000\003\001\008\001\001\000\010\001\001\000\
\008\001\005\000\003\001\028\000\013\001\010\001\016\000\017\000\
\007\001\019\000\001\001\002\001\010\001\007\001\004\001\004\001\
\000\000\010\001\028\000\004\001\004\001\008\001\010\001\026\000"

let yynames_const = "\
  LPAREN\000\
  RPAREN\000\
  NOT\000\
  OR\000\
  COMMA\000\
  ASSIGN\000\
  DASH\000\
  PERIOD\000\
  RSQ\000\
  LSQ\000\
  EOF\000\
  QUERY\000\
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
# 116 "parser.ml"
               : string list))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'fact) in
    Obj.repr(
# 15 "parser.mly"
         ( _1 )
# 123 "parser.ml"
               : string list))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'rule) in
    Obj.repr(
# 16 "parser.mly"
         ( _1 )
# 130 "parser.ml"
               : string list))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'query) in
    Obj.repr(
# 17 "parser.mly"
          ( _1 )
# 137 "parser.ml"
               : string list))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'predicate) in
    Obj.repr(
# 20 "parser.mly"
                     ( ["FACT : "]@ _1 @ ["    "^"TERM(PERIOD)"])
# 144 "parser.ml"
               : 'fact))
; (fun __caml_parser_env ->
    Obj.repr(
# 21 "parser.mly"
    ([""])
# 150 "parser.ml"
               : 'fact))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 3 : 'predicate) in
    let _3 = (Parsing.peek_val __caml_parser_env 1 : 'body) in
    Obj.repr(
# 24 "parser.mly"
                                 (["RULE : "]@ _1  @ ["    "^"TERM(ASSIGN)"]@ _3 @["    "^"TERM(PERIOD)"])
# 158 "parser.ml"
               : 'rule))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 4 : 'term) in
    let _3 = (Parsing.peek_val __caml_parser_env 2 : 'arguments) in
    Obj.repr(
# 25 "parser.mly"
                                        (["FACT :"]@["    "^_1]@["    "^"TERM(LPAREN)"]@ _3 @["    "^"TERM(RPAREN)"]@["    "^"TERM(PERIOD)"])
# 166 "parser.ml"
               : 'rule))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'term) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'term) in
    Obj.repr(
# 26 "parser.mly"
                     (["DUMMY :"]@["    "^_1]@["    "^"TERM(ASSIGN)"]@["    "^_3])
# 174 "parser.ml"
               : 'rule))
; (fun __caml_parser_env ->
    Obj.repr(
# 27 "parser.mly"
    ([""])
# 180 "parser.ml"
               : 'rule))
; (fun __caml_parser_env ->
    Obj.repr(
# 30 "parser.mly"
    ([""])
# 186 "parser.ml"
               : 'query))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'predicate) in
    Obj.repr(
# 31 "parser.mly"
                           ( ["QUERY: " ] @ _2 @ ["    "^"TERM(PERIOD)"])
# 193 "parser.ml"
               : 'query))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'predicate) in
    Obj.repr(
# 34 "parser.mly"
              (_1)
# 200 "parser.ml"
               : 'body))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'predicate) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'body) in
    Obj.repr(
# 35 "parser.mly"
                         ( _1 @ ["    "^"TERM(COMMA)"] @ _3)
# 208 "parser.ml"
               : 'body))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 3 : 'term) in
    let _3 = (Parsing.peek_val __caml_parser_env 1 : 'arguments) in
    Obj.repr(
# 38 "parser.mly"
                                 (["PREDICATE : "]@["\t"]@["    "^_1]@["    "^"TERM(LPAREN)"]@ _3 @["    "^"TERM(RPAREN)"])
# 216 "parser.ml"
               : 'predicate))
; (fun __caml_parser_env ->
    Obj.repr(
# 41 "parser.mly"
    ([""])
# 222 "parser.ml"
               : 'arguments))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'term) in
    Obj.repr(
# 42 "parser.mly"
         ( ["    "^_1] )
# 229 "parser.ml"
               : 'arguments))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'term) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'arguments) in
    Obj.repr(
# 43 "parser.mly"
                         (["    "^_1]@ _3)
# 237 "parser.ml"
               : 'arguments))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 46 "parser.mly"
               ("TERM(VARIABLE) : "^_1)
# 244 "parser.ml"
               : 'term))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 47 "parser.mly"
             ("TERM(CONSTANT) : "^_1)
# 251 "parser.ml"
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
