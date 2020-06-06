<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" %>
    
    <%
       //read form data
       String ss=request.getParameter("ss");
     //redirect the request to google
        response.sendRedirect("https://google.com/search?q="+ss);
    
    %>
