%{
#include<stdio.h>
#include<stdlib.h>
int yylex();
int yyerror();
%}
%token A B 
%%
Start : S '\n' {printf("Valid Expression\n"); exit(0);}
        S: A S
        | B
    ;
%%
void main()
{ 
 printf("Enter the string: ");
 yyparse();
}
int yyerror()
{
printf("Invalid\n");
return 0;
}
