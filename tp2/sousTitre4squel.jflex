%%
%class Lexer
%standalone
%{
int num=0;
int []t=new int[2];
 public static void pause(){
 try{ Thread.sleep(1000); }catch( InterruptedException e){ }
  }

public final static void clearConsole()
{  System.out.print("\033[H\033[2J");
   System.out.flush();
}
%}
number = \{[0-9]+\}
SUBTITLE = [^{\n][^\n]+

%%
{number}  { t[num]=Integer.parseInt(yytext().substring(1,yylength()- 1)) ;}
{SUBTITLE} {
 pause();
clearConsole();
  pause();
 System.out.println( "soustitre :" + yytext() );
}
