%{
 #include<stdio.h>
 #include<stdlib.h>
 int yylex();
 int yyerror();
%}
%token A B
%%
Start: s '\n' {printf("valid Expression"); exit(0);}
s : A s B;
|
;              
%%
void main()
{
 printf("Enter the input:");
 yyparse();
}  
int yyerror()
{
 printf("Invalid\n");
 return 0;
}
