<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="jakarta.servlet.http.HttpSession" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Logout!!</title>
<link rel="stylesheet" type="text/css" href="indexstyle.css">
</head>
<body>
<%
        // Retrieve the session object
        HttpSession currentsession = request.getSession(false);
			if(currentsession != null)
				currentsession.invalidate();
            response.sendRedirect("index.html");
        
    %>
    
</body>
</html>