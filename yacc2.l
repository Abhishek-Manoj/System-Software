%{
 #include"y.tab.h"
 extern int yylval;
%}
%%
1 {yylval=1; return ONE;}
0 {yylval=0; return ZERO;}
.|\n {yylval=2; return 0;}
%%
