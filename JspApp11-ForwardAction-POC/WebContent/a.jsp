<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

    <b> from a.jsp (start)</b>
    <br>
      <%
      
         int a=10;
       if(true){
      return;
       }
      
      %>
     <jsp:forward page="b.jsp"/>
     <br>
     <b>from a.jsp (end)</b>
    
    