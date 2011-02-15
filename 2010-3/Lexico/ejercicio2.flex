import java.io.*;

%%

%integer
%full


%{      
	int cont=0;
	static FileInputStream FInStr = null;
	static String fInName ; //nombre archivo entrada
	static int may=0,min=0,combi=0,cinco=0;

	public static void main(String argv[]) 
	throws java.io.IOException {

		int numparams = argv.length; //número argumentos pasados

		if ( numparams != 1) 
		{ 	//error: nr. Parámetros incorrecto
			System.out.println ("Número parámetros incorrecto!. Uso: ");
			System.out.println ( "\tjava yylex archivo.EXT");
			return; 
		}
		else 
		{ 	
			fInName = argv[0];		
			Yylex yy = new Yylex(new FileInputStream(fInName));
			while (yy.yylex() != -1) ; 
			System.out.println(" May="+may+" Min="+min+" Combi="+combi+" Cinco="+cinco);			
		}
	}
%}
%%
[A-Z][A-Z][A-Z][A-Z][A-Z]  {may++; cinco++;}
[a-z][a-z][a-z][a-z][a-z]  {min++; cinco++;}
[A-Za-z][A-Za-z][A-Za-z][A-Za-z][A-Za-z] {combi++; cinco++;}
[A-Z]+   {may++;}
[a-z]+   {min++;}
[A-Za-z]+ {combi++;}
[\n\r ]   { }