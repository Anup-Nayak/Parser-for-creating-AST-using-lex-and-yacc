%token <string> IDENTIFIER
%token <string> CONSTANT
%token LPAREN RPAREN NOT OR COMMA ASSIGN DASH PERIOD RSQ LSQ EOF QUERY OFCOURSE


%start main
%type <string list> main

%%

main:
  | EOF {["END of FILE"]}
  | program {["PROGRAM : "]  @ ["indentForward"] @ $1}

program:
  | {[""]}
  | clause { $1 }
  | clause program { $1 @ $2 }

clause:
  | {[""]}
  | fact { ["CLAUSE : "] @["indentForward"] @$1 @["indentBackwards"]} 
  | rule { ["CLAUSE : "] @["indentForward"] @$1 @["indentBackwards"]}
  | query { ["CLAUSE : "] @["indentForward"] @$1 @["indentBackwards"]}
  
fact:
  | {[""]}
  | predicate PERIOD {["indentForward"] @ ["FACT : "] @ $1 @ [ "TERM(PERIOD)"]@["indentBackwards"]}

rule:
  | {[""]}
  | predicate ASSIGN OFCOURSE {["indentForward"] @["RULE : "] @ $1  @ ["indentForward"] @ [ "TERM(ASSIGN)"] @ [ "TERM(OFCOURSE)"]@["indentBackwards"]@["indentBackwards"]}
  | predicate ASSIGN body PERIOD {["indentForward"] @["RULE : "] @ $1  @ [ "TERM(ASSIGN)"]@ $3 @[ "TERM(PERIOD)"]@["indentBackwards"]}
  | predicate ASSIGN NOT body PERIOD {["indentForward"] @["RULE : "] @ $1 @ ["indentForward"] @ [ "TERM(ASSIGN)"]@ [ "TERM(NOT)"]@["indentBackwards"]@ $4 @[ "TERM(PERIOD)"]@["indentBackwards"]}


query:
  | {[""]}
  | QUERY predicate PERIOD { ["indentForward"] @["QUERY: " ] @ $2 @ [ "TERM(PERIOD)"]@["indentBackwards"]}

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
