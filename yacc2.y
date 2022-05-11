%{
#include<stdio.h>
#include<stdlib.h>
int yylex();
int yyerror();
%}
%token ZERO ONE
%%
Start : S {printf("Sequence accepted\n");}
        ;
S : n
    |ZERO a
    |ONE b ;

a : n a
   |ZERO;
b : n b
    |ONE;
n : ZERO
    |ONE;
%%
void main()
{ 
 printf("Enter the input: ");
 yyparse();
}
int yyerror()
{
printf("Invalid");
return 0;
}
