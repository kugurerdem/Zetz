parser: y.tab.c lex.yy.c
	gcc -o parser y.tab.c
y.tab.c: zetz.y lex.yy.c
	yacc -d zetz.y
lex.yy.c: zetz.l
	lex zetz.l
clean:
	rm -f lex.yy.c y.tab.c parser
