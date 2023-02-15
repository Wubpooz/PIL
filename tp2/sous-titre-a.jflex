%%
%class Lexer
%standalone
%{
int nb_acc = 0;
int deb = 0;
int end = 0;
%}
number = \{[0-9]+\}
SUBTITLE = [^{\n][^\n]+ //matches the rest of the line bcs it parses first the two timestamps
FSTLINE = [^{\|\n][^\n\|]* 
LINE = \|[^{\n][^\n]*
%%
{number} {
if(nb_acc%2==0) deb=Integer.parseInt(yytext().substring(1,yylength()-1));
else end=Integer.parseInt(yytext().substring(1,yylength()-1));
nb_acc++;
}

{FSTLINE} {System.out.println("soustitre : " + yytext());}
{LINE} {System.out.println(yytext().substring(1));}
//{SUBTITLE} {System.out.println(yytext());}
. {}

