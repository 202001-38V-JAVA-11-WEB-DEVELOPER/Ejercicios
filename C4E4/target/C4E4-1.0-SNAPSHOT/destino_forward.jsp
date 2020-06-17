<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h3 style="text-align: center">
            Si radio de círculo es <%=request.getParameter("radio")%>
            entonces su área será ${area}
        </h3>

        <p style="text-align: center">
            <a href="index.jsp">home</a>
        </p>
    </body>
</html>

