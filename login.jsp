<%-- 
    Document   : login
    Created on : Jan 17, 2025, 9:15:03 AM
    Author     : Nikitha B V
--%>

<%@ page import="com.example.LoginBean" %>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login Validation</title>
</head>
<body>
    <%
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        LoginBean loginBean = new LoginBean();
        loginBean.setUsername(username);
        loginBean.setPassword(password);

        if (loginBean.validate()) {
            response.sendRedirect("welcome.html");
        } else {
            out.println("<h2>Invalid username or password!</h2>");
            out.println("<a href='index.html'>Try Again</a>");
        }
    %>
</body>
</html>
