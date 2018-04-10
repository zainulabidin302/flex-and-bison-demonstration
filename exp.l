%{
#include <stdio.h>
#include "y.tab.h"
%}

digit [0-9]
number {digit}+

%option noyywrap

%%


{number} { yylval.value = atoi(yytext); return INTEGER;}
[-+*/]   { return *yytext;}
[()\n]   { return *yytext;}
[ \t]    ;

