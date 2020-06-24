/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ap.webappinfetti;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author condor
 */
public class DAO {

    public DAO() {
     
    }

    public static boolean login(String username, String password) {
        boolean st = false;
        try {

            //carica il driver
            Class.forName("org.apache.derby.jdbc.ClientDriver");

            //crea connessione al DB
            Connection con = DriverManager.getConnection("jdbc:derby://localhost:1527/utenti", "test", "test");
            Statement ps = con.createStatement();

            ResultSet rs = ps.executeQuery("select * from TEST.UTENTI where USERNAME='" + username + "'" + "and PASSWORD='" + password + "'");
            st = rs.next();

        } catch (Exception e) {
            e.printStackTrace();
        }
        return st;
    }

    public List<Infetti> cercaInfetto(String cognome) {
        List<Infetti> infettiList = new ArrayList<>();
        Infetti i;
        try {

            Class.forName("org.apache.derby.jdbc.ClientDriver");

            Connection con = DriverManager.getConnection("jdbc:derby://localhost:1527/utenti", "test", "test");
            Statement st = con.createStatement();

            ResultSet rs = st.executeQuery("select * from TEST.INFETTI where COGNOME='" + cognome + "'");

            while (rs.next()) {
                i = new Infetti(
                        rs.getString("id"),
                        rs.getString("nome"),
                        rs.getString("cognome"),
                        rs.getString("datanascita"),
                        rs.getString("residenza"),
                        rs.getString("giorniquarantena")
                );
                infettiList.add(i);
            }

        } catch (ClassNotFoundException ex) {
            Logger.getLogger(DAO.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(DAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return infettiList;

    }

    public static boolean adminLogin(String user, String pass) {
        boolean lAdmin = false;
        try {

            //carica il driver
            Class.forName("org.apache.derby.jdbc.ClientDriver");

            //crea connessione al DB
            Connection con = DriverManager.getConnection("jdbc:derby://localhost:1527/utenti", "test", "test");
            Statement ps = con.createStatement();

            ResultSet rs = ps.executeQuery("select * from TEST.AMMINISTRATORI where USERNAME='" + user + "'" + "and PASSWORD='" + pass + "'");
            lAdmin = rs.next();

        } catch (Exception e) {
            e.printStackTrace();
        }
        return lAdmin;
    }

    public List<Infetti> elencoInfetti() {
        List<Infetti> listaInfetti = new ArrayList<>();
        Infetti i;
        try {

            Class.forName("org.apache.derby.jdbc.ClientDriver");
            Connection con = DriverManager.getConnection("jdbc:derby://localhost:1527/utenti", "test", "test");
            Statement st = con.createStatement();

            ResultSet rs = st.executeQuery("SELECT * FROM TEST.INFETTI");

            while (rs.next()) {
                i = new Infetti(
                        rs.getString("id"),
                        rs.getString("nome"),
                        rs.getString("cognome"),
                        rs.getString("datanascita"),
                        rs.getString("residenza"),
                        rs.getString("giorniquarantena")
                       
                );          
                listaInfetti.add(i);
            }
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(DAO.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(DAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return listaInfetti;
        
    }
    
    
}
