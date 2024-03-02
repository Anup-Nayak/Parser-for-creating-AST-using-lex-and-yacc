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
  270 (* OFCOURSE *);
    0|]

let yytransl_block = [|
  257 (* IDENTIFIER *);
  258 (* CONSTANT *);
    0|]

let yylhs = "\255\255\
\001\000\001\000\002\000\002\000\002\000\003\000\003\000\003\000\
\003\000\004\000\004\000\005\000\005\000\005\000\005\000\006\000\
\006\000\008\000\008\000\008\000\007\000\010\000\010\000\010\000\
\009\000\009\000\000\000"

let yylen = "\002\000\
\001\000\001\000\000\000\001\000\002\000\000\000\001\000\001\000\
\001\000\000\000\002\000\000\000\003\000\004\000\005\000\000\000\
\003\000\001\000\003\000\001\000\004\000\000\000\001\000\003\000\
\001\000\001\000\002\000"

let yydefred = "\000\000\
\000\000\000\000\025\000\026\000\001\000\000\000\027\000\002\000\
\000\000\007\000\008\000\009\000\000\000\000\000\000\000\005\000\
\000\000\011\000\000\000\017\000\000\000\000\000\000\000\000\000\
\000\000\000\000\020\000\000\000\000\000\014\000\000\000\021\000\
\015\000\019\000\024\000"

let yydgoto = "\002\000\
\007\000\008\000\009\000\010\000\011\000\012\000\023\000\024\000\
\014\000\026\000"

let yysindex = "\010\000\
\003\000\000\000\000\000\000\000\000\000\026\255\000\000\000\000\
\008\255\000\000\000\000\000\000\016\255\255\254\006\255\000\000\
\003\255\000\000\026\255\000\000\005\255\000\000\011\255\015\255\
\022\255\009\255\000\000\020\255\005\255\000\000\026\255\000\000\
\000\000\000\000\000\000"

let yyrindex = "\000\000\
\031\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\031\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\028\255\000\000\000\000\001\000\023\255\000\000\
\030\255\000\000\000\000\000\000\000\000\000\000\028\255\000\000\
\000\000\000\000\000\000"

let yygindex = "\000\000\
\000\000\026\000\000\000\000\000\000\000\000\000\014\000\249\255\
\237\255\005\000"

let yytablesize = 272
let yytable = "\025\000\
\013\000\019\000\005\000\003\000\004\000\003\000\004\000\021\000\
\003\000\004\000\001\000\025\000\032\000\028\000\013\000\020\000\
\022\000\029\000\027\000\015\000\006\000\034\000\013\000\017\000\
\030\000\018\000\003\000\004\000\031\000\033\000\003\000\022\000\
\018\000\023\000\016\000\035\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\013\000\013\000\003\000\004\000\000\000\000\000\000\000\
\000\000\000\000\020\000\000\000\000\000\013\000\000\000\006\000"

let yycheck = "\019\000\
\000\000\003\001\000\000\001\001\002\001\001\001\002\001\005\001\
\001\001\002\001\001\000\031\000\004\001\021\000\001\000\010\001\
\014\001\007\001\014\001\006\000\013\001\029\000\009\000\008\001\
\010\001\010\001\001\001\002\001\007\001\010\001\000\000\004\001\
\010\001\004\001\009\000\031\000\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\001\001\002\001\001\001\002\001\255\255\255\255\255\255\
\255\255\255\255\010\001\255\255\255\255\013\001\255\255\013\001"

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
  OFCOURSE\000\
  "

let yynames_block = "\
  IDENTIFIER\000\
  CONSTANT\000\
  "

let yyact = [|
  (fun _ -> failwith "parser")
; (fun __caml_parser_env ->
    Obj.repr(
# 12 "parser.mly"
        (["END of FILE"])
# 183 "parser.ml"
               : string list))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'program) in
    Obj.repr(
# 13 "parser.mly"
            (["PROGRAM : "]  @ ["indentForward"] @ _1)
# 190 "parser.ml"
               : string list))
; (fun __caml_parser_env ->
    Obj.repr(
# 16 "parser.mly"
    ([""])
# 196 "parser.ml"
               : 'program))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'clause) in
    Obj.repr(
# 17 "parser.mly"
           ( _1 )
# 203 "parser.ml"
               : 'program))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'clause) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'program) in
    Obj.repr(
# 18 "parser.mly"
                   ( _1 @ _2 )
# 211 "parser.ml"
               : 'program))
; (fun __caml_parser_env ->
    Obj.repr(
# 21 "parser.mly"
    ([""])
# 217 "parser.ml"
               : 'clause))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'fact) in
    Obj.repr(
# 22 "parser.mly"
         ( ["CLAUSE : "] @["indentForward"] @_1 @["indentBackwards"])
# 224 "parser.ml"
               : 'clause))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'rule) in
    Obj.repr(
# 23 "parser.mly"
         ( ["CLAUSE : "] @["indentForward"] @_1 @["indentBackwards"])
# 231 "parser.ml"
               : 'clause))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'query) in
    Obj.repr(
# 24 "parser.mly"
          ( ["CLAUSE : "] @["indentForward"] @_1 @["indentBackwards"])
# 238 "parser.ml"
               : 'clause))
; (fun __caml_parser_env ->
    Obj.repr(
# 27 "parser.mly"
    ([""])
# 244 "parser.ml"
               : 'fact))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'predicate) in
    Obj.repr(
# 28 "parser.mly"
                     (["indentForward"] @ ["FACT : "] @ _1 @ [ "TERM(PERIOD)"]@["indentBackwards"])
# 251 "parser.ml"
               : 'fact))
; (fun __caml_parser_env ->
    Obj.repr(
# 31 "parser.mly"
    ([""])
# 257 "parser.ml"
               : 'rule))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'predicate) in
    Obj.repr(
# 32 "parser.mly"
                              (["indentForward"] @["RULE : "] @ _1  @ ["indentForward"] @ [ "TERM(ASSIGN)"] @ [ "TERM(OFCOURSE)"]@["indentBackwards"]@["indentBackwards"])
# 264 "parser.ml"
               : 'rule))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 3 : 'predicate) in
    let _3 = (Parsing.peek_val __caml_parser_env 1 : 'body) in
    Obj.repr(
# 33 "parser.mly"
                                 (["indentForward"] @["RULE : "] @ _1  @ [ "TERM(ASSIGN)"]@ _3 @[ "TERM(PERIOD)"]@["indentBackwards"])
# 272 "parser.ml"
               : 'rule))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 4 : 'predicate) in
    let _4 = (Parsing.peek_val __caml_parser_env 1 : 'body) in
    Obj.repr(
# 34 "parser.mly"
                                     (["indentForward"] @["RULE : "] @ _1 @ ["indentForward"] @ [ "TERM(ASSIGN)"]@ [ "TERM(NOT)"]@["indentBackwards"]@ _4 @[ "TERM(PERIOD)"]@["indentBackwards"])
# 280 "parser.ml"
               : 'rule))
; (fun __caml_parser_env ->
    Obj.repr(
# 38 "parser.mly"
    ([""])
# 286 "parser.ml"
               : 'query))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'predicate) in
    Obj.repr(
# 39 "parser.mly"
                           ( ["indentForward"] @["QUERY: " ] @ _2 @ [ "TERM(PERIOD)"]@["indentBackwards"])
# 293 "parser.ml"
               : 'query))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'predicate) in
    Obj.repr(
# 42 "parser.mly"
              (_1)
# 300 "parser.ml"
               : 'body))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'predicate) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'body) in
    Obj.repr(
# 43 "parser.mly"
                         ( _1 @ [ "TERM(COMMA)"] @ _3)
# 308 "parser.ml"
               : 'body))
; (fun __caml_parser_env ->
    Obj.repr(
# 44 "parser.mly"
             ([ "TERM(OFCOURSE)"])
# 314 "parser.ml"
               : 'body))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 3 : 'term) in
    let _3 = (Parsing.peek_val __caml_parser_env 1 : 'arguments) in
    Obj.repr(
# 47 "parser.mly"
                                 (["indentForward"] @ ["PREDICATE : "] @ ["indentForward"]  @ [ _1]  @ [ "TERM(LPAREN)"] @  ["indentForward"] @ _3 @["indentBackwards"]@[ "TERM(RPAREN)"] @["indentBackwards"] @["indentBackwards"])
# 322 "parser.ml"
               : 'predicate))
; (fun __caml_parser_env ->
    Obj.repr(
# 50 "parser.mly"
    ([""])
# 328 "parser.ml"
               : 'arguments))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'term) in
    Obj.repr(
# 51 "parser.mly"
         ( [_1] )
# 335 "parser.ml"
               : 'arguments))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'term) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'arguments) in
    Obj.repr(
# 52 "parser.mly"
                         ([_1] @ ["TERM(COMMA)"] @ _3)
# 343 "parser.ml"
               : 'arguments))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 55 "parser.mly"
               ("TERM(VARIABLE) : "^_1)
# 350 "parser.ml"
               : 'term))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 56 "parser.mly"
             ("TERM(CONSTANT) : "^_1)
# 357 "parser.ml"
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
