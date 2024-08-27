%%
%class Lexer
%standalone
%{
int num=0;
int []t=new int[2];

public static void pause(int n){ //pause de n secondes (n * 1000 ms)
 try{ Thread.sleep(n * 1000); }
 catch( InterruptedException e){ }
}
  
public final static void clearConsole() {
   System.out.print("\033[H\033[2J");
   System.out.flush();
}

%}
// compléter les expressions régulières comme dans la question 1
number = 
SUBTITLE = 
%%
// Compléter les actions pour un affichage de deux secondes suivi d'un raffraicissement de la console et pause d'1s
{number} { }
{SUBTITLE} { }
