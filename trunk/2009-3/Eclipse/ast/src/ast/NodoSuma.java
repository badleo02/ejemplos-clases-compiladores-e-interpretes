package ast;

public class NodoSuma extends NodoOperacion {

	public NodoSuma(NodoBase NodoIzq, NodoBase NodoDer) {
		super(TipoNodo.suma);
		this.exprIzq=NodoIzq;
		this.exprDer=NodoDer;
	}
}
