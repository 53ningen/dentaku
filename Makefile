all: calc
y.tab.c: calc.y
	yacc -d $<
lex.yy.c: calc.l
	lex $<
calc: y.tab.c lex.yy.c
	$(CC) -o $@ $^
