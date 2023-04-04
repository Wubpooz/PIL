all: compil test

test:
	java -cp /usr/share/java/java-cup-0.11b-runtime.jar:bin:. calc.Main tests/test0.txt
	java -cp /usr/share/java/java-cup-0.11b-runtime.jar:bin:. calc.Main tests/test1.txt
	java -cp /usr/share/java/java-cup-0.11b-runtime.jar:bin:. calc.Main tests/test2.txt

test-lexer:
	java -cp /usr/share/java/java-cup-0.11b-runtime.jar:bin:. calc.Lexer tests/test0.txt

test-perso: compil
	java -cp /usr/share/java/java-cup-0.11b-runtime.jar:bin:. calc.Main tests/perso.txt

compil : calc/Lexer.jflex calc/Parser.cup
	mkdir -p bin
	cd calc  && jflex Lexer.jflex
	cd calc  && java -jar /usr/share/java/java-cup-0.11b.jar -package calc Parser.cup
	javac -cp /usr/share/java/java-cup-0.11b-runtime.jar:bin:. -d bin calc/*.java

clean:
	rm -f *~ tests/*~ calc/*~ calc/sym.java calc/parser.java calc/Lexer.java
	

