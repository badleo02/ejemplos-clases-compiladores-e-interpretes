package Ejemplo1;

import java_cup.runtime.SymbolFactory;
%%
%cup
%class Scanner
%{
	public Scanner(java.io.InputStream r, SymbolFactory sf){
		this(r);
		this.sf=sf;
	}
	private SymbolFactory sf;
%}
%eofval{
    return sf.newSymbol("EOF",sym.EOF);
%eofval}

%%
"=" { return sf.newSymbol("Igual",sym.IGUAL); }
"+" { return sf.newSymbol("Suma",sym.SUMA); }
"*" { return sf.newSymbol("Multiplicacion",sym.POR); }
"(" { return sf.newSymbol("Parentesis Izquierdo",sym.PARENTIZQ); }
")" { return sf.newSymbol("Parentesis Derecho",sym.PARENTDER); }
[0-9]+ { return sf.newSymbol("Numero Entero",sym.NUMERO, new Integer(yytext())); }
[ \t\r\n\f] { /* Ignorar Espacios en Blanco. */ }
. { System.err.println("Caracter Ilegal: "+yytext()); }
