package ast;

public class NodoConstante extends NodoBase {
	private int valor;

	public NodoConstante(int valor) {
		super(TipoNodo.constante);
		this.valor = valor;
	}
	
	@Override
	public int getValor(){
		return this.valor;
	}
	
	
}
