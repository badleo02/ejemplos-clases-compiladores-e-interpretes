import java.io.*;

%%

%integer
%full
%ignorecase


%{      
	int cont=0;
	static FileInputStream FInStr = null;
	static String fInName ; //nombre archivo entrada

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
		}
	}
%}
%%
[A-Za-z0-9]+ {System.out.print(yytext());}
^" "+  { }
" "+$ { }
" "+  {System.out.print(" ");}
^(\r\n) { }
(\r\n) {System.out.println("");}