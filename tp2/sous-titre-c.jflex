%%
%class Lexer
%standalone
%{
int nb_acc = 0;
int deb = 0;
int end = 0;
int timing = 0;

public static void pause(int n){ //pause de n secondes (n * 1000 ms)
 try{Thread.sleep(n * 1000); }
 catch( InterruptedException e){ }
}
  
public final static void clearConsole() {
   System.out.print("\033[H\033[2J");
   System.out.flush();
}

%}
number = \{[0-9]+\}
SUBTITLE = [^{\n][^\n]+
%%
{number} {
	if(nb_acc%2==0) deb=Integer.parseInt(yytext().substring(1,yylength()-1));
	else end=Integer.parseInt(yytext().substring(1,yylength()-1));
	nb_acc++;
}

/*{SUBTITLE} {
	clearConsole(); 
	System.out.println(yytext());
	timing = (end-deb)/24;
	pause(timing);
}*/

{SUBTITLE} {
	clearConsole(); 
	String[] separated = yytext().split("\\|");
	if(separated[0].equals(yytext())) System.out.println(yytext());
	else System.out.println(separated[0]+"\n"+separated[1]);
	timing = (end-deb)/24;
	pause(timing);
}
//<<EOF>> {clearConsole();}