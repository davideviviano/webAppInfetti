<%-- 
    Document   : addAvvenuto
    Created on : 22-mag-2020, 12.48.53
    Author     : condor
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
        <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="stile1.css" />
        <title>Nuovo infetto aggiunto</title>
        <style>
            a{
                color: #fff;
            }
            a:hover{
                color: #fff;
                text-decoration: none;
            }
            button{
                position: relative;
                top: 10px;
                
                width: 575px;
            }
            .container{
                padding: 10px;
                width: 600px;
                height: 350px;
                border: 1px solid black;
            }
        </style>
    </head>
    <body>
        <div class="container">
           
        <h5>I dati insetiriti sono stati elaborati correttamente.<br> 
            Sono stati aggiunti correttamente alla tabella INFETTI.
        </h5>
        Clicca il pulsante sottostante per tornare alla pagina di amministrazione:<br>
      <a href="paginaAdmin.jsp"> <button type="button" class="btn btn-primary">Back</button></a>
        </div>
    </body>
</html>
