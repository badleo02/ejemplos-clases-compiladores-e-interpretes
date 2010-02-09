package ast;

public class NodoMultiplicacion extends NodoOperacion {

	public NodoMultiplicacion(NodoBase NodoIzq, NodoBase NodoDer) {
		super(TipoNodo.multiplicacion);
		this.exprIzq=NodoIzq;
		this.exprDer=NodoDer;
	}
}
