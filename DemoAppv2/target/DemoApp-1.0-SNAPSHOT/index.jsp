<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import='java.util.Date' %>
<%@page import='java.text.SimpleDateFormat' %>

<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Jekyll v4.0.1">
    <title>Signin - Cibertec DemoApp</title>

    
    <!-- Bootstrap core CSS -->
   <link href="webjars/bootstrap/4.5.0/css/bootstrap.min.css" rel="stylesheet">

    <style>
      .bd-placeholder-img {
        font-size: 1.125rem;
        text-anchor: middle;
        -webkit-user-select: none;
        -moz-user-select: none;
        -ms-user-select: none;
        user-select: none;
      }

      @media (min-width: 768px) {
        .bd-placeholder-img-lg {
          font-size: 3.5rem;
        }
      }
    </style>
    <!-- Custom styles for this template -->
    <link href="css/signin.css" rel="stylesheet">
  </head>
 
  <body class="text-center">
        <form  action="Login" method="post" class="form-signin">
            <img class="mb-4" src="images/logo.gif" alt="" >
            <h1 class="h3 mb-3 font-weight-normal">Cibertec - DemoApp</h1>
           <!-- <div class="alert alert-danger" role="alert" id="errormsg" visible="false"> ...</div> -->
            <label for="usuario" class="sr-only">Usuario</label>
            <input type="text" id="usuario" name="usuario" class="form-control" placeholder="Usuario" required autofocus>
            <label for="password" class="sr-only">Password</label>
            <input type="password" id="password" name="password" class="form-control" placeholder="Contraseña" required>
           
            <button class="btn btn-lg btn-primary btn-block" type="submit">Ingresar</button>
            <p class="mt-5 mb-3 text-muted">&copy; 
                <%  SimpleDateFormat format = new SimpleDateFormat("yyyy");
                    String dateString = format.format(new Date());
                    out.println(dateString); %></p>
        </form>
      
      
        <script src="webjars/jquery/3.5.1/jquery.min.js"></script>
	<script src="webjars/bootstrap/4.5.0/js/bootstrap.min.js"></script>
        <script src="js/login.js"></script>
  </body>
</html>
