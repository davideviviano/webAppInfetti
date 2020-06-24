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

/**
 *
 * @author condor
 */
@WebServlet(name = "ElencoInfetti", urlPatterns = {"/ElencoInfetti"})
public class ElencoInfettiServlet extends HttpServlet {

    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
        DAO listaDAO = new DAO();
        request.setAttribute("elenco",listaDAO.elencoInfetti());
        request.getRequestDispatcher("paginaAdmin.jsp").forward(request, response);
    }

 
}
