%%

CE {printf("'%s' this is keyword\n",yytext);}

[a-zA-Z][a-zA-Z0-9]* {printf("'%s' this is identifier\n",yytext);}

[0-9]+"."[0-9]+ {printf("'%s' this is float-number\n",yytext);}

[0-9]+ {printf("'%s' this is int-number\n",yytext);}

"("|")" {printf("'%s' this is Pancuation-mark\n",yytext);}

"+"|"-"|"/"|"*" {printf("'%s' Arithmetic Operator. \n",yytext);}

"*"{3}.*"*"{3} {printf("'%s' This is comment\n",yytext);}

" " {printf("'%s' This is white space. \n",yytext);}

"    " {printf("'%s' This is tab space. \n",yytext);}

. {printf("'%s' Unrecognized character. \n",yytext);return 0;}
%%


int yywrap(){}
int main(){

	yylex();

	return 0;
}
