import java.io.*;
%%

%integer
%full
%ignorecase

%{      
	public static void main(String argv[]) throws java.io.IOException {

		Yylex yy= new Yylex(System.in);
		while (yy.yylex() != -1) ;	
	}
%}

%%
[A-Za-z][A-Za-z_]+"@"[A-Za-z][A-Za-z_]+"."[A-Za-z][A-Za-z][A-Za-z]? { 
		System.out.println("Ingreso un email");
 }
[\n\r]+  {System.out.println("Debe ingresar un email:");
}
