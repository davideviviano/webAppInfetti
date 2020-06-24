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

/**
 *
 * @author condor
 */
@WebServlet(name = "RicercaServlet", urlPatterns = {"/ricerca"})
public class RicercaServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String cerca = request.getParameter("cerca");
        DAO ricercaDAO = new DAO();
        request.setAttribute("ric", ricercaDAO.cercaInfetto(cerca));
        request.getRequestDispatcher("paginaUser.jsp").forward(request, response);
    }

}
