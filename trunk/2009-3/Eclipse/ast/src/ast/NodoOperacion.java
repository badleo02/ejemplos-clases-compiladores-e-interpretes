package ast;

public class NodoOperacion extends NodoBase{
	public NodoBase exprIzq, exprDer;
	
	public NodoOperacion(TipoNodo tipo) {
		super(tipo);
		this.exprIzq = null;
		this.exprDer = null;
	}

	@Override	
	public int getValor() {
		return 0;
	}
}
