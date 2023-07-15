package com.parking.beans;

public class Reservezs {
	
	private int id_reservez;
	private String nom_conducteur ;
	private String phone_conducteur ;
	private String code_parking ;
	private String vehicule ;
	private String date_entre ;
	private String heure_entre ;
	private String tarif;
	
	
	public Reservezs() {}


	public Reservezs(int id_reservez, String nom_conducteur, String phone_conducteur, String code_parking,
			String vehicule, String date_entre, String heure_entre, String tarif) {
		super();
		this.id_reservez = id_reservez;
		this.nom_conducteur = nom_conducteur;
		this.phone_conducteur = phone_conducteur;
		this.code_parking = code_parking;
		this.vehicule = vehicule;
		this.date_entre = date_entre;
		this.heure_entre = heure_entre;
		this.tarif = tarif;
	}





	public int getId_reservez() {
		return id_reservez;
	}


	public void setId_reservez(int id_reservez) {
		this.id_reservez = id_reservez;
	}


	public String getNom_conducteur() {
		return nom_conducteur;
	}


	public void setNom_conducteur(String nom_conducteur) {
		this.nom_conducteur = nom_conducteur;
	}


	public String getPhone_conducteur() {
		return phone_conducteur;
	}


	public void setPhone_conducteur(String phone_conducteur) {
		this.phone_conducteur = phone_conducteur;
	}


	public String getCode_parking() {
		return code_parking;
	}


	public void setCode_parking(String code_parking) {
		this.code_parking = code_parking;
	}


	public String getVehicule() {
		return vehicule;
	}


	public void setVehicule(String vehicule) {
		this.vehicule = vehicule;
	}


	public String getDate_entre() {
		return date_entre;
	}


	public void setDate_entre(String date_entre) {
		this.date_entre = date_entre;
	}


	public String getHeure_entre() {
		return heure_entre;
	}


	public void setHeure_entre(String heure_entre) {
		this.heure_entre = heure_entre;
	}


	public String getTarif() {
		return tarif;
	}


	public void setTarif(String tarif) {
		this.tarif = tarif;
	}
	

	
	
	
	
}	

