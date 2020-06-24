<%-- 
    Document   : paginaAdmin
    Created on : 16-mag-2020, 17.30.10
    Author     : condor
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="a" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Page</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
        <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="stile1.css" />
        <style>
            body{
                background-color: #eee;
            }
            .navbar{
                background-color: #fff;
            }
            .form-control{
                width: 27%;
                position: relative;
                top: 0px;
                left: 2%;
            }
            .titoli{
                position: relative;
                top: 10px;
                left: 2%;
            }
            .bottone{
                position: relative;
                top: 43px;
                left: -250px;
                width: 30%;
                background-color: #ec971f;
                border: 1px solid #ec971f;
            }
            nav{
                border-bottom: 1px solid black;
            }
            .table{
                width: 90%;
            }
            .btnMostra{
                position: relative;
                top: 0px;
                left: 2%;
            }
            .giorni{
                position: relative;
                top: 0;
                left: -111px;
            }
        </style>
    </head>
    <body>
        <nav class="navbar navbar-expand-lg navbar-blue bg-ligh">
            <a class="navbar-brand" href="#">ADMIN PAGE</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarColor03" aria-controls="navbarColor03" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <ul class="navbar-nav mr-auto">
                <li class="nav-item">
                    <!-- SI usa questa funzione per inoltrare la richiesta a una determinata servlet che la gestisce specificando il path-->
                    <a class="nav-link" href="${pageContext.request.contextPath}/logout">Esci dall'area Amministratore</a> 
                </li>
            </ul>

        </nav>
        <br>
        <h3 class="titoli"> Aggiungi un infetto al Database Infetti</h3> 
        <form action="${pageContext.request.contextPath}/addInfetto" method="POST" class="form-inline"> 
            <div class="row">
                <div class="col">
                    <b><p class="titoli">ID:</p></b>
                    <input type="text" name="id"class="form-control"/>
                </div>

                <div class="col">
                    <b><p class="titoli">Nome</p></b>
                    <input type="text" name="nome" class="form-control"/>
                </div>

                <div class="col">
                    <b> <p class="titoli">Cognome</p></b>
                    <input type="text" name="cognome" class="form-control"/>
                </div>
                <br>
                <div class="col">
                    <b><p class="titoli">Data nascita: </p></b>
                    <input type="text" name="nascita" class="form-control"/>
                </div>

                <div class="col">
                    <b><p class="titoli">Residenza</p></b>
                    <input type="text" name="residenza" class="form-control"/>
                </div>
                <div class="col giorni">
                    <b><p class="titoli">Giorni in isolamento:</p></b>
                    <input type="text" name="quarantena" class="form-control"/>
                </div>
                <div class="col">
                    <input type="submit" value="Aggiungi" class="btn btn-danger bottone"/>
                </div>
            </div>
        </form>

        <br>
        <h3 class="titoli"> Lista infetti</h3> 
        <br>
        <form action="${pageContext.request.contextPath}/ElencoInfetti" class="form-inline my-2 my-lg-0">
            <button class="btn btn-danger my-2 my-sm-0 btnMostra" type="submit">Mostra Lista</button>
        </form>
        <br>
        <table class="table table-hover">
            <thead>
                <tr>
                    <th scope="col">ID</th>
                    <th scope="col">Nome</th>
                    <th scope="col">Cognome</th>
                    <th scope="col">Data di nascita</th>

                </tr>
            </thead>
            <tbody>
                <a:forEach var="lista" items="${elenco}">
                    <tr class="table-active">
                        <th scope="row">${lista.id}</th>
                        <td>${lista.nome}</td>
                        <td>${lista.cognome}</td>
                        <td>${lista.dataNascita}</td>

                    </tr>

                </a:forEach>


            </tbody>
        </table>





    </body>
</html>
