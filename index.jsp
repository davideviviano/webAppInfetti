<%-- 
    Document   : login
    Created on : 11-mag-2020, 17.18.12
    Author     : condor
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User Login</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
        <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="stile1.css" />
        <style>
            body{
                background-color: #ddd;
            }
            .navbar{
                background-color: #fff;
            }
            .form-control{
                position: relative;
                left: 40%;            
                width: 20%;
            }
            .oggetti{
                position: relative;
                left: 40%;
                width: 20%;
                border-top: 25px solid #ddd;
            }
            .bottone{
                position: relative;
                top: 10px;
                left: 40%;
                width: 20%;
            }
            nav{
                border-bottom: 1px solid black;
            }
        </style>
    </head>
    <body>
        <nav class="navbar navbar-expand-lg navbar-blue bg-ligh">
            <a class="navbar-brand" href="#">LOGIN PAGE HOME</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarColor03" aria-controls="navbarColor03" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
        <ul class="navbar-nav mr-auto">
                    <li class="nav-item">
                       
                        <a class="nav-link" href="loginAdmin.jsp">Accedi come Amministratore</a> 
                    </li>
                </ul>
            
        </nav>

 <!-- SI usa questa funzione per inoltrare la richiesta a una determinata servlet che la gestisce specificando il path-->
        <form action="${pageContext.request.contextPath}/login" method="POST"> 
            <h5 class="oggetti">Username</h5> 
            <input type="text" name="username"class="form-control"/>
            <h5 class="oggetti">Password</h5> 
            <input type="password" name="password" class="form-control"/>
            <input type="submit" value="Login" class="btn btn-primary bottone"/>
        </form>
    


</body>
</html>
