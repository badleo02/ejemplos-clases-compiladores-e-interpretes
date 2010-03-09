package ast;

public class NodoOperacion extends NodoBase {
	private NodoBase opIzquierdo;
	private NodoBase opDerecho;
	
	public NodoOperacion(NodoBase opIzquierdo, NodoBase opDerecho) {
		super();
		this.opIzquierdo = opIzquierdo;
		this.opDerecho = opDerecho;
	}

	public NodoOperacion() {
		super();
		this.opIzquierdo = null;
		this.opDerecho = null;
	}

	public NodoBase getOpIzquierdo() {
		return opIzquierdo;
	}

	public void setOpIzquierdo(NodoBase opIzquierdo) {
		this.opIzquierdo = opIzquierdo;
	}

	public NodoBase getOpDerecho() {
		return opDerecho;
	}

	public void setOpDerecho(NodoBase opDerecho) {
		this.opDerecho = opDerecho;
	}

}
