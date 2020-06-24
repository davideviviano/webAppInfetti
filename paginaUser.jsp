<%-- 
    Document   : benvenuto
    Created on : 11-mag-2020, 17.58.28
    Author     : condor
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
        <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="stile1.css" />
        <title>Area riservata</title>
        <style>
            .menu{
                border-bottom: 1px solid black;
            }
            .infetto{
                position: relative;
                top: 5px;
                padding-left: 20px;
                padding-bottom: 30px;
                
            }
            .card-header{
                color: #fff;
                background-color: #d23434;
            }
            .navbar-collapse{
                background-color: #111;
            }
            .jumbotron{
                background-color: #9ebef5;
            }
            .lead{
                color: #111;
                
            }
        </style>
    </head>
    <body>



        <%
            String user = null;
            if (session.getAttribute("user") == null) {
                response.sendRedirect("index.jsp");
            } else {
                user = (String) session.getAttribute("user");
            }
        %>

        <nav class="navbar navbar-expand-lg navbar-blue bg-ligh menu">
            <a class="navbar-brand" href="#">AREA RISERVATA</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarColor03" aria-controls="navbarColor03" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

           
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item">
                        <!-- SI usa questa funzione per inoltrare la richiesta a una determinata servlet che la gestisce specificando il path-->
                        <a class="nav-link" href="${pageContext.request.contextPath}/logout">ESCI</a> 
                    </li>
                </ul>
            
        </nav>


        <div class="jumbotron">
            <h1 class="display-3">Ciao, ${user}</h1>
            <p class="lead">Benvenuto nella tua area riservata per accedere alla banca dati degli infetti da COVID-19!</p>
            <hr class="my-4">
            <p>Usa il form sottostante per la ricerca, ricerca sempre per cognome...</p>
            <p class="lead">
            <form action="${pageContext.request.contextPath}/ricerca" class="form-inline my-2 my-lg-0">
                <input name="cerca" class="form-control mr-sm-2" type="text" placeholder="cerca...">
                <button class="btn btn-danger my-2 my-sm-0" type="submit">Cerca</button>
            </form>
        </div>

        <div class="infetto">
            <c:forEach var="cerca" items="${ric}">
                <div class="card text-black  mb-1" style="max-width: 20rem;">
                    <div class="card-header"><b>ID:</b> ${cerca.id}</div>
                    <div class="card-body">
                        <h5 class="card-title"><b>Cognome:</b> ${cerca.cognome} <br> Nome: ${cerca.nome}</h5>
                        <p class="card-text"><b>Residenza:</b>  ${cerca.residenza} <br> <b>Data Nascita:</b> ${cerca.dataNascita}
                         <b><br>Giorni in Quarantena:</b>  ${cerca.giorniQuarantena}</p>
                    </div>
                </div>
            </c:forEach>
        </div>
    </body>
</html>
