<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

    <b> from b.jsp</b> <br>
      <%=new java.util.Date() %>
     <br> 
         p1 req param value :: <%=request.getParameter("p1") %> 
      <br>   
      p2 req param value :: <%=request.getParameter("p2") %>