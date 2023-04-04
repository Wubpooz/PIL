package calc;

import java_cup.runtime.*;
import java.util.*;
import static calc.sym.*;

%%
%class Lexer
%unicode
%cup
%line
%column
%yylexthrow Exception

NL = \R+
BLANC = [ \t\f]
NOMBRE = [0-9]+
COMM = \/\/.*
VAR = [A-Z]

%%
{BLANC}   { /* ignore */ }
{COMM}    {/* ignore */}
{NL}      { return new Symbol(NL);}
{VAR}     { return new Symbol(VAR);}
\=        { return new Symbol(EQ);}
\+        { return new Symbol(PLUS);}
\-        { return new Symbol(SUB);}
\*        { return new Symbol(MULT);}
\/        { return new Symbol(DIV);}
\(        { return new Symbol(LP);}
\)        { return new Symbol(RP);}
{NOMBRE}  { return new Symbol(CTE,Integer.parseInt(yytext()));}
.  { throw new Exception (String.format ("Line %d, column %d: illegal character: '%s'\n", yyline, yycolumn, yytext() )); }


