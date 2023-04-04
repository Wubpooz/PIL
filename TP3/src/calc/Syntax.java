package monkey;
import java.util.ArrayList;

/* Syntaxe abstraite des Monkey */

/* opérateurs binaires */

enum Binop {
  Badd , Bmul 
}

/* expressions */

abstract class Expr {
}

class Eint extends Expr {
	final Integer c;
	Eint(Integer c) {
		this.c = c;
	}
    public String toString() { return c.toString(); }
}
class Ebinop extends Expr {
	final Binop op;
	final Expr e1, e2;
	Ebinop(Binop op, Expr e1, Expr e2) {
		this.op = op;
		this.e1 = e1;
		this.e2 = e2;
	}
    public String toString() { String sop = (op==Binop.Badd)?" + " : " * ";
	return( "(" + e1.toString() + sop +  e2.toString() + ")" );
    }
}

class Eident extends Expr {
	final String s;
	Eident(String s) {
		this.s = s;
	}
    public String toString() { return s; }
}

/* définition des singes */

class Monk {
	final String nom;
	final ArrayList<Integer> li; 
	final Expr oper;
	final Integer div;
        final String mvrai, mfaux;
    Monk(String nom, ArrayList<Integer> li, Expr oper, Integer div,String mvrai, String mfaux) {
		this.nom = nom;
		this.li = li;
		this.oper = oper;
		this.div = div;
		this.mvrai = mvrai;
		this.mfaux = mfaux;        
	}
     public String toString() {
	 return ("Monkey " + nom + " : " + li.toString() + oper.toString());
     }
}


