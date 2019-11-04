package br.edu.ifsp.fabrica;

public class Motor extends Peca{

	private Float potencia;
	private Float corrente;
	private Integer rpm;
	
	public Motor() {
		super();
		this.potencia = 0f;
		this.corrente = 0f;
		this.rpm = 0;
	}
	
	public Motor(Integer codigo, String nome, Float valor, Float potencia, Float corrente, Integer rpm) {
		super(codigo, nome, valor);
		this.potencia = potencia;
		this.corrente = corrente;
		this.rpm = rpm;
	}

	public Float getPotencia() {
		return potencia;
	}

	public void setPotencia(Float potencia) {
		this.potencia = potencia;
	}

	public Float getCorrente() {
		return corrente;
	}

	public void setCorrente(Float corrente) {
		this.corrente = corrente;
	}

	public Integer getRpm() {
		return rpm;
	}

	public void setRpm(Integer rpm) {
		this.rpm = rpm;
	}

	@Override
	public Float calculaValor() {
		return super.getValor() + (0.50f*super.getValor());
	}

	@Override
	public String toString() {
		return "Motor: " + super.toString()+", potencia=" + potencia + ", corrente=" + corrente + ", rpm=" + rpm;
	}
	
	
}
