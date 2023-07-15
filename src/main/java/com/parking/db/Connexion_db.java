package com.parking.db;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Connexion_db {

    private static String url  = "jdbc:mysql://localhost:3306/GestionParking";

    private static String username = "dollar";
    private static String password = "dollar0000";

    public static Connection getConnection() throws ClassNotFoundException, SQLException {

        Connection connection = null;
        Class.forName("com.mysql.cj.jdbc.Driver");
        
        connection = DriverManager.getConnection(url,username, password);
        System.out.println("Connexion avec succes");
        return connection;


    }


}