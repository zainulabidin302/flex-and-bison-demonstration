%{
	#include <stdio.h>
%}

%union {
	int value;
}

%token <value> INTEGER
%type <value> E program
%left '+' '-'
%left '*' '/'
%token '(' ')'

%%
program:
       program E '\n' {
	 $$ = $2;
	 printf("value of expression = %d\n", $$);}
	| E '\n' {
		$$ = $1;
	 	printf("Value of expression=%d\n", $$);}
	;

E:
 E '+' E { $$ = $1 + $3; }
 | E '-' E { $$ = $1 - $3; }
 | E '*' E { $$ = $1 * $3; }
 | E '/' E { if ($3 == 0 ) printf("Error: Division by zero");
 else
	$$ = $1/$3; }
 | '(' E ')' { $$ = $2; }
 | INTEGER   { $$ = $1; }
;

%%
int yyerror(char *s) {
printf("%s\n", s);
return 0;
}

int main(void) {

yyparse();
return 0;

}
