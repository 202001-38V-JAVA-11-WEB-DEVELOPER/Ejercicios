<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%
    String logo = (String) config.getServletContext().getAttribute("logo");
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <p style="text-align: center">
            <img src="<%=logo%>" alt=""/>
            <br/>
            <a href="index.jsp">Volver</a>
        </p>
    </body>
</html>

