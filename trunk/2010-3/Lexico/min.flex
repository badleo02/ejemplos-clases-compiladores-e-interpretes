import java.io.*;

%%

%integer
%{      
	public static void main(String argv[]) throws java.io.IOException {

		Yylex yy= new Yylex(System.in);
		while (yy.yylex() != -1) ;	
	}
%}



%%


hola { System.out.println("Hola tu"); }
adios {System.out.println("Bueno, bye"); }
[\r\n ]+ {}