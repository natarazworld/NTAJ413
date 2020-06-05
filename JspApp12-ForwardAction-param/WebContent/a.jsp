<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  
   <% int x=10; %>

    <b> from a.jsp (start)</b>
     <jsp:forward page="b.jsp">
            <jsp:param value="val1" name="p1"/>
            <jsp:param value="<%=x%>" name="p2"/>
     </jsp:forward>
     <br>
     <b>from a.jsp (end)</b>
    
    