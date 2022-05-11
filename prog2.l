%{
#include<stdio.h>
int f=0,g=0, flag=0;
%}
%%
[/][/] {f++;}
"/*" {flag=1;}
"*/" {flag=0; g++;}
. ; 
%%
int main()
{

 yyin=fopen("cfile1.c","r");
  yylex();
   printf("Single line comment: %d and Multiline comment: %d",f,g);
   return 0;
 }
int yywrap()
{
 return 1;
}


