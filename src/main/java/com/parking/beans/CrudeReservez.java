package com.parking.beans;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;



public class CrudeReservez {

private Connection connexion;
    

public Reservezs selectionnerUneReservation(int id) throws ClassNotFoundException, SQLException{
//	Statement statement = null;
    ResultSet resultat = null;
    Reservezs reservezs = null;

     loadDatabase();

    String sql = "select * from reservations where id_reservez=?";


     PreparedStatement requetePrepared = connexion.prepareStatement(sql);
     requetePrepared.setInt(1, id);	
     resultat = requetePrepared.executeQuery();

     while(resultat.next()) {
    	 int id_reservez= resultat.getInt("id_reservez");
     	 String nom_conducteur= resultat.getString("nom_conducteur");
         String phone_conducteur = resultat.getString("phone_conducteur");
         String code_parking= resultat.getString("code_parking");
         String vehicule= resultat.getString("vehicule");
         String date_entre= resultat.getString("date_entre");
         String heure_entre= resultat.getString("heure_entre");
         String tarif= resultat.getString("tarif");

         reservezs = new Reservezs(id_reservez,nom_conducteur,phone_conducteur,code_parking,vehicule,date_entre,heure_entre,tarif);
    }

     		return reservezs;
	}


    public List<Reservezs> recupererReservezs() {
        List<Reservezs> reservezs = new ArrayList<Reservezs>();
        Statement statement = null;
        ResultSet resultat = null;
//        Connection connexion = null;

        
        try {
        	loadDatabase();
            statement = connexion.createStatement();

            // Exécution de la requête
            resultat = statement.executeQuery("SELECT * from reservations;");

            // Récupération des données
            while (resultat.next()) {
            	int id_reservez= resultat.getInt("id_reservez");
            	String nom_conducteur= resultat.getString("nom_conducteur");
                String phone_conducteur = resultat.getString("phone_conducteur");
                String code_parking= resultat.getString("code_parking");
                String vehicule= resultat.getString("vehicule");
                String date_entre= resultat.getString("date_entre");
                String heure_entre= resultat.getString("heure_entre");
                String tarif= resultat.getString("tarif");
                
                
                Reservezs reservez = new Reservezs();
                reservez.setId_reservez(id_reservez);
                reservez.setNom_conducteur(nom_conducteur);
                reservez.setPhone_conducteur(phone_conducteur);
                reservez.setCode_parking(code_parking);
                reservez.setVehicule(vehicule);
                reservez.setDate_entre(date_entre);
                reservez.setHeure_entre(heure_entre);
                reservez.setTarif(tarif);
                
                reservezs.add(reservez);
            }
        } catch (SQLException e) {
        } finally {
            // Fermeture de la connexion
            try {
                if (resultat != null)
                    resultat.close();
                if (statement != null)
                    statement.close();
                if (connexion != null)
                    connexion.close();
            } catch (SQLException ignore) {
            }
        }
        
        return reservezs;
    }
    
    private void loadDatabase() {
        // Chargement du driver
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
        } catch (ClassNotFoundException e) {
        }

        try {
            connexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/gestionParking", "dollar", "dollar0000");
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
    
    public void ajouterReservez(Reservezs reservez) throws SQLException {
//    	public void ajouterReservez(Reservezs reservez) throws SQLException, ParseException {
        loadDatabase();
        ResultSet resultat = null;
        int cpt = 0;
        String date_db = "";
        String sql = "select code_parking,date_entre from reservations";
//
        String code = reservez.getCode_parking();
        String date_saisie = reservez.getDate_entre();
//        
        PreparedStatement requetePrepared = connexion.prepareStatement(sql);
        resultat = requetePrepared.executeQuery();
//
        while(resultat.next()) {
       	 String c = resultat.getString("code_parking");
       	String dat = resultat.getString("date_entre");
//       	  
       	 if(code != c) {
       		 cpt = 0;
       		date_db = dat;
       		 
       	 }else {
       		 cpt = 1;
       		date_db = dat;
       		 
       	 }
        }
        if(cpt != 1) {
        	
	  		 if(date_saisie.equals(date_db)) {
	  			 System.out.println("Impossible de reservez ");
	  			System.out.println("date saisie : "+date_saisie );
	  			System.out.println("date db : "+date_db );
	  			 
	  		 }else {
	  			 
		  			 try {
		  				 PreparedStatement preparedStatement = connexion.prepareStatement("INSERT INTO reservations(nom_conducteur,phone_conducteur,code_parking,vehicule,date_entre,heure_entre,tarif) VALUES(?, ?, ?, ?, ?, ?, ?);");            
		  				 
		  				 preparedStatement.setString(1, reservez.getNom_conducteur());
		  				 preparedStatement.setString(2, reservez.getPhone_conducteur());
		  				 preparedStatement.setString(3, reservez.getCode_parking());
		  				 preparedStatement.setString(4, reservez.getVehicule());
		  				 preparedStatement.setString(5, reservez.getDate_entre());
		  				 preparedStatement.setString(6, reservez.getHeure_entre());
		  				 preparedStatement.setString(7, reservez.getTarif());	
		  				 System.out.println("Reservez avec succes... ");
		  				System.out.println("date saisie : "+date_saisie );
			  			System.out.println("date db : "+date_db );
		  				 
		  				 preparedStatement.executeUpdate();
		  			 } catch (SQLException e) {
		  				 e.printStackTrace();
		  			 }
	  		 	}
	  	 }
        
        
    }
    
    public void modifierReservez(Reservezs reservez) {
        loadDatabase();
        
        try {
            PreparedStatement preparedStatement = connexion.prepareStatement("UPDATE reservations SET nom_conducteur=?, phone_conducteur=?, code_parking=?, vehicule=?, date_entre=?, heure_entre=?, tarif=? WHERE id_reservez=?;");
            preparedStatement.setString(1, reservez.getNom_conducteur());
            preparedStatement.setString(2, reservez.getPhone_conducteur());
            preparedStatement.setString(3, reservez.getCode_parking());
            preparedStatement.setString(4, reservez.getVehicule());
            preparedStatement.setString(5, reservez.getDate_entre());
            preparedStatement.setString(6, reservez.getHeure_entre());
            preparedStatement.setString(7, reservez.getTarif());
            preparedStatement.setInt(8, reservez.getId_reservez());
            
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
    
    public void supprimerReservez(Reservezs reservez) {
        loadDatabase();
        
        try {
            PreparedStatement preparedStatement = connexion.prepareStatement("DELETE FROM reservations WHERE id_reservez=?;");
            preparedStatement.setInt(1, reservez.getId_reservez());
            
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
    
}
