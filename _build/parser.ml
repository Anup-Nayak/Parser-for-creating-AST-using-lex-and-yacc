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
\001\000\001\000\002\000\002\000\002\000\003\000\003\000\003\000\
\003\000\004\000\004\000\005\000\005\000\006\000\006\000\008\000\
\008\000\007\000\010\000\010\000\010\000\009\000\009\000\000\000"

let yylen = "\002\000\
\000\000\001\000\000\000\001\000\002\000\000\000\001\000\001\000\
\001\000\000\000\002\000\000\000\004\000\000\000\003\000\001\000\
\003\000\004\000\000\000\001\000\003\000\001\000\001\000\002\000"

let yydefred = "\000\000\
\000\000\000\000\022\000\023\000\000\000\024\000\002\000\000\000\
\007\000\008\000\009\000\000\000\000\000\000\000\005\000\000\000\
\011\000\000\000\015\000\000\000\000\000\000\000\000\000\000\000\
\013\000\000\000\018\000\017\000\021\000"

let yydgoto = "\002\000\
\006\000\007\000\008\000\009\000\010\000\011\000\012\000\021\000\
\013\000\023\000"

let yysindex = "\007\000\
\000\255\000\000\000\000\000\000\005\255\000\000\000\000\000\255\
\000\000\000\000\000\000\251\254\006\255\004\255\000\000\005\255\
\000\000\005\255\000\000\003\255\007\255\008\255\012\255\005\255\
\000\000\005\255\000\000\000\000\000\000"

let yyrindex = "\000\000\
\018\000\000\000\000\000\000\000\000\000\000\000\000\000\020\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\017\255\000\000\013\255\000\000\018\255\000\000\000\000\
\000\000\017\255\000\000\000\000\000\000"

let yygindex = "\000\000\
\000\000\016\000\000\000\000\000\000\000\000\000\251\255\001\000\
\242\255\002\000"

let yytablesize = 28
let yytable = "\014\000\
\003\000\004\000\016\000\022\000\017\000\003\000\004\000\001\000\
\018\000\024\000\020\000\022\000\005\000\019\000\026\000\027\000\
\025\000\001\000\020\000\003\000\019\000\020\000\016\000\015\000\
\028\000\000\000\000\000\029\000"

let yycheck = "\005\000\
\001\001\002\001\008\001\018\000\010\001\001\001\002\001\001\000\
\003\001\007\001\016\000\026\000\013\001\010\001\007\001\004\001\
\010\001\000\000\024\000\000\000\004\001\004\001\010\001\008\000\
\024\000\255\255\255\255\026\000"

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
# 115 "parser.ml"
               : string list))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'program) in
    Obj.repr(
# 15 "parser.mly"
            (["PROGRAM : "]  @["\t"] @ _1)
# 122 "parser.ml"
               : string list))
; (fun __caml_parser_env ->
    Obj.repr(
# 18 "parser.mly"
    ([""])
# 128 "parser.ml"
               : 'program))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'clause) in
    Obj.repr(
# 19 "parser.mly"
           (  _1)
# 135 "parser.ml"
               : 'program))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'clause) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'program) in
    Obj.repr(
# 20 "parser.mly"
                   ( _1 @ _2 )
# 143 "parser.ml"
               : 'program))
; (fun __caml_parser_env ->
    Obj.repr(
# 23 "parser.mly"
    ([""])
# 149 "parser.ml"
               : 'clause))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'fact) in
    Obj.repr(
# 24 "parser.mly"
         ( ["CLAUSE : "]@_1 @["\t"])
# 156 "parser.ml"
               : 'clause))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'rule) in
    Obj.repr(
# 25 "parser.mly"
         ( ["CLAUSE : "]@_1 @["\t"])
# 163 "parser.ml"
               : 'clause))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'query) in
    Obj.repr(
# 26 "parser.mly"
          ( ["CLAUSE : "]@_1 @["\t"])
# 170 "parser.ml"
               : 'clause))
; (fun __caml_parser_env ->
    Obj.repr(
# 29 "parser.mly"
    ([""])
# 176 "parser.ml"
               : 'fact))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'predicate) in
    Obj.repr(
# 30 "parser.mly"
                     ( ["FACT : "]@ _1 @ [ "TERM(PERIOD)"])
# 183 "parser.ml"
               : 'fact))
; (fun __caml_parser_env ->
    Obj.repr(
# 33 "parser.mly"
    ([""])
# 189 "parser.ml"
               : 'rule))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 3 : 'predicate) in
    let _3 = (Parsing.peek_val __caml_parser_env 1 : 'body) in
    Obj.repr(
# 34 "parser.mly"
                                 (["RULE : "]@ _1  @ [ "TERM(ASSIGN)"]@ _3 @[ "TERM(PERIOD)"])
# 197 "parser.ml"
               : 'rule))
; (fun __caml_parser_env ->
    Obj.repr(
# 37 "parser.mly"
    ([""])
# 203 "parser.ml"
               : 'query))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'predicate) in
    Obj.repr(
# 38 "parser.mly"
                           ( ["QUERY: " ] @ _2 @ [ "TERM(PERIOD)"])
# 210 "parser.ml"
               : 'query))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'predicate) in
    Obj.repr(
# 41 "parser.mly"
              (_1)
# 217 "parser.ml"
               : 'body))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'predicate) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'body) in
    Obj.repr(
# 42 "parser.mly"
                         ( _1 @ [ "TERM(COMMA)"] @ _3)
# 225 "parser.ml"
               : 'body))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 3 : 'term) in
    let _3 = (Parsing.peek_val __caml_parser_env 1 : 'arguments) in
    Obj.repr(
# 45 "parser.mly"
                                 (["PREDICATE : "]@[ _1]@[ "TERM(LPAREN)"]@ _3 @[ "TERM(RPAREN)"])
# 233 "parser.ml"
               : 'predicate))
; (fun __caml_parser_env ->
    Obj.repr(
# 48 "parser.mly"
    ([""])
# 239 "parser.ml"
               : 'arguments))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'term) in
    Obj.repr(
# 49 "parser.mly"
         ( [_1] )
# 246 "parser.ml"
               : 'arguments))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'term) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'arguments) in
    Obj.repr(
# 50 "parser.mly"
                         ([_1]@ _3)
# 254 "parser.ml"
               : 'arguments))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 53 "parser.mly"
               ("TERM(VARIABLE) : "^_1)
# 261 "parser.ml"
               : 'term))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 54 "parser.mly"
             ("TERM(CONSTANT) : "^_1)
# 268 "parser.ml"
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
