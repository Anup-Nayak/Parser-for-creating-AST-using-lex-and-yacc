

%token <string> IDENTIFIER
%token <string> CONSTANT


%start main
%type <string list> main

%%

main:
  | {[""]}
  | IDENTIFIER CONSTANT
    { ["IDENTIFIER : "^$1]@["CONSTANT : "^$2] } 