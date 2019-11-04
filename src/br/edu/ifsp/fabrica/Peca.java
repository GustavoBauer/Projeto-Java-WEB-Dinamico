package br.edu.ifsp.fabrica;

public abstract class Peca {
	private Integer codigo;
	private String nome;
	private Float valor;
	
	public Peca() {
		this.codigo = 0;
		this.nome = "";
		this.valor = 0f;
	}
	
	public Peca(Integer codigo, String nome, Float valor) {
		this.codigo = codigo;
		this.nome = nome;
		this.valor = valor;
	}

	public Integer getCodigo() {
		return codigo;
	}

	public void setCodigo(Integer codigo) {
		this.codigo = codigo;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public Float getValor() {
		return valor;
	}

	public void setValor(Float valor) {
		this.valor = valor;
	}
	
	public abstract Float calculaValor();

	@Override
	public String toString() {
		return "codigo=" + codigo + ", nome=" + nome + ", valor=" + valor;
	}
	
}
