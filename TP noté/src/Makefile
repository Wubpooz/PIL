dir := /public/pil

all: regexp-all lex-all calc-all

regexp-all: regexp-compil regexp-test
lex-all: lex-compil lex-test
calc-all: calc-compil calc-test

regexp-compil: regexp/comment.jflex
	cd regexp && jflex comment.jflex
	javac -d bin regexp/*.java

regexp-test:
	java -cp bin:. comment tests/regexp-test.txt

lex-compil: lex/compte.jflex
	cd lex && jflex compte.jflex
	javac -d bin lex/*.java

lex-test:
	java -cp bin:. compte tests/lexical-test.txt

calc-compil : calc/Lexer.jflex calc/Parser.cup
	mkdir -p bin
	cd calc  && jflex Lexer.jflex
	cd calc  && java -jar /usr/share/java/java-cup-0.11b.jar -package calc Parser.cup
	javac -cp /usr/share/java/java-cup-0.11b-runtime.jar:bin:. -d bin calc/*.java

calc-test:
	java -cp /usr/share/java/java-cup-0.11b-runtime.jar:bin:. calc.Main tests/calc-test.txt

rendu:
	make clean
	cd .. && $(dir)/rendu.sh

clean:
	rm -f *~ tests/*~ regexp/*~ lex/*~ calc/*~ regexp/comment.java lex/compte.java calc/sym.java calc/parser.java calc/Lexer.java
	rm -rf bin

