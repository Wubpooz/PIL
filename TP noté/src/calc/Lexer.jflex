package calc;

import java_cup.runtime.*;
import java.util.*;
import static calc.sym.*;

%%
%class Lexer
%unicode
//%standalone
%cup
%line
%column
%yylexthrow Exception

NL = \R
BLANC = [ \t\f]
NOMBRE = [0-9]+
VAR = [A-Z]
%%
{BLANC}   { /* ignore */ }
{NL}      { return new Symbol(NL); }
{VAR}     { return new Symbol(VA,(Integer)((int)(yycharat(0))-(int)('A'))); }
=         { return new Symbol(SET); }
"=="      { return new Symbol(EQ); }
"<="	  { return new Symbol(LEQ); }
"<"	  { return new Symbol(LT); }
\:	  { return new Symbol(DP); }
"if" 	  { return new Symbol(IF); }
"else"	  { return new Symbol(ELSE); }
"endif"	  { return new Symbol(ENDIF); } 
\+        { return new Symbol(PLUS); }
\*        { return new Symbol(MULT); }
\-        { return new Symbol(SUB); }
\/        { return new Symbol(DIV); }
\(        { return new Symbol(LP); }
\)        { return new Symbol(RP); }
"//"(.)*{NL} { return new Symbol(NL); }
{NOMBRE}   { return new Symbol(CTE,Integer.parseInt(yytext())); }
.  { throw new Exception (String.format ("Line %d, column %d: illegal character: '%s'\n", yyline, yycolumn, yytext() )); }


