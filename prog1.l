%{
#include<stdio.h>
int id=0,op=0,br=0,i=0;
%}
%%
[0-9]+ {id++;}
"+"|"*" {op++;}
"(" {br++;}
")" {br--;}
. {i++;}
%%
int main()
 {
  printf("Enter an arithemetic expression:");
  yylex();
   if(br==0 && id==(op+1) && i==0)
   {
    printf("Valid Expression");
    printf("\nIdentifiers%d",id);
    printf("\nOperators%d",op);
   }
   else
   {
    printf("Invalid Expression");
    printf("\nIdentifiers: %d",id);
    printf("\nOperators: %d",op);
   }
   return 0;
 }
int yywrap()
{
 return 1;
}



