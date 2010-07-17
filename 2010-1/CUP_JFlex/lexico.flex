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
"=" { return sf.newSymbol("Igual",sym.RESULTADO); }
"+" { return sf.newSymbol("Suma",sym.SUMA); }
"-" { return sf.newSymbol("Suma",sym.RESTA); }
"/" { return sf.newSymbol("Suma",sym.DIVISION); }
"*" { return sf.newSymbol("Multiplicacion",sym.MULTIPLICACION); }
"^" { return sf.newSymbol("Multiplicacion",sym.POTENCIA); }
"(" { return sf.newSymbol("Parentesis Izquierdo",sym.LPARENT); }
")" { return sf.newSymbol("Parentesis Derecho",sym.RPARENT); }
[0-9]+ { return sf.newSymbol("Numero Entero",sym.ENTERO, new Integer(yytext())); }
[ \t\r\n\f] { /* Ignorar Espacios en Blanco. */ }
. { System.err.println("Caracter Ilegal: "+yytext()); }
