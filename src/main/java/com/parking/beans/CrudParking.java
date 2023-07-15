package com.parking.beans;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;




public class CrudParking {
	
private Connection connexion;


public Parking selectionnerUnParking(int id) throws ClassNotFoundException, SQLException{
//	Statement statement = null;
    ResultSet resultat = null;
    Parking parking = null;

     loadDatabase();

    String sql = "select * from parking where id_parking=?";


     PreparedStatement requetePrepared = connexion.prepareStatement(sql);
     requetePrepared.setInt(1, id);
     resultat = requetePrepared.executeQuery();

     while(resultat.next()) {
 				int id_parking = resultat.getInt("id_parking");
 				String nom_parking = resultat.getString("nom_parking");
                String code_parking = resultat.getString("code_parking");
                String type= resultat.getString("type");

                parking = new Parking(id_parking,nom_parking,code_parking,type);
    }

     		return parking;
	}
	
    
    public List<Parking> recupererParkings() {
        List<Parking> parkings = new ArrayList<Parking>();
        Statement statement = null;
        ResultSet resultat = null;
//        Connection connexion = null;

        
        try {
        	loadDatabase();
            statement = connexion.createStatement();

            // Exécution de la requête
            resultat = statement.executeQuery("SELECT * from parking;");

            // Récupération des données
            while (resultat.next()) {
            	int id_parking= resultat.getInt("id_parking");
            	String nom_parking= resultat.getString("nom_parking");
                String code_parking = resultat.getString("code_parking");
                String type= resultat.getString("type");
                
                Parking parking = new Parking();
                parking.setId_parking(id_parking);
                parking.setNom_parking(nom_parking);
                parking.setCode_parking(code_parking);
                parking.setType(type);
                
                parkings.add(parking);
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
        
        return parkings;
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
    
    public void ajouterParking(Parking parking) {
        loadDatabase();
        
        try {
            PreparedStatement preparedStatement = connexion.prepareStatement("INSERT INTO parking(nom_parking,code_parking,type) VALUES(?, ?, ?);");
            preparedStatement.setString(1, parking.getNom_parking());
            preparedStatement.setString(2, parking.getCode_parking());
            preparedStatement.setString(3, parking.getType());
            
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
    
    public void modifierParking(Parking parking,HttpServletRequest request) {
        loadDatabase();
        
        try {
            PreparedStatement preparedStatement = connexion.prepareStatement("UPDATE parking SET nom_parking=?, code_parking=?, type=? WHERE id_parking=?;");
                preparedStatement.setString(1, parking.getNom_parking());
			    preparedStatement.setString(2, parking.getCode_parking());
			    preparedStatement.setString(3, parking.getType());
			    preparedStatement.setInt(4, parking.getId_parking());
            
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
    
    public void supprimerParking(Parking parking,HttpServletRequest request) {
        loadDatabase();
        
        try {
            PreparedStatement preparedStatement = connexion.prepareStatement("DELETE FROM parking WHERE code_parking=?;");
            preparedStatement.setString(1, parking.getCode_parking());
            
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
    
}
