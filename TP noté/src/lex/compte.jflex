//NOM Prénom :
%%
%class compte
%standalone
%{
int nbChar=0;
int nbmot=0;
int nbLine=0;
%}
%eof{
System.out.println("lines="+ nbLine + " words=" + nbmot + " chars=" + nbChar);
%eof}
mot=[^ \/\t\n]+
%%
"//"(.)*\R { /* A compléter */ }
{mot}      {nbmot++; nbChar+=yylength(); }
\n         {nbLine++; nbChar++;}
.          { nbChar++;}

