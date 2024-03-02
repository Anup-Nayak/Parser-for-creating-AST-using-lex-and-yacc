

%token <string> IDENTIFIER
%token <string> CONSTANT
%token LPAREN RPAREN NOT OR COMMA ASSIGN DASH PERIOD RSQ LSQ EOF QUERY


%start main
%type <string list> main

%%

main:
  | {[""]}
  | program {["PROGRAM : "]  @["\t"] @ $1}

program:
  | {[""]}
  | clause {  $1}
  | clause program { $1 @ $2 }

clause:
  | {[""]}
  | fact { ["CLAUSE : "]@$1 @["\t"]} 
  | rule { ["CLAUSE : "]@$1 @["\t"]}
  | query { ["CLAUSE : "]@$1 @["\t"]}
  
fact:
  | {[""]}
  | predicate PERIOD { ["FACT : "]@ $1 @ [ "TERM(PERIOD)"]}

rule:
  | {[""]}
  | predicate ASSIGN body PERIOD {["RULE : "]@ $1  @ [ "TERM(ASSIGN)"]@ $3 @[ "TERM(PERIOD)"]}

query:
  | {[""]}
  | QUERY predicate PERIOD { ["QUERY: " ] @ $2 @ [ "TERM(PERIOD)"]}

body:
  | predicate {$1}
  | predicate COMMA body { $1 @ [ "TERM(COMMA)"] @ $3}

predicate:
  | term LPAREN arguments RPAREN {["PREDICATE : "]@[ $1]@[ "TERM(LPAREN)"]@ $3 @[ "TERM(RPAREN)"]}

arguments:
  | {[""]}
  | term { [$1] }
  | term COMMA arguments {[$1]@ $3}

term:
  | IDENTIFIER {"TERM(VARIABLE) : "^$1}
  | CONSTANT {"TERM(CONSTANT) : "^$1}