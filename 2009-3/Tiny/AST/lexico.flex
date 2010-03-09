package Tiny;

import java_cup.runtime.SymbolFactory;
%%
%cup
%class Scanner
%{
	public Scanner(java.io.InputStream r, SymbolFactory sf){
		this(r);
		this.sf=sf;
		lineanum=0;
	}
	private SymbolFactory sf;
	private lineanum;
%}
%eofval{
    return sf.newSymbol("EOF",sym.EOF);
%eofval}

digito		= [0-9]
numero		= {digito}+
letra			= [a-zA-Z]
identificador	= {letra}+
nuevalinea		= \n
espacio		= [ \t]+
%%
"if"            {return sf.newSymbol("IF",sym.IF);}
"then"          {return sf.newSymbol("THEN",sym.THEN);}
"else"          {return sf.newSymbol("ELSE",sym.ELSE);}
"end"           {return sf.newSymbol("END",sym.END);}
"repeat"        {return sf.newSymbol("REPEAT",sym.REPEAT);}
"until"         {return sf.newSymbol("UNTIL",sym.UNTIL);}
"read"          {return sf.newSymbol("READ",sym.READ);}
"write"         {return sf.newSymbol("WRITE",sym.WRITE);}
":="            {return sf.newSymbol("ASSIGN",sym.ASSIGN);}
"="             {return sf.newSymbol("EQ",sym.EQ);}
"<"             {return sf.newSymbol("LT",sym.LT);}
"+"             {return sf.newSymbol("PLUS",sym.PLUS);}
"-"             {return sf.newSymbol("MINUS",sym.MINUS);}
"*"             {return sf.newSymbol("TIMES",sym.TIMES);}
"/"             {return sf.newSymbol("OVER",sym.OVER);}
"("             {return sf.newSymbol("LPAREN",sym.LPAREN);}
")"             {return sf.newSymbol("RPAREN",sym.RPAREN);}
";"             {return sf.newSymbol("SEMI",sym.SEMI);}
{numero}        {return sf.newSymbol("NUM",sym.NUM);}
{identificador}    {return sf.newSymbol("ID",sym.ID);}
{nuevalinea}       {lineanum++;}
{espacio}    { /* saltos espacios en blanco*/}
"{"[^}]+"}"  { /* salto comentarios */ }
.               {System.err.println("Caracter Ilegal: "+yytext());}