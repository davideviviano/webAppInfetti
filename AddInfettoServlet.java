/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ap.webappinfetti;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author condor
 */
@WebServlet(name = "AddInfettoServlet", urlPatterns = {"/addInfetto"})
public class AddInfettoServlet extends HttpServlet {


    
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            String id = request.getParameter("id");
            String nome = request.getParameter("nome");
            String cognome = request.getParameter("cognome");
            String nascita = request.getParameter("nascita");
            String residenza = request.getParameter("residenza");
            String quarantena = request.getParameter("quarantena");
            
            System.out.println(id);
            
            Class.forName("org.apache.derby.jdbc.ClientDriver");
            
            Connection con = DriverManager.getConnection("jdbc:derby://localhost:1527/utenti", "test", "test");
            Statement st = con.createStatement();
            st.executeUpdate("insert into test.infetti (id,nome,cognome,datanascita,residenza,giorniquarantena) values ('"+id+"','"+nome+"','"+cognome+"','"+nascita+"','"+residenza+"','"+quarantena+"')");
            
           response.sendRedirect("addAvvenuto.jsp");
            
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(AddInfettoServlet.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(AddInfettoServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        
    }

    
}
