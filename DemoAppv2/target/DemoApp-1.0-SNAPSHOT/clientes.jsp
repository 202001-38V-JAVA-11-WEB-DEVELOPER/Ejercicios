<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Jekyll v4.0.1">
    <title>Dashboard - Cibertec DemoApp</title>

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
    <link href="css/dashboard.css" rel="stylesheet">
  </head>
  <body>
   <%@ include file='WEB-INF/header.jspf' %>

<!-- Modal -->
<div class="modal fade" id="exampleModalLong" tabindex="-1" role="dialog" aria-labelledby="exampleModalLongTitle" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLongTitle">Modal title</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        ...
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary">Save changes</button>
      </div>
    </div>
  </div>
</div>
   
<div class="container-fluid">
  <div class="row">
     <%@ include file='WEB-INF/menu.jspf' %>

    <main role="main" class="col-md-9 ml-sm-auto col-lg-10 px-md-4">
      <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
        <h1 class="h2">Dashboard</h1>
        <div class="btn-toolbar mb-2 mb-md-0">
          <div class="btn-group mr-2">
            <button type="button" class="btn btn-sm btn-outline-secondary">Share</button>
            <button type="button" class="btn btn-sm btn-outline-secondary">Export</button>
          </div>
          <button type="button" class="btn btn-sm btn-outline-secondary dropdown-toggle">
            <span data-feather="calendar"></span>
            This week
          </button>
        </div>
      </div>

     <h2>Clientes</h2>
      <div class="table-responsive">
        <table class="table table-striped table-sm" id="tbClientes">
          <thead>
            <tr>
              <th>RUC</th>
              <th>Nombre</th>
              <th>Sector</th>
              <th>Direccion</th>
              <th>Web</th>
              <th>Contactos</th>
           </tr>
          </thead>
          <tbody>
           	<tr>
              <td>20100027021</td>
              <td>UNIMAQ S.A.</td>
              <td>COMERCIALIZADORAS</td>
              <td>Av. Evitamiento 1936,Ate,Lima</td>
              <td>www.unimaq.com.pe</td>
              <td>  <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModalLong">
  Ver
</button></td>
            </tr>
			
            <tr>
              <td>20100412447</td>
              <td>UNIMAR S.A.</td>
              <td>TRANSPORTE</td>
              <td>Av. Néstor Gambetta 5349,Cercado Callao,Callao</td>
              <td>www.unimar.com.pe</td>
              <td> <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModalLong">
  Ver
</button>
              </td>
            </tr>
          </tbody>
        </table>
      </div>
    </main>
  </div>
</div>
        <script src="webjars/jquery/3.5.1/jquery.min.js"></script>
	<script src="webjars/bootstrap/4.5.0/js/bootstrap.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/feather-icons/4.9.0/feather.min.js"></script>
        <script src="js/clientes.js"></script>
      </body>
</html>
