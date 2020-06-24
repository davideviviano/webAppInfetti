/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ap.webappinfetti;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author condor
 */
@WebServlet(name = "LoginAdmin", urlPatterns = {"/LoginAdmin"})
public class LoginAdminServlet extends HttpServlet {

   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String pass= request.getParameter("password");
        
        if(DAO.adminLogin(username, pass)){
            HttpSession vecchiaSessione = request.getSession();
            if (vecchiaSessione != null) {
                vecchiaSessione.invalidate(); //chiudi sessione esistente
            }
            HttpSession currentSession = request.getSession(); //crea nuova sessione
            currentSession.setAttribute("user", username);

            response.sendRedirect("paginaAdmin.jsp");
        }else {
            
            response.sendRedirect("loginAdmin.jsp");

        }
    }

   

}
