import java.io.*;

%%

%integer
%full
%ignorecase


%{      
	int cont=0;
	public static void main(String argv[]) throws java.io.IOException {

		Yylex yy= new Yylex(System.in);

		while (yy.yylex() != -1) ;	
	}
%}
%%

[^\r\n]*\r\n {	
		cont=cont+1;
		System.out.println(cont+" "+yytext());
	         }