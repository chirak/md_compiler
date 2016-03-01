{
open Parse
open Lexing
}

rule lexer = parse
| [' ' '\t' '\n' ] { lexer lexbuf } (* skip whitespace *)
| ['A'-'Z' 'a'-'z' '=' '*' '+' '-'] ['A'-'Z' 'a'-'z' '0'-'9' '_' '-' '?'] * as text { TEXT text }
| "#" { TAG(Lexing.lexeme lexbuf) }
| "##" { TAG(Lexing.lexeme lexbuf) }
| "###" { TAG(Lexing.lexeme lexbuf) }
| "####" { TAG(Lexing.lexeme lexbuf) }
| "#####" { TAG(Lexing.lexeme lexbuf) }
| "######" { TAG(Lexing.lexeme lexbuf) }
| eof { EOF }

