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

open Parsing;;
let _ = parse_error;;
let yytransl_const = [|
  261 (* LPAREN *);
  262 (* RPAREN *);
  263 (* NOT *);
  264 (* OR *);
  265 (* COMMA *);
  266 (* ASSIGN *);
  267 (* DASH *);
  268 (* PERIOD *);
  269 (* RSQ *);
  270 (* LSQ *);
    0 (* EOF *);
  271 (* QUERY *);
  272 (* OFCOURSE *);
  273 (* TRUE *);
  274 (* FALSE *);
  275 (* FAIL *);
  276 (* IS *);
    0|]

let yytransl_block = [|
  257 (* IDENTIFIER *);
  258 (* CONSTANT *);
  259 (* OP *);
  260 (* NUMBER *);
    0|]

let yylhs = "\255\255\
\001\000\001\000\002\000\002\000\002\000\003\000\003\000\003\000\
\003\000\004\000\004\000\005\000\005\000\005\000\005\000\005\000\
\005\000\005\000\008\000\008\000\008\000\011\000\011\000\011\000\
\011\000\011\000\006\000\006\000\006\000\009\000\009\000\009\000\
\007\000\012\000\012\000\012\000\010\000\010\000\010\000\010\000\
\010\000\000\000"

let yylen = "\002\000\
\001\000\001\000\000\000\001\000\002\000\000\000\001\000\001\000\
\001\000\000\000\002\000\000\000\004\000\004\000\004\000\005\000\
\006\000\004\000\001\000\001\000\001\000\001\000\001\000\001\000\
\003\000\003\000\000\000\003\000\003\000\001\000\003\000\001\000\
\004\000\000\000\001\000\003\000\001\000\001\000\001\000\001\000\
\001\000\002\000"

let yydefred = "\000\000\
\000\000\000\000\037\000\038\000\039\000\001\000\000\000\040\000\
\041\000\042\000\002\000\000\000\007\000\008\000\009\000\000\000\
\000\000\032\000\000\000\000\000\005\000\000\000\011\000\000\000\
\000\000\028\000\029\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\019\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\031\000\022\000\023\000\024\000\000\000\
\000\000\013\000\014\000\015\000\000\000\000\000\018\000\000\000\
\033\000\026\000\016\000\000\000\000\000\036\000\017\000"

let yydgoto = "\002\000\
\010\000\011\000\012\000\013\000\014\000\015\000\037\000\038\000\
\020\000\017\000\041\000\043\000"

let yysindex = "\005\000\
\001\000\000\000\000\000\000\000\000\000\000\000\011\255\000\000\
\000\000\000\000\000\000\029\255\000\000\000\000\000\000\069\255\
\013\255\000\000\002\255\025\255\000\000\003\255\000\000\034\255\
\011\255\000\000\000\000\000\000\000\000\000\000\073\255\011\255\
\033\255\000\000\000\000\000\000\014\255\064\255\068\255\012\255\
\056\255\074\255\076\255\000\000\000\000\000\000\000\000\063\255\
\072\255\000\000\000\000\000\000\073\255\073\255\000\000\034\255\
\000\000\000\000\000\000\060\255\082\255\000\000\000\000"

let yyrindex = "\000\000\
\086\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\086\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\081\255\
\000\000\000\000\000\000\036\255\037\255\050\255\000\000\000\000\
\000\000\004\255\038\255\000\000\077\255\000\000\000\000\000\000\
\000\000\084\255\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\081\255\
\000\000\000\000\000\000\000\000\061\255\000\000\000\000"

let yygindex = "\000\000\
\000\000\076\000\000\000\000\000\000\000\000\000\053\000\000\000\
\039\000\234\255\228\255\035\000"

let yytablesize = 275
let yytable = "\040\000\
\006\000\042\000\048\000\028\000\029\000\001\000\030\000\031\000\
\040\000\032\000\025\000\003\000\004\000\026\000\005\000\020\000\
\024\000\024\000\033\000\034\000\035\000\036\000\025\000\040\000\
\060\000\061\000\018\000\008\000\009\000\003\000\004\000\053\000\
\005\000\042\000\003\000\004\000\027\000\005\000\022\000\023\000\
\037\000\038\000\041\000\007\000\050\000\008\000\009\000\022\000\
\023\000\021\000\008\000\009\000\024\000\016\000\039\000\037\000\
\038\000\041\000\054\000\019\000\039\000\024\000\054\000\044\000\
\016\000\054\000\025\000\055\000\058\000\039\000\049\000\063\000\
\025\000\045\000\046\000\051\000\047\000\031\000\022\000\052\000\
\023\000\057\000\056\000\059\000\054\000\003\000\034\000\021\000\
\030\000\035\000\062\000\000\000\000\000\000\000\000\000\000\000\
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
\000\000\003\000\004\000\000\000\005\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\007\000\
\000\000\008\000\009\000"

let yycheck = "\022\000\
\000\000\024\000\031\000\001\001\002\001\001\000\004\001\005\001\
\005\001\007\001\009\001\001\001\002\001\012\001\004\001\012\001\
\005\001\005\001\016\001\017\001\018\001\019\001\009\001\020\001\
\053\000\054\000\016\001\017\001\018\001\001\001\002\001\020\001\
\004\001\056\000\001\001\002\001\012\001\004\001\003\001\003\001\
\005\001\005\001\005\001\015\001\012\001\017\001\018\001\012\001\
\012\001\012\001\017\001\018\001\003\001\001\000\005\001\020\001\
\020\001\020\001\003\001\007\000\022\000\012\001\003\001\025\000\
\012\000\003\001\006\001\012\001\006\001\020\001\032\000\012\001\
\012\001\001\001\002\001\012\001\004\001\005\001\010\001\012\001\
\012\001\006\001\009\001\012\001\003\001\000\000\006\001\012\000\
\012\001\006\001\056\000\255\255\255\255\255\255\255\255\255\255\
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
\255\255\001\001\002\001\255\255\004\001\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\015\001\
\255\255\017\001\018\001"

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
  TRUE\000\
  FALSE\000\
  FAIL\000\
  IS\000\
  "

let yynames_block = "\
  IDENTIFIER\000\
  CONSTANT\000\
  OP\000\
  NUMBER\000\
  "

let yyact = [|
  (fun _ -> failwith "parser")
; (fun __caml_parser_env ->
    Obj.repr(
# 14 "parser.mly"
        (["END of FILE"])
# 216 "parser.ml"
               : string list))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'program) in
    Obj.repr(
# 15 "parser.mly"
            (["PROGRAM : "]  @ ["indentForward"] @["\t"]@ _1)
# 223 "parser.ml"
               : string list))
; (fun __caml_parser_env ->
    Obj.repr(
# 18 "parser.mly"
    ([""])
# 229 "parser.ml"
               : 'program))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'clause) in
    Obj.repr(
# 19 "parser.mly"
           ( _1 )
# 236 "parser.ml"
               : 'program))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'clause) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'program) in
    Obj.repr(
# 20 "parser.mly"
                   ( _1 @ _2 )
# 244 "parser.ml"
               : 'program))
; (fun __caml_parser_env ->
    Obj.repr(
# 23 "parser.mly"
    ([""])
# 250 "parser.ml"
               : 'clause))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'fact) in
    Obj.repr(
# 24 "parser.mly"
         ( ["CLAUSE : "] @["\t"]@["indentForward"] @_1 @["indentBackwards"]@["\t"])
# 257 "parser.ml"
               : 'clause))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'rule) in
    Obj.repr(
# 25 "parser.mly"
         ( ["CLAUSE : "] @["\t"]@["indentForward"] @_1 @["indentBackwards"]@["\t"])
# 264 "parser.ml"
               : 'clause))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'query) in
    Obj.repr(
# 26 "parser.mly"
          ( ["CLAUSE : "] @["\t"]@["indentForward"] @_1 @["indentBackwards"]@["\t"])
# 271 "parser.ml"
               : 'clause))
; (fun __caml_parser_env ->
    Obj.repr(
# 29 "parser.mly"
    ([""])
# 277 "parser.ml"
               : 'fact))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'predicate) in
    Obj.repr(
# 30 "parser.mly"
                     (["indentForward"] @ ["FACT : "] @["\t"] @ _1 @ [ "TERM(PERIOD)"]@["indentBackwards"])
# 284 "parser.ml"
               : 'fact))
; (fun __caml_parser_env ->
    Obj.repr(
# 33 "parser.mly"
    ([""])
# 290 "parser.ml"
               : 'rule))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 3 : 'predicate) in
    Obj.repr(
# 34 "parser.mly"
                                     (["indentForward"] @["RULE : "]@["\t"] @ _1  @ ["indentForward"] @ [ "TERM(ASSIGN)"] @ [ "TERM(OFCOURSE)"]@["indentBackwards"]@[ "TERM(PERIOD)"]@["indentBackwards"])
# 297 "parser.ml"
               : 'rule))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 3 : 'predicate) in
    let _3 = (Parsing.peek_val __caml_parser_env 1 : 'keywords) in
    Obj.repr(
# 35 "parser.mly"
                                     (["indentForward"] @["RULE : "]@["\t"] @ _1  @ ["indentForward"] @ [ "TERM(ASSIGN)"] @ _3 @["indentBackwards"]@[ "TERM(PERIOD)"]@["indentBackwards"])
# 305 "parser.ml"
               : 'rule))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 3 : 'predicate) in
    let _3 = (Parsing.peek_val __caml_parser_env 1 : 'body) in
    Obj.repr(
# 36 "parser.mly"
                                 (["indentForward"] @["RULE : "] @["\t"]@ _1  @ [ "TERM(ASSIGN)"]@ _3 @[ "TERM(PERIOD)"]@["indentBackwards"])
# 313 "parser.ml"
               : 'rule))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 4 : 'predicate) in
    let _4 = (Parsing.peek_val __caml_parser_env 1 : 'body) in
    Obj.repr(
# 37 "parser.mly"
                                     (["indentForward"] @["RULE : "]@["\t"] @ _1 @ ["indentForward"] @ [ "TERM(ASSIGN)"]@ [ "TERM(NOT)"]@["indentBackwards"]@ _4 @[ "TERM(PERIOD)"]@["indentBackwards"])
# 321 "parser.ml"
               : 'rule))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 5 : 'predicate) in
    let _3 = (Parsing.peek_val __caml_parser_env 3 : 'term) in
    let _5 = (Parsing.peek_val __caml_parser_env 1 : 'arithmetic) in
    Obj.repr(
# 38 "parser.mly"
                                              (["indentForward"] @["RULE : "]@["\t"] @ _1 @ ["indentForward"] @ [ "TERM(ASSIGN)"]@["indentForward"] @ ["ARITHMETIC"]@ ["indentForward"] @[_3]@ ["TERM(IS)"]@ _5 @["indentBackwards"]@["indentBackwards"]@["indentBackwards"]@[ "TERM(PERIOD)"]@["indentBackwards"])
# 330 "parser.ml"
               : 'rule))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 3 : 'predicate) in
    let _3 = (Parsing.peek_val __caml_parser_env 1 : 'arithmetic) in
    Obj.repr(
# 39 "parser.mly"
                                      (["indentForward"] @["RULE : "]@["\t"] @ _1 @ ["indentForward"] @ [ "TERM(ASSIGN)"]@["indentForward"] @ ["ARITHMETIC"]@ ["indentForward"] @ _3 @["indentBackwards"]@["indentBackwards"]@["indentBackwards"]@[ "TERM(PERIOD)"]@["indentBackwards"])
# 338 "parser.ml"
               : 'rule))
; (fun __caml_parser_env ->
    Obj.repr(
# 42 "parser.mly"
         ([ "TERM(FAIL)"])
# 344 "parser.ml"
               : 'keywords))
; (fun __caml_parser_env ->
    Obj.repr(
# 43 "parser.mly"
         ([ "TERM(TRUE)"])
# 350 "parser.ml"
               : 'keywords))
; (fun __caml_parser_env ->
    Obj.repr(
# 44 "parser.mly"
          ([ "TERM(FALSE)"])
# 356 "parser.ml"
               : 'keywords))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 47 "parser.mly"
               (["TERM(VARIABLE) : "^_1])
# 363 "parser.ml"
               : 'arithmetic))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 48 "parser.mly"
             (["TERM(CONSTANT) : "^_1])
# 370 "parser.ml"
               : 'arithmetic))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 49 "parser.mly"
           (["TERM(NUMBER) : "^_1])
# 377 "parser.ml"
               : 'arithmetic))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'arithmetic) in
    let _2 = (Parsing.peek_val __caml_parser_env 1 : string) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'arithmetic) in
    Obj.repr(
# 50 "parser.mly"
                             ( _1 @ ["TERM(OP) : "^_2] @ _3 )
# 386 "parser.ml"
               : 'arithmetic))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'arithmetic) in
    Obj.repr(
# 51 "parser.mly"
                             ( ["TERM(LPAREN)"] @ _2 @ ["TERM(RPAREN)"] )
# 393 "parser.ml"
               : 'arithmetic))
; (fun __caml_parser_env ->
    Obj.repr(
# 54 "parser.mly"
    ([""])
# 399 "parser.ml"
               : 'query))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'predicate) in
    Obj.repr(
# 55 "parser.mly"
                           ( ["indentForward"] @["QUERY: " ] @["\t"]@ _2 @ [ "TERM(PERIOD)"]@["indentBackwards"])
# 406 "parser.ml"
               : 'query))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'body) in
    Obj.repr(
# 56 "parser.mly"
                      ( ["indentForward"] @["QUERY: " ] @["\t"]@ _2 @ [ "TERM(PERIOD)"]@["indentBackwards"])
# 413 "parser.ml"
               : 'query))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'predicate) in
    Obj.repr(
# 59 "parser.mly"
              (_1)
# 420 "parser.ml"
               : 'body))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'predicate) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'body) in
    Obj.repr(
# 60 "parser.mly"
                         ( _1 @ [ "TERM(COMMA)"] @ _3)
# 428 "parser.ml"
               : 'body))
; (fun __caml_parser_env ->
    Obj.repr(
# 61 "parser.mly"
             ([ "TERM(OFCOURSE)"])
# 434 "parser.ml"
               : 'body))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 3 : 'term) in
    let _3 = (Parsing.peek_val __caml_parser_env 1 : 'arguments) in
    Obj.repr(
# 64 "parser.mly"
                                 (["indentForward"] @ ["PREDICATE : "] @ ["indentForward"]  @ [ _1]  @ [ "TERM(LPAREN)"] @  ["indentForward"] @ _3 @["indentBackwards"]@[ "TERM(RPAREN)"] @["indentBackwards"] @["indentBackwards"])
# 442 "parser.ml"
               : 'predicate))
; (fun __caml_parser_env ->
    Obj.repr(
# 67 "parser.mly"
    ([""])
# 448 "parser.ml"
               : 'arguments))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'term) in
    Obj.repr(
# 68 "parser.mly"
         ( [_1] )
# 455 "parser.ml"
               : 'arguments))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'term) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'arguments) in
    Obj.repr(
# 69 "parser.mly"
                         ([_1] @ ["TERM(COMMA)"] @ _3)
# 463 "parser.ml"
               : 'arguments))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 72 "parser.mly"
               ("TERM(VARIABLE) : "^_1)
# 470 "parser.ml"
               : 'term))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 73 "parser.mly"
             ("TERM(CONSTANT) : "^_1)
# 477 "parser.ml"
               : 'term))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 74 "parser.mly"
           ("TERM(NUMBER) : "^_1)
# 484 "parser.ml"
               : 'term))
; (fun __caml_parser_env ->
    Obj.repr(
# 75 "parser.mly"
         ("TERM(TRUE)")
# 490 "parser.ml"
               : 'term))
; (fun __caml_parser_env ->
    Obj.repr(
# 76 "parser.mly"
          ("TERM(FALSE)")
# 496 "parser.ml"
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
