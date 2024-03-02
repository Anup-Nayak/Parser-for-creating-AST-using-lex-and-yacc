%token <string> IDENTIFIER
%token <string> CONSTANT
%token <string> OP
%token <string> NUMBER
%token LPAREN RPAREN NOT OR COMMA ASSIGN DASH PERIOD RSQ LSQ EOF QUERY OFCOURSE TRUE FALSE FAIL IS


%start main
%type <string list> main

%%

main:
  | EOF {["END of FILE"]}
  | program {["PROGRAM : "]  @ ["indentForward"] @["\t"]@ $1}

program:
  | {[""]}
  | clause { $1 }
  | clause program { $1 @ $2 }

clause:
  | {[""]}
  | fact { ["CLAUSE : "] @["\t"]@["indentForward"] @$1 @["indentBackwards"]@["\t"]} 
  | rule { ["CLAUSE : "] @["\t"]@["indentForward"] @$1 @["indentBackwards"]@["\t"]}
  | query { ["CLAUSE : "] @["\t"]@["indentForward"] @$1 @["indentBackwards"]@["\t"]}
  
fact:
  | {[""]}
  | predicate PERIOD {["indentForward"] @ ["FACT : "] @["\t"] @ $1 @ [ "TERM(PERIOD)"]@["indentBackwards"]}
  
rule:
  | {[""]}
  | predicate ASSIGN OFCOURSE PERIOD {["indentForward"] @["RULE : "]@["\t"] @ $1  @ ["indentForward"] @ [ "TERM(ASSIGN)"] @ [ "TERM(OFCOURSE)"]@["indentBackwards"]@[ "TERM(PERIOD)"]@["indentBackwards"]}
  | predicate ASSIGN keywords PERIOD {["indentForward"] @["RULE : "]@["\t"] @ $1  @ ["indentForward"] @ [ "TERM(ASSIGN)"] @ $3 @["indentBackwards"]@[ "TERM(PERIOD)"]@["indentBackwards"]}
  | predicate ASSIGN body PERIOD {["indentForward"] @["RULE : "] @["\t"]@ $1  @ [ "TERM(ASSIGN)"]@ $3 @[ "TERM(PERIOD)"]@["indentBackwards"]}
  | predicate ASSIGN NOT body PERIOD {["indentForward"] @["RULE : "]@["\t"] @ $1 @ ["indentForward"] @ [ "TERM(ASSIGN)"]@ [ "TERM(NOT)"]@["indentBackwards"]@ $4 @[ "TERM(PERIOD)"]@["indentBackwards"]}
  | predicate ASSIGN term IS arithmetic PERIOD{["indentForward"] @["RULE : "]@["\t"] @ $1 @ ["indentForward"] @ [ "TERM(ASSIGN)"]@["indentForward"] @ ["ARITHMETIC"]@ ["indentForward"] @[$3]@ ["TERM(IS)"]@ $5 @["indentBackwards"]@["indentBackwards"]@["indentBackwards"]@[ "TERM(PERIOD)"]@["indentBackwards"]}
  | predicate ASSIGN arithmetic PERIOD{["indentForward"] @["RULE : "]@["\t"] @ $1 @ ["indentForward"] @ [ "TERM(ASSIGN)"]@["indentForward"] @ ["ARITHMETIC"]@ ["indentForward"] @ $3 @["indentBackwards"]@["indentBackwards"]@["indentBackwards"]@[ "TERM(PERIOD)"]@["indentBackwards"]}

keywords:
  | FAIL {[ "TERM(FAIL)"]}
  | TRUE {[ "TERM(TRUE)"]}
  | FALSE {[ "TERM(FALSE)"]}

arithmetic:
  | IDENTIFIER {["TERM(VARIABLE) : "^$1]}
  | CONSTANT {["TERM(CONSTANT) : "^$1]}
  | NUMBER {["TERM(NUMBER) : "^$1]}
  | arithmetic OP arithmetic { $1 @ ["TERM(OP) : "^$2] @ $3 }
  | LPAREN arithmetic RPAREN { ["TERM(LPAREN)"] @ $2 @ ["TERM(RPAREN)"] }

query:
  | {[""]}
  | QUERY predicate PERIOD { ["indentForward"] @["QUERY: " ] @["\t"]@ $2 @ [ "TERM(PERIOD)"]@["indentBackwards"]}
  | QUERY body PERIOD { ["indentForward"] @["QUERY: " ] @["\t"]@ $2 @ [ "TERM(PERIOD)"]@["indentBackwards"]}

body:
  | predicate {$1}
  | predicate COMMA body { $1 @ [ "TERM(COMMA)"] @ $3}
  | OFCOURSE {[ "TERM(OFCOURSE)"]}

predicate:
  | term LPAREN arguments RPAREN {["indentForward"] @ ["PREDICATE : "] @ ["indentForward"]  @ [ $1]  @ [ "TERM(LPAREN)"] @  ["indentForward"] @ $3 @["indentBackwards"]@[ "TERM(RPAREN)"] @["indentBackwards"] @["indentBackwards"]}

arguments:
  | {[""]}
  | term { [$1] }
  | term COMMA arguments {[$1] @ ["TERM(COMMA)"] @ $3}

term:
  | IDENTIFIER {"TERM(VARIABLE) : "^$1}
  | CONSTANT {"TERM(CONSTANT) : "^$1}
  | NUMBER {"TERM(NUMBER) : "^$1}
  | TRUE {"TERM(TRUE)"}
  | FALSE {"TERM(FALSE)"}