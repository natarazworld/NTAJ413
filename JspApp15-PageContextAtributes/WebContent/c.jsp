<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" %>
    
      <h1 style="color:red;text-align:center'">c.jsp </h1>
    <!-- Read and display different scopes of attribute values -->
      attr1 (pageScope) value :: <%=pageContext.findAttribute("attr1") %> <br>
      attr2 (req scope) value :: <%=pageContext.findAttribute("attr2") %> <br>
      attr3 (session scope) value :: <%=pageContext.findAttribute("attr3") %> <br>
      attr3 (session scope) value :: <%=session.getAttribute("attr3") %> <br>
      attr4( application scope) value:: <%=pageContext.findAttribute("attr4")%>
      attr5 (session scope) value :: <%=pageContext.findAttribute("attr5") %>
      
      
      
