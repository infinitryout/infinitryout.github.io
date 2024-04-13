<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="jakarta.servlet.http.HttpSession" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Welcome</title>
<link rel="stylesheet" type="text/css" href="welcomestyle.css">
</head>
<body>
<%
        // Retrieve the session object
        HttpSession session1 = request.getSession(false);

        // Check if the session is not null and the username attribute is set
        if (session1 != null && session1.getAttribute("username") != null) {
            // Get the username from the session
            String username = (String) session1.getAttribute("username");
    %>

      <div class="container">
        <h1>Welcome, <%= username %>!</h1>
        <p>We're delighted to have you on our platform. </p>
        <h3>Explore, learn, and connect with our vibrant community! </h3>
        <p>Feel free to stay as long as you like, and when you're ready,you can start the Quiz</p>
        To Start Click on <a href="Start.html">START</a> 
        To Leave you can <a href="logout.jsp">LOGOUT</a> securely.
        
    </div>
    <%
        } else {
            // Redirect to the login page if the session is not valid
            response.sendRedirect("login.jsp");
        }
    %>
    
</body>
</html>