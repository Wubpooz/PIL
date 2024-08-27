//NOM Prénom :
%%
%class comment
%standalone
comment= (.)*
/* langage reconnu par l'expression régulière (.)* : COMPLETER

Modifier l'expression régulière ci-dessus pour reconnaître exactement les commentaires proposés dans le sujet.

*/

%%
{comment}  {System.out.println("COM:"+yytext()); }
[^]        { }



