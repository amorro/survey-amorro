package com.pixelbit.survey.pojo;

import java.io.Serializable;

public class Entrevistat extends Persona implements Serializable{
	private static final long serialVersionUID = 4372479758737852405L;
	
	private String tractament;


	public Entrevistat() {
		super();
	}

	public Entrevistat(String dni, String nom, String llinatges, String telefon, String email, String tractament) {
		super(dni, nom, llinatges, telefon, email);
		this.tractament = tractament;
	}



	public String getTractament() {
		return tractament;
	}

	public void setTractament(String tractament) {
		this.tractament = tractament;
	}

	@Override
	public String toString() {
		return "Entrevistat [tractament=" + tractament + ", " + super.toString() + "]";
	}
	
	
}
