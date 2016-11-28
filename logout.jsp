<%-- 
    Document   : logout
    Created on : Nov 24, 2016, 8:15:13 PM
    Author     : dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      
    </head>
    <body>
      
<%
 RequestDispatcher rd=request.getRequestDispatcher("home.jsp");
        rd.forward(request, response); 

%>


    </body>
</html>
