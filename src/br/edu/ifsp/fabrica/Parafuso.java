package br.edu.ifsp.fabrica;

public class Parafuso extends Peca{
	private Float comprimento;
	private Float diametro;
	
	public Parafuso() {
		super();
		this.comprimento = 0f;
		this.diametro = 0f;
	}

	public Parafuso(Integer codigo, String nome, Float valor, Float comprimento, Float diametro) {
		super(codigo, nome, valor);
		this.comprimento = comprimento;
		this.diametro = diametro;
	}

	public Float getComprimento() {
		return comprimento;
	}

	public void setComprimento(Float comprimento) {
		this.comprimento = comprimento;
	}

	public Float getDiametro() {
		return diametro;
	}

	public void setDiametro(Float diametro) {
		this.diametro = diametro;
	}

	@Override
	public Float calculaValor() {
		return super.getValor() + (0.30f*super.getValor());
	}

	@Override
	public String toString() {
		return "Parafuso: " + super.toString()+", comprimento=" + comprimento + ", diametro=" + diametro;
	}
	
	
	
}
