%{
open Ast
open Lexing
%}

%token <string> TAG
%token <string> TEXT
%token EOF

%start markdown /* entry point */

%type <Ast.markdown> markdown

%%

markdown:
  | blocklst EOF { $1 }
  ;


blocklst:
  | block { [$1] }
  | block blocklst { $1::$2 }
  ;

block:
  | TAG TEXT { Tag(string_to_tagtype $1, $2) }
  ;
