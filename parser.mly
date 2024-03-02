

%token <string> IDENTIFIER
%token <string> CONSTANT
%token LPAREN RPAREN COMMA ASSIGN DASH PERIOD


%start main
%type <string list> main

%%

main:
  | {[""]}
  | fact { $1 }
  | rule { $1 }
  | query { $1 }
  
fact:
  | term LPAREN arguments RPAREN PERIOD {["FACT :"]@["    "^$1]@["    "^"TERM(LPAREN)"]@ $3 @["    "^"TERM(RPAREN)"]@["    "^"TERM(PERIOD)"]}
  | term ASSIGN term {["DUMMY :"]@["    "^$1]@["    "^"TERM(ASSIGN)"]@["    "^$3]}

rule:
  | {[""]}

query:
  | {[""]}

arguments:
  | {[""]}
  | term { ["    "^$1] }
  | term COMMA arguments {["    "^$1]@ $3}

term:
  | IDENTIFIER {"TERM(VARIABLE) : "^$1}
  | CONSTANT {"TERM(CONSTANT) : "^$1}