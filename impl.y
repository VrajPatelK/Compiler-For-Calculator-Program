%{
#include<stdio.h>
%}

%token Num
%left '+' '-'
%left '/' '*'
%left '(' ')'
%left uminus
%%

Arit: E{
	printf("Result=%d\n", $$);
	return 0;
};

E:E'+'E {$$=$1+$3;}
|E'-'E {$$=$1-$3;}
  
 |E'*'E {$$=$1*$3;}
  
 |E'/'E {$$=$1/$3;}
  
 |'('E')' {$$=$2;}
 
 |'-'E {$$=-$2;}
 
|Num{$$=$1;}
;

%%

void yyerror(){
	
}

void main(){
	printf("Enter any arithmetic expression:");
	yyparse();
}
