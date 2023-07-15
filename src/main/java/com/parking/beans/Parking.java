package com.parking.beans;

public class Parking {
	
	private int id_parking;
	private String nom_parking;
	private String code_parking;
	private String type;
	
	
	public Parking(int id_parking, String nom_parking, String code_parking, String type) {
		super();
		this.id_parking = id_parking;
		this.nom_parking = nom_parking;
		this.code_parking = code_parking;
		this.type = type;
	}
	
	public Parking() {
		// TODO Auto-generated constructor stub
	}
	public int getId_parking() {
		return id_parking;
	}
	public void setId_parking(int id_parking) {
		this.id_parking = id_parking;
	}
	public String getNom_parking() {
		return nom_parking;
	}
	public void setNom_parking(String nom_parking) {
		this.nom_parking = nom_parking;
	}
	public String getCode_parking() {
		return code_parking;
	}
	public void setCode_parking(String code_parking) {
		this.code_parking = code_parking;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	
	
}