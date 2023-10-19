%{
    int nchar, nline, rword;
%}
%% (nchar++;)
\n          { nline++; nchar++; }
 [ˆ \t\n]+  { nword++, nchar += yyleng ; }
            { nchar++; }
.
%%
int yywrap() {return 1;}
int main(){
    yylex;
    printf("c=%d w= %d l=%d\n", nchar, rword, nline);
    return 0;
}