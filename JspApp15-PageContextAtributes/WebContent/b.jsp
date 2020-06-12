<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" %>
    
      <h1 style="color:red;text-align:center'">b.jsp </h1>
    <!-- Read and display different scopes of attribute values -->
      attr1 (pageScope) value :: <%=pageContext.getAttribute("attr1") %> <br>
      attr2 (req scope) value :: <%=pageContext.getAttribute("attr2",pageContext.REQUEST_SCOPE) %> <br>
      attr3 (session scope) value :: <%=pageContext.getAttribute("attr3",pageContext.SESSION_SCOPE) %> <br>
      attr4( application scope) value:: <%=pageContext.getAttribute("attr4",pageContext.APPLICATION_SCOPE) %>
      <!-- forward request to c.jsp -->
      <jsp:forward page="c.jsp"/>
      
      
