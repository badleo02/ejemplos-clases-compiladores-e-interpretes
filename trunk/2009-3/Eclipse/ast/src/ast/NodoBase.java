package ast;
enum TipoNodo {constante, suma, multiplicacion};
public abstract class NodoBase {
	public TipoNodo tipo;

	public NodoBase(TipoNodo tipo) {
		super();
		this.tipo = tipo;
	}
	
	public int getValor(){
		return -666;
	}
	
}

