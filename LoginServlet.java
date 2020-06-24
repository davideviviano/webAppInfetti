/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ap.webappinfetti;

import java.io.IOException;
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
@WebServlet(name = "LoginServlet", urlPatterns = {"/login"})
public class LoginServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String parUsername = request.getParameter("username"); //recupera parametro dalla pagina
        String parPassword = request.getParameter("password");
        if (DAO.login(parUsername, parPassword) == true) {

            HttpSession vecchiaSessione = request.getSession();
            if (vecchiaSessione != null) {
                vecchiaSessione.invalidate(); //chiudi sessione esistente
            }
            HttpSession currentSession = request.getSession(); //crea nuova sessione
            currentSession.setAttribute("user", parUsername);

            response.sendRedirect("paginaUser.jsp");

        } else {
            
            response.sendRedirect("index.jsp");

        }

    }
}
